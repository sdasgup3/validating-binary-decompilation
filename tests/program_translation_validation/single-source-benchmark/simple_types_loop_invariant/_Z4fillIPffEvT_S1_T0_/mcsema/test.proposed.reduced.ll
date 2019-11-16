; ModuleID = '/tmp/tmps7kmveqz-query.ll'
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
define %struct.Memory* @_Z4fillIPffEvT_S1_T0_(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
%var_2_5 = add i64 %1, 1
store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %var_2_6, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_9, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %var_2_6, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -16
; %var_2_11 = add i64 %var_2_7, -16
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RDI, align 8
; %var_2_12 = load i64, i64* %RDI.i, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_10, 7
; %var_2_13 = add i64 %var_2_10, 7
; Matched:\<badref\>:  store i64 %var_2_13, i64* %PC, align 8
; store i64 %var_2_13, i64* %var_2_3, align 8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_11 to i64*
; %var_2_14 = inttoptr i64 %var_2_11 to i64*
; Matched:\<badref\>:  store i64 %var_2_12, i64* %var_2_14, align 8
; store i64 %var_2_12, i64* %var_2_14, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %RBP, align 8
; %var_2_15 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_15, -16
; %var_2_16 = add i64 %var_2_15, -16
; Matched:%var_2_17:  %var_2_17 = load i64, i64* %RSI, align 8
; %var_2_17 = load i64, i64* %RSI.i, align 8
; Matched:%var_2_74:  %var_2_74 = load i64, i64* %PC, align 8
; %var_2_18 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_75:  %var_2_75 = add i64 %var_2_74, 4
; %var_2_19 = add i64 %var_2_18, 4
; Matched:\<badref\>:  store i64 %var_2_75, i64* %PC, align 8
; store i64 %var_2_19, i64* %var_2_3, align 8
; Matched:%var_2_20:  %var_2_20 = inttoptr i64 %var_2_16 to i64*
; %var_2_20 = inttoptr i64 %var_2_16 to i64*
; Matched:\<badref\>:  store i64 %var_2_17, i64* %var_2_20, align 8
; store i64 %var_2_17, i64* %var_2_20, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; Matched:%var_2_21:  %var_2_21 = load i64, i64* %RBP, align 8
; %var_2_22 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_22:  %var_2_22 = add i64 %var_2_21, -20
; %var_2_23 = add i64 %var_2_22, -20
; Matched:%var_2_23:  %var_2_23 = load i64, i64* %PC, align 8
; %var_2_24 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_24:  %var_2_24 = add i64 %var_2_23, 5
; %var_2_25 = add i64 %var_2_24, 5
; Matched:\<badref\>:  store i64 %var_2_24, i64* %PC, align 8
; store i64 %var_2_25, i64* %var_2_3, align 8
%var_2_26 = bitcast %union.VectorReg* %var_2_21 to <2 x float>*
%var_2_27 = load <2 x float>, <2 x float>* %var_2_26, align 1
%var_2_28 = extractelement <2 x float> %var_2_27, i32 0
; Matched:%var_2_28:  %var_2_28 = inttoptr i64 %var_2_22 to float*
; %var_2_29 = inttoptr i64 %var_2_23 to float*
; Matched:\<badref\>:  store float %var_2_27, float* %var_2_28, align 4
; store float %var_2_28, float* %var_2_29, align 4
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:%var_2_29:  %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:%var_2_31:  %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:%var_2_32:  %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:%var_2_34:  %var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:%var_2_35:  %var_2_35 = bitcast %union.VectorReg* %var_2_3 to i8*
; %var_2_36 = bitcast %union.VectorReg* %var_2_21 to i8*
; Matched:%var_2_36:  %var_2_36 = bitcast %union.VectorReg* %var_2_3 to i32*
; %var_2_37 = bitcast %union.VectorReg* %var_2_21 to i32*
; Matched:%var_2_37:  %var_2_37 = getelementptr inbounds i8, i8* %var_2_35, i64 4
; %var_2_38 = getelementptr inbounds i8, i8* %var_2_36, i64 4
; Matched:%var_2_38:  %var_2_38 = bitcast i8* %var_2_37 to float*
; %var_2_39 = bitcast i8* %var_2_38 to float*
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_40:  %var_2_40 = bitcast i64* %var_2_39 to float*
; %var_2_41 = bitcast i64* %var_2_40 to float*
; Matched:%var_2_41:  %var_2_41 = getelementptr inbounds i8, i8* %var_2_35, i64 12
; %var_2_42 = getelementptr inbounds i8, i8* %var_2_36, i64 12
; Matched:%var_2_42:  %var_2_42 = bitcast i8* %var_2_41 to float*
; %var_2_43 = bitcast i8* %var_2_42 to float*
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_43:  %var_2_43 = bitcast i64* %RAX to float**
; %var_2_44 = bitcast i64* %RAX.i23 to float**
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40aba1

block_.L_40aba1:                                  ; preds = %block_40abaf, %entry
; Matched:%var_2_80:  %var_2_80 = phi i64 [ %var_2_79, %block_40abaf ], [ %.pre, %block_40ab90 ]
; %var_2_45 = phi i64 [ %var_2_116, %block_40abaf ], [ %.pre, %entry ]
%var_2_46 = load i64, i64* %RBP.i, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_83:  %var_2_83 = add i64 %var_2_80, 4
; %var_2_48 = add i64 %var_2_45, 4
; Matched:\<badref\>:  store i64 %var_2_83, i64* %PC, align 8
; store i64 %var_2_48, i64* %var_2_3, align 8
%var_2_49 = inttoptr i64 %var_2_47 to i64*
%var_2_50 = load i64, i64* %var_2_49, align 8
; Matched:\<badref\>:  store i64 %var_2_85, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_50, i64* %RAX.i23, align 8
%var_2_51 = add i64 %var_2_46, -16
; Matched:%var_2_87:  %var_2_87 = add i64 %var_2_80, 8
; %var_2_52 = add i64 %var_2_45, 8
; Matched:\<badref\>:  store i64 %var_2_87, i64* %PC, align 8
; store i64 %var_2_52, i64* %var_2_3, align 8
%var_2_53 = inttoptr i64 %var_2_51 to i64*
%var_2_54 = load i64, i64* %var_2_53, align 8
%var_2_55 = sub i64 %var_2_50, %var_2_54
; Matched:%var_2_91:  %var_2_91 = icmp ult i64 %var_2_85, %var_2_89
; %var_2_56 = icmp ult i64 %var_2_50, %var_2_54
; Matched:%var_2_92:  %var_2_92 = zext i1 %var_2_91 to i8
; %var_2_57 = zext i1 %var_2_56 to i8
; Matched:\<badref\>:  store i8 %var_2_92, i8* %var_2_29, align 1, !tbaa !1267
; store i8 %var_2_57, i8* %var_2_30, align 1
; Matched:%var_2_93:  %var_2_93 = trunc i64 %var_2_90 to i32
; %var_2_58 = trunc i64 %var_2_55 to i32
; Matched:%var_2_94:  %var_2_94 = and i32 %var_2_93, 255
; %var_2_59 = and i32 %var_2_58, 255
; Matched:%var_2_95:  %var_2_95 = tail call i32 @llvm.ctpop.i32(i32 %var_2_94) #12
; %var_2_60 = tail call i32 @llvm.ctpop.i32(i32 %var_2_59)
; Matched:%var_2_96:  %var_2_96 = trunc i32 %var_2_95 to i8
; %var_2_61 = trunc i32 %var_2_60 to i8
; Matched:%var_2_97:  %var_2_97 = and i8 %var_2_96, 1
; %var_2_62 = and i8 %var_2_61, 1
; Matched:%var_2_98:  %var_2_98 = xor i8 %var_2_97, 1
; %var_2_63 = xor i8 %var_2_62, 1
; Matched:\<badref\>:  store i8 %var_2_98, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_63, i8* %var_2_31, align 1
; Matched:%var_2_99:  %var_2_99 = xor i64 %var_2_89, %var_2_85
; %var_2_64 = xor i64 %var_2_54, %var_2_50
; Matched:%var_2_100:  %var_2_100 = xor i64 %var_2_99, %var_2_90
; %var_2_65 = xor i64 %var_2_64, %var_2_55
; Matched:%var_2_101:  %var_2_101 = lshr i64 %var_2_100, 4
; %var_2_66 = lshr i64 %var_2_65, 4
; Matched:%var_2_102:  %var_2_102 = trunc i64 %var_2_101 to i8
; %var_2_67 = trunc i64 %var_2_66 to i8
; Matched:%var_2_103:  %var_2_103 = and i8 %var_2_102, 1
; %var_2_68 = and i8 %var_2_67, 1
; Matched:\<badref\>:  store i8 %var_2_103, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_68, i8* %var_2_32, align 1
%var_2_69 = icmp eq i64 %var_2_55, 0
; Matched:%var_2_105:  %var_2_105 = zext i1 %var_2_104 to i8
; %var_2_70 = zext i1 %var_2_69 to i8
; Matched:\<badref\>:  store i8 %var_2_105, i8* %var_2_32, align 1, !tbaa !1283
; store i8 %var_2_70, i8* %var_2_33, align 1
; Matched:%var_2_106:  %var_2_106 = lshr i64 %var_2_90, 63
; %var_2_71 = lshr i64 %var_2_55, 63
; Matched:%var_2_107:  %var_2_107 = trunc i64 %var_2_106 to i8
; %var_2_72 = trunc i64 %var_2_71 to i8
; Matched:\<badref\>:  store i8 %var_2_107, i8* %var_2_33, align 1, !tbaa !1284
; store i8 %var_2_72, i8* %var_2_34, align 1
; Matched:%var_2_108:  %var_2_108 = lshr i64 %var_2_85, 63
; %var_2_73 = lshr i64 %var_2_50, 63
; Matched:%var_2_109:  %var_2_109 = lshr i64 %var_2_89, 63
; %var_2_74 = lshr i64 %var_2_54, 63
; Matched:%var_2_110:  %var_2_110 = xor i64 %var_2_109, %var_2_108
; %var_2_75 = xor i64 %var_2_74, %var_2_73
; Matched:%var_2_111:  %var_2_111 = xor i64 %var_2_106, %var_2_108
; %var_2_76 = xor i64 %var_2_71, %var_2_73
; Matched:%var_2_112:  %var_2_112 = add nuw nsw i64 %var_2_111, %var_2_110
; %var_2_77 = add nuw nsw i64 %var_2_76, %var_2_75
; Matched:%var_2_113:  %var_2_113 = icmp eq i64 %var_2_112, 2
; %var_2_78 = icmp eq i64 %var_2_77, 2
; Matched:%var_2_114:  %var_2_114 = zext i1 %var_2_113 to i8
; %var_2_79 = zext i1 %var_2_78 to i8
; Matched:\<badref\>:  store i8 %var_2_114, i8* %var_2_34, align 1, !tbaa !1285
; store i8 %var_2_79, i8* %var_2_35, align 1
; Matched:  %.v = select i1 %var_2_104, i64 43, i64 14
; %.v = select i1 %var_2_69, i64 43, i64 14
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_80, %.v
; %var_2_80 = add i64 %var_2_45, %.v
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_80, i64* %var_2_3, align 8
br i1 %var_2_69, label %block_.L_40abcc, label %block_40abaf

block_40abaf:                                     ; preds = %block_.L_40aba1
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_81, -20
; %var_2_81 = add i64 %var_2_46, -20
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_115, 5
; %var_2_82 = add i64 %var_2_80, 5
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_82, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_44 to i32*
; %var_2_83 = inttoptr i64 %var_2_81 to i32*
; Matched:%var_2_47:  %var_2_47 = load i32, i32* %var_2_46, align 4
; %var_2_84 = load i32, i32* %var_2_83, align 4
; Matched:\<badref\>:  store i32 %var_2_47, i32* %var_2_36, align 1, !tbaa !1265
; store i32 %var_2_84, i32* %var_2_37, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_38, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_39, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_40, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_41, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_42, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_43, align 1
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_115, 9
; %var_2_85 = add i64 %var_2_80, 9
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8
; store i64 %var_2_85, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %var_2_84, align 8
; %var_2_86 = load i64, i64* %var_2_49, align 8
; Matched:\<badref\>:  store i64 %var_2_49, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_86, i64* %RAX.i23, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, 4
; %var_2_87 = add i64 %var_2_86, 4
; Matched:\<badref\>:  store i64 %var_2_50, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_87, i64* %RCX.i12, align 8
; Matched:%var_2_51:  %var_2_51 = icmp ugt i64 %var_2_49, -5
; %var_2_88 = icmp ugt i64 %var_2_86, -5
; Matched:%var_2_52:  %var_2_52 = zext i1 %var_2_51 to i8
; %var_2_89 = zext i1 %var_2_88 to i8
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_29, align 1, !tbaa !1267
; store i8 %var_2_89, i8* %var_2_30, align 1
; Matched:%var_2_53:  %var_2_53 = trunc i64 %var_2_50 to i32
; %var_2_90 = trunc i64 %var_2_87 to i32
; Matched:%var_2_54:  %var_2_54 = and i32 %var_2_53, 255
; %var_2_91 = and i32 %var_2_90, 255
; Matched:%var_2_55:  %var_2_55 = tail call i32 @llvm.ctpop.i32(i32 %var_2_54) #12
; %var_2_92 = tail call i32 @llvm.ctpop.i32(i32 %var_2_91)
; Matched:%var_2_56:  %var_2_56 = trunc i32 %var_2_55 to i8
; %var_2_93 = trunc i32 %var_2_92 to i8
; Matched:%var_2_57:  %var_2_57 = and i8 %var_2_56, 1
; %var_2_94 = and i8 %var_2_93, 1
; Matched:%var_2_58:  %var_2_58 = xor i8 %var_2_57, 1
; %var_2_95 = xor i8 %var_2_94, 1
; Matched:\<badref\>:  store i8 %var_2_58, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_95, i8* %var_2_31, align 1
; Matched:%var_2_59:  %var_2_59 = xor i64 %var_2_50, %var_2_49
; %var_2_96 = xor i64 %var_2_87, %var_2_86
; Matched:%var_2_60:  %var_2_60 = lshr i64 %var_2_59, 4
; %var_2_97 = lshr i64 %var_2_96, 4
; Matched:%var_2_61:  %var_2_61 = trunc i64 %var_2_60 to i8
; %var_2_98 = trunc i64 %var_2_97 to i8
; Matched:%var_2_62:  %var_2_62 = and i8 %var_2_61, 1
; %var_2_99 = and i8 %var_2_98, 1
; Matched:\<badref\>:  store i8 %var_2_62, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_99, i8* %var_2_32, align 1
; Matched:%var_2_63:  %var_2_63 = icmp eq i64 %var_2_50, 0
; %var_2_100 = icmp eq i64 %var_2_87, 0
; Matched:%var_2_64:  %var_2_64 = zext i1 %var_2_63 to i8
; %var_2_101 = zext i1 %var_2_100 to i8
; Matched:\<badref\>:  store i8 %var_2_64, i8* %var_2_32, align 1, !tbaa !1283
; store i8 %var_2_101, i8* %var_2_33, align 1
; Matched:%var_2_65:  %var_2_65 = lshr i64 %var_2_50, 63
; %var_2_102 = lshr i64 %var_2_87, 63
; Matched:%var_2_66:  %var_2_66 = trunc i64 %var_2_65 to i8
; %var_2_103 = trunc i64 %var_2_102 to i8
; Matched:\<badref\>:  store i8 %var_2_66, i8* %var_2_33, align 1, !tbaa !1284
; store i8 %var_2_103, i8* %var_2_34, align 1
; Matched:%var_2_67:  %var_2_67 = lshr i64 %var_2_49, 63
; %var_2_104 = lshr i64 %var_2_86, 63
; Matched:%var_2_68:  %var_2_68 = xor i64 %var_2_65, %var_2_67
; %var_2_105 = xor i64 %var_2_102, %var_2_104
; Matched:%var_2_69:  %var_2_69 = add nuw nsw i64 %var_2_68, %var_2_65
; %var_2_106 = add nuw nsw i64 %var_2_105, %var_2_102
; Matched:%var_2_70:  %var_2_70 = icmp eq i64 %var_2_69, 2
; %var_2_107 = icmp eq i64 %var_2_106, 2
; Matched:%var_2_71:  %var_2_71 = zext i1 %var_2_70 to i8
; %var_2_108 = zext i1 %var_2_107 to i8
; Matched:\<badref\>:  store i8 %var_2_71, i8* %var_2_34, align 1, !tbaa !1285
; store i8 %var_2_108, i8* %var_2_35, align 1
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_115, 20
; %var_2_109 = add i64 %var_2_80, 20
; Matched:\<badref\>:  store i64 %var_2_72, i64* %PC, align 8
; store i64 %var_2_109, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_50, i64* %var_2_84, align 8
; store i64 %var_2_87, i64* %var_2_49, align 8
; Matched:%var_2_73:  %var_2_73 = load float*, float** %var_2_43, align 8
; %var_2_110 = load float*, float** %var_2_44, align 8
; Matched:%var_2_18:  %var_2_18 = load i64, i64* %PC, align 8
; %var_2_111 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_18, 4
; %var_2_112 = add i64 %var_2_111, 4
; Matched:\<badref\>:  store i64 %var_2_19, i64* %PC, align 8
; store i64 %var_2_112, i64* %var_2_3, align 8
%var_2_113 = load <2 x float>, <2 x float>* %var_2_26, align 1
%var_2_114 = extractelement <2 x float> %var_2_113, i32 0
; Matched:\<badref\>:  store float %var_2_77, float* %var_2_73, align 4
; store float %var_2_114, float* %var_2_110, align 4
; Matched:%var_2_78:  %var_2_78 = load i64, i64* %PC, align 8
; %var_2_115 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_78, -38
; %var_2_116 = add i64 %var_2_115, -38
; Matched:\<badref\>:  store i64 %var_2_79, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_116, i64* %var_2_3, align 8
  br label %block_.L_40aba1

block_.L_40abcc:                                  ; preds = %block_.L_40aba1
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_115, 1
; %var_2_117 = add i64 %var_2_80, 1
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8
; store i64 %var_2_117, i64* %var_2_3, align 8
; Matched:%var_2_117:  %var_2_117 = load i64, i64* %var_2_6, align 8, !tbaa !1261
; %var_2_118 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_117, 8
; %var_2_119 = add i64 %var_2_118, 8
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_117 to i64*
; %var_2_120 = inttoptr i64 %var_2_118 to i64*
; Matched:%var_2_120:  %var_2_120 = load i64, i64* %var_2_119, align 8
; %var_2_121 = load i64, i64* %var_2_120, align 8
; Matched:\<badref\>:  store i64 %var_2_120, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_121, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_118, i64* %var_2_6, align 8, !tbaa !1261
; store i64 %var_2_119, i64* %var_2_6, align 8
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_115, 2
; %var_2_122 = add i64 %var_2_80, 2
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_122, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_118 to i64*
; %var_2_123 = inttoptr i64 %var_2_119 to i64*
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %var_2_122, align 8
; %var_2_124 = load i64, i64* %var_2_123, align 8
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_124, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_117, 16
; %var_2_125 = add i64 %var_2_118, 16
; Matched:\<badref\>:  store i64 %var_2_124, i64* %var_2_6, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40abcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40aba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
