module alu_8bit (overflow,
    zero,
    a,
    b,
    opcode,
    result);
 output overflow;
 output zero;
 input [7:0] a;
 input [7:0] b;
 input [2:0] opcode;
 output [7:0] result;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;

 sky130_fd_sc_hd__decap_3 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_59 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_56 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_59 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_51 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_47 ();
 sky130_fd_sc_hd__inv_2 _092_ (.A(net7),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _093_ (.A(net4),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _094_ (.A(net3),
    .Y(_029_));
 sky130_fd_sc_hd__and2_2 _095_ (.A(net19),
    .B(net34),
    .X(_030_));
 sky130_fd_sc_hd__nand2_2 _096_ (.A(net19),
    .B(net32),
    .Y(_031_));
 sky130_fd_sc_hd__or3b_4 _097_ (.A(net31),
    .B(net19),
    .C_N(net17),
    .X(_032_));
 sky130_fd_sc_hd__xor2_2 _098_ (.A(net15),
    .B(net33),
    .X(_033_));
 sky130_fd_sc_hd__nor2_2 _099_ (.A(_027_),
    .B(_033_),
    .Y(_034_));
 sky130_fd_sc_hd__xor2_2 _100_ (.A(net14),
    .B(net33),
    .X(_035_));
 sky130_fd_sc_hd__and2b_2 _101_ (.A_N(net6),
    .B(_035_),
    .X(_036_));
 sky130_fd_sc_hd__nand2b_2 _102_ (.A_N(_034_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__a21boi_2 _103_ (.A1(_027_),
    .A2(_033_),
    .B1_N(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__and2b_2 _104_ (.A_N(_035_),
    .B(net6),
    .X(_039_));
 sky130_fd_sc_hd__inv_2 _105_ (.A(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__xor2_2 _106_ (.A(net13),
    .B(net35),
    .X(_041_));
 sky130_fd_sc_hd__and2b_2 _107_ (.A_N(_041_),
    .B(net5),
    .X(_042_));
 sky130_fd_sc_hd__and2b_2 _108_ (.A_N(net5),
    .B(_041_),
    .X(_043_));
 sky130_fd_sc_hd__nor2_2 _109_ (.A(_042_),
    .B(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__xor2_2 _110_ (.A(net12),
    .B(net35),
    .X(_045_));
 sky130_fd_sc_hd__xor2_2 _111_ (.A(net11),
    .B(net39),
    .X(_046_));
 sky130_fd_sc_hd__nor2_2 _112_ (.A(_029_),
    .B(_046_),
    .Y(_047_));
 sky130_fd_sc_hd__o22a_2 _113_ (.A1(_028_),
    .A2(_045_),
    .B1(_046_),
    .B2(_029_),
    .X(_048_));
 sky130_fd_sc_hd__and2_2 _114_ (.A(_029_),
    .B(_046_),
    .X(_049_));
 sky130_fd_sc_hd__nor2_2 _115_ (.A(_047_),
    .B(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__xor2_2 _116_ (.A(net10),
    .B(net30),
    .X(_051_));
 sky130_fd_sc_hd__and2b_2 _117_ (.A_N(_051_),
    .B(net2),
    .X(_052_));
 sky130_fd_sc_hd__xnor2_2 _118_ (.A(_051_),
    .B(net2),
    .Y(_053_));
 sky130_fd_sc_hd__nand2_2 _119_ (.A(net9),
    .B(net1),
    .Y(_054_));
 sky130_fd_sc_hd__o21ai_2 _120_ (.A1(net9),
    .A2(net39),
    .B1(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__a21o_4 _121_ (.A1(_053_),
    .A2(_055_),
    .B1(_052_),
    .X(_056_));
 sky130_fd_sc_hd__a21oi_2 _122_ (.A1(_028_),
    .A2(_045_),
    .B1(_048_),
    .Y(_057_));
 sky130_fd_sc_hd__xnor2_2 _123_ (.A(_028_),
    .B(_045_),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _124_ (.A(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__a31o_4 _125_ (.A1(_050_),
    .A2(_059_),
    .A3(_056_),
    .B1(_057_),
    .X(_060_));
 sky130_fd_sc_hd__and2_2 _126_ (.A(_044_),
    .B(_060_),
    .X(_061_));
 sky130_fd_sc_hd__a2111o_2 _127_ (.A1(_060_),
    .A2(_044_),
    .B1(_034_),
    .C1(_039_),
    .D1(_042_),
    .X(_062_));
 sky130_fd_sc_hd__xnor2_2 _128_ (.A(net8),
    .B(net16),
    .Y(_063_));
 sky130_fd_sc_hd__xnor2_2 _129_ (.A(net33),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _130_ (.A(_064_),
    .Y(_065_));
 sky130_fd_sc_hd__nor2_2 _131_ (.A(net34),
    .B(net17),
    .Y(_066_));
 sky130_fd_sc_hd__nor2_2 _132_ (.A(net19),
    .B(net32),
    .Y(_067_));
 sky130_fd_sc_hd__or2_2 _133_ (.A(net19),
    .B(net32),
    .X(_068_));
 sky130_fd_sc_hd__a211o_2 _134_ (.A1(_038_),
    .A2(net37),
    .B1(_064_),
    .C1(_068_),
    .X(_069_));
 sky130_fd_sc_hd__and3b_2 _135_ (.A_N(net19),
    .B(net34),
    .C(net17),
    .X(_070_));
 sky130_fd_sc_hd__a21o_2 _136_ (.A1(net19),
    .A2(_066_),
    .B1(_070_),
    .X(_071_));
 sky130_fd_sc_hd__a31o_2 _137_ (.A1(net34),
    .A2(net8),
    .A3(net16),
    .B1(_030_),
    .X(_072_));
 sky130_fd_sc_hd__nand3b_2 _138_ (.A_N(net34),
    .B(net17),
    .C(net19),
    .Y(_073_));
 sky130_fd_sc_hd__a2bb2o_2 _139_ (.A1_N(net8),
    .A2_N(_073_),
    .B1(_071_),
    .B2(_065_),
    .X(_074_));
 sky130_fd_sc_hd__nor2_2 _140_ (.A(_065_),
    .B(_068_),
    .Y(_075_));
 sky130_fd_sc_hd__and3_4 _141_ (.A(_038_),
    .B(_062_),
    .C(_075_),
    .X(_076_));
 sky130_fd_sc_hd__or4b_4 _142_ (.A(_072_),
    .B(_076_),
    .C(_074_),
    .D_N(_069_),
    .X(_077_));
 sky130_fd_sc_hd__nand2_2 _143_ (.A(net8),
    .B(net36),
    .Y(_078_));
 sky130_fd_sc_hd__o21a_4 _144_ (.A1(net8),
    .A2(_031_),
    .B1(_077_),
    .X(net28));
 sky130_fd_sc_hd__a21o_2 _145_ (.A1(_077_),
    .A2(_031_),
    .B1(net8),
    .X(_079_));
 sky130_fd_sc_hd__and3_4 _146_ (.A(_075_),
    .B(_078_),
    .C(_079_),
    .X(net20));
 sky130_fd_sc_hd__a221oi_2 _147_ (.A1(net19),
    .A2(net17),
    .B1(net9),
    .B2(net1),
    .C1(net34),
    .Y(_080_));
 sky130_fd_sc_hd__o22a_2 _148_ (.A1(net9),
    .A2(net1),
    .B1(_070_),
    .B2(_080_),
    .X(_081_));
 sky130_fd_sc_hd__nor2_2 _149_ (.A(net1),
    .B(_073_),
    .Y(_082_));
 sky130_fd_sc_hd__a31o_2 _150_ (.A1(net34),
    .A2(net9),
    .A3(net1),
    .B1(_030_),
    .X(_083_));
 sky130_fd_sc_hd__o32a_2 _151_ (.A1(_081_),
    .A2(_082_),
    .A3(_083_),
    .B1(_031_),
    .B2(net1),
    .X(net21));
 sky130_fd_sc_hd__a21oi_2 _152_ (.A1(_053_),
    .A2(_055_),
    .B1(_068_),
    .Y(_084_));
 sky130_fd_sc_hd__o21a_2 _153_ (.A1(_053_),
    .A2(_055_),
    .B1(_084_),
    .X(_085_));
 sky130_fd_sc_hd__o211a_2 _154_ (.A1(net19),
    .A2(net10),
    .B1(net2),
    .C1(net34),
    .X(_086_));
 sky130_fd_sc_hd__a2bb2o_2 _155_ (.A1_N(net2),
    .A2_N(_073_),
    .B1(_071_),
    .B2(_053_),
    .X(_087_));
 sky130_fd_sc_hd__or3_2 _156_ (.A(_085_),
    .B(_086_),
    .C(_087_),
    .X(net22));
 sky130_fd_sc_hd__a21oi_2 _157_ (.A1(_050_),
    .A2(_056_),
    .B1(_068_),
    .Y(_088_));
 sky130_fd_sc_hd__o21a_2 _158_ (.A1(_050_),
    .A2(_056_),
    .B1(_088_),
    .X(_089_));
 sky130_fd_sc_hd__a31o_2 _159_ (.A1(net34),
    .A2(net3),
    .A3(net11),
    .B1(_030_),
    .X(_090_));
 sky130_fd_sc_hd__a2bb2o_2 _160_ (.A1_N(net3),
    .A2_N(_073_),
    .B1(_071_),
    .B2(_050_),
    .X(_091_));
 sky130_fd_sc_hd__o32a_2 _161_ (.A1(_089_),
    .A2(_090_),
    .A3(_091_),
    .B1(_031_),
    .B2(net3),
    .X(net23));
 sky130_fd_sc_hd__a21oi_2 _162_ (.A1(_050_),
    .A2(net38),
    .B1(_047_),
    .Y(_000_));
 sky130_fd_sc_hd__a21oi_2 _163_ (.A1(_067_),
    .A2(_000_),
    .B1(_071_),
    .Y(_001_));
 sky130_fd_sc_hd__or3_2 _164_ (.A(_059_),
    .B(_068_),
    .C(_000_),
    .X(_002_));
 sky130_fd_sc_hd__a31oi_2 _165_ (.A1(net32),
    .A2(net4),
    .A3(net12),
    .B1(_030_),
    .Y(_003_));
 sky130_fd_sc_hd__o221a_2 _166_ (.A1(net4),
    .A2(_073_),
    .B1(_001_),
    .B2(_058_),
    .C1(_003_),
    .X(_004_));
 sky130_fd_sc_hd__o2bb2a_2 _167_ (.A1_N(_004_),
    .A2_N(_002_),
    .B1(_031_),
    .B2(net4),
    .X(net24));
 sky130_fd_sc_hd__o21ai_2 _168_ (.A1(_044_),
    .A2(_060_),
    .B1(_067_),
    .Y(_005_));
 sky130_fd_sc_hd__nor2_2 _169_ (.A(_061_),
    .B(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__a31o_2 _170_ (.A1(net32),
    .A2(net5),
    .A3(net13),
    .B1(_030_),
    .X(_007_));
 sky130_fd_sc_hd__a2bb2o_2 _171_ (.A1_N(net5),
    .A2_N(_073_),
    .B1(_071_),
    .B2(_044_),
    .X(_008_));
 sky130_fd_sc_hd__o32a_2 _172_ (.A1(_006_),
    .A2(_007_),
    .A3(_008_),
    .B1(_031_),
    .B2(net5),
    .X(net25));
 sky130_fd_sc_hd__or2_2 _173_ (.A(net6),
    .B(_031_),
    .X(_009_));
 sky130_fd_sc_hd__nor2_2 _174_ (.A(_036_),
    .B(_039_),
    .Y(_010_));
 sky130_fd_sc_hd__o21ai_2 _175_ (.A1(_042_),
    .A2(_061_),
    .B1(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__o31a_2 _176_ (.A1(_042_),
    .A2(_061_),
    .A3(_010_),
    .B1(_067_),
    .X(_012_));
 sky130_fd_sc_hd__a2bb2o_2 _177_ (.A1_N(net6),
    .A2_N(_073_),
    .B1(_010_),
    .B2(_071_),
    .X(_013_));
 sky130_fd_sc_hd__a311o_2 _178_ (.A1(net32),
    .A2(net6),
    .A3(net14),
    .B1(_030_),
    .C1(_013_),
    .X(_014_));
 sky130_fd_sc_hd__a21o_2 _179_ (.A1(_011_),
    .A2(_012_),
    .B1(_014_),
    .X(_015_));
 sky130_fd_sc_hd__and2_2 _180_ (.A(_009_),
    .B(_015_),
    .X(net26));
 sky130_fd_sc_hd__nand2_2 _181_ (.A(_027_),
    .B(_030_),
    .Y(_016_));
 sky130_fd_sc_hd__xnor2_2 _182_ (.A(net7),
    .B(_033_),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _183_ (.A(_017_),
    .Y(_018_));
 sky130_fd_sc_hd__a21o_2 _184_ (.A1(_040_),
    .A2(_011_),
    .B1(_018_),
    .X(_019_));
 sky130_fd_sc_hd__nand3_2 _185_ (.A(_040_),
    .B(_011_),
    .C(_018_),
    .Y(_020_));
 sky130_fd_sc_hd__a31o_2 _186_ (.A1(net32),
    .A2(net7),
    .A3(net15),
    .B1(_030_),
    .X(_021_));
 sky130_fd_sc_hd__nor2_2 _187_ (.A(net7),
    .B(_073_),
    .Y(_022_));
 sky130_fd_sc_hd__a211o_2 _188_ (.A1(_071_),
    .A2(_017_),
    .B1(_021_),
    .C1(_022_),
    .X(_023_));
 sky130_fd_sc_hd__a31o_2 _189_ (.A1(_067_),
    .A2(_019_),
    .A3(_020_),
    .B1(_023_),
    .X(_024_));
 sky130_fd_sc_hd__and2_2 _190_ (.A(_016_),
    .B(_024_),
    .X(net27));
 sky130_fd_sc_hd__or3_2 _191_ (.A(net21),
    .B(net22),
    .C(net23),
    .X(_025_));
 sky130_fd_sc_hd__a2111o_2 _192_ (.A1(_009_),
    .A2(_015_),
    .B1(net24),
    .C1(net25),
    .D1(_025_),
    .X(_026_));
 sky130_fd_sc_hd__a211oi_2 _193_ (.A1(_016_),
    .A2(_024_),
    .B1(net28),
    .C1(_026_),
    .Y(net29));
 sky130_fd_sc_hd__buf_6 fanout31 (.A(net18),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout32 (.A(net18),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input10 (.A(b[1]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input11 (.A(b[2]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input12 (.A(b[3]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input13 (.A(b[4]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input14 (.A(b[5]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input15 (.A(b[6]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input16 (.A(b[7]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 input17 (.A(opcode[0]),
    .X(net17));
 sky130_fd_sc_hd__buf_6 input18 (.A(opcode[1]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_2 input19 (.A(opcode[2]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(a[4]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(a[5]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(a[6]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(a[7]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(b[0]),
    .X(net9));
 sky130_fd_sc_hd__buf_8 max_cap30 (.A(_032_),
    .X(net30));
 sky130_fd_sc_hd__buf_8 output20 (.A(net20),
    .X(overflow));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output21 (.A(net21),
    .X(result[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output22 (.A(net22),
    .X(result[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output23 (.A(net23),
    .X(result[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output24 (.A(net24),
    .X(result[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output25 (.A(net25),
    .X(result[4]));
 sky130_fd_sc_hd__dlymetal6s2s_1 output26 (.A(net26),
    .X(result[5]));
 sky130_fd_sc_hd__dlymetal6s2s_1 output27 (.A(net27),
    .X(result[6]));
 sky130_fd_sc_hd__buf_6 output28 (.A(net28),
    .X(result[7]));
 sky130_fd_sc_hd__buf_6 output29 (.A(net29),
    .X(zero));
 sky130_fd_sc_hd__buf_2 rebuffer33 (.A(_032_),
    .X(net33));
 sky130_fd_sc_hd__buf_2 rebuffer34 (.A(net31),
    .X(net34));
 sky130_fd_sc_hd__buf_2 rebuffer35 (.A(net30),
    .X(net35));
 sky130_fd_sc_hd__buf_6 rebuffer36 (.A(_077_),
    .X(net36));
 sky130_fd_sc_hd__buf_2 rebuffer37 (.A(_062_),
    .X(net37));
 sky130_fd_sc_hd__buf_2 rebuffer38 (.A(_056_),
    .X(net38));
 sky130_fd_sc_hd__buf_2 rebuffer39 (.A(net30),
    .X(net39));
endmodule
