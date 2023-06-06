// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package keccak_reg_pkg;

  // Param list
  parameter int DIN = 50;
  parameter int DOUT = 50;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////
  typedef struct packed {
    logic [31:0] q;
  } keccak_reg2hw_din_mreg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } keccak_reg2hw_ctrl_reg_t;


  typedef struct packed {
    logic [31:0] d;
  } keccak_hw2reg_dout_mreg_t;

  typedef struct packed {
    logic        d;
  } keccak_hw2reg_status_reg_t;


  ///////////////////////////////////////
  // Register to internal design logic //
  ///////////////////////////////////////
  typedef struct packed {
    keccak_reg2hw_din_mreg_t [49:0] din; // [1602:3]
    keccak_reg2hw_ctrl_reg_t ctrl; // [2:1]
  } keccak_reg2hw_t;

  ///////////////////////////////////////
  // Internal design logic to register //
  ///////////////////////////////////////
  typedef struct packed {
    keccak_hw2reg_dout_mreg_t [49:0] dout; // [1601:2]
    keccak_hw2reg_status_reg_t status; // [1:2]
  } keccak_hw2reg_t;

  // Register Address
  parameter logic [8:0] KECCAK_DIN_0_OFFSET = 9'h 0;
  parameter logic [8:0] KECCAK_DIN_1_OFFSET = 9'h 4;
  parameter logic [8:0] KECCAK_DIN_2_OFFSET = 9'h 8;
  parameter logic [8:0] KECCAK_DIN_3_OFFSET = 9'h c;
  parameter logic [8:0] KECCAK_DIN_4_OFFSET = 9'h 10;
  parameter logic [8:0] KECCAK_DIN_5_OFFSET = 9'h 14;
  parameter logic [8:0] KECCAK_DIN_6_OFFSET = 9'h 18;
  parameter logic [8:0] KECCAK_DIN_7_OFFSET = 9'h 1c;
  parameter logic [8:0] KECCAK_DIN_8_OFFSET = 9'h 20;
  parameter logic [8:0] KECCAK_DIN_9_OFFSET = 9'h 24;
  parameter logic [8:0] KECCAK_DIN_10_OFFSET = 9'h 28;
  parameter logic [8:0] KECCAK_DIN_11_OFFSET = 9'h 2c;
  parameter logic [8:0] KECCAK_DIN_12_OFFSET = 9'h 30;
  parameter logic [8:0] KECCAK_DIN_13_OFFSET = 9'h 34;
  parameter logic [8:0] KECCAK_DIN_14_OFFSET = 9'h 38;
  parameter logic [8:0] KECCAK_DIN_15_OFFSET = 9'h 3c;
  parameter logic [8:0] KECCAK_DIN_16_OFFSET = 9'h 40;
  parameter logic [8:0] KECCAK_DIN_17_OFFSET = 9'h 44;
  parameter logic [8:0] KECCAK_DIN_18_OFFSET = 9'h 48;
  parameter logic [8:0] KECCAK_DIN_19_OFFSET = 9'h 4c;
  parameter logic [8:0] KECCAK_DIN_20_OFFSET = 9'h 50;
  parameter logic [8:0] KECCAK_DIN_21_OFFSET = 9'h 54;
  parameter logic [8:0] KECCAK_DIN_22_OFFSET = 9'h 58;
  parameter logic [8:0] KECCAK_DIN_23_OFFSET = 9'h 5c;
  parameter logic [8:0] KECCAK_DIN_24_OFFSET = 9'h 60;
  parameter logic [8:0] KECCAK_DIN_25_OFFSET = 9'h 64;
  parameter logic [8:0] KECCAK_DIN_26_OFFSET = 9'h 68;
  parameter logic [8:0] KECCAK_DIN_27_OFFSET = 9'h 6c;
  parameter logic [8:0] KECCAK_DIN_28_OFFSET = 9'h 70;
  parameter logic [8:0] KECCAK_DIN_29_OFFSET = 9'h 74;
  parameter logic [8:0] KECCAK_DIN_30_OFFSET = 9'h 78;
  parameter logic [8:0] KECCAK_DIN_31_OFFSET = 9'h 7c;
  parameter logic [8:0] KECCAK_DIN_32_OFFSET = 9'h 80;
  parameter logic [8:0] KECCAK_DIN_33_OFFSET = 9'h 84;
  parameter logic [8:0] KECCAK_DIN_34_OFFSET = 9'h 88;
  parameter logic [8:0] KECCAK_DIN_35_OFFSET = 9'h 8c;
  parameter logic [8:0] KECCAK_DIN_36_OFFSET = 9'h 90;
  parameter logic [8:0] KECCAK_DIN_37_OFFSET = 9'h 94;
  parameter logic [8:0] KECCAK_DIN_38_OFFSET = 9'h 98;
  parameter logic [8:0] KECCAK_DIN_39_OFFSET = 9'h 9c;
  parameter logic [8:0] KECCAK_DIN_40_OFFSET = 9'h a0;
  parameter logic [8:0] KECCAK_DIN_41_OFFSET = 9'h a4;
  parameter logic [8:0] KECCAK_DIN_42_OFFSET = 9'h a8;
  parameter logic [8:0] KECCAK_DIN_43_OFFSET = 9'h ac;
  parameter logic [8:0] KECCAK_DIN_44_OFFSET = 9'h b0;
  parameter logic [8:0] KECCAK_DIN_45_OFFSET = 9'h b4;
  parameter logic [8:0] KECCAK_DIN_46_OFFSET = 9'h b8;
  parameter logic [8:0] KECCAK_DIN_47_OFFSET = 9'h bc;
  parameter logic [8:0] KECCAK_DIN_48_OFFSET = 9'h c0;
  parameter logic [8:0] KECCAK_DIN_49_OFFSET = 9'h c4;
  parameter logic [8:0] KECCAK_DOUT_0_OFFSET = 9'h c8;
  parameter logic [8:0] KECCAK_DOUT_1_OFFSET = 9'h cc;
  parameter logic [8:0] KECCAK_DOUT_2_OFFSET = 9'h d0;
  parameter logic [8:0] KECCAK_DOUT_3_OFFSET = 9'h d4;
  parameter logic [8:0] KECCAK_DOUT_4_OFFSET = 9'h d8;
  parameter logic [8:0] KECCAK_DOUT_5_OFFSET = 9'h dc;
  parameter logic [8:0] KECCAK_DOUT_6_OFFSET = 9'h e0;
  parameter logic [8:0] KECCAK_DOUT_7_OFFSET = 9'h e4;
  parameter logic [8:0] KECCAK_DOUT_8_OFFSET = 9'h e8;
  parameter logic [8:0] KECCAK_DOUT_9_OFFSET = 9'h ec;
  parameter logic [8:0] KECCAK_DOUT_10_OFFSET = 9'h f0;
  parameter logic [8:0] KECCAK_DOUT_11_OFFSET = 9'h f4;
  parameter logic [8:0] KECCAK_DOUT_12_OFFSET = 9'h f8;
  parameter logic [8:0] KECCAK_DOUT_13_OFFSET = 9'h fc;
  parameter logic [8:0] KECCAK_DOUT_14_OFFSET = 9'h 100;
  parameter logic [8:0] KECCAK_DOUT_15_OFFSET = 9'h 104;
  parameter logic [8:0] KECCAK_DOUT_16_OFFSET = 9'h 108;
  parameter logic [8:0] KECCAK_DOUT_17_OFFSET = 9'h 10c;
  parameter logic [8:0] KECCAK_DOUT_18_OFFSET = 9'h 110;
  parameter logic [8:0] KECCAK_DOUT_19_OFFSET = 9'h 114;
  parameter logic [8:0] KECCAK_DOUT_20_OFFSET = 9'h 118;
  parameter logic [8:0] KECCAK_DOUT_21_OFFSET = 9'h 11c;
  parameter logic [8:0] KECCAK_DOUT_22_OFFSET = 9'h 120;
  parameter logic [8:0] KECCAK_DOUT_23_OFFSET = 9'h 124;
  parameter logic [8:0] KECCAK_DOUT_24_OFFSET = 9'h 128;
  parameter logic [8:0] KECCAK_DOUT_25_OFFSET = 9'h 12c;
  parameter logic [8:0] KECCAK_DOUT_26_OFFSET = 9'h 130;
  parameter logic [8:0] KECCAK_DOUT_27_OFFSET = 9'h 134;
  parameter logic [8:0] KECCAK_DOUT_28_OFFSET = 9'h 138;
  parameter logic [8:0] KECCAK_DOUT_29_OFFSET = 9'h 13c;
  parameter logic [8:0] KECCAK_DOUT_30_OFFSET = 9'h 140;
  parameter logic [8:0] KECCAK_DOUT_31_OFFSET = 9'h 144;
  parameter logic [8:0] KECCAK_DOUT_32_OFFSET = 9'h 148;
  parameter logic [8:0] KECCAK_DOUT_33_OFFSET = 9'h 14c;
  parameter logic [8:0] KECCAK_DOUT_34_OFFSET = 9'h 150;
  parameter logic [8:0] KECCAK_DOUT_35_OFFSET = 9'h 154;
  parameter logic [8:0] KECCAK_DOUT_36_OFFSET = 9'h 158;
  parameter logic [8:0] KECCAK_DOUT_37_OFFSET = 9'h 15c;
  parameter logic [8:0] KECCAK_DOUT_38_OFFSET = 9'h 160;
  parameter logic [8:0] KECCAK_DOUT_39_OFFSET = 9'h 164;
  parameter logic [8:0] KECCAK_DOUT_40_OFFSET = 9'h 168;
  parameter logic [8:0] KECCAK_DOUT_41_OFFSET = 9'h 16c;
  parameter logic [8:0] KECCAK_DOUT_42_OFFSET = 9'h 170;
  parameter logic [8:0] KECCAK_DOUT_43_OFFSET = 9'h 174;
  parameter logic [8:0] KECCAK_DOUT_44_OFFSET = 9'h 178;
  parameter logic [8:0] KECCAK_DOUT_45_OFFSET = 9'h 17c;
  parameter logic [8:0] KECCAK_DOUT_46_OFFSET = 9'h 180;
  parameter logic [8:0] KECCAK_DOUT_47_OFFSET = 9'h 184;
  parameter logic [8:0] KECCAK_DOUT_48_OFFSET = 9'h 188;
  parameter logic [8:0] KECCAK_DOUT_49_OFFSET = 9'h 18c;
  parameter logic [8:0] KECCAK_CTRL_OFFSET = 9'h 190;
  parameter logic [8:0] KECCAK_STATUS_OFFSET = 9'h 194;


  // Register Index
  typedef enum int {
    KECCAK_DIN_0,
    KECCAK_DIN_1,
    KECCAK_DIN_2,
    KECCAK_DIN_3,
    KECCAK_DIN_4,
    KECCAK_DIN_5,
    KECCAK_DIN_6,
    KECCAK_DIN_7,
    KECCAK_DIN_8,
    KECCAK_DIN_9,
    KECCAK_DIN_10,
    KECCAK_DIN_11,
    KECCAK_DIN_12,
    KECCAK_DIN_13,
    KECCAK_DIN_14,
    KECCAK_DIN_15,
    KECCAK_DIN_16,
    KECCAK_DIN_17,
    KECCAK_DIN_18,
    KECCAK_DIN_19,
    KECCAK_DIN_20,
    KECCAK_DIN_21,
    KECCAK_DIN_22,
    KECCAK_DIN_23,
    KECCAK_DIN_24,
    KECCAK_DIN_25,
    KECCAK_DIN_26,
    KECCAK_DIN_27,
    KECCAK_DIN_28,
    KECCAK_DIN_29,
    KECCAK_DIN_30,
    KECCAK_DIN_31,
    KECCAK_DIN_32,
    KECCAK_DIN_33,
    KECCAK_DIN_34,
    KECCAK_DIN_35,
    KECCAK_DIN_36,
    KECCAK_DIN_37,
    KECCAK_DIN_38,
    KECCAK_DIN_39,
    KECCAK_DIN_40,
    KECCAK_DIN_41,
    KECCAK_DIN_42,
    KECCAK_DIN_43,
    KECCAK_DIN_44,
    KECCAK_DIN_45,
    KECCAK_DIN_46,
    KECCAK_DIN_47,
    KECCAK_DIN_48,
    KECCAK_DIN_49,
    KECCAK_DOUT_0,
    KECCAK_DOUT_1,
    KECCAK_DOUT_2,
    KECCAK_DOUT_3,
    KECCAK_DOUT_4,
    KECCAK_DOUT_5,
    KECCAK_DOUT_6,
    KECCAK_DOUT_7,
    KECCAK_DOUT_8,
    KECCAK_DOUT_9,
    KECCAK_DOUT_10,
    KECCAK_DOUT_11,
    KECCAK_DOUT_12,
    KECCAK_DOUT_13,
    KECCAK_DOUT_14,
    KECCAK_DOUT_15,
    KECCAK_DOUT_16,
    KECCAK_DOUT_17,
    KECCAK_DOUT_18,
    KECCAK_DOUT_19,
    KECCAK_DOUT_20,
    KECCAK_DOUT_21,
    KECCAK_DOUT_22,
    KECCAK_DOUT_23,
    KECCAK_DOUT_24,
    KECCAK_DOUT_25,
    KECCAK_DOUT_26,
    KECCAK_DOUT_27,
    KECCAK_DOUT_28,
    KECCAK_DOUT_29,
    KECCAK_DOUT_30,
    KECCAK_DOUT_31,
    KECCAK_DOUT_32,
    KECCAK_DOUT_33,
    KECCAK_DOUT_34,
    KECCAK_DOUT_35,
    KECCAK_DOUT_36,
    KECCAK_DOUT_37,
    KECCAK_DOUT_38,
    KECCAK_DOUT_39,
    KECCAK_DOUT_40,
    KECCAK_DOUT_41,
    KECCAK_DOUT_42,
    KECCAK_DOUT_43,
    KECCAK_DOUT_44,
    KECCAK_DOUT_45,
    KECCAK_DOUT_46,
    KECCAK_DOUT_47,
    KECCAK_DOUT_48,
    KECCAK_DOUT_49,
    KECCAK_CTRL,
    KECCAK_STATUS
  } keccak_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] KECCAK_PERMIT [102] = '{
    4'b 1111, // index[  0] KECCAK_DIN_0
    4'b 1111, // index[  1] KECCAK_DIN_1
    4'b 1111, // index[  2] KECCAK_DIN_2
    4'b 1111, // index[  3] KECCAK_DIN_3
    4'b 1111, // index[  4] KECCAK_DIN_4
    4'b 1111, // index[  5] KECCAK_DIN_5
    4'b 1111, // index[  6] KECCAK_DIN_6
    4'b 1111, // index[  7] KECCAK_DIN_7
    4'b 1111, // index[  8] KECCAK_DIN_8
    4'b 1111, // index[  9] KECCAK_DIN_9
    4'b 1111, // index[ 10] KECCAK_DIN_10
    4'b 1111, // index[ 11] KECCAK_DIN_11
    4'b 1111, // index[ 12] KECCAK_DIN_12
    4'b 1111, // index[ 13] KECCAK_DIN_13
    4'b 1111, // index[ 14] KECCAK_DIN_14
    4'b 1111, // index[ 15] KECCAK_DIN_15
    4'b 1111, // index[ 16] KECCAK_DIN_16
    4'b 1111, // index[ 17] KECCAK_DIN_17
    4'b 1111, // index[ 18] KECCAK_DIN_18
    4'b 1111, // index[ 19] KECCAK_DIN_19
    4'b 1111, // index[ 20] KECCAK_DIN_20
    4'b 1111, // index[ 21] KECCAK_DIN_21
    4'b 1111, // index[ 22] KECCAK_DIN_22
    4'b 1111, // index[ 23] KECCAK_DIN_23
    4'b 1111, // index[ 24] KECCAK_DIN_24
    4'b 1111, // index[ 25] KECCAK_DIN_25
    4'b 1111, // index[ 26] KECCAK_DIN_26
    4'b 1111, // index[ 27] KECCAK_DIN_27
    4'b 1111, // index[ 28] KECCAK_DIN_28
    4'b 1111, // index[ 29] KECCAK_DIN_29
    4'b 1111, // index[ 30] KECCAK_DIN_30
    4'b 1111, // index[ 31] KECCAK_DIN_31
    4'b 1111, // index[ 32] KECCAK_DIN_32
    4'b 1111, // index[ 33] KECCAK_DIN_33
    4'b 1111, // index[ 34] KECCAK_DIN_34
    4'b 1111, // index[ 35] KECCAK_DIN_35
    4'b 1111, // index[ 36] KECCAK_DIN_36
    4'b 1111, // index[ 37] KECCAK_DIN_37
    4'b 1111, // index[ 38] KECCAK_DIN_38
    4'b 1111, // index[ 39] KECCAK_DIN_39
    4'b 1111, // index[ 40] KECCAK_DIN_40
    4'b 1111, // index[ 41] KECCAK_DIN_41
    4'b 1111, // index[ 42] KECCAK_DIN_42
    4'b 1111, // index[ 43] KECCAK_DIN_43
    4'b 1111, // index[ 44] KECCAK_DIN_44
    4'b 1111, // index[ 45] KECCAK_DIN_45
    4'b 1111, // index[ 46] KECCAK_DIN_46
    4'b 1111, // index[ 47] KECCAK_DIN_47
    4'b 1111, // index[ 48] KECCAK_DIN_48
    4'b 1111, // index[ 49] KECCAK_DIN_49
    4'b 1111, // index[ 50] KECCAK_DOUT_0
    4'b 1111, // index[ 51] KECCAK_DOUT_1
    4'b 1111, // index[ 52] KECCAK_DOUT_2
    4'b 1111, // index[ 53] KECCAK_DOUT_3
    4'b 1111, // index[ 54] KECCAK_DOUT_4
    4'b 1111, // index[ 55] KECCAK_DOUT_5
    4'b 1111, // index[ 56] KECCAK_DOUT_6
    4'b 1111, // index[ 57] KECCAK_DOUT_7
    4'b 1111, // index[ 58] KECCAK_DOUT_8
    4'b 1111, // index[ 59] KECCAK_DOUT_9
    4'b 1111, // index[ 60] KECCAK_DOUT_10
    4'b 1111, // index[ 61] KECCAK_DOUT_11
    4'b 1111, // index[ 62] KECCAK_DOUT_12
    4'b 1111, // index[ 63] KECCAK_DOUT_13
    4'b 1111, // index[ 64] KECCAK_DOUT_14
    4'b 1111, // index[ 65] KECCAK_DOUT_15
    4'b 1111, // index[ 66] KECCAK_DOUT_16
    4'b 1111, // index[ 67] KECCAK_DOUT_17
    4'b 1111, // index[ 68] KECCAK_DOUT_18
    4'b 1111, // index[ 69] KECCAK_DOUT_19
    4'b 1111, // index[ 70] KECCAK_DOUT_20
    4'b 1111, // index[ 71] KECCAK_DOUT_21
    4'b 1111, // index[ 72] KECCAK_DOUT_22
    4'b 1111, // index[ 73] KECCAK_DOUT_23
    4'b 1111, // index[ 74] KECCAK_DOUT_24
    4'b 1111, // index[ 75] KECCAK_DOUT_25
    4'b 1111, // index[ 76] KECCAK_DOUT_26
    4'b 1111, // index[ 77] KECCAK_DOUT_27
    4'b 1111, // index[ 78] KECCAK_DOUT_28
    4'b 1111, // index[ 79] KECCAK_DOUT_29
    4'b 1111, // index[ 80] KECCAK_DOUT_30
    4'b 1111, // index[ 81] KECCAK_DOUT_31
    4'b 1111, // index[ 82] KECCAK_DOUT_32
    4'b 1111, // index[ 83] KECCAK_DOUT_33
    4'b 1111, // index[ 84] KECCAK_DOUT_34
    4'b 1111, // index[ 85] KECCAK_DOUT_35
    4'b 1111, // index[ 86] KECCAK_DOUT_36
    4'b 1111, // index[ 87] KECCAK_DOUT_37
    4'b 1111, // index[ 88] KECCAK_DOUT_38
    4'b 1111, // index[ 89] KECCAK_DOUT_39
    4'b 1111, // index[ 90] KECCAK_DOUT_40
    4'b 1111, // index[ 91] KECCAK_DOUT_41
    4'b 1111, // index[ 92] KECCAK_DOUT_42
    4'b 1111, // index[ 93] KECCAK_DOUT_43
    4'b 1111, // index[ 94] KECCAK_DOUT_44
    4'b 1111, // index[ 95] KECCAK_DOUT_45
    4'b 1111, // index[ 96] KECCAK_DOUT_46
    4'b 1111, // index[ 97] KECCAK_DOUT_47
    4'b 1111, // index[ 98] KECCAK_DOUT_48
    4'b 1111, // index[ 99] KECCAK_DOUT_49
    4'b 0001, // index[100] KECCAK_CTRL
    4'b 0001  // index[101] KECCAK_STATUS
  };
endpackage

