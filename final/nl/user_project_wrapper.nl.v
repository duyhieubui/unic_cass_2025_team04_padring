module user_project_wrapper (analog_io,
    ui_PAD,
    uo_PAD,
    IOVDD,
    IOVSS,
    VDD,
    VSS);
 inout [19:0] analog_io;
 inout [6:0] ui_PAD;
 inout [8:0] uo_PAD;
 input IOVDD;
 input IOVSS;
 input VDD;
 input VSS;

 wire \analog_io_padres[0] ;
 wire \analog_io_padres[10] ;
 wire \analog_io_padres[11] ;
 wire \analog_io_padres[12] ;
 wire \analog_io_padres[13] ;
 wire \analog_io_padres[14] ;
 wire \analog_io_padres[15] ;
 wire \analog_io_padres[16] ;
 wire \analog_io_padres[17] ;
 wire \analog_io_padres[18] ;
 wire \analog_io_padres[19] ;
 wire \analog_io_padres[1] ;
 wire \analog_io_padres[2] ;
 wire \analog_io_padres[3] ;
 wire \analog_io_padres[4] ;
 wire \analog_io_padres[5] ;
 wire \analog_io_padres[6] ;
 wire \analog_io_padres[7] ;
 wire \analog_io_padres[8] ;
 wire \analog_io_padres[9] ;
 wire \ui_PAD2CORE[0] ;
 wire \ui_PAD2CORE[1] ;
 wire \ui_PAD2CORE[2] ;
 wire \ui_PAD2CORE[3] ;
 wire \ui_PAD2CORE[4] ;
 wire \ui_PAD2CORE[5] ;
 wire \ui_PAD2CORE[6] ;

 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVdd_east (.pad(IOVDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVdd_north (.pad(IOVDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVdd_south (.pad(IOVDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVdd_west (.pad(IOVDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVss_east (.pad(IOVSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVss_north (.pad(IOVSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVss_south (.pad(IOVSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadIOVss_west (.pad(IOVSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVdd_east (.pad(VDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVdd_north (.pad(IOVDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVdd_south (.pad(VDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVdd_west (.pad(VDD));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVss_east (.pad(VSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVss_north (.pad(IOVSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVss_south (.pad(VSS));
 bondpad_70x70_novias IO_BOND_sg13g2_IOPadVss_west (.pad(VSS));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[0].io  (.pad(analog_io[0]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[10].io  (.pad(analog_io[10]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[11].io  (.pad(analog_io[11]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[12].io  (.pad(analog_io[12]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[13].io  (.pad(analog_io[13]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[14].io  (.pad(analog_io[14]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[15].io  (.pad(analog_io[15]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[16].io  (.pad(analog_io[16]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[17].io  (.pad(analog_io[17]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[18].io  (.pad(analog_io[18]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[19].io  (.pad(analog_io[19]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[1].io  (.pad(analog_io[1]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[2].io  (.pad(analog_io[2]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[3].io  (.pad(analog_io[3]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[4].io  (.pad(analog_io[4]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[5].io  (.pad(analog_io[5]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[6].io  (.pad(analog_io[6]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[7].io  (.pad(analog_io[7]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[8].io  (.pad(analog_io[8]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_analog_io[9].io  (.pad(analog_io[9]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[0].io  (.pad(ui_PAD[0]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[1].io  (.pad(ui_PAD[1]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[2].io  (.pad(ui_PAD[2]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[3].io  (.pad(ui_PAD[3]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[4].io  (.pad(ui_PAD[4]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[5].io  (.pad(ui_PAD[5]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_ui[6].io  (.pad(ui_PAD[6]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[0].io  (.pad(uo_PAD[0]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[1].io  (.pad(uo_PAD[1]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[2].io  (.pad(uo_PAD[2]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[3].io  (.pad(uo_PAD[3]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[4].io  (.pad(uo_PAD[4]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[5].io  (.pad(uo_PAD[5]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[6].io  (.pad(uo_PAD[6]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[7].io  (.pad(uo_PAD[7]));
 bondpad_70x70_novias \IO_BOND_sg13g2_IOPad_digital_uo[8].io  (.pad(uo_PAD[8]));
 sg13g2_Corner IO_CORNER_NORTH_EAST_INST ();
 sg13g2_Corner IO_CORNER_NORTH_WEST_INST ();
 sg13g2_Corner IO_CORNER_SOUTH_EAST_INST ();
 sg13g2_Corner IO_CORNER_SOUTH_WEST_INST ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_0_0 ();
 sg13g2_Filler1000 IO_FILL_IO_EAST_0_20 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_0_25 ();
 sg13g2_Filler200 IO_FILL_IO_EAST_0_27 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_10_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_10_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_11_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_11_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_12_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_12_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_13_0 ();
 sg13g2_Filler1000 IO_FILL_IO_EAST_13_20 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_13_25 ();
 sg13g2_Filler200 IO_FILL_IO_EAST_13_27 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_1_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_1_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_2_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_2_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_3_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_3_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_4_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_4_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_5_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_5_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_6_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_6_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_7_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_7_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_8_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_8_20 ();
 sg13g2_Filler4000 IO_FILL_IO_EAST_9_0 ();
 sg13g2_Filler400 IO_FILL_IO_EAST_9_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_0_0 ();
 sg13g2_Filler1000 IO_FILL_IO_NORTH_0_20 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_0_25 ();
 sg13g2_Filler200 IO_FILL_IO_NORTH_0_27 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_10_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_10_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_11_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_11_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_12_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_12_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_13_0 ();
 sg13g2_Filler1000 IO_FILL_IO_NORTH_13_20 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_13_25 ();
 sg13g2_Filler200 IO_FILL_IO_NORTH_13_27 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_1_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_1_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_2_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_2_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_3_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_3_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_4_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_4_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_5_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_5_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_6_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_6_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_7_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_7_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_8_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_8_20 ();
 sg13g2_Filler4000 IO_FILL_IO_NORTH_9_0 ();
 sg13g2_Filler400 IO_FILL_IO_NORTH_9_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_0_0 ();
 sg13g2_Filler1000 IO_FILL_IO_SOUTH_0_20 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_0_25 ();
 sg13g2_Filler200 IO_FILL_IO_SOUTH_0_27 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_10_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_10_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_11_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_11_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_12_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_12_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_13_0 ();
 sg13g2_Filler1000 IO_FILL_IO_SOUTH_13_20 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_13_25 ();
 sg13g2_Filler200 IO_FILL_IO_SOUTH_13_27 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_1_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_1_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_2_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_2_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_3_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_3_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_4_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_4_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_5_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_5_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_6_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_6_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_7_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_7_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_8_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_8_20 ();
 sg13g2_Filler4000 IO_FILL_IO_SOUTH_9_0 ();
 sg13g2_Filler400 IO_FILL_IO_SOUTH_9_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_0_0 ();
 sg13g2_Filler1000 IO_FILL_IO_WEST_0_20 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_0_25 ();
 sg13g2_Filler200 IO_FILL_IO_WEST_0_27 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_10_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_10_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_11_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_11_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_12_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_12_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_13_0 ();
 sg13g2_Filler1000 IO_FILL_IO_WEST_13_20 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_13_25 ();
 sg13g2_Filler200 IO_FILL_IO_WEST_13_27 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_1_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_1_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_2_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_2_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_3_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_3_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_4_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_4_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_5_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_5_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_6_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_6_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_7_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_7_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_8_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_8_20 ();
 sg13g2_Filler4000 IO_FILL_IO_WEST_9_0 ();
 sg13g2_Filler400 IO_FILL_IO_WEST_9_20 ();
 sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_east ();
 sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_north ();
 sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_south ();
 sg13g2_IOPadIOVdd sg13g2_IOPadIOVdd_west ();
 sg13g2_IOPadIOVss sg13g2_IOPadIOVss_east ();
 sg13g2_IOPadIOVss sg13g2_IOPadIOVss_north ();
 sg13g2_IOPadIOVss sg13g2_IOPadIOVss_south ();
 sg13g2_IOPadIOVss sg13g2_IOPadIOVss_west ();
 sg13g2_IOPadVdd sg13g2_IOPadVdd_east ();
 sg13g2_IOPadIOVdd sg13g2_IOPadVdd_north ();
 sg13g2_IOPadVdd sg13g2_IOPadVdd_south ();
 sg13g2_IOPadVdd sg13g2_IOPadVdd_west ();
 sg13g2_IOPadVss sg13g2_IOPadVss_east ();
 sg13g2_IOPadIOVss sg13g2_IOPadVss_north ();
 sg13g2_IOPadVss sg13g2_IOPadVss_south ();
 sg13g2_IOPadVss sg13g2_IOPadVss_west ();
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[0].io  (.pad(analog_io[0]),
    .padres(\analog_io_padres[0] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[10].io  (.pad(analog_io[10]),
    .padres(\analog_io_padres[10] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[11].io  (.pad(analog_io[11]),
    .padres(\analog_io_padres[11] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[12].io  (.pad(analog_io[12]),
    .padres(\analog_io_padres[12] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[13].io  (.pad(analog_io[13]),
    .padres(\analog_io_padres[13] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[14].io  (.pad(analog_io[14]),
    .padres(\analog_io_padres[14] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[15].io  (.pad(analog_io[15]),
    .padres(\analog_io_padres[15] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[16].io  (.pad(analog_io[16]),
    .padres(\analog_io_padres[16] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[17].io  (.pad(analog_io[17]),
    .padres(\analog_io_padres[17] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[18].io  (.pad(analog_io[18]),
    .padres(\analog_io_padres[18] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[19].io  (.pad(analog_io[19]),
    .padres(\analog_io_padres[19] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[1].io  (.pad(analog_io[1]),
    .padres(\analog_io_padres[1] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[2].io  (.pad(analog_io[2]),
    .padres(\analog_io_padres[2] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[3].io  (.pad(analog_io[3]),
    .padres(\analog_io_padres[3] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[4].io  (.pad(analog_io[4]),
    .padres(\analog_io_padres[4] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[5].io  (.pad(analog_io[5]),
    .padres(\analog_io_padres[5] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[6].io  (.pad(analog_io[6]),
    .padres(\analog_io_padres[6] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[7].io  (.pad(analog_io[7]),
    .padres(\analog_io_padres[7] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[8].io  (.pad(analog_io[8]),
    .padres(\analog_io_padres[8] ));
 sg13g2_IOPadAnalog \sg13g2_IOPad_analog_io[9].io  (.pad(analog_io[9]),
    .padres(\analog_io_padres[9] ));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[0].io  (.p2c(\ui_PAD2CORE[0] ),
    .pad(ui_PAD[0]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[1].io  (.p2c(\ui_PAD2CORE[1] ),
    .pad(ui_PAD[1]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[2].io  (.p2c(\ui_PAD2CORE[2] ),
    .pad(ui_PAD[2]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[3].io  (.p2c(\ui_PAD2CORE[3] ),
    .pad(ui_PAD[3]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[4].io  (.p2c(\ui_PAD2CORE[4] ),
    .pad(ui_PAD[4]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[5].io  (.p2c(\ui_PAD2CORE[5] ),
    .pad(ui_PAD[5]));
 sg13g2_IOPadIn \sg13g2_IOPad_digital_ui[6].io  (.p2c(\ui_PAD2CORE[6] ),
    .pad(ui_PAD[6]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[0].io  (.pad(uo_PAD[0]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[1].io  (.pad(uo_PAD[1]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[2].io  (.pad(uo_PAD[2]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[3].io  (.pad(uo_PAD[3]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[4].io  (.pad(uo_PAD[4]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[5].io  (.pad(uo_PAD[5]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[6].io  (.pad(uo_PAD[6]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[7].io  (.pad(uo_PAD[7]));
 sg13g2_IOPadOut30mA \sg13g2_IOPad_digital_uo[8].io  (.pad(uo_PAD[8]));
endmodule
