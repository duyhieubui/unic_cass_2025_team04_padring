NAME = unic_cass_wrapper_2x2
TOP = unic_cass_wrapper_analog/unic_cass_wrapper_2x2
TAG = $(TOP)_tag
PROJECT_DIR = ../..
LIBRELANE_DIR ?= $(PROJECT_DIR)/librelane
#PDK_ROOT = $(PROJECT_DIR)/IHP-Open-PDK
PDK=ihp-sg13g2

CONFIG_FILE = $(PROJECT_DIR)/$(TOP)/config.json

.PHONY: all
all: librelane make_analog_padring view_results

librelane: final/gds/$(NAME).gds
.PHONY: librelane

final/gds/$(NAME).gds:
	# Run librelane to generate the layout
	librelane --run-tag $(TAG) --overwrite --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) $(CONFIG_FILE) --to OpenROAD.GeneratePDN

.PHONY: make_analog_padring
make_analog_padring:
	# Create analog padring
	librelane --run-tag $(TAG)_padring --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) --from Magic.StreamOut --to Magic.SpiceExtraction --with-initial-state $(PROJECT_DIR)/$(TOP)/runs/$(TAG)/17-openroad-padring/state_out.json $(CONFIG_FILE)

	# copy final results to top directory
	rm -rf $(PROJECT_DIR)/$(TOP)/final
	cp -r $(PROJECT_DIR)/$(TOP)/runs/$(TAG)_padring/final $(PROJECT_DIR)/$(TOP)

.PHONY: view_results
view_results: 
	# View the results in KLayout
	librelane --last-run --manual-pdk --pdk-root $(PDK_ROOT) --pdk $(PDK) $(CONFIG_FILE) --flow OpenInOpenROAD
