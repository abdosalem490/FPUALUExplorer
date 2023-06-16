/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Dec 17 22:42:48 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1596724982 */

module datapath(multiplier_M, accumulator_A, p_0);
   input [31:0]multiplier_M;
   input [31:0]accumulator_A;
   output [31:0]p_0;

   INV_X1 i_0 (.A(n_0), .ZN(p_0[0]));
   OAI21_X1 i_1 (.A(n_154), .B1(multiplier_M[0]), .B2(accumulator_A[0]), 
      .ZN(n_0));
   XOR2_X1 i_2 (.A(n_154), .B(n_1), .Z(p_0[1]));
   OAI21_X1 i_3 (.A(n_153), .B1(multiplier_M[1]), .B2(accumulator_A[1]), 
      .ZN(n_1));
   XNOR2_X1 i_4 (.A(n_152), .B(n_2), .ZN(p_0[2]));
   OAI21_X1 i_5 (.A(n_157), .B1(multiplier_M[2]), .B2(accumulator_A[2]), 
      .ZN(n_2));
   XOR2_X1 i_6 (.A(n_151), .B(n_3), .Z(p_0[3]));
   OAI21_X1 i_7 (.A(n_158), .B1(n_164), .B2(n_161), .ZN(n_3));
   XOR2_X1 i_8 (.A(n_149), .B(n_10), .Z(p_0[4]));
   XOR2_X1 i_9 (.A(n_9), .B(n_6), .Z(p_0[5]));
   XOR2_X1 i_10 (.A(n_7), .B(n_4), .Z(p_0[6]));
   NOR2_X1 i_11 (.A1(n_146), .A2(n_137), .ZN(n_4));
   XNOR2_X1 i_12 (.A(n_11), .B(n_5), .ZN(p_0[7]));
   OAI22_X1 i_13 (.A1(multiplier_M[6]), .A2(accumulator_A[6]), .B1(n_137), 
      .B2(n_7), .ZN(n_5));
   AOI21_X1 i_14 (.A(n_147), .B1(multiplier_M[5]), .B2(accumulator_A[5]), 
      .ZN(n_6));
   AOI21_X1 i_15 (.A(n_147), .B1(n_141), .B2(n_8), .ZN(n_7));
   INV_X1 i_16 (.A(n_9), .ZN(n_8));
   AOI21_X1 i_17 (.A(n_144), .B1(n_149), .B2(n_142), .ZN(n_9));
   OAI21_X1 i_18 (.A(n_142), .B1(multiplier_M[4]), .B2(accumulator_A[4]), 
      .ZN(n_10));
   NOR2_X1 i_19 (.A1(n_148), .A2(n_139), .ZN(n_11));
   XNOR2_X1 i_20 (.A(n_135), .B(n_18), .ZN(p_0[8]));
   XOR2_X1 i_21 (.A(n_17), .B(n_14), .Z(p_0[9]));
   XOR2_X1 i_22 (.A(n_15), .B(n_12), .Z(p_0[10]));
   NOR2_X1 i_23 (.A1(n_132), .A2(n_123), .ZN(n_12));
   XNOR2_X1 i_24 (.A(n_19), .B(n_13), .ZN(p_0[11]));
   OAI22_X1 i_25 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .B1(n_123), 
      .B2(n_15), .ZN(n_13));
   AOI21_X1 i_26 (.A(n_133), .B1(multiplier_M[9]), .B2(accumulator_A[9]), 
      .ZN(n_14));
   AOI21_X1 i_27 (.A(n_133), .B1(n_127), .B2(n_16), .ZN(n_15));
   INV_X1 i_28 (.A(n_17), .ZN(n_16));
   AOI21_X1 i_29 (.A(n_130), .B1(n_135), .B2(n_128), .ZN(n_17));
   AOI21_X1 i_30 (.A(n_130), .B1(multiplier_M[8]), .B2(accumulator_A[8]), 
      .ZN(n_18));
   NOR2_X1 i_31 (.A1(n_134), .A2(n_125), .ZN(n_19));
   XOR2_X1 i_32 (.A(n_121), .B(n_26), .Z(p_0[12]));
   XOR2_X1 i_33 (.A(n_25), .B(n_22), .Z(p_0[13]));
   XOR2_X1 i_34 (.A(n_23), .B(n_20), .Z(p_0[14]));
   NOR2_X1 i_35 (.A1(n_118), .A2(n_109), .ZN(n_20));
   XNOR2_X1 i_36 (.A(n_27), .B(n_21), .ZN(p_0[15]));
   OAI22_X1 i_37 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .B1(n_109), 
      .B2(n_23), .ZN(n_21));
   AOI21_X1 i_38 (.A(n_119), .B1(multiplier_M[13]), .B2(accumulator_A[13]), 
      .ZN(n_22));
   AOI21_X1 i_39 (.A(n_119), .B1(n_113), .B2(n_24), .ZN(n_23));
   INV_X1 i_40 (.A(n_25), .ZN(n_24));
   AOI21_X1 i_41 (.A(n_116), .B1(n_121), .B2(n_114), .ZN(n_25));
   OAI21_X1 i_42 (.A(n_114), .B1(multiplier_M[12]), .B2(accumulator_A[12]), 
      .ZN(n_26));
   NOR2_X1 i_43 (.A1(n_120), .A2(n_111), .ZN(n_27));
   XOR2_X1 i_44 (.A(n_107), .B(n_34), .Z(p_0[16]));
   XOR2_X1 i_45 (.A(n_33), .B(n_30), .Z(p_0[17]));
   XOR2_X1 i_46 (.A(n_31), .B(n_28), .Z(p_0[18]));
   NOR2_X1 i_47 (.A1(n_104), .A2(n_95), .ZN(n_28));
   XNOR2_X1 i_48 (.A(n_35), .B(n_29), .ZN(p_0[19]));
   OAI22_X1 i_49 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .B1(n_95), 
      .B2(n_31), .ZN(n_29));
   AOI21_X1 i_50 (.A(n_105), .B1(multiplier_M[17]), .B2(accumulator_A[17]), 
      .ZN(n_30));
   AOI21_X1 i_51 (.A(n_105), .B1(n_99), .B2(n_32), .ZN(n_31));
   INV_X1 i_52 (.A(n_33), .ZN(n_32));
   AOI21_X1 i_53 (.A(n_102), .B1(n_107), .B2(n_100), .ZN(n_33));
   OAI21_X1 i_54 (.A(n_100), .B1(multiplier_M[16]), .B2(accumulator_A[16]), 
      .ZN(n_34));
   NOR2_X1 i_55 (.A1(n_106), .A2(n_97), .ZN(n_35));
   XOR2_X1 i_56 (.A(n_93), .B(n_42), .Z(p_0[20]));
   XOR2_X1 i_57 (.A(n_41), .B(n_38), .Z(p_0[21]));
   XOR2_X1 i_58 (.A(n_39), .B(n_36), .Z(p_0[22]));
   NOR2_X1 i_59 (.A1(n_82), .A2(n_72), .ZN(n_36));
   XNOR2_X1 i_60 (.A(n_43), .B(n_37), .ZN(p_0[23]));
   OAI21_X1 i_61 (.A(n_81), .B1(n_72), .B2(n_39), .ZN(n_37));
   NOR2_X1 i_62 (.A1(n_84), .A2(n_74), .ZN(n_38));
   INV_X1 i_63 (.A(n_40), .ZN(n_39));
   OAI21_X1 i_64 (.A(n_83), .B1(n_74), .B2(n_41), .ZN(n_40));
   AOI21_X1 i_65 (.A(n_79), .B1(n_93), .B2(n_76), .ZN(n_41));
   OAI21_X1 i_66 (.A(n_76), .B1(multiplier_M[20]), .B2(accumulator_A[20]), 
      .ZN(n_42));
   AOI21_X1 i_67 (.A(n_86), .B1(multiplier_M[23]), .B2(accumulator_A[23]), 
      .ZN(n_43));
   XOR2_X1 i_68 (.A(n_51), .B(n_50), .Z(p_0[24]));
   XOR2_X1 i_69 (.A(n_49), .B(n_47), .Z(p_0[25]));
   XNOR2_X1 i_70 (.A(n_45), .B(n_44), .ZN(p_0[26]));
   NOR2_X1 i_71 (.A1(n_91), .A2(n_48), .ZN(n_44));
   OAI21_X1 i_72 (.A(n_66), .B1(multiplier_M[26]), .B2(accumulator_A[26]), 
      .ZN(n_45));
   XNOR2_X1 i_73 (.A(n_53), .B(n_46), .ZN(p_0[27]));
   OAI21_X1 i_74 (.A(n_66), .B1(n_90), .B2(n_48), .ZN(n_46));
   AOI21_X1 i_75 (.A(n_91), .B1(multiplier_M[25]), .B2(accumulator_A[25]), 
      .ZN(n_47));
   AOI21_X1 i_76 (.A(n_49), .B1(multiplier_M[25]), .B2(accumulator_A[25]), 
      .ZN(n_48));
   AOI21_X1 i_77 (.A(n_88), .B1(n_69), .B2(n_51), .ZN(n_49));
   OAI21_X1 i_78 (.A(n_69), .B1(multiplier_M[24]), .B2(accumulator_A[24]), 
      .ZN(n_50));
   INV_X1 i_79 (.A(n_52), .ZN(n_51));
   OAI21_X1 i_80 (.A(n_71), .B1(n_93), .B2(n_78), .ZN(n_52));
   OAI22_X1 i_81 (.A1(multiplier_M[27]), .A2(accumulator_A[27]), .B1(n_165), 
      .B2(n_162), .ZN(n_53));
   XNOR2_X1 i_82 (.A(n_64), .B(n_63), .ZN(p_0[28]));
   XOR2_X1 i_83 (.A(n_62), .B(n_58), .Z(p_0[29]));
   XNOR2_X1 i_84 (.A(n_55), .B(n_54), .ZN(p_0[30]));
   OAI21_X1 i_85 (.A(n_160), .B1(n_166), .B2(n_163), .ZN(n_54));
   NOR2_X1 i_86 (.A1(n_61), .A2(n_60), .ZN(n_55));
   XOR2_X1 i_87 (.A(n_57), .B(n_56), .Z(p_0[31]));
   XNOR2_X1 i_88 (.A(multiplier_M[31]), .B(multiplier_M[30]), .ZN(n_56));
   OAI21_X1 i_89 (.A(n_160), .B1(n_61), .B2(n_59), .ZN(n_57));
   AOI21_X1 i_90 (.A(n_60), .B1(multiplier_M[29]), .B2(accumulator_A[29]), 
      .ZN(n_58));
   OAI22_X1 i_91 (.A1(n_166), .A2(n_163), .B1(multiplier_M[29]), .B2(
      accumulator_A[29]), .ZN(n_59));
   NOR2_X1 i_92 (.A1(multiplier_M[29]), .A2(accumulator_A[29]), .ZN(n_60));
   AOI21_X1 i_93 (.A(n_62), .B1(multiplier_M[29]), .B2(accumulator_A[29]), 
      .ZN(n_61));
   AOI21_X1 i_94 (.A(n_159), .B1(n_64), .B2(n_63), .ZN(n_62));
   AOI21_X1 i_95 (.A(n_159), .B1(multiplier_M[28]), .B2(accumulator_A[28]), 
      .ZN(n_63));
   NOR4_X1 i_96 (.A1(n_67), .A2(n_65), .A3(n_70), .A4(n_77), .ZN(n_64));
   OAI22_X1 i_97 (.A1(n_165), .A2(n_162), .B1(n_92), .B2(n_66), .ZN(n_65));
   NAND2_X1 i_98 (.A1(multiplier_M[26]), .A2(accumulator_A[26]), .ZN(n_66));
   AOI21_X1 i_99 (.A(n_89), .B1(n_69), .B2(n_68), .ZN(n_67));
   NAND2_X1 i_100 (.A1(multiplier_M[25]), .A2(accumulator_A[25]), .ZN(n_68));
   NAND2_X1 i_101 (.A1(multiplier_M[24]), .A2(accumulator_A[24]), .ZN(n_69));
   NOR2_X1 i_102 (.A1(n_87), .A2(n_71), .ZN(n_70));
   AOI221_X1 i_103 (.A(n_73), .B1(multiplier_M[23]), .B2(accumulator_A[23]), 
      .C1(n_85), .C2(n_72), .ZN(n_71));
   AND2_X1 i_104 (.A1(multiplier_M[22]), .A2(accumulator_A[22]), .ZN(n_72));
   AOI21_X1 i_105 (.A(n_80), .B1(n_76), .B2(n_75), .ZN(n_73));
   INV_X1 i_106 (.A(n_75), .ZN(n_74));
   NAND2_X1 i_107 (.A1(multiplier_M[21]), .A2(accumulator_A[21]), .ZN(n_75));
   NAND2_X1 i_108 (.A1(multiplier_M[20]), .A2(accumulator_A[20]), .ZN(n_76));
   NOR3_X1 i_109 (.A1(n_87), .A2(n_78), .A3(n_93), .ZN(n_77));
   OR2_X1 i_110 (.A1(n_80), .A2(n_79), .ZN(n_78));
   NOR2_X1 i_111 (.A1(multiplier_M[20]), .A2(accumulator_A[20]), .ZN(n_79));
   NAND3_X1 i_112 (.A1(n_85), .A2(n_81), .A3(n_83), .ZN(n_80));
   INV_X1 i_113 (.A(n_82), .ZN(n_81));
   NOR2_X1 i_114 (.A1(multiplier_M[22]), .A2(accumulator_A[22]), .ZN(n_82));
   INV_X1 i_115 (.A(n_84), .ZN(n_83));
   NOR2_X1 i_116 (.A1(multiplier_M[21]), .A2(accumulator_A[21]), .ZN(n_84));
   INV_X1 i_117 (.A(n_86), .ZN(n_85));
   NOR2_X1 i_118 (.A1(multiplier_M[23]), .A2(accumulator_A[23]), .ZN(n_86));
   OR2_X1 i_119 (.A1(n_89), .A2(n_88), .ZN(n_87));
   NOR2_X1 i_120 (.A1(multiplier_M[24]), .A2(accumulator_A[24]), .ZN(n_88));
   OR2_X1 i_121 (.A1(n_92), .A2(n_90), .ZN(n_89));
   OAI22_X1 i_122 (.A1(multiplier_M[25]), .A2(accumulator_A[25]), .B1(
      multiplier_M[26]), .B2(accumulator_A[26]), .ZN(n_90));
   NOR2_X1 i_123 (.A1(multiplier_M[25]), .A2(accumulator_A[25]), .ZN(n_91));
   NOR2_X1 i_124 (.A1(multiplier_M[27]), .A2(accumulator_A[27]), .ZN(n_92));
   NOR4_X1 i_125 (.A1(n_97), .A2(n_94), .A3(n_98), .A4(n_101), .ZN(n_93));
   NOR2_X1 i_126 (.A1(n_106), .A2(n_96), .ZN(n_94));
   INV_X1 i_127 (.A(n_96), .ZN(n_95));
   NAND2_X1 i_128 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .ZN(n_96));
   AND2_X1 i_129 (.A1(multiplier_M[19]), .A2(accumulator_A[19]), .ZN(n_97));
   AOI21_X1 i_130 (.A(n_103), .B1(n_100), .B2(n_99), .ZN(n_98));
   NAND2_X1 i_131 (.A1(multiplier_M[17]), .A2(accumulator_A[17]), .ZN(n_99));
   NAND2_X1 i_132 (.A1(multiplier_M[16]), .A2(accumulator_A[16]), .ZN(n_100));
   NOR3_X1 i_133 (.A1(n_103), .A2(n_102), .A3(n_107), .ZN(n_101));
   NOR2_X1 i_134 (.A1(multiplier_M[16]), .A2(accumulator_A[16]), .ZN(n_102));
   OR3_X1 i_135 (.A1(n_106), .A2(n_104), .A3(n_105), .ZN(n_103));
   NOR2_X1 i_136 (.A1(multiplier_M[18]), .A2(accumulator_A[18]), .ZN(n_104));
   NOR2_X1 i_137 (.A1(multiplier_M[17]), .A2(accumulator_A[17]), .ZN(n_105));
   NOR2_X1 i_138 (.A1(multiplier_M[19]), .A2(accumulator_A[19]), .ZN(n_106));
   NOR4_X1 i_139 (.A1(n_111), .A2(n_108), .A3(n_112), .A4(n_115), .ZN(n_107));
   NOR2_X1 i_140 (.A1(n_120), .A2(n_110), .ZN(n_108));
   INV_X1 i_141 (.A(n_110), .ZN(n_109));
   NAND2_X1 i_142 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .ZN(n_110));
   AND2_X1 i_143 (.A1(multiplier_M[15]), .A2(accumulator_A[15]), .ZN(n_111));
   AOI21_X1 i_144 (.A(n_117), .B1(n_114), .B2(n_113), .ZN(n_112));
   NAND2_X1 i_145 (.A1(multiplier_M[13]), .A2(accumulator_A[13]), .ZN(n_113));
   NAND2_X1 i_146 (.A1(multiplier_M[12]), .A2(accumulator_A[12]), .ZN(n_114));
   NOR3_X1 i_147 (.A1(n_117), .A2(n_116), .A3(n_121), .ZN(n_115));
   NOR2_X1 i_148 (.A1(multiplier_M[12]), .A2(accumulator_A[12]), .ZN(n_116));
   OR3_X1 i_149 (.A1(n_120), .A2(n_118), .A3(n_119), .ZN(n_117));
   NOR2_X1 i_150 (.A1(multiplier_M[14]), .A2(accumulator_A[14]), .ZN(n_118));
   NOR2_X1 i_151 (.A1(multiplier_M[13]), .A2(accumulator_A[13]), .ZN(n_119));
   NOR2_X1 i_152 (.A1(multiplier_M[15]), .A2(accumulator_A[15]), .ZN(n_120));
   NOR4_X1 i_153 (.A1(n_125), .A2(n_122), .A3(n_126), .A4(n_129), .ZN(n_121));
   NOR2_X1 i_154 (.A1(n_134), .A2(n_124), .ZN(n_122));
   INV_X1 i_155 (.A(n_124), .ZN(n_123));
   NAND2_X1 i_156 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .ZN(n_124));
   AND2_X1 i_157 (.A1(multiplier_M[11]), .A2(accumulator_A[11]), .ZN(n_125));
   AOI21_X1 i_158 (.A(n_131), .B1(n_128), .B2(n_127), .ZN(n_126));
   NAND2_X1 i_159 (.A1(multiplier_M[9]), .A2(accumulator_A[9]), .ZN(n_127));
   NAND2_X1 i_160 (.A1(multiplier_M[8]), .A2(accumulator_A[8]), .ZN(n_128));
   NOR3_X1 i_161 (.A1(n_131), .A2(n_130), .A3(n_135), .ZN(n_129));
   NOR2_X1 i_162 (.A1(multiplier_M[8]), .A2(accumulator_A[8]), .ZN(n_130));
   OR3_X1 i_163 (.A1(n_134), .A2(n_132), .A3(n_133), .ZN(n_131));
   NOR2_X1 i_164 (.A1(multiplier_M[10]), .A2(accumulator_A[10]), .ZN(n_132));
   NOR2_X1 i_165 (.A1(multiplier_M[9]), .A2(accumulator_A[9]), .ZN(n_133));
   NOR2_X1 i_166 (.A1(multiplier_M[11]), .A2(accumulator_A[11]), .ZN(n_134));
   NOR4_X1 i_167 (.A1(n_139), .A2(n_136), .A3(n_140), .A4(n_143), .ZN(n_135));
   NOR2_X1 i_168 (.A1(n_148), .A2(n_138), .ZN(n_136));
   INV_X1 i_169 (.A(n_138), .ZN(n_137));
   NAND2_X1 i_170 (.A1(multiplier_M[6]), .A2(accumulator_A[6]), .ZN(n_138));
   AND2_X1 i_171 (.A1(multiplier_M[7]), .A2(accumulator_A[7]), .ZN(n_139));
   AOI21_X1 i_172 (.A(n_145), .B1(n_142), .B2(n_141), .ZN(n_140));
   NAND2_X1 i_173 (.A1(multiplier_M[5]), .A2(accumulator_A[5]), .ZN(n_141));
   NAND2_X1 i_174 (.A1(multiplier_M[4]), .A2(accumulator_A[4]), .ZN(n_142));
   NOR3_X1 i_175 (.A1(n_145), .A2(n_144), .A3(n_149), .ZN(n_143));
   NOR2_X1 i_176 (.A1(multiplier_M[4]), .A2(accumulator_A[4]), .ZN(n_144));
   OR3_X1 i_177 (.A1(n_148), .A2(n_146), .A3(n_147), .ZN(n_145));
   NOR2_X1 i_178 (.A1(multiplier_M[6]), .A2(accumulator_A[6]), .ZN(n_146));
   NOR2_X1 i_179 (.A1(multiplier_M[5]), .A2(accumulator_A[5]), .ZN(n_147));
   NOR2_X1 i_180 (.A1(multiplier_M[7]), .A2(accumulator_A[7]), .ZN(n_148));
   NAND2_X1 i_181 (.A1(n_158), .A2(n_150), .ZN(n_149));
   OAI21_X1 i_182 (.A(n_151), .B1(n_164), .B2(n_161), .ZN(n_150));
   OAI22_X1 i_183 (.A1(multiplier_M[2]), .A2(accumulator_A[2]), .B1(n_156), 
      .B2(n_152), .ZN(n_151));
   AOI21_X1 i_184 (.A(n_155), .B1(n_154), .B2(n_153), .ZN(n_152));
   NAND2_X1 i_185 (.A1(multiplier_M[1]), .A2(accumulator_A[1]), .ZN(n_153));
   NAND2_X1 i_186 (.A1(multiplier_M[0]), .A2(accumulator_A[0]), .ZN(n_154));
   NOR2_X1 i_187 (.A1(multiplier_M[1]), .A2(accumulator_A[1]), .ZN(n_155));
   INV_X1 i_188 (.A(n_157), .ZN(n_156));
   NAND2_X1 i_189 (.A1(multiplier_M[2]), .A2(accumulator_A[2]), .ZN(n_157));
   NAND2_X1 i_190 (.A1(n_164), .A2(n_161), .ZN(n_158));
   NOR2_X1 i_191 (.A1(multiplier_M[28]), .A2(accumulator_A[28]), .ZN(n_159));
   NAND2_X1 i_192 (.A1(n_166), .A2(n_163), .ZN(n_160));
   INV_X1 i_193 (.A(accumulator_A[3]), .ZN(n_161));
   INV_X1 i_194 (.A(accumulator_A[27]), .ZN(n_162));
   INV_X1 i_195 (.A(accumulator_A[30]), .ZN(n_163));
   INV_X1 i_196 (.A(multiplier_M[3]), .ZN(n_164));
   INV_X1 i_197 (.A(multiplier_M[27]), .ZN(n_165));
   INV_X1 i_198 (.A(multiplier_M[30]), .ZN(n_166));
endmodule

module datapath__0_2(accumulator_A, p_0, multiplier_M);
   input [31:0]accumulator_A;
   output [31:0]p_0;
   input [31:0]multiplier_M;

   INV_X1 i_0 (.A(accumulator_A[0]), .ZN(n_0));
   NAND2_X1 i_1 (.A1(n_0), .A2(multiplier_M[0]), .ZN(n_1));
   OAI21_X1 i_2 (.A(n_1), .B1(multiplier_M[0]), .B2(n_0), .ZN(p_0[0]));
   XNOR2_X1 i_3 (.A(accumulator_A[1]), .B(multiplier_M[1]), .ZN(n_2));
   XOR2_X1 i_4 (.A(n_2), .B(n_1), .Z(p_0[1]));
   INV_X1 i_5 (.A(n_1), .ZN(n_3));
   INV_X1 i_6 (.A(accumulator_A[1]), .ZN(n_4));
   AOI22_X1 i_7 (.A1(n_2), .A2(n_3), .B1(n_4), .B2(multiplier_M[1]), .ZN(n_5));
   XOR2_X1 i_8 (.A(multiplier_M[2]), .B(accumulator_A[2]), .Z(n_6));
   XNOR2_X1 i_9 (.A(n_5), .B(n_6), .ZN(p_0[2]));
   INV_X1 i_10 (.A(multiplier_M[2]), .ZN(n_7));
   OAI22_X1 i_11 (.A1(n_5), .A2(n_6), .B1(n_7), .B2(accumulator_A[2]), .ZN(n_8));
   XNOR2_X1 i_12 (.A(accumulator_A[3]), .B(multiplier_M[3]), .ZN(n_9));
   XNOR2_X1 i_13 (.A(n_8), .B(n_9), .ZN(p_0[3]));
   INV_X1 i_14 (.A(accumulator_A[3]), .ZN(n_10));
   AOI22_X1 i_15 (.A1(n_8), .A2(n_9), .B1(n_10), .B2(multiplier_M[3]), .ZN(n_11));
   XOR2_X1 i_16 (.A(accumulator_A[4]), .B(multiplier_M[4]), .Z(n_12));
   XNOR2_X1 i_17 (.A(n_11), .B(n_12), .ZN(p_0[4]));
   INV_X1 i_18 (.A(multiplier_M[4]), .ZN(n_13));
   OAI22_X1 i_19 (.A1(n_11), .A2(n_12), .B1(n_13), .B2(accumulator_A[4]), 
      .ZN(n_14));
   XNOR2_X1 i_20 (.A(accumulator_A[5]), .B(multiplier_M[5]), .ZN(n_15));
   XNOR2_X1 i_21 (.A(n_14), .B(n_15), .ZN(p_0[5]));
   INV_X1 i_22 (.A(accumulator_A[5]), .ZN(n_16));
   AOI22_X1 i_23 (.A1(n_14), .A2(n_15), .B1(n_16), .B2(multiplier_M[5]), 
      .ZN(n_17));
   XOR2_X1 i_24 (.A(accumulator_A[6]), .B(multiplier_M[6]), .Z(n_18));
   XNOR2_X1 i_25 (.A(n_17), .B(n_18), .ZN(p_0[6]));
   INV_X1 i_26 (.A(multiplier_M[6]), .ZN(n_19));
   OAI22_X1 i_27 (.A1(n_17), .A2(n_18), .B1(n_19), .B2(accumulator_A[6]), 
      .ZN(n_20));
   XNOR2_X1 i_28 (.A(accumulator_A[7]), .B(multiplier_M[7]), .ZN(n_21));
   XNOR2_X1 i_29 (.A(n_20), .B(n_21), .ZN(p_0[7]));
   INV_X1 i_30 (.A(accumulator_A[7]), .ZN(n_22));
   AOI22_X1 i_31 (.A1(n_20), .A2(n_21), .B1(n_22), .B2(multiplier_M[7]), 
      .ZN(n_23));
   XOR2_X1 i_32 (.A(accumulator_A[8]), .B(multiplier_M[8]), .Z(n_24));
   XNOR2_X1 i_33 (.A(n_23), .B(n_24), .ZN(p_0[8]));
   INV_X1 i_34 (.A(multiplier_M[8]), .ZN(n_25));
   OAI22_X1 i_35 (.A1(n_23), .A2(n_24), .B1(n_25), .B2(accumulator_A[8]), 
      .ZN(n_26));
   XNOR2_X1 i_36 (.A(accumulator_A[9]), .B(multiplier_M[9]), .ZN(n_27));
   XNOR2_X1 i_37 (.A(n_26), .B(n_27), .ZN(p_0[9]));
   INV_X1 i_38 (.A(accumulator_A[9]), .ZN(n_28));
   AOI22_X1 i_39 (.A1(n_26), .A2(n_27), .B1(n_28), .B2(multiplier_M[9]), 
      .ZN(n_29));
   XOR2_X1 i_40 (.A(accumulator_A[10]), .B(multiplier_M[10]), .Z(n_30));
   XNOR2_X1 i_41 (.A(n_29), .B(n_30), .ZN(p_0[10]));
   INV_X1 i_42 (.A(multiplier_M[10]), .ZN(n_31));
   OAI22_X1 i_43 (.A1(n_29), .A2(n_30), .B1(n_31), .B2(accumulator_A[10]), 
      .ZN(n_32));
   XNOR2_X1 i_44 (.A(accumulator_A[11]), .B(multiplier_M[11]), .ZN(n_33));
   XNOR2_X1 i_45 (.A(n_32), .B(n_33), .ZN(p_0[11]));
   INV_X1 i_46 (.A(accumulator_A[11]), .ZN(n_34));
   AOI22_X1 i_47 (.A1(n_32), .A2(n_33), .B1(n_34), .B2(multiplier_M[11]), 
      .ZN(n_35));
   XOR2_X1 i_48 (.A(accumulator_A[12]), .B(multiplier_M[12]), .Z(n_36));
   XNOR2_X1 i_49 (.A(n_35), .B(n_36), .ZN(p_0[12]));
   INV_X1 i_50 (.A(multiplier_M[12]), .ZN(n_37));
   OAI22_X1 i_51 (.A1(n_35), .A2(n_36), .B1(n_37), .B2(accumulator_A[12]), 
      .ZN(n_38));
   XNOR2_X1 i_52 (.A(accumulator_A[13]), .B(multiplier_M[13]), .ZN(n_39));
   XNOR2_X1 i_53 (.A(n_38), .B(n_39), .ZN(p_0[13]));
   INV_X1 i_54 (.A(accumulator_A[13]), .ZN(n_40));
   AOI22_X1 i_55 (.A1(n_38), .A2(n_39), .B1(n_40), .B2(multiplier_M[13]), 
      .ZN(n_41));
   XOR2_X1 i_56 (.A(accumulator_A[14]), .B(multiplier_M[14]), .Z(n_42));
   XNOR2_X1 i_57 (.A(n_41), .B(n_42), .ZN(p_0[14]));
   INV_X1 i_58 (.A(multiplier_M[14]), .ZN(n_43));
   OAI22_X1 i_59 (.A1(n_41), .A2(n_42), .B1(n_43), .B2(accumulator_A[14]), 
      .ZN(n_44));
   XNOR2_X1 i_60 (.A(accumulator_A[15]), .B(multiplier_M[15]), .ZN(n_45));
   XNOR2_X1 i_61 (.A(n_44), .B(n_45), .ZN(p_0[15]));
   INV_X1 i_62 (.A(accumulator_A[15]), .ZN(n_46));
   AOI22_X1 i_63 (.A1(n_44), .A2(n_45), .B1(n_46), .B2(multiplier_M[15]), 
      .ZN(n_47));
   XOR2_X1 i_64 (.A(accumulator_A[16]), .B(multiplier_M[16]), .Z(n_48));
   XNOR2_X1 i_65 (.A(n_47), .B(n_48), .ZN(p_0[16]));
   INV_X1 i_66 (.A(multiplier_M[16]), .ZN(n_49));
   OAI22_X1 i_67 (.A1(n_47), .A2(n_48), .B1(n_49), .B2(accumulator_A[16]), 
      .ZN(n_50));
   XNOR2_X1 i_68 (.A(accumulator_A[17]), .B(multiplier_M[17]), .ZN(n_51));
   XNOR2_X1 i_69 (.A(n_50), .B(n_51), .ZN(p_0[17]));
   INV_X1 i_70 (.A(accumulator_A[17]), .ZN(n_52));
   AOI22_X1 i_71 (.A1(n_50), .A2(n_51), .B1(n_52), .B2(multiplier_M[17]), 
      .ZN(n_53));
   XOR2_X1 i_72 (.A(accumulator_A[18]), .B(multiplier_M[18]), .Z(n_54));
   XNOR2_X1 i_73 (.A(n_53), .B(n_54), .ZN(p_0[18]));
   INV_X1 i_74 (.A(multiplier_M[18]), .ZN(n_55));
   OAI22_X1 i_75 (.A1(n_53), .A2(n_54), .B1(n_55), .B2(accumulator_A[18]), 
      .ZN(n_56));
   XNOR2_X1 i_76 (.A(accumulator_A[19]), .B(multiplier_M[19]), .ZN(n_57));
   XNOR2_X1 i_77 (.A(n_56), .B(n_57), .ZN(p_0[19]));
   INV_X1 i_78 (.A(accumulator_A[19]), .ZN(n_58));
   AOI22_X1 i_79 (.A1(n_56), .A2(n_57), .B1(n_58), .B2(multiplier_M[19]), 
      .ZN(n_59));
   XOR2_X1 i_80 (.A(accumulator_A[20]), .B(multiplier_M[20]), .Z(n_60));
   XNOR2_X1 i_81 (.A(n_59), .B(n_60), .ZN(p_0[20]));
   INV_X1 i_82 (.A(multiplier_M[20]), .ZN(n_61));
   OAI22_X1 i_83 (.A1(n_59), .A2(n_60), .B1(n_61), .B2(accumulator_A[20]), 
      .ZN(n_62));
   XNOR2_X1 i_84 (.A(accumulator_A[21]), .B(multiplier_M[21]), .ZN(n_63));
   XNOR2_X1 i_85 (.A(n_62), .B(n_63), .ZN(p_0[21]));
   INV_X1 i_86 (.A(accumulator_A[21]), .ZN(n_64));
   AOI22_X1 i_87 (.A1(n_62), .A2(n_63), .B1(n_64), .B2(multiplier_M[21]), 
      .ZN(n_65));
   XOR2_X1 i_88 (.A(accumulator_A[22]), .B(multiplier_M[22]), .Z(n_66));
   XNOR2_X1 i_89 (.A(n_65), .B(n_66), .ZN(p_0[22]));
   INV_X1 i_90 (.A(multiplier_M[22]), .ZN(n_67));
   OAI22_X1 i_91 (.A1(n_65), .A2(n_66), .B1(n_67), .B2(accumulator_A[22]), 
      .ZN(n_68));
   XNOR2_X1 i_92 (.A(accumulator_A[23]), .B(multiplier_M[23]), .ZN(n_69));
   XNOR2_X1 i_93 (.A(n_68), .B(n_69), .ZN(p_0[23]));
   INV_X1 i_94 (.A(accumulator_A[23]), .ZN(n_70));
   AOI22_X1 i_95 (.A1(n_68), .A2(n_69), .B1(n_70), .B2(multiplier_M[23]), 
      .ZN(n_71));
   XOR2_X1 i_96 (.A(accumulator_A[24]), .B(multiplier_M[24]), .Z(n_72));
   XNOR2_X1 i_97 (.A(n_71), .B(n_72), .ZN(p_0[24]));
   INV_X1 i_98 (.A(multiplier_M[24]), .ZN(n_73));
   OAI22_X1 i_99 (.A1(n_71), .A2(n_72), .B1(n_73), .B2(accumulator_A[24]), 
      .ZN(n_74));
   XNOR2_X1 i_100 (.A(accumulator_A[25]), .B(multiplier_M[25]), .ZN(n_75));
   XNOR2_X1 i_101 (.A(n_74), .B(n_75), .ZN(p_0[25]));
   INV_X1 i_102 (.A(accumulator_A[25]), .ZN(n_76));
   AOI22_X1 i_103 (.A1(n_74), .A2(n_75), .B1(n_76), .B2(multiplier_M[25]), 
      .ZN(n_77));
   XOR2_X1 i_104 (.A(accumulator_A[26]), .B(multiplier_M[26]), .Z(n_78));
   XNOR2_X1 i_105 (.A(n_77), .B(n_78), .ZN(p_0[26]));
   INV_X1 i_106 (.A(multiplier_M[26]), .ZN(n_79));
   OAI22_X1 i_107 (.A1(n_77), .A2(n_78), .B1(n_79), .B2(accumulator_A[26]), 
      .ZN(n_80));
   XNOR2_X1 i_108 (.A(accumulator_A[27]), .B(multiplier_M[27]), .ZN(n_81));
   XNOR2_X1 i_109 (.A(n_80), .B(n_81), .ZN(p_0[27]));
   INV_X1 i_110 (.A(accumulator_A[27]), .ZN(n_82));
   AOI22_X1 i_111 (.A1(n_80), .A2(n_81), .B1(n_82), .B2(multiplier_M[27]), 
      .ZN(n_83));
   XOR2_X1 i_112 (.A(accumulator_A[28]), .B(multiplier_M[28]), .Z(n_84));
   XNOR2_X1 i_113 (.A(n_83), .B(n_84), .ZN(p_0[28]));
   INV_X1 i_114 (.A(multiplier_M[28]), .ZN(n_85));
   OAI22_X1 i_115 (.A1(n_83), .A2(n_84), .B1(n_85), .B2(accumulator_A[28]), 
      .ZN(n_86));
   XNOR2_X1 i_116 (.A(accumulator_A[29]), .B(multiplier_M[29]), .ZN(n_87));
   XNOR2_X1 i_117 (.A(n_86), .B(n_87), .ZN(p_0[29]));
   INV_X1 i_118 (.A(accumulator_A[29]), .ZN(n_88));
   AOI22_X1 i_119 (.A1(n_86), .A2(n_87), .B1(n_88), .B2(multiplier_M[29]), 
      .ZN(n_89));
   INV_X1 i_120 (.A(accumulator_A[30]), .ZN(n_90));
   INV_X1 i_121 (.A(multiplier_M[30]), .ZN(n_91));
   AOI22_X1 i_122 (.A1(n_90), .A2(n_91), .B1(accumulator_A[30]), .B2(
      multiplier_M[30]), .ZN(n_92));
   XNOR2_X1 i_123 (.A(n_89), .B(n_92), .ZN(p_0[30]));
   INV_X1 i_124 (.A(n_89), .ZN(n_93));
   OAI33_X1 i_125 (.A1(n_93), .A2(accumulator_A[30]), .A3(multiplier_M[30]), 
      .B1(n_89), .B2(n_90), .B3(n_91), .ZN(n_94));
   XNOR2_X1 i_126 (.A(n_94), .B(multiplier_M[31]), .ZN(p_0[31]));
endmodule

module datapath__0_6(A, p_0);
   input [31:0]A;
   output [31:0]p_0;

   XOR2_X1 i_0 (.A(A[1]), .B(A[0]), .Z(p_0[1]));
   AND2_X1 i_1 (.A1(n_29), .A2(n_0), .ZN(p_0[2]));
   OAI21_X1 i_2 (.A(A[2]), .B1(A[1]), .B2(A[0]), .ZN(n_0));
   XOR2_X1 i_3 (.A(A[3]), .B(n_29), .Z(p_0[3]));
   XOR2_X1 i_4 (.A(A[4]), .B(n_28), .Z(p_0[4]));
   XOR2_X1 i_5 (.A(A[5]), .B(n_27), .Z(p_0[5]));
   AND2_X1 i_6 (.A1(n_26), .A2(n_1), .ZN(p_0[6]));
   OAI21_X1 i_7 (.A(A[6]), .B1(n_27), .B2(A[5]), .ZN(n_1));
   XOR2_X1 i_8 (.A(A[7]), .B(n_26), .Z(p_0[7]));
   XOR2_X1 i_9 (.A(A[8]), .B(n_25), .Z(p_0[8]));
   AND2_X1 i_10 (.A1(n_24), .A2(n_2), .ZN(p_0[9]));
   OAI21_X1 i_11 (.A(A[9]), .B1(n_25), .B2(A[8]), .ZN(n_2));
   XOR2_X1 i_12 (.A(A[10]), .B(n_24), .Z(p_0[10]));
   XNOR2_X1 i_13 (.A(A[11]), .B(n_23), .ZN(p_0[11]));
   XOR2_X1 i_14 (.A(A[12]), .B(n_22), .Z(p_0[12]));
   XNOR2_X1 i_15 (.A(A[13]), .B(n_21), .ZN(p_0[13]));
   XNOR2_X1 i_16 (.A(A[14]), .B(n_20), .ZN(p_0[14]));
   XOR2_X1 i_17 (.A(A[15]), .B(n_19), .Z(p_0[15]));
   AND2_X1 i_18 (.A1(n_18), .A2(n_3), .ZN(p_0[16]));
   OAI21_X1 i_19 (.A(A[16]), .B1(n_19), .B2(A[15]), .ZN(n_3));
   XOR2_X1 i_20 (.A(A[17]), .B(n_18), .Z(p_0[17]));
   XOR2_X1 i_21 (.A(A[18]), .B(n_17), .Z(p_0[18]));
   XNOR2_X1 i_22 (.A(A[19]), .B(n_16), .ZN(p_0[19]));
   XNOR2_X1 i_23 (.A(A[20]), .B(n_15), .ZN(p_0[20]));
   XNOR2_X1 i_24 (.A(A[21]), .B(n_14), .ZN(p_0[21]));
   XOR2_X1 i_25 (.A(A[22]), .B(n_13), .Z(p_0[22]));
   XOR2_X1 i_26 (.A(A[23]), .B(n_12), .Z(p_0[23]));
   XNOR2_X1 i_27 (.A(A[24]), .B(n_11), .ZN(p_0[24]));
   XNOR2_X1 i_28 (.A(A[25]), .B(n_10), .ZN(p_0[25]));
   XOR2_X1 i_29 (.A(A[26]), .B(n_9), .Z(p_0[26]));
   AND2_X1 i_30 (.A1(n_8), .A2(n_4), .ZN(p_0[27]));
   OAI21_X1 i_31 (.A(A[27]), .B1(n_9), .B2(A[26]), .ZN(n_4));
   XOR2_X1 i_32 (.A(A[28]), .B(n_8), .Z(p_0[28]));
   XNOR2_X1 i_33 (.A(A[29]), .B(n_7), .ZN(p_0[29]));
   XNOR2_X1 i_34 (.A(A[30]), .B(n_6), .ZN(p_0[30]));
   XNOR2_X1 i_35 (.A(A[31]), .B(n_5), .ZN(p_0[31]));
   NOR4_X1 i_36 (.A1(n_8), .A2(A[28]), .A3(A[29]), .A4(A[30]), .ZN(n_5));
   NOR3_X1 i_37 (.A1(n_8), .A2(A[28]), .A3(A[29]), .ZN(n_6));
   NOR2_X1 i_38 (.A1(n_8), .A2(A[28]), .ZN(n_7));
   OR3_X1 i_39 (.A1(n_9), .A2(A[26]), .A3(A[27]), .ZN(n_8));
   NAND2_X1 i_40 (.A1(n_10), .A2(n_33), .ZN(n_9));
   NOR3_X1 i_41 (.A1(n_12), .A2(A[23]), .A3(A[24]), .ZN(n_10));
   NOR2_X1 i_42 (.A1(n_12), .A2(A[23]), .ZN(n_11));
   OR2_X1 i_43 (.A1(n_13), .A2(A[22]), .ZN(n_12));
   NAND2_X1 i_44 (.A1(n_14), .A2(n_32), .ZN(n_13));
   NOR4_X1 i_45 (.A1(n_17), .A2(A[18]), .A3(A[19]), .A4(A[20]), .ZN(n_14));
   NOR3_X1 i_46 (.A1(n_17), .A2(A[18]), .A3(A[19]), .ZN(n_15));
   NOR2_X1 i_47 (.A1(n_17), .A2(A[18]), .ZN(n_16));
   OR2_X1 i_48 (.A1(n_18), .A2(A[17]), .ZN(n_17));
   OR3_X1 i_49 (.A1(n_19), .A2(A[15]), .A3(A[16]), .ZN(n_18));
   NAND2_X1 i_50 (.A1(n_20), .A2(n_31), .ZN(n_19));
   NOR3_X1 i_51 (.A1(n_22), .A2(A[12]), .A3(A[13]), .ZN(n_20));
   NOR2_X1 i_52 (.A1(n_22), .A2(A[12]), .ZN(n_21));
   NAND2_X1 i_53 (.A1(n_23), .A2(n_30), .ZN(n_22));
   NOR2_X1 i_54 (.A1(n_24), .A2(A[10]), .ZN(n_23));
   OR3_X1 i_55 (.A1(n_25), .A2(A[8]), .A3(A[9]), .ZN(n_24));
   OR2_X1 i_56 (.A1(n_26), .A2(A[7]), .ZN(n_25));
   OR3_X1 i_57 (.A1(n_27), .A2(A[5]), .A3(A[6]), .ZN(n_26));
   OR2_X1 i_58 (.A1(n_28), .A2(A[4]), .ZN(n_27));
   OR2_X1 i_59 (.A1(n_29), .A2(A[3]), .ZN(n_28));
   OR3_X1 i_60 (.A1(A[2]), .A2(A[1]), .A3(A[0]), .ZN(n_29));
   INV_X1 i_61 (.A(A[11]), .ZN(n_30));
   INV_X1 i_62 (.A(A[14]), .ZN(n_31));
   INV_X1 i_63 (.A(A[21]), .ZN(n_32));
   INV_X1 i_64 (.A(A[25]), .ZN(n_33));
endmodule

module datapath__0_8(B, p_0);
   input [31:0]B;
   output [31:0]p_0;

   XOR2_X1 i_0 (.A(B[1]), .B(B[0]), .Z(p_0[1]));
   AND2_X1 i_1 (.A1(n_29), .A2(n_0), .ZN(p_0[2]));
   OAI21_X1 i_2 (.A(B[2]), .B1(B[1]), .B2(B[0]), .ZN(n_0));
   XOR2_X1 i_3 (.A(B[3]), .B(n_29), .Z(p_0[3]));
   XOR2_X1 i_4 (.A(B[4]), .B(n_28), .Z(p_0[4]));
   XOR2_X1 i_5 (.A(B[5]), .B(n_27), .Z(p_0[5]));
   AND2_X1 i_6 (.A1(n_26), .A2(n_1), .ZN(p_0[6]));
   OAI21_X1 i_7 (.A(B[6]), .B1(n_27), .B2(B[5]), .ZN(n_1));
   XOR2_X1 i_8 (.A(B[7]), .B(n_26), .Z(p_0[7]));
   XOR2_X1 i_9 (.A(B[8]), .B(n_25), .Z(p_0[8]));
   AND2_X1 i_10 (.A1(n_24), .A2(n_2), .ZN(p_0[9]));
   OAI21_X1 i_11 (.A(B[9]), .B1(n_25), .B2(B[8]), .ZN(n_2));
   XOR2_X1 i_12 (.A(B[10]), .B(n_24), .Z(p_0[10]));
   XNOR2_X1 i_13 (.A(B[11]), .B(n_23), .ZN(p_0[11]));
   XOR2_X1 i_14 (.A(B[12]), .B(n_22), .Z(p_0[12]));
   XNOR2_X1 i_15 (.A(B[13]), .B(n_21), .ZN(p_0[13]));
   XNOR2_X1 i_16 (.A(B[14]), .B(n_20), .ZN(p_0[14]));
   XOR2_X1 i_17 (.A(B[15]), .B(n_19), .Z(p_0[15]));
   AND2_X1 i_18 (.A1(n_18), .A2(n_3), .ZN(p_0[16]));
   OAI21_X1 i_19 (.A(B[16]), .B1(n_19), .B2(B[15]), .ZN(n_3));
   XOR2_X1 i_20 (.A(B[17]), .B(n_18), .Z(p_0[17]));
   XOR2_X1 i_21 (.A(B[18]), .B(n_17), .Z(p_0[18]));
   XNOR2_X1 i_22 (.A(B[19]), .B(n_16), .ZN(p_0[19]));
   XNOR2_X1 i_23 (.A(B[20]), .B(n_15), .ZN(p_0[20]));
   XNOR2_X1 i_24 (.A(B[21]), .B(n_14), .ZN(p_0[21]));
   XOR2_X1 i_25 (.A(B[22]), .B(n_13), .Z(p_0[22]));
   XOR2_X1 i_26 (.A(B[23]), .B(n_12), .Z(p_0[23]));
   XNOR2_X1 i_27 (.A(B[24]), .B(n_11), .ZN(p_0[24]));
   XNOR2_X1 i_28 (.A(B[25]), .B(n_10), .ZN(p_0[25]));
   XOR2_X1 i_29 (.A(B[26]), .B(n_9), .Z(p_0[26]));
   AND2_X1 i_30 (.A1(n_8), .A2(n_4), .ZN(p_0[27]));
   OAI21_X1 i_31 (.A(B[27]), .B1(n_9), .B2(B[26]), .ZN(n_4));
   XOR2_X1 i_32 (.A(B[28]), .B(n_8), .Z(p_0[28]));
   XNOR2_X1 i_33 (.A(B[29]), .B(n_7), .ZN(p_0[29]));
   XNOR2_X1 i_34 (.A(B[30]), .B(n_6), .ZN(p_0[30]));
   XNOR2_X1 i_35 (.A(B[31]), .B(n_5), .ZN(p_0[31]));
   NOR4_X1 i_36 (.A1(n_8), .A2(B[28]), .A3(B[29]), .A4(B[30]), .ZN(n_5));
   NOR3_X1 i_37 (.A1(n_8), .A2(B[28]), .A3(B[29]), .ZN(n_6));
   NOR2_X1 i_38 (.A1(n_8), .A2(B[28]), .ZN(n_7));
   OR3_X1 i_39 (.A1(n_9), .A2(B[26]), .A3(B[27]), .ZN(n_8));
   NAND2_X1 i_40 (.A1(n_10), .A2(n_33), .ZN(n_9));
   NOR3_X1 i_41 (.A1(n_12), .A2(B[23]), .A3(B[24]), .ZN(n_10));
   NOR2_X1 i_42 (.A1(n_12), .A2(B[23]), .ZN(n_11));
   OR2_X1 i_43 (.A1(n_13), .A2(B[22]), .ZN(n_12));
   NAND2_X1 i_44 (.A1(n_14), .A2(n_32), .ZN(n_13));
   NOR4_X1 i_45 (.A1(n_17), .A2(B[18]), .A3(B[19]), .A4(B[20]), .ZN(n_14));
   NOR3_X1 i_46 (.A1(n_17), .A2(B[18]), .A3(B[19]), .ZN(n_15));
   NOR2_X1 i_47 (.A1(n_17), .A2(B[18]), .ZN(n_16));
   OR2_X1 i_48 (.A1(n_18), .A2(B[17]), .ZN(n_17));
   OR3_X1 i_49 (.A1(n_19), .A2(B[15]), .A3(B[16]), .ZN(n_18));
   NAND2_X1 i_50 (.A1(n_20), .A2(n_31), .ZN(n_19));
   NOR3_X1 i_51 (.A1(n_22), .A2(B[12]), .A3(B[13]), .ZN(n_20));
   NOR2_X1 i_52 (.A1(n_22), .A2(B[12]), .ZN(n_21));
   NAND2_X1 i_53 (.A1(n_23), .A2(n_30), .ZN(n_22));
   NOR2_X1 i_54 (.A1(n_24), .A2(B[10]), .ZN(n_23));
   OR3_X1 i_55 (.A1(n_25), .A2(B[8]), .A3(B[9]), .ZN(n_24));
   OR2_X1 i_56 (.A1(n_26), .A2(B[7]), .ZN(n_25));
   OR3_X1 i_57 (.A1(n_27), .A2(B[5]), .A3(B[6]), .ZN(n_26));
   OR2_X1 i_58 (.A1(n_28), .A2(B[4]), .ZN(n_27));
   OR2_X1 i_59 (.A1(n_29), .A2(B[3]), .ZN(n_28));
   OR3_X1 i_60 (.A1(B[2]), .A2(B[1]), .A3(B[0]), .ZN(n_29));
   INV_X1 i_61 (.A(B[11]), .ZN(n_30));
   INV_X1 i_62 (.A(B[14]), .ZN(n_31));
   INV_X1 i_63 (.A(B[21]), .ZN(n_32));
   INV_X1 i_64 (.A(B[25]), .ZN(n_33));
endmodule

module datapath__0_15(Res_imm, p_0);
   input [63:0]Res_imm;
   output [63:0]p_0;

   XOR2_X1 i_0 (.A(Res_imm[1]), .B(Res_imm[0]), .Z(p_0[1]));
   AND2_X1 i_1 (.A1(n_60), .A2(n_0), .ZN(p_0[2]));
   OAI21_X1 i_2 (.A(Res_imm[2]), .B1(Res_imm[1]), .B2(Res_imm[0]), .ZN(n_0));
   XOR2_X1 i_3 (.A(Res_imm[3]), .B(n_60), .Z(p_0[3]));
   XOR2_X1 i_4 (.A(Res_imm[4]), .B(n_59), .Z(p_0[4]));
   XOR2_X1 i_5 (.A(Res_imm[5]), .B(n_58), .Z(p_0[5]));
   AND2_X1 i_6 (.A1(n_57), .A2(n_1), .ZN(p_0[6]));
   OAI21_X1 i_7 (.A(Res_imm[6]), .B1(n_58), .B2(Res_imm[5]), .ZN(n_1));
   XOR2_X1 i_8 (.A(Res_imm[7]), .B(n_57), .Z(p_0[7]));
   XOR2_X1 i_9 (.A(Res_imm[8]), .B(n_56), .Z(p_0[8]));
   AND2_X1 i_10 (.A1(n_55), .A2(n_2), .ZN(p_0[9]));
   OAI21_X1 i_11 (.A(Res_imm[9]), .B1(n_56), .B2(Res_imm[8]), .ZN(n_2));
   XOR2_X1 i_12 (.A(Res_imm[10]), .B(n_55), .Z(p_0[10]));
   XNOR2_X1 i_13 (.A(Res_imm[11]), .B(n_54), .ZN(p_0[11]));
   XOR2_X1 i_14 (.A(Res_imm[12]), .B(n_53), .Z(p_0[12]));
   XNOR2_X1 i_15 (.A(Res_imm[13]), .B(n_52), .ZN(p_0[13]));
   XOR2_X1 i_16 (.A(Res_imm[14]), .B(n_51), .Z(p_0[14]));
   AND2_X1 i_17 (.A1(n_50), .A2(n_3), .ZN(p_0[15]));
   OAI21_X1 i_18 (.A(Res_imm[15]), .B1(n_51), .B2(Res_imm[14]), .ZN(n_3));
   XOR2_X1 i_19 (.A(Res_imm[16]), .B(n_50), .Z(p_0[16]));
   XOR2_X1 i_20 (.A(Res_imm[17]), .B(n_49), .Z(p_0[17]));
   XOR2_X1 i_21 (.A(Res_imm[18]), .B(n_48), .Z(p_0[18]));
   XNOR2_X1 i_22 (.A(Res_imm[19]), .B(n_47), .ZN(p_0[19]));
   XNOR2_X1 i_23 (.A(Res_imm[20]), .B(n_46), .ZN(p_0[20]));
   XNOR2_X1 i_24 (.A(Res_imm[21]), .B(n_45), .ZN(p_0[21]));
   XOR2_X1 i_25 (.A(Res_imm[22]), .B(n_44), .Z(p_0[22]));
   XOR2_X1 i_26 (.A(Res_imm[23]), .B(n_43), .Z(p_0[23]));
   XNOR2_X1 i_27 (.A(Res_imm[24]), .B(n_42), .ZN(p_0[24]));
   XNOR2_X1 i_28 (.A(Res_imm[25]), .B(n_41), .ZN(p_0[25]));
   XNOR2_X1 i_29 (.A(Res_imm[26]), .B(n_40), .ZN(p_0[26]));
   XOR2_X1 i_30 (.A(Res_imm[27]), .B(n_39), .Z(p_0[27]));
   XOR2_X1 i_31 (.A(Res_imm[28]), .B(n_38), .Z(p_0[28]));
   XNOR2_X1 i_32 (.A(Res_imm[29]), .B(n_37), .ZN(p_0[29]));
   XNOR2_X1 i_33 (.A(Res_imm[30]), .B(n_36), .ZN(p_0[30]));
   XNOR2_X1 i_34 (.A(Res_imm[31]), .B(n_35), .ZN(p_0[31]));
   XOR2_X1 i_35 (.A(Res_imm[32]), .B(n_34), .Z(p_0[32]));
   XOR2_X1 i_36 (.A(Res_imm[33]), .B(n_33), .Z(p_0[33]));
   XNOR2_X1 i_37 (.A(Res_imm[34]), .B(n_32), .ZN(p_0[34]));
   XNOR2_X1 i_38 (.A(Res_imm[35]), .B(n_31), .ZN(p_0[35]));
   XNOR2_X1 i_39 (.A(Res_imm[36]), .B(n_30), .ZN(p_0[36]));
   XOR2_X1 i_40 (.A(Res_imm[37]), .B(n_29), .Z(p_0[37]));
   XOR2_X1 i_41 (.A(Res_imm[38]), .B(n_28), .Z(p_0[38]));
   XNOR2_X1 i_42 (.A(Res_imm[39]), .B(n_27), .ZN(p_0[39]));
   XNOR2_X1 i_43 (.A(Res_imm[40]), .B(n_26), .ZN(p_0[40]));
   XOR2_X1 i_44 (.A(Res_imm[41]), .B(n_25), .Z(p_0[41]));
   XNOR2_X1 i_45 (.A(Res_imm[42]), .B(n_24), .ZN(p_0[42]));
   XOR2_X1 i_46 (.A(Res_imm[43]), .B(n_23), .Z(p_0[43]));
   AND2_X1 i_47 (.A1(n_22), .A2(n_4), .ZN(p_0[44]));
   OAI21_X1 i_48 (.A(Res_imm[44]), .B1(n_23), .B2(Res_imm[43]), .ZN(n_4));
   XOR2_X1 i_49 (.A(Res_imm[45]), .B(n_22), .Z(p_0[45]));
   XOR2_X1 i_50 (.A(Res_imm[46]), .B(n_21), .Z(p_0[46]));
   XOR2_X1 i_51 (.A(Res_imm[47]), .B(n_20), .Z(p_0[47]));
   XOR2_X1 i_52 (.A(Res_imm[48]), .B(n_19), .Z(p_0[48]));
   XNOR2_X1 i_53 (.A(Res_imm[49]), .B(n_18), .ZN(p_0[49]));
   XNOR2_X1 i_54 (.A(Res_imm[50]), .B(n_17), .ZN(p_0[50]));
   XNOR2_X1 i_55 (.A(Res_imm[51]), .B(n_16), .ZN(p_0[51]));
   XOR2_X1 i_56 (.A(Res_imm[52]), .B(n_15), .Z(p_0[52]));
   XNOR2_X1 i_57 (.A(Res_imm[53]), .B(n_14), .ZN(p_0[53]));
   XNOR2_X1 i_58 (.A(Res_imm[54]), .B(n_13), .ZN(p_0[54]));
   XNOR2_X1 i_59 (.A(Res_imm[55]), .B(n_12), .ZN(p_0[55]));
   XOR2_X1 i_60 (.A(Res_imm[56]), .B(n_11), .Z(p_0[56]));
   AND2_X1 i_61 (.A1(n_10), .A2(n_5), .ZN(p_0[57]));
   OAI21_X1 i_62 (.A(Res_imm[57]), .B1(n_11), .B2(Res_imm[56]), .ZN(n_5));
   XOR2_X1 i_63 (.A(Res_imm[58]), .B(n_10), .Z(p_0[58]));
   XNOR2_X1 i_64 (.A(Res_imm[59]), .B(n_9), .ZN(p_0[59]));
   XNOR2_X1 i_65 (.A(Res_imm[60]), .B(n_8), .ZN(p_0[60]));
   XOR2_X1 i_66 (.A(Res_imm[61]), .B(n_7), .Z(p_0[61]));
   XNOR2_X1 i_67 (.A(Res_imm[63]), .B(n_6), .ZN(p_0[62]));
   NOR2_X1 i_68 (.A1(Res_imm[63]), .A2(n_6), .ZN(p_0[63]));
   NOR2_X1 i_69 (.A1(n_7), .A2(Res_imm[61]), .ZN(n_6));
   NAND2_X1 i_70 (.A1(n_8), .A2(n_71), .ZN(n_7));
   NOR3_X1 i_71 (.A1(n_10), .A2(Res_imm[58]), .A3(Res_imm[59]), .ZN(n_8));
   NOR2_X1 i_72 (.A1(n_10), .A2(Res_imm[58]), .ZN(n_9));
   OR3_X1 i_73 (.A1(n_11), .A2(Res_imm[56]), .A3(Res_imm[57]), .ZN(n_10));
   NAND2_X1 i_74 (.A1(n_12), .A2(n_70), .ZN(n_11));
   NOR4_X1 i_75 (.A1(n_15), .A2(Res_imm[52]), .A3(Res_imm[53]), .A4(Res_imm[54]), 
      .ZN(n_12));
   NOR3_X1 i_76 (.A1(n_15), .A2(Res_imm[52]), .A3(Res_imm[53]), .ZN(n_13));
   NOR2_X1 i_77 (.A1(n_15), .A2(Res_imm[52]), .ZN(n_14));
   NAND2_X1 i_78 (.A1(n_16), .A2(n_69), .ZN(n_15));
   NOR4_X1 i_79 (.A1(n_19), .A2(Res_imm[48]), .A3(Res_imm[49]), .A4(Res_imm[50]), 
      .ZN(n_16));
   NOR3_X1 i_80 (.A1(n_19), .A2(Res_imm[48]), .A3(Res_imm[49]), .ZN(n_17));
   NOR2_X1 i_81 (.A1(n_19), .A2(Res_imm[48]), .ZN(n_18));
   OR2_X1 i_82 (.A1(n_20), .A2(Res_imm[47]), .ZN(n_19));
   OR2_X1 i_83 (.A1(n_21), .A2(Res_imm[46]), .ZN(n_20));
   OR2_X1 i_84 (.A1(n_22), .A2(Res_imm[45]), .ZN(n_21));
   OR3_X1 i_85 (.A1(n_23), .A2(Res_imm[43]), .A3(Res_imm[44]), .ZN(n_22));
   NAND2_X1 i_86 (.A1(n_24), .A2(n_68), .ZN(n_23));
   NOR2_X1 i_87 (.A1(n_25), .A2(Res_imm[41]), .ZN(n_24));
   NAND2_X1 i_88 (.A1(n_26), .A2(n_67), .ZN(n_25));
   NOR3_X1 i_89 (.A1(n_28), .A2(Res_imm[38]), .A3(Res_imm[39]), .ZN(n_26));
   NOR2_X1 i_90 (.A1(n_28), .A2(Res_imm[38]), .ZN(n_27));
   OR2_X1 i_91 (.A1(n_29), .A2(Res_imm[37]), .ZN(n_28));
   NAND2_X1 i_92 (.A1(n_30), .A2(n_66), .ZN(n_29));
   NOR4_X1 i_93 (.A1(n_33), .A2(Res_imm[33]), .A3(Res_imm[34]), .A4(Res_imm[35]), 
      .ZN(n_30));
   NOR3_X1 i_94 (.A1(n_33), .A2(Res_imm[33]), .A3(Res_imm[34]), .ZN(n_31));
   NOR2_X1 i_95 (.A1(n_33), .A2(Res_imm[33]), .ZN(n_32));
   OR2_X1 i_96 (.A1(n_34), .A2(Res_imm[32]), .ZN(n_33));
   NAND2_X1 i_97 (.A1(n_35), .A2(n_65), .ZN(n_34));
   NOR4_X1 i_98 (.A1(n_38), .A2(Res_imm[28]), .A3(Res_imm[29]), .A4(Res_imm[30]), 
      .ZN(n_35));
   NOR3_X1 i_99 (.A1(n_38), .A2(Res_imm[28]), .A3(Res_imm[29]), .ZN(n_36));
   NOR2_X1 i_100 (.A1(n_38), .A2(Res_imm[28]), .ZN(n_37));
   OR2_X1 i_101 (.A1(n_39), .A2(Res_imm[27]), .ZN(n_38));
   NAND2_X1 i_102 (.A1(n_40), .A2(n_64), .ZN(n_39));
   NOR4_X1 i_103 (.A1(n_43), .A2(Res_imm[23]), .A3(Res_imm[24]), .A4(Res_imm[25]), 
      .ZN(n_40));
   NOR3_X1 i_104 (.A1(n_43), .A2(Res_imm[23]), .A3(Res_imm[24]), .ZN(n_41));
   NOR2_X1 i_105 (.A1(n_43), .A2(Res_imm[23]), .ZN(n_42));
   OR2_X1 i_106 (.A1(n_44), .A2(Res_imm[22]), .ZN(n_43));
   NAND2_X1 i_107 (.A1(n_45), .A2(n_63), .ZN(n_44));
   NOR4_X1 i_108 (.A1(n_48), .A2(Res_imm[18]), .A3(Res_imm[19]), .A4(Res_imm[20]), 
      .ZN(n_45));
   NOR3_X1 i_109 (.A1(n_48), .A2(Res_imm[18]), .A3(Res_imm[19]), .ZN(n_46));
   NOR2_X1 i_110 (.A1(n_48), .A2(Res_imm[18]), .ZN(n_47));
   OR2_X1 i_111 (.A1(n_49), .A2(Res_imm[17]), .ZN(n_48));
   OR2_X1 i_112 (.A1(n_50), .A2(Res_imm[16]), .ZN(n_49));
   OR3_X1 i_113 (.A1(n_51), .A2(Res_imm[14]), .A3(Res_imm[15]), .ZN(n_50));
   NAND2_X1 i_114 (.A1(n_52), .A2(n_62), .ZN(n_51));
   NOR2_X1 i_115 (.A1(n_53), .A2(Res_imm[12]), .ZN(n_52));
   NAND2_X1 i_116 (.A1(n_54), .A2(n_61), .ZN(n_53));
   NOR2_X1 i_117 (.A1(n_55), .A2(Res_imm[10]), .ZN(n_54));
   OR3_X1 i_118 (.A1(n_56), .A2(Res_imm[8]), .A3(Res_imm[9]), .ZN(n_55));
   OR2_X1 i_119 (.A1(n_57), .A2(Res_imm[7]), .ZN(n_56));
   OR3_X1 i_120 (.A1(n_58), .A2(Res_imm[5]), .A3(Res_imm[6]), .ZN(n_57));
   OR2_X1 i_121 (.A1(n_59), .A2(Res_imm[4]), .ZN(n_58));
   OR2_X1 i_122 (.A1(n_60), .A2(Res_imm[3]), .ZN(n_59));
   OR3_X1 i_123 (.A1(Res_imm[2]), .A2(Res_imm[1]), .A3(Res_imm[0]), .ZN(n_60));
   INV_X1 i_124 (.A(Res_imm[11]), .ZN(n_61));
   INV_X1 i_125 (.A(Res_imm[13]), .ZN(n_62));
   INV_X1 i_126 (.A(Res_imm[21]), .ZN(n_63));
   INV_X1 i_127 (.A(Res_imm[26]), .ZN(n_64));
   INV_X1 i_128 (.A(Res_imm[31]), .ZN(n_65));
   INV_X1 i_129 (.A(Res_imm[36]), .ZN(n_66));
   INV_X1 i_130 (.A(Res_imm[40]), .ZN(n_67));
   INV_X1 i_131 (.A(Res_imm[42]), .ZN(n_68));
   INV_X1 i_132 (.A(Res_imm[51]), .ZN(n_69));
   INV_X1 i_133 (.A(Res_imm[55]), .ZN(n_70));
   INV_X1 i_134 (.A(Res_imm[60]), .ZN(n_71));
endmodule

module boothAlgo(Res, OVF, A, B, clk, reset, enable);
   output [63:0]Res;
   output OVF;
   input [31:0]A;
   input [31:0]B;
   input clk;
   input reset;
   input enable;

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
   wire n_0_73;
   wire n_0_74;
   wire n_0_75;
   wire n_0_76;
   wire n_0_77;
   wire n_0_78;
   wire n_0_79;
   wire n_0_80;
   wire n_0_81;
   wire n_0_82;
   wire n_0_83;
   wire n_0_84;
   wire n_0_85;
   wire n_0_86;
   wire n_0_87;
   wire n_0_88;
   wire n_0_89;
   wire n_0_90;
   wire n_0_91;
   wire n_0_92;
   wire n_0_93;
   wire n_0_94;
   wire n_0_95;
   wire n_0_96;
   wire n_0_97;
   wire n_0_98;
   wire n_0_99;
   wire n_0_100;
   wire n_0_101;
   wire n_0_102;
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
   wire n_0_169;
   wire n_0_170;
   wire n_0_171;
   wire n_0_172;
   wire n_0_173;
   wire n_0_174;
   wire n_0_175;
   wire n_0_176;
   wire n_0_177;
   wire n_0_178;
   wire n_0_179;
   wire n_0_180;
   wire n_0_181;
   wire n_0_182;
   wire n_0_183;
   wire n_0_184;
   wire n_0_185;
   wire n_0_186;
   wire n_0_187;
   wire n_0_188;
   wire n_0_189;
   wire n_0_190;
   wire [1:0]isNeg;
   wire [31:0]accumulator_A;
   wire [31:0]multiplier_M;
   wire [32:0]multiplicand_Q;
   wire ready;
   wire n_0_191;
   wire [4:0]counter;
   wire n_0_0;
   wire n_0_1;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire [4:0]counter_in;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_192;
   wire n_0_193;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire [32:0]multiplicand_in;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_194;
   wire n_0_195;
   wire n_0_0_67;
   wire n_0_196;
   wire n_0_0_68;
   wire n_0_197;
   wire n_0_0_69;
   wire n_0_198;
   wire n_0_0_70;
   wire n_0_199;
   wire n_0_0_71;
   wire n_0_200;
   wire n_0_0_72;
   wire n_0_201;
   wire n_0_0_73;
   wire n_0_202;
   wire n_0_0_74;
   wire n_0_203;
   wire n_0_0_75;
   wire n_0_204;
   wire n_0_0_76;
   wire n_0_205;
   wire n_0_0_77;
   wire n_0_206;
   wire n_0_0_78;
   wire n_0_207;
   wire n_0_0_79;
   wire n_0_208;
   wire n_0_0_80;
   wire n_0_209;
   wire n_0_0_81;
   wire n_0_210;
   wire n_0_0_82;
   wire n_0_211;
   wire n_0_0_83;
   wire n_0_212;
   wire n_0_0_84;
   wire n_0_213;
   wire n_0_0_85;
   wire n_0_214;
   wire n_0_0_86;
   wire n_0_215;
   wire n_0_0_87;
   wire n_0_216;
   wire n_0_0_88;
   wire n_0_217;
   wire n_0_0_89;
   wire n_0_218;
   wire n_0_0_90;
   wire n_0_219;
   wire n_0_0_91;
   wire n_0_220;
   wire n_0_0_92;
   wire n_0_221;
   wire n_0_0_93;
   wire n_0_222;
   wire n_0_0_94;
   wire n_0_223;
   wire n_0_0_95;
   wire n_0_224;
   wire n_0_0_96;
   wire n_0_0_97;
   wire n_0_0_98;
   wire n_0_225;
   wire n_0_0_100;
   wire n_0_226;
   wire n_0_0_101;
   wire n_0_227;
   wire n_0_0_102;
   wire n_0_228;
   wire n_0_0_103;
   wire n_0_229;
   wire n_0_0_104;
   wire n_0_230;
   wire n_0_0_105;
   wire n_0_231;
   wire n_0_0_106;
   wire n_0_232;
   wire n_0_0_107;
   wire n_0_233;
   wire n_0_0_108;
   wire n_0_235;
   wire n_0_0_110;
   wire n_0_236;
   wire n_0_0_111;
   wire n_0_237;
   wire n_0_0_112;
   wire n_0_238;
   wire n_0_0_113;
   wire n_0_239;
   wire n_0_0_114;
   wire n_0_240;
   wire n_0_0_115;
   wire n_0_241;
   wire n_0_0_116;
   wire n_0_242;
   wire n_0_0_117;
   wire n_0_243;
   wire n_0_0_118;
   wire n_0_244;
   wire n_0_0_119;
   wire n_0_245;
   wire n_0_0_120;
   wire n_0_246;
   wire n_0_0_121;
   wire n_0_247;
   wire n_0_0_122;
   wire n_0_248;
   wire n_0_0_123;
   wire n_0_249;
   wire n_0_0_124;
   wire n_0_250;
   wire n_0_0_125;
   wire n_0_251;
   wire n_0_0_126;
   wire n_0_252;
   wire n_0_0_127;
   wire n_0_253;
   wire n_0_0_128;
   wire n_0_254;
   wire n_0_0_129;
   wire n_0_255;
   wire n_0_0_130;
   wire n_0_256;
   wire n_0_0_131;
   wire n_0_0_134;
   wire n_0_257;
   wire [1:0]isNeg_in;
   wire n_0_258;
   wire n_0_0_139;
   wire n_0_0_140;
   wire n_0_0_141;
   wire n_0_0_142;
   wire n_0_0_143;
   wire n_0_0_146;
   wire n_0_0_32;
   wire n_0_0_99;
   wire n_0_0_109;
   wire n_0_0_132;
   wire n_0_0_133;
   wire n_0_234;
   wire n_0_0_135;
   wire n_0_0_136;
   wire n_0_0_137;
   wire n_0_0_138;
   wire n_0_0_144;
   wire n_0_0_145;
   wire n_0_0_147;

   datapath i_0_4 (.multiplier_M(multiplier_M), .accumulator_A({uc_0, 
      accumulator_A[30], accumulator_A[29], accumulator_A[28], accumulator_A[27], 
      accumulator_A[26], accumulator_A[25], accumulator_A[24], accumulator_A[23], 
      accumulator_A[22], accumulator_A[21], accumulator_A[20], accumulator_A[19], 
      accumulator_A[18], accumulator_A[17], accumulator_A[16], accumulator_A[15], 
      accumulator_A[14], accumulator_A[13], accumulator_A[12], accumulator_A[11], 
      accumulator_A[10], accumulator_A[9], accumulator_A[8], accumulator_A[7], 
      accumulator_A[6], accumulator_A[5], accumulator_A[4], accumulator_A[3], 
      accumulator_A[2], accumulator_A[1], accumulator_A[0]}), .p_0({n_0_33, 
      n_0_32, n_0_31, n_0_30, n_0_29, n_0_28, n_0_27, n_0_26, n_0_25, n_0_24, 
      n_0_23, n_0_22, n_0_21, n_0_20, n_0_19, n_0_18, n_0_17, n_0_16, n_0_15, 
      n_0_14, n_0_13, n_0_12, n_0_11, n_0_10, n_0_9, n_0_8, n_0_7, n_0_6, n_0_5, 
      n_0_4, n_0_3, n_0_2}));
   datapath__0_2 i_0_5 (.accumulator_A({uc_1, accumulator_A[30], 
      accumulator_A[29], accumulator_A[28], accumulator_A[27], accumulator_A[26], 
      accumulator_A[25], accumulator_A[24], accumulator_A[23], accumulator_A[22], 
      accumulator_A[21], accumulator_A[20], accumulator_A[19], accumulator_A[18], 
      accumulator_A[17], accumulator_A[16], accumulator_A[15], accumulator_A[14], 
      accumulator_A[13], accumulator_A[12], accumulator_A[11], accumulator_A[10], 
      accumulator_A[9], accumulator_A[8], accumulator_A[7], accumulator_A[6], 
      accumulator_A[5], accumulator_A[4], accumulator_A[3], accumulator_A[2], 
      accumulator_A[1], accumulator_A[0]}), .p_0({n_0_65, n_0_64, n_0_63, n_0_62, 
      n_0_61, n_0_60, n_0_59, n_0_58, n_0_57, n_0_56, n_0_55, n_0_54, n_0_53, 
      n_0_52, n_0_51, n_0_50, n_0_49, n_0_48, n_0_47, n_0_46, n_0_45, n_0_44, 
      n_0_43, n_0_42, n_0_41, n_0_40, n_0_39, n_0_38, n_0_37, n_0_36, n_0_35, 
      n_0_34}), .multiplier_M(multiplier_M));
   datapath__0_6 i_0_9 (.A(A), .p_0({n_0_96, n_0_95, n_0_94, n_0_93, n_0_92, 
      n_0_91, n_0_90, n_0_89, n_0_88, n_0_87, n_0_86, n_0_85, n_0_84, n_0_83, 
      n_0_82, n_0_81, n_0_80, n_0_79, n_0_78, n_0_77, n_0_76, n_0_75, n_0_74, 
      n_0_73, n_0_72, n_0_71, n_0_70, n_0_69, n_0_68, n_0_67, n_0_66, uc_2}));
   datapath__0_8 i_0_11 (.B(B), .p_0({n_0_127, n_0_126, n_0_125, n_0_124, 
      n_0_123, n_0_122, n_0_121, n_0_120, n_0_119, n_0_118, n_0_117, n_0_116, 
      n_0_115, n_0_114, n_0_113, n_0_112, n_0_111, n_0_110, n_0_109, n_0_108, 
      n_0_107, n_0_106, n_0_105, n_0_104, n_0_103, n_0_102, n_0_101, n_0_100, 
      n_0_99, n_0_98, n_0_97, uc_3}));
   datapath__0_15 i_0_18 (.Res_imm({accumulator_A[30], uc_4, accumulator_A[29], 
      accumulator_A[28], accumulator_A[27], accumulator_A[26], accumulator_A[25], 
      accumulator_A[24], accumulator_A[23], accumulator_A[22], accumulator_A[21], 
      accumulator_A[20], accumulator_A[19], accumulator_A[18], accumulator_A[17], 
      accumulator_A[16], accumulator_A[15], accumulator_A[14], accumulator_A[13], 
      accumulator_A[12], accumulator_A[11], accumulator_A[10], accumulator_A[9], 
      accumulator_A[8], accumulator_A[7], accumulator_A[6], accumulator_A[5], 
      accumulator_A[4], accumulator_A[3], accumulator_A[2], accumulator_A[1], 
      accumulator_A[0], multiplicand_Q[32], multiplicand_Q[31], 
      multiplicand_Q[30], multiplicand_Q[29], multiplicand_Q[28], 
      multiplicand_Q[27], multiplicand_Q[26], multiplicand_Q[25], 
      multiplicand_Q[24], multiplicand_Q[23], multiplicand_Q[22], 
      multiplicand_Q[21], multiplicand_Q[20], multiplicand_Q[19], 
      multiplicand_Q[18], multiplicand_Q[17], multiplicand_Q[16], 
      multiplicand_Q[15], multiplicand_Q[14], multiplicand_Q[13], 
      multiplicand_Q[12], multiplicand_Q[11], multiplicand_Q[10], 
      multiplicand_Q[9], multiplicand_Q[8], multiplicand_Q[7], multiplicand_Q[6], 
      multiplicand_Q[5], multiplicand_Q[4], multiplicand_Q[3], multiplicand_Q[2], 
      Res[0]}), .p_0({n_0_190, n_0_189, n_0_188, n_0_187, n_0_186, n_0_185, 
      n_0_184, n_0_183, n_0_182, n_0_181, n_0_180, n_0_179, n_0_178, n_0_177, 
      n_0_176, n_0_175, n_0_174, n_0_173, n_0_172, n_0_171, n_0_170, n_0_169, 
      n_0_168, n_0_167, n_0_166, n_0_165, n_0_164, n_0_163, n_0_162, n_0_161, 
      n_0_160, n_0_159, n_0_158, n_0_157, n_0_156, n_0_155, n_0_154, n_0_153, 
      n_0_152, n_0_151, n_0_150, n_0_149, n_0_148, n_0_147, n_0_146, n_0_145, 
      n_0_144, n_0_143, n_0_142, n_0_141, n_0_140, n_0_139, n_0_138, n_0_137, 
      n_0_136, n_0_135, n_0_134, n_0_133, n_0_132, n_0_131, n_0_130, n_0_129, 
      n_0_128, uc_5}));
   DFF_X1 \isNeg_reg[1]  (.D(isNeg_in[1]), .CK(n_0_1), .Q(isNeg[1]), .QN());
   DFF_X1 \isNeg_reg[0]  (.D(isNeg_in[0]), .CK(n_0_1), .Q(isNeg[0]), .QN());
   DFF_X1 \accumulator_A_reg[30]  (.D(n_0_256), .CK(n_0_0), .Q(accumulator_A[30]), 
      .QN());
   DFF_X1 \accumulator_A_reg[29]  (.D(n_0_255), .CK(n_0_0), .Q(accumulator_A[29]), 
      .QN());
   DFF_X1 \accumulator_A_reg[28]  (.D(n_0_254), .CK(n_0_0), .Q(accumulator_A[28]), 
      .QN());
   DFF_X1 \accumulator_A_reg[27]  (.D(n_0_253), .CK(n_0_0), .Q(accumulator_A[27]), 
      .QN());
   DFF_X1 \accumulator_A_reg[26]  (.D(n_0_252), .CK(n_0_0), .Q(accumulator_A[26]), 
      .QN());
   DFF_X1 \accumulator_A_reg[25]  (.D(n_0_251), .CK(n_0_0), .Q(accumulator_A[25]), 
      .QN());
   DFF_X1 \accumulator_A_reg[24]  (.D(n_0_250), .CK(n_0_0), .Q(accumulator_A[24]), 
      .QN());
   DFF_X1 \accumulator_A_reg[23]  (.D(n_0_249), .CK(n_0_0), .Q(accumulator_A[23]), 
      .QN());
   DFF_X1 \accumulator_A_reg[22]  (.D(n_0_248), .CK(n_0_0), .Q(accumulator_A[22]), 
      .QN());
   DFF_X1 \accumulator_A_reg[21]  (.D(n_0_247), .CK(n_0_0), .Q(accumulator_A[21]), 
      .QN());
   DFF_X1 \accumulator_A_reg[20]  (.D(n_0_246), .CK(n_0_0), .Q(accumulator_A[20]), 
      .QN());
   DFF_X1 \accumulator_A_reg[19]  (.D(n_0_245), .CK(n_0_0), .Q(accumulator_A[19]), 
      .QN());
   DFF_X1 \accumulator_A_reg[18]  (.D(n_0_244), .CK(n_0_0), .Q(accumulator_A[18]), 
      .QN());
   DFF_X1 \accumulator_A_reg[17]  (.D(n_0_243), .CK(n_0_0), .Q(accumulator_A[17]), 
      .QN());
   DFF_X1 \accumulator_A_reg[16]  (.D(n_0_242), .CK(n_0_0), .Q(accumulator_A[16]), 
      .QN());
   DFF_X1 \accumulator_A_reg[15]  (.D(n_0_241), .CK(n_0_0), .Q(accumulator_A[15]), 
      .QN());
   DFF_X1 \accumulator_A_reg[14]  (.D(n_0_240), .CK(n_0_0), .Q(accumulator_A[14]), 
      .QN());
   DFF_X1 \accumulator_A_reg[13]  (.D(n_0_239), .CK(n_0_0), .Q(accumulator_A[13]), 
      .QN());
   DFF_X1 \accumulator_A_reg[12]  (.D(n_0_238), .CK(n_0_0), .Q(accumulator_A[12]), 
      .QN());
   DFF_X1 \accumulator_A_reg[11]  (.D(n_0_237), .CK(n_0_0), .Q(accumulator_A[11]), 
      .QN());
   DFF_X1 \accumulator_A_reg[10]  (.D(n_0_236), .CK(n_0_0), .Q(accumulator_A[10]), 
      .QN());
   DFF_X1 \accumulator_A_reg[9]  (.D(n_0_235), .CK(n_0_0), .Q(accumulator_A[9]), 
      .QN());
   DFF_X1 \accumulator_A_reg[8]  (.D(n_0_234), .CK(n_0_0), .Q(accumulator_A[8]), 
      .QN());
   DFF_X1 \accumulator_A_reg[7]  (.D(n_0_233), .CK(n_0_0), .Q(accumulator_A[7]), 
      .QN());
   DFF_X1 \accumulator_A_reg[6]  (.D(n_0_232), .CK(n_0_0), .Q(accumulator_A[6]), 
      .QN());
   DFF_X1 \accumulator_A_reg[5]  (.D(n_0_231), .CK(n_0_0), .Q(accumulator_A[5]), 
      .QN());
   DFF_X1 \accumulator_A_reg[4]  (.D(n_0_230), .CK(n_0_0), .Q(accumulator_A[4]), 
      .QN());
   DFF_X1 \accumulator_A_reg[3]  (.D(n_0_229), .CK(n_0_0), .Q(accumulator_A[3]), 
      .QN());
   DFF_X1 \accumulator_A_reg[2]  (.D(n_0_228), .CK(n_0_0), .Q(accumulator_A[2]), 
      .QN());
   DFF_X1 \accumulator_A_reg[1]  (.D(n_0_227), .CK(n_0_0), .Q(accumulator_A[1]), 
      .QN());
   DFF_X1 \accumulator_A_reg[0]  (.D(n_0_226), .CK(n_0_0), .Q(accumulator_A[0]), 
      .QN());
   DFF_X1 \multiplier_M_reg[31]  (.D(n_0_225), .CK(n_0_1), .Q(multiplier_M[31]), 
      .QN());
   DFF_X1 \multiplier_M_reg[30]  (.D(n_0_224), .CK(n_0_1), .Q(multiplier_M[30]), 
      .QN());
   DFF_X1 \multiplier_M_reg[29]  (.D(n_0_223), .CK(n_0_1), .Q(multiplier_M[29]), 
      .QN());
   DFF_X1 \multiplier_M_reg[28]  (.D(n_0_222), .CK(n_0_1), .Q(multiplier_M[28]), 
      .QN());
   DFF_X1 \multiplier_M_reg[27]  (.D(n_0_221), .CK(n_0_1), .Q(multiplier_M[27]), 
      .QN());
   DFF_X1 \multiplier_M_reg[26]  (.D(n_0_220), .CK(n_0_1), .Q(multiplier_M[26]), 
      .QN());
   DFF_X1 \multiplier_M_reg[25]  (.D(n_0_219), .CK(n_0_1), .Q(multiplier_M[25]), 
      .QN());
   DFF_X1 \multiplier_M_reg[24]  (.D(n_0_218), .CK(n_0_1), .Q(multiplier_M[24]), 
      .QN());
   DFF_X1 \multiplier_M_reg[23]  (.D(n_0_217), .CK(n_0_1), .Q(multiplier_M[23]), 
      .QN());
   DFF_X1 \multiplier_M_reg[22]  (.D(n_0_216), .CK(n_0_1), .Q(multiplier_M[22]), 
      .QN());
   DFF_X1 \multiplier_M_reg[21]  (.D(n_0_215), .CK(n_0_1), .Q(multiplier_M[21]), 
      .QN());
   DFF_X1 \multiplier_M_reg[20]  (.D(n_0_214), .CK(n_0_1), .Q(multiplier_M[20]), 
      .QN());
   DFF_X1 \multiplier_M_reg[19]  (.D(n_0_213), .CK(n_0_1), .Q(multiplier_M[19]), 
      .QN());
   DFF_X1 \multiplier_M_reg[18]  (.D(n_0_212), .CK(n_0_1), .Q(multiplier_M[18]), 
      .QN());
   DFF_X1 \multiplier_M_reg[17]  (.D(n_0_211), .CK(n_0_1), .Q(multiplier_M[17]), 
      .QN());
   DFF_X1 \multiplier_M_reg[16]  (.D(n_0_210), .CK(n_0_1), .Q(multiplier_M[16]), 
      .QN());
   DFF_X1 \multiplier_M_reg[15]  (.D(n_0_209), .CK(n_0_1), .Q(multiplier_M[15]), 
      .QN());
   DFF_X1 \multiplier_M_reg[14]  (.D(n_0_208), .CK(n_0_1), .Q(multiplier_M[14]), 
      .QN());
   DFF_X1 \multiplier_M_reg[13]  (.D(n_0_207), .CK(n_0_1), .Q(multiplier_M[13]), 
      .QN());
   DFF_X1 \multiplier_M_reg[12]  (.D(n_0_206), .CK(n_0_1), .Q(multiplier_M[12]), 
      .QN());
   DFF_X1 \multiplier_M_reg[11]  (.D(n_0_205), .CK(n_0_1), .Q(multiplier_M[11]), 
      .QN());
   DFF_X1 \multiplier_M_reg[10]  (.D(n_0_204), .CK(n_0_1), .Q(multiplier_M[10]), 
      .QN());
   DFF_X1 \multiplier_M_reg[9]  (.D(n_0_203), .CK(n_0_1), .Q(multiplier_M[9]), 
      .QN());
   DFF_X1 \multiplier_M_reg[8]  (.D(n_0_202), .CK(n_0_1), .Q(multiplier_M[8]), 
      .QN());
   DFF_X1 \multiplier_M_reg[7]  (.D(n_0_201), .CK(n_0_1), .Q(multiplier_M[7]), 
      .QN());
   DFF_X1 \multiplier_M_reg[6]  (.D(n_0_200), .CK(n_0_1), .Q(multiplier_M[6]), 
      .QN());
   DFF_X1 \multiplier_M_reg[5]  (.D(n_0_199), .CK(n_0_1), .Q(multiplier_M[5]), 
      .QN());
   DFF_X1 \multiplier_M_reg[4]  (.D(n_0_198), .CK(n_0_1), .Q(multiplier_M[4]), 
      .QN());
   DFF_X1 \multiplier_M_reg[3]  (.D(n_0_197), .CK(n_0_1), .Q(multiplier_M[3]), 
      .QN());
   DFF_X1 \multiplier_M_reg[2]  (.D(n_0_196), .CK(n_0_1), .Q(multiplier_M[2]), 
      .QN());
   DFF_X1 \multiplier_M_reg[1]  (.D(n_0_195), .CK(n_0_1), .Q(multiplier_M[1]), 
      .QN());
   DFF_X1 \multiplier_M_reg[0]  (.D(n_0_194), .CK(n_0_1), .Q(multiplier_M[0]), 
      .QN());
   DFF_X1 \multiplicand_Q_reg[32]  (.D(multiplicand_in[32]), .CK(n_0_0), 
      .Q(multiplicand_Q[32]), .QN());
   DFF_X1 \multiplicand_Q_reg[31]  (.D(multiplicand_in[31]), .CK(n_0_0), 
      .Q(multiplicand_Q[31]), .QN());
   DFF_X1 \multiplicand_Q_reg[30]  (.D(multiplicand_in[30]), .CK(n_0_0), 
      .Q(multiplicand_Q[30]), .QN());
   DFF_X1 \multiplicand_Q_reg[29]  (.D(multiplicand_in[29]), .CK(n_0_0), 
      .Q(multiplicand_Q[29]), .QN());
   DFF_X1 \multiplicand_Q_reg[28]  (.D(multiplicand_in[28]), .CK(n_0_0), 
      .Q(multiplicand_Q[28]), .QN());
   DFF_X1 \multiplicand_Q_reg[27]  (.D(multiplicand_in[27]), .CK(n_0_0), 
      .Q(multiplicand_Q[27]), .QN());
   DFF_X1 \multiplicand_Q_reg[26]  (.D(multiplicand_in[26]), .CK(n_0_0), 
      .Q(multiplicand_Q[26]), .QN());
   DFF_X1 \multiplicand_Q_reg[25]  (.D(multiplicand_in[25]), .CK(n_0_0), 
      .Q(multiplicand_Q[25]), .QN());
   DFF_X1 \multiplicand_Q_reg[24]  (.D(multiplicand_in[24]), .CK(n_0_0), 
      .Q(multiplicand_Q[24]), .QN());
   DFF_X1 \multiplicand_Q_reg[23]  (.D(multiplicand_in[23]), .CK(n_0_0), 
      .Q(multiplicand_Q[23]), .QN());
   DFF_X1 \multiplicand_Q_reg[22]  (.D(multiplicand_in[22]), .CK(n_0_0), 
      .Q(multiplicand_Q[22]), .QN());
   DFF_X1 \multiplicand_Q_reg[21]  (.D(multiplicand_in[21]), .CK(n_0_0), 
      .Q(multiplicand_Q[21]), .QN());
   DFF_X1 \multiplicand_Q_reg[20]  (.D(multiplicand_in[20]), .CK(n_0_0), 
      .Q(multiplicand_Q[20]), .QN());
   DFF_X1 \multiplicand_Q_reg[19]  (.D(multiplicand_in[19]), .CK(n_0_0), 
      .Q(multiplicand_Q[19]), .QN());
   DFF_X1 \multiplicand_Q_reg[18]  (.D(multiplicand_in[18]), .CK(n_0_0), 
      .Q(multiplicand_Q[18]), .QN());
   DFF_X1 \multiplicand_Q_reg[17]  (.D(multiplicand_in[17]), .CK(n_0_0), 
      .Q(multiplicand_Q[17]), .QN());
   DFF_X1 \multiplicand_Q_reg[16]  (.D(multiplicand_in[16]), .CK(n_0_0), 
      .Q(multiplicand_Q[16]), .QN());
   DFF_X1 \multiplicand_Q_reg[15]  (.D(multiplicand_in[15]), .CK(n_0_0), 
      .Q(multiplicand_Q[15]), .QN());
   DFF_X1 \multiplicand_Q_reg[14]  (.D(multiplicand_in[14]), .CK(n_0_0), 
      .Q(multiplicand_Q[14]), .QN());
   DFF_X1 \multiplicand_Q_reg[13]  (.D(multiplicand_in[13]), .CK(n_0_0), 
      .Q(multiplicand_Q[13]), .QN());
   DFF_X1 \multiplicand_Q_reg[12]  (.D(multiplicand_in[12]), .CK(n_0_0), 
      .Q(multiplicand_Q[12]), .QN());
   DFF_X1 \multiplicand_Q_reg[11]  (.D(multiplicand_in[11]), .CK(n_0_0), 
      .Q(multiplicand_Q[11]), .QN());
   DFF_X1 \multiplicand_Q_reg[10]  (.D(multiplicand_in[10]), .CK(n_0_0), 
      .Q(multiplicand_Q[10]), .QN());
   DFF_X1 \multiplicand_Q_reg[9]  (.D(multiplicand_in[9]), .CK(n_0_0), .Q(
      multiplicand_Q[9]), .QN());
   DFF_X1 \multiplicand_Q_reg[8]  (.D(multiplicand_in[8]), .CK(n_0_0), .Q(
      multiplicand_Q[8]), .QN());
   DFF_X1 \multiplicand_Q_reg[7]  (.D(multiplicand_in[7]), .CK(n_0_0), .Q(
      multiplicand_Q[7]), .QN());
   DFF_X1 \multiplicand_Q_reg[6]  (.D(multiplicand_in[6]), .CK(n_0_0), .Q(
      multiplicand_Q[6]), .QN());
   DFF_X1 \multiplicand_Q_reg[5]  (.D(multiplicand_in[5]), .CK(n_0_0), .Q(
      multiplicand_Q[5]), .QN());
   DFF_X1 \multiplicand_Q_reg[4]  (.D(multiplicand_in[4]), .CK(n_0_0), .Q(
      multiplicand_Q[4]), .QN());
   DFF_X1 \multiplicand_Q_reg[3]  (.D(multiplicand_in[3]), .CK(n_0_0), .Q(
      multiplicand_Q[3]), .QN());
   DFF_X1 \multiplicand_Q_reg[2]  (.D(multiplicand_in[2]), .CK(n_0_0), .Q(
      multiplicand_Q[2]), .QN());
   DFF_X1 \multiplicand_Q_reg[1]  (.D(multiplicand_in[1]), .CK(n_0_0), .Q(Res[0]), 
      .QN());
   DFF_X1 \multiplicand_Q_reg[0]  (.D(multiplicand_in[0]), .CK(n_0_0), .Q(
      multiplicand_Q[0]), .QN());
   DFF_X1 ready_reg (.D(n_0_191), .CK(clk), .Q(ready), .QN());
   MUX2_X1 ready_reg_enable_mux_0 (.A(ready), .B(n_0_192), .S(n_0_193), .Z(
      n_0_191));
   DFF_X1 \counter_reg[4]  (.D(counter_in[4]), .CK(n_0_0), .Q(counter[4]), .QN());
   DFF_X1 \counter_reg[3]  (.D(counter_in[3]), .CK(n_0_0), .Q(counter[3]), .QN());
   DFF_X1 \counter_reg[2]  (.D(counter_in[2]), .CK(n_0_0), .Q(counter[2]), .QN());
   DFF_X1 \counter_reg[1]  (.D(counter_in[1]), .CK(n_0_0), .Q(counter[1]), .QN());
   DFF_X1 \counter_reg[0]  (.D(counter_in[0]), .CK(n_0_0), .Q(counter[0]), .QN());
   CLKGATETST_X1 clk_gate_accumulator_A_reg (.CK(clk), .E(n_0_257), .SE(1'b0), 
      .GCK(n_0_0));
   CLKGATETST_X1 clk_gate_isNeg_reg (.CK(clk), .E(n_0_258), .SE(1'b0), .GCK(
      n_0_1));
   XNOR2_X1 i_0_0_0 (.A(isNeg[0]), .B(n_0_0_0), .ZN(OVF));
   NAND2_X1 i_0_0_1 (.A1(n_0_0_139), .A2(Res[63]), .ZN(n_0_0_0));
   MUX2_X1 i_0_0_2 (.A(n_0_128), .B(multiplicand_Q[2]), .S(n_0_0_1), .Z(Res[1]));
   MUX2_X1 i_0_0_3 (.A(n_0_129), .B(multiplicand_Q[3]), .S(n_0_0_1), .Z(Res[2]));
   MUX2_X1 i_0_0_4 (.A(n_0_130), .B(multiplicand_Q[4]), .S(n_0_0_1), .Z(Res[3]));
   MUX2_X1 i_0_0_5 (.A(n_0_131), .B(multiplicand_Q[5]), .S(n_0_0_1), .Z(Res[4]));
   MUX2_X1 i_0_0_6 (.A(n_0_132), .B(multiplicand_Q[6]), .S(n_0_0_1), .Z(Res[5]));
   MUX2_X1 i_0_0_7 (.A(n_0_133), .B(multiplicand_Q[7]), .S(n_0_0_1), .Z(Res[6]));
   MUX2_X1 i_0_0_8 (.A(n_0_134), .B(multiplicand_Q[8]), .S(n_0_0_1), .Z(Res[7]));
   MUX2_X1 i_0_0_9 (.A(n_0_135), .B(multiplicand_Q[9]), .S(n_0_0_1), .Z(Res[8]));
   MUX2_X1 i_0_0_10 (.A(n_0_136), .B(multiplicand_Q[10]), .S(n_0_0_1), .Z(Res[9]));
   MUX2_X1 i_0_0_11 (.A(n_0_137), .B(multiplicand_Q[11]), .S(n_0_0_1), .Z(
      Res[10]));
   MUX2_X1 i_0_0_12 (.A(n_0_138), .B(multiplicand_Q[12]), .S(n_0_0_1), .Z(
      Res[11]));
   MUX2_X1 i_0_0_13 (.A(n_0_139), .B(multiplicand_Q[13]), .S(n_0_0_1), .Z(
      Res[12]));
   MUX2_X1 i_0_0_14 (.A(n_0_140), .B(multiplicand_Q[14]), .S(n_0_0_1), .Z(
      Res[13]));
   MUX2_X1 i_0_0_15 (.A(n_0_141), .B(multiplicand_Q[15]), .S(n_0_0_1), .Z(
      Res[14]));
   MUX2_X1 i_0_0_16 (.A(n_0_142), .B(multiplicand_Q[16]), .S(n_0_0_1), .Z(
      Res[15]));
   MUX2_X1 i_0_0_17 (.A(n_0_143), .B(multiplicand_Q[17]), .S(n_0_0_1), .Z(
      Res[16]));
   MUX2_X1 i_0_0_18 (.A(n_0_144), .B(multiplicand_Q[18]), .S(n_0_0_1), .Z(
      Res[17]));
   MUX2_X1 i_0_0_19 (.A(n_0_145), .B(multiplicand_Q[19]), .S(n_0_0_1), .Z(
      Res[18]));
   MUX2_X1 i_0_0_20 (.A(n_0_146), .B(multiplicand_Q[20]), .S(n_0_0_1), .Z(
      Res[19]));
   MUX2_X1 i_0_0_21 (.A(n_0_147), .B(multiplicand_Q[21]), .S(n_0_0_1), .Z(
      Res[20]));
   MUX2_X1 i_0_0_22 (.A(n_0_148), .B(multiplicand_Q[22]), .S(n_0_0_1), .Z(
      Res[21]));
   MUX2_X1 i_0_0_23 (.A(n_0_149), .B(multiplicand_Q[23]), .S(n_0_0_1), .Z(
      Res[22]));
   MUX2_X1 i_0_0_24 (.A(n_0_150), .B(multiplicand_Q[24]), .S(n_0_0_1), .Z(
      Res[23]));
   MUX2_X1 i_0_0_25 (.A(n_0_151), .B(multiplicand_Q[25]), .S(n_0_0_1), .Z(
      Res[24]));
   MUX2_X1 i_0_0_26 (.A(n_0_152), .B(multiplicand_Q[26]), .S(n_0_0_1), .Z(
      Res[25]));
   MUX2_X1 i_0_0_27 (.A(n_0_153), .B(multiplicand_Q[27]), .S(n_0_0_1), .Z(
      Res[26]));
   MUX2_X1 i_0_0_28 (.A(n_0_154), .B(multiplicand_Q[28]), .S(n_0_0_1), .Z(
      Res[27]));
   MUX2_X1 i_0_0_29 (.A(n_0_155), .B(multiplicand_Q[29]), .S(n_0_0_1), .Z(
      Res[28]));
   MUX2_X1 i_0_0_30 (.A(n_0_156), .B(multiplicand_Q[30]), .S(n_0_0_1), .Z(
      Res[29]));
   MUX2_X1 i_0_0_31 (.A(n_0_157), .B(multiplicand_Q[31]), .S(n_0_0_1), .Z(
      Res[30]));
   MUX2_X1 i_0_0_32 (.A(n_0_158), .B(multiplicand_Q[32]), .S(n_0_0_1), .Z(
      Res[31]));
   MUX2_X1 i_0_0_33 (.A(n_0_159), .B(accumulator_A[0]), .S(n_0_0_1), .Z(Res[32]));
   MUX2_X1 i_0_0_34 (.A(n_0_160), .B(accumulator_A[1]), .S(n_0_0_1), .Z(Res[33]));
   MUX2_X1 i_0_0_35 (.A(n_0_161), .B(accumulator_A[2]), .S(n_0_0_1), .Z(Res[34]));
   MUX2_X1 i_0_0_36 (.A(n_0_162), .B(accumulator_A[3]), .S(n_0_0_1), .Z(Res[35]));
   MUX2_X1 i_0_0_37 (.A(n_0_163), .B(accumulator_A[4]), .S(n_0_0_1), .Z(Res[36]));
   MUX2_X1 i_0_0_38 (.A(n_0_164), .B(accumulator_A[5]), .S(n_0_0_1), .Z(Res[37]));
   MUX2_X1 i_0_0_39 (.A(n_0_165), .B(accumulator_A[6]), .S(n_0_0_1), .Z(Res[38]));
   MUX2_X1 i_0_0_40 (.A(n_0_166), .B(accumulator_A[7]), .S(n_0_0_1), .Z(Res[39]));
   MUX2_X1 i_0_0_41 (.A(n_0_167), .B(accumulator_A[8]), .S(n_0_0_1), .Z(Res[40]));
   MUX2_X1 i_0_0_42 (.A(n_0_168), .B(accumulator_A[9]), .S(n_0_0_1), .Z(Res[41]));
   MUX2_X1 i_0_0_43 (.A(n_0_169), .B(accumulator_A[10]), .S(n_0_0_1), .Z(Res[42]));
   MUX2_X1 i_0_0_44 (.A(n_0_170), .B(accumulator_A[11]), .S(n_0_0_1), .Z(Res[43]));
   MUX2_X1 i_0_0_45 (.A(n_0_171), .B(accumulator_A[12]), .S(n_0_0_1), .Z(Res[44]));
   MUX2_X1 i_0_0_46 (.A(n_0_172), .B(accumulator_A[13]), .S(n_0_0_1), .Z(Res[45]));
   MUX2_X1 i_0_0_47 (.A(n_0_173), .B(accumulator_A[14]), .S(n_0_0_1), .Z(Res[46]));
   MUX2_X1 i_0_0_48 (.A(n_0_174), .B(accumulator_A[15]), .S(n_0_0_1), .Z(Res[47]));
   MUX2_X1 i_0_0_49 (.A(n_0_175), .B(accumulator_A[16]), .S(n_0_0_1), .Z(Res[48]));
   MUX2_X1 i_0_0_50 (.A(n_0_176), .B(accumulator_A[17]), .S(n_0_0_1), .Z(Res[49]));
   MUX2_X1 i_0_0_51 (.A(n_0_177), .B(accumulator_A[18]), .S(n_0_0_1), .Z(Res[50]));
   MUX2_X1 i_0_0_52 (.A(n_0_178), .B(accumulator_A[19]), .S(n_0_0_1), .Z(Res[51]));
   MUX2_X1 i_0_0_53 (.A(n_0_179), .B(accumulator_A[20]), .S(n_0_0_1), .Z(Res[52]));
   MUX2_X1 i_0_0_54 (.A(n_0_180), .B(accumulator_A[21]), .S(n_0_0_1), .Z(Res[53]));
   MUX2_X1 i_0_0_55 (.A(n_0_181), .B(accumulator_A[22]), .S(n_0_0_1), .Z(Res[54]));
   MUX2_X1 i_0_0_56 (.A(n_0_182), .B(accumulator_A[23]), .S(n_0_0_1), .Z(Res[55]));
   MUX2_X1 i_0_0_57 (.A(n_0_183), .B(accumulator_A[24]), .S(n_0_0_1), .Z(Res[56]));
   MUX2_X1 i_0_0_58 (.A(n_0_184), .B(accumulator_A[25]), .S(n_0_0_1), .Z(Res[57]));
   MUX2_X1 i_0_0_59 (.A(n_0_185), .B(accumulator_A[26]), .S(n_0_0_1), .Z(Res[58]));
   MUX2_X1 i_0_0_60 (.A(n_0_186), .B(accumulator_A[27]), .S(n_0_0_1), .Z(Res[59]));
   MUX2_X1 i_0_0_61 (.A(n_0_187), .B(accumulator_A[28]), .S(n_0_0_1), .Z(Res[60]));
   MUX2_X1 i_0_0_62 (.A(n_0_188), .B(accumulator_A[29]), .S(n_0_0_1), .Z(Res[61]));
   MUX2_X1 i_0_0_63 (.A(n_0_189), .B(accumulator_A[30]), .S(n_0_0_1), .Z(Res[62]));
   MUX2_X1 i_0_0_64 (.A(n_0_190), .B(accumulator_A[30]), .S(n_0_0_1), .Z(Res[63]));
   OR2_X1 i_0_0_65 (.A1(n_0_0_3), .A2(n_0_0_2), .ZN(n_0_0_1));
   XNOR2_X1 i_0_0_66 (.A(isNeg[1]), .B(isNeg[0]), .ZN(n_0_0_2));
   NOR4_X1 i_0_0_67 (.A1(n_0_0_19), .A2(n_0_0_14), .A3(n_0_0_9), .A4(n_0_0_4), 
      .ZN(n_0_0_3));
   NAND4_X1 i_0_0_68 (.A1(n_0_0_8), .A2(n_0_0_7), .A3(n_0_0_6), .A4(n_0_0_5), 
      .ZN(n_0_0_4));
   NOR4_X1 i_0_0_69 (.A1(accumulator_A[15]), .A2(accumulator_A[11]), .A3(
      accumulator_A[10]), .A4(accumulator_A[9]), .ZN(n_0_0_5));
   NOR4_X1 i_0_0_70 (.A1(accumulator_A[14]), .A2(accumulator_A[13]), .A3(
      accumulator_A[12]), .A4(accumulator_A[8]), .ZN(n_0_0_6));
   NOR4_X1 i_0_0_71 (.A1(accumulator_A[3]), .A2(accumulator_A[2]), .A3(
      accumulator_A[1]), .A4(accumulator_A[0]), .ZN(n_0_0_7));
   NOR4_X1 i_0_0_72 (.A1(accumulator_A[7]), .A2(accumulator_A[6]), .A3(
      accumulator_A[5]), .A4(accumulator_A[4]), .ZN(n_0_0_8));
   NAND4_X1 i_0_0_73 (.A1(n_0_0_13), .A2(n_0_0_12), .A3(n_0_0_11), .A4(n_0_0_10), 
      .ZN(n_0_0_9));
   NOR4_X1 i_0_0_74 (.A1(accumulator_A[27]), .A2(accumulator_A[26]), .A3(
      accumulator_A[25]), .A4(accumulator_A[16]), .ZN(n_0_0_10));
   NOR4_X1 i_0_0_75 (.A1(accumulator_A[30]), .A2(accumulator_A[29]), .A3(
      accumulator_A[28]), .A4(accumulator_A[24]), .ZN(n_0_0_11));
   NOR4_X1 i_0_0_76 (.A1(accumulator_A[19]), .A2(accumulator_A[18]), .A3(
      accumulator_A[17]), .A4(Res[0]), .ZN(n_0_0_12));
   NOR4_X1 i_0_0_77 (.A1(accumulator_A[23]), .A2(accumulator_A[22]), .A3(
      accumulator_A[21]), .A4(accumulator_A[20]), .ZN(n_0_0_13));
   NAND4_X1 i_0_0_78 (.A1(n_0_0_18), .A2(n_0_0_17), .A3(n_0_0_16), .A4(n_0_0_15), 
      .ZN(n_0_0_14));
   NOR3_X1 i_0_0_79 (.A1(multiplicand_Q[20]), .A2(multiplicand_Q[19]), .A3(
      multiplicand_Q[18]), .ZN(n_0_0_15));
   NOR4_X1 i_0_0_80 (.A1(multiplicand_Q[24]), .A2(multiplicand_Q[23]), .A3(
      multiplicand_Q[22]), .A4(multiplicand_Q[21]), .ZN(n_0_0_16));
   NOR4_X1 i_0_0_81 (.A1(multiplicand_Q[28]), .A2(multiplicand_Q[27]), .A3(
      multiplicand_Q[26]), .A4(multiplicand_Q[17]), .ZN(n_0_0_17));
   NOR4_X1 i_0_0_82 (.A1(multiplicand_Q[31]), .A2(multiplicand_Q[30]), .A3(
      multiplicand_Q[29]), .A4(multiplicand_Q[25]), .ZN(n_0_0_18));
   NAND4_X1 i_0_0_83 (.A1(n_0_0_23), .A2(n_0_0_22), .A3(n_0_0_21), .A4(n_0_0_20), 
      .ZN(n_0_0_19));
   NOR4_X1 i_0_0_84 (.A1(multiplicand_Q[16]), .A2(multiplicand_Q[12]), .A3(
      multiplicand_Q[11]), .A4(multiplicand_Q[10]), .ZN(n_0_0_20));
   NOR4_X1 i_0_0_85 (.A1(multiplicand_Q[15]), .A2(multiplicand_Q[14]), .A3(
      multiplicand_Q[13]), .A4(multiplicand_Q[9]), .ZN(n_0_0_21));
   NOR4_X1 i_0_0_86 (.A1(multiplicand_Q[32]), .A2(multiplicand_Q[4]), .A3(
      multiplicand_Q[3]), .A4(multiplicand_Q[2]), .ZN(n_0_0_22));
   NOR4_X1 i_0_0_87 (.A1(multiplicand_Q[8]), .A2(multiplicand_Q[7]), .A3(
      multiplicand_Q[6]), .A4(multiplicand_Q[5]), .ZN(n_0_0_23));
   OAI21_X1 i_0_0_88 (.A(n_0_0_99), .B1(n_0_0_147), .B2(counter[0]), .ZN(
      counter_in[0]));
   OAI21_X1 i_0_0_89 (.A(n_0_0_99), .B1(n_0_0_24), .B2(n_0_0_147), .ZN(
      counter_in[1]));
   XOR2_X1 i_0_0_90 (.A(counter[1]), .B(counter[0]), .Z(n_0_0_24));
   OAI21_X1 i_0_0_91 (.A(n_0_0_99), .B1(n_0_0_25), .B2(n_0_0_147), .ZN(
      counter_in[2]));
   AND2_X1 i_0_0_92 (.A1(n_0_0_31), .A2(n_0_0_26), .ZN(n_0_0_25));
   OAI21_X1 i_0_0_93 (.A(counter[2]), .B1(counter[1]), .B2(counter[0]), .ZN(
      n_0_0_26));
   OAI21_X1 i_0_0_94 (.A(n_0_0_99), .B1(n_0_0_27), .B2(n_0_0_147), .ZN(
      counter_in[3]));
   XOR2_X1 i_0_0_95 (.A(counter[3]), .B(n_0_0_31), .Z(n_0_0_27));
   OAI21_X1 i_0_0_96 (.A(n_0_0_99), .B1(n_0_0_28), .B2(n_0_0_147), .ZN(
      counter_in[4]));
   XOR2_X1 i_0_0_97 (.A(counter[4]), .B(n_0_0_30), .Z(n_0_0_28));
   OR2_X1 i_0_0_98 (.A1(reset), .A2(n_0_0_29), .ZN(n_0_192));
   OR2_X1 i_0_0_99 (.A1(n_0_0_29), .A2(n_0_258), .ZN(n_0_193));
   NOR3_X1 i_0_0_100 (.A1(n_0_0_30), .A2(ready), .A3(counter[4]), .ZN(n_0_0_29));
   OR2_X1 i_0_0_101 (.A1(n_0_0_31), .A2(counter[3]), .ZN(n_0_0_30));
   OR3_X1 i_0_0_102 (.A1(counter[2]), .A2(counter[1]), .A3(counter[0]), .ZN(
      n_0_0_31));
   INV_X1 i_0_0_103 (.A(n_0_0_33), .ZN(multiplicand_in[2]));
   AOI222_X1 i_0_0_104 (.A1(multiplicand_Q[3]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_97), .C1(n_0_0_63), .C2(B[1]), .ZN(n_0_0_33));
   INV_X1 i_0_0_107 (.A(n_0_0_34), .ZN(multiplicand_in[3]));
   AOI222_X1 i_0_0_108 (.A1(multiplicand_Q[4]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_98), .C1(n_0_0_63), .C2(B[2]), .ZN(n_0_0_34));
   INV_X1 i_0_0_109 (.A(n_0_0_35), .ZN(multiplicand_in[4]));
   AOI222_X1 i_0_0_110 (.A1(multiplicand_Q[5]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_99), .C1(n_0_0_63), .C2(B[3]), .ZN(n_0_0_35));
   INV_X1 i_0_0_111 (.A(n_0_0_36), .ZN(multiplicand_in[5]));
   AOI222_X1 i_0_0_112 (.A1(multiplicand_Q[6]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_100), .C1(n_0_0_63), .C2(B[4]), .ZN(n_0_0_36));
   INV_X1 i_0_0_113 (.A(n_0_0_37), .ZN(multiplicand_in[6]));
   AOI222_X1 i_0_0_114 (.A1(multiplicand_Q[7]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_101), .C1(n_0_0_63), .C2(B[5]), .ZN(n_0_0_37));
   INV_X1 i_0_0_115 (.A(n_0_0_38), .ZN(multiplicand_in[7]));
   AOI222_X1 i_0_0_116 (.A1(multiplicand_Q[8]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_102), .C1(n_0_0_63), .C2(B[6]), .ZN(n_0_0_38));
   INV_X1 i_0_0_117 (.A(n_0_0_39), .ZN(multiplicand_in[8]));
   AOI222_X1 i_0_0_118 (.A1(multiplicand_Q[9]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_103), .C1(n_0_0_63), .C2(B[7]), .ZN(n_0_0_39));
   INV_X1 i_0_0_119 (.A(n_0_0_40), .ZN(multiplicand_in[9]));
   AOI222_X1 i_0_0_120 (.A1(multiplicand_Q[10]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_104), .C1(n_0_0_63), .C2(B[8]), .ZN(n_0_0_40));
   INV_X1 i_0_0_121 (.A(n_0_0_41), .ZN(multiplicand_in[10]));
   AOI222_X1 i_0_0_122 (.A1(multiplicand_Q[11]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_105), .C1(n_0_0_63), .C2(B[9]), .ZN(n_0_0_41));
   INV_X1 i_0_0_123 (.A(n_0_0_42), .ZN(multiplicand_in[11]));
   AOI222_X1 i_0_0_124 (.A1(multiplicand_Q[12]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_106), .C1(n_0_0_63), .C2(B[10]), .ZN(n_0_0_42));
   INV_X1 i_0_0_125 (.A(n_0_0_43), .ZN(multiplicand_in[12]));
   AOI222_X1 i_0_0_126 (.A1(multiplicand_Q[13]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_107), .C1(n_0_0_63), .C2(B[11]), .ZN(n_0_0_43));
   INV_X1 i_0_0_127 (.A(n_0_0_44), .ZN(multiplicand_in[13]));
   AOI222_X1 i_0_0_128 (.A1(multiplicand_Q[14]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_108), .C1(n_0_0_63), .C2(B[12]), .ZN(n_0_0_44));
   INV_X1 i_0_0_129 (.A(n_0_0_45), .ZN(multiplicand_in[14]));
   AOI222_X1 i_0_0_130 (.A1(multiplicand_Q[15]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_109), .C1(n_0_0_63), .C2(B[13]), .ZN(n_0_0_45));
   INV_X1 i_0_0_131 (.A(n_0_0_46), .ZN(multiplicand_in[15]));
   AOI222_X1 i_0_0_132 (.A1(multiplicand_Q[16]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_110), .C1(n_0_0_63), .C2(B[14]), .ZN(n_0_0_46));
   INV_X1 i_0_0_133 (.A(n_0_0_47), .ZN(multiplicand_in[16]));
   AOI222_X1 i_0_0_134 (.A1(multiplicand_Q[17]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_111), .C1(n_0_0_63), .C2(B[15]), .ZN(n_0_0_47));
   INV_X1 i_0_0_135 (.A(n_0_0_48), .ZN(multiplicand_in[17]));
   AOI222_X1 i_0_0_136 (.A1(multiplicand_Q[18]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_112), .C1(n_0_0_63), .C2(B[16]), .ZN(n_0_0_48));
   INV_X1 i_0_0_137 (.A(n_0_0_49), .ZN(multiplicand_in[18]));
   AOI222_X1 i_0_0_138 (.A1(multiplicand_Q[19]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_113), .C1(n_0_0_63), .C2(B[17]), .ZN(n_0_0_49));
   INV_X1 i_0_0_139 (.A(n_0_0_50), .ZN(multiplicand_in[19]));
   AOI222_X1 i_0_0_140 (.A1(multiplicand_Q[20]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_114), .C1(n_0_0_63), .C2(B[18]), .ZN(n_0_0_50));
   INV_X1 i_0_0_141 (.A(n_0_0_51), .ZN(multiplicand_in[20]));
   AOI222_X1 i_0_0_142 (.A1(multiplicand_Q[21]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_115), .C1(n_0_0_63), .C2(B[19]), .ZN(n_0_0_51));
   INV_X1 i_0_0_143 (.A(n_0_0_52), .ZN(multiplicand_in[21]));
   AOI222_X1 i_0_0_144 (.A1(multiplicand_Q[22]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_116), .C1(n_0_0_63), .C2(B[20]), .ZN(n_0_0_52));
   INV_X1 i_0_0_145 (.A(n_0_0_53), .ZN(multiplicand_in[22]));
   AOI222_X1 i_0_0_146 (.A1(multiplicand_Q[23]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_117), .C1(n_0_0_63), .C2(B[21]), .ZN(n_0_0_53));
   INV_X1 i_0_0_147 (.A(n_0_0_54), .ZN(multiplicand_in[23]));
   AOI222_X1 i_0_0_148 (.A1(multiplicand_Q[24]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_118), .C1(n_0_0_63), .C2(B[22]), .ZN(n_0_0_54));
   INV_X1 i_0_0_149 (.A(n_0_0_55), .ZN(multiplicand_in[24]));
   AOI222_X1 i_0_0_150 (.A1(multiplicand_Q[25]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_119), .C1(n_0_0_63), .C2(B[23]), .ZN(n_0_0_55));
   INV_X1 i_0_0_151 (.A(n_0_0_56), .ZN(multiplicand_in[25]));
   AOI222_X1 i_0_0_152 (.A1(multiplicand_Q[26]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_120), .C1(n_0_0_63), .C2(B[24]), .ZN(n_0_0_56));
   INV_X1 i_0_0_153 (.A(n_0_0_57), .ZN(multiplicand_in[26]));
   AOI222_X1 i_0_0_154 (.A1(multiplicand_Q[27]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_121), .C1(n_0_0_63), .C2(B[25]), .ZN(n_0_0_57));
   INV_X1 i_0_0_155 (.A(n_0_0_58), .ZN(multiplicand_in[27]));
   AOI222_X1 i_0_0_156 (.A1(multiplicand_Q[28]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_122), .C1(n_0_0_63), .C2(B[26]), .ZN(n_0_0_58));
   INV_X1 i_0_0_157 (.A(n_0_0_59), .ZN(multiplicand_in[28]));
   AOI222_X1 i_0_0_158 (.A1(multiplicand_Q[29]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_123), .C1(n_0_0_63), .C2(B[27]), .ZN(n_0_0_59));
   INV_X1 i_0_0_159 (.A(n_0_0_60), .ZN(multiplicand_in[29]));
   AOI222_X1 i_0_0_160 (.A1(multiplicand_Q[30]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_124), .C1(n_0_0_63), .C2(B[28]), .ZN(n_0_0_60));
   INV_X1 i_0_0_161 (.A(n_0_0_61), .ZN(multiplicand_in[30]));
   AOI222_X1 i_0_0_162 (.A1(multiplicand_Q[31]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_125), .C1(n_0_0_63), .C2(B[29]), .ZN(n_0_0_61));
   INV_X1 i_0_0_163 (.A(n_0_0_62), .ZN(multiplicand_in[31]));
   AOI222_X1 i_0_0_164 (.A1(multiplicand_Q[32]), .A2(n_0_0_133), .B1(n_0_0_66), 
      .B2(n_0_126), .C1(n_0_0_63), .C2(B[30]), .ZN(n_0_0_62));
   NOR2_X1 i_0_0_105 (.A1(n_0_0_99), .A2(B[31]), .ZN(n_0_0_63));
   NAND2_X1 i_0_0_166 (.A1(n_0_0_65), .A2(n_0_0_64), .ZN(multiplicand_in[32]));
   AOI22_X1 i_0_0_167 (.A1(accumulator_A[0]), .A2(n_0_0_138), .B1(n_0_0_136), 
      .B2(n_0_2), .ZN(n_0_0_64));
   AOI22_X1 i_0_0_168 (.A1(n_0_34), .A2(n_0_0_137), .B1(n_0_0_66), .B2(n_0_127), 
      .ZN(n_0_0_65));
   NOR2_X1 i_0_0_106 (.A1(n_0_0_140), .A2(n_0_0_99), .ZN(n_0_0_66));
   NOR2_X1 i_0_0_170 (.A1(n_0_0_141), .A2(reset), .ZN(n_0_194));
   INV_X1 i_0_0_171 (.A(n_0_0_67), .ZN(n_0_195));
   AOI22_X1 i_0_0_172 (.A1(n_0_66), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[1]), 
      .ZN(n_0_0_67));
   INV_X1 i_0_0_173 (.A(n_0_0_68), .ZN(n_0_196));
   AOI22_X1 i_0_0_174 (.A1(n_0_67), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[2]), 
      .ZN(n_0_0_68));
   INV_X1 i_0_0_175 (.A(n_0_0_69), .ZN(n_0_197));
   AOI22_X1 i_0_0_176 (.A1(n_0_68), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[3]), 
      .ZN(n_0_0_69));
   INV_X1 i_0_0_177 (.A(n_0_0_70), .ZN(n_0_198));
   AOI22_X1 i_0_0_178 (.A1(n_0_69), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[4]), 
      .ZN(n_0_0_70));
   INV_X1 i_0_0_179 (.A(n_0_0_71), .ZN(n_0_199));
   AOI22_X1 i_0_0_180 (.A1(n_0_70), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[5]), 
      .ZN(n_0_0_71));
   INV_X1 i_0_0_181 (.A(n_0_0_72), .ZN(n_0_200));
   AOI22_X1 i_0_0_182 (.A1(n_0_71), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[6]), 
      .ZN(n_0_0_72));
   INV_X1 i_0_0_183 (.A(n_0_0_73), .ZN(n_0_201));
   AOI22_X1 i_0_0_184 (.A1(n_0_72), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[7]), 
      .ZN(n_0_0_73));
   INV_X1 i_0_0_185 (.A(n_0_0_74), .ZN(n_0_202));
   AOI22_X1 i_0_0_186 (.A1(n_0_73), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[8]), 
      .ZN(n_0_0_74));
   INV_X1 i_0_0_187 (.A(n_0_0_75), .ZN(n_0_203));
   AOI22_X1 i_0_0_188 (.A1(n_0_74), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[9]), 
      .ZN(n_0_0_75));
   INV_X1 i_0_0_189 (.A(n_0_0_76), .ZN(n_0_204));
   AOI22_X1 i_0_0_190 (.A1(n_0_75), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[10]), 
      .ZN(n_0_0_76));
   INV_X1 i_0_0_191 (.A(n_0_0_77), .ZN(n_0_205));
   AOI22_X1 i_0_0_192 (.A1(n_0_76), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[11]), 
      .ZN(n_0_0_77));
   INV_X1 i_0_0_193 (.A(n_0_0_78), .ZN(n_0_206));
   AOI22_X1 i_0_0_194 (.A1(n_0_77), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[12]), 
      .ZN(n_0_0_78));
   INV_X1 i_0_0_195 (.A(n_0_0_79), .ZN(n_0_207));
   AOI22_X1 i_0_0_196 (.A1(n_0_78), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[13]), 
      .ZN(n_0_0_79));
   INV_X1 i_0_0_197 (.A(n_0_0_80), .ZN(n_0_208));
   AOI22_X1 i_0_0_165 (.A1(n_0_79), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[14]), 
      .ZN(n_0_0_80));
   INV_X1 i_0_0_169 (.A(n_0_0_81), .ZN(n_0_209));
   AOI22_X1 i_0_0_198 (.A1(n_0_80), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[15]), 
      .ZN(n_0_0_81));
   INV_X1 i_0_0_201 (.A(n_0_0_82), .ZN(n_0_210));
   AOI22_X1 i_0_0_202 (.A1(n_0_81), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[16]), 
      .ZN(n_0_0_82));
   INV_X1 i_0_0_203 (.A(n_0_0_83), .ZN(n_0_211));
   AOI22_X1 i_0_0_204 (.A1(n_0_82), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[17]), 
      .ZN(n_0_0_83));
   INV_X1 i_0_0_205 (.A(n_0_0_84), .ZN(n_0_212));
   AOI22_X1 i_0_0_206 (.A1(n_0_83), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[18]), 
      .ZN(n_0_0_84));
   INV_X1 i_0_0_207 (.A(n_0_0_85), .ZN(n_0_213));
   AOI22_X1 i_0_0_208 (.A1(n_0_84), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[19]), 
      .ZN(n_0_0_85));
   INV_X1 i_0_0_209 (.A(n_0_0_86), .ZN(n_0_214));
   AOI22_X1 i_0_0_210 (.A1(n_0_85), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[20]), 
      .ZN(n_0_0_86));
   INV_X1 i_0_0_211 (.A(n_0_0_87), .ZN(n_0_215));
   AOI22_X1 i_0_0_212 (.A1(n_0_86), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[21]), 
      .ZN(n_0_0_87));
   INV_X1 i_0_0_213 (.A(n_0_0_88), .ZN(n_0_216));
   AOI22_X1 i_0_0_214 (.A1(n_0_87), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[22]), 
      .ZN(n_0_0_88));
   INV_X1 i_0_0_215 (.A(n_0_0_89), .ZN(n_0_217));
   AOI22_X1 i_0_0_216 (.A1(n_0_88), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[23]), 
      .ZN(n_0_0_89));
   INV_X1 i_0_0_217 (.A(n_0_0_90), .ZN(n_0_218));
   AOI22_X1 i_0_0_218 (.A1(n_0_89), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[24]), 
      .ZN(n_0_0_90));
   INV_X1 i_0_0_219 (.A(n_0_0_91), .ZN(n_0_219));
   AOI22_X1 i_0_0_220 (.A1(n_0_90), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[25]), 
      .ZN(n_0_0_91));
   INV_X1 i_0_0_221 (.A(n_0_0_92), .ZN(n_0_220));
   AOI22_X1 i_0_0_222 (.A1(n_0_91), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[26]), 
      .ZN(n_0_0_92));
   INV_X1 i_0_0_223 (.A(n_0_0_93), .ZN(n_0_221));
   AOI22_X1 i_0_0_224 (.A1(n_0_92), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[27]), 
      .ZN(n_0_0_93));
   INV_X1 i_0_0_225 (.A(n_0_0_94), .ZN(n_0_222));
   AOI22_X1 i_0_0_226 (.A1(n_0_93), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[28]), 
      .ZN(n_0_0_94));
   INV_X1 i_0_0_227 (.A(n_0_0_95), .ZN(n_0_223));
   AOI22_X1 i_0_0_228 (.A1(n_0_94), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[29]), 
      .ZN(n_0_0_95));
   INV_X1 i_0_0_229 (.A(n_0_0_96), .ZN(n_0_224));
   AOI22_X1 i_0_0_230 (.A1(n_0_95), .A2(n_0_0_98), .B1(n_0_0_97), .B2(A[30]), 
      .ZN(n_0_0_96));
   AOI21_X1 i_0_0_199 (.A(reset), .B1(A[31]), .B2(n_0_0_146), .ZN(n_0_0_97));
   NOR2_X1 i_0_0_200 (.A1(n_0_0_142), .A2(n_0_0_99), .ZN(n_0_0_98));
   NOR3_X1 i_0_0_234 (.A1(reset), .A2(n_0_0_100), .A3(n_0_0_142), .ZN(n_0_225));
   NOR2_X1 i_0_0_235 (.A1(n_0_0_132), .A2(n_0_96), .ZN(n_0_0_100));
   INV_X1 i_0_0_236 (.A(n_0_0_101), .ZN(n_0_226));
   AOI222_X1 i_0_0_237 (.A1(accumulator_A[1]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_35), .C1(n_0_0_136), .C2(n_0_3), .ZN(n_0_0_101));
   INV_X1 i_0_0_238 (.A(n_0_0_102), .ZN(n_0_227));
   AOI222_X1 i_0_0_239 (.A1(accumulator_A[2]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_36), .C1(n_0_0_136), .C2(n_0_4), .ZN(n_0_0_102));
   INV_X1 i_0_0_240 (.A(n_0_0_103), .ZN(n_0_228));
   AOI222_X1 i_0_0_241 (.A1(accumulator_A[3]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_37), .C1(n_0_0_136), .C2(n_0_5), .ZN(n_0_0_103));
   INV_X1 i_0_0_242 (.A(n_0_0_104), .ZN(n_0_229));
   AOI222_X1 i_0_0_243 (.A1(accumulator_A[4]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_38), .C1(n_0_0_136), .C2(n_0_6), .ZN(n_0_0_104));
   INV_X1 i_0_0_244 (.A(n_0_0_105), .ZN(n_0_230));
   AOI222_X1 i_0_0_245 (.A1(accumulator_A[5]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_39), .C1(n_0_0_136), .C2(n_0_7), .ZN(n_0_0_105));
   INV_X1 i_0_0_246 (.A(n_0_0_106), .ZN(n_0_231));
   AOI222_X1 i_0_0_247 (.A1(accumulator_A[6]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_40), .C1(n_0_0_136), .C2(n_0_8), .ZN(n_0_0_106));
   INV_X1 i_0_0_248 (.A(n_0_0_107), .ZN(n_0_232));
   AOI222_X1 i_0_0_249 (.A1(accumulator_A[7]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_41), .C1(n_0_0_136), .C2(n_0_9), .ZN(n_0_0_107));
   INV_X1 i_0_0_250 (.A(n_0_0_108), .ZN(n_0_233));
   AOI222_X1 i_0_0_251 (.A1(accumulator_A[8]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_42), .C1(n_0_0_136), .C2(n_0_10), .ZN(n_0_0_108));
   INV_X1 i_0_0_231 (.A(n_0_0_110), .ZN(n_0_235));
   AOI222_X1 i_0_0_232 (.A1(accumulator_A[10]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_44), .C1(n_0_0_136), .C2(n_0_12), .ZN(n_0_0_110));
   INV_X1 i_0_0_256 (.A(n_0_0_111), .ZN(n_0_236));
   AOI222_X1 i_0_0_257 (.A1(accumulator_A[11]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_45), .C1(n_0_0_136), .C2(n_0_13), .ZN(n_0_0_111));
   INV_X1 i_0_0_258 (.A(n_0_0_112), .ZN(n_0_237));
   AOI222_X1 i_0_0_259 (.A1(accumulator_A[12]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_46), .C1(n_0_0_136), .C2(n_0_14), .ZN(n_0_0_112));
   INV_X1 i_0_0_260 (.A(n_0_0_113), .ZN(n_0_238));
   AOI222_X1 i_0_0_261 (.A1(accumulator_A[13]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_47), .C1(n_0_0_136), .C2(n_0_15), .ZN(n_0_0_113));
   INV_X1 i_0_0_262 (.A(n_0_0_114), .ZN(n_0_239));
   AOI222_X1 i_0_0_263 (.A1(accumulator_A[14]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_48), .C1(n_0_0_136), .C2(n_0_16), .ZN(n_0_0_114));
   INV_X1 i_0_0_264 (.A(n_0_0_115), .ZN(n_0_240));
   AOI222_X1 i_0_0_265 (.A1(accumulator_A[15]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_49), .C1(n_0_0_136), .C2(n_0_17), .ZN(n_0_0_115));
   INV_X1 i_0_0_266 (.A(n_0_0_116), .ZN(n_0_241));
   AOI222_X1 i_0_0_267 (.A1(accumulator_A[16]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_50), .C1(n_0_0_136), .C2(n_0_18), .ZN(n_0_0_116));
   INV_X1 i_0_0_268 (.A(n_0_0_117), .ZN(n_0_242));
   AOI222_X1 i_0_0_269 (.A1(accumulator_A[17]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_51), .C1(n_0_0_136), .C2(n_0_19), .ZN(n_0_0_117));
   INV_X1 i_0_0_270 (.A(n_0_0_118), .ZN(n_0_243));
   AOI222_X1 i_0_0_271 (.A1(accumulator_A[18]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_52), .C1(n_0_0_136), .C2(n_0_20), .ZN(n_0_0_118));
   INV_X1 i_0_0_272 (.A(n_0_0_119), .ZN(n_0_244));
   AOI222_X1 i_0_0_273 (.A1(accumulator_A[19]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_53), .C1(n_0_0_136), .C2(n_0_21), .ZN(n_0_0_119));
   INV_X1 i_0_0_274 (.A(n_0_0_120), .ZN(n_0_245));
   AOI222_X1 i_0_0_275 (.A1(accumulator_A[20]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_54), .C1(n_0_0_136), .C2(n_0_22), .ZN(n_0_0_120));
   INV_X1 i_0_0_276 (.A(n_0_0_121), .ZN(n_0_246));
   AOI222_X1 i_0_0_277 (.A1(accumulator_A[21]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_55), .C1(n_0_0_136), .C2(n_0_23), .ZN(n_0_0_121));
   INV_X1 i_0_0_278 (.A(n_0_0_122), .ZN(n_0_247));
   AOI222_X1 i_0_0_279 (.A1(accumulator_A[22]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_56), .C1(n_0_0_136), .C2(n_0_24), .ZN(n_0_0_122));
   INV_X1 i_0_0_280 (.A(n_0_0_123), .ZN(n_0_248));
   AOI222_X1 i_0_0_281 (.A1(accumulator_A[23]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_57), .C1(n_0_0_136), .C2(n_0_25), .ZN(n_0_0_123));
   INV_X1 i_0_0_282 (.A(n_0_0_124), .ZN(n_0_249));
   AOI222_X1 i_0_0_283 (.A1(accumulator_A[24]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_58), .C1(n_0_0_136), .C2(n_0_26), .ZN(n_0_0_124));
   INV_X1 i_0_0_284 (.A(n_0_0_125), .ZN(n_0_250));
   AOI222_X1 i_0_0_285 (.A1(accumulator_A[25]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_59), .C1(n_0_0_136), .C2(n_0_27), .ZN(n_0_0_125));
   INV_X1 i_0_0_286 (.A(n_0_0_126), .ZN(n_0_251));
   AOI222_X1 i_0_0_287 (.A1(accumulator_A[26]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_60), .C1(n_0_0_136), .C2(n_0_28), .ZN(n_0_0_126));
   INV_X1 i_0_0_288 (.A(n_0_0_127), .ZN(n_0_252));
   AOI222_X1 i_0_0_289 (.A1(accumulator_A[27]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_61), .C1(n_0_0_136), .C2(n_0_29), .ZN(n_0_0_127));
   INV_X1 i_0_0_290 (.A(n_0_0_128), .ZN(n_0_253));
   AOI222_X1 i_0_0_291 (.A1(accumulator_A[28]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_62), .C1(n_0_0_136), .C2(n_0_30), .ZN(n_0_0_128));
   INV_X1 i_0_0_292 (.A(n_0_0_129), .ZN(n_0_254));
   AOI222_X1 i_0_0_293 (.A1(accumulator_A[29]), .A2(n_0_0_138), .B1(n_0_0_137), 
      .B2(n_0_63), .C1(n_0_0_136), .C2(n_0_31), .ZN(n_0_0_129));
   NAND2_X1 i_0_0_233 (.A1(n_0_0_130), .A2(n_0_0_134), .ZN(n_0_255));
   AOI22_X1 i_0_0_252 (.A1(n_0_64), .A2(n_0_0_137), .B1(n_0_0_136), .B2(n_0_32), 
      .ZN(n_0_0_130));
   NAND2_X1 i_0_0_296 (.A1(n_0_0_131), .A2(n_0_0_134), .ZN(n_0_256));
   AOI22_X1 i_0_0_297 (.A1(n_0_65), .A2(n_0_0_137), .B1(n_0_0_136), .B2(n_0_33), 
      .ZN(n_0_0_131));
   NAND2_X1 i_0_0_253 (.A1(accumulator_A[30]), .A2(n_0_0_138), .ZN(n_0_0_134));
   OR3_X1 i_0_0_254 (.A1(n_0_0_143), .A2(reset), .A3(enable), .ZN(n_0_257));
   NOR2_X1 i_0_0_255 (.A1(n_0_0_140), .A2(reset), .ZN(isNeg_in[0]));
   NOR2_X1 i_0_0_307 (.A1(n_0_0_142), .A2(reset), .ZN(isNeg_in[1]));
   OR2_X1 i_0_0_294 (.A1(reset), .A2(n_0_0_146), .ZN(n_0_258));
   INV_X1 i_0_0_295 (.A(isNeg[1]), .ZN(n_0_0_139));
   INV_X1 i_0_0_298 (.A(B[31]), .ZN(n_0_0_140));
   INV_X1 i_0_0_312 (.A(A[0]), .ZN(n_0_0_141));
   INV_X1 i_0_0_299 (.A(A[31]), .ZN(n_0_0_142));
   INV_X1 i_0_0_300 (.A(ready), .ZN(n_0_0_143));
   INV_X1 i_0_0_301 (.A(n_0_0_132), .ZN(n_0_0_146));
   INV_X1 i_0_0_302 (.A(n_0_0_32), .ZN(multiplicand_in[1]));
   AOI22_X1 i_0_0_303 (.A1(multiplicand_Q[2]), .A2(n_0_0_133), .B1(B[0]), 
      .B2(n_0_0_109), .ZN(n_0_0_32));
   INV_X1 i_0_0_304 (.A(n_0_0_109), .ZN(n_0_0_99));
   NOR2_X1 i_0_0_305 (.A1(reset), .A2(n_0_0_132), .ZN(n_0_0_109));
   NAND2_X1 i_0_0_306 (.A1(ready), .A2(enable), .ZN(n_0_0_132));
   NOR2_X1 i_0_0_308 (.A1(ready), .A2(reset), .ZN(n_0_0_133));
   INV_X1 i_0_0_309 (.A(n_0_0_135), .ZN(n_0_234));
   AOI222_X1 i_0_0_310 (.A1(accumulator_A[9]), .A2(n_0_0_138), .B1(n_0_43), 
      .B2(n_0_0_137), .C1(n_0_11), .C2(n_0_0_136), .ZN(n_0_0_135));
   NOR3_X1 i_0_0_311 (.A1(n_0_0_147), .A2(Res[0]), .A3(n_0_0_145), .ZN(n_0_0_136));
   NOR3_X1 i_0_0_313 (.A1(n_0_0_147), .A2(n_0_0_144), .A3(multiplicand_Q[0]), 
      .ZN(n_0_0_137));
   AOI221_X1 i_0_0_314 (.A(n_0_0_147), .B1(multiplicand_Q[0]), .B2(n_0_0_144), 
      .C1(n_0_0_145), .C2(Res[0]), .ZN(n_0_0_138));
   NOR2_X1 i_0_0_315 (.A1(n_0_0_147), .A2(n_0_0_144), .ZN(multiplicand_in[0]));
   INV_X1 i_0_0_316 (.A(Res[0]), .ZN(n_0_0_144));
   INV_X1 i_0_0_317 (.A(multiplicand_Q[0]), .ZN(n_0_0_145));
   INV_X1 i_0_0_318 (.A(n_0_0_133), .ZN(n_0_0_147));
endmodule
