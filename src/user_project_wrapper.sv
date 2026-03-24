// SPDX-FileCopyrightText: © 2025 Leo Moser
// SPDX-License-Identifier: Apache-2.0

module user_project_wrapper (
    inout wire [19:0] analog_io,
    inout wire [6:0] ui_PAD,
    inout wire [8:0] uo_PAD			     
);
   (* keep="true" *) wire [19:0] analog_io_padres;
   (* keep="true" *) wire [6:0] ui_PAD2CORE;


    // Power/Ground IO pad instances
    (* keep *) sg13g2_IOPadVdd sg13g2_IOPadVdd_south (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadVss sg13g2_IOPadVss_south (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadVdd sg13g2_IOPadVdd_east (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadVss sg13g2_IOPadVss_east (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadIOVss sg13g2_IOPadVss_north (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadIOVdd sg13g2_IOPadVdd_north (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadVdd sg13g2_IOPadVdd_west (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadVss sg13g2_IOPadVss_west (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    // Power/Ground IO pad IO instances
    (* keep *) sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_south (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadIOVss sg13g2_IOPadIOVss_south (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_east (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadIOVss sg13g2_IOPadIOVss_east (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_north (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadIOVss sg13g2_IOPadIOVss_north (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    (* keep *) sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_west (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );
    (* keep *) sg13g2_IOPadIOVss sg13g2_IOPadIOVss_west (
        `ifdef USE_POWER_PINS
        .vss    (VSS),
        .vdd    (VDD),
        .iovss  (IOVSS),
        .iovdd  (IOVDD)
        `endif
    );

    generate
    for (genvar i=0; i<20; i++) begin : sg13g2_IOPad_analog_io
        sg13g2_IOPadAnalog io (
            `ifdef USE_POWER_PINS
            .vss    (VSS),
            .vdd    (VDD),
            .iovss  (IOVSS),
            .iovdd  (IOVDD),
            `endif  
            .padres (analog_io_padres[i]), //o
            .pad (analog_io[i])  //~
        );
    end
    endgenerate
    generate
    for (genvar i=0; i<7; i++) begin : sg13g2_IOPad_digital_ui
        sg13g2_IOPadIn io (
            `ifdef USE_POWER_PINS
            .vss    (VSS),
            .vdd    (VDD),
            .iovss  (IOVSS),
            .iovdd  (IOVDD),
            `endif
            .p2c (ui_PAD2CORE[i]),
            .pad (ui_PAD[i])
        );
    end
    endgenerate
    generate
    for (genvar i=0; i<9; i++) begin : sg13g2_IOPad_digital_uo
        sg13g2_IOPadOut30mA io (
            `ifdef USE_POWER_PINS
            .vss    (VSS),
            .vdd    (VDD),
            .iovss  (IOVSS),
            .iovdd  (IOVDD),
            `endif
            .c2p (),
            .pad (uo_PAD[i])
        );
    end
    endgenerate

endmodule


