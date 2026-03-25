NAME = user_project_wrapper
TOP = user_project_wrapper
TAG = $(TOP)_tag
PROJECT_DIR = .
LIBRELANE_DIR ?= $(PROJECT_DIR)/librelane
#PDK_ROOT = $(PROJECT_DIR)/IHP-Open-PDK
PDK=ihp-sg13g2

CONFIG_FILE = $(PROJECT_DIR)/config.json

.PHONY: all
all: librelane make_analog_padring view_results

librelane: final/gds/$(NAME).gds
.PHONY: librelane

# Run librelane to generate the layout
final/gds/$(NAME).gds:
	librelane --run-tag $(TAG) --overwrite --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) $(CONFIG_FILE) --to OpenROAD.GeneratePDN

.PHONY: make_analog_padring
# Create analog padring
make_analog_padring:
	librelane --run-tag $(TAG)_padring --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) --from Magic.StreamOut --to Magic.SpiceExtraction --with-initial-state $(PROJECT_DIR)/runs/$(TAG)/17-openroad-padring/state_out.json $(CONFIG_FILE)
	# copy final results to top directory
	rm -rf final
	cp -r runs/$(TAG)_padring/final $(PROJECT_DIR)

.PHONY: view_results
# View the results in KLayout
view_results: 
	librelane --last-run --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) $(CONFIG_FILE) --flow OpenInOpenROAD
padring_min_drc:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--precheck_drc --mp=32 --no_offgrid --density_thr=32 \
		--no_density --disable_extra_rules --no_recommended --path=final/gds/$(NAME).gds
padring_max_drc:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--mp=32 --density_thr=32 \
		--path=final/gds/$(NAME).gds
.PHONY: clean
clean:
	-rm -rf drc_run_*
