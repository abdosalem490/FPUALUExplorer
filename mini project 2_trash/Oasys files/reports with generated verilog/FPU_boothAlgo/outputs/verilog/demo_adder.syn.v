/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 16 23:43:10 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2065257836 */

module datapath__0_4(multiplier_M, accumulator_A, p_0);
   input [31:0]multiplier_M;
   input [31:0]accumulator_A;
   output [31:0]p_0;

   INV_X1 i_0 (.A(n_0), .ZN(p_0[0]));
   OAI21_X1 i_1 (.A(n_8), .B1(multiplier_M[0]), .B2(accumulator_A[0]), .ZN(n_0));
   XOR2_X1 i_2 (.A(n_8), .B(n_1), .Z(p_0[1]));
   OAI21_X1 i_3 (.A(n_9), .B1(multiplier_M[1]), .B2(accumulator_A[1]), .ZN(n_1));
   XOR2_X1 i_4 (.A(n_24), .B(n_10), .Z(p_0[4]));
   XOR2_X1 i_5 (.A(n_41), .B(n_4), .Z(p_0[6]));
   NOR2_X1 i_6 (.A1(n_44), .A2(n_38), .ZN(n_4));
   OAI21_X1 i_7 (.A(n_25), .B1(multiplier_M[4]), .B2(accumulator_A[4]), .ZN(n_10));
   XOR2_X1 i_8 (.A(n_61), .B(n_14), .Z(p_0[9]));
   XOR2_X1 i_9 (.A(n_59), .B(n_12), .Z(p_0[10]));
   NOR2_X1 i_10 (.A1(n_69), .A2(n_65), .ZN(n_12));
   AOI21_X1 i_11 (.A(n_64), .B1(multiplier_M[9]), .B2(accumulator_A[9]), 
      .ZN(n_14));
   XOR2_X1 i_12 (.A(n_80), .B(n_22), .Z(p_0[13]));
   XOR2_X1 i_13 (.A(n_79), .B(n_20), .Z(p_0[14]));
   NOR2_X1 i_14 (.A1(n_89), .A2(n_85), .ZN(n_20));
   AOI21_X1 i_15 (.A(n_84), .B1(multiplier_M[13]), .B2(accumulator_A[13]), 
      .ZN(n_22));
   XOR2_X1 i_45 (.A(n_102), .B(n_30), .Z(p_0[17]));
   XOR2_X1 i_46 (.A(n_101), .B(n_28), .Z(p_0[18]));
   NOR2_X1 i_47 (.A1(n_111), .A2(n_107), .ZN(n_28));
   AOI21_X1 i_50 (.A(n_106), .B1(multiplier_M[17]), .B2(accumulator_A[17]), 
      .ZN(n_30));
   XNOR2_X1 i_16 (.A(n_37), .B(n_36), .ZN(p_0[22]));
   NOR2_X1 i_17 (.A1(n_122), .A2(n_129), .ZN(n_36));
   OAI21_X1 i_18 (.A(n_127), .B1(multiplier_M[22]), .B2(accumulator_A[22]), 
      .ZN(n_37));
   INV_X1 i_19 (.A(n_45), .ZN(p_0[25]));
   OAI21_X1 i_20 (.A(n_46), .B1(accumulator_A[25]), .B2(n_47), .ZN(n_45));
   AOI21_X1 i_21 (.A(n_147), .B1(n_139), .B2(n_46), .ZN(p_0[26]));
   NAND2_X1 i_22 (.A1(accumulator_A[25]), .A2(n_47), .ZN(n_46));
   INV_X1 i_23 (.A(n_133), .ZN(n_47));
   INV_X1 i_24 (.A(n_49), .ZN(p_0[27]));
   OAI21_X1 i_25 (.A(n_146), .B1(accumulator_A[27]), .B2(n_147), .ZN(n_49));
   INV_X1 i_26 (.A(accumulator_A[26]), .ZN(n_139));
   INV_X1 i_128 (.A(n_155), .ZN(p_0[31]));
   XOR2_X1 i_27 (.A(n_3), .B(n_2), .Z(p_0[2]));
   OAI21_X1 i_28 (.A(n_5), .B1(accumulator_A[2]), .B2(multiplier_M[2]), .ZN(n_2));
   NAND2_X1 i_29 (.A1(n_7), .A2(n_6), .ZN(n_3));
   NAND2_X1 i_30 (.A1(accumulator_A[2]), .A2(multiplier_M[2]), .ZN(n_5));
   OR2_X1 i_31 (.A1(accumulator_A[1]), .A2(multiplier_M[1]), .ZN(n_6));
   NAND2_X1 i_32 (.A1(n_9), .A2(n_8), .ZN(n_7));
   NAND2_X1 i_33 (.A1(accumulator_A[0]), .A2(multiplier_M[0]), .ZN(n_8));
   NAND2_X1 i_34 (.A1(accumulator_A[1]), .A2(multiplier_M[1]), .ZN(n_9));
   NAND2_X1 i_35 (.A1(n_7), .A2(n_6), .ZN(n_11));
   AND2_X1 i_36 (.A1(n_11), .A2(n_5), .ZN(n_13));
   NOR2_X1 i_37 (.A1(accumulator_A[2]), .A2(multiplier_M[2]), .ZN(n_15));
   NOR2_X1 i_38 (.A1(accumulator_A[3]), .A2(multiplier_M[3]), .ZN(n_16));
   INV_X1 i_39 (.A(n_16), .ZN(n_17));
   NOR2_X1 i_40 (.A1(n_13), .A2(n_15), .ZN(n_18));
   AOI21_X1 i_41 (.A(n_16), .B1(accumulator_A[3]), .B2(multiplier_M[3]), 
      .ZN(n_19));
   XOR2_X1 i_42 (.A(n_18), .B(n_19), .Z(p_0[3]));
   NAND2_X1 i_43 (.A1(accumulator_A[3]), .A2(multiplier_M[3]), .ZN(n_21));
   OAI21_X1 i_44 (.A(n_21), .B1(n_13), .B2(n_15), .ZN(n_23));
   NAND2_X1 i_48 (.A1(n_23), .A2(n_17), .ZN(n_24));
   NAND2_X1 i_49 (.A1(accumulator_A[4]), .A2(multiplier_M[4]), .ZN(n_25));
   NOR2_X1 i_51 (.A1(accumulator_A[4]), .A2(multiplier_M[4]), .ZN(n_26));
   AOI21_X1 i_52 (.A(n_26), .B1(n_24), .B2(n_25), .ZN(n_27));
   NOR2_X1 i_53 (.A1(accumulator_A[5]), .A2(multiplier_M[5]), .ZN(n_29));
   AOI21_X1 i_54 (.A(n_29), .B1(accumulator_A[5]), .B2(multiplier_M[5]), 
      .ZN(n_31));
   XOR2_X1 i_55 (.A(n_27), .B(n_31), .Z(p_0[5]));
   INV_X1 i_56 (.A(n_26), .ZN(n_32));
   NOR2_X1 i_57 (.A1(multiplier_M[7]), .A2(accumulator_A[7]), .ZN(n_33));
   AND2_X1 i_58 (.A1(multiplier_M[7]), .A2(accumulator_A[7]), .ZN(n_34));
   NAND2_X1 i_59 (.A1(multiplier_M[6]), .A2(accumulator_A[6]), .ZN(n_35));
   INV_X1 i_60 (.A(n_35), .ZN(n_38));
   NAND2_X1 i_61 (.A1(multiplier_M[5]), .A2(accumulator_A[5]), .ZN(n_39));
   INV_X1 i_62 (.A(n_27), .ZN(n_40));
   AOI21_X1 i_63 (.A(n_29), .B1(n_39), .B2(n_40), .ZN(n_41));
   OAI22_X1 i_64 (.A1(n_41), .A2(n_38), .B1(multiplier_M[6]), .B2(
      accumulator_A[6]), .ZN(n_42));
   NOR2_X1 i_65 (.A1(n_34), .A2(n_33), .ZN(n_43));
   XNOR2_X1 i_66 (.A(n_42), .B(n_43), .ZN(p_0[7]));
   NOR2_X1 i_67 (.A1(multiplier_M[6]), .A2(accumulator_A[6]), .ZN(n_44));
   NOR3_X1 i_68 (.A1(n_44), .A2(n_29), .A3(n_33), .ZN(n_48));
   NAND4_X1 i_69 (.A1(n_48), .A2(n_32), .A3(n_23), .A4(n_17), .ZN(n_50));
   NOR2_X1 i_70 (.A1(n_33), .A2(n_35), .ZN(n_51));
   NAND2_X1 i_71 (.A1(n_25), .A2(n_39), .ZN(n_52));
   AOI211_X1 i_72 (.A(n_34), .B(n_51), .C1(n_48), .C2(n_52), .ZN(n_53));
   AND2_X1 i_73 (.A1(n_53), .A2(n_50), .ZN(n_54));
   NOR2_X1 i_74 (.A1(multiplier_M[8]), .A2(accumulator_A[8]), .ZN(n_55));
   AOI21_X1 i_75 (.A(n_55), .B1(multiplier_M[8]), .B2(accumulator_A[8]), 
      .ZN(n_56));
   XNOR2_X1 i_76 (.A(n_54), .B(n_56), .ZN(p_0[8]));
   XOR2_X1 i_77 (.A(n_58), .B(n_57), .Z(p_0[11]));
   OAI22_X1 i_78 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .B1(n_65), 
      .B2(n_59), .ZN(n_57));
   OAI21_X1 i_79 (.A(n_67), .B1(multiplier_M[11]), .B2(accumulator_A[11]), 
      .ZN(n_58));
   AOI21_X1 i_80 (.A(n_64), .B1(n_63), .B2(n_60), .ZN(n_59));
   INV_X1 i_81 (.A(n_61), .ZN(n_60));
   AOI21_X1 i_82 (.A(n_55), .B1(n_54), .B2(n_62), .ZN(n_61));
   NAND2_X1 i_83 (.A1(multiplier_M[8]), .A2(accumulator_A[8]), .ZN(n_62));
   NAND2_X1 i_84 (.A1(multiplier_M[9]), .A2(accumulator_A[9]), .ZN(n_63));
   NOR2_X1 i_85 (.A1(multiplier_M[9]), .A2(accumulator_A[9]), .ZN(n_64));
   INV_X1 i_86 (.A(n_66), .ZN(n_65));
   NAND2_X1 i_87 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .ZN(n_66));
   NAND2_X1 i_88 (.A1(multiplier_M[11]), .A2(accumulator_A[11]), .ZN(n_67));
   NOR2_X1 i_89 (.A1(multiplier_M[11]), .A2(accumulator_A[11]), .ZN(n_68));
   NOR2_X1 i_90 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .ZN(n_69));
   OR3_X1 i_91 (.A1(n_69), .A2(n_64), .A3(n_68), .ZN(n_70));
   AOI211_X1 i_92 (.A(n_55), .B(n_70), .C1(n_50), .C2(n_53), .ZN(n_71));
   AND2_X1 i_93 (.A1(n_63), .A2(n_62), .ZN(n_72));
   OAI221_X1 i_94 (.A(n_67), .B1(n_68), .B2(n_66), .C1(n_70), .C2(n_72), 
      .ZN(n_73));
   NOR2_X1 i_95 (.A1(n_73), .A2(n_71), .ZN(n_74));
   NAND2_X1 i_96 (.A1(multiplier_M[12]), .A2(accumulator_A[12]), .ZN(n_75));
   OAI21_X1 i_97 (.A(n_75), .B1(multiplier_M[12]), .B2(accumulator_A[12]), 
      .ZN(n_76));
   XOR2_X1 i_98 (.A(n_74), .B(n_76), .Z(p_0[12]));
   XOR2_X1 i_99 (.A(n_78), .B(n_77), .Z(p_0[15]));
   OAI22_X1 i_100 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .B1(n_85), 
      .B2(n_79), .ZN(n_77));
   OAI21_X1 i_101 (.A(n_87), .B1(multiplier_M[15]), .B2(accumulator_A[15]), 
      .ZN(n_78));
   AOI21_X1 i_102 (.A(n_84), .B1(n_83), .B2(n_81), .ZN(n_79));
   INV_X1 i_103 (.A(n_81), .ZN(n_80));
   OAI21_X1 i_104 (.A(n_82), .B1(multiplier_M[12]), .B2(accumulator_A[12]), 
      .ZN(n_81));
   NAND2_X1 i_105 (.A1(n_74), .A2(n_75), .ZN(n_82));
   NAND2_X1 i_106 (.A1(multiplier_M[13]), .A2(accumulator_A[13]), .ZN(n_83));
   NOR2_X1 i_107 (.A1(multiplier_M[13]), .A2(accumulator_A[13]), .ZN(n_84));
   INV_X1 i_108 (.A(n_86), .ZN(n_85));
   NAND2_X1 i_109 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .ZN(n_86));
   NAND2_X1 i_110 (.A1(multiplier_M[15]), .A2(accumulator_A[15]), .ZN(n_87));
   NOR2_X1 i_111 (.A1(multiplier_M[15]), .A2(accumulator_A[15]), .ZN(n_88));
   NOR2_X1 i_112 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .ZN(n_89));
   NOR3_X1 i_113 (.A1(n_89), .A2(n_84), .A3(n_88), .ZN(n_90));
   OAI221_X1 i_114 (.A(n_90), .B1(n_71), .B2(n_73), .C1(multiplier_M[12]), 
      .C2(accumulator_A[12]), .ZN(n_91));
   INV_X1 i_115 (.A(n_90), .ZN(n_92));
   AND2_X1 i_116 (.A1(n_75), .A2(n_83), .ZN(n_93));
   OAI221_X1 i_117 (.A(n_87), .B1(n_88), .B2(n_86), .C1(n_92), .C2(n_93), 
      .ZN(n_94));
   INV_X1 i_118 (.A(n_94), .ZN(n_95));
   NAND2_X1 i_119 (.A1(multiplier_M[16]), .A2(accumulator_A[16]), .ZN(n_96));
   AND2_X1 i_120 (.A1(n_95), .A2(n_91), .ZN(n_97));
   OAI21_X1 i_121 (.A(n_96), .B1(multiplier_M[16]), .B2(accumulator_A[16]), 
      .ZN(n_98));
   XOR2_X1 i_122 (.A(n_97), .B(n_98), .Z(p_0[16]));
   XOR2_X1 i_123 (.A(n_100), .B(n_99), .Z(p_0[19]));
   OAI22_X1 i_124 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .B1(n_107), 
      .B2(n_101), .ZN(n_99));
   OAI21_X1 i_125 (.A(n_109), .B1(multiplier_M[19]), .B2(accumulator_A[19]), 
      .ZN(n_100));
   AOI21_X1 i_126 (.A(n_106), .B1(n_105), .B2(n_103), .ZN(n_101));
   INV_X1 i_127 (.A(n_103), .ZN(n_102));
   OAI21_X1 i_129 (.A(n_104), .B1(multiplier_M[16]), .B2(accumulator_A[16]), 
      .ZN(n_103));
   NAND2_X1 i_130 (.A1(n_97), .A2(n_96), .ZN(n_104));
   NAND2_X1 i_131 (.A1(multiplier_M[17]), .A2(accumulator_A[17]), .ZN(n_105));
   NOR2_X1 i_132 (.A1(multiplier_M[17]), .A2(accumulator_A[17]), .ZN(n_106));
   INV_X1 i_133 (.A(n_108), .ZN(n_107));
   NAND2_X1 i_134 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .ZN(n_108));
   NAND2_X1 i_135 (.A1(multiplier_M[19]), .A2(accumulator_A[19]), .ZN(n_109));
   NOR2_X1 i_136 (.A1(multiplier_M[19]), .A2(accumulator_A[19]), .ZN(n_110));
   NOR2_X1 i_137 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .ZN(n_111));
   NOR3_X1 i_138 (.A1(n_111), .A2(n_106), .A3(n_110), .ZN(n_112));
   OAI21_X1 i_139 (.A(n_112), .B1(multiplier_M[16]), .B2(accumulator_A[16]), 
      .ZN(n_113));
   AOI21_X1 i_140 (.A(n_113), .B1(n_91), .B2(n_95), .ZN(n_114));
   INV_X1 i_141 (.A(n_112), .ZN(n_115));
   AND2_X1 i_142 (.A1(n_96), .A2(n_105), .ZN(n_116));
   OAI221_X1 i_143 (.A(n_109), .B1(n_110), .B2(n_108), .C1(n_115), .C2(n_116), 
      .ZN(n_117));
   NOR2_X1 i_144 (.A1(n_117), .A2(n_114), .ZN(n_118));
   NAND2_X1 i_145 (.A1(multiplier_M[20]), .A2(accumulator_A[20]), .ZN(n_119));
   OAI21_X1 i_146 (.A(n_119), .B1(multiplier_M[20]), .B2(accumulator_A[20]), 
      .ZN(n_120));
   XOR2_X1 i_147 (.A(n_118), .B(n_120), .Z(p_0[20]));
   XOR2_X1 i_148 (.A(n_123), .B(n_121), .Z(p_0[21]));
   AOI21_X1 i_149 (.A(n_122), .B1(accumulator_A[21]), .B2(multiplier_M[21]), 
      .ZN(n_121));
   NOR2_X1 i_150 (.A1(accumulator_A[21]), .A2(multiplier_M[21]), .ZN(n_122));
   AOI21_X1 i_151 (.A(n_124), .B1(n_118), .B2(n_119), .ZN(n_123));
   NOR2_X1 i_152 (.A1(accumulator_A[20]), .A2(multiplier_M[20]), .ZN(n_124));
   NOR2_X1 i_153 (.A1(multiplier_M[23]), .A2(accumulator_A[23]), .ZN(n_125));
   AND2_X1 i_154 (.A1(multiplier_M[23]), .A2(accumulator_A[23]), .ZN(n_126));
   NAND2_X1 i_155 (.A1(multiplier_M[22]), .A2(accumulator_A[22]), .ZN(n_127));
   OAI22_X1 i_156 (.A1(multiplier_M[21]), .A2(accumulator_A[21]), .B1(
      multiplier_M[22]), .B2(accumulator_A[22]), .ZN(n_128));
   AOI21_X1 i_157 (.A(n_123), .B1(multiplier_M[21]), .B2(accumulator_A[21]), 
      .ZN(n_129));
   OAI21_X1 i_158 (.A(n_127), .B1(n_128), .B2(n_129), .ZN(n_130));
   NOR2_X1 i_159 (.A1(n_126), .A2(n_125), .ZN(n_131));
   XOR2_X1 i_160 (.A(n_130), .B(n_131), .Z(p_0[23]));
   INV_X1 i_161 (.A(n_132), .ZN(p_0[24]));
   OAI21_X1 i_162 (.A(n_133), .B1(accumulator_A[24]), .B2(n_134), .ZN(n_132));
   NAND2_X1 i_163 (.A1(accumulator_A[24]), .A2(n_134), .ZN(n_133));
   NAND2_X1 i_164 (.A1(n_138), .A2(n_135), .ZN(n_134));
   AOI21_X1 i_165 (.A(n_126), .B1(n_142), .B2(n_136), .ZN(n_135));
   OAI21_X1 i_166 (.A(n_127), .B1(n_128), .B2(n_137), .ZN(n_136));
   AOI21_X1 i_167 (.A(n_141), .B1(multiplier_M[21]), .B2(accumulator_A[21]), 
      .ZN(n_137));
   OAI21_X1 i_168 (.A(n_140), .B1(n_114), .B2(n_117), .ZN(n_138));
   NOR3_X1 i_169 (.A1(n_128), .A2(n_124), .A3(n_125), .ZN(n_140));
   INV_X1 i_170 (.A(n_119), .ZN(n_141));
   INV_X1 i_171 (.A(n_125), .ZN(n_142));
   INV_X1 i_172 (.A(n_143), .ZN(p_0[28]));
   OAI21_X1 i_173 (.A(n_144), .B1(accumulator_A[28]), .B2(n_145), .ZN(n_143));
   NAND4_X1 i_174 (.A1(accumulator_A[28]), .A2(accumulator_A[27]), .A3(n_134), 
      .A4(n_148), .ZN(n_144));
   INV_X1 i_175 (.A(n_146), .ZN(n_145));
   NAND2_X1 i_176 (.A1(accumulator_A[27]), .A2(n_147), .ZN(n_146));
   AOI21_X1 i_177 (.A(n_149), .B1(n_138), .B2(n_135), .ZN(n_147));
   INV_X1 i_178 (.A(n_149), .ZN(n_148));
   NAND3_X1 i_179 (.A1(accumulator_A[26]), .A2(accumulator_A[24]), .A3(
      accumulator_A[25]), .ZN(n_149));
   INV_X1 i_180 (.A(n_150), .ZN(p_0[29]));
   OAI21_X1 i_181 (.A(n_151), .B1(accumulator_A[29]), .B2(n_152), .ZN(n_150));
   NAND4_X1 i_182 (.A1(n_147), .A2(accumulator_A[29]), .A3(accumulator_A[28]), 
      .A4(accumulator_A[27]), .ZN(n_151));
   INV_X1 i_183 (.A(n_144), .ZN(n_152));
   NAND2_X1 i_184 (.A1(n_155), .A2(n_153), .ZN(p_0[30]));
   NAND2_X1 i_185 (.A1(accumulator_A[29]), .A2(n_154), .ZN(n_153));
   NOR2_X1 i_186 (.A1(accumulator_A[30]), .A2(n_144), .ZN(n_154));
   NAND2_X1 i_187 (.A1(n_151), .A2(accumulator_A[30]), .ZN(n_155));
endmodule

module datapath__0_5(accumulator_A, p_0, multiplier_M);
   input [31:0]accumulator_A;
   output [31:0]p_0;
   input [31:0]multiplier_M;

   OAI21_X1 i_0 (.A(n_5), .B1(n_13), .B2(multiplier_M[0]), .ZN(p_0[0]));
   XNOR2_X1 i_1 (.A(n_11), .B(n_6), .ZN(p_0[5]));
   OAI21_X1 i_2 (.A(n_66), .B1(n_69), .B2(multiplier_M[5]), .ZN(n_6));
   XNOR2_X1 i_3 (.A(n_9), .B(n_7), .ZN(p_0[6]));
   OAI21_X1 i_4 (.A(n_65), .B1(n_70), .B2(multiplier_M[6]), .ZN(n_7));
   XOR2_X1 i_5 (.A(n_12), .B(n_8), .Z(p_0[7]));
   OAI21_X1 i_6 (.A(n_65), .B1(n_60), .B2(n_9), .ZN(n_8));
   INV_X1 i_7 (.A(n_10), .ZN(n_9));
   OAI21_X1 i_8 (.A(n_66), .B1(n_62), .B2(n_11), .ZN(n_10));
   OAI22_X1 i_9 (.A1(n_47), .A2(n_43), .B1(n_45), .B2(multiplier_M[4]), .ZN(n_11));
   OAI21_X1 i_10 (.A(n_67), .B1(n_71), .B2(multiplier_M[7]), .ZN(n_12));
   XNOR2_X1 i_11 (.A(n_19), .B(n_16), .ZN(p_0[11]));
   OAI21_X1 i_12 (.A(n_80), .B1(n_81), .B2(n_82), .ZN(n_16));
   OAI21_X1 i_13 (.A(n_94), .B1(n_95), .B2(multiplier_M[11]), .ZN(n_19));
   XNOR2_X1 i_14 (.A(n_24), .B(n_22), .ZN(p_0[14]));
   NOR2_X1 i_15 (.A1(n_150), .A2(n_112), .ZN(n_22));
   XNOR2_X1 i_16 (.A(n_29), .B(n_23), .ZN(p_0[15]));
   OAI21_X1 i_17 (.A(n_111), .B1(n_150), .B2(n_24), .ZN(n_23));
   OAI21_X1 i_18 (.A(n_149), .B1(n_98), .B2(n_25), .ZN(n_24));
   INV_X1 i_19 (.A(n_100), .ZN(n_25));
   OAI21_X1 i_20 (.A(n_118), .B1(n_121), .B2(multiplier_M[15]), .ZN(n_29));
   INV_X1 i_21 (.A(n_31), .ZN(p_0[17]));
   AOI21_X1 i_22 (.A(n_125), .B1(n_128), .B2(n_126), .ZN(n_31));
   XNOR2_X1 i_23 (.A(n_33), .B(n_32), .ZN(p_0[18]));
   OAI21_X1 i_24 (.A(n_132), .B1(n_127), .B2(n_128), .ZN(n_32));
   NOR2_X1 i_25 (.A1(n_131), .A2(n_133), .ZN(n_33));
   INV_X1 i_26 (.A(n_40), .ZN(p_0[21]));
   AOI21_X1 i_27 (.A(n_154), .B1(n_157), .B2(n_155), .ZN(n_40));
   XNOR2_X1 i_28 (.A(n_42), .B(n_41), .ZN(p_0[22]));
   OAI21_X1 i_29 (.A(n_162), .B1(n_156), .B2(n_157), .ZN(n_41));
   NOR2_X1 i_30 (.A1(n_161), .A2(n_163), .ZN(n_42));
   OAI21_X1 i_31 (.A(n_173), .B1(n_179), .B2(n_174), .ZN(p_0[24]));
   INV_X1 i_32 (.A(n_48), .ZN(p_0[25]));
   AOI21_X1 i_33 (.A(n_172), .B1(accumulator_A[25]), .B2(n_173), .ZN(n_48));
   INV_X1 i_34 (.A(n_49), .ZN(p_0[26]));
   AOI21_X1 i_35 (.A(n_170), .B1(accumulator_A[26]), .B2(n_171), .ZN(n_49));
   INV_X1 i_36 (.A(n_99), .ZN(n_149));
   AND2_X1 i_37 (.A1(n_120), .A2(multiplier_M[14]), .ZN(n_150));
   NAND2_X1 i_38 (.A1(n_61), .A2(n_185), .ZN(p_0[29]));
   NAND2_X1 i_39 (.A1(n_181), .A2(accumulator_A[29]), .ZN(n_61));
   XNOR2_X1 i_40 (.A(n_5), .B(n_0), .ZN(p_0[1]));
   NAND2_X1 i_41 (.A1(n_3), .A2(n_1), .ZN(n_0));
   OR2_X1 i_42 (.A1(n_14), .A2(multiplier_M[1]), .ZN(n_1));
   INV_X1 i_43 (.A(n_3), .ZN(n_2));
   NAND2_X1 i_44 (.A1(n_14), .A2(multiplier_M[1]), .ZN(n_3));
   INV_X1 i_45 (.A(n_5), .ZN(n_4));
   NAND2_X1 i_46 (.A1(n_13), .A2(multiplier_M[0]), .ZN(n_5));
   INV_X1 i_47 (.A(accumulator_A[0]), .ZN(n_13));
   INV_X1 i_48 (.A(accumulator_A[1]), .ZN(n_14));
   XOR2_X1 i_49 (.A(n_20), .B(n_15), .Z(p_0[2]));
   NOR2_X1 i_50 (.A1(n_18), .A2(n_17), .ZN(n_15));
   NOR2_X1 i_51 (.A1(multiplier_M[2]), .A2(n_21), .ZN(n_17));
   AND2_X1 i_52 (.A1(multiplier_M[2]), .A2(n_21), .ZN(n_18));
   OAI22_X1 i_53 (.A1(n_2), .A2(n_4), .B1(n_14), .B2(multiplier_M[1]), .ZN(n_20));
   INV_X1 i_54 (.A(accumulator_A[2]), .ZN(n_21));
   XNOR2_X1 i_55 (.A(n_27), .B(n_26), .ZN(p_0[3]));
   OAI21_X1 i_56 (.A(n_34), .B1(n_17), .B2(n_20), .ZN(n_26));
   AOI21_X1 i_57 (.A(n_30), .B1(n_35), .B2(accumulator_A[3]), .ZN(n_27));
   INV_X1 i_58 (.A(n_30), .ZN(n_28));
   NOR2_X1 i_59 (.A1(n_35), .A2(accumulator_A[3]), .ZN(n_30));
   INV_X1 i_60 (.A(n_18), .ZN(n_34));
   INV_X1 i_61 (.A(multiplier_M[3]), .ZN(n_35));
   AND3_X1 i_62 (.A1(n_1), .A2(n_13), .A3(multiplier_M[0]), .ZN(n_36));
   NOR3_X1 i_63 (.A1(n_36), .A2(n_30), .A3(n_18), .ZN(n_37));
   AOI21_X1 i_64 (.A(n_17), .B1(accumulator_A[3]), .B2(n_35), .ZN(n_38));
   INV_X1 i_65 (.A(n_38), .ZN(n_39));
   AOI22_X1 i_66 (.A1(n_37), .A2(n_3), .B1(n_39), .B2(n_28), .ZN(n_43));
   INV_X1 i_67 (.A(n_43), .ZN(n_44));
   INV_X1 i_68 (.A(accumulator_A[4]), .ZN(n_45));
   NAND2_X1 i_69 (.A1(n_45), .A2(multiplier_M[4]), .ZN(n_46));
   INV_X1 i_70 (.A(n_46), .ZN(n_47));
   NOR2_X1 i_71 (.A1(n_45), .A2(multiplier_M[4]), .ZN(n_50));
   NOR2_X1 i_72 (.A1(n_47), .A2(n_50), .ZN(n_51));
   XNOR2_X1 i_73 (.A(n_43), .B(n_51), .ZN(p_0[4]));
   XNOR2_X1 i_74 (.A(n_56), .B(n_52), .ZN(p_0[8]));
   OAI21_X1 i_75 (.A(n_54), .B1(n_72), .B2(multiplier_M[8]), .ZN(n_52));
   INV_X1 i_76 (.A(n_54), .ZN(n_53));
   NAND2_X1 i_77 (.A1(n_72), .A2(multiplier_M[8]), .ZN(n_54));
   INV_X1 i_78 (.A(n_56), .ZN(n_55));
   NAND2_X1 i_79 (.A1(n_63), .A2(n_57), .ZN(n_56));
   AOI221_X1 i_80 (.A(n_58), .B1(accumulator_A[7]), .B2(n_68), .C1(n_67), 
      .C2(n_60), .ZN(n_57));
   INV_X1 i_81 (.A(n_59), .ZN(n_58));
   OAI21_X1 i_82 (.A(n_64), .B1(n_50), .B2(n_62), .ZN(n_59));
   NOR2_X1 i_83 (.A1(n_70), .A2(multiplier_M[6]), .ZN(n_60));
   NOR2_X1 i_84 (.A1(n_69), .A2(multiplier_M[5]), .ZN(n_62));
   NAND3_X1 i_85 (.A1(n_46), .A2(n_64), .A3(n_44), .ZN(n_63));
   AND3_X1 i_86 (.A1(n_67), .A2(n_65), .A3(n_66), .ZN(n_64));
   NAND2_X1 i_87 (.A1(n_70), .A2(multiplier_M[6]), .ZN(n_65));
   NAND2_X1 i_88 (.A1(n_69), .A2(multiplier_M[5]), .ZN(n_66));
   NAND2_X1 i_89 (.A1(n_71), .A2(multiplier_M[7]), .ZN(n_67));
   INV_X1 i_90 (.A(multiplier_M[7]), .ZN(n_68));
   INV_X1 i_91 (.A(accumulator_A[5]), .ZN(n_69));
   INV_X1 i_92 (.A(accumulator_A[6]), .ZN(n_70));
   INV_X1 i_93 (.A(accumulator_A[7]), .ZN(n_71));
   INV_X1 i_94 (.A(accumulator_A[8]), .ZN(n_72));
   XNOR2_X1 i_95 (.A(n_77), .B(n_73), .ZN(p_0[9]));
   NAND2_X1 i_96 (.A1(n_76), .A2(n_74), .ZN(n_73));
   INV_X1 i_97 (.A(n_75), .ZN(n_74));
   NOR2_X1 i_98 (.A1(multiplier_M[9]), .A2(n_78), .ZN(n_75));
   NAND2_X1 i_99 (.A1(multiplier_M[9]), .A2(n_78), .ZN(n_76));
   OAI22_X1 i_100 (.A1(n_53), .A2(n_55), .B1(n_72), .B2(multiplier_M[8]), 
      .ZN(n_77));
   INV_X1 i_101 (.A(accumulator_A[9]), .ZN(n_78));
   XNOR2_X1 i_102 (.A(n_82), .B(n_79), .ZN(p_0[10]));
   AOI21_X1 i_103 (.A(n_81), .B1(n_83), .B2(accumulator_A[10]), .ZN(n_79));
   NAND2_X1 i_104 (.A1(n_83), .A2(accumulator_A[10]), .ZN(n_80));
   NOR2_X1 i_105 (.A1(n_83), .A2(accumulator_A[10]), .ZN(n_81));
   OAI21_X1 i_106 (.A(n_76), .B1(n_75), .B2(n_77), .ZN(n_82));
   INV_X1 i_107 (.A(multiplier_M[10]), .ZN(n_83));
   XNOR2_X1 i_108 (.A(n_86), .B(n_84), .ZN(p_0[12]));
   OAI21_X1 i_109 (.A(n_85), .B1(multiplier_M[12]), .B2(n_96), .ZN(n_84));
   NAND2_X1 i_110 (.A1(multiplier_M[12]), .A2(n_96), .ZN(n_85));
   OAI21_X1 i_111 (.A(n_89), .B1(n_55), .B2(n_87), .ZN(n_86));
   NAND2_X1 i_112 (.A1(n_54), .A2(n_92), .ZN(n_87));
   INV_X1 i_113 (.A(n_89), .ZN(n_88));
   AOI22_X1 i_114 (.A1(n_92), .A2(n_91), .B1(n_94), .B2(n_90), .ZN(n_89));
   OAI21_X1 i_115 (.A(n_80), .B1(multiplier_M[11]), .B2(n_95), .ZN(n_90));
   OAI21_X1 i_116 (.A(n_74), .B1(multiplier_M[8]), .B2(n_72), .ZN(n_91));
   INV_X1 i_117 (.A(n_93), .ZN(n_92));
   OAI211_X1 i_118 (.A(n_94), .B(n_76), .C1(accumulator_A[10]), .C2(n_83), 
      .ZN(n_93));
   NAND2_X1 i_119 (.A1(multiplier_M[11]), .A2(n_95), .ZN(n_94));
   INV_X1 i_120 (.A(accumulator_A[11]), .ZN(n_95));
   INV_X1 i_121 (.A(accumulator_A[12]), .ZN(n_96));
   XNOR2_X1 i_122 (.A(n_100), .B(n_97), .ZN(p_0[13]));
   NOR2_X1 i_123 (.A1(n_99), .A2(n_98), .ZN(n_97));
   NOR2_X1 i_124 (.A1(multiplier_M[13]), .A2(n_102), .ZN(n_98));
   AND2_X1 i_125 (.A1(multiplier_M[13]), .A2(n_102), .ZN(n_99));
   OAI21_X1 i_126 (.A(n_85), .B1(n_86), .B2(n_101), .ZN(n_100));
   NOR2_X1 i_127 (.A1(n_96), .A2(multiplier_M[12]), .ZN(n_101));
   INV_X1 i_128 (.A(accumulator_A[13]), .ZN(n_102));
   XNOR2_X1 i_129 (.A(n_107), .B(n_103), .ZN(p_0[16]));
   NOR2_X1 i_130 (.A1(n_105), .A2(n_104), .ZN(n_103));
   NOR2_X1 i_131 (.A1(n_122), .A2(multiplier_M[16]), .ZN(n_104));
   INV_X1 i_132 (.A(n_106), .ZN(n_105));
   NAND2_X1 i_133 (.A1(n_122), .A2(multiplier_M[16]), .ZN(n_106));
   AND2_X1 i_134 (.A1(n_113), .A2(n_108), .ZN(n_107));
   AOI22_X1 i_135 (.A1(n_88), .A2(n_115), .B1(n_118), .B2(n_109), .ZN(n_108));
   OAI211_X1 i_136 (.A(n_111), .B(n_110), .C1(n_121), .C2(multiplier_M[15]), 
      .ZN(n_109));
   OAI21_X1 i_137 (.A(n_117), .B1(n_101), .B2(n_98), .ZN(n_110));
   INV_X1 i_138 (.A(n_112), .ZN(n_111));
   NOR2_X1 i_139 (.A1(n_120), .A2(multiplier_M[14]), .ZN(n_112));
   INV_X1 i_140 (.A(n_114), .ZN(n_113));
   AOI211_X1 i_141 (.A(n_116), .B(n_87), .C1(n_63), .C2(n_57), .ZN(n_114));
   INV_X1 i_142 (.A(n_116), .ZN(n_115));
   NAND3_X1 i_143 (.A1(n_85), .A2(n_117), .A3(n_118), .ZN(n_116));
   AOI22_X1 i_144 (.A1(n_119), .A2(multiplier_M[13]), .B1(n_120), .B2(
      multiplier_M[14]), .ZN(n_117));
   NAND2_X1 i_145 (.A1(n_121), .A2(multiplier_M[15]), .ZN(n_118));
   INV_X1 i_146 (.A(accumulator_A[13]), .ZN(n_119));
   INV_X1 i_147 (.A(accumulator_A[14]), .ZN(n_120));
   INV_X1 i_148 (.A(accumulator_A[15]), .ZN(n_121));
   INV_X1 i_149 (.A(accumulator_A[16]), .ZN(n_122));
   XNOR2_X1 i_150 (.A(n_124), .B(n_123), .ZN(p_0[19]));
   OAI21_X1 i_151 (.A(n_134), .B1(n_129), .B2(n_125), .ZN(n_123));
   OAI21_X1 i_152 (.A(n_136), .B1(n_139), .B2(multiplier_M[19]), .ZN(n_124));
   NOR2_X1 i_153 (.A1(n_128), .A2(n_126), .ZN(n_125));
   OAI21_X1 i_154 (.A(n_132), .B1(n_138), .B2(multiplier_M[17]), .ZN(n_126));
   NOR2_X1 i_155 (.A1(n_138), .A2(multiplier_M[17]), .ZN(n_127));
   OAI22_X1 i_156 (.A1(multiplier_M[16]), .A2(n_122), .B1(n_107), .B2(n_105), 
      .ZN(n_128));
   NAND2_X1 i_157 (.A1(n_132), .A2(n_130), .ZN(n_129));
   INV_X1 i_158 (.A(n_131), .ZN(n_130));
   NOR2_X1 i_159 (.A1(accumulator_A[18]), .A2(n_137), .ZN(n_131));
   NAND2_X1 i_160 (.A1(n_138), .A2(multiplier_M[17]), .ZN(n_132));
   INV_X1 i_161 (.A(n_134), .ZN(n_133));
   NAND2_X1 i_162 (.A1(accumulator_A[18]), .A2(n_137), .ZN(n_134));
   INV_X1 i_163 (.A(n_136), .ZN(n_135));
   NAND2_X1 i_164 (.A1(n_139), .A2(multiplier_M[19]), .ZN(n_136));
   INV_X1 i_165 (.A(multiplier_M[18]), .ZN(n_137));
   INV_X1 i_166 (.A(accumulator_A[17]), .ZN(n_138));
   INV_X1 i_167 (.A(accumulator_A[19]), .ZN(n_139));
   XOR2_X1 i_168 (.A(n_141), .B(n_140), .Z(p_0[20]));
   AOI22_X1 i_169 (.A1(n_151), .A2(n_148), .B1(multiplier_M[20]), .B2(
      accumulator_A[20]), .ZN(n_140));
   NOR2_X1 i_170 (.A1(n_146), .A2(n_142), .ZN(n_141));
   NOR2_X1 i_171 (.A1(n_135), .A2(n_143), .ZN(n_142));
   INV_X1 i_172 (.A(n_144), .ZN(n_143));
   OAI221_X1 i_173 (.A(n_134), .B1(multiplier_M[19]), .B2(n_139), .C1(n_129), 
      .C2(n_145), .ZN(n_144));
   NOR2_X1 i_174 (.A1(n_104), .A2(n_127), .ZN(n_145));
   AOI21_X1 i_175 (.A(n_147), .B1(n_113), .B2(n_108), .ZN(n_146));
   NAND4_X1 i_176 (.A1(n_132), .A2(n_130), .A3(n_106), .A4(n_136), .ZN(n_147));
   INV_X1 i_177 (.A(accumulator_A[20]), .ZN(n_148));
   INV_X1 i_178 (.A(multiplier_M[20]), .ZN(n_151));
   XNOR2_X1 i_179 (.A(n_153), .B(n_152), .ZN(p_0[23]));
   OAI21_X1 i_180 (.A(n_164), .B1(n_159), .B2(n_154), .ZN(n_152));
   OAI21_X1 i_181 (.A(n_165), .B1(n_168), .B2(multiplier_M[23]), .ZN(n_153));
   NOR2_X1 i_182 (.A1(n_157), .A2(n_155), .ZN(n_154));
   OAI21_X1 i_183 (.A(n_162), .B1(n_167), .B2(multiplier_M[21]), .ZN(n_155));
   NOR2_X1 i_184 (.A1(n_167), .A2(multiplier_M[21]), .ZN(n_156));
   OAI22_X1 i_185 (.A1(multiplier_M[20]), .A2(n_148), .B1(n_141), .B2(n_158), 
      .ZN(n_157));
   NOR2_X1 i_186 (.A1(accumulator_A[20]), .A2(n_151), .ZN(n_158));
   INV_X1 i_187 (.A(n_160), .ZN(n_159));
   AOI21_X1 i_188 (.A(n_161), .B1(n_167), .B2(multiplier_M[21]), .ZN(n_160));
   NOR2_X1 i_189 (.A1(accumulator_A[22]), .A2(n_166), .ZN(n_161));
   NAND2_X1 i_190 (.A1(n_167), .A2(multiplier_M[21]), .ZN(n_162));
   INV_X1 i_191 (.A(n_164), .ZN(n_163));
   NAND2_X1 i_192 (.A1(accumulator_A[22]), .A2(n_166), .ZN(n_164));
   NAND2_X1 i_193 (.A1(n_168), .A2(multiplier_M[23]), .ZN(n_165));
   INV_X1 i_194 (.A(multiplier_M[22]), .ZN(n_166));
   INV_X1 i_195 (.A(accumulator_A[21]), .ZN(n_167));
   INV_X1 i_196 (.A(accumulator_A[23]), .ZN(n_168));
   OAI21_X1 i_197 (.A(n_169), .B1(n_180), .B2(n_170), .ZN(p_0[27]));
   NAND2_X1 i_198 (.A1(n_180), .A2(n_170), .ZN(n_169));
   NOR2_X1 i_199 (.A1(accumulator_A[26]), .A2(n_171), .ZN(n_170));
   INV_X1 i_200 (.A(n_172), .ZN(n_171));
   NOR2_X1 i_201 (.A1(accumulator_A[25]), .A2(n_173), .ZN(n_172));
   NAND2_X1 i_202 (.A1(n_179), .A2(n_174), .ZN(n_173));
   OAI21_X1 i_203 (.A(n_165), .B1(n_177), .B2(n_175), .ZN(n_174));
   OAI211_X1 i_204 (.A(n_164), .B(n_176), .C1(multiplier_M[23]), .C2(n_168), 
      .ZN(n_175));
   OAI221_X1 i_205 (.A(n_160), .B1(accumulator_A[20]), .B2(n_151), .C1(n_146), 
      .C2(n_142), .ZN(n_176));
   NOR2_X1 i_206 (.A1(n_159), .A2(n_178), .ZN(n_177));
   AOI21_X1 i_207 (.A(n_156), .B1(accumulator_A[20]), .B2(n_151), .ZN(n_178));
   INV_X1 i_208 (.A(accumulator_A[24]), .ZN(n_179));
   INV_X1 i_209 (.A(accumulator_A[27]), .ZN(n_180));
   OAI21_X1 i_210 (.A(n_181), .B1(n_183), .B2(n_182), .ZN(p_0[28]));
   NAND2_X1 i_211 (.A1(n_183), .A2(n_182), .ZN(n_181));
   INV_X1 i_212 (.A(accumulator_A[28]), .ZN(n_182));
   INV_X1 i_213 (.A(n_169), .ZN(n_183));
   INV_X1 i_214 (.A(n_184), .ZN(p_0[30]));
   OAI21_X1 i_215 (.A(p_0[31]), .B1(n_187), .B2(n_185), .ZN(n_184));
   NAND2_X1 i_216 (.A1(n_187), .A2(n_185), .ZN(p_0[31]));
   NAND3_X1 i_217 (.A1(n_183), .A2(n_182), .A3(n_186), .ZN(n_185));
   INV_X1 i_218 (.A(accumulator_A[29]), .ZN(n_186));
   INV_X1 i_219 (.A(accumulator_A[30]), .ZN(n_187));
endmodule

module boothAlgo(Res, OVF, A, B, clk, reset, enable);
   output [63:0]Res;
   output OVF;
   input [31:0]A;
   input [31:0]B;
   input clk;
   input reset;
   input enable;

   wire [31:0]accumulator_A;
   wire [31:0]multiplier_M;
   wire ready;
   wire [4:0]counter;
   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire n_0_48;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;
   wire n_0_53;
   wire n_0_54;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;
   wire n_0_58;
   wire n_0_59;
   wire n_0_60;
   wire n_0_61;
   wire n_0_62;
   wire n_0_63;
   wire n_0_64;
   wire n_0_65;
   wire n_0_66;
   wire n_0_67;
   wire n_0_68;
   wire n_0_69;
   wire n_0_70;
   wire n_0_71;
   wire n_0_72;

   datapath__0_4 i_7 (.multiplier_M({uc_0, uc_1, uc_2, uc_3, uc_4, uc_5, uc_6, 
      uc_7, multiplier_M[23], multiplier_M[22], multiplier_M[21], 
      multiplier_M[20], multiplier_M[19], multiplier_M[18], multiplier_M[17], 
      multiplier_M[16], multiplier_M[15], multiplier_M[14], multiplier_M[13], 
      multiplier_M[12], multiplier_M[11], multiplier_M[10], multiplier_M[9], 
      multiplier_M[8], multiplier_M[7], multiplier_M[6], multiplier_M[5], 
      multiplier_M[4], multiplier_M[3], multiplier_M[2], multiplier_M[1], 
      multiplier_M[0]}), .accumulator_A({uc_8, accumulator_A[30], 
      accumulator_A[29], accumulator_A[28], accumulator_A[27], accumulator_A[26], 
      accumulator_A[25], accumulator_A[24], accumulator_A[23], accumulator_A[22], 
      accumulator_A[21], accumulator_A[20], accumulator_A[19], accumulator_A[18], 
      accumulator_A[17], accumulator_A[16], Res[47], Res[46], Res[45], Res[44], 
      Res[43], Res[42], Res[41], Res[40], Res[39], Res[38], Res[37], Res[36], 
      Res[35], Res[34], Res[33], Res[32]}), .p_0({n_31, n_30, n_29, n_28, n_27, 
      n_26, n_25, n_24, n_23, n_22, n_21, n_20, n_19, n_18, n_17, n_16, n_15, 
      n_14, n_13, n_12, n_11, n_10, n_9, n_8, n_7, n_6, n_5, n_4, n_3, n_2, n_1, 
      n_0}));
   datapath__0_5 i_8 (.accumulator_A({uc_9, accumulator_A[30], accumulator_A[29], 
      accumulator_A[28], accumulator_A[27], accumulator_A[26], accumulator_A[25], 
      accumulator_A[24], accumulator_A[23], accumulator_A[22], accumulator_A[21], 
      accumulator_A[20], accumulator_A[19], accumulator_A[18], accumulator_A[17], 
      accumulator_A[16], Res[47], Res[46], Res[45], Res[44], Res[43], Res[42], 
      Res[41], Res[40], Res[39], Res[38], Res[37], Res[36], Res[35], Res[34], 
      Res[33], Res[32]}), .p_0({n_63, n_62, n_61, n_60, n_59, n_58, n_57, n_56, 
      n_55, n_54, n_53, n_52, n_51, n_50, n_49, n_48, n_47, n_46, n_45, n_44, 
      n_43, n_42, n_41, n_40, n_39, n_38, n_37, n_36, n_35, n_34, n_33, n_32}), 
      .multiplier_M({uc_10, uc_11, uc_12, uc_13, uc_14, uc_15, uc_16, uc_17, 
      multiplier_M[23], multiplier_M[22], multiplier_M[21], multiplier_M[20], 
      multiplier_M[19], multiplier_M[18], multiplier_M[17], multiplier_M[16], 
      multiplier_M[15], multiplier_M[14], multiplier_M[13], multiplier_M[12], 
      multiplier_M[11], multiplier_M[10], multiplier_M[9], multiplier_M[8], 
      multiplier_M[7], multiplier_M[6], multiplier_M[5], multiplier_M[4], 
      multiplier_M[3], multiplier_M[2], multiplier_M[1], multiplier_M[0]}));
   DLH_X1 \accumulator_A_reg[30]  (.D(n_126), .G(n_95), .Q(accumulator_A[30]));
   DLH_X1 \accumulator_A_reg[29]  (.D(n_125), .G(n_95), .Q(accumulator_A[29]));
   DLH_X1 \accumulator_A_reg[28]  (.D(n_124), .G(n_95), .Q(accumulator_A[28]));
   DLH_X1 \accumulator_A_reg[27]  (.D(n_123), .G(n_95), .Q(accumulator_A[27]));
   DLH_X1 \accumulator_A_reg[26]  (.D(n_122), .G(n_95), .Q(accumulator_A[26]));
   DLH_X1 \accumulator_A_reg[25]  (.D(n_121), .G(n_95), .Q(accumulator_A[25]));
   DLH_X1 \accumulator_A_reg[24]  (.D(n_120), .G(n_95), .Q(accumulator_A[24]));
   DLH_X1 \accumulator_A_reg[23]  (.D(n_119), .G(n_95), .Q(accumulator_A[23]));
   DLH_X1 \accumulator_A_reg[22]  (.D(n_118), .G(n_95), .Q(accumulator_A[22]));
   DLH_X1 \accumulator_A_reg[21]  (.D(n_117), .G(n_95), .Q(accumulator_A[21]));
   DLH_X1 \accumulator_A_reg[20]  (.D(n_116), .G(n_95), .Q(accumulator_A[20]));
   DLH_X1 \accumulator_A_reg[19]  (.D(n_115), .G(n_95), .Q(accumulator_A[19]));
   DLH_X1 \accumulator_A_reg[18]  (.D(n_114), .G(n_95), .Q(accumulator_A[18]));
   DLH_X1 \accumulator_A_reg[17]  (.D(n_113), .G(n_95), .Q(accumulator_A[17]));
   DLH_X1 \accumulator_A_reg[16]  (.D(n_112), .G(n_95), .Q(accumulator_A[16]));
   DLH_X1 \accumulator_A_reg[15]  (.D(n_111), .G(n_95), .Q(Res[47]));
   DLH_X1 \accumulator_A_reg[14]  (.D(n_110), .G(n_95), .Q(Res[46]));
   DLH_X1 \accumulator_A_reg[13]  (.D(n_109), .G(n_95), .Q(Res[45]));
   DLH_X1 \accumulator_A_reg[12]  (.D(n_108), .G(n_95), .Q(Res[44]));
   DLH_X1 \accumulator_A_reg[11]  (.D(n_107), .G(n_95), .Q(Res[43]));
   DLH_X1 \accumulator_A_reg[10]  (.D(n_106), .G(n_95), .Q(Res[42]));
   DLH_X1 \accumulator_A_reg[9]  (.D(n_105), .G(n_95), .Q(Res[41]));
   DLH_X1 \accumulator_A_reg[8]  (.D(n_104), .G(n_95), .Q(Res[40]));
   DLH_X1 \accumulator_A_reg[7]  (.D(n_103), .G(n_95), .Q(Res[39]));
   DLH_X1 \accumulator_A_reg[6]  (.D(n_102), .G(n_95), .Q(Res[38]));
   DLH_X1 \accumulator_A_reg[5]  (.D(n_101), .G(n_95), .Q(Res[37]));
   DLH_X1 \accumulator_A_reg[4]  (.D(n_100), .G(n_95), .Q(Res[36]));
   DLH_X1 \accumulator_A_reg[3]  (.D(n_99), .G(n_95), .Q(Res[35]));
   DLH_X1 \accumulator_A_reg[2]  (.D(n_98), .G(n_95), .Q(Res[34]));
   DLH_X1 \accumulator_A_reg[1]  (.D(n_97), .G(n_95), .Q(Res[33]));
   DLH_X1 \accumulator_A_reg[0]  (.D(n_96), .G(n_95), .Q(Res[32]));
   DLH_X1 \multiplicand_Q_reg[32]  (.D(n_158), .G(n_95), .Q(Res[31]));
   DLH_X1 \multiplicand_Q_reg[31]  (.D(n_157), .G(n_95), .Q(Res[30]));
   DLH_X1 \multiplicand_Q_reg[30]  (.D(n_156), .G(n_95), .Q(Res[29]));
   DLH_X1 \multiplicand_Q_reg[29]  (.D(n_155), .G(n_95), .Q(Res[28]));
   DLH_X1 \multiplicand_Q_reg[28]  (.D(n_154), .G(n_95), .Q(Res[27]));
   DLH_X1 \multiplicand_Q_reg[27]  (.D(n_153), .G(n_95), .Q(Res[26]));
   DLH_X1 \multiplicand_Q_reg[26]  (.D(n_152), .G(n_95), .Q(Res[25]));
   DLH_X1 \multiplicand_Q_reg[25]  (.D(n_151), .G(n_95), .Q(Res[24]));
   DLH_X1 \multiplicand_Q_reg[24]  (.D(n_150), .G(n_95), .Q(Res[23]));
   DLH_X1 \multiplicand_Q_reg[23]  (.D(n_149), .G(n_95), .Q(n_64));
   DLH_X1 \multiplicand_Q_reg[22]  (.D(n_148), .G(n_95), .Q(n_65));
   DLH_X1 \multiplicand_Q_reg[21]  (.D(n_147), .G(n_95), .Q(n_66));
   DLH_X1 \multiplicand_Q_reg[20]  (.D(n_146), .G(n_95), .Q(n_67));
   DLH_X1 \multiplicand_Q_reg[19]  (.D(n_145), .G(n_95), .Q(n_68));
   DLH_X1 \multiplicand_Q_reg[18]  (.D(n_144), .G(n_95), .Q(n_69));
   DLH_X1 \multiplicand_Q_reg[17]  (.D(n_143), .G(n_95), .Q(n_70));
   DLH_X1 \multiplicand_Q_reg[16]  (.D(n_142), .G(n_95), .Q(n_71));
   DLH_X1 \multiplicand_Q_reg[15]  (.D(n_141), .G(n_95), .Q(n_72));
   DLH_X1 \multiplicand_Q_reg[14]  (.D(n_140), .G(n_95), .Q(n_73));
   DLH_X1 \multiplicand_Q_reg[13]  (.D(n_139), .G(n_95), .Q(n_74));
   DLH_X1 \multiplicand_Q_reg[12]  (.D(n_138), .G(n_95), .Q(n_75));
   DLH_X1 \multiplicand_Q_reg[11]  (.D(n_137), .G(n_95), .Q(n_76));
   DLH_X1 \multiplicand_Q_reg[10]  (.D(n_136), .G(n_95), .Q(n_77));
   DLH_X1 \multiplicand_Q_reg[9]  (.D(n_135), .G(n_95), .Q(n_78));
   DLH_X1 \multiplicand_Q_reg[8]  (.D(n_134), .G(n_95), .Q(n_79));
   DLH_X1 \multiplicand_Q_reg[7]  (.D(n_133), .G(n_95), .Q(n_80));
   DLH_X1 \multiplicand_Q_reg[6]  (.D(n_132), .G(n_95), .Q(n_81));
   DLH_X1 \multiplicand_Q_reg[5]  (.D(n_131), .G(n_95), .Q(n_82));
   DLH_X1 \multiplicand_Q_reg[4]  (.D(n_130), .G(n_95), .Q(n_83));
   DLH_X1 \multiplicand_Q_reg[3]  (.D(n_129), .G(n_95), .Q(n_84));
   DLH_X1 \multiplicand_Q_reg[2]  (.D(n_128), .G(n_95), .Q(n_85));
   DLH_X1 \multiplicand_Q_reg[1]  (.D(n_127), .G(n_95), .Q(n_86));
   DLH_X1 \multiplicand_Q_reg[0]  (.D(n_159), .G(n_95), .Q(n_87));
   DLH_X1 \multiplier_M_reg[23]  (.D(n_184), .G(n_183), .Q(multiplier_M[23]));
   DLH_X1 \multiplier_M_reg[22]  (.D(n_182), .G(n_183), .Q(multiplier_M[22]));
   DLH_X1 \multiplier_M_reg[21]  (.D(n_181), .G(n_183), .Q(multiplier_M[21]));
   DLH_X1 \multiplier_M_reg[20]  (.D(n_180), .G(n_183), .Q(multiplier_M[20]));
   DLH_X1 \multiplier_M_reg[19]  (.D(n_179), .G(n_183), .Q(multiplier_M[19]));
   DLH_X1 \multiplier_M_reg[18]  (.D(n_178), .G(n_183), .Q(multiplier_M[18]));
   DLH_X1 \multiplier_M_reg[17]  (.D(n_177), .G(n_183), .Q(multiplier_M[17]));
   DLH_X1 \multiplier_M_reg[16]  (.D(n_176), .G(n_183), .Q(multiplier_M[16]));
   DLH_X1 \multiplier_M_reg[15]  (.D(n_175), .G(n_183), .Q(multiplier_M[15]));
   DLH_X1 \multiplier_M_reg[14]  (.D(n_174), .G(n_183), .Q(multiplier_M[14]));
   DLH_X1 \multiplier_M_reg[13]  (.D(n_173), .G(n_183), .Q(multiplier_M[13]));
   DLH_X1 \multiplier_M_reg[12]  (.D(n_172), .G(n_183), .Q(multiplier_M[12]));
   DLH_X1 \multiplier_M_reg[11]  (.D(n_171), .G(n_183), .Q(multiplier_M[11]));
   DLH_X1 \multiplier_M_reg[10]  (.D(n_170), .G(n_183), .Q(multiplier_M[10]));
   DLH_X1 \multiplier_M_reg[9]  (.D(n_169), .G(n_183), .Q(multiplier_M[9]));
   DLH_X1 \multiplier_M_reg[8]  (.D(n_168), .G(n_183), .Q(multiplier_M[8]));
   DLH_X1 \multiplier_M_reg[7]  (.D(n_167), .G(n_183), .Q(multiplier_M[7]));
   DLH_X1 \multiplier_M_reg[6]  (.D(n_166), .G(n_183), .Q(multiplier_M[6]));
   DLH_X1 \multiplier_M_reg[5]  (.D(n_165), .G(n_183), .Q(multiplier_M[5]));
   DLH_X1 \multiplier_M_reg[4]  (.D(n_164), .G(n_183), .Q(multiplier_M[4]));
   DLH_X1 \multiplier_M_reg[3]  (.D(n_163), .G(n_183), .Q(multiplier_M[3]));
   DLH_X1 \multiplier_M_reg[2]  (.D(n_162), .G(n_183), .Q(multiplier_M[2]));
   DLH_X1 \multiplier_M_reg[1]  (.D(n_161), .G(n_183), .Q(multiplier_M[1]));
   DLH_X1 \multiplier_M_reg[0]  (.D(n_160), .G(n_183), .Q(multiplier_M[0]));
   DLH_X1 ready_reg (.D(n_88), .G(n_89), .Q(ready));
   DLH_X1 \counter_reg[4]  (.D(n_94), .G(n_95), .Q(counter[4]));
   DLH_X1 \counter_reg[3]  (.D(n_93), .G(n_95), .Q(counter[3]));
   DLH_X1 \counter_reg[2]  (.D(n_92), .G(n_95), .Q(counter[2]));
   DLH_X1 \counter_reg[1]  (.D(n_91), .G(n_95), .Q(counter[1]));
   DLH_X1 \counter_reg[0]  (.D(n_90), .G(n_95), .Q(counter[0]));
   OAI211_X1 i_0_0 (.A(n_184), .B(clk), .C1(ready), .C2(enable), .ZN(n_88));
   OAI21_X1 i_0_1 (.A(n_0_69), .B1(n_0_0), .B2(counter[4]), .ZN(n_89));
   NAND3_X1 i_0_2 (.A1(counter[0]), .A2(n_0_8), .A3(n_0_1), .ZN(n_0_0));
   NOR3_X1 i_0_3 (.A1(counter[3]), .A2(counter[2]), .A3(counter[1]), .ZN(n_0_1));
   NOR2_X1 i_0_4 (.A1(n_183), .A2(counter[0]), .ZN(n_90));
   NOR2_X1 i_0_5 (.A1(n_0_2), .A2(n_183), .ZN(n_91));
   XOR2_X1 i_0_6 (.A(counter[1]), .B(counter[0]), .Z(n_0_2));
   AOI21_X1 i_0_7 (.A(n_183), .B1(n_0_7), .B2(n_0_3), .ZN(n_92));
   OAI21_X1 i_0_8 (.A(counter[2]), .B1(counter[1]), .B2(counter[0]), .ZN(n_0_3));
   AOI21_X1 i_0_9 (.A(n_183), .B1(n_0_6), .B2(n_0_4), .ZN(n_93));
   NAND2_X1 i_0_10 (.A1(n_0_7), .A2(counter[3]), .ZN(n_0_4));
   NOR2_X1 i_0_11 (.A1(n_0_5), .A2(n_183), .ZN(n_94));
   XOR2_X1 i_0_12 (.A(counter[4]), .B(n_0_6), .Z(n_0_5));
   OR2_X1 i_0_13 (.A1(n_0_7), .A2(counter[3]), .ZN(n_0_6));
   OR3_X1 i_0_14 (.A1(counter[2]), .A2(counter[1]), .A3(counter[0]), .ZN(n_0_7));
   OR2_X1 i_0_15 (.A1(n_183), .A2(n_0_8), .ZN(n_95));
   AOI21_X1 i_0_16 (.A(ready), .B1(clk), .B2(enable), .ZN(n_0_8));
   INV_X1 i_0_17 (.A(n_0_9), .ZN(n_96));
   AOI222_X1 i_0_18 (.A1(n_1), .A2(n_0_68), .B1(n_0_67), .B2(n_33), .C1(n_0_65), 
      .C2(Res[33]), .ZN(n_0_9));
   INV_X1 i_0_19 (.A(n_0_10), .ZN(n_97));
   AOI222_X1 i_0_20 (.A1(n_2), .A2(n_0_68), .B1(n_0_67), .B2(n_34), .C1(n_0_65), 
      .C2(Res[34]), .ZN(n_0_10));
   INV_X1 i_0_21 (.A(n_0_11), .ZN(n_98));
   AOI222_X1 i_0_22 (.A1(n_3), .A2(n_0_68), .B1(n_0_67), .B2(n_35), .C1(n_0_65), 
      .C2(Res[35]), .ZN(n_0_11));
   INV_X1 i_0_23 (.A(n_0_12), .ZN(n_99));
   AOI222_X1 i_0_24 (.A1(n_4), .A2(n_0_68), .B1(n_0_67), .B2(n_36), .C1(n_0_65), 
      .C2(Res[36]), .ZN(n_0_12));
   INV_X1 i_0_25 (.A(n_0_13), .ZN(n_100));
   AOI222_X1 i_0_26 (.A1(n_5), .A2(n_0_68), .B1(n_0_67), .B2(n_37), .C1(n_0_65), 
      .C2(Res[37]), .ZN(n_0_13));
   INV_X1 i_0_27 (.A(n_0_14), .ZN(n_101));
   AOI222_X1 i_0_28 (.A1(n_6), .A2(n_0_68), .B1(n_0_67), .B2(n_38), .C1(n_0_65), 
      .C2(Res[38]), .ZN(n_0_14));
   INV_X1 i_0_29 (.A(n_0_15), .ZN(n_102));
   AOI222_X1 i_0_30 (.A1(n_7), .A2(n_0_68), .B1(n_0_67), .B2(n_39), .C1(n_0_65), 
      .C2(Res[39]), .ZN(n_0_15));
   INV_X1 i_0_31 (.A(n_0_16), .ZN(n_103));
   AOI222_X1 i_0_32 (.A1(n_8), .A2(n_0_68), .B1(n_0_67), .B2(n_40), .C1(n_0_65), 
      .C2(Res[40]), .ZN(n_0_16));
   INV_X1 i_0_33 (.A(n_0_17), .ZN(n_104));
   AOI222_X1 i_0_34 (.A1(n_9), .A2(n_0_68), .B1(n_0_67), .B2(n_41), .C1(n_0_65), 
      .C2(Res[41]), .ZN(n_0_17));
   INV_X1 i_0_35 (.A(n_0_18), .ZN(n_105));
   AOI222_X1 i_0_36 (.A1(n_10), .A2(n_0_68), .B1(n_0_67), .B2(n_42), .C1(n_0_65), 
      .C2(Res[42]), .ZN(n_0_18));
   INV_X1 i_0_37 (.A(n_0_19), .ZN(n_106));
   AOI222_X1 i_0_38 (.A1(n_11), .A2(n_0_68), .B1(n_0_67), .B2(n_43), .C1(n_0_65), 
      .C2(Res[43]), .ZN(n_0_19));
   INV_X1 i_0_39 (.A(n_0_20), .ZN(n_107));
   AOI222_X1 i_0_40 (.A1(n_12), .A2(n_0_68), .B1(n_0_67), .B2(n_44), .C1(n_0_65), 
      .C2(Res[44]), .ZN(n_0_20));
   INV_X1 i_0_41 (.A(n_0_21), .ZN(n_108));
   AOI222_X1 i_0_42 (.A1(n_13), .A2(n_0_68), .B1(n_0_67), .B2(n_45), .C1(n_0_65), 
      .C2(Res[45]), .ZN(n_0_21));
   INV_X1 i_0_43 (.A(n_0_22), .ZN(n_109));
   AOI222_X1 i_0_44 (.A1(n_14), .A2(n_0_68), .B1(n_0_67), .B2(n_46), .C1(n_0_65), 
      .C2(Res[46]), .ZN(n_0_22));
   INV_X1 i_0_45 (.A(n_0_23), .ZN(n_110));
   AOI222_X1 i_0_46 (.A1(n_15), .A2(n_0_68), .B1(n_0_67), .B2(n_47), .C1(n_0_65), 
      .C2(Res[47]), .ZN(n_0_23));
   INV_X1 i_0_47 (.A(n_0_24), .ZN(n_111));
   AOI222_X1 i_0_48 (.A1(n_16), .A2(n_0_68), .B1(n_0_67), .B2(n_48), .C1(n_0_65), 
      .C2(accumulator_A[16]), .ZN(n_0_24));
   INV_X1 i_0_49 (.A(n_0_25), .ZN(n_112));
   AOI222_X1 i_0_50 (.A1(n_17), .A2(n_0_68), .B1(n_0_67), .B2(n_49), .C1(n_0_65), 
      .C2(accumulator_A[17]), .ZN(n_0_25));
   INV_X1 i_0_51 (.A(n_0_26), .ZN(n_113));
   AOI222_X1 i_0_52 (.A1(n_18), .A2(n_0_68), .B1(n_0_67), .B2(n_50), .C1(n_0_65), 
      .C2(accumulator_A[18]), .ZN(n_0_26));
   INV_X1 i_0_53 (.A(n_0_27), .ZN(n_114));
   AOI222_X1 i_0_54 (.A1(n_19), .A2(n_0_68), .B1(n_0_67), .B2(n_51), .C1(n_0_65), 
      .C2(accumulator_A[19]), .ZN(n_0_27));
   INV_X1 i_0_55 (.A(n_0_28), .ZN(n_115));
   AOI222_X1 i_0_56 (.A1(n_20), .A2(n_0_68), .B1(n_0_67), .B2(n_52), .C1(n_0_65), 
      .C2(accumulator_A[20]), .ZN(n_0_28));
   INV_X1 i_0_57 (.A(n_0_29), .ZN(n_116));
   AOI222_X1 i_0_58 (.A1(n_21), .A2(n_0_68), .B1(n_0_67), .B2(n_53), .C1(n_0_65), 
      .C2(accumulator_A[21]), .ZN(n_0_29));
   INV_X1 i_0_59 (.A(n_0_30), .ZN(n_117));
   AOI222_X1 i_0_60 (.A1(n_22), .A2(n_0_68), .B1(n_0_67), .B2(n_54), .C1(n_0_65), 
      .C2(accumulator_A[22]), .ZN(n_0_30));
   INV_X1 i_0_61 (.A(n_0_31), .ZN(n_118));
   AOI222_X1 i_0_62 (.A1(n_23), .A2(n_0_68), .B1(n_0_67), .B2(n_55), .C1(n_0_65), 
      .C2(accumulator_A[23]), .ZN(n_0_31));
   INV_X1 i_0_63 (.A(n_0_32), .ZN(n_119));
   AOI222_X1 i_0_64 (.A1(n_24), .A2(n_0_68), .B1(n_0_67), .B2(n_56), .C1(n_0_65), 
      .C2(accumulator_A[24]), .ZN(n_0_32));
   INV_X1 i_0_65 (.A(n_0_33), .ZN(n_120));
   AOI222_X1 i_0_66 (.A1(n_25), .A2(n_0_68), .B1(n_0_67), .B2(n_57), .C1(n_0_65), 
      .C2(accumulator_A[25]), .ZN(n_0_33));
   INV_X1 i_0_67 (.A(n_0_34), .ZN(n_121));
   AOI222_X1 i_0_68 (.A1(n_26), .A2(n_0_68), .B1(n_0_67), .B2(n_58), .C1(n_0_65), 
      .C2(accumulator_A[26]), .ZN(n_0_34));
   INV_X1 i_0_69 (.A(n_0_35), .ZN(n_122));
   AOI222_X1 i_0_70 (.A1(n_27), .A2(n_0_68), .B1(n_0_67), .B2(n_59), .C1(n_0_65), 
      .C2(accumulator_A[27]), .ZN(n_0_35));
   INV_X1 i_0_71 (.A(n_0_36), .ZN(n_123));
   AOI222_X1 i_0_72 (.A1(n_28), .A2(n_0_68), .B1(n_0_67), .B2(n_60), .C1(n_0_65), 
      .C2(accumulator_A[28]), .ZN(n_0_36));
   INV_X1 i_0_73 (.A(n_0_37), .ZN(n_124));
   AOI222_X1 i_0_74 (.A1(n_29), .A2(n_0_68), .B1(n_0_67), .B2(n_61), .C1(n_0_65), 
      .C2(accumulator_A[29]), .ZN(n_0_37));
   INV_X1 i_0_75 (.A(n_0_38), .ZN(n_125));
   AOI222_X1 i_0_76 (.A1(n_30), .A2(n_0_68), .B1(n_0_67), .B2(n_62), .C1(n_0_65), 
      .C2(accumulator_A[30]), .ZN(n_0_38));
   INV_X1 i_0_77 (.A(n_0_39), .ZN(n_126));
   AOI222_X1 i_0_78 (.A1(n_31), .A2(n_0_68), .B1(n_0_67), .B2(n_63), .C1(n_0_65), 
      .C2(accumulator_A[30]), .ZN(n_0_39));
   INV_X1 i_0_79 (.A(n_0_40), .ZN(n_127));
   AOI22_X1 i_0_80 (.A1(n_85), .A2(n_0_69), .B1(n_0_63), .B2(B[0]), .ZN(n_0_40));
   INV_X1 i_0_81 (.A(n_0_41), .ZN(n_128));
   AOI22_X1 i_0_82 (.A1(n_84), .A2(n_0_69), .B1(n_0_63), .B2(B[1]), .ZN(n_0_41));
   INV_X1 i_0_83 (.A(n_0_42), .ZN(n_129));
   AOI22_X1 i_0_84 (.A1(n_83), .A2(n_0_69), .B1(n_0_63), .B2(B[2]), .ZN(n_0_42));
   INV_X1 i_0_85 (.A(n_0_43), .ZN(n_130));
   AOI22_X1 i_0_86 (.A1(n_82), .A2(n_0_69), .B1(n_0_63), .B2(B[3]), .ZN(n_0_43));
   INV_X1 i_0_87 (.A(n_0_44), .ZN(n_131));
   AOI22_X1 i_0_88 (.A1(n_81), .A2(n_0_69), .B1(n_0_63), .B2(B[4]), .ZN(n_0_44));
   INV_X1 i_0_89 (.A(n_0_45), .ZN(n_132));
   AOI22_X1 i_0_90 (.A1(n_80), .A2(n_0_69), .B1(n_0_63), .B2(B[5]), .ZN(n_0_45));
   INV_X1 i_0_91 (.A(n_0_46), .ZN(n_133));
   AOI22_X1 i_0_92 (.A1(n_79), .A2(n_0_69), .B1(n_0_63), .B2(B[6]), .ZN(n_0_46));
   INV_X1 i_0_93 (.A(n_0_47), .ZN(n_134));
   AOI22_X1 i_0_94 (.A1(n_78), .A2(n_0_69), .B1(n_0_63), .B2(B[7]), .ZN(n_0_47));
   INV_X1 i_0_95 (.A(n_0_48), .ZN(n_135));
   AOI22_X1 i_0_96 (.A1(n_77), .A2(n_0_69), .B1(n_0_63), .B2(B[8]), .ZN(n_0_48));
   INV_X1 i_0_97 (.A(n_0_49), .ZN(n_136));
   AOI22_X1 i_0_98 (.A1(n_76), .A2(n_0_69), .B1(n_0_63), .B2(B[9]), .ZN(n_0_49));
   INV_X1 i_0_99 (.A(n_0_50), .ZN(n_137));
   AOI22_X1 i_0_100 (.A1(n_75), .A2(n_0_69), .B1(n_0_63), .B2(B[10]), .ZN(n_0_50));
   INV_X1 i_0_101 (.A(n_0_51), .ZN(n_138));
   AOI22_X1 i_0_102 (.A1(n_74), .A2(n_0_69), .B1(n_0_63), .B2(B[11]), .ZN(n_0_51));
   INV_X1 i_0_103 (.A(n_0_52), .ZN(n_139));
   AOI22_X1 i_0_104 (.A1(n_73), .A2(n_0_69), .B1(n_0_63), .B2(B[12]), .ZN(n_0_52));
   INV_X1 i_0_105 (.A(n_0_53), .ZN(n_140));
   AOI22_X1 i_0_106 (.A1(n_72), .A2(n_0_69), .B1(n_0_63), .B2(B[13]), .ZN(n_0_53));
   INV_X1 i_0_107 (.A(n_0_54), .ZN(n_141));
   AOI22_X1 i_0_108 (.A1(n_71), .A2(n_0_69), .B1(n_0_63), .B2(B[14]), .ZN(n_0_54));
   INV_X1 i_0_109 (.A(n_0_55), .ZN(n_142));
   AOI22_X1 i_0_110 (.A1(n_70), .A2(n_0_69), .B1(n_0_63), .B2(B[15]), .ZN(n_0_55));
   INV_X1 i_0_111 (.A(n_0_56), .ZN(n_143));
   AOI22_X1 i_0_112 (.A1(n_69), .A2(n_0_69), .B1(n_0_63), .B2(B[16]), .ZN(n_0_56));
   INV_X1 i_0_113 (.A(n_0_57), .ZN(n_144));
   AOI22_X1 i_0_114 (.A1(n_68), .A2(n_0_69), .B1(n_0_63), .B2(B[17]), .ZN(n_0_57));
   INV_X1 i_0_115 (.A(n_0_58), .ZN(n_145));
   AOI22_X1 i_0_116 (.A1(n_67), .A2(n_0_69), .B1(n_0_63), .B2(B[18]), .ZN(n_0_58));
   INV_X1 i_0_117 (.A(n_0_59), .ZN(n_146));
   AOI22_X1 i_0_118 (.A1(n_66), .A2(n_0_69), .B1(n_0_63), .B2(B[19]), .ZN(n_0_59));
   INV_X1 i_0_119 (.A(n_0_60), .ZN(n_147));
   AOI22_X1 i_0_120 (.A1(n_65), .A2(n_0_69), .B1(n_0_63), .B2(B[20]), .ZN(n_0_60));
   INV_X1 i_0_121 (.A(n_0_61), .ZN(n_148));
   AOI22_X1 i_0_122 (.A1(n_64), .A2(n_0_69), .B1(n_0_63), .B2(B[21]), .ZN(n_0_61));
   INV_X1 i_0_123 (.A(n_0_62), .ZN(n_149));
   AOI22_X1 i_0_124 (.A1(Res[23]), .A2(n_0_69), .B1(n_0_63), .B2(B[22]), 
      .ZN(n_0_62));
   AOI21_X1 i_0_125 (.A(reset), .B1(n_0_70), .B2(n_0_72), .ZN(n_150));
   NOR2_X1 i_0_126 (.A1(n_0_70), .A2(reset), .ZN(n_0_63));
   AND2_X1 i_0_127 (.A1(Res[25]), .A2(n_0_69), .ZN(n_151));
   AND2_X1 i_0_128 (.A1(Res[26]), .A2(n_0_69), .ZN(n_152));
   AND2_X1 i_0_129 (.A1(Res[27]), .A2(n_0_69), .ZN(n_153));
   AND2_X1 i_0_130 (.A1(Res[28]), .A2(n_0_69), .ZN(n_154));
   AND2_X1 i_0_131 (.A1(Res[29]), .A2(n_0_69), .ZN(n_155));
   AND2_X1 i_0_132 (.A1(Res[30]), .A2(n_0_69), .ZN(n_156));
   AND2_X1 i_0_133 (.A1(Res[31]), .A2(n_0_69), .ZN(n_157));
   INV_X1 i_0_134 (.A(n_0_64), .ZN(n_158));
   AOI222_X1 i_0_135 (.A1(n_0), .A2(n_0_68), .B1(n_0_67), .B2(n_32), .C1(n_0_65), 
      .C2(Res[32]), .ZN(n_0_64));
   NOR2_X1 i_0_136 (.A1(n_183), .A2(n_0_66), .ZN(n_0_65));
   XNOR2_X1 i_0_137 (.A(n_86), .B(n_0_71), .ZN(n_0_66));
   AND2_X1 i_0_138 (.A1(n_159), .A2(n_0_71), .ZN(n_0_67));
   AND2_X1 i_0_139 (.A1(n_86), .A2(n_0_69), .ZN(n_159));
   NOR3_X1 i_0_140 (.A1(n_183), .A2(n_86), .A3(n_0_71), .ZN(n_0_68));
   AND2_X1 i_0_141 (.A1(n_184), .A2(A[0]), .ZN(n_160));
   AND2_X1 i_0_142 (.A1(n_184), .A2(A[1]), .ZN(n_161));
   AND2_X1 i_0_143 (.A1(n_184), .A2(A[2]), .ZN(n_162));
   AND2_X1 i_0_144 (.A1(n_184), .A2(A[3]), .ZN(n_163));
   AND2_X1 i_0_145 (.A1(n_184), .A2(A[4]), .ZN(n_164));
   AND2_X1 i_0_146 (.A1(n_184), .A2(A[5]), .ZN(n_165));
   AND2_X1 i_0_147 (.A1(n_184), .A2(A[6]), .ZN(n_166));
   AND2_X1 i_0_148 (.A1(n_184), .A2(A[7]), .ZN(n_167));
   AND2_X1 i_0_149 (.A1(n_184), .A2(A[8]), .ZN(n_168));
   AND2_X1 i_0_150 (.A1(n_184), .A2(A[9]), .ZN(n_169));
   AND2_X1 i_0_151 (.A1(n_184), .A2(A[10]), .ZN(n_170));
   AND2_X1 i_0_152 (.A1(n_184), .A2(A[11]), .ZN(n_171));
   AND2_X1 i_0_153 (.A1(n_184), .A2(A[12]), .ZN(n_172));
   AND2_X1 i_0_154 (.A1(n_184), .A2(A[13]), .ZN(n_173));
   AND2_X1 i_0_155 (.A1(n_184), .A2(A[14]), .ZN(n_174));
   AND2_X1 i_0_156 (.A1(n_184), .A2(A[15]), .ZN(n_175));
   AND2_X1 i_0_157 (.A1(n_184), .A2(A[16]), .ZN(n_176));
   AND2_X1 i_0_158 (.A1(n_184), .A2(A[17]), .ZN(n_177));
   AND2_X1 i_0_159 (.A1(n_184), .A2(A[18]), .ZN(n_178));
   AND2_X1 i_0_160 (.A1(n_184), .A2(A[19]), .ZN(n_179));
   AND2_X1 i_0_161 (.A1(n_184), .A2(A[20]), .ZN(n_180));
   AND2_X1 i_0_162 (.A1(n_184), .A2(A[21]), .ZN(n_181));
   AND2_X1 i_0_163 (.A1(n_184), .A2(A[22]), .ZN(n_182));
   INV_X1 i_0_164 (.A(n_0_69), .ZN(n_183));
   AND2_X1 i_0_165 (.A1(n_184), .A2(n_0_70), .ZN(n_0_69));
   NAND3_X1 i_0_166 (.A1(enable), .A2(clk), .A3(ready), .ZN(n_0_70));
   INV_X1 i_0_167 (.A(reset), .ZN(n_184));
   INV_X1 i_0_168 (.A(n_87), .ZN(n_0_71));
   INV_X1 i_0_169 (.A(Res[24]), .ZN(n_0_72));
endmodule

module datapath__0_22(M_multiplied, p_0, M_resultTruncated);
   input M_multiplied;
   input [22:0]p_0;
   output [22:0]M_resultTruncated;

   INV_X1 i_0 (.A(n_0), .ZN(M_resultTruncated[0]));
   OAI21_X1 i_1 (.A(n_50), .B1(M_multiplied), .B2(p_0[0]), .ZN(n_0));
   INV_X1 i_2 (.A(n_1), .ZN(M_resultTruncated[1]));
   OAI21_X1 i_3 (.A(n_49), .B1(p_0[1]), .B2(n_24), .ZN(n_1));
   INV_X1 i_4 (.A(n_2), .ZN(M_resultTruncated[2]));
   OAI21_X1 i_5 (.A(n_47), .B1(p_0[2]), .B2(n_48), .ZN(n_2));
   INV_X1 i_6 (.A(n_3), .ZN(M_resultTruncated[3]));
   OAI21_X1 i_7 (.A(n_45), .B1(p_0[3]), .B2(n_46), .ZN(n_3));
   INV_X1 i_8 (.A(n_4), .ZN(M_resultTruncated[4]));
   OAI21_X1 i_9 (.A(n_9), .B1(p_0[4]), .B2(n_43), .ZN(n_4));
   INV_X1 i_10 (.A(n_5), .ZN(M_resultTruncated[5]));
   OAI21_X1 i_11 (.A(n_7), .B1(p_0[5]), .B2(n_8), .ZN(n_5));
   AOI21_X1 i_12 (.A(n_6), .B1(n_51), .B2(n_7), .ZN(M_resultTruncated[6]));
   XNOR2_X1 i_13 (.A(n_53), .B(n_6), .ZN(M_resultTruncated[7]));
   NOR2_X1 i_14 (.A1(n_45), .A2(n_52), .ZN(n_6));
   NAND2_X1 i_15 (.A1(p_0[5]), .A2(n_8), .ZN(n_7));
   INV_X1 i_16 (.A(n_9), .ZN(n_8));
   NAND2_X1 i_17 (.A1(p_0[4]), .A2(n_43), .ZN(n_9));
   INV_X1 i_18 (.A(n_10), .ZN(M_resultTruncated[8]));
   OAI21_X1 i_19 (.A(n_17), .B1(p_0[8]), .B2(n_44), .ZN(n_10));
   INV_X1 i_20 (.A(n_11), .ZN(M_resultTruncated[9]));
   OAI21_X1 i_21 (.A(n_15), .B1(p_0[9]), .B2(n_16), .ZN(n_11));
   INV_X1 i_22 (.A(n_12), .ZN(M_resultTruncated[10]));
   OAI21_X1 i_23 (.A(n_13), .B1(p_0[10]), .B2(n_14), .ZN(n_12));
   XNOR2_X1 i_24 (.A(p_0[11]), .B(n_13), .ZN(M_resultTruncated[11]));
   NAND2_X1 i_25 (.A1(p_0[10]), .A2(n_14), .ZN(n_13));
   INV_X1 i_26 (.A(n_15), .ZN(n_14));
   NAND2_X1 i_27 (.A1(p_0[9]), .A2(n_16), .ZN(n_15));
   INV_X1 i_28 (.A(n_17), .ZN(n_16));
   NAND2_X1 i_29 (.A1(p_0[8]), .A2(n_44), .ZN(n_17));
   INV_X1 i_30 (.A(n_18), .ZN(M_resultTruncated[12]));
   OAI21_X1 i_31 (.A(n_22), .B1(p_0[12]), .B2(n_38), .ZN(n_18));
   INV_X1 i_32 (.A(n_19), .ZN(M_resultTruncated[13]));
   OAI21_X1 i_33 (.A(n_20), .B1(p_0[13]), .B2(n_21), .ZN(n_19));
   XNOR2_X1 i_34 (.A(p_0[14]), .B(n_20), .ZN(M_resultTruncated[14]));
   NAND2_X1 i_35 (.A1(p_0[13]), .A2(n_21), .ZN(n_20));
   INV_X1 i_36 (.A(n_22), .ZN(n_21));
   NAND2_X1 i_37 (.A1(p_0[12]), .A2(n_38), .ZN(n_22));
   AOI21_X1 i_38 (.A(n_25), .B1(n_54), .B2(n_37), .ZN(M_resultTruncated[16]));
   XOR2_X1 i_39 (.A(p_0[17]), .B(n_25), .Z(M_resultTruncated[17]));
   NOR2_X1 i_40 (.A1(n_54), .A2(n_37), .ZN(n_25));
   XNOR2_X1 i_41 (.A(n_23), .B(n_26), .ZN(M_resultTruncated[18]));
   NOR3_X1 i_42 (.A1(n_55), .A2(n_54), .A3(n_37), .ZN(n_26));
   NOR2_X1 i_43 (.A1(n_29), .A2(n_27), .ZN(M_resultTruncated[19]));
   AOI21_X1 i_44 (.A(p_0[19]), .B1(n_36), .B2(n_34), .ZN(n_27));
   INV_X1 i_45 (.A(n_28), .ZN(M_resultTruncated[20]));
   OAI21_X1 i_46 (.A(n_30), .B1(p_0[20]), .B2(n_29), .ZN(n_28));
   NOR2_X1 i_47 (.A1(n_37), .A2(n_33), .ZN(n_29));
   XNOR2_X1 i_48 (.A(p_0[21]), .B(n_30), .ZN(M_resultTruncated[21]));
   NAND3_X1 i_49 (.A1(p_0[20]), .A2(n_32), .A3(n_36), .ZN(n_30));
   XNOR2_X1 i_50 (.A(p_0[22]), .B(n_31), .ZN(M_resultTruncated[22]));
   NAND4_X1 i_51 (.A1(p_0[20]), .A2(n_32), .A3(p_0[21]), .A4(n_36), .ZN(n_31));
   INV_X1 i_52 (.A(n_33), .ZN(n_32));
   NAND2_X1 i_53 (.A1(p_0[19]), .A2(n_34), .ZN(n_33));
   NOR3_X1 i_54 (.A1(n_23), .A2(n_55), .A3(n_54), .ZN(n_34));
   INV_X1 i_55 (.A(n_41), .ZN(n_38));
   INV_X1 i_56 (.A(n_45), .ZN(n_43));
   INV_X1 i_57 (.A(n_50), .ZN(n_24));
   NAND2_X1 i_58 (.A1(M_multiplied), .A2(p_0[0]), .ZN(n_50));
   INV_X1 i_59 (.A(p_0[6]), .ZN(n_51));
   INV_X1 i_60 (.A(p_0[16]), .ZN(n_54));
   INV_X1 i_61 (.A(p_0[17]), .ZN(n_55));
   INV_X1 i_62 (.A(p_0[18]), .ZN(n_23));
   INV_X1 i_63 (.A(n_35), .ZN(M_resultTruncated[15]));
   OAI21_X1 i_64 (.A(n_37), .B1(p_0[15]), .B2(n_39), .ZN(n_35));
   INV_X1 i_65 (.A(n_37), .ZN(n_36));
   NAND2_X1 i_66 (.A1(p_0[15]), .A2(n_39), .ZN(n_37));
   NOR2_X1 i_67 (.A1(n_41), .A2(n_40), .ZN(n_39));
   NAND3_X1 i_68 (.A1(p_0[14]), .A2(p_0[12]), .A3(p_0[13]), .ZN(n_40));
   NAND4_X1 i_69 (.A1(p_0[11]), .A2(n_42), .A3(p_0[8]), .A4(n_44), .ZN(n_41));
   AND2_X1 i_70 (.A1(p_0[10]), .A2(p_0[9]), .ZN(n_42));
   NOR3_X1 i_71 (.A1(n_53), .A2(n_52), .A3(n_45), .ZN(n_44));
   NAND2_X1 i_72 (.A1(p_0[3]), .A2(n_46), .ZN(n_45));
   INV_X1 i_73 (.A(n_47), .ZN(n_46));
   NAND2_X1 i_74 (.A1(p_0[2]), .A2(n_48), .ZN(n_47));
   INV_X1 i_75 (.A(n_49), .ZN(n_48));
   NAND2_X1 i_76 (.A1(p_0[1]), .A2(n_24), .ZN(n_49));
   NAND3_X1 i_77 (.A1(p_0[6]), .A2(p_0[4]), .A3(p_0[5]), .ZN(n_52));
   INV_X1 i_78 (.A(p_0[7]), .ZN(n_53));
endmodule

module FPU_boothAlgo(Res, A, B, clk, reset, enable);
   output [31:0]Res;
   input [31:0]A;
   input [31:0]B;
   input clk;
   input reset;
   input enable;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire [22:0]M_resultTruncated;
   wire [7:0]EA;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;
   wire n_0_46;
   wire n_0_47;
   wire [7:0]EB;
   wire n_0_48;
   wire n_0_49;
   wire n_0_50;
   wire n_0_51;
   wire n_0_52;
   wire n_0_53;
   wire n_0_54;
   wire n_0_55;
   wire n_0_56;
   wire n_0_57;
   wire n_0_58;
   wire n_0_59;
   wire n_0_60;
   wire n_0_61;
   wire n_0_62;
   wire n_0_63;
   wire n_0_64;
   wire n_0_65;
   wire n_0_66;
   wire n_0_67;
   wire n_0_68;
   wire n_0_69;
   wire n_0_70;
   wire A_reg;
   wire B_reg;
   wire n_0_1_2;
   wire n_0_1_3;
   wire n_0_1_4;
   wire n_0_1_5;
   wire n_0_1_6;
   wire n_0_1_7;
   wire n_0_1_8;
   wire n_0_1_9;
   wire n_0_1_10;
   wire n_0_1_11;
   wire n_0_1_12;
   wire n_0_1_13;
   wire n_0_1_14;
   wire n_0_1_15;
   wire n_0_1_22;
   wire n_0_1_16;
   wire n_0_1_23;
   wire n_0_1_17;
   wire n_0_1_24;
   wire n_0_1_18;
   wire n_0_1_25;
   wire n_0_1_19;
   wire n_0_1_26;
   wire n_0_1_20;
   wire n_0_1_27;
   wire n_0_1_21;
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_72;
   wire n_0_1_32;
   wire n_0_73;
   wire n_0_1_33;
   wire n_0_74;
   wire n_0_1_34;
   wire n_0_75;
   wire n_0_1_35;
   wire n_0_76;
   wire n_0_1_36;
   wire n_0_77;
   wire n_0_1_37;
   wire n_0_78;
   wire n_0_1_38;
   wire n_0_79;
   wire n_0_1_39;
   wire n_0_80;
   wire n_0_1_40;
   wire n_0_81;
   wire n_0_1_41;
   wire n_0_82;
   wire n_0_1_42;
   wire n_0_83;
   wire n_0_1_43;
   wire n_0_84;
   wire n_0_1_44;
   wire n_0_85;
   wire n_0_1_45;
   wire n_0_86;
   wire n_0_1_46;
   wire n_0_87;
   wire n_0_1_47;
   wire n_0_88;
   wire n_0_1_48;
   wire n_0_89;
   wire n_0_1_49;
   wire n_0_90;
   wire n_0_1_50;
   wire n_0_91;
   wire n_0_1_51;
   wire n_0_92;
   wire n_0_1_52;
   wire n_0_93;
   wire n_0_1_53;
   wire n_0_1_54;
   wire n_0_1_55;
   wire n_0_94;
   wire n_0_95;
   wire n_0_96;
   wire n_0_97;
   wire n_0_98;
   wire n_0_99;
   wire n_0_100;
   wire n_0_101;
   wire n_0_1_56;
   wire n_0_1_57;
   wire n_0_1_58;
   wire n_0_1_59;
   wire n_0_1_60;
   wire n_0_1_62;
   wire n_0_1_64;
   wire n_0_103;
   wire n_0_104;
   wire n_0_105;
   wire n_0_106;
   wire n_0_107;
   wire n_0_108;
   wire n_0_109;
   wire n_0_110;
   wire n_0_111;
   wire n_0_112;
   wire n_0_113;
   wire n_0_114;
   wire n_0_115;
   wire n_0_116;
   wire n_0_117;
   wire n_0_118;
   wire n_0_119;
   wire n_0_120;
   wire n_0_121;
   wire n_0_122;
   wire n_0_123;
   wire n_0_124;
   wire n_0_125;
   wire n_0_126;
   wire n_0_127;
   wire n_0_128;
   wire n_0_129;
   wire n_0_130;
   wire n_0_131;
   wire n_0_132;
   wire n_0_133;
   wire n_0_134;
   wire n_0_135;
   wire n_0_136;
   wire n_0_137;
   wire n_0_138;
   wire n_0_139;
   wire n_0_140;
   wire n_0_141;
   wire n_0_142;
   wire n_0_143;
   wire n_0_144;
   wire n_0_145;
   wire n_0_146;
   wire n_0_147;
   wire n_0_148;
   wire n_0_149;
   wire n_0_150;
   wire n_0_151;
   wire n_0_152;
   wire n_0_153;
   wire n_0_154;
   wire n_0_155;
   wire n_0_156;
   wire n_0_157;
   wire n_0_158;
   wire n_0_159;
   wire n_0_160;
   wire n_0_161;
   wire n_0_162;
   wire n_0_163;
   wire n_0_164;
   wire n_0_165;
   wire n_0_166;
   wire n_0_167;
   wire n_0_168;
   wire n_0_1_105;
   wire n_0_1_106;
   wire n_0_1_107;
   wire n_0_1_108;
   wire n_0_1_109;
   wire n_0_1_110;
   wire n_0_1_111;
   wire n_0_1_112;
   wire n_0_1_28;
   wire n_0_1_29;
   wire n_0_71;
   wire n_0_1_30;
   wire n_0_1_31;
   wire n_0_1_61;
   wire n_0_1_63;
   wire n_0_1_65;
   wire n_0_1_66;
   wire n_0_1_67;
   wire n_0_1_68;
   wire n_0_1_69;
   wire n_0_1_70;
   wire n_0_1_71;
   wire n_0_1_72;
   wire n_0_1_73;
   wire n_0_1_74;
   wire n_0_1_75;
   wire n_0_1_76;
   wire n_0_1_77;
   wire n_0_1_78;
   wire n_0_1_79;
   wire n_0_1_80;
   wire n_0_1_81;
   wire n_0_1_82;
   wire n_0_1_83;
   wire n_0_1_84;
   wire n_0_1_85;
   wire n_0_1_86;
   wire n_0_1_87;
   wire n_0_1_88;
   wire n_0_1_89;
   wire n_0_1_90;
   wire n_0_1_91;
   wire n_0_1_92;
   wire n_0_1_93;
   wire n_0_1_94;
   wire n_0_1_95;
   wire n_0_1_96;
   wire n_0_1_97;
   wire n_0_1_98;
   wire n_0_1_99;
   wire n_0_1_100;
   wire n_0_1_101;
   wire n_0_1_102;
   wire n_0_1_103;
   wire n_0_102;
   wire n_0_1_104;

   boothAlgo multiplier (.Res({uc_0, uc_1, uc_2, uc_3, uc_4, uc_5, uc_6, uc_7, 
      uc_8, uc_9, uc_10, uc_11, uc_12, uc_13, uc_14, uc_15, n_0_24, n_0_23, 
      n_0_22, n_0_21, n_0_20, n_0_19, n_0_18, n_0_17, n_0_16, n_0_15, n_0_14, 
      n_0_13, n_0_12, n_0_11, n_0_10, n_0_9, n_0_8, n_0_7, n_0_6, n_0_5, n_0_4, 
      n_0_3, n_0_2, n_0_1, n_0_0, uc_16, uc_17, uc_18, uc_19, uc_20, uc_21, 
      uc_22, uc_23, uc_24, uc_25, uc_26, uc_27, uc_28, uc_29, uc_30, uc_31, 
      uc_32, uc_33, uc_34, uc_35, uc_36, uc_37, uc_38}), .OVF(), .A({uc_39, 
      uc_40, uc_41, uc_42, uc_43, uc_44, uc_45, uc_46, uc_47, n_0_25, n_0_26, 
      n_0_27, n_0_28, n_0_29, n_0_30, n_0_31, n_0_32, n_0_33, n_0_34, n_0_35, 
      n_0_36, n_0_37, n_0_38, n_0_39, n_0_40, n_0_41, n_0_42, n_0_43, n_0_44, 
      n_0_45, n_0_46, n_0_47}), .B({uc_48, uc_49, uc_50, uc_51, uc_52, uc_53, 
      uc_54, uc_55, uc_56, n_0_48, n_0_49, n_0_50, n_0_51, n_0_52, n_0_53, 
      n_0_54, n_0_55, n_0_56, n_0_57, n_0_58, n_0_59, n_0_60, n_0_61, n_0_62, 
      n_0_63, n_0_64, n_0_65, n_0_66, n_0_67, n_0_68, n_0_69, n_0_70}), .clk(clk), 
      .reset(reset), .enable(enable));
   datapath__0_22 i_0_0 (.M_multiplied(n_0_0), .p_0({n_0_23, n_0_22, n_0_21, 
      n_0_20, n_0_19, n_0_18, n_0_17, n_0_16, n_0_15, n_0_14, n_0_13, n_0_12, 
      n_0_11, n_0_10, n_0_9, n_0_8, n_0_7, n_0_6, n_0_5, n_0_4, n_0_3, n_0_2, 
      n_0_1}), .M_resultTruncated(M_resultTruncated));
   DLH_X1 \Res_reg[31]  (.D(n_0_102), .G(n_0_168), .Q(Res[31]));
   DLH_X1 \Res_reg[30]  (.D(n_0_101), .G(n_0_168), .Q(Res[30]));
   DLH_X1 \Res_reg[29]  (.D(n_0_100), .G(n_0_168), .Q(Res[29]));
   DLH_X1 \Res_reg[28]  (.D(n_0_99), .G(n_0_168), .Q(Res[28]));
   DLH_X1 \Res_reg[27]  (.D(n_0_98), .G(n_0_168), .Q(Res[27]));
   DLH_X1 \Res_reg[26]  (.D(n_0_97), .G(n_0_168), .Q(Res[26]));
   DLH_X1 \Res_reg[25]  (.D(n_0_96), .G(n_0_168), .Q(Res[25]));
   DLH_X1 \Res_reg[24]  (.D(n_0_95), .G(n_0_168), .Q(Res[24]));
   DLH_X1 \Res_reg[23]  (.D(n_0_94), .G(n_0_168), .Q(Res[23]));
   DLH_X1 \Res_reg[22]  (.D(n_0_93), .G(n_0_168), .Q(Res[22]));
   DLH_X1 \Res_reg[21]  (.D(n_0_92), .G(n_0_168), .Q(Res[21]));
   DLH_X1 \Res_reg[20]  (.D(n_0_91), .G(n_0_168), .Q(Res[20]));
   DLH_X1 \Res_reg[19]  (.D(n_0_90), .G(n_0_168), .Q(Res[19]));
   DLH_X1 \Res_reg[18]  (.D(n_0_89), .G(n_0_168), .Q(Res[18]));
   DLH_X1 \Res_reg[17]  (.D(n_0_88), .G(n_0_168), .Q(Res[17]));
   DLH_X1 \Res_reg[16]  (.D(n_0_87), .G(n_0_168), .Q(Res[16]));
   DLH_X1 \Res_reg[15]  (.D(n_0_86), .G(n_0_168), .Q(Res[15]));
   DLH_X1 \Res_reg[14]  (.D(n_0_85), .G(n_0_168), .Q(Res[14]));
   DLH_X1 \Res_reg[13]  (.D(n_0_84), .G(n_0_168), .Q(Res[13]));
   DLH_X1 \Res_reg[12]  (.D(n_0_83), .G(n_0_168), .Q(Res[12]));
   DLH_X1 \Res_reg[11]  (.D(n_0_82), .G(n_0_168), .Q(Res[11]));
   DLH_X1 \Res_reg[10]  (.D(n_0_81), .G(n_0_168), .Q(Res[10]));
   DLH_X1 \Res_reg[9]  (.D(n_0_80), .G(n_0_168), .Q(Res[9]));
   DLH_X1 \Res_reg[8]  (.D(n_0_79), .G(n_0_168), .Q(Res[8]));
   DLH_X1 \Res_reg[7]  (.D(n_0_78), .G(n_0_168), .Q(Res[7]));
   DLH_X1 \Res_reg[6]  (.D(n_0_77), .G(n_0_168), .Q(Res[6]));
   DLH_X1 \Res_reg[5]  (.D(n_0_76), .G(n_0_168), .Q(Res[5]));
   DLH_X1 \Res_reg[4]  (.D(n_0_75), .G(n_0_168), .Q(Res[4]));
   DLH_X1 \Res_reg[3]  (.D(n_0_74), .G(n_0_168), .Q(Res[3]));
   DLH_X1 \Res_reg[2]  (.D(n_0_73), .G(n_0_168), .Q(Res[2]));
   DLH_X1 \Res_reg[1]  (.D(n_0_72), .G(n_0_168), .Q(Res[1]));
   DLH_X1 \Res_reg[0]  (.D(n_0_71), .G(n_0_168), .Q(Res[0]));
   DLH_X1 \A_reg_reg[30]  (.D(n_0_136), .G(n_0_104), .Q(EA[7]));
   DLH_X1 \A_reg_reg[29]  (.D(n_0_135), .G(n_0_104), .Q(EA[6]));
   DLH_X1 \A_reg_reg[28]  (.D(n_0_134), .G(n_0_104), .Q(EA[5]));
   DLH_X1 \A_reg_reg[27]  (.D(n_0_133), .G(n_0_104), .Q(EA[4]));
   DLH_X1 \A_reg_reg[26]  (.D(n_0_132), .G(n_0_104), .Q(EA[3]));
   DLH_X1 \A_reg_reg[25]  (.D(n_0_131), .G(n_0_104), .Q(EA[2]));
   DLH_X1 \A_reg_reg[24]  (.D(n_0_130), .G(n_0_104), .Q(EA[1]));
   DLH_X1 \A_reg_reg[23]  (.D(n_0_129), .G(n_0_104), .Q(EA[0]));
   DLH_X1 \A_reg_reg[22]  (.D(n_0_128), .G(n_0_104), .Q(n_0_25));
   DLH_X1 \A_reg_reg[21]  (.D(n_0_127), .G(n_0_104), .Q(n_0_26));
   DLH_X1 \A_reg_reg[20]  (.D(n_0_126), .G(n_0_104), .Q(n_0_27));
   DLH_X1 \A_reg_reg[19]  (.D(n_0_125), .G(n_0_104), .Q(n_0_28));
   DLH_X1 \A_reg_reg[18]  (.D(n_0_124), .G(n_0_104), .Q(n_0_29));
   DLH_X1 \A_reg_reg[17]  (.D(n_0_123), .G(n_0_104), .Q(n_0_30));
   DLH_X1 \A_reg_reg[16]  (.D(n_0_122), .G(n_0_104), .Q(n_0_31));
   DLH_X1 \A_reg_reg[15]  (.D(n_0_121), .G(n_0_104), .Q(n_0_32));
   DLH_X1 \A_reg_reg[14]  (.D(n_0_120), .G(n_0_104), .Q(n_0_33));
   DLH_X1 \A_reg_reg[13]  (.D(n_0_119), .G(n_0_104), .Q(n_0_34));
   DLH_X1 \A_reg_reg[12]  (.D(n_0_118), .G(n_0_104), .Q(n_0_35));
   DLH_X1 \A_reg_reg[11]  (.D(n_0_117), .G(n_0_104), .Q(n_0_36));
   DLH_X1 \A_reg_reg[10]  (.D(n_0_116), .G(n_0_104), .Q(n_0_37));
   DLH_X1 \A_reg_reg[9]  (.D(n_0_115), .G(n_0_104), .Q(n_0_38));
   DLH_X1 \A_reg_reg[8]  (.D(n_0_114), .G(n_0_104), .Q(n_0_39));
   DLH_X1 \A_reg_reg[7]  (.D(n_0_113), .G(n_0_104), .Q(n_0_40));
   DLH_X1 \A_reg_reg[6]  (.D(n_0_112), .G(n_0_104), .Q(n_0_41));
   DLH_X1 \A_reg_reg[5]  (.D(n_0_111), .G(n_0_104), .Q(n_0_42));
   DLH_X1 \A_reg_reg[4]  (.D(n_0_110), .G(n_0_104), .Q(n_0_43));
   DLH_X1 \A_reg_reg[3]  (.D(n_0_109), .G(n_0_104), .Q(n_0_44));
   DLH_X1 \A_reg_reg[2]  (.D(n_0_108), .G(n_0_104), .Q(n_0_45));
   DLH_X1 \A_reg_reg[1]  (.D(n_0_107), .G(n_0_104), .Q(n_0_46));
   DLH_X1 \A_reg_reg[0]  (.D(n_0_106), .G(n_0_104), .Q(n_0_47));
   DLH_X1 \B_reg_reg[30]  (.D(n_0_167), .G(n_0_104), .Q(EB[7]));
   DLH_X1 \B_reg_reg[29]  (.D(n_0_166), .G(n_0_104), .Q(EB[6]));
   DLH_X1 \B_reg_reg[28]  (.D(n_0_165), .G(n_0_104), .Q(EB[5]));
   DLH_X1 \B_reg_reg[27]  (.D(n_0_164), .G(n_0_104), .Q(EB[4]));
   DLH_X1 \B_reg_reg[26]  (.D(n_0_163), .G(n_0_104), .Q(EB[3]));
   DLH_X1 \B_reg_reg[25]  (.D(n_0_162), .G(n_0_104), .Q(EB[2]));
   DLH_X1 \B_reg_reg[24]  (.D(n_0_161), .G(n_0_104), .Q(EB[1]));
   DLH_X1 \B_reg_reg[23]  (.D(n_0_160), .G(n_0_104), .Q(EB[0]));
   DLH_X1 \B_reg_reg[22]  (.D(n_0_159), .G(n_0_104), .Q(n_0_48));
   DLH_X1 \B_reg_reg[21]  (.D(n_0_158), .G(n_0_104), .Q(n_0_49));
   DLH_X1 \B_reg_reg[20]  (.D(n_0_157), .G(n_0_104), .Q(n_0_50));
   DLH_X1 \B_reg_reg[19]  (.D(n_0_156), .G(n_0_104), .Q(n_0_51));
   DLH_X1 \B_reg_reg[18]  (.D(n_0_155), .G(n_0_104), .Q(n_0_52));
   DLH_X1 \B_reg_reg[17]  (.D(n_0_154), .G(n_0_104), .Q(n_0_53));
   DLH_X1 \B_reg_reg[16]  (.D(n_0_153), .G(n_0_104), .Q(n_0_54));
   DLH_X1 \B_reg_reg[15]  (.D(n_0_152), .G(n_0_104), .Q(n_0_55));
   DLH_X1 \B_reg_reg[14]  (.D(n_0_151), .G(n_0_104), .Q(n_0_56));
   DLH_X1 \B_reg_reg[13]  (.D(n_0_150), .G(n_0_104), .Q(n_0_57));
   DLH_X1 \B_reg_reg[12]  (.D(n_0_149), .G(n_0_104), .Q(n_0_58));
   DLH_X1 \B_reg_reg[11]  (.D(n_0_148), .G(n_0_104), .Q(n_0_59));
   DLH_X1 \B_reg_reg[10]  (.D(n_0_147), .G(n_0_104), .Q(n_0_60));
   DLH_X1 \B_reg_reg[9]  (.D(n_0_146), .G(n_0_104), .Q(n_0_61));
   DLH_X1 \B_reg_reg[8]  (.D(n_0_145), .G(n_0_104), .Q(n_0_62));
   DLH_X1 \B_reg_reg[7]  (.D(n_0_144), .G(n_0_104), .Q(n_0_63));
   DLH_X1 \B_reg_reg[6]  (.D(n_0_143), .G(n_0_104), .Q(n_0_64));
   DLH_X1 \B_reg_reg[5]  (.D(n_0_142), .G(n_0_104), .Q(n_0_65));
   DLH_X1 \B_reg_reg[4]  (.D(n_0_141), .G(n_0_104), .Q(n_0_66));
   DLH_X1 \B_reg_reg[3]  (.D(n_0_140), .G(n_0_104), .Q(n_0_67));
   DLH_X1 \B_reg_reg[2]  (.D(n_0_139), .G(n_0_104), .Q(n_0_68));
   DLH_X1 \B_reg_reg[1]  (.D(n_0_138), .G(n_0_104), .Q(n_0_69));
   DLH_X1 \B_reg_reg[0]  (.D(n_0_137), .G(n_0_104), .Q(n_0_70));
   DLH_X1 \A_reg_reg[31]  (.D(n_0_103), .G(n_0_104), .Q(A_reg));
   DLH_X1 \B_reg_reg[31]  (.D(n_0_105), .G(n_0_104), .Q(B_reg));
   HA_X1 i_0_1_0 (.A(EB[1]), .B(EA[1]), .CO(n_0_1_3), .S(n_0_1_2));
   HA_X1 i_0_1_1 (.A(EB[2]), .B(EA[2]), .CO(n_0_1_5), .S(n_0_1_4));
   HA_X1 i_0_1_2 (.A(EB[3]), .B(EA[3]), .CO(n_0_1_7), .S(n_0_1_6));
   HA_X1 i_0_1_3 (.A(EB[4]), .B(EA[4]), .CO(n_0_1_9), .S(n_0_1_8));
   HA_X1 i_0_1_4 (.A(EB[5]), .B(EA[5]), .CO(n_0_1_11), .S(n_0_1_10));
   HA_X1 i_0_1_5 (.A(EB[6]), .B(EA[6]), .CO(n_0_1_13), .S(n_0_1_12));
   HA_X1 i_0_1_6 (.A(EA[0]), .B(n_0_1_0), .CO(n_0_1_15), .S(n_0_1_14));
   FA_X1 i_0_1_7 (.A(n_0_1_1), .B(n_0_1_2), .CI(n_0_1_15), .CO(n_0_1_16), 
      .S(n_0_1_22));
   FA_X1 i_0_1_8 (.A(n_0_1_3), .B(n_0_1_4), .CI(n_0_1_16), .CO(n_0_1_17), 
      .S(n_0_1_23));
   FA_X1 i_0_1_9 (.A(n_0_1_5), .B(n_0_1_6), .CI(n_0_1_17), .CO(n_0_1_18), 
      .S(n_0_1_24));
   FA_X1 i_0_1_10 (.A(n_0_1_7), .B(n_0_1_8), .CI(n_0_1_18), .CO(n_0_1_19), 
      .S(n_0_1_25));
   FA_X1 i_0_1_11 (.A(n_0_1_9), .B(n_0_1_10), .CI(n_0_1_19), .CO(n_0_1_20), 
      .S(n_0_1_26));
   FA_X1 i_0_1_12 (.A(n_0_1_11), .B(n_0_1_12), .CI(n_0_1_20), .CO(n_0_1_21), 
      .S(n_0_1_27));
   XNOR2_X1 i_0_1_13 (.A(EB[0]), .B(n_0_24), .ZN(n_0_1_0));
   OR2_X1 i_0_1_14 (.A1(EB[0]), .A2(n_0_24), .ZN(n_0_1_1));
   INV_X1 i_0_1_15 (.A(n_0_1_32), .ZN(n_0_72));
   AOI22_X1 i_0_1_16 (.A1(M_resultTruncated[1]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_1), .ZN(n_0_1_32));
   INV_X1 i_0_1_22 (.A(n_0_1_33), .ZN(n_0_73));
   AOI22_X1 i_0_1_23 (.A1(M_resultTruncated[2]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_2), .ZN(n_0_1_33));
   INV_X1 i_0_1_24 (.A(n_0_1_34), .ZN(n_0_74));
   AOI22_X1 i_0_1_25 (.A1(M_resultTruncated[3]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_3), .ZN(n_0_1_34));
   INV_X1 i_0_1_26 (.A(n_0_1_35), .ZN(n_0_75));
   AOI22_X1 i_0_1_27 (.A1(M_resultTruncated[4]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_4), .ZN(n_0_1_35));
   INV_X1 i_0_1_28 (.A(n_0_1_36), .ZN(n_0_76));
   AOI22_X1 i_0_1_29 (.A1(M_resultTruncated[5]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_5), .ZN(n_0_1_36));
   INV_X1 i_0_1_30 (.A(n_0_1_37), .ZN(n_0_77));
   AOI22_X1 i_0_1_31 (.A1(M_resultTruncated[6]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_6), .ZN(n_0_1_37));
   INV_X1 i_0_1_32 (.A(n_0_1_38), .ZN(n_0_78));
   AOI22_X1 i_0_1_33 (.A1(M_resultTruncated[7]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_7), .ZN(n_0_1_38));
   INV_X1 i_0_1_34 (.A(n_0_1_39), .ZN(n_0_79));
   AOI22_X1 i_0_1_35 (.A1(M_resultTruncated[8]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_8), .ZN(n_0_1_39));
   INV_X1 i_0_1_36 (.A(n_0_1_40), .ZN(n_0_80));
   AOI22_X1 i_0_1_37 (.A1(M_resultTruncated[9]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_9), .ZN(n_0_1_40));
   INV_X1 i_0_1_38 (.A(n_0_1_41), .ZN(n_0_81));
   AOI22_X1 i_0_1_39 (.A1(M_resultTruncated[10]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_10), .ZN(n_0_1_41));
   INV_X1 i_0_1_40 (.A(n_0_1_42), .ZN(n_0_82));
   AOI22_X1 i_0_1_41 (.A1(M_resultTruncated[11]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_11), .ZN(n_0_1_42));
   INV_X1 i_0_1_42 (.A(n_0_1_43), .ZN(n_0_83));
   AOI22_X1 i_0_1_43 (.A1(M_resultTruncated[12]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_12), .ZN(n_0_1_43));
   INV_X1 i_0_1_44 (.A(n_0_1_44), .ZN(n_0_84));
   AOI22_X1 i_0_1_45 (.A1(M_resultTruncated[13]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_13), .ZN(n_0_1_44));
   INV_X1 i_0_1_46 (.A(n_0_1_45), .ZN(n_0_85));
   AOI22_X1 i_0_1_47 (.A1(M_resultTruncated[14]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_14), .ZN(n_0_1_45));
   INV_X1 i_0_1_48 (.A(n_0_1_46), .ZN(n_0_86));
   AOI22_X1 i_0_1_49 (.A1(M_resultTruncated[15]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_15), .ZN(n_0_1_46));
   INV_X1 i_0_1_50 (.A(n_0_1_47), .ZN(n_0_87));
   AOI22_X1 i_0_1_51 (.A1(M_resultTruncated[16]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_16), .ZN(n_0_1_47));
   INV_X1 i_0_1_52 (.A(n_0_1_48), .ZN(n_0_88));
   AOI22_X1 i_0_1_53 (.A1(M_resultTruncated[17]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_17), .ZN(n_0_1_48));
   INV_X1 i_0_1_54 (.A(n_0_1_49), .ZN(n_0_89));
   AOI22_X1 i_0_1_55 (.A1(M_resultTruncated[18]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_18), .ZN(n_0_1_49));
   INV_X1 i_0_1_56 (.A(n_0_1_50), .ZN(n_0_90));
   AOI22_X1 i_0_1_57 (.A1(M_resultTruncated[19]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_19), .ZN(n_0_1_50));
   INV_X1 i_0_1_58 (.A(n_0_1_51), .ZN(n_0_91));
   AOI22_X1 i_0_1_59 (.A1(M_resultTruncated[20]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_20), .ZN(n_0_1_51));
   INV_X1 i_0_1_60 (.A(n_0_1_52), .ZN(n_0_92));
   AOI22_X1 i_0_1_61 (.A1(M_resultTruncated[21]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_21), .ZN(n_0_1_52));
   INV_X1 i_0_1_62 (.A(n_0_1_53), .ZN(n_0_93));
   AOI22_X1 i_0_1_63 (.A1(M_resultTruncated[22]), .A2(n_0_1_55), .B1(n_0_1_54), 
      .B2(n_0_22), .ZN(n_0_1_53));
   NOR3_X1 i_0_1_17 (.A1(n_0_1_60), .A2(n_0_24), .A3(n_0_1_64), .ZN(n_0_1_54));
   NOR3_X1 i_0_1_18 (.A1(n_0_1_29), .A2(n_0_1_64), .A3(n_0_1_60), .ZN(n_0_1_55));
   OAI21_X1 i_0_1_19 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_111), .ZN(n_0_94));
   OAI21_X1 i_0_1_67 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_110), .ZN(n_0_95));
   OAI21_X1 i_0_1_68 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_109), .ZN(n_0_96));
   OAI21_X1 i_0_1_69 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_108), .ZN(n_0_97));
   OAI21_X1 i_0_1_70 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_107), .ZN(n_0_98));
   OAI21_X1 i_0_1_71 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_106), .ZN(n_0_99));
   OAI21_X1 i_0_1_72 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_105), .ZN(n_0_100));
   OAI21_X1 i_0_1_73 (.A(n_0_1_62), .B1(n_0_1_60), .B2(n_0_1_56), .ZN(n_0_101));
   XNOR2_X1 i_0_1_74 (.A(n_0_1_58), .B(n_0_1_57), .ZN(n_0_1_56));
   XNOR2_X1 i_0_1_75 (.A(n_0_1_13), .B(n_0_1_21), .ZN(n_0_1_57));
   NOR2_X1 i_0_1_76 (.A1(n_0_1_68), .A2(n_0_1_59), .ZN(n_0_1_58));
   NOR2_X1 i_0_1_77 (.A1(EB[7]), .A2(EA[7]), .ZN(n_0_1_59));
   NAND2_X1 i_0_1_20 (.A1(n_0_1_69), .A2(n_0_1_66), .ZN(n_0_1_60));
   AOI21_X1 i_0_1_21 (.A(n_0_1_72), .B1(n_0_1_69), .B2(n_0_1_64), .ZN(n_0_1_62));
   NAND3_X1 i_0_1_64 (.A1(n_0_1_100), .A2(n_0_1_97), .A3(n_0_1_67), .ZN(n_0_1_64));
   AND2_X1 i_0_1_65 (.A1(n_0_1_112), .A2(A[31]), .ZN(n_0_103));
   OAI21_X1 i_0_1_125 (.A(n_0_1_112), .B1(n_0_1_28), .B2(clk), .ZN(n_0_104));
   AND2_X1 i_0_1_126 (.A1(n_0_1_112), .A2(B[31]), .ZN(n_0_105));
   AND2_X1 i_0_1_127 (.A1(n_0_1_112), .A2(A[0]), .ZN(n_0_106));
   AND2_X1 i_0_1_128 (.A1(n_0_1_112), .A2(A[1]), .ZN(n_0_107));
   AND2_X1 i_0_1_129 (.A1(n_0_1_112), .A2(A[2]), .ZN(n_0_108));
   AND2_X1 i_0_1_130 (.A1(n_0_1_112), .A2(A[3]), .ZN(n_0_109));
   AND2_X1 i_0_1_131 (.A1(n_0_1_112), .A2(A[4]), .ZN(n_0_110));
   AND2_X1 i_0_1_132 (.A1(n_0_1_112), .A2(A[5]), .ZN(n_0_111));
   AND2_X1 i_0_1_133 (.A1(n_0_1_112), .A2(A[6]), .ZN(n_0_112));
   AND2_X1 i_0_1_134 (.A1(n_0_1_112), .A2(A[7]), .ZN(n_0_113));
   AND2_X1 i_0_1_135 (.A1(n_0_1_112), .A2(A[8]), .ZN(n_0_114));
   AND2_X1 i_0_1_136 (.A1(n_0_1_112), .A2(A[9]), .ZN(n_0_115));
   AND2_X1 i_0_1_137 (.A1(n_0_1_112), .A2(A[10]), .ZN(n_0_116));
   AND2_X1 i_0_1_138 (.A1(n_0_1_112), .A2(A[11]), .ZN(n_0_117));
   AND2_X1 i_0_1_139 (.A1(n_0_1_112), .A2(A[12]), .ZN(n_0_118));
   AND2_X1 i_0_1_140 (.A1(n_0_1_112), .A2(A[13]), .ZN(n_0_119));
   AND2_X1 i_0_1_141 (.A1(n_0_1_112), .A2(A[14]), .ZN(n_0_120));
   AND2_X1 i_0_1_142 (.A1(n_0_1_112), .A2(A[15]), .ZN(n_0_121));
   AND2_X1 i_0_1_143 (.A1(n_0_1_112), .A2(A[16]), .ZN(n_0_122));
   AND2_X1 i_0_1_144 (.A1(n_0_1_112), .A2(A[17]), .ZN(n_0_123));
   AND2_X1 i_0_1_145 (.A1(n_0_1_112), .A2(A[18]), .ZN(n_0_124));
   AND2_X1 i_0_1_146 (.A1(n_0_1_112), .A2(A[19]), .ZN(n_0_125));
   AND2_X1 i_0_1_147 (.A1(n_0_1_112), .A2(A[20]), .ZN(n_0_126));
   AND2_X1 i_0_1_148 (.A1(n_0_1_112), .A2(A[21]), .ZN(n_0_127));
   AND2_X1 i_0_1_149 (.A1(n_0_1_112), .A2(A[22]), .ZN(n_0_128));
   AND2_X1 i_0_1_150 (.A1(n_0_1_112), .A2(A[23]), .ZN(n_0_129));
   AND2_X1 i_0_1_151 (.A1(n_0_1_112), .A2(A[24]), .ZN(n_0_130));
   AND2_X1 i_0_1_152 (.A1(n_0_1_112), .A2(A[25]), .ZN(n_0_131));
   AND2_X1 i_0_1_153 (.A1(n_0_1_112), .A2(A[26]), .ZN(n_0_132));
   AND2_X1 i_0_1_154 (.A1(n_0_1_112), .A2(A[27]), .ZN(n_0_133));
   AND2_X1 i_0_1_155 (.A1(n_0_1_112), .A2(A[28]), .ZN(n_0_134));
   AND2_X1 i_0_1_156 (.A1(n_0_1_112), .A2(A[29]), .ZN(n_0_135));
   AND2_X1 i_0_1_157 (.A1(n_0_1_112), .A2(A[30]), .ZN(n_0_136));
   AND2_X1 i_0_1_158 (.A1(n_0_1_112), .A2(B[0]), .ZN(n_0_137));
   AND2_X1 i_0_1_159 (.A1(n_0_1_112), .A2(B[1]), .ZN(n_0_138));
   AND2_X1 i_0_1_160 (.A1(n_0_1_112), .A2(B[2]), .ZN(n_0_139));
   AND2_X1 i_0_1_161 (.A1(n_0_1_112), .A2(B[3]), .ZN(n_0_140));
   AND2_X1 i_0_1_162 (.A1(n_0_1_112), .A2(B[4]), .ZN(n_0_141));
   AND2_X1 i_0_1_163 (.A1(n_0_1_112), .A2(B[5]), .ZN(n_0_142));
   AND2_X1 i_0_1_164 (.A1(n_0_1_112), .A2(B[6]), .ZN(n_0_143));
   AND2_X1 i_0_1_165 (.A1(n_0_1_112), .A2(B[7]), .ZN(n_0_144));
   AND2_X1 i_0_1_166 (.A1(n_0_1_112), .A2(B[8]), .ZN(n_0_145));
   AND2_X1 i_0_1_167 (.A1(n_0_1_112), .A2(B[9]), .ZN(n_0_146));
   AND2_X1 i_0_1_168 (.A1(n_0_1_112), .A2(B[10]), .ZN(n_0_147));
   AND2_X1 i_0_1_169 (.A1(n_0_1_112), .A2(B[11]), .ZN(n_0_148));
   AND2_X1 i_0_1_170 (.A1(n_0_1_112), .A2(B[12]), .ZN(n_0_149));
   AND2_X1 i_0_1_171 (.A1(n_0_1_112), .A2(B[13]), .ZN(n_0_150));
   AND2_X1 i_0_1_172 (.A1(n_0_1_112), .A2(B[14]), .ZN(n_0_151));
   AND2_X1 i_0_1_173 (.A1(n_0_1_112), .A2(B[15]), .ZN(n_0_152));
   AND2_X1 i_0_1_174 (.A1(n_0_1_112), .A2(B[16]), .ZN(n_0_153));
   AND2_X1 i_0_1_175 (.A1(n_0_1_112), .A2(B[17]), .ZN(n_0_154));
   AND2_X1 i_0_1_176 (.A1(n_0_1_112), .A2(B[18]), .ZN(n_0_155));
   AND2_X1 i_0_1_177 (.A1(n_0_1_112), .A2(B[19]), .ZN(n_0_156));
   AND2_X1 i_0_1_178 (.A1(n_0_1_112), .A2(B[20]), .ZN(n_0_157));
   AND2_X1 i_0_1_179 (.A1(n_0_1_112), .A2(B[21]), .ZN(n_0_158));
   AND2_X1 i_0_1_180 (.A1(n_0_1_112), .A2(B[22]), .ZN(n_0_159));
   AND2_X1 i_0_1_181 (.A1(n_0_1_112), .A2(B[23]), .ZN(n_0_160));
   AND2_X1 i_0_1_182 (.A1(n_0_1_112), .A2(B[24]), .ZN(n_0_161));
   AND2_X1 i_0_1_183 (.A1(n_0_1_112), .A2(B[25]), .ZN(n_0_162));
   AND2_X1 i_0_1_184 (.A1(n_0_1_112), .A2(B[26]), .ZN(n_0_163));
   AND2_X1 i_0_1_185 (.A1(n_0_1_112), .A2(B[27]), .ZN(n_0_164));
   AND2_X1 i_0_1_186 (.A1(n_0_1_112), .A2(B[28]), .ZN(n_0_165));
   AND2_X1 i_0_1_187 (.A1(n_0_1_112), .A2(B[29]), .ZN(n_0_166));
   AND2_X1 i_0_1_188 (.A1(n_0_1_112), .A2(B[30]), .ZN(n_0_167));
   OR2_X1 i_0_1_189 (.A1(clk), .A2(reset), .ZN(n_0_168));
   INV_X1 i_0_1_190 (.A(n_0_1_27), .ZN(n_0_1_105));
   INV_X1 i_0_1_191 (.A(n_0_1_26), .ZN(n_0_1_106));
   INV_X1 i_0_1_192 (.A(n_0_1_25), .ZN(n_0_1_107));
   INV_X1 i_0_1_193 (.A(n_0_1_24), .ZN(n_0_1_108));
   INV_X1 i_0_1_194 (.A(n_0_1_23), .ZN(n_0_1_109));
   INV_X1 i_0_1_195 (.A(n_0_1_22), .ZN(n_0_1_110));
   INV_X1 i_0_1_66 (.A(n_0_1_14), .ZN(n_0_1_111));
   INV_X1 i_0_1_78 (.A(reset), .ZN(n_0_1_112));
   INV_X1 i_0_1_198 (.A(enable), .ZN(n_0_1_28));
   INV_X1 i_0_1_79 (.A(n_0_24), .ZN(n_0_1_29));
   OAI21_X1 i_0_1_80 (.A(n_0_1_71), .B1(n_0_1_31), .B2(n_0_1_30), .ZN(n_0_71));
   OAI221_X1 i_0_1_81 (.A(n_0_1_69), .B1(n_0_1_100), .B2(n_0_1_81), .C1(n_0_1_97), 
      .C2(n_0_1_73), .ZN(n_0_1_30));
   INV_X1 i_0_1_82 (.A(n_0_1_61), .ZN(n_0_1_31));
   OAI211_X1 i_0_1_83 (.A(n_0_1_100), .B(n_0_1_97), .C1(n_0_1_65), .C2(n_0_1_63), 
      .ZN(n_0_1_61));
   NAND2_X1 i_0_1_84 (.A1(n_0_1_67), .A2(n_0_1_66), .ZN(n_0_1_63));
   AOI22_X1 i_0_1_85 (.A1(n_0_1_103), .A2(n_0_0), .B1(n_0_24), .B2(
      M_resultTruncated[0]), .ZN(n_0_1_65));
   OR4_X1 i_0_1_86 (.A1(n_0_1_101), .A2(n_0_1_98), .A3(n_0_1_92), .A4(n_0_1_95), 
      .ZN(n_0_1_66));
   OAI221_X1 i_0_1_87 (.A(n_0_1_68), .B1(EA[6]), .B2(n_0_1_98), .C1(EB[6]), 
      .C2(n_0_1_101), .ZN(n_0_1_67));
   AND2_X1 i_0_1_88 (.A1(EA[7]), .A2(EB[7]), .ZN(n_0_1_68));
   NOR2_X1 i_0_1_89 (.A1(reset), .A2(n_0_1_70), .ZN(n_0_1_69));
   OAI22_X1 i_0_1_90 (.A1(n_0_1_91), .A2(n_0_1_81), .B1(n_0_1_94), .B2(n_0_1_73), 
      .ZN(n_0_1_70));
   INV_X1 i_0_1_91 (.A(n_0_1_72), .ZN(n_0_1_71));
   NOR4_X1 i_0_1_92 (.A1(reset), .A2(n_0_1_73), .A3(n_0_1_81), .A4(n_0_1_89), 
      .ZN(n_0_1_72));
   NAND3_X1 i_0_1_93 (.A1(n_0_1_78), .A2(n_0_1_77), .A3(n_0_1_74), .ZN(n_0_1_73));
   AND4_X1 i_0_1_94 (.A1(n_0_1_80), .A2(n_0_1_79), .A3(n_0_1_76), .A4(n_0_1_75), 
      .ZN(n_0_1_74));
   NOR4_X1 i_0_1_95 (.A1(n_0_45), .A2(n_0_47), .A3(n_0_41), .A4(n_0_44), 
      .ZN(n_0_1_75));
   NOR4_X1 i_0_1_96 (.A1(n_0_37), .A2(n_0_40), .A3(n_0_34), .A4(n_0_35), 
      .ZN(n_0_1_76));
   NOR3_X1 i_0_1_97 (.A1(n_0_42), .A2(n_0_43), .A3(n_0_46), .ZN(n_0_1_77));
   NOR4_X1 i_0_1_98 (.A1(n_0_38), .A2(n_0_39), .A3(n_0_33), .A4(n_0_36), 
      .ZN(n_0_1_78));
   NOR4_X1 i_0_1_99 (.A1(n_0_25), .A2(n_0_26), .A3(n_0_27), .A4(n_0_28), 
      .ZN(n_0_1_79));
   NOR4_X1 i_0_1_100 (.A1(n_0_29), .A2(n_0_30), .A3(n_0_31), .A4(n_0_32), 
      .ZN(n_0_1_80));
   NAND3_X1 i_0_1_101 (.A1(n_0_1_86), .A2(n_0_1_85), .A3(n_0_1_82), .ZN(n_0_1_81));
   AND4_X1 i_0_1_102 (.A1(n_0_1_88), .A2(n_0_1_87), .A3(n_0_1_84), .A4(n_0_1_83), 
      .ZN(n_0_1_82));
   NOR4_X1 i_0_1_103 (.A1(n_0_68), .A2(n_0_70), .A3(n_0_64), .A4(n_0_67), 
      .ZN(n_0_1_83));
   NOR4_X1 i_0_1_104 (.A1(n_0_60), .A2(n_0_63), .A3(n_0_57), .A4(n_0_58), 
      .ZN(n_0_1_84));
   NOR3_X1 i_0_1_105 (.A1(n_0_65), .A2(n_0_66), .A3(n_0_69), .ZN(n_0_1_85));
   NOR4_X1 i_0_1_106 (.A1(n_0_61), .A2(n_0_62), .A3(n_0_56), .A4(n_0_59), 
      .ZN(n_0_1_86));
   NOR4_X1 i_0_1_107 (.A1(n_0_48), .A2(n_0_49), .A3(n_0_50), .A4(n_0_51), 
      .ZN(n_0_1_87));
   NOR4_X1 i_0_1_108 (.A1(n_0_52), .A2(n_0_53), .A3(n_0_54), .A4(n_0_55), 
      .ZN(n_0_1_88));
   INV_X1 i_0_1_109 (.A(n_0_1_90), .ZN(n_0_1_89));
   OAI22_X1 i_0_1_110 (.A1(n_0_1_100), .A2(n_0_1_94), .B1(n_0_1_97), .B2(
      n_0_1_91), .ZN(n_0_1_90));
   OR4_X1 i_0_1_111 (.A1(n_0_1_93), .A2(n_0_1_92), .A3(EB[5]), .A4(EB[4]), 
      .ZN(n_0_1_91));
   OR2_X1 i_0_1_112 (.A1(EB[7]), .A2(EB[6]), .ZN(n_0_1_92));
   OR4_X1 i_0_1_113 (.A1(EB[3]), .A2(EB[2]), .A3(EB[1]), .A4(EB[0]), .ZN(
      n_0_1_93));
   OR4_X1 i_0_1_114 (.A1(n_0_1_96), .A2(n_0_1_95), .A3(EA[5]), .A4(EA[4]), 
      .ZN(n_0_1_94));
   OR2_X1 i_0_1_115 (.A1(EA[7]), .A2(EA[6]), .ZN(n_0_1_95));
   OR4_X1 i_0_1_116 (.A1(EA[3]), .A2(EA[2]), .A3(EA[1]), .A4(EA[0]), .ZN(
      n_0_1_96));
   NAND3_X1 i_0_1_117 (.A1(EA[7]), .A2(n_0_1_98), .A3(EA[6]), .ZN(n_0_1_97));
   AND3_X1 i_0_1_118 (.A1(EA[2]), .A2(EA[1]), .A3(n_0_1_99), .ZN(n_0_1_98));
   AND4_X1 i_0_1_119 (.A1(EA[5]), .A2(EA[4]), .A3(EA[3]), .A4(EA[0]), .ZN(
      n_0_1_99));
   NAND3_X1 i_0_1_120 (.A1(EB[7]), .A2(n_0_1_101), .A3(EB[6]), .ZN(n_0_1_100));
   AND3_X1 i_0_1_121 (.A1(EB[2]), .A2(EB[1]), .A3(n_0_1_102), .ZN(n_0_1_101));
   AND4_X1 i_0_1_122 (.A1(EB[5]), .A2(EB[4]), .A3(EB[3]), .A4(EB[0]), .ZN(
      n_0_1_102));
   INV_X1 i_0_1_123 (.A(n_0_24), .ZN(n_0_1_103));
   AOI211_X1 i_0_1_124 (.A(reset), .B(n_0_1_104), .C1(B_reg), .C2(A_reg), 
      .ZN(n_0_102));
   NOR2_X1 i_0_1_196 (.A1(B_reg), .A2(A_reg), .ZN(n_0_1_104));
endmodule
