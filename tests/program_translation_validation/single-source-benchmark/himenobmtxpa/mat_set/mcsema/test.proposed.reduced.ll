; ModuleID = '/tmp/tmp5hos62ed-query.ll'
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
define %struct.Memory* @mat_set(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_5:  %var_2_5 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
%var_2_5 = add i64 %1, 1
store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %var_2_8, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_10:  %var_2_10 = inttoptr i64 %var_2_9 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_10, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_32:  %var_2_32 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -16
; %var_2_11 = add i64 %var_2_7, -16
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %RDI, align 8
; %var_2_12 = load i64, i64* %RDI.i, align 8
; Matched:%var_2_33:  %var_2_33 = add i64 %var_2_32, 7
; %var_2_13 = add i64 %var_2_10, 7
; Matched:\<badref\>:  store i64 %var_2_14, i64* %PC, align 8
; store i64 %var_2_13, i64* %var_2_3, align 8
; Matched:%var_2_15:  %var_2_15 = inttoptr i64 %var_2_12 to i64*
; %var_2_14 = inttoptr i64 %var_2_11 to i64*
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_15, align 8
; store i64 %var_2_12, i64* %var_2_14, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %ESI = bitcast %union.anon* %var_2_3 to i32*
; %ESI.i133 = bitcast %union.anon* %var_2_15 to i32*
; Matched:%var_2_16:  %var_2_16 = load i64, i64* %RBP, align 8
; %var_2_16 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_17:  %var_2_17 = add i64 %var_2_16, -12
; %var_2_17 = add i64 %var_2_16, -12
; Matched:%var_2_18:  %var_2_18 = load i32, i32* %ESI, align 4
; %var_2_18 = load i32, i32* %ESI.i133, align 4
; Matched:%var_2_19:  %var_2_19 = load i64, i64* %PC, align 8
; %var_2_19 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_364:  %var_2_364 = add i64 %var_2_363, 3
; %var_2_20 = add i64 %var_2_19, 3
; Matched:\<badref\>:  store i64 %var_2_364, i64* %PC, align 8
; store i64 %var_2_20, i64* %var_2_3, align 8
; Matched:%var_2_21:  %var_2_21 = inttoptr i64 %var_2_17 to i32*
; %var_2_21 = inttoptr i64 %var_2_17 to i32*
; Matched:\<badref\>:  store i32 %var_2_18, i32* %var_2_21, align 4
; store i32 %var_2_18, i32* %var_2_21, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; Matched:%var_2_22:  %var_2_22 = load i64, i64* %RBP, align 8
; %var_2_23 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_23:  %var_2_23 = add i64 %var_2_22, -16
; %var_2_24 = add i64 %var_2_23, -16
; Matched:%var_2_24:  %var_2_24 = load i64, i64* %PC, align 8
; %var_2_25 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_25:  %var_2_25 = add i64 %var_2_24, 5
; %var_2_26 = add i64 %var_2_25, 5
; Matched:\<badref\>:  store i64 %var_2_25, i64* %PC, align 8
; store i64 %var_2_26, i64* %var_2_3, align 8
%var_2_27 = bitcast %union.VectorReg* %var_2_22 to <2 x float>*
%var_2_28 = load <2 x float>, <2 x float>* %var_2_27, align 1
%var_2_29 = extractelement <2 x float> %var_2_28, i32 0
; Matched:%var_2_29:  %var_2_29 = inttoptr i64 %var_2_23 to float*
; %var_2_30 = inttoptr i64 %var_2_24 to float*
; Matched:\<badref\>:  store float %var_2_28, float* %var_2_29, align 4
; store float %var_2_29, float* %var_2_30, align 4
%var_2_31 = load i64, i64* %RBP.i, align 8
%var_2_32 = add i64 %var_2_31, -20
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %PC, align 8
; %var_2_33 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_11, 7
; %var_2_34 = add i64 %var_2_33, 7
; Matched:\<badref\>:  store i64 %var_2_33, i64* %PC, align 8
; store i64 %var_2_34, i64* %var_2_3, align 8
%var_2_35 = inttoptr i64 %var_2_32 to i32*
store i32 0, i32* %var_2_35, align 4
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_35:  %var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:%var_2_36:  %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:%var_2_40:  %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:%var_2_41:  %var_2_41 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_42 = bitcast %union.VectorReg* %var_2_22 to i8*
; Matched:%var_2_42:  %var_2_42 = bitcast %union.VectorReg* %var_2_4 to i32*
; %var_2_43 = bitcast %union.VectorReg* %var_2_22 to i32*
; Matched:%var_2_43:  %var_2_43 = getelementptr inbounds i8, i8* %var_2_41, i64 4
; %var_2_44 = getelementptr inbounds i8, i8* %var_2_42, i64 4
; Matched:%var_2_44:  %var_2_44 = bitcast i8* %var_2_43 to float*
; %var_2_45 = bitcast i8* %var_2_44 to float*
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_46:  %var_2_46 = bitcast i64* %var_2_45 to float*
; %var_2_47 = bitcast i64* %var_2_46 to float*
; Matched:%var_2_47:  %var_2_47 = getelementptr inbounds i8, i8* %var_2_41, i64 12
; %var_2_48 = getelementptr inbounds i8, i8* %var_2_42, i64 12
; Matched:%var_2_48:  %var_2_48 = bitcast i8* %var_2_47 to float*
; %var_2_49 = bitcast i8* %var_2_48 to float*
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:  %RSI = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RSI.i63 = getelementptr inbounds %union.anon, %union.anon* %var_2_15, i64 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c37

block_.L_400c37:                                  ; preds = %block_.L_400cea, %entry
; Matched:%var_2_82:  %var_2_82 = phi i64 [ %var_2_464, %block_400cea ], [ %.pre, %block_400c20 ]
; %var_2_50 = phi i64 [ %var_2_510, %block_.L_400cea ], [ %.pre, %entry ]
%var_2_51 = load i64, i64* %RBP.i, align 8
%var_2_52 = add i64 %var_2_51, -20
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_82, 3
; %var_2_53 = add i64 %var_2_50, 3
; Matched:\<badref\>:  store i64 %var_2_85, i64* %PC, align 8
; store i64 %var_2_53, i64* %var_2_3, align 8
%var_2_54 = inttoptr i64 %var_2_52 to i32*
%var_2_55 = load i32, i32* %var_2_54, align 4
; Matched:%var_2_88:  %var_2_88 = zext i32 %var_2_87 to i64
; %var_2_56 = zext i32 %var_2_55 to i64
; Matched:\<badref\>:  store i64 %var_2_88, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_56, i64* %RAX.i125, align 8
%var_2_57 = add i64 %var_2_51, -8
; Matched:%var_2_90:  %var_2_90 = add i64 %var_2_82, 7
; %var_2_58 = add i64 %var_2_50, 7
; Matched:\<badref\>:  store i64 %var_2_90, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
%var_2_59 = inttoptr i64 %var_2_57 to i64*
%var_2_60 = load i64, i64* %var_2_59, align 8
; Matched:\<badref\>:  store i64 %var_2_475, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %RCX.i122, align 8
%var_2_61 = add i64 %var_2_60, 12
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_82, 10
; %var_2_62 = add i64 %var_2_50, 10
; Matched:\<badref\>:  store i64 %var_2_94, i64* %PC, align 8
; store i64 %var_2_62, i64* %var_2_3, align 8
%var_2_63 = inttoptr i64 %var_2_61 to i32*
%var_2_64 = load i32, i32* %var_2_63, align 4
%var_2_65 = sub i32 %var_2_55, %var_2_64
; Matched:%var_2_98:  %var_2_98 = icmp ult i32 %var_2_87, %var_2_96
; %var_2_66 = icmp ult i32 %var_2_55, %var_2_64
; Matched:%var_2_99:  %var_2_99 = zext i1 %var_2_98 to i8
; %var_2_67 = zext i1 %var_2_66 to i8
; Matched:\<badref\>:  store i8 %var_2_99, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_67, i8* %var_2_36, align 1
; Matched:%var_2_100:  %var_2_100 = and i32 %var_2_97, 255
; %var_2_68 = and i32 %var_2_65, 255
; Matched:%var_2_101:  %var_2_101 = tail call i32 @llvm.ctpop.i32(i32 %var_2_100) #12
; %var_2_69 = tail call i32 @llvm.ctpop.i32(i32 %var_2_68)
; Matched:%var_2_102:  %var_2_102 = trunc i32 %var_2_101 to i8
; %var_2_70 = trunc i32 %var_2_69 to i8
; Matched:%var_2_103:  %var_2_103 = and i8 %var_2_102, 1
; %var_2_71 = and i8 %var_2_70, 1
; Matched:%var_2_104:  %var_2_104 = xor i8 %var_2_103, 1
; %var_2_72 = xor i8 %var_2_71, 1
; Matched:\<badref\>:  store i8 %var_2_104, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_72, i8* %var_2_37, align 1
; Matched:%var_2_105:  %var_2_105 = xor i32 %var_2_96, %var_2_87
; %var_2_73 = xor i32 %var_2_64, %var_2_55
; Matched:%var_2_106:  %var_2_106 = xor i32 %var_2_105, %var_2_97
; %var_2_74 = xor i32 %var_2_73, %var_2_65
; Matched:%var_2_107:  %var_2_107 = lshr i32 %var_2_106, 4
; %var_2_75 = lshr i32 %var_2_74, 4
; Matched:%var_2_108:  %var_2_108 = trunc i32 %var_2_107 to i8
; %var_2_76 = trunc i32 %var_2_75 to i8
; Matched:%var_2_109:  %var_2_109 = and i8 %var_2_108, 1
; %var_2_77 = and i8 %var_2_76, 1
; Matched:\<badref\>:  store i8 %var_2_109, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_77, i8* %var_2_38, align 1
; Matched:%var_2_110:  %var_2_110 = icmp eq i32 %var_2_97, 0
; %var_2_78 = icmp eq i32 %var_2_65, 0
; Matched:%var_2_111:  %var_2_111 = zext i1 %var_2_110 to i8
; %var_2_79 = zext i1 %var_2_78 to i8
; Matched:\<badref\>:  store i8 %var_2_111, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_79, i8* %var_2_39, align 1
%var_2_80 = lshr i32 %var_2_65, 31
%var_2_81 = trunc i32 %var_2_80 to i8
; Matched:\<badref\>:  store i8 %var_2_113, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_81, i8* %var_2_40, align 1
%var_2_82 = lshr i32 %var_2_55, 31
%var_2_83 = lshr i32 %var_2_64, 31
%var_2_84 = xor i32 %var_2_83, %var_2_82
%var_2_85 = xor i32 %var_2_80, %var_2_82
%var_2_86 = add nuw nsw i32 %var_2_85, %var_2_84
%var_2_87 = icmp eq i32 %var_2_86, 2
; Matched:%var_2_120:  %var_2_120 = zext i1 %var_2_119 to i8
; %var_2_88 = zext i1 %var_2_87 to i8
; Matched:\<badref\>:  store i8 %var_2_120, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_88, i8* %var_2_41, align 1
%var_2_89 = icmp ne i8 %var_2_81, 0
%var_2_90 = xor i1 %var_2_89, %var_2_87
; Matched:  %.v10 = select i1 %var_2_122, i64 16, i64 198
; %.v10 = select i1 %var_2_90, i64 16, i64 198
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_82, %.v10
; %var_2_91 = add i64 %var_2_50, %.v10
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_91, i64* %var_2_3, align 8
br i1 %var_2_90, label %block_400c47, label %block_.L_400cfd

block_400c47:                                     ; preds = %block_.L_400c37
%var_2_92 = add i64 %var_2_51, -24
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_123, 7
; %var_2_93 = add i64 %var_2_91, 7
; Matched:\<badref\>:  store i64 %var_2_517, i64* %PC, align 8
; store i64 %var_2_93, i64* %var_2_3, align 8
%var_2_94 = inttoptr i64 %var_2_92 to i32*
store i32 0, i32* %var_2_94, align 4
; Matched:  %.pre7 = load i64, i64* %PC, align 8
; %.pre7 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c4e

block_.L_400c4e:                                  ; preds = %block_.L_400cd7, %block_400c47
; Matched:%var_2_393:  %var_2_393 = phi i64 [ %.pre7, %block_400c47 ], [ %var_2_78, %block_400cd7 ]
; %var_2_95 = phi i64 [ %var_2_480, %block_.L_400cd7 ], [ %.pre7, %block_400c47 ]
%var_2_96 = load i64, i64* %RBP.i, align 8
%var_2_97 = add i64 %var_2_96, -24
; Matched:%var_2_396:  %var_2_396 = add i64 %var_2_393, 3
; %var_2_98 = add i64 %var_2_95, 3
; Matched:\<badref\>:  store i64 %var_2_396, i64* %PC, align 8
; store i64 %var_2_98, i64* %var_2_3, align 8
%var_2_99 = inttoptr i64 %var_2_97 to i32*
%var_2_100 = load i32, i32* %var_2_99, align 4
; Matched:%var_2_399:  %var_2_399 = zext i32 %var_2_398 to i64
; %var_2_101 = zext i32 %var_2_100 to i64
; Matched:\<badref\>:  store i64 %var_2_399, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_101, i64* %RAX.i125, align 8
%var_2_102 = add i64 %var_2_96, -8
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_393, 7
; %var_2_103 = add i64 %var_2_95, 7
; Matched:\<badref\>:  store i64 %var_2_401, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i64*
%var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:\<badref\>:  store i64 %var_2_403, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_105, i64* %RCX.i122, align 8
%var_2_106 = add i64 %var_2_105, 16
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_393, 10
; %var_2_107 = add i64 %var_2_95, 10
; Matched:\<badref\>:  store i64 %var_2_405, i64* %PC, align 8
; store i64 %var_2_107, i64* %var_2_3, align 8
%var_2_108 = inttoptr i64 %var_2_106 to i32*
%var_2_109 = load i32, i32* %var_2_108, align 4
%var_2_110 = sub i32 %var_2_100, %var_2_109
; Matched:%var_2_409:  %var_2_409 = icmp ult i32 %var_2_398, %var_2_407
; %var_2_111 = icmp ult i32 %var_2_100, %var_2_109
; Matched:%var_2_410:  %var_2_410 = zext i1 %var_2_409 to i8
; %var_2_112 = zext i1 %var_2_111 to i8
; Matched:\<badref\>:  store i8 %var_2_410, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_112, i8* %var_2_36, align 1
; Matched:%var_2_411:  %var_2_411 = and i32 %var_2_408, 255
; %var_2_113 = and i32 %var_2_110, 255
; Matched:%var_2_412:  %var_2_412 = tail call i32 @llvm.ctpop.i32(i32 %var_2_411) #12
; %var_2_114 = tail call i32 @llvm.ctpop.i32(i32 %var_2_113)
; Matched:%var_2_413:  %var_2_413 = trunc i32 %var_2_412 to i8
; %var_2_115 = trunc i32 %var_2_114 to i8
; Matched:%var_2_414:  %var_2_414 = and i8 %var_2_413, 1
; %var_2_116 = and i8 %var_2_115, 1
; Matched:%var_2_415:  %var_2_415 = xor i8 %var_2_414, 1
; %var_2_117 = xor i8 %var_2_116, 1
; Matched:\<badref\>:  store i8 %var_2_415, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_117, i8* %var_2_37, align 1
; Matched:%var_2_416:  %var_2_416 = xor i32 %var_2_407, %var_2_398
; %var_2_118 = xor i32 %var_2_109, %var_2_100
; Matched:%var_2_417:  %var_2_417 = xor i32 %var_2_416, %var_2_408
; %var_2_119 = xor i32 %var_2_118, %var_2_110
; Matched:%var_2_418:  %var_2_418 = lshr i32 %var_2_417, 4
; %var_2_120 = lshr i32 %var_2_119, 4
; Matched:%var_2_419:  %var_2_419 = trunc i32 %var_2_418 to i8
; %var_2_121 = trunc i32 %var_2_120 to i8
; Matched:%var_2_420:  %var_2_420 = and i8 %var_2_419, 1
; %var_2_122 = and i8 %var_2_121, 1
; Matched:\<badref\>:  store i8 %var_2_420, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_122, i8* %var_2_38, align 1
; Matched:%var_2_421:  %var_2_421 = icmp eq i32 %var_2_408, 0
; %var_2_123 = icmp eq i32 %var_2_110, 0
; Matched:%var_2_422:  %var_2_422 = zext i1 %var_2_421 to i8
; %var_2_124 = zext i1 %var_2_123 to i8
; Matched:\<badref\>:  store i8 %var_2_422, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_124, i8* %var_2_39, align 1
%var_2_125 = lshr i32 %var_2_110, 31
%var_2_126 = trunc i32 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_424, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_126, i8* %var_2_40, align 1
%var_2_127 = lshr i32 %var_2_100, 31
%var_2_128 = lshr i32 %var_2_109, 31
%var_2_129 = xor i32 %var_2_128, %var_2_127
%var_2_130 = xor i32 %var_2_125, %var_2_127
%var_2_131 = add nuw nsw i32 %var_2_130, %var_2_129
%var_2_132 = icmp eq i32 %var_2_131, 2
; Matched:%var_2_431:  %var_2_431 = zext i1 %var_2_430 to i8
; %var_2_133 = zext i1 %var_2_132 to i8
; Matched:\<badref\>:  store i8 %var_2_431, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_133, i8* %var_2_41, align 1
%var_2_134 = icmp ne i8 %var_2_126, 0
%var_2_135 = xor i1 %var_2_134, %var_2_132
; Matched:  %.v = select i1 %var_2_433, i64 16, i64 156
; %.v = select i1 %var_2_135, i64 16, i64 156
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_393, %.v
; %var_2_136 = add i64 %var_2_95, %.v
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %var_2_3, align 8
br i1 %var_2_135, label %block_400c5e, label %block_.L_400cea

block_400c5e:                                     ; preds = %block_.L_400c4e
%var_2_137 = add i64 %var_2_96, -28
; Matched:%var_2_80:  %var_2_80 = add i64 %var_2_434, 7
; %var_2_138 = add i64 %var_2_136, 7
; Matched:\<badref\>:  store i64 %var_2_80, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
%var_2_139 = inttoptr i64 %var_2_137 to i32*
store i32 0, i32* %var_2_139, align 4
; Matched:  %.pre8 = load i64, i64* %PC, align 8
; %.pre8 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400c65

block_.L_400c65:                                  ; preds = %block_400c75, %block_400c5e
; Matched:%var_2_465:  %var_2_465 = phi i64 [ %var_2_392, %block_400c75 ], [ %.pre8, %block_400c5e ]
; %var_2_140 = phi i64 [ %var_2_450, %block_400c75 ], [ %.pre8, %block_400c5e ]
%var_2_141 = load i64, i64* %RBP.i, align 8
%var_2_142 = add i64 %var_2_141, -28
; Matched:%var_2_468:  %var_2_468 = add i64 %var_2_465, 3
; %var_2_143 = add i64 %var_2_140, 3
; Matched:\<badref\>:  store i64 %var_2_468, i64* %PC, align 8
; store i64 %var_2_143, i64* %var_2_3, align 8
%var_2_144 = inttoptr i64 %var_2_142 to i32*
%var_2_145 = load i32, i32* %var_2_144, align 4
; Matched:%var_2_471:  %var_2_471 = zext i32 %var_2_470 to i64
; %var_2_146 = zext i32 %var_2_145 to i64
; Matched:\<badref\>:  store i64 %var_2_471, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_146, i64* %RAX.i125, align 8
%var_2_147 = add i64 %var_2_141, -8
; Matched:%var_2_473:  %var_2_473 = add i64 %var_2_465, 7
; %var_2_148 = add i64 %var_2_140, 7
; Matched:\<badref\>:  store i64 %var_2_473, i64* %PC, align 8
; store i64 %var_2_148, i64* %var_2_3, align 8
%var_2_149 = inttoptr i64 %var_2_147 to i64*
%var_2_150 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_92, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_150, i64* %RCX.i122, align 8
%var_2_151 = add i64 %var_2_150, 20
; Matched:%var_2_477:  %var_2_477 = add i64 %var_2_465, 10
; %var_2_152 = add i64 %var_2_140, 10
; Matched:\<badref\>:  store i64 %var_2_477, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
%var_2_153 = inttoptr i64 %var_2_151 to i32*
%var_2_154 = load i32, i32* %var_2_153, align 4
%var_2_155 = sub i32 %var_2_145, %var_2_154
; Matched:%var_2_481:  %var_2_481 = icmp ult i32 %var_2_470, %var_2_479
; %var_2_156 = icmp ult i32 %var_2_145, %var_2_154
; Matched:%var_2_482:  %var_2_482 = zext i1 %var_2_481 to i8
; %var_2_157 = zext i1 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_482, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_157, i8* %var_2_36, align 1
; Matched:%var_2_483:  %var_2_483 = and i32 %var_2_480, 255
; %var_2_158 = and i32 %var_2_155, 255
; Matched:%var_2_484:  %var_2_484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_483) #12
; %var_2_159 = tail call i32 @llvm.ctpop.i32(i32 %var_2_158)
; Matched:%var_2_485:  %var_2_485 = trunc i32 %var_2_484 to i8
; %var_2_160 = trunc i32 %var_2_159 to i8
; Matched:%var_2_486:  %var_2_486 = and i8 %var_2_485, 1
; %var_2_161 = and i8 %var_2_160, 1
; Matched:%var_2_487:  %var_2_487 = xor i8 %var_2_486, 1
; %var_2_162 = xor i8 %var_2_161, 1
; Matched:\<badref\>:  store i8 %var_2_487, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_162, i8* %var_2_37, align 1
; Matched:%var_2_488:  %var_2_488 = xor i32 %var_2_479, %var_2_470
; %var_2_163 = xor i32 %var_2_154, %var_2_145
; Matched:%var_2_489:  %var_2_489 = xor i32 %var_2_488, %var_2_480
; %var_2_164 = xor i32 %var_2_163, %var_2_155
; Matched:%var_2_490:  %var_2_490 = lshr i32 %var_2_489, 4
; %var_2_165 = lshr i32 %var_2_164, 4
; Matched:%var_2_491:  %var_2_491 = trunc i32 %var_2_490 to i8
; %var_2_166 = trunc i32 %var_2_165 to i8
; Matched:%var_2_492:  %var_2_492 = and i8 %var_2_491, 1
; %var_2_167 = and i8 %var_2_166, 1
; Matched:\<badref\>:  store i8 %var_2_492, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_167, i8* %var_2_38, align 1
; Matched:%var_2_493:  %var_2_493 = icmp eq i32 %var_2_480, 0
; %var_2_168 = icmp eq i32 %var_2_155, 0
; Matched:%var_2_494:  %var_2_494 = zext i1 %var_2_493 to i8
; %var_2_169 = zext i1 %var_2_168 to i8
; Matched:\<badref\>:  store i8 %var_2_494, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_169, i8* %var_2_39, align 1
%var_2_170 = lshr i32 %var_2_155, 31
%var_2_171 = trunc i32 %var_2_170 to i8
; Matched:\<badref\>:  store i8 %var_2_496, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_171, i8* %var_2_40, align 1
%var_2_172 = lshr i32 %var_2_145, 31
%var_2_173 = lshr i32 %var_2_154, 31
%var_2_174 = xor i32 %var_2_173, %var_2_172
%var_2_175 = xor i32 %var_2_170, %var_2_172
%var_2_176 = add nuw nsw i32 %var_2_175, %var_2_174
%var_2_177 = icmp eq i32 %var_2_176, 2
; Matched:%var_2_503:  %var_2_503 = zext i1 %var_2_502 to i8
; %var_2_178 = zext i1 %var_2_177 to i8
; Matched:\<badref\>:  store i8 %var_2_503, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_178, i8* %var_2_41, align 1
%var_2_179 = icmp ne i8 %var_2_171, 0
%var_2_180 = xor i1 %var_2_179, %var_2_177
; Matched:  %.v9 = select i1 %var_2_505, i64 16, i64 114
; %.v9 = select i1 %var_2_180, i64 16, i64 114
; Matched:%var_2_506:  %var_2_506 = add i64 %var_2_465, %.v9
; %var_2_181 = add i64 %var_2_140, %.v9
; Matched:\<badref\>:  store i64 %var_2_506, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_181, i64* %var_2_3, align 8
br i1 %var_2_180, label %block_400c75, label %block_.L_400cd7

block_400c75:                                     ; preds = %block_.L_400c65
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_466, -16
; %var_2_182 = add i64 %var_2_141, -16
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_506, 5
; %var_2_183 = add i64 %var_2_181, 5
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8
; store i64 %var_2_183, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = inttoptr i64 %var_2_124 to i32*
; %var_2_184 = inttoptr i64 %var_2_182 to i32*
; Matched:%var_2_127:  %var_2_127 = load i32, i32* %var_2_126, align 4
; %var_2_185 = load i32, i32* %var_2_184, align 4
; Matched:\<badref\>:  store i32 %var_2_127, i32* %var_2_42, align 1, !tbaa !1284
; store i32 %var_2_185, i32* %var_2_43, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_44, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_45, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_46, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_47, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_48, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_49, align 1
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_506, 9
; %var_2_186 = add i64 %var_2_181, 9
; Matched:\<badref\>:  store i64 %var_2_128, i64* %PC, align 8
; store i64 %var_2_186, i64* %var_2_3, align 8
; Matched:%var_2_129:  %var_2_129 = load i64, i64* %var_2_474, align 8
; %var_2_187 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_129, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_187, i64* %RAX.i125, align 8
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_506, 12
; %var_2_188 = add i64 %var_2_181, 12
; Matched:\<badref\>:  store i64 %var_2_130, i64* %PC, align 8
; store i64 %var_2_188, i64* %var_2_3, align 8
; Matched:%var_2_131:  %var_2_131 = inttoptr i64 %var_2_129 to i64*
; %var_2_189 = inttoptr i64 %var_2_187 to i64*
; Matched:%var_2_132:  %var_2_132 = load i64, i64* %var_2_131, align 8
; %var_2_190 = load i64, i64* %var_2_189, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_190, i64* %RAX.i125, align 8
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_466, -12
; %var_2_191 = add i64 %var_2_141, -12
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_506, 15
; %var_2_192 = add i64 %var_2_181, 15
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_192, i64* %var_2_3, align 8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_133 to i32*
; %var_2_193 = inttoptr i64 %var_2_191 to i32*
; Matched:%var_2_136:  %var_2_136 = load i32, i32* %var_2_135, align 4
; %var_2_194 = load i32, i32* %var_2_193, align 4
; Matched:%var_2_137:  %var_2_137 = zext i32 %var_2_136 to i64
; %var_2_195 = zext i32 %var_2_194 to i64
; Matched:\<badref\>:  store i64 %var_2_137, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_195, i64* %RCX.i122, align 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_506, 19
; %var_2_196 = add i64 %var_2_181, 19
; Matched:\<badref\>:  store i64 %var_2_138, i64* %PC, align 8
; store i64 %var_2_196, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = load i64, i64* %var_2_474, align 8
; %var_2_197 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_139, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_197, i64* %RDX.i81, align 8
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_139, 12
; %var_2_198 = add i64 %var_2_197, 12
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_506, 23
; %var_2_199 = add i64 %var_2_181, 23
; Matched:\<badref\>:  store i64 %var_2_141, i64* %PC, align 8
; store i64 %var_2_199, i64* %var_2_3, align 8
; Matched:%var_2_142:  %var_2_142 = inttoptr i64 %var_2_140 to i32*
; %var_2_200 = inttoptr i64 %var_2_198 to i32*
; Matched:%var_2_143:  %var_2_143 = load i32, i32* %var_2_142, align 4
; %var_2_201 = load i32, i32* %var_2_200, align 4
; Matched:%var_2_144:  %var_2_144 = sext i32 %var_2_136 to i64
; %var_2_202 = sext i32 %var_2_194 to i64
; Matched:%var_2_145:  %var_2_145 = sext i32 %var_2_143 to i64
; %var_2_203 = sext i32 %var_2_201 to i64
; Matched:%var_2_146:  %var_2_146 = mul nsw i64 %var_2_145, %var_2_144
; %var_2_204 = mul nsw i64 %var_2_203, %var_2_202
; Matched:%var_2_147:  %var_2_147 = trunc i64 %var_2_146 to i32
; %var_2_205 = trunc i64 %var_2_204 to i32
; Matched:%var_2_148:  %var_2_148 = and i64 %var_2_146, 4294967295
; %var_2_206 = and i64 %var_2_204, 4294967295
; Matched:\<badref\>:  store i64 %var_2_148, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_206, i64* %RCX.i122, align 8
; Matched:%var_2_149:  %var_2_149 = shl i64 %var_2_146, 32
; %var_2_207 = shl i64 %var_2_204, 32
; Matched:%var_2_150:  %var_2_150 = ashr exact i64 %var_2_149, 32
; %var_2_208 = ashr exact i64 %var_2_207, 32
; Matched:%var_2_151:  %var_2_151 = icmp ne i64 %var_2_150, %var_2_146
; %var_2_209 = icmp ne i64 %var_2_208, %var_2_204
; Matched:%var_2_152:  %var_2_152 = zext i1 %var_2_151 to i8
; %var_2_210 = zext i1 %var_2_209 to i8
; Matched:\<badref\>:  store i8 %var_2_152, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_210, i8* %var_2_36, align 1
; Matched:%var_2_153:  %var_2_153 = and i32 %var_2_147, 255
; %var_2_211 = and i32 %var_2_205, 255
; Matched:%var_2_154:  %var_2_154 = tail call i32 @llvm.ctpop.i32(i32 %var_2_153) #12
; %var_2_212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_211)
; Matched:%var_2_155:  %var_2_155 = trunc i32 %var_2_154 to i8
; %var_2_213 = trunc i32 %var_2_212 to i8
; Matched:%var_2_156:  %var_2_156 = and i8 %var_2_155, 1
; %var_2_214 = and i8 %var_2_213, 1
; Matched:%var_2_157:  %var_2_157 = xor i8 %var_2_156, 1
; %var_2_215 = xor i8 %var_2_214, 1
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_215, i8* %var_2_37, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_158:  %var_2_158 = lshr i32 %var_2_147, 31
; %var_2_216 = lshr i32 %var_2_205, 31
; Matched:%var_2_159:  %var_2_159 = trunc i32 %var_2_158 to i8
; %var_2_217 = trunc i32 %var_2_216 to i8
; Matched:\<badref\>:  store i8 %var_2_159, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_217, i8* %var_2_40, align 1
; Matched:\<badref\>:  store i8 %var_2_152, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_210, i8* %var_2_41, align 1
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_506, 27
; %var_2_218 = add i64 %var_2_181, 27
; Matched:\<badref\>:  store i64 %var_2_160, i64* %PC, align 8
; store i64 %var_2_218, i64* %var_2_3, align 8
; Matched:%var_2_215:  %var_2_215 = load i64, i64* %var_2_214, align 8
; %var_2_219 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_215, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_219, i64* %RDX.i81, align 8
; Matched:%var_2_162:  %var_2_162 = add i64 %var_2_161, 16
; %var_2_220 = add i64 %var_2_219, 16
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_506, 31
; %var_2_221 = add i64 %var_2_181, 31
; Matched:\<badref\>:  store i64 %var_2_163, i64* %PC, align 8
; store i64 %var_2_221, i64* %var_2_3, align 8
; Matched:%var_2_164:  %var_2_164 = inttoptr i64 %var_2_162 to i32*
; %var_2_222 = inttoptr i64 %var_2_220 to i32*
; Matched:%var_2_165:  %var_2_165 = load i32, i32* %var_2_164, align 4
; %var_2_223 = load i32, i32* %var_2_222, align 4
; Matched:%var_2_166:  %var_2_166 = shl i64 %var_2_146, 32
; %var_2_224 = shl i64 %var_2_204, 32
; Matched:%var_2_167:  %var_2_167 = ashr exact i64 %var_2_166, 32
; %var_2_225 = ashr exact i64 %var_2_224, 32
; Matched:%var_2_168:  %var_2_168 = sext i32 %var_2_165 to i64
; %var_2_226 = sext i32 %var_2_223 to i64
; Matched:%var_2_169:  %var_2_169 = mul nsw i64 %var_2_168, %var_2_167
; %var_2_227 = mul nsw i64 %var_2_226, %var_2_225
; Matched:%var_2_170:  %var_2_170 = trunc i64 %var_2_169 to i32
; %var_2_228 = trunc i64 %var_2_227 to i32
; Matched:%var_2_171:  %var_2_171 = and i64 %var_2_169, 4294967295
; %var_2_229 = and i64 %var_2_227, 4294967295
; Matched:\<badref\>:  store i64 %var_2_171, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_229, i64* %RCX.i122, align 8
; Matched:%var_2_172:  %var_2_172 = shl i64 %var_2_169, 32
; %var_2_230 = shl i64 %var_2_227, 32
; Matched:%var_2_173:  %var_2_173 = ashr exact i64 %var_2_172, 32
; %var_2_231 = ashr exact i64 %var_2_230, 32
; Matched:%var_2_174:  %var_2_174 = icmp ne i64 %var_2_173, %var_2_169
; %var_2_232 = icmp ne i64 %var_2_231, %var_2_227
; Matched:%var_2_175:  %var_2_175 = zext i1 %var_2_174 to i8
; %var_2_233 = zext i1 %var_2_232 to i8
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_233, i8* %var_2_36, align 1
; Matched:%var_2_176:  %var_2_176 = and i32 %var_2_170, 255
; %var_2_234 = and i32 %var_2_228, 255
; Matched:%var_2_177:  %var_2_177 = tail call i32 @llvm.ctpop.i32(i32 %var_2_176) #12
; %var_2_235 = tail call i32 @llvm.ctpop.i32(i32 %var_2_234)
; Matched:%var_2_178:  %var_2_178 = trunc i32 %var_2_177 to i8
; %var_2_236 = trunc i32 %var_2_235 to i8
; Matched:%var_2_179:  %var_2_179 = and i8 %var_2_178, 1
; %var_2_237 = and i8 %var_2_236, 1
; Matched:%var_2_180:  %var_2_180 = xor i8 %var_2_179, 1
; %var_2_238 = xor i8 %var_2_237, 1
; Matched:\<badref\>:  store i8 %var_2_180, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_238, i8* %var_2_37, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_181:  %var_2_181 = lshr i32 %var_2_170, 31
; %var_2_239 = lshr i32 %var_2_228, 31
; Matched:%var_2_182:  %var_2_182 = trunc i32 %var_2_181 to i8
; %var_2_240 = trunc i32 %var_2_239 to i8
; Matched:\<badref\>:  store i8 %var_2_182, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_240, i8* %var_2_40, align 1
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_233, i8* %var_2_41, align 1
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_506, 35
; %var_2_241 = add i64 %var_2_181, 35
; Matched:\<badref\>:  store i64 %var_2_183, i64* %PC, align 8
; store i64 %var_2_241, i64* %var_2_3, align 8
; Matched:%var_2_184:  %var_2_184 = load i64, i64* %var_2_474, align 8
; %var_2_242 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_184, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_242, i64* %RDX.i81, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_184, 20
; %var_2_243 = add i64 %var_2_242, 20
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_506, 39
; %var_2_244 = add i64 %var_2_181, 39
; Matched:\<badref\>:  store i64 %var_2_186, i64* %PC, align 8
; store i64 %var_2_244, i64* %var_2_3, align 8
; Matched:%var_2_187:  %var_2_187 = inttoptr i64 %var_2_185 to i32*
; %var_2_245 = inttoptr i64 %var_2_243 to i32*
; Matched:%var_2_188:  %var_2_188 = load i32, i32* %var_2_187, align 4
; %var_2_246 = load i32, i32* %var_2_245, align 4
; Matched:%var_2_189:  %var_2_189 = shl i64 %var_2_169, 32
; %var_2_247 = shl i64 %var_2_227, 32
; Matched:%var_2_190:  %var_2_190 = ashr exact i64 %var_2_189, 32
; %var_2_248 = ashr exact i64 %var_2_247, 32
; Matched:%var_2_191:  %var_2_191 = sext i32 %var_2_188 to i64
; %var_2_249 = sext i32 %var_2_246 to i64
; Matched:%var_2_192:  %var_2_192 = mul nsw i64 %var_2_191, %var_2_190
; %var_2_250 = mul nsw i64 %var_2_249, %var_2_248
; Matched:%var_2_193:  %var_2_193 = trunc i64 %var_2_192 to i32
; %var_2_251 = trunc i64 %var_2_250 to i32
; Matched:%var_2_194:  %var_2_194 = and i64 %var_2_192, 4294967295
; %var_2_252 = and i64 %var_2_250, 4294967295
; Matched:\<badref\>:  store i64 %var_2_194, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_252, i64* %RCX.i122, align 8
; Matched:%var_2_195:  %var_2_195 = shl i64 %var_2_192, 32
; %var_2_253 = shl i64 %var_2_250, 32
; Matched:%var_2_196:  %var_2_196 = ashr exact i64 %var_2_195, 32
; %var_2_254 = ashr exact i64 %var_2_253, 32
; Matched:%var_2_197:  %var_2_197 = icmp ne i64 %var_2_196, %var_2_192
; %var_2_255 = icmp ne i64 %var_2_254, %var_2_250
; Matched:%var_2_198:  %var_2_198 = zext i1 %var_2_197 to i8
; %var_2_256 = zext i1 %var_2_255 to i8
; Matched:\<badref\>:  store i8 %var_2_198, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_256, i8* %var_2_36, align 1
; Matched:%var_2_199:  %var_2_199 = and i32 %var_2_193, 255
; %var_2_257 = and i32 %var_2_251, 255
; Matched:%var_2_200:  %var_2_200 = tail call i32 @llvm.ctpop.i32(i32 %var_2_199) #12
; %var_2_258 = tail call i32 @llvm.ctpop.i32(i32 %var_2_257)
; Matched:%var_2_201:  %var_2_201 = trunc i32 %var_2_200 to i8
; %var_2_259 = trunc i32 %var_2_258 to i8
; Matched:%var_2_202:  %var_2_202 = and i8 %var_2_201, 1
; %var_2_260 = and i8 %var_2_259, 1
; Matched:%var_2_203:  %var_2_203 = xor i8 %var_2_202, 1
; %var_2_261 = xor i8 %var_2_260, 1
; Matched:\<badref\>:  store i8 %var_2_203, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_261, i8* %var_2_37, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_204:  %var_2_204 = lshr i32 %var_2_193, 31
; %var_2_262 = lshr i32 %var_2_251, 31
; Matched:%var_2_205:  %var_2_205 = trunc i32 %var_2_204 to i8
; %var_2_263 = trunc i32 %var_2_262 to i8
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_263, i8* %var_2_40, align 1
; Matched:\<badref\>:  store i8 %var_2_198, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_256, i8* %var_2_41, align 1
%var_2_264 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_206, -20
; %var_2_265 = add i64 %var_2_264, -20
; Matched:%var_2_208:  %var_2_208 = add i64 %var_2_506, 42
; %var_2_266 = add i64 %var_2_181, 42
; Matched:\<badref\>:  store i64 %var_2_208, i64* %PC, align 8
; store i64 %var_2_266, i64* %var_2_3, align 8
; Matched:%var_2_209:  %var_2_209 = inttoptr i64 %var_2_207 to i32*
; %var_2_267 = inttoptr i64 %var_2_265 to i32*
; Matched:%var_2_210:  %var_2_210 = load i32, i32* %var_2_209, align 4
; %var_2_268 = load i32, i32* %var_2_267, align 4
; Matched:%var_2_211:  %var_2_211 = zext i32 %var_2_210 to i64
; %var_2_269 = zext i32 %var_2_268 to i64
; Matched:\<badref\>:  store i64 %var_2_211, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_269, i64* %RSI.i63, align 8
%var_2_270 = add i64 %var_2_264, -8
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_506, 46
; %var_2_271 = add i64 %var_2_181, 46
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_271, i64* %var_2_3, align 8
%var_2_272 = inttoptr i64 %var_2_270 to i64*
; Matched:%var_2_237:  %var_2_237 = load i64, i64* %var_2_214, align 8
; %var_2_273 = load i64, i64* %var_2_272, align 8
; Matched:\<badref\>:  store i64 %var_2_237, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_273, i64* %RDX.i81, align 8
; Matched:%var_2_216:  %var_2_216 = add i64 %var_2_215, 16
; %var_2_274 = add i64 %var_2_273, 16
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_506, 50
; %var_2_275 = add i64 %var_2_181, 50
; Matched:\<badref\>:  store i64 %var_2_217, i64* %PC, align 8
; store i64 %var_2_275, i64* %var_2_3, align 8
; Matched:%var_2_218:  %var_2_218 = inttoptr i64 %var_2_216 to i32*
; %var_2_276 = inttoptr i64 %var_2_274 to i32*
; Matched:%var_2_219:  %var_2_219 = load i32, i32* %var_2_218, align 4
; %var_2_277 = load i32, i32* %var_2_276, align 4
; Matched:%var_2_220:  %var_2_220 = sext i32 %var_2_210 to i64
; %var_2_278 = sext i32 %var_2_268 to i64
; Matched:%var_2_221:  %var_2_221 = sext i32 %var_2_219 to i64
; %var_2_279 = sext i32 %var_2_277 to i64
; Matched:%var_2_222:  %var_2_222 = mul nsw i64 %var_2_221, %var_2_220
; %var_2_280 = mul nsw i64 %var_2_279, %var_2_278
; Matched:%var_2_223:  %var_2_223 = trunc i64 %var_2_222 to i32
; %var_2_281 = trunc i64 %var_2_280 to i32
; Matched:%var_2_224:  %var_2_224 = and i64 %var_2_222, 4294967295
; %var_2_282 = and i64 %var_2_280, 4294967295
; Matched:\<badref\>:  store i64 %var_2_224, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_282, i64* %RSI.i63, align 8
; Matched:%var_2_225:  %var_2_225 = shl i64 %var_2_222, 32
; %var_2_283 = shl i64 %var_2_280, 32
; Matched:%var_2_226:  %var_2_226 = ashr exact i64 %var_2_225, 32
; %var_2_284 = ashr exact i64 %var_2_283, 32
; Matched:%var_2_227:  %var_2_227 = icmp ne i64 %var_2_226, %var_2_222
; %var_2_285 = icmp ne i64 %var_2_284, %var_2_280
; Matched:%var_2_228:  %var_2_228 = zext i1 %var_2_227 to i8
; %var_2_286 = zext i1 %var_2_285 to i8
; Matched:\<badref\>:  store i8 %var_2_228, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_286, i8* %var_2_36, align 1
; Matched:%var_2_229:  %var_2_229 = and i32 %var_2_223, 255
; %var_2_287 = and i32 %var_2_281, 255
; Matched:%var_2_230:  %var_2_230 = tail call i32 @llvm.ctpop.i32(i32 %var_2_229) #12
; %var_2_288 = tail call i32 @llvm.ctpop.i32(i32 %var_2_287)
; Matched:%var_2_231:  %var_2_231 = trunc i32 %var_2_230 to i8
; %var_2_289 = trunc i32 %var_2_288 to i8
; Matched:%var_2_232:  %var_2_232 = and i8 %var_2_231, 1
; %var_2_290 = and i8 %var_2_289, 1
; Matched:%var_2_233:  %var_2_233 = xor i8 %var_2_232, 1
; %var_2_291 = xor i8 %var_2_290, 1
; Matched:\<badref\>:  store i8 %var_2_233, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_291, i8* %var_2_37, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:%var_2_234:  %var_2_234 = lshr i32 %var_2_223, 31
; %var_2_292 = lshr i32 %var_2_281, 31
; Matched:%var_2_235:  %var_2_235 = trunc i32 %var_2_234 to i8
; %var_2_293 = trunc i32 %var_2_292 to i8
; Matched:\<badref\>:  store i8 %var_2_235, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_293, i8* %var_2_40, align 1
; Matched:\<badref\>:  store i8 %var_2_228, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_286, i8* %var_2_41, align 1
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_506, 54
; %var_2_294 = add i64 %var_2_181, 54
; Matched:\<badref\>:  store i64 %var_2_236, i64* %PC, align 8
; store i64 %var_2_294, i64* %var_2_3, align 8
; Matched:%var_2_286:  %var_2_286 = load i64, i64* %var_2_285, align 8
; %var_2_295 = load i64, i64* %var_2_272, align 8
; Matched:\<badref\>:  store i64 %var_2_161, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_295, i64* %RDX.i81, align 8
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_237, 20
; %var_2_296 = add i64 %var_2_295, 20
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_506, 58
; %var_2_297 = add i64 %var_2_181, 58
; Matched:\<badref\>:  store i64 %var_2_239, i64* %PC, align 8
; store i64 %var_2_297, i64* %var_2_3, align 8
; Matched:%var_2_240:  %var_2_240 = inttoptr i64 %var_2_238 to i32*
; %var_2_298 = inttoptr i64 %var_2_296 to i32*
; Matched:%var_2_241:  %var_2_241 = load i32, i32* %var_2_240, align 4
; %var_2_299 = load i32, i32* %var_2_298, align 4
; Matched:%var_2_242:  %var_2_242 = shl i64 %var_2_222, 32
; %var_2_300 = shl i64 %var_2_280, 32
; Matched:%var_2_243:  %var_2_243 = ashr exact i64 %var_2_242, 32
; %var_2_301 = ashr exact i64 %var_2_300, 32
; Matched:%var_2_244:  %var_2_244 = sext i32 %var_2_241 to i64
; %var_2_302 = sext i32 %var_2_299 to i64
; Matched:%var_2_245:  %var_2_245 = mul nsw i64 %var_2_244, %var_2_243
; %var_2_303 = mul nsw i64 %var_2_302, %var_2_301
; Matched:%var_2_246:  %var_2_246 = and i64 %var_2_245, 4294967295
; %var_2_304 = and i64 %var_2_303, 4294967295
; Matched:\<badref\>:  store i64 %var_2_246, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_304, i64* %RSI.i63, align 8
; Matched:%var_2_247:  %var_2_247 = trunc i64 %var_2_245 to i32
; %var_2_305 = trunc i64 %var_2_303 to i32
; Matched:%var_2_248:  %var_2_248 = trunc i64 %var_2_192 to i32
; %var_2_306 = trunc i64 %var_2_250 to i32
; Matched:%var_2_249:  %var_2_249 = add i32 %var_2_247, %var_2_248
; %var_2_307 = add i32 %var_2_305, %var_2_306
; Matched:%var_2_250:  %var_2_250 = zext i32 %var_2_249 to i64
; %var_2_308 = zext i32 %var_2_307 to i64
; Matched:\<badref\>:  store i64 %var_2_250, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_308, i64* %RCX.i122, align 8
; Matched:%var_2_251:  %var_2_251 = icmp ult i32 %var_2_249, %var_2_248
; %var_2_309 = icmp ult i32 %var_2_307, %var_2_306
; Matched:%var_2_252:  %var_2_252 = icmp ult i32 %var_2_249, %var_2_247
; %var_2_310 = icmp ult i32 %var_2_307, %var_2_305
; Matched:%var_2_253:  %var_2_253 = or i1 %var_2_251, %var_2_252
; %var_2_311 = or i1 %var_2_309, %var_2_310
; Matched:%var_2_254:  %var_2_254 = zext i1 %var_2_253 to i8
; %var_2_312 = zext i1 %var_2_311 to i8
; Matched:\<badref\>:  store i8 %var_2_254, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_312, i8* %var_2_36, align 1
; Matched:%var_2_255:  %var_2_255 = and i32 %var_2_249, 255
; %var_2_313 = and i32 %var_2_307, 255
; Matched:%var_2_256:  %var_2_256 = tail call i32 @llvm.ctpop.i32(i32 %var_2_255) #12
; %var_2_314 = tail call i32 @llvm.ctpop.i32(i32 %var_2_313)
; Matched:%var_2_257:  %var_2_257 = trunc i32 %var_2_256 to i8
; %var_2_315 = trunc i32 %var_2_314 to i8
; Matched:%var_2_258:  %var_2_258 = and i8 %var_2_257, 1
; %var_2_316 = and i8 %var_2_315, 1
; Matched:%var_2_259:  %var_2_259 = xor i8 %var_2_258, 1
; %var_2_317 = xor i8 %var_2_316, 1
; Matched:\<badref\>:  store i8 %var_2_259, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_317, i8* %var_2_37, align 1
; Matched:%var_2_260:  %var_2_260 = xor i64 %var_2_245, %var_2_192
; %var_2_318 = xor i64 %var_2_303, %var_2_250
; Matched:%var_2_261:  %var_2_261 = trunc i64 %var_2_260 to i32
; %var_2_319 = trunc i64 %var_2_318 to i32
; Matched:%var_2_262:  %var_2_262 = xor i32 %var_2_261, %var_2_249
; %var_2_320 = xor i32 %var_2_319, %var_2_307
; Matched:%var_2_263:  %var_2_263 = lshr i32 %var_2_262, 4
; %var_2_321 = lshr i32 %var_2_320, 4
; Matched:%var_2_264:  %var_2_264 = trunc i32 %var_2_263 to i8
; %var_2_322 = trunc i32 %var_2_321 to i8
; Matched:%var_2_265:  %var_2_265 = and i8 %var_2_264, 1
; %var_2_323 = and i8 %var_2_322, 1
; Matched:\<badref\>:  store i8 %var_2_265, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_323, i8* %var_2_38, align 1
; Matched:%var_2_266:  %var_2_266 = icmp eq i32 %var_2_249, 0
; %var_2_324 = icmp eq i32 %var_2_307, 0
; Matched:%var_2_267:  %var_2_267 = zext i1 %var_2_266 to i8
; %var_2_325 = zext i1 %var_2_324 to i8
; Matched:\<badref\>:  store i8 %var_2_267, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_325, i8* %var_2_39, align 1
; Matched:%var_2_268:  %var_2_268 = lshr i32 %var_2_249, 31
; %var_2_326 = lshr i32 %var_2_307, 31
; Matched:%var_2_269:  %var_2_269 = trunc i32 %var_2_268 to i8
; %var_2_327 = trunc i32 %var_2_326 to i8
; Matched:\<badref\>:  store i8 %var_2_269, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_327, i8* %var_2_40, align 1
; Matched:%var_2_270:  %var_2_270 = lshr i32 %var_2_248, 31
; %var_2_328 = lshr i32 %var_2_306, 31
; Matched:%var_2_271:  %var_2_271 = lshr i32 %var_2_247, 31
; %var_2_329 = lshr i32 %var_2_305, 31
; Matched:%var_2_272:  %var_2_272 = xor i32 %var_2_268, %var_2_270
; %var_2_330 = xor i32 %var_2_326, %var_2_328
; Matched:%var_2_273:  %var_2_273 = xor i32 %var_2_268, %var_2_271
; %var_2_331 = xor i32 %var_2_326, %var_2_329
; Matched:%var_2_274:  %var_2_274 = add nuw nsw i32 %var_2_272, %var_2_273
; %var_2_332 = add nuw nsw i32 %var_2_330, %var_2_331
; Matched:%var_2_275:  %var_2_275 = icmp eq i32 %var_2_274, 2
; %var_2_333 = icmp eq i32 %var_2_332, 2
; Matched:%var_2_276:  %var_2_276 = zext i1 %var_2_275 to i8
; %var_2_334 = zext i1 %var_2_333 to i8
; Matched:\<badref\>:  store i8 %var_2_276, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_334, i8* %var_2_41, align 1
%var_2_335 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_278:  %var_2_278 = add i64 %var_2_277, -24
; %var_2_336 = add i64 %var_2_335, -24
; Matched:%var_2_279:  %var_2_279 = add i64 %var_2_506, 63
; %var_2_337 = add i64 %var_2_181, 63
; Matched:\<badref\>:  store i64 %var_2_279, i64* %PC, align 8
; store i64 %var_2_337, i64* %var_2_3, align 8
; Matched:%var_2_280:  %var_2_280 = inttoptr i64 %var_2_278 to i32*
; %var_2_338 = inttoptr i64 %var_2_336 to i32*
; Matched:%var_2_281:  %var_2_281 = load i32, i32* %var_2_280, align 4
; %var_2_339 = load i32, i32* %var_2_338, align 4
; Matched:%var_2_282:  %var_2_282 = zext i32 %var_2_281 to i64
; %var_2_340 = zext i32 %var_2_339 to i64
; Matched:\<badref\>:  store i64 %var_2_282, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_340, i64* %RSI.i63, align 8
%var_2_341 = add i64 %var_2_335, -8
; Matched:%var_2_284:  %var_2_284 = add i64 %var_2_506, 67
; %var_2_342 = add i64 %var_2_181, 67
; Matched:\<badref\>:  store i64 %var_2_284, i64* %PC, align 8
; store i64 %var_2_342, i64* %var_2_3, align 8
%var_2_343 = inttoptr i64 %var_2_341 to i64*
; Matched:%var_2_139:  %var_2_139 = load i64, i64* %var_2_474, align 8
; %var_2_344 = load i64, i64* %var_2_343, align 8
; Matched:\<badref\>:  store i64 %var_2_286, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_344, i64* %RDX.i81, align 8
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_286, 20
; %var_2_345 = add i64 %var_2_344, 20
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_506, 71
; %var_2_346 = add i64 %var_2_181, 71
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_346, i64* %var_2_3, align 8
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_287 to i32*
; %var_2_347 = inttoptr i64 %var_2_345 to i32*
; Matched:%var_2_290:  %var_2_290 = load i32, i32* %var_2_289, align 4
; %var_2_348 = load i32, i32* %var_2_347, align 4
; Matched:%var_2_291:  %var_2_291 = sext i32 %var_2_281 to i64
; %var_2_349 = sext i32 %var_2_339 to i64
; Matched:%var_2_292:  %var_2_292 = sext i32 %var_2_290 to i64
; %var_2_350 = sext i32 %var_2_348 to i64
; Matched:%var_2_293:  %var_2_293 = mul nsw i64 %var_2_292, %var_2_291
; %var_2_351 = mul nsw i64 %var_2_350, %var_2_349
; Matched:%var_2_294:  %var_2_294 = and i64 %var_2_293, 4294967295
; %var_2_352 = and i64 %var_2_351, 4294967295
; Matched:\<badref\>:  store i64 %var_2_294, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_352, i64* %RSI.i63, align 8
; Matched:%var_2_295:  %var_2_295 = trunc i64 %var_2_293 to i32
; %var_2_353 = trunc i64 %var_2_351 to i32
; Matched:%var_2_296:  %var_2_296 = add i32 %var_2_295, %var_2_249
; %var_2_354 = add i32 %var_2_353, %var_2_307
; Matched:%var_2_297:  %var_2_297 = zext i32 %var_2_296 to i64
; %var_2_355 = zext i32 %var_2_354 to i64
; Matched:\<badref\>:  store i64 %var_2_297, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_355, i64* %RCX.i122, align 8
; Matched:%var_2_298:  %var_2_298 = icmp ult i32 %var_2_296, %var_2_249
; %var_2_356 = icmp ult i32 %var_2_354, %var_2_307
; Matched:%var_2_299:  %var_2_299 = icmp ult i32 %var_2_296, %var_2_295
; %var_2_357 = icmp ult i32 %var_2_354, %var_2_353
; Matched:%var_2_300:  %var_2_300 = or i1 %var_2_298, %var_2_299
; %var_2_358 = or i1 %var_2_356, %var_2_357
; Matched:%var_2_301:  %var_2_301 = zext i1 %var_2_300 to i8
; %var_2_359 = zext i1 %var_2_358 to i8
; Matched:\<badref\>:  store i8 %var_2_301, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_359, i8* %var_2_36, align 1
; Matched:%var_2_302:  %var_2_302 = and i32 %var_2_296, 255
; %var_2_360 = and i32 %var_2_354, 255
; Matched:%var_2_303:  %var_2_303 = tail call i32 @llvm.ctpop.i32(i32 %var_2_302) #12
; %var_2_361 = tail call i32 @llvm.ctpop.i32(i32 %var_2_360)
; Matched:%var_2_304:  %var_2_304 = trunc i32 %var_2_303 to i8
; %var_2_362 = trunc i32 %var_2_361 to i8
; Matched:%var_2_305:  %var_2_305 = and i8 %var_2_304, 1
; %var_2_363 = and i8 %var_2_362, 1
; Matched:%var_2_306:  %var_2_306 = xor i8 %var_2_305, 1
; %var_2_364 = xor i8 %var_2_363, 1
; Matched:\<badref\>:  store i8 %var_2_306, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_364, i8* %var_2_37, align 1
; Matched:%var_2_307:  %var_2_307 = xor i64 %var_2_293, %var_2_250
; %var_2_365 = xor i64 %var_2_351, %var_2_308
; Matched:%var_2_308:  %var_2_308 = trunc i64 %var_2_307 to i32
; %var_2_366 = trunc i64 %var_2_365 to i32
; Matched:%var_2_309:  %var_2_309 = xor i32 %var_2_308, %var_2_296
; %var_2_367 = xor i32 %var_2_366, %var_2_354
; Matched:%var_2_310:  %var_2_310 = lshr i32 %var_2_309, 4
; %var_2_368 = lshr i32 %var_2_367, 4
; Matched:%var_2_311:  %var_2_311 = trunc i32 %var_2_310 to i8
; %var_2_369 = trunc i32 %var_2_368 to i8
; Matched:%var_2_312:  %var_2_312 = and i8 %var_2_311, 1
; %var_2_370 = and i8 %var_2_369, 1
; Matched:\<badref\>:  store i8 %var_2_312, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_370, i8* %var_2_38, align 1
; Matched:%var_2_313:  %var_2_313 = icmp eq i32 %var_2_296, 0
; %var_2_371 = icmp eq i32 %var_2_354, 0
; Matched:%var_2_314:  %var_2_314 = zext i1 %var_2_313 to i8
; %var_2_372 = zext i1 %var_2_371 to i8
; Matched:\<badref\>:  store i8 %var_2_314, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_372, i8* %var_2_39, align 1
; Matched:%var_2_315:  %var_2_315 = lshr i32 %var_2_296, 31
; %var_2_373 = lshr i32 %var_2_354, 31
; Matched:%var_2_316:  %var_2_316 = trunc i32 %var_2_315 to i8
; %var_2_374 = trunc i32 %var_2_373 to i8
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_374, i8* %var_2_40, align 1
; Matched:%var_2_317:  %var_2_317 = lshr i32 %var_2_295, 31
; %var_2_375 = lshr i32 %var_2_353, 31
; Matched:%var_2_318:  %var_2_318 = xor i32 %var_2_315, %var_2_268
; %var_2_376 = xor i32 %var_2_373, %var_2_326
; Matched:%var_2_319:  %var_2_319 = xor i32 %var_2_315, %var_2_317
; %var_2_377 = xor i32 %var_2_373, %var_2_375
; Matched:%var_2_320:  %var_2_320 = add nuw nsw i32 %var_2_318, %var_2_319
; %var_2_378 = add nuw nsw i32 %var_2_376, %var_2_377
; Matched:%var_2_321:  %var_2_321 = icmp eq i32 %var_2_320, 2
; %var_2_379 = icmp eq i32 %var_2_378, 2
; Matched:%var_2_322:  %var_2_322 = zext i1 %var_2_321 to i8
; %var_2_380 = zext i1 %var_2_379 to i8
; Matched:\<badref\>:  store i8 %var_2_322, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_380, i8* %var_2_41, align 1
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_277, -28
; %var_2_381 = add i64 %var_2_335, -28
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_506, 76
; %var_2_382 = add i64 %var_2_181, 76
; Matched:\<badref\>:  store i64 %var_2_324, i64* %PC, align 8
; store i64 %var_2_382, i64* %var_2_3, align 8
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_323 to i32*
; %var_2_383 = inttoptr i64 %var_2_381 to i32*
; Matched:%var_2_326:  %var_2_326 = load i32, i32* %var_2_325, align 4
; %var_2_384 = load i32, i32* %var_2_383, align 4
; Matched:%var_2_327:  %var_2_327 = add i32 %var_2_326, %var_2_296
; %var_2_385 = add i32 %var_2_384, %var_2_354
; Matched:%var_2_328:  %var_2_328 = zext i32 %var_2_327 to i64
; %var_2_386 = zext i32 %var_2_385 to i64
; Matched:\<badref\>:  store i64 %var_2_328, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_386, i64* %RCX.i122, align 8
; Matched:%var_2_329:  %var_2_329 = icmp ult i32 %var_2_327, %var_2_296
; %var_2_387 = icmp ult i32 %var_2_385, %var_2_354
; Matched:%var_2_330:  %var_2_330 = icmp ult i32 %var_2_327, %var_2_326
; %var_2_388 = icmp ult i32 %var_2_385, %var_2_384
; Matched:%var_2_331:  %var_2_331 = or i1 %var_2_329, %var_2_330
; %var_2_389 = or i1 %var_2_387, %var_2_388
; Matched:%var_2_332:  %var_2_332 = zext i1 %var_2_331 to i8
; %var_2_390 = zext i1 %var_2_389 to i8
; Matched:\<badref\>:  store i8 %var_2_332, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_390, i8* %var_2_36, align 1
; Matched:%var_2_333:  %var_2_333 = and i32 %var_2_327, 255
; %var_2_391 = and i32 %var_2_385, 255
; Matched:%var_2_334:  %var_2_334 = tail call i32 @llvm.ctpop.i32(i32 %var_2_333) #12
; %var_2_392 = tail call i32 @llvm.ctpop.i32(i32 %var_2_391)
; Matched:%var_2_335:  %var_2_335 = trunc i32 %var_2_334 to i8
; %var_2_393 = trunc i32 %var_2_392 to i8
; Matched:%var_2_336:  %var_2_336 = and i8 %var_2_335, 1
; %var_2_394 = and i8 %var_2_393, 1
; Matched:%var_2_337:  %var_2_337 = xor i8 %var_2_336, 1
; %var_2_395 = xor i8 %var_2_394, 1
; Matched:\<badref\>:  store i8 %var_2_337, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_395, i8* %var_2_37, align 1
; Matched:%var_2_338:  %var_2_338 = xor i32 %var_2_326, %var_2_296
; %var_2_396 = xor i32 %var_2_384, %var_2_354
; Matched:%var_2_339:  %var_2_339 = xor i32 %var_2_338, %var_2_327
; %var_2_397 = xor i32 %var_2_396, %var_2_385
; Matched:%var_2_340:  %var_2_340 = lshr i32 %var_2_339, 4
; %var_2_398 = lshr i32 %var_2_397, 4
; Matched:%var_2_341:  %var_2_341 = trunc i32 %var_2_340 to i8
; %var_2_399 = trunc i32 %var_2_398 to i8
; Matched:%var_2_342:  %var_2_342 = and i8 %var_2_341, 1
; %var_2_400 = and i8 %var_2_399, 1
; Matched:\<badref\>:  store i8 %var_2_342, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_400, i8* %var_2_38, align 1
; Matched:%var_2_343:  %var_2_343 = icmp eq i32 %var_2_327, 0
; %var_2_401 = icmp eq i32 %var_2_385, 0
; Matched:%var_2_344:  %var_2_344 = zext i1 %var_2_343 to i8
; %var_2_402 = zext i1 %var_2_401 to i8
; Matched:\<badref\>:  store i8 %var_2_344, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_402, i8* %var_2_39, align 1
; Matched:%var_2_345:  %var_2_345 = lshr i32 %var_2_327, 31
; %var_2_403 = lshr i32 %var_2_385, 31
; Matched:%var_2_346:  %var_2_346 = trunc i32 %var_2_345 to i8
; %var_2_404 = trunc i32 %var_2_403 to i8
; Matched:\<badref\>:  store i8 %var_2_346, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_404, i8* %var_2_40, align 1
; Matched:%var_2_347:  %var_2_347 = lshr i32 %var_2_326, 31
; %var_2_405 = lshr i32 %var_2_384, 31
; Matched:%var_2_348:  %var_2_348 = xor i32 %var_2_345, %var_2_315
; %var_2_406 = xor i32 %var_2_403, %var_2_373
; Matched:%var_2_349:  %var_2_349 = xor i32 %var_2_345, %var_2_347
; %var_2_407 = xor i32 %var_2_403, %var_2_405
; Matched:%var_2_350:  %var_2_350 = add nuw nsw i32 %var_2_348, %var_2_349
; %var_2_408 = add nuw nsw i32 %var_2_406, %var_2_407
; Matched:%var_2_351:  %var_2_351 = icmp eq i32 %var_2_350, 2
; %var_2_409 = icmp eq i32 %var_2_408, 2
; Matched:%var_2_352:  %var_2_352 = zext i1 %var_2_351 to i8
; %var_2_410 = zext i1 %var_2_409 to i8
; Matched:\<badref\>:  store i8 %var_2_352, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_410, i8* %var_2_41, align 1
; Matched:%var_2_353:  %var_2_353 = sext i32 %var_2_327 to i64
; %var_2_411 = sext i32 %var_2_385 to i64
; Matched:\<badref\>:  store i64 %var_2_353, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_411, i64* %RDX.i81, align 8
; Matched:%var_2_354:  %var_2_354 = load i64, i64* %RAX, align 8
; %var_2_412 = load i64, i64* %RAX.i125, align 8
; Matched:%var_2_355:  %var_2_355 = shl nsw i64 %var_2_353, 2
; %var_2_413 = shl nsw i64 %var_2_411, 2
; Matched:%var_2_356:  %var_2_356 = add i64 %var_2_354, %var_2_355
; %var_2_414 = add i64 %var_2_412, %var_2_413
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_506, 84
; %var_2_415 = add i64 %var_2_181, 84
; Matched:\<badref\>:  store i64 %var_2_357, i64* %PC, align 8
; store i64 %var_2_415, i64* %var_2_3, align 8
%var_2_416 = load <2 x float>, <2 x float>* %var_2_27, align 1
%var_2_417 = extractelement <2 x float> %var_2_416, i32 0
; Matched:%var_2_360:  %var_2_360 = inttoptr i64 %var_2_356 to float*
; %var_2_418 = inttoptr i64 %var_2_414 to float*
; Matched:\<badref\>:  store float %var_2_359, float* %var_2_360, align 4
; store float %var_2_417, float* %var_2_418, align 4
; Matched:%var_2_361:  %var_2_361 = load i64, i64* %RBP, align 8
; %var_2_419 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_361, -28
; %var_2_420 = add i64 %var_2_419, -28
; Matched:%var_2_363:  %var_2_363 = load i64, i64* %PC, align 8
; %var_2_421 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_20:  %var_2_20 = add i64 %var_2_19, 3
; %var_2_422 = add i64 %var_2_421, 3
; Matched:\<badref\>:  store i64 %var_2_20, i64* %PC, align 8
; store i64 %var_2_422, i64* %var_2_3, align 8
; Matched:%var_2_365:  %var_2_365 = inttoptr i64 %var_2_362 to i32*
; %var_2_423 = inttoptr i64 %var_2_420 to i32*
; Matched:%var_2_366:  %var_2_366 = load i32, i32* %var_2_365, align 4
; %var_2_424 = load i32, i32* %var_2_423, align 4
; Matched:%var_2_367:  %var_2_367 = add i32 %var_2_366, 1
; %var_2_425 = add i32 %var_2_424, 1
; Matched:%var_2_368:  %var_2_368 = zext i32 %var_2_367 to i64
; %var_2_426 = zext i32 %var_2_425 to i64
; Matched:\<badref\>:  store i64 %var_2_368, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_426, i64* %RAX.i125, align 8
; Matched:%var_2_369:  %var_2_369 = icmp eq i32 %var_2_366, -1
; %var_2_427 = icmp eq i32 %var_2_424, -1
; Matched:%var_2_370:  %var_2_370 = icmp eq i32 %var_2_367, 0
; %var_2_428 = icmp eq i32 %var_2_425, 0
; Matched:%var_2_371:  %var_2_371 = or i1 %var_2_369, %var_2_370
; %var_2_429 = or i1 %var_2_427, %var_2_428
; Matched:%var_2_372:  %var_2_372 = zext i1 %var_2_371 to i8
; %var_2_430 = zext i1 %var_2_429 to i8
; Matched:\<badref\>:  store i8 %var_2_372, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_430, i8* %var_2_36, align 1
; Matched:%var_2_373:  %var_2_373 = and i32 %var_2_367, 255
; %var_2_431 = and i32 %var_2_425, 255
; Matched:%var_2_374:  %var_2_374 = tail call i32 @llvm.ctpop.i32(i32 %var_2_373) #12
; %var_2_432 = tail call i32 @llvm.ctpop.i32(i32 %var_2_431)
; Matched:%var_2_375:  %var_2_375 = trunc i32 %var_2_374 to i8
; %var_2_433 = trunc i32 %var_2_432 to i8
; Matched:%var_2_376:  %var_2_376 = and i8 %var_2_375, 1
; %var_2_434 = and i8 %var_2_433, 1
; Matched:%var_2_377:  %var_2_377 = xor i8 %var_2_376, 1
; %var_2_435 = xor i8 %var_2_434, 1
; Matched:\<badref\>:  store i8 %var_2_377, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_435, i8* %var_2_37, align 1
; Matched:%var_2_378:  %var_2_378 = xor i32 %var_2_367, %var_2_366
; %var_2_436 = xor i32 %var_2_425, %var_2_424
; Matched:%var_2_379:  %var_2_379 = lshr i32 %var_2_378, 4
; %var_2_437 = lshr i32 %var_2_436, 4
; Matched:%var_2_380:  %var_2_380 = trunc i32 %var_2_379 to i8
; %var_2_438 = trunc i32 %var_2_437 to i8
; Matched:%var_2_381:  %var_2_381 = and i8 %var_2_380, 1
; %var_2_439 = and i8 %var_2_438, 1
; Matched:\<badref\>:  store i8 %var_2_381, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_439, i8* %var_2_38, align 1
; Matched:%var_2_382:  %var_2_382 = zext i1 %var_2_370 to i8
; %var_2_440 = zext i1 %var_2_428 to i8
; Matched:\<badref\>:  store i8 %var_2_382, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_440, i8* %var_2_39, align 1
; Matched:%var_2_383:  %var_2_383 = lshr i32 %var_2_367, 31
; %var_2_441 = lshr i32 %var_2_425, 31
; Matched:%var_2_384:  %var_2_384 = trunc i32 %var_2_383 to i8
; %var_2_442 = trunc i32 %var_2_441 to i8
; Matched:\<badref\>:  store i8 %var_2_384, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_442, i8* %var_2_40, align 1
; Matched:%var_2_385:  %var_2_385 = lshr i32 %var_2_366, 31
; %var_2_443 = lshr i32 %var_2_424, 31
; Matched:%var_2_386:  %var_2_386 = xor i32 %var_2_383, %var_2_385
; %var_2_444 = xor i32 %var_2_441, %var_2_443
; Matched:%var_2_387:  %var_2_387 = add nuw nsw i32 %var_2_386, %var_2_383
; %var_2_445 = add nuw nsw i32 %var_2_444, %var_2_441
; Matched:%var_2_388:  %var_2_388 = icmp eq i32 %var_2_387, 2
; %var_2_446 = icmp eq i32 %var_2_445, 2
; Matched:%var_2_389:  %var_2_389 = zext i1 %var_2_388 to i8
; %var_2_447 = zext i1 %var_2_446 to i8
; Matched:\<badref\>:  store i8 %var_2_389, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_447, i8* %var_2_41, align 1
; Matched:%var_2_390:  %var_2_390 = add i64 %var_2_363, 9
; %var_2_448 = add i64 %var_2_421, 9
; Matched:\<badref\>:  store i64 %var_2_390, i64* %PC, align 8
; store i64 %var_2_448, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_367, i32* %var_2_365, align 4
; store i32 %var_2_425, i32* %var_2_423, align 4
; Matched:%var_2_391:  %var_2_391 = load i64, i64* %PC, align 8
; %var_2_449 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_392:  %var_2_392 = add i64 %var_2_391, -109
; %var_2_450 = add i64 %var_2_449, -109
; Matched:\<badref\>:  store i64 %var_2_392, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_450, i64* %var_2_3, align 8
  br label %block_.L_400c65

block_.L_400cd7:                                  ; preds = %block_.L_400c65
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_466, -24
; %var_2_451 = add i64 %var_2_141, -24
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_506, 8
; %var_2_452 = add i64 %var_2_181, 8
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_452, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = inttoptr i64 %var_2_49 to i32*
; %var_2_453 = inttoptr i64 %var_2_451 to i32*
; Matched:%var_2_52:  %var_2_52 = load i32, i32* %var_2_51, align 4
; %var_2_454 = load i32, i32* %var_2_453, align 4
; Matched:%var_2_53:  %var_2_53 = add i32 %var_2_52, 1
; %var_2_455 = add i32 %var_2_454, 1
; Matched:%var_2_54:  %var_2_54 = zext i32 %var_2_53 to i64
; %var_2_456 = zext i32 %var_2_455 to i64
; Matched:\<badref\>:  store i64 %var_2_54, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_456, i64* %RAX.i125, align 8
; Matched:%var_2_55:  %var_2_55 = icmp eq i32 %var_2_52, -1
; %var_2_457 = icmp eq i32 %var_2_454, -1
; Matched:%var_2_56:  %var_2_56 = icmp eq i32 %var_2_53, 0
; %var_2_458 = icmp eq i32 %var_2_455, 0
; Matched:%var_2_57:  %var_2_57 = or i1 %var_2_55, %var_2_56
; %var_2_459 = or i1 %var_2_457, %var_2_458
; Matched:%var_2_58:  %var_2_58 = zext i1 %var_2_57 to i8
; %var_2_460 = zext i1 %var_2_459 to i8
; Matched:\<badref\>:  store i8 %var_2_58, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_460, i8* %var_2_36, align 1
; Matched:%var_2_59:  %var_2_59 = and i32 %var_2_53, 255
; %var_2_461 = and i32 %var_2_455, 255
; Matched:%var_2_60:  %var_2_60 = tail call i32 @llvm.ctpop.i32(i32 %var_2_59) #12
; %var_2_462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_461)
; Matched:%var_2_61:  %var_2_61 = trunc i32 %var_2_60 to i8
; %var_2_463 = trunc i32 %var_2_462 to i8
; Matched:%var_2_62:  %var_2_62 = and i8 %var_2_61, 1
; %var_2_464 = and i8 %var_2_463, 1
; Matched:%var_2_63:  %var_2_63 = xor i8 %var_2_62, 1
; %var_2_465 = xor i8 %var_2_464, 1
; Matched:\<badref\>:  store i8 %var_2_63, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_465, i8* %var_2_37, align 1
; Matched:%var_2_64:  %var_2_64 = xor i32 %var_2_53, %var_2_52
; %var_2_466 = xor i32 %var_2_455, %var_2_454
; Matched:%var_2_65:  %var_2_65 = lshr i32 %var_2_64, 4
; %var_2_467 = lshr i32 %var_2_466, 4
; Matched:%var_2_66:  %var_2_66 = trunc i32 %var_2_65 to i8
; %var_2_468 = trunc i32 %var_2_467 to i8
; Matched:%var_2_67:  %var_2_67 = and i8 %var_2_66, 1
; %var_2_469 = and i8 %var_2_468, 1
; Matched:\<badref\>:  store i8 %var_2_67, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_469, i8* %var_2_38, align 1
; Matched:%var_2_68:  %var_2_68 = zext i1 %var_2_56 to i8
; %var_2_470 = zext i1 %var_2_458 to i8
; Matched:\<badref\>:  store i8 %var_2_68, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_470, i8* %var_2_39, align 1
; Matched:%var_2_69:  %var_2_69 = lshr i32 %var_2_53, 31
; %var_2_471 = lshr i32 %var_2_455, 31
; Matched:%var_2_70:  %var_2_70 = trunc i32 %var_2_69 to i8
; %var_2_472 = trunc i32 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_70, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_472, i8* %var_2_40, align 1
; Matched:%var_2_71:  %var_2_71 = lshr i32 %var_2_52, 31
; %var_2_473 = lshr i32 %var_2_454, 31
; Matched:%var_2_72:  %var_2_72 = xor i32 %var_2_69, %var_2_71
; %var_2_474 = xor i32 %var_2_471, %var_2_473
; Matched:%var_2_73:  %var_2_73 = add nuw nsw i32 %var_2_72, %var_2_69
; %var_2_475 = add nuw nsw i32 %var_2_474, %var_2_471
; Matched:%var_2_74:  %var_2_74 = icmp eq i32 %var_2_73, 2
; %var_2_476 = icmp eq i32 %var_2_475, 2
; Matched:%var_2_75:  %var_2_75 = zext i1 %var_2_74 to i8
; %var_2_477 = zext i1 %var_2_476 to i8
; Matched:\<badref\>:  store i8 %var_2_75, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_477, i8* %var_2_41, align 1
; Matched:%var_2_76:  %var_2_76 = add i64 %var_2_506, 14
; %var_2_478 = add i64 %var_2_181, 14
; Matched:\<badref\>:  store i64 %var_2_76, i64* %PC, align 8
; store i64 %var_2_478, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_53, i32* %var_2_51, align 4
; store i32 %var_2_455, i32* %var_2_453, align 4
; Matched:%var_2_77:  %var_2_77 = load i64, i64* %PC, align 8
; %var_2_479 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_77, -151
; %var_2_480 = add i64 %var_2_479, -151
; Matched:\<badref\>:  store i64 %var_2_78, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_480, i64* %var_2_3, align 8
  br label %block_.L_400c4e

block_.L_400cea:                                  ; preds = %block_.L_400c4e
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_394, -20
; %var_2_481 = add i64 %var_2_96, -20
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_434, 8
; %var_2_482 = add i64 %var_2_136, 8
; Matched:\<badref\>:  store i64 %var_2_436, i64* %PC, align 8
; store i64 %var_2_482, i64* %var_2_3, align 8
; Matched:%var_2_437:  %var_2_437 = inttoptr i64 %var_2_435 to i32*
; %var_2_483 = inttoptr i64 %var_2_481 to i32*
; Matched:%var_2_438:  %var_2_438 = load i32, i32* %var_2_437, align 4
; %var_2_484 = load i32, i32* %var_2_483, align 4
; Matched:%var_2_439:  %var_2_439 = add i32 %var_2_438, 1
; %var_2_485 = add i32 %var_2_484, 1
; Matched:%var_2_440:  %var_2_440 = zext i32 %var_2_439 to i64
; %var_2_486 = zext i32 %var_2_485 to i64
; Matched:\<badref\>:  store i64 %var_2_440, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_486, i64* %RAX.i125, align 8
; Matched:%var_2_441:  %var_2_441 = icmp eq i32 %var_2_438, -1
; %var_2_487 = icmp eq i32 %var_2_484, -1
; Matched:%var_2_442:  %var_2_442 = icmp eq i32 %var_2_439, 0
; %var_2_488 = icmp eq i32 %var_2_485, 0
; Matched:%var_2_443:  %var_2_443 = or i1 %var_2_441, %var_2_442
; %var_2_489 = or i1 %var_2_487, %var_2_488
; Matched:%var_2_444:  %var_2_444 = zext i1 %var_2_443 to i8
; %var_2_490 = zext i1 %var_2_489 to i8
; Matched:\<badref\>:  store i8 %var_2_444, i8* %var_2_35, align 1, !tbaa !1265
; store i8 %var_2_490, i8* %var_2_36, align 1
; Matched:%var_2_445:  %var_2_445 = and i32 %var_2_439, 255
; %var_2_491 = and i32 %var_2_485, 255
; Matched:%var_2_446:  %var_2_446 = tail call i32 @llvm.ctpop.i32(i32 %var_2_445) #12
; %var_2_492 = tail call i32 @llvm.ctpop.i32(i32 %var_2_491)
; Matched:%var_2_447:  %var_2_447 = trunc i32 %var_2_446 to i8
; %var_2_493 = trunc i32 %var_2_492 to i8
; Matched:%var_2_448:  %var_2_448 = and i8 %var_2_447, 1
; %var_2_494 = and i8 %var_2_493, 1
; Matched:%var_2_449:  %var_2_449 = xor i8 %var_2_448, 1
; %var_2_495 = xor i8 %var_2_494, 1
; Matched:\<badref\>:  store i8 %var_2_449, i8* %var_2_36, align 1, !tbaa !1279
; store i8 %var_2_495, i8* %var_2_37, align 1
; Matched:%var_2_450:  %var_2_450 = xor i32 %var_2_439, %var_2_438
; %var_2_496 = xor i32 %var_2_485, %var_2_484
; Matched:%var_2_451:  %var_2_451 = lshr i32 %var_2_450, 4
; %var_2_497 = lshr i32 %var_2_496, 4
; Matched:%var_2_452:  %var_2_452 = trunc i32 %var_2_451 to i8
; %var_2_498 = trunc i32 %var_2_497 to i8
; Matched:%var_2_453:  %var_2_453 = and i8 %var_2_452, 1
; %var_2_499 = and i8 %var_2_498, 1
; Matched:\<badref\>:  store i8 %var_2_453, i8* %var_2_37, align 1, !tbaa !1280
; store i8 %var_2_499, i8* %var_2_38, align 1
; Matched:%var_2_454:  %var_2_454 = zext i1 %var_2_442 to i8
; %var_2_500 = zext i1 %var_2_488 to i8
; Matched:\<badref\>:  store i8 %var_2_454, i8* %var_2_38, align 1, !tbaa !1281
; store i8 %var_2_500, i8* %var_2_39, align 1
; Matched:%var_2_455:  %var_2_455 = lshr i32 %var_2_439, 31
; %var_2_501 = lshr i32 %var_2_485, 31
; Matched:%var_2_456:  %var_2_456 = trunc i32 %var_2_455 to i8
; %var_2_502 = trunc i32 %var_2_501 to i8
; Matched:\<badref\>:  store i8 %var_2_456, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_502, i8* %var_2_40, align 1
; Matched:%var_2_457:  %var_2_457 = lshr i32 %var_2_438, 31
; %var_2_503 = lshr i32 %var_2_484, 31
; Matched:%var_2_458:  %var_2_458 = xor i32 %var_2_455, %var_2_457
; %var_2_504 = xor i32 %var_2_501, %var_2_503
; Matched:%var_2_459:  %var_2_459 = add nuw nsw i32 %var_2_458, %var_2_455
; %var_2_505 = add nuw nsw i32 %var_2_504, %var_2_501
; Matched:%var_2_460:  %var_2_460 = icmp eq i32 %var_2_459, 2
; %var_2_506 = icmp eq i32 %var_2_505, 2
; Matched:%var_2_461:  %var_2_461 = zext i1 %var_2_460 to i8
; %var_2_507 = zext i1 %var_2_506 to i8
; Matched:\<badref\>:  store i8 %var_2_461, i8* %var_2_40, align 1, !tbaa !1283
; store i8 %var_2_507, i8* %var_2_41, align 1
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_434, 14
; %var_2_508 = add i64 %var_2_136, 14
; Matched:\<badref\>:  store i64 %var_2_462, i64* %PC, align 8
; store i64 %var_2_508, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_439, i32* %var_2_437, align 4
; store i32 %var_2_485, i32* %var_2_483, align 4
; Matched:%var_2_463:  %var_2_463 = load i64, i64* %PC, align 8
; %var_2_509 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_464:  %var_2_464 = add i64 %var_2_463, -193
; %var_2_510 = add i64 %var_2_509, -193
; Matched:\<badref\>:  store i64 %var_2_464, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_510, i64* %var_2_3, align 8
  br label %block_.L_400c37

block_.L_400cfd:                                  ; preds = %block_.L_400c37
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_123, 1
; %var_2_511 = add i64 %var_2_91, 1
; Matched:\<badref\>:  store i64 %var_2_507, i64* %PC, align 8
; store i64 %var_2_511, i64* %var_2_3, align 8
; Matched:%var_2_508:  %var_2_508 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_512 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_508, 8
; %var_2_513 = add i64 %var_2_512, 8
; Matched:%var_2_510:  %var_2_510 = inttoptr i64 %var_2_508 to i64*
; %var_2_514 = inttoptr i64 %var_2_512 to i64*
; Matched:%var_2_511:  %var_2_511 = load i64, i64* %var_2_510, align 8
; %var_2_515 = load i64, i64* %var_2_514, align 8
; Matched:\<badref\>:  store i64 %var_2_511, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_515, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_509, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_513, i64* %var_2_6, align 8
; Matched:%var_2_512:  %var_2_512 = add i64 %var_2_123, 2
; %var_2_516 = add i64 %var_2_91, 2
; Matched:\<badref\>:  store i64 %var_2_512, i64* %PC, align 8
; store i64 %var_2_516, i64* %var_2_3, align 8
; Matched:%var_2_513:  %var_2_513 = inttoptr i64 %var_2_509 to i64*
; %var_2_517 = inttoptr i64 %var_2_513 to i64*
; Matched:%var_2_514:  %var_2_514 = load i64, i64* %var_2_513, align 8
; %var_2_518 = load i64, i64* %var_2_517, align 8
; Matched:\<badref\>:  store i64 %var_2_514, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_518, i64* %var_2_3, align 8
; Matched:%var_2_515:  %var_2_515 = add i64 %var_2_508, 16
; %var_2_519 = add i64 %var_2_512, 16
; Matched:\<badref\>:  store i64 %var_2_515, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_519, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400cfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400cea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400cd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0xc__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 12
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
  store i64 %15, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x10__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
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
  store i64 %15, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x14__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 20
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
  store i64 %15, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x10__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
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
  store i64 %15, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x14__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 20
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
  store i64 %15, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
