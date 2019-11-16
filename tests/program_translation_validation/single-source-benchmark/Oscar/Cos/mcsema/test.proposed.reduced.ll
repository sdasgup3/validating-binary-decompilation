; ModuleID = '/tmp/tmpl_33gh9u-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x978__rip__type = type <{ [4 x i8] }>
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
@G_0x978__rip_ = global %G_0x978__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @Cos(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_7, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %var_2_8, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_9, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_11:  %var_2_11 = inttoptr i64 %var_2_10 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_6, i64* %var_2_11, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_13 = bitcast %union.VectorReg* %var_2_12 to i8*
%var_2_14 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x978__rip__type* @G_0x978__rip_ to i64), i64 3)
%var_2_15 = add i64 %var_2_10, 11
store i64 %var_2_15, i64* %var_2_3, align 8
%var_2_16 = inttoptr i64 %var_2_14 to i32*
%var_2_17 = load i32, i32* %var_2_16, align 4
; Matched:%var_2_15:  %var_2_15 = bitcast %union.VectorReg* %var_2_4 to float*
; %var_2_18 = bitcast %union.VectorReg* %var_2_12 to float*
%var_2_19 = bitcast %union.VectorReg* %var_2_12 to i32*
store i32 %var_2_17, i32* %var_2_19, align 1
%var_2_20 = getelementptr inbounds i8, i8* %var_2_13, i64 4
%var_2_21 = bitcast i8* %var_2_20 to float*
store float 0.000000e+00, float* %var_2_21, align 1
%var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_23 = bitcast i64* %var_2_22 to float*
store float 0.000000e+00, float* %var_2_23, align 1
%var_2_24 = getelementptr inbounds i8, i8* %var_2_13, i64 12
%var_2_25 = bitcast i8* %var_2_24 to float*
store float 0.000000e+00, float* %var_2_25, align 1
; Matched:%var_2_23:  %var_2_23 = add i64 %var_2_9, -12
; %var_2_26 = add i64 %var_2_7, -12
; Matched:%var_2_24:  %var_2_24 = add i64 %var_2_12, 16
; %var_2_27 = add i64 %var_2_10, 16
; Matched:\<badref\>:  store i64 %var_2_24, i64* %PC, align 8
; store i64 %var_2_27, i64* %var_2_3, align 8
%var_2_28 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_29 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_30 = extractelement <2 x float> %var_2_29, i32 0
; Matched:%var_2_28:  %var_2_28 = inttoptr i64 %var_2_23 to float*
; %var_2_31 = inttoptr i64 %var_2_26 to float*
; Matched:\<badref\>:  store float %var_2_27, float* %var_2_28, align 4
; store float %var_2_30, float* %var_2_31, align 4
; Matched:%var_2_29:  %var_2_29 = load i64, i64* %RBP, align 8
; %var_2_32 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_30:  %var_2_30 = add i64 %var_2_29, -16
; %var_2_33 = add i64 %var_2_32, -16
%var_2_34 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_45, 5
; %var_2_35 = add i64 %var_2_34, 5
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_35, i64* %var_2_3, align 8
%var_2_36 = bitcast %union.VectorReg* %var_2_12 to <2 x float>*
%var_2_37 = load <2 x float>, <2 x float>* %var_2_36, align 1
%var_2_38 = extractelement <2 x float> %var_2_37, i32 0
; Matched:%var_2_36:  %var_2_36 = inttoptr i64 %var_2_30 to float*
; %var_2_39 = inttoptr i64 %var_2_33 to float*
; Matched:\<badref\>:  store float %var_2_35, float* %var_2_36, align 4
; store float %var_2_38, float* %var_2_39, align 4
%var_2_40 = load i64, i64* %RBP.i, align 8
%var_2_41 = add i64 %var_2_40, -12
; Matched:%var_2_39:  %var_2_39 = load i64, i64* %PC, align 8
; %var_2_42 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_64, 7
; %var_2_43 = add i64 %var_2_42, 7
; Matched:\<badref\>:  store i64 %var_2_65, i64* %PC, align 8
; store i64 %var_2_43, i64* %var_2_3, align 8
%var_2_44 = inttoptr i64 %var_2_41 to i32*
store i32 1, i32* %var_2_44, align 4
%var_2_45 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_43, -4
; %var_2_47 = add i64 %var_2_46, -4
%var_2_48 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_119, 5
; %var_2_49 = add i64 %var_2_48, 5
; Matched:\<badref\>:  store i64 %var_2_120, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = inttoptr i64 %var_2_44 to i32*
; %var_2_50 = inttoptr i64 %var_2_47 to i32*
; Matched:%var_2_48:  %var_2_48 = load i32, i32* %var_2_47, align 4
; %var_2_51 = load i32, i32* %var_2_50, align 4
; Matched:%var_2_49:  %var_2_49 = bitcast [32 x %union.VectorReg]* %var_2_3 to float*
; %var_2_52 = bitcast [32 x %union.VectorReg]* %var_2_11 to float*
; Matched:%var_2_50:  %var_2_50 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_53 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
; Matched:\<badref\>:  store i32 %var_2_48, i32* %var_2_50, align 1, !tbaa !1265
; store i32 %var_2_51, i32* %var_2_53, align 1
%var_2_54 = getelementptr inbounds i8, i8* %var_2_45, i64 4
%var_2_55 = bitcast i8* %var_2_54 to float*
store float 0.000000e+00, float* %var_2_55, align 1
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_57 = bitcast i64* %var_2_56 to float*
store float 0.000000e+00, float* %var_2_57, align 1
%var_2_58 = getelementptr inbounds i8, i8* %var_2_45, i64 12
%var_2_59 = bitcast i8* %var_2_58 to float*
store float 0.000000e+00, float* %var_2_59, align 1
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_43, -20
; %var_2_60 = add i64 %var_2_46, -20
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_119, 10
; %var_2_61 = add i64 %var_2_48, 10
; Matched:\<badref\>:  store i64 %var_2_58, i64* %PC, align 8
; store i64 %var_2_61, i64* %var_2_3, align 8
%var_2_62 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_63 = extractelement <2 x float> %var_2_62, i32 0
; Matched:%var_2_61:  %var_2_61 = inttoptr i64 %var_2_57 to float*
; %var_2_64 = inttoptr i64 %var_2_60 to float*
; Matched:\<badref\>:  store float %var_2_137, float* %var_2_138, align 4
; store float %var_2_63, float* %var_2_64, align 4
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %RBP, align 8
; %var_2_65 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_62, -8
; %var_2_66 = add i64 %var_2_65, -8
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %PC, align 8
; %var_2_67 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_39, 7
; %var_2_68 = add i64 %var_2_67, 7
; Matched:\<badref\>:  store i64 %var_2_40, i64* %PC, align 8
; store i64 %var_2_68, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = inttoptr i64 %var_2_63 to i32*
; %var_2_69 = inttoptr i64 %var_2_66 to i32*
; Matched:\<badref\>:  store i32 2, i32* %var_2_66, align 4
; store i32 2, i32* %var_2_69, align 4
%var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:%var_2_68:  %var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
%var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_76 = bitcast i64* %var_2_56 to <2 x i32>*
; Matched:%var_2_74:  %var_2_74 = bitcast i8* %var_2_51 to i32*
; %var_2_77 = bitcast i8* %var_2_54 to i32*
; Matched:%var_2_75:  %var_2_75 = bitcast i64* %var_2_53 to i32*
; %var_2_78 = bitcast i64* %var_2_56 to i32*
; Matched:%var_2_76:  %var_2_76 = bitcast i8* %var_2_55 to i32*
; %var_2_79 = bitcast i8* %var_2_58 to i32*
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_77:  %var_2_77 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_81 = bitcast %union.VectorReg* %var_2_80 to i8*
%var_2_82 = bitcast %union.VectorReg* %var_2_80 to <2 x i32>*
; Matched:%var_2_79:  %var_2_79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_84 = bitcast i64* %var_2_83 to <2 x i32>*
; Matched:%var_2_81:  %var_2_81 = bitcast %union.VectorReg* %var_2_5 to float*
; %var_2_85 = bitcast %union.VectorReg* %var_2_80 to float*
; Matched:%var_2_82:  %var_2_82 = getelementptr inbounds i8, i8* %var_2_77, i64 4
; %var_2_86 = getelementptr inbounds i8, i8* %var_2_81, i64 4
; Matched:%var_2_83:  %var_2_83 = bitcast i8* %var_2_82 to i32*
; %var_2_87 = bitcast i8* %var_2_86 to i32*
; Matched:%var_2_84:  %var_2_84 = bitcast i64* %var_2_79 to i32*
; %var_2_88 = bitcast i64* %var_2_83 to i32*
; Matched:%var_2_85:  %var_2_85 = getelementptr inbounds i8, i8* %var_2_77, i64 12
; %var_2_89 = getelementptr inbounds i8, i8* %var_2_81, i64 12
; Matched:%var_2_86:  %var_2_86 = bitcast i8* %var_2_85 to i32*
; %var_2_90 = bitcast i8* %var_2_89 to i32*
%var_2_91 = bitcast i64* %var_2_22 to <2 x i32>*
%var_2_92 = bitcast %union.VectorReg* %var_2_80 to <2 x float>*
; Matched:%var_2_89:  %var_2_89 = bitcast i8* %var_2_17 to i32*
; %var_2_93 = bitcast i8* %var_2_20 to i32*
; Matched:%var_2_90:  %var_2_90 = bitcast i64* %var_2_19 to i32*
; %var_2_94 = bitcast i64* %var_2_22 to i32*
; Matched:%var_2_91:  %var_2_91 = bitcast i8* %var_2_21 to i32*
; %var_2_95 = bitcast i8* %var_2_24 to i32*
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4005ae

block_.L_4005ae:                                  ; preds = %block_.L_400631, %entry
; Matched:%var_2_206:  %var_2_206 = phi i64 [ %var_2_185, %block_400631 ], [ %.pre, %block_400580 ]
; %var_2_96 = phi i64 [ %var_2_286, %block_.L_400631 ], [ %.pre, %entry ]
%var_2_97 = load i64, i64* %RBP.i, align 8
%var_2_98 = add i64 %var_2_97, -8
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_206, 4
; %var_2_99 = add i64 %var_2_96, 4
; Matched:\<badref\>:  store i64 %var_2_209, i64* %PC, align 8
; store i64 %var_2_99, i64* %var_2_3, align 8
%var_2_100 = inttoptr i64 %var_2_98 to i32*
%var_2_101 = load i32, i32* %var_2_100, align 4
%var_2_102 = add i32 %var_2_101, -10
; Matched:%var_2_213:  %var_2_213 = icmp ult i32 %var_2_211, 10
; %var_2_103 = icmp ult i32 %var_2_101, 10
; Matched:%var_2_214:  %var_2_214 = zext i1 %var_2_213 to i8
; %var_2_104 = zext i1 %var_2_103 to i8
; Matched:\<badref\>:  store i8 %var_2_214, i8* %var_2_67, align 1, !tbaa !1267
; store i8 %var_2_104, i8* %var_2_70, align 1
; Matched:%var_2_215:  %var_2_215 = and i32 %var_2_212, 255
; %var_2_105 = and i32 %var_2_102, 255
; Matched:%var_2_216:  %var_2_216 = tail call i32 @llvm.ctpop.i32(i32 %var_2_215) #12
; %var_2_106 = tail call i32 @llvm.ctpop.i32(i32 %var_2_105)
; Matched:%var_2_217:  %var_2_217 = trunc i32 %var_2_216 to i8
; %var_2_107 = trunc i32 %var_2_106 to i8
; Matched:%var_2_218:  %var_2_218 = and i8 %var_2_217, 1
; %var_2_108 = and i8 %var_2_107, 1
; Matched:%var_2_219:  %var_2_219 = xor i8 %var_2_218, 1
; %var_2_109 = xor i8 %var_2_108, 1
; Matched:\<badref\>:  store i8 %var_2_219, i8* %var_2_68, align 1, !tbaa !1281
; store i8 %var_2_109, i8* %var_2_71, align 1
; Matched:%var_2_220:  %var_2_220 = xor i32 %var_2_212, %var_2_211
; %var_2_110 = xor i32 %var_2_102, %var_2_101
; Matched:%var_2_221:  %var_2_221 = lshr i32 %var_2_220, 4
; %var_2_111 = lshr i32 %var_2_110, 4
; Matched:%var_2_222:  %var_2_222 = trunc i32 %var_2_221 to i8
; %var_2_112 = trunc i32 %var_2_111 to i8
; Matched:%var_2_223:  %var_2_223 = and i8 %var_2_222, 1
; %var_2_113 = and i8 %var_2_112, 1
; Matched:\<badref\>:  store i8 %var_2_223, i8* %var_2_69, align 1, !tbaa !1282
; store i8 %var_2_113, i8* %var_2_72, align 1
%var_2_114 = icmp eq i32 %var_2_102, 0
; Matched:%var_2_225:  %var_2_225 = zext i1 %var_2_224 to i8
; %var_2_115 = zext i1 %var_2_114 to i8
; Matched:\<badref\>:  store i8 %var_2_225, i8* %var_2_70, align 1, !tbaa !1283
; store i8 %var_2_115, i8* %var_2_73, align 1
%var_2_116 = lshr i32 %var_2_102, 31
%var_2_117 = trunc i32 %var_2_116 to i8
; Matched:\<badref\>:  store i8 %var_2_227, i8* %var_2_71, align 1, !tbaa !1284
; store i8 %var_2_117, i8* %var_2_74, align 1
%var_2_118 = lshr i32 %var_2_101, 31
%var_2_119 = xor i32 %var_2_116, %var_2_118
%var_2_120 = add nuw nsw i32 %var_2_119, %var_2_118
%var_2_121 = icmp eq i32 %var_2_120, 2
; Matched:%var_2_232:  %var_2_232 = zext i1 %var_2_231 to i8
; %var_2_122 = zext i1 %var_2_121 to i8
; Matched:\<badref\>:  store i8 %var_2_232, i8* %var_2_72, align 1, !tbaa !1285
; store i8 %var_2_122, i8* %var_2_75, align 1
%var_2_123 = icmp ne i8 %var_2_117, 0
%var_2_124 = xor i1 %var_2_123, %var_2_121
%.demorgan = or i1 %var_2_114, %var_2_124
; Matched:  %.v8 = select i1 %.demorgan, i64 10, i64 150
; %.v6 = select i1 %.demorgan, i64 10, i64 150
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_206, %.v8
; %var_2_125 = add i64 %var_2_96, %.v6
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_4005b8, label %block_.L_400644

block_4005b8:                                     ; preds = %block_.L_4005ae
; Matched:%var_2_92:  %var_2_92 = add i64 %var_2_207, -12
; %var_2_126 = add i64 %var_2_97, -12
; Matched:%var_2_93:  %var_2_93 = add i64 %var_2_235, 3
; %var_2_127 = add i64 %var_2_125, 3
; Matched:\<badref\>:  store i64 %var_2_93, i64* %PC, align 8
; store i64 %var_2_127, i64* %var_2_3, align 8
; Matched:%var_2_94:  %var_2_94 = inttoptr i64 %var_2_92 to i32*
; %var_2_128 = inttoptr i64 %var_2_126 to i32*
; Matched:%var_2_95:  %var_2_95 = load i32, i32* %var_2_94, align 4
; %var_2_129 = load i32, i32* %var_2_128, align 4
; Matched:%var_2_96:  %var_2_96 = zext i32 %var_2_95 to i64
; %var_2_130 = zext i32 %var_2_129 to i64
; Matched:\<badref\>:  store i64 %var_2_96, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_130, i64* %RAX.i79, align 8
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_235, 7
; %var_2_131 = add i64 %var_2_125, 7
; Matched:\<badref\>:  store i64 %var_2_97, i64* %PC, align 8
; store i64 %var_2_131, i64* %var_2_3, align 8
; Matched:%var_2_98:  %var_2_98 = load i32, i32* %var_2_210, align 4
; %var_2_132 = load i32, i32* %var_2_100, align 4
; Matched:%var_2_99:  %var_2_99 = sext i32 %var_2_95 to i64
; %var_2_133 = sext i32 %var_2_129 to i64
; Matched:%var_2_100:  %var_2_100 = sext i32 %var_2_98 to i64
; %var_2_134 = sext i32 %var_2_132 to i64
; Matched:%var_2_101:  %var_2_101 = mul nsw i64 %var_2_100, %var_2_99
; %var_2_135 = mul nsw i64 %var_2_134, %var_2_133
; Matched:%var_2_102:  %var_2_102 = trunc i64 %var_2_101 to i32
; %var_2_136 = trunc i64 %var_2_135 to i32
; Matched:%var_2_103:  %var_2_103 = and i64 %var_2_101, 4294967295
; %var_2_137 = and i64 %var_2_135, 4294967295
; Matched:\<badref\>:  store i64 %var_2_103, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_137, i64* %RAX.i79, align 8
; Matched:%var_2_104:  %var_2_104 = shl i64 %var_2_101, 32
; %var_2_138 = shl i64 %var_2_135, 32
; Matched:%var_2_105:  %var_2_105 = ashr exact i64 %var_2_104, 32
; %var_2_139 = ashr exact i64 %var_2_138, 32
; Matched:%var_2_106:  %var_2_106 = icmp ne i64 %var_2_105, %var_2_101
; %var_2_140 = icmp ne i64 %var_2_139, %var_2_135
; Matched:%var_2_107:  %var_2_107 = zext i1 %var_2_106 to i8
; %var_2_141 = zext i1 %var_2_140 to i8
; Matched:\<badref\>:  store i8 %var_2_107, i8* %var_2_67, align 1, !tbaa !1267
; store i8 %var_2_141, i8* %var_2_70, align 1
; Matched:%var_2_108:  %var_2_108 = and i32 %var_2_102, 255
; %var_2_142 = and i32 %var_2_136, 255
; Matched:%var_2_109:  %var_2_109 = tail call i32 @llvm.ctpop.i32(i32 %var_2_108) #12
; %var_2_143 = tail call i32 @llvm.ctpop.i32(i32 %var_2_142)
; Matched:%var_2_110:  %var_2_110 = trunc i32 %var_2_109 to i8
; %var_2_144 = trunc i32 %var_2_143 to i8
; Matched:%var_2_111:  %var_2_111 = and i8 %var_2_110, 1
; %var_2_145 = and i8 %var_2_144, 1
; Matched:%var_2_112:  %var_2_112 = xor i8 %var_2_111, 1
; %var_2_146 = xor i8 %var_2_145, 1
; Matched:\<badref\>:  store i8 %var_2_112, i8* %var_2_68, align 1, !tbaa !1281
; store i8 %var_2_146, i8* %var_2_71, align 1
store i8 0, i8* %var_2_72, align 1
store i8 0, i8* %var_2_73, align 1
; Matched:%var_2_113:  %var_2_113 = lshr i32 %var_2_102, 31
; %var_2_147 = lshr i32 %var_2_136, 31
; Matched:%var_2_114:  %var_2_114 = trunc i32 %var_2_113 to i8
; %var_2_148 = trunc i32 %var_2_147 to i8
; Matched:\<badref\>:  store i8 %var_2_114, i8* %var_2_71, align 1, !tbaa !1284
; store i8 %var_2_148, i8* %var_2_74, align 1
; Matched:\<badref\>:  store i8 %var_2_107, i8* %var_2_72, align 1, !tbaa !1285
; store i8 %var_2_141, i8* %var_2_75, align 1
; Matched:%var_2_115:  %var_2_115 = trunc i64 %var_2_101 to i32
; %var_2_149 = trunc i64 %var_2_135 to i32
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_235, 10
; %var_2_150 = add i64 %var_2_125, 10
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8
; store i64 %var_2_150, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_115, i32* %var_2_94, align 4
; store i32 %var_2_149, i32* %var_2_128, align 4
; Matched:%var_2_117:  %var_2_117 = load i64, i64* %RBP, align 8
; %var_2_151 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_117, -20
; %var_2_152 = add i64 %var_2_151, -20
%var_2_153 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_32:  %var_2_32 = add i64 %var_2_31, 5
; %var_2_154 = add i64 %var_2_153, 5
; Matched:\<badref\>:  store i64 %var_2_32, i64* %PC, align 8
; store i64 %var_2_154, i64* %var_2_3, align 8
; Matched:%var_2_121:  %var_2_121 = inttoptr i64 %var_2_118 to i32*
; %var_2_155 = inttoptr i64 %var_2_152 to i32*
; Matched:%var_2_122:  %var_2_122 = load i32, i32* %var_2_121, align 4
; %var_2_156 = load i32, i32* %var_2_155, align 4
; Matched:\<badref\>:  store i32 %var_2_122, i32* %var_2_50, align 1, !tbaa !1265
; store i32 %var_2_156, i32* %var_2_53, align 1
store float 0.000000e+00, float* %var_2_55, align 1
store float 0.000000e+00, float* %var_2_57, align 1
store float 0.000000e+00, float* %var_2_59, align 1
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_117, -4
; %var_2_157 = add i64 %var_2_151, -4
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_45, 10
; %var_2_158 = add i64 %var_2_153, 10
; Matched:\<badref\>:  store i64 %var_2_124, i64* %PC, align 8
; store i64 %var_2_158, i64* %var_2_3, align 8
%var_2_159 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_160 = load <2 x i32>, <2 x i32>* %var_2_76, align 1
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_123 to float*
; %var_2_161 = inttoptr i64 %var_2_157 to float*
; Matched:%var_2_128:  %var_2_128 = load float, float* %var_2_127, align 4
; %var_2_162 = load float, float* %var_2_161, align 4
%var_2_163 = extractelement <2 x float> %var_2_159, i32 0
; Matched:%var_2_130:  %var_2_130 = fmul float %var_2_129, %var_2_128
; %var_2_164 = fmul float %var_2_163, %var_2_162
; Matched:\<badref\>:  store float %var_2_130, float* %var_2_49, align 1, !tbaa !1265
; store float %var_2_164, float* %var_2_52, align 1
%var_2_165 = bitcast <2 x float> %var_2_159 to <2 x i32>
%var_2_166 = extractelement <2 x i32> %var_2_165, i32 1
; Matched:\<badref\>:  store i32 %var_2_197, i32* %var_2_74, align 1, !tbaa !1265
; store i32 %var_2_166, i32* %var_2_77, align 1
%var_2_167 = extractelement <2 x i32> %var_2_160, i32 0
; Matched:\<badref\>:  store i32 %var_2_189, i32* %var_2_75, align 1, !tbaa !1265
; store i32 %var_2_167, i32* %var_2_78, align 1
%var_2_168 = extractelement <2 x i32> %var_2_160, i32 1
; Matched:\<badref\>:  store i32 %var_2_199, i32* %var_2_76, align 1, !tbaa !1265
; store i32 %var_2_168, i32* %var_2_79, align 1
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_119, 15
; %var_2_169 = add i64 %var_2_153, 15
; Matched:\<badref\>:  store i64 %var_2_135, i64* %PC, align 8
; store i64 %var_2_169, i64* %var_2_3, align 8
%var_2_170 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_171 = extractelement <2 x float> %var_2_170, i32 0
; Matched:%var_2_138:  %var_2_138 = inttoptr i64 %var_2_118 to float*
; %var_2_172 = inttoptr i64 %var_2_152 to float*
; Matched:\<badref\>:  store float %var_2_60, float* %var_2_61, align 4
; store float %var_2_171, float* %var_2_172, align 4
%var_2_173 = load i64, i64* %RBP.i, align 8
%var_2_174 = add i64 %var_2_173, -8
; Matched:%var_2_141:  %var_2_141 = load i64, i64* %PC, align 8
; %var_2_175 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_141, 3
; %var_2_176 = add i64 %var_2_175, 3
; Matched:\<badref\>:  store i64 %var_2_142, i64* %PC, align 8
; store i64 %var_2_176, i64* %var_2_3, align 8
%var_2_177 = inttoptr i64 %var_2_174 to i32*
%var_2_178 = load i32, i32* %var_2_177, align 4
%var_2_179 = and i32 %var_2_178, 1
; Matched:%var_2_146:  %var_2_146 = zext i32 %var_2_145 to i64
; %var_2_180 = zext i32 %var_2_179 to i64
; Matched:\<badref\>:  store i64 %var_2_146, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_180, i64* %RAX.i79, align 8
store i8 0, i8* %var_2_70, align 1
; Matched:%var_2_147:  %var_2_147 = tail call i32 @llvm.ctpop.i32(i32 %var_2_145) #12
; %var_2_181 = tail call i32 @llvm.ctpop.i32(i32 %var_2_179)
; Matched:%var_2_148:  %var_2_148 = trunc i32 %var_2_147 to i8
; %var_2_182 = trunc i32 %var_2_181 to i8
; Matched:%var_2_149:  %var_2_149 = xor i8 %var_2_148, 1
; %var_2_183 = xor i8 %var_2_182, 1
; Matched:\<badref\>:  store i8 %var_2_149, i8* %var_2_68, align 1, !tbaa !1281
; store i8 %var_2_183, i8* %var_2_71, align 1
store i8 0, i8* %var_2_72, align 1
%var_2_184 = trunc i32 %var_2_179 to i8
%var_2_185 = xor i8 %var_2_184, 1
; Matched:\<badref\>:  store i8 %var_2_151, i8* %var_2_70, align 1, !tbaa !1283
; store i8 %var_2_185, i8* %var_2_73, align 1
store i8 0, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
%var_2_186 = icmp eq i8 %var_2_185, 0
; Matched:  %.v7 = select i1 %var_2_152, i64 96, i64 15
; %.v5 = select i1 %var_2_186, i64 96, i64 15
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_141, %.v7
; %var_2_187 = add i64 %var_2_175, %.v5
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_187, i64* %var_2_3, align 8
br i1 %var_2_186, label %block_.L_400631, label %block_4005e0

block_4005e0:                                     ; preds = %block_4005b8
; Matched:%var_2_251:  %var_2_251 = add i64 %var_2_153, 3
; %var_2_188 = add i64 %var_2_187, 3
; Matched:\<badref\>:  store i64 %var_2_251, i64* %PC, align 8
; store i64 %var_2_188, i64* %var_2_3, align 8
%var_2_189 = load i32, i32* %var_2_177, align 4
%var_2_190 = and i32 %var_2_189, 3
; Matched:%var_2_254:  %var_2_254 = zext i32 %var_2_253 to i64
; %var_2_191 = zext i32 %var_2_190 to i64
; Matched:\<badref\>:  store i64 %var_2_254, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_191, i64* %RAX.i79, align 8
%var_2_192 = icmp eq i32 %var_2_190, 0
; Matched:%var_2_256:  %var_2_256 = zext i1 %var_2_255 to i8
; %var_2_193 = zext i1 %var_2_192 to i8
store i8 0, i8* %var_2_70, align 1
; Matched:%var_2_257:  %var_2_257 = tail call i32 @llvm.ctpop.i32(i32 %var_2_253) #12
; %var_2_194 = tail call i32 @llvm.ctpop.i32(i32 %var_2_190)
; Matched:%var_2_258:  %var_2_258 = trunc i32 %var_2_257 to i8
; %var_2_195 = trunc i32 %var_2_194 to i8
; Matched:%var_2_259:  %var_2_259 = and i8 %var_2_258, 1
; %var_2_196 = and i8 %var_2_195, 1
; Matched:%var_2_260:  %var_2_260 = xor i8 %var_2_259, 1
; %var_2_197 = xor i8 %var_2_196, 1
; Matched:\<badref\>:  store i8 %var_2_260, i8* %var_2_68, align 1, !tbaa !1281
; store i8 %var_2_197, i8* %var_2_71, align 1
store i8 0, i8* %var_2_72, align 1
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_70, align 1, !tbaa !1283
; store i8 %var_2_193, i8* %var_2_73, align 1
store i8 0, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
; Matched:  %.v = select i1 %var_2_255, i64 15, i64 48
; %.v = select i1 %var_2_192, i64 15, i64 48
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_153, %.v
; %var_2_198 = add i64 %var_2_187, %.v
%var_2_199 = add i64 %var_2_173, -16
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_261, 5
; %var_2_200 = add i64 %var_2_198, 5
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_200, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_262 to i32*
; %var_2_201 = inttoptr i64 %var_2_199 to i32*
; Matched:%var_2_241:  %var_2_241 = load i32, i32* %var_2_240, align 4
; %var_2_202 = load i32, i32* %var_2_201, align 4
; Matched:\<badref\>:  store i32 %var_2_265, i32* %var_2_50, align 1, !tbaa !1265
; store i32 %var_2_202, i32* %var_2_53, align 1
store float 0.000000e+00, float* %var_2_55, align 1
store float 0.000000e+00, float* %var_2_57, align 1
store float 0.000000e+00, float* %var_2_59, align 1
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_139, -20
; %var_2_203 = add i64 %var_2_173, -20
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_261, 10
; %var_2_204 = add i64 %var_2_198, 10
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8
; store i64 %var_2_204, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = inttoptr i64 %var_2_266 to i32*
; %var_2_205 = inttoptr i64 %var_2_203 to i32*
; Matched:%var_2_269:  %var_2_269 = load i32, i32* %var_2_268, align 4
; %var_2_206 = load i32, i32* %var_2_205, align 4
; Matched:\<badref\>:  store i32 %var_2_269, i32* %var_2_16, align 1, !tbaa !1265
; store i32 %var_2_206, i32* %var_2_19, align 1
store float 0.000000e+00, float* %var_2_21, align 1
store float 0.000000e+00, float* %var_2_23, align 1
store float 0.000000e+00, float* %var_2_25, align 1
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_139, -12
; %var_2_207 = add i64 %var_2_173, -12
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_261, 15
; %var_2_208 = add i64 %var_2_198, 15
; Matched:\<badref\>:  store i64 %var_2_271, i64* %PC, align 8
; store i64 %var_2_208, i64* %var_2_3, align 8
%var_2_209 = load <2 x i32>, <2 x i32>* %var_2_82, align 1
%var_2_210 = load <2 x i32>, <2 x i32>* %var_2_84, align 1
; Matched:%var_2_274:  %var_2_274 = inttoptr i64 %var_2_270 to i32*
; %var_2_211 = inttoptr i64 %var_2_207 to i32*
; Matched:%var_2_275:  %var_2_275 = load i32, i32* %var_2_274, align 4
; %var_2_212 = load i32, i32* %var_2_211, align 4
; Matched:%var_2_276:  %var_2_276 = sitofp i32 %var_2_275 to float
; %var_2_213 = sitofp i32 %var_2_212 to float
; Matched:\<badref\>:  store float %var_2_276, float* %var_2_81, align 1, !tbaa !1265
; store float %var_2_213, float* %var_2_85, align 1
%var_2_214 = extractelement <2 x i32> %var_2_209, i32 1
; Matched:\<badref\>:  store i32 %var_2_277, i32* %var_2_83, align 1, !tbaa !1265
; store i32 %var_2_214, i32* %var_2_87, align 1
%var_2_215 = extractelement <2 x i32> %var_2_210, i32 0
; Matched:\<badref\>:  store i32 %var_2_278, i32* %var_2_84, align 1, !tbaa !1265
; store i32 %var_2_215, i32* %var_2_88, align 1
%var_2_216 = extractelement <2 x i32> %var_2_210, i32 1
; Matched:\<badref\>:  store i32 %var_2_279, i32* %var_2_86, align 1, !tbaa !1265
; store i32 %var_2_216, i32* %var_2_90, align 1
%var_2_217 = load <2 x float>, <2 x float>* %var_2_36, align 1
%var_2_218 = load <2 x i32>, <2 x i32>* %var_2_91, align 1
%var_2_219 = load <2 x float>, <2 x float>* %var_2_92, align 1
%var_2_220 = extractelement <2 x float> %var_2_217, i32 0
%var_2_221 = extractelement <2 x float> %var_2_219, i32 0
; Matched:%var_2_285:  %var_2_285 = fdiv float %var_2_283, %var_2_284
; %var_2_222 = fdiv float %var_2_220, %var_2_221
; Matched:\<badref\>:  store float %var_2_285, float* %var_2_15, align 1, !tbaa !1265
; store float %var_2_222, float* %var_2_18, align 1
%var_2_223 = bitcast <2 x float> %var_2_217 to <2 x i32>
%var_2_224 = extractelement <2 x i32> %var_2_223, i32 1
; Matched:\<badref\>:  store i32 %var_2_287, i32* %var_2_89, align 1, !tbaa !1265
; store i32 %var_2_224, i32* %var_2_93, align 1
%var_2_225 = extractelement <2 x i32> %var_2_218, i32 0
; Matched:\<badref\>:  store i32 %var_2_288, i32* %var_2_90, align 1, !tbaa !1265
; store i32 %var_2_225, i32* %var_2_94, align 1
%var_2_226 = extractelement <2 x i32> %var_2_218, i32 1
; Matched:\<badref\>:  store i32 %var_2_289, i32* %var_2_91, align 1, !tbaa !1265
; store i32 %var_2_226, i32* %var_2_95, align 1
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_261, 23
; %var_2_227 = add i64 %var_2_198, 23
; Matched:\<badref\>:  store i64 %var_2_290, i64* %PC, align 8
; store i64 %var_2_227, i64* %var_2_3, align 8
%var_2_228 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_229 = load <2 x i32>, <2 x i32>* %var_2_76, align 1
%var_2_230 = load <2 x float>, <2 x float>* %var_2_36, align 1
%var_2_231 = extractelement <2 x float> %var_2_228, i32 0
%var_2_232 = extractelement <2 x float> %var_2_230, i32 0
br i1 %var_2_192, label %block_4005ef, label %block_.L_400610

block_4005ef:                                     ; preds = %block_4005e0
; Matched:%var_2_195:  %var_2_195 = fadd float %var_2_294, %var_2_295
; %var_2_233 = fadd float %var_2_231, %var_2_232
; Matched:\<badref\>:  store float %var_2_195, float* %var_2_49, align 1, !tbaa !1265
; store float %var_2_233, float* %var_2_52, align 1
%var_2_234 = bitcast <2 x float> %var_2_228 to <2 x i32>
%var_2_235 = extractelement <2 x i32> %var_2_234, i32 1
; Matched:\<badref\>:  store i32 %var_2_132, i32* %var_2_74, align 1, !tbaa !1265
; store i32 %var_2_235, i32* %var_2_77, align 1
%var_2_236 = extractelement <2 x i32> %var_2_229, i32 0
; Matched:\<badref\>:  store i32 %var_2_198, i32* %var_2_75, align 1, !tbaa !1265
; store i32 %var_2_236, i32* %var_2_78, align 1
%var_2_237 = extractelement <2 x i32> %var_2_229, i32 1
; Matched:\<badref\>:  store i32 %var_2_134, i32* %var_2_76, align 1, !tbaa !1265
; store i32 %var_2_237, i32* %var_2_79, align 1
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_261, 28
; %var_2_238 = add i64 %var_2_198, 28
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_238, i64* %var_2_3, align 8
%var_2_239 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_240 = extractelement <2 x float> %var_2_239, i32 0
; Matched:%var_2_203:  %var_2_203 = inttoptr i64 %var_2_262 to float*
; %var_2_241 = inttoptr i64 %var_2_199 to float*
; Matched:\<badref\>:  store float %var_2_193, float* %var_2_194, align 4
; store float %var_2_240, float* %var_2_241, align 4
; Matched:%var_2_204:  %var_2_204 = load i64, i64* %PC, align 8
; %var_2_242 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_204, 33
; %var_2_243 = add i64 %var_2_242, 33
; Matched:\<badref\>:  store i64 %var_2_205, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %var_2_3, align 8
  br label %block_.L_40062c

block_.L_400610:                                  ; preds = %block_4005e0
; Matched:%var_2_186:  %var_2_186 = fsub float %var_2_294, %var_2_295
; %var_2_244 = fsub float %var_2_231, %var_2_232
; Matched:\<badref\>:  store float %var_2_186, float* %var_2_49, align 1, !tbaa !1265
; store float %var_2_244, float* %var_2_52, align 1
%var_2_245 = bitcast <2 x float> %var_2_228 to <2 x i32>
%var_2_246 = extractelement <2 x i32> %var_2_245, i32 1
; Matched:\<badref\>:  store i32 %var_2_188, i32* %var_2_74, align 1, !tbaa !1265
; store i32 %var_2_246, i32* %var_2_77, align 1
%var_2_247 = extractelement <2 x i32> %var_2_229, i32 0
; Matched:\<badref\>:  store i32 %var_2_133, i32* %var_2_75, align 1, !tbaa !1265
; store i32 %var_2_247, i32* %var_2_78, align 1
%var_2_248 = extractelement <2 x i32> %var_2_229, i32 1
; Matched:\<badref\>:  store i32 %var_2_190, i32* %var_2_76, align 1, !tbaa !1265
; store i32 %var_2_248, i32* %var_2_79, align 1
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_261, 28
; %var_2_249 = add i64 %var_2_198, 28
; Matched:\<badref\>:  store i64 %var_2_200, i64* %PC, align 8
; store i64 %var_2_249, i64* %var_2_3, align 8
%var_2_250 = load <2 x float>, <2 x float>* %var_2_28, align 1
%var_2_251 = extractelement <2 x float> %var_2_250, i32 0
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_262 to float*
; %var_2_252 = inttoptr i64 %var_2_199 to float*
; Matched:\<badref\>:  store float %var_2_202, float* %var_2_203, align 4
; store float %var_2_251, float* %var_2_252, align 4
; Matched:  %.pre5 = load i64, i64* %PC, align 8
; %.pre3 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40062c

block_.L_40062c:                                  ; preds = %block_.L_400610, %block_4005ef
; Matched:%var_2_236:  %var_2_236 = phi i64 [ %var_2_205, %block_4005ef ], [ %.pre5, %block_400610 ]
; %var_2_253 = phi i64 [ %.pre3, %block_.L_400610 ], [ %var_2_243, %block_4005ef ]
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_236, 5
; %var_2_254 = add i64 %var_2_253, 5
; Matched:\<badref\>:  store i64 %var_2_237, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_254, i64* %var_2_3, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400631

block_.L_400631:                                  ; preds = %block_.L_40062c, %block_4005b8
; Matched:%var_2_154:  %var_2_154 = phi i64 [ %.pre6, %block_40062c ], [ %var_2_139, %block_4005b8 ]
; %var_2_255 = phi i64 [ %.pre4, %block_.L_40062c ], [ %var_2_173, %block_4005b8 ]
; Matched:%var_2_155:  %var_2_155 = phi i64 [ %var_2_237, %block_40062c ], [ %var_2_153, %block_4005b8 ]
; %var_2_256 = phi i64 [ %var_2_254, %block_.L_40062c ], [ %var_2_187, %block_4005b8 ]
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_154, -8
; %var_2_257 = add i64 %var_2_255, -8
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_155, 8
; %var_2_258 = add i64 %var_2_256, 8
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_258, i64* %var_2_3, align 8
; Matched:%var_2_158:  %var_2_158 = inttoptr i64 %var_2_156 to i32*
; %var_2_259 = inttoptr i64 %var_2_257 to i32*
; Matched:%var_2_159:  %var_2_159 = load i32, i32* %var_2_158, align 4
; %var_2_260 = load i32, i32* %var_2_259, align 4
; Matched:%var_2_160:  %var_2_160 = add i32 %var_2_159, 1
; %var_2_261 = add i32 %var_2_260, 1
; Matched:%var_2_161:  %var_2_161 = zext i32 %var_2_160 to i64
; %var_2_262 = zext i32 %var_2_261 to i64
; Matched:\<badref\>:  store i64 %var_2_161, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_262, i64* %RAX.i79, align 8
; Matched:%var_2_162:  %var_2_162 = icmp eq i32 %var_2_159, -1
; %var_2_263 = icmp eq i32 %var_2_260, -1
; Matched:%var_2_163:  %var_2_163 = icmp eq i32 %var_2_160, 0
; %var_2_264 = icmp eq i32 %var_2_261, 0
; Matched:%var_2_164:  %var_2_164 = or i1 %var_2_162, %var_2_163
; %var_2_265 = or i1 %var_2_263, %var_2_264
; Matched:%var_2_165:  %var_2_165 = zext i1 %var_2_164 to i8
; %var_2_266 = zext i1 %var_2_265 to i8
; Matched:\<badref\>:  store i8 %var_2_165, i8* %var_2_67, align 1, !tbaa !1267
; store i8 %var_2_266, i8* %var_2_70, align 1
; Matched:%var_2_166:  %var_2_166 = and i32 %var_2_160, 255
; %var_2_267 = and i32 %var_2_261, 255
; Matched:%var_2_167:  %var_2_167 = tail call i32 @llvm.ctpop.i32(i32 %var_2_166) #12
; %var_2_268 = tail call i32 @llvm.ctpop.i32(i32 %var_2_267)
; Matched:%var_2_168:  %var_2_168 = trunc i32 %var_2_167 to i8
; %var_2_269 = trunc i32 %var_2_268 to i8
; Matched:%var_2_169:  %var_2_169 = and i8 %var_2_168, 1
; %var_2_270 = and i8 %var_2_269, 1
; Matched:%var_2_170:  %var_2_170 = xor i8 %var_2_169, 1
; %var_2_271 = xor i8 %var_2_270, 1
; Matched:\<badref\>:  store i8 %var_2_170, i8* %var_2_68, align 1, !tbaa !1281
; store i8 %var_2_271, i8* %var_2_71, align 1
; Matched:%var_2_171:  %var_2_171 = xor i32 %var_2_160, %var_2_159
; %var_2_272 = xor i32 %var_2_261, %var_2_260
; Matched:%var_2_172:  %var_2_172 = lshr i32 %var_2_171, 4
; %var_2_273 = lshr i32 %var_2_272, 4
; Matched:%var_2_173:  %var_2_173 = trunc i32 %var_2_172 to i8
; %var_2_274 = trunc i32 %var_2_273 to i8
; Matched:%var_2_174:  %var_2_174 = and i8 %var_2_173, 1
; %var_2_275 = and i8 %var_2_274, 1
; Matched:\<badref\>:  store i8 %var_2_174, i8* %var_2_69, align 1, !tbaa !1282
; store i8 %var_2_275, i8* %var_2_72, align 1
; Matched:%var_2_175:  %var_2_175 = zext i1 %var_2_163 to i8
; %var_2_276 = zext i1 %var_2_264 to i8
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_70, align 1, !tbaa !1283
; store i8 %var_2_276, i8* %var_2_73, align 1
; Matched:%var_2_176:  %var_2_176 = lshr i32 %var_2_160, 31
; %var_2_277 = lshr i32 %var_2_261, 31
; Matched:%var_2_177:  %var_2_177 = trunc i32 %var_2_176 to i8
; %var_2_278 = trunc i32 %var_2_277 to i8
; Matched:\<badref\>:  store i8 %var_2_177, i8* %var_2_71, align 1, !tbaa !1284
; store i8 %var_2_278, i8* %var_2_74, align 1
; Matched:%var_2_178:  %var_2_178 = lshr i32 %var_2_159, 31
; %var_2_279 = lshr i32 %var_2_260, 31
; Matched:%var_2_179:  %var_2_179 = xor i32 %var_2_176, %var_2_178
; %var_2_280 = xor i32 %var_2_277, %var_2_279
; Matched:%var_2_180:  %var_2_180 = add nuw nsw i32 %var_2_179, %var_2_176
; %var_2_281 = add nuw nsw i32 %var_2_280, %var_2_277
; Matched:%var_2_181:  %var_2_181 = icmp eq i32 %var_2_180, 2
; %var_2_282 = icmp eq i32 %var_2_281, 2
; Matched:%var_2_182:  %var_2_182 = zext i1 %var_2_181 to i8
; %var_2_283 = zext i1 %var_2_282 to i8
; Matched:\<badref\>:  store i8 %var_2_182, i8* %var_2_72, align 1, !tbaa !1285
; store i8 %var_2_283, i8* %var_2_75, align 1
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_155, 14
; %var_2_284 = add i64 %var_2_256, 14
; Matched:\<badref\>:  store i64 %var_2_183, i64* %PC, align 8
; store i64 %var_2_284, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_160, i32* %var_2_158, align 4
; store i32 %var_2_261, i32* %var_2_259, align 4
; Matched:%var_2_184:  %var_2_184 = load i64, i64* %PC, align 8
; %var_2_285 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_184, -145
; %var_2_286 = add i64 %var_2_285, -145
; Matched:\<badref\>:  store i64 %var_2_185, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_286, i64* %var_2_3, align 8
  br label %block_.L_4005ae

block_.L_400644:                                  ; preds = %block_.L_4005ae
%var_2_287 = add i64 %var_2_97, -16
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_235, 5
; %var_2_288 = add i64 %var_2_125, 5
; Matched:\<badref\>:  store i64 %var_2_239, i64* %PC, align 8
; store i64 %var_2_288, i64* %var_2_3, align 8
; Matched:%var_2_240:  %var_2_240 = inttoptr i64 %var_2_238 to i32*
; %var_2_289 = inttoptr i64 %var_2_287 to i32*
; Matched:%var_2_265:  %var_2_265 = load i32, i32* %var_2_264, align 4
; %var_2_290 = load i32, i32* %var_2_289, align 4
; Matched:\<badref\>:  store i32 %var_2_241, i32* %var_2_50, align 1, !tbaa !1265
; store i32 %var_2_290, i32* %var_2_53, align 1
store float 0.000000e+00, float* %var_2_55, align 1
store float 0.000000e+00, float* %var_2_57, align 1
store float 0.000000e+00, float* %var_2_59, align 1
; Matched:%var_2_242:  %var_2_242 = add i64 %var_2_235, 6
; %var_2_291 = add i64 %var_2_125, 6
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8
; store i64 %var_2_291, i64* %var_2_3, align 8
; Matched:%var_2_243:  %var_2_243 = load i64, i64* %var_2_8, align 8, !tbaa !1261
; %var_2_292 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_243, 8
; %var_2_293 = add i64 %var_2_292, 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_243 to i64*
; %var_2_294 = inttoptr i64 %var_2_292 to i64*
; Matched:%var_2_246:  %var_2_246 = load i64, i64* %var_2_245, align 8
; %var_2_295 = load i64, i64* %var_2_294, align 8
; Matched:\<badref\>:  store i64 %var_2_246, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_295, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_244, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_293, i64* %var_2_6, align 8
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_235, 7
; %var_2_296 = add i64 %var_2_125, 7
; Matched:\<badref\>:  store i64 %var_2_247, i64* %PC, align 8
; store i64 %var_2_296, i64* %var_2_3, align 8
; Matched:%var_2_248:  %var_2_248 = inttoptr i64 %var_2_244 to i64*
; %var_2_297 = inttoptr i64 %var_2_293 to i64*
; Matched:%var_2_249:  %var_2_249 = load i64, i64* %var_2_248, align 8
; %var_2_298 = load i64, i64* %var_2_297, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_298, i64* %var_2_3, align 8
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_243, 16
; %var_2_299 = add i64 %var_2_292, 16
; Matched:\<badref\>:  store i64 %var_2_250, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss_0x978__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x978__rip__type* @G_0x978__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jg_.L_400644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_imull_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 3
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400610(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40062c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400636(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4005ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
