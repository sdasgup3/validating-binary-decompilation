; ModuleID = '/tmp/tmp1jwxcopo-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon = type { i64 }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @init(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %var_2_4 = load i64, i64* %RBP.i, align 8
  %var_2_5 = add i64 %1, 1
  store i64 %var_2_5, i64* %var_2_3, align 8
  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %var_2_7 = load i64, i64* %var_2_6, align 8
  %var_2_8 = add i64 %var_2_7, -8
  %var_2_9 = inttoptr i64 %var_2_8 to i64*
  store i64 %var_2_4, i64* %var_2_9, align 8
  %var_2_10 = load i64, i64* %var_2_3, align 8
  store i64 %var_2_8, i64* %RBP.i, align 8
  %var_2_17 = add i64 %var_2_10, 17
  store i64 %var_2_17, i64* %var_2_3, align 8
  %var_2_19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_25, i64 0, i32 0
  %ECX.i23 = bitcast %union.anon* %var_2_25 to i32*
  %RDX.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_4006a2

block_.L_4006a2:                                  ; preds = %block_4006af, %entry
  %var_2_27 = phi i64 [ %var_2_27.pre, %block_4006af ], [ %var_2_8, %entry ]
  %var_2_26 = phi i64 [ %var_2_137, %block_4006af ], [ %var_2_17, %entry ]
  %var_2_28 = add i64 %var_2_27, -8
  %var_2_29 = add i64 %var_2_26, 7
  store i64 %var_2_29, i64* %var_2_3, align 8
  %var_2_30 = inttoptr i64 %var_2_28 to i32*
  %var_2_31 = load i32, i32* %var_2_30, align 4
  %var_2_32 = add i32 %var_2_31, -256
  %var_2_33 = icmp ult i32 %var_2_31, 256
  %var_2_34 = zext i1 %var_2_33 to i8
  store i8 %var_2_34, i8* %var_2_19, align 1
  %var_2_35 = and i32 %var_2_32, 255
  %var_2_36 = tail call i32 @llvm.ctpop.i32(i32 %var_2_35)
  %var_2_37 = trunc i32 %var_2_36 to i8
  %var_2_38 = and i8 %var_2_37, 1
  %var_2_39 = xor i8 %var_2_38, 1
  store i8 %var_2_39, i8* %var_2_20, align 1
  %var_2_40 = xor i32 %var_2_32, %var_2_31
  %var_2_41 = lshr i32 %var_2_40, 4
  %var_2_42 = trunc i32 %var_2_41 to i8
  %var_2_43 = and i8 %var_2_42, 1
  store i8 %var_2_43, i8* %var_2_21, align 1
  %var_2_44 = icmp eq i32 %var_2_32, 0
  %var_2_45 = zext i1 %var_2_44 to i8
  store i8 %var_2_45, i8* %var_2_22, align 1
  %var_2_46 = lshr i32 %var_2_32, 31
  %var_2_47 = trunc i32 %var_2_46 to i8
  store i8 %var_2_47, i8* %var_2_23, align 1
  %var_2_48 = lshr i32 %var_2_31, 31
  %var_2_49 = xor i32 %var_2_46, %var_2_48
  %var_2_50 = add nuw nsw i32 %var_2_49, %var_2_48
  %var_2_51 = icmp eq i32 %var_2_50, 2
  %var_2_52 = zext i1 %var_2_51 to i8
  store i8 %var_2_52, i8* %var_2_24, align 1
  %var_2_53 = icmp ne i8 %var_2_47, 0
  %var_2_54 = xor i1 %var_2_53, %var_2_51
  %.v = select i1 %var_2_54, i64 13, i64 68
  %var_2_55 = add i64 %.v, %var_2_26
  store i64 %var_2_55, i64* %var_2_3, align 8
  br i1 %var_2_54, label %block_4006af, label %block_.L_4006e6

block_4006af:                                     ; preds = %block_.L_4006a2
  %var_2_56 = add i64 %var_2_55, 4
  store i64 %var_2_56, i64* %var_2_3, align 8
  %var_2_57 = load i32, i32* %var_2_30, align 4
  %var_2_58 = sext i32 %var_2_57 to i64
  store i64 %var_2_58, i64* %RAX.i, align 8
  %var_2_59 = shl nsw i64 %var_2_58, 2
  %var_2_60 = add nsw i64 %var_2_59, 6299712
  %var_2_61 = add i64 %var_2_55, 11
  store i64 %var_2_61, i64* %var_2_3, align 8
  %var_2_62 = inttoptr i64 %var_2_60 to i32*
  %var_2_63 = load i32, i32* %var_2_62, align 4
  %var_2_64 = zext i32 %var_2_63 to i64
  store i64 %var_2_64, i64* %RCX.i, align 8
  %var_2_65 = add i64 %var_2_55, 15
  store i64 %var_2_65, i64* %var_2_3, align 8
  %var_2_66 = load i32, i32* %var_2_30, align 4
  %var_2_67 = sext i32 %var_2_66 to i64
  store i64 %var_2_67, i64* %RAX.i, align 8
  %var_2_68 = shl nsw i64 %var_2_67, 2
  %var_2_69 = add nsw i64 %var_2_68, 6300752
  %var_2_70 = add i64 %var_2_55, 22
  store i64 %var_2_70, i64* %var_2_3, align 8
  %var_2_71 = inttoptr i64 %var_2_69 to i32*
  store i32 %var_2_63, i32* %var_2_71, align 4
  %var_2_72 = load i64, i64* %RBP.i, align 8
  %var_2_73 = add i64 %var_2_72, -8
  %var_2_74 = load i64, i64* %var_2_3, align 8
  %var_2_75 = add i64 %var_2_74, 3
  store i64 %var_2_75, i64* %var_2_3, align 8
  %var_2_76 = inttoptr i64 %var_2_73 to i32*
  %var_2_77 = load i32, i32* %var_2_76, align 4
  %var_2_78 = add i32 %var_2_77, 256
  %var_2_79 = zext i32 %var_2_78 to i64
  store i64 %var_2_79, i64* %RDX.i20, align 8
  %var_2_80 = icmp ugt i32 %var_2_77, -257
  %var_2_81 = zext i1 %var_2_80 to i8
  store i8 %var_2_81, i8* %var_2_19, align 1
  %var_2_82 = and i32 %var_2_78, 255
  %var_2_83 = tail call i32 @llvm.ctpop.i32(i32 %var_2_82)
  %var_2_84 = trunc i32 %var_2_83 to i8
  %var_2_85 = and i8 %var_2_84, 1
  %var_2_86 = xor i8 %var_2_85, 1
  store i8 %var_2_86, i8* %var_2_20, align 1
  %var_2_87 = xor i32 %var_2_78, %var_2_77
  %var_2_88 = lshr i32 %var_2_87, 4
  %var_2_89 = trunc i32 %var_2_88 to i8
  %var_2_90 = and i8 %var_2_89, 1
  store i8 %var_2_90, i8* %var_2_21, align 1
  %var_2_91 = icmp eq i32 %var_2_78, 0
  %var_2_92 = zext i1 %var_2_91 to i8
  store i8 %var_2_92, i8* %var_2_22, align 1
  %var_2_93 = lshr i32 %var_2_78, 31
  %var_2_94 = trunc i32 %var_2_93 to i8
  store i8 %var_2_94, i8* %var_2_23, align 1
  %var_2_95 = lshr i32 %var_2_77, 31
  %var_2_96 = xor i32 %var_2_93, %var_2_95
  %var_2_97 = add nuw nsw i32 %var_2_96, %var_2_93
  %var_2_98 = icmp eq i32 %var_2_97, 2
  %var_2_99 = zext i1 %var_2_98 to i8
  store i8 %var_2_99, i8* %var_2_24, align 1
  %var_2_100 = sext i32 %var_2_78 to i64
  store i64 %var_2_100, i64* %RAX.i, align 8
  %var_2_101 = shl nsw i64 %var_2_100, 2
  %var_2_102 = add nsw i64 %var_2_101, 6300752
  %var_2_103 = load i32, i32* %ECX.i23, align 4
  %var_2_104 = add i64 %var_2_74, 19
  store i64 %var_2_104, i64* %var_2_3, align 8
  %var_2_105 = inttoptr i64 %var_2_102 to i32*
  store i32 %var_2_103, i32* %var_2_105, align 4
  %var_2_106 = load i64, i64* %RBP.i, align 8
  %var_2_107 = add i64 %var_2_106, -8
  %var_2_108 = load i64, i64* %var_2_3, align 8
  %var_2_109 = add i64 %var_2_108, 3
  store i64 %var_2_109, i64* %var_2_3, align 8
  %var_2_110 = inttoptr i64 %var_2_107 to i32*
  %var_2_111 = load i32, i32* %var_2_110, align 4
  %var_2_112 = add i32 %var_2_111, 1
  %var_2_113 = zext i32 %var_2_112 to i64
  store i64 %var_2_113, i64* %RAX.i, align 8
  %var_2_114 = icmp eq i32 %var_2_111, -1
  %var_2_115 = icmp eq i32 %var_2_112, 0
  %var_2_116 = or i1 %var_2_114, %var_2_115
  %var_2_117 = zext i1 %var_2_116 to i8
  store i8 %var_2_117, i8* %var_2_19, align 1
  %var_2_118 = and i32 %var_2_112, 255
  %var_2_119 = tail call i32 @llvm.ctpop.i32(i32 %var_2_118)
  %var_2_120 = trunc i32 %var_2_119 to i8
  %var_2_121 = and i8 %var_2_120, 1
  %var_2_122 = xor i8 %var_2_121, 1
  store i8 %var_2_122, i8* %var_2_20, align 1
  %var_2_123 = xor i32 %var_2_112, %var_2_111
  %var_2_124 = lshr i32 %var_2_123, 4
  %var_2_125 = trunc i32 %var_2_124 to i8
  %var_2_126 = and i8 %var_2_125, 1
  store i8 %var_2_126, i8* %var_2_21, align 1
  %var_2_127 = zext i1 %var_2_115 to i8
  store i8 %var_2_127, i8* %var_2_22, align 1
  %var_2_128 = lshr i32 %var_2_112, 31
  %var_2_129 = trunc i32 %var_2_128 to i8
  store i8 %var_2_129, i8* %var_2_23, align 1
  %var_2_130 = lshr i32 %var_2_111, 31
  %var_2_131 = xor i32 %var_2_128, %var_2_130
  %var_2_132 = add nuw nsw i32 %var_2_131, %var_2_128
  %var_2_133 = icmp eq i32 %var_2_132, 2
  %var_2_134 = zext i1 %var_2_133 to i8
  store i8 %var_2_134, i8* %var_2_24, align 1
  %var_2_135 = add i64 %var_2_108, 9
  store i64 %var_2_135, i64* %var_2_3, align 8
  store i32 %var_2_112, i32* %var_2_110, align 4
  %var_2_136 = load i64, i64* %var_2_3, align 8
  %var_2_137 = add i64 %var_2_136, -63
  store i64 %var_2_137, i64* %var_2_3, align 8
  %var_2_27.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4006a2

block_.L_4006e6:                                  ; preds = %block_.L_4006a2
  %var_2_138 = add i64 %var_2_27, -4
  %var_2_139 = add i64 %var_2_55, 3
  store i64 %var_2_139, i64* %var_2_3, align 8
  %var_2_140 = inttoptr i64 %var_2_138 to i32*
  %var_2_141 = load i32, i32* %var_2_140, align 4
  %var_2_142 = zext i32 %var_2_141 to i64
  store i64 %var_2_142, i64* %RAX.i, align 8
  %var_2_143 = add i64 %var_2_55, 4
  store i64 %var_2_143, i64* %var_2_3, align 8
  %var_2_144 = load i64, i64* %var_2_6, align 8
  %var_2_145 = add i64 %var_2_144, 8
  %var_2_146 = inttoptr i64 %var_2_144 to i64*
  %var_2_147 = load i64, i64* %var_2_146, align 8
  store i64 %var_2_147, i64* %RBP.i, align 8
  %var_2_148 = add i64 %var_2_55, 5
  store i64 %var_2_148, i64* %var_2_3, align 8
  %var_2_149 = inttoptr i64 %var_2_145 to i64*
  %var_2_150 = load i64, i64* %var_2_149, align 8
  store i64 %var_2_150, i64* %var_2_3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4006e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602040___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6299712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x602450___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6300752
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x100___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 256
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -257
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
