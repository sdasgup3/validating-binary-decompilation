; ModuleID = '/tmp/tmpp2kfe009-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x60cf00_type = type <{ [8 x i8] }>
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
@G__0x60cf00 = global %G__0x60cf00_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401f70._ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401fb0._ZN16reverse_iteratorIS_I14double_pointerdEdEppEi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401fe0._ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @"sub_4011a0._ZN3$_0clERKdS1_"(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z10accumulateI16reverse_iteratorIS0_I14double_pointerdEdEdET0_T_S5_S4_(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
entry:
; Matched:  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_5:  %var_2_5 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_5, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %var_2_6, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_8:  %var_2_8 = inttoptr i64 %var_2_7 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_8, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_7, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_6, -40
; %var_2_11 = add i64 %var_2_7, -40
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_11:  %var_2_11 = icmp ult i64 %var_2_7, 32
; %var_2_12 = icmp ult i64 %var_2_8, 32
; Matched:%var_2_12:  %var_2_12 = zext i1 %var_2_11 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_12, i8* %var_2_13, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_14:  %var_2_14 = trunc i64 %var_2_10 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_15:  %var_2_15 = and i32 %var_2_14, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_16:  %var_2_16 = tail call i32 @llvm.ctpop.i32(i32 %var_2_15) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_17:  %var_2_17 = trunc i32 %var_2_16 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_18:  %var_2_18 = and i8 %var_2_17, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_19:  %var_2_19 = xor i8 %var_2_18, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_19, i8* %var_2_20, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_21:  %var_2_21 = xor i64 %var_2_7, %var_2_10
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_22:  %var_2_22 = lshr i64 %var_2_21, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_23:  %var_2_23 = trunc i64 %var_2_22 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_24, i8* %var_2_25, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_26:  %var_2_26 = icmp eq i64 %var_2_10, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_27:  %var_2_27 = zext i1 %var_2_26 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_28, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_29:  %var_2_29 = lshr i64 %var_2_10, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_30:  %var_2_30 = trunc i64 %var_2_29 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_32:  %var_2_32 = lshr i64 %var_2_7, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_33:  %var_2_33 = xor i64 %var_2_29, %var_2_32
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_34:  %var_2_34 = add nuw nsw i64 %var_2_33, %var_2_32
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_35:  %var_2_35 = icmp eq i64 %var_2_34, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_36:  %var_2_36 = zext i1 %var_2_35 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_38:  %var_2_38 = add i64 %var_2_6, -16
; %var_2_39 = add i64 %var_2_7, -16
; Matched:%var_2_39:  %var_2_39 = load i64, i64* %RDI, align 8
; %var_2_40 = load i64, i64* %RDI.i44, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_9, 11
; %var_2_41 = add i64 %var_2_10, 11
; Matched:\<badref\>:  store i64 %var_2_40, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_41:  %var_2_41 = inttoptr i64 %var_2_38 to i64*
; %var_2_42 = inttoptr i64 %var_2_39 to i64*
; Matched:\<badref\>:  store i64 %var_2_39, i64* %var_2_41, align 8
; store i64 %var_2_40, i64* %var_2_42, align 8
  %RSI.i41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_42:  %var_2_42 = load i64, i64* %RBP, align 8
; %var_2_43 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_42, -16
; %var_2_44 = add i64 %var_2_43, -16
; Matched:%var_2_44:  %var_2_44 = load i64, i64* %RSI, align 8
; %var_2_45 = load i64, i64* %RSI.i41, align 8
; Matched:%var_2_45:  %var_2_45 = load i64, i64* %PC, align 8
; %var_2_46 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_45, 4
; %var_2_47 = add i64 %var_2_46, 4
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = inttoptr i64 %var_2_43 to i64*
; %var_2_48 = inttoptr i64 %var_2_44 to i64*
; Matched:\<badref\>:  store i64 %var_2_44, i64* %var_2_47, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:%var_2_145:  %var_2_145 = load i64, i64* %RBP, align 8
; %var_2_49 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, -24
; %var_2_50 = add i64 %var_2_49, -24
; Matched:%var_2_147:  %var_2_147 = load i64, i64* %PC, align 8
; %var_2_51 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_147, 5
; %var_2_52 = add i64 %var_2_51, 5
; Matched:\<badref\>:  store i64 %var_2_148, i64* %PC, align 8
; store i64 %var_2_52, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %var_2_52, align 1
; %var_2_54 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_150:  %var_2_150 = inttoptr i64 %var_2_146 to i64*
; %var_2_55 = inttoptr i64 %var_2_50 to i64*
; Matched:\<badref\>:  store i64 %var_2_149, i64* %var_2_150, align 8
; store i64 %var_2_54, i64* %var_2_55, align 8
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%EAX.i = bitcast %union.anon* %var_2_56 to i32*
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i17 = getelementptr inbounds %union.anon, %union.anon* %var_2_56, i64 0, i32 0
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_401f15

block_.L_401f15:                                  ; preds = %block_401f2b, %entry
; Matched:%var_2_92:  %var_2_92 = phi i64 [ %var_2_152, %block_401f2b ], [ %.pre, %block_401f00 ]
; %var_2_57 = phi i64 [ %var_2_113, %block_401f2b ], [ %.pre, %entry ]
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %RBP, align 8
; %var_2_58 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_114, -8
; %var_2_59 = add i64 %var_2_58, -8
; Matched:\<badref\>:  store i64 %var_2_115, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_59, i64* %RDI.i44, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_93, -16
; %var_2_60 = add i64 %var_2_58, -16
; Matched:\<badref\>:  store i64 %var_2_95, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %RSI.i41, align 8
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_92, 91
; %var_2_61 = add i64 %var_2_57, 91
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_92, 13
; %var_2_62 = add i64 %var_2_57, 13
; Matched:%var_2_141:  %var_2_141 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_63 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_141, -8
; %var_2_64 = add i64 %var_2_63, -8
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_99 to i64*
; %var_2_65 = inttoptr i64 %var_2_64 to i64*
; Matched:\<badref\>:  store i64 %var_2_97, i64* %var_2_100, align 8
; store i64 %var_2_62, i64* %var_2_65, align 8
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_64, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_96, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_61, i64* %var_2_3, align 8
; Matched:%var_2_101:  %var_2_101 = tail call %struct.Memory* @sub_401f70__ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6__renamed_(%struct.State* nonnull %0, i64 %var_2_96, %struct.Memory* %2)
; %call2_401f1d = tail call %struct.Memory* @sub_401f70._ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_(%struct.State* nonnull %0, i64 %var_2_61, %struct.Memory* %2)
%var_2_66 = load i32, i32* %EAX.i, align 4
; Matched:%var_2_103:  %var_2_103 = load i64, i64* %PC, align 8
; %var_2_67 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_104:  %var_2_104 = and i32 %var_2_102, 255
; %var_2_68 = and i32 %var_2_66, 255
; Matched:%var_2_105:  %var_2_105 = tail call i32 @llvm.ctpop.i32(i32 %var_2_104) #12
; %var_2_69 = tail call i32 @llvm.ctpop.i32(i32 %var_2_68)
; Matched:%var_2_106:  %var_2_106 = trunc i32 %var_2_105 to i8
; %var_2_70 = trunc i32 %var_2_69 to i8
; Matched:%var_2_107:  %var_2_107 = and i8 %var_2_106, 1
; %var_2_71 = and i8 %var_2_70, 1
; Matched:%var_2_108:  %var_2_108 = xor i8 %var_2_107, 1
; %var_2_72 = xor i8 %var_2_71, 1
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_20, align 1, !tbaa !1279
; store i8 %var_2_72, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_73 = icmp eq i32 %var_2_66, 0
; Matched:%var_2_110:  %var_2_110 = zext i1 %var_2_109 to i8
; %var_2_74 = zext i1 %var_2_73 to i8
; Matched:\<badref\>:  store i8 %var_2_110, i8* %var_2_28, align 1, !tbaa !1281
; store i8 %var_2_74, i8* %var_2_29, align 1
; Matched:%var_2_111:  %var_2_111 = lshr i32 %var_2_102, 31
; %var_2_75 = lshr i32 %var_2_66, 31
; Matched:%var_2_112:  %var_2_112 = trunc i32 %var_2_111 to i8
; %var_2_76 = trunc i32 %var_2_75 to i8
; Matched:\<badref\>:  store i8 %var_2_112, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_76, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:  %.v = select i1 %var_2_109, i64 65, i64 9
; %.v = select i1 %var_2_73, i64 65, i64 9
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_103, %.v
; %var_2_77 = add i64 %var_2_67, %.v
; Matched:\<badref\>:  store i64 %var_2_113, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_77, i64* %var_2_3, align 8
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %RBP, align 8
; %var_2_78 = load i64, i64* %RBP.i, align 8
br i1 %var_2_73, label %block_.L_401f63, label %block_401f2b

block_401f2b:                                     ; preds = %block_.L_401f15
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, -8
; %var_2_79 = add i64 %var_2_78, -8
; Matched:\<badref\>:  store i64 %var_2_94, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_79, i64* %RDI.i44, align 8
  store i64 0, i64* %RSI.i41, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_113, 133
; %var_2_80 = add i64 %var_2_77, 133
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_113, 11
; %var_2_81 = add i64 %var_2_77, 11
; Matched:%var_2_131:  %var_2_131 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_82 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_98, -8
; %var_2_83 = add i64 %var_2_82, -8
; Matched:%var_2_120:  %var_2_120 = inttoptr i64 %var_2_119 to i64*
; %var_2_84 = inttoptr i64 %var_2_83 to i64*
; Matched:\<badref\>:  store i64 %var_2_117, i64* %var_2_120, align 8
; store i64 %var_2_81, i64* %var_2_84, align 8
; Matched:\<badref\>:  store i64 %var_2_142, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_83, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_80, i64* %var_2_3, align 8
; Matched:%var_2_121:  %var_2_121 = tail call %struct.Memory* @sub_401fb0__ZN16reverse_iteratorIS_I14double_pointerdEdEppEi_renamed_(%struct.State* nonnull %0, i64 %var_2_116, %struct.Memory* %2)
; %call2_401f31 = tail call %struct.Memory* @sub_401fb0._ZN16reverse_iteratorIS_I14double_pointerdEdEppEi(%struct.State* nonnull %0, i64 %var_2_80, %struct.Memory* %2)
; Matched:%var_2_122:  %var_2_122 = load i64, i64* %RBP, align 8
; %var_2_85 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_122, -32
; %var_2_86 = add i64 %var_2_85, -32
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %PC, align 8
; %var_2_87 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_123, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_86, i64* %RDI.i44, align 8
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %RAX, align 8
; %var_2_88 = load i64, i64* %RAX.i17, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_124, 8
; %var_2_89 = add i64 %var_2_87, 8
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_89, i64* %var_2_3, align 8
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_123 to i64*
; %var_2_90 = inttoptr i64 %var_2_86 to i64*
; Matched:\<badref\>:  store i64 %var_2_125, i64* %var_2_127, align 8
; store i64 %var_2_88, i64* %var_2_90, align 8
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %PC, align 8
; %var_2_91 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_128, 162
; %var_2_92 = add i64 %var_2_91, 162
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_128, 5
; %var_2_93 = add i64 %var_2_91, 5
; Matched:%var_2_98:  %var_2_98 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_94 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_118, -8
; %var_2_95 = add i64 %var_2_94, -8
; Matched:%var_2_133:  %var_2_133 = inttoptr i64 %var_2_132 to i64*
; %var_2_96 = inttoptr i64 %var_2_95 to i64*
; Matched:\<badref\>:  store i64 %var_2_130, i64* %var_2_133, align 8
; store i64 %var_2_93, i64* %var_2_96, align 8
; Matched:\<badref\>:  store i64 %var_2_99, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_95, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_92, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = tail call %struct.Memory* @sub_401fe0__ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv_renamed_(%struct.State* nonnull %0, i64 %var_2_129, %struct.Memory* %2)
; %call2_401f3e = tail call %struct.Memory* @sub_401fe0._ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv(%struct.State* nonnull %0, i64 %var_2_92, %struct.Memory* %2)
; Matched:%var_2_135:  %var_2_135 = load i64, i64* %PC, align 8
; %var_2_97 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x60cf00_type* @G__0x60cf00 to i64), i64* %RDI.i44, align 8
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %RBP, align 8
; %var_2_98 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_136, -24
; %var_2_99 = add i64 %var_2_98, -24
; Matched:\<badref\>:  store i64 %var_2_137, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_99, i64* %RSI.i41, align 8
; Matched:%var_2_138:  %var_2_138 = load i64, i64* %RAX, align 8
; %var_2_100 = load i64, i64* %RAX.i17, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_100, i64* %RDX.i, align 8
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_135, -3491
; %var_2_101 = add i64 %var_2_97, -3491
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_135, 22
; %var_2_102 = add i64 %var_2_97, 22
; Matched:%var_2_118:  %var_2_118 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_103 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, -8
; %var_2_104 = add i64 %var_2_103, -8
; Matched:%var_2_143:  %var_2_143 = inttoptr i64 %var_2_142 to i64*
; %var_2_105 = inttoptr i64 %var_2_104 to i64*
; Matched:\<badref\>:  store i64 %var_2_140, i64* %var_2_143, align 8
; store i64 %var_2_102, i64* %var_2_105, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_104, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_139, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_101, i64* %var_2_3, align 8
%call2_401f54 = tail call %struct.Memory* @"sub_4011a0._ZN3$_0clERKdS1_"(%struct.State* nonnull %0, i64 %var_2_101, %struct.Memory* %2)
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %RBP, align 8
; %var_2_106 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_145, -24
; %var_2_107 = add i64 %var_2_106, -24
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %PC, align 8
; %var_2_108 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 5
; %var_2_109 = add i64 %var_2_108, 5
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_109, i64* %var_2_3, align 8
; Matched:%var_2_149:  %var_2_149 = load i64, i64* %var_2_52, align 1
; %var_2_110 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_54:  %var_2_54 = inttoptr i64 %var_2_49 to i64*
; %var_2_111 = inttoptr i64 %var_2_107 to i64*
; Matched:\<badref\>:  store i64 %var_2_53, i64* %var_2_54, align 8
; store i64 %var_2_110, i64* %var_2_111, align 8
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %PC, align 8
; %var_2_112 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -73
; %var_2_113 = add i64 %var_2_112, -73
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_113, i64* %var_2_3, align 8
  br label %block_.L_401f15

block_.L_401f63:                                  ; preds = %block_.L_401f15
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_114, -24
; %var_2_114 = add i64 %var_2_78, -24
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_113, 5
; %var_2_115 = add i64 %var_2_77, 5
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_115, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_55 to i64*
; %var_2_116 = inttoptr i64 %var_2_114 to i64*
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %var_2_57, align 8
; %var_2_117 = load i64, i64* %var_2_116, align 8
; Matched:\<badref\>:  store i64 %var_2_58, i64* %var_2_52, align 1, !tbaa !1284
; store i64 %var_2_117, i64* %var_2_53, align 1
; Matched:%var_2_59:  %var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_60:  %var_2_60 = bitcast i64* %var_2_59 to double*
; %var_2_119 = bitcast i64* %var_2_118 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_60, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_119, align 1
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RSP, align 8
; %var_2_120 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, 32
; %var_2_121 = add i64 %var_2_120, 32
; Matched:\<badref\>:  store i64 %var_2_62, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_121, i64* %var_2_6, align 8
; Matched:%var_2_63:  %var_2_63 = icmp ugt i64 %var_2_61, -33
; %var_2_122 = icmp ugt i64 %var_2_120, -33
; Matched:%var_2_64:  %var_2_64 = zext i1 %var_2_63 to i8
; %var_2_123 = zext i1 %var_2_122 to i8
; Matched:\<badref\>:  store i8 %var_2_64, i8* %var_2_13, align 1, !tbaa !1265
; store i8 %var_2_123, i8* %var_2_14, align 1
; Matched:%var_2_65:  %var_2_65 = trunc i64 %var_2_62 to i32
; %var_2_124 = trunc i64 %var_2_121 to i32
; Matched:%var_2_66:  %var_2_66 = and i32 %var_2_65, 255
; %var_2_125 = and i32 %var_2_124, 255
; Matched:%var_2_67:  %var_2_67 = tail call i32 @llvm.ctpop.i32(i32 %var_2_66) #12
; %var_2_126 = tail call i32 @llvm.ctpop.i32(i32 %var_2_125)
; Matched:%var_2_68:  %var_2_68 = trunc i32 %var_2_67 to i8
; %var_2_127 = trunc i32 %var_2_126 to i8
; Matched:%var_2_69:  %var_2_69 = and i8 %var_2_68, 1
; %var_2_128 = and i8 %var_2_127, 1
; Matched:%var_2_70:  %var_2_70 = xor i8 %var_2_69, 1
; %var_2_129 = xor i8 %var_2_128, 1
; Matched:\<badref\>:  store i8 %var_2_70, i8* %var_2_20, align 1, !tbaa !1279
; store i8 %var_2_129, i8* %var_2_21, align 1
; Matched:%var_2_71:  %var_2_71 = xor i64 %var_2_62, %var_2_61
; %var_2_130 = xor i64 %var_2_121, %var_2_120
; Matched:%var_2_72:  %var_2_72 = lshr i64 %var_2_71, 4
; %var_2_131 = lshr i64 %var_2_130, 4
; Matched:%var_2_73:  %var_2_73 = trunc i64 %var_2_72 to i8
; %var_2_132 = trunc i64 %var_2_131 to i8
; Matched:%var_2_74:  %var_2_74 = and i8 %var_2_73, 1
; %var_2_133 = and i8 %var_2_132, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_25, align 1, !tbaa !1280
; store i8 %var_2_133, i8* %var_2_26, align 1
; Matched:%var_2_75:  %var_2_75 = icmp eq i64 %var_2_62, 0
; %var_2_134 = icmp eq i64 %var_2_121, 0
; Matched:%var_2_76:  %var_2_76 = zext i1 %var_2_75 to i8
; %var_2_135 = zext i1 %var_2_134 to i8
; Matched:\<badref\>:  store i8 %var_2_76, i8* %var_2_28, align 1, !tbaa !1281
; store i8 %var_2_135, i8* %var_2_29, align 1
; Matched:%var_2_77:  %var_2_77 = lshr i64 %var_2_62, 63
; %var_2_136 = lshr i64 %var_2_121, 63
; Matched:%var_2_78:  %var_2_78 = trunc i64 %var_2_77 to i8
; %var_2_137 = trunc i64 %var_2_136 to i8
; Matched:\<badref\>:  store i8 %var_2_78, i8* %var_2_31, align 1, !tbaa !1282
; store i8 %var_2_137, i8* %var_2_32, align 1
; Matched:%var_2_79:  %var_2_79 = lshr i64 %var_2_61, 63
; %var_2_138 = lshr i64 %var_2_120, 63
; Matched:%var_2_80:  %var_2_80 = xor i64 %var_2_77, %var_2_79
; %var_2_139 = xor i64 %var_2_136, %var_2_138
; Matched:%var_2_81:  %var_2_81 = add nuw nsw i64 %var_2_80, %var_2_77
; %var_2_140 = add nuw nsw i64 %var_2_139, %var_2_136
; Matched:%var_2_82:  %var_2_82 = icmp eq i64 %var_2_81, 2
; %var_2_141 = icmp eq i64 %var_2_140, 2
; Matched:%var_2_83:  %var_2_83 = zext i1 %var_2_82 to i8
; %var_2_142 = zext i1 %var_2_141 to i8
; Matched:\<badref\>:  store i8 %var_2_83, i8* %var_2_37, align 1, !tbaa !1283
; store i8 %var_2_142, i8* %var_2_38, align 1
; Matched:%var_2_84:  %var_2_84 = add i64 %var_2_113, 10
; %var_2_143 = add i64 %var_2_77, 10
; Matched:\<badref\>:  store i64 %var_2_84, i64* %PC, align 8
; store i64 %var_2_143, i64* %var_2_3, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_61, 40
; %var_2_144 = add i64 %var_2_120, 40
; Matched:%var_2_86:  %var_2_86 = inttoptr i64 %var_2_62 to i64*
; %var_2_145 = inttoptr i64 %var_2_121 to i64*
; Matched:%var_2_87:  %var_2_87 = load i64, i64* %var_2_86, align 8
; %var_2_146 = load i64, i64* %var_2_145, align 8
; Matched:\<badref\>:  store i64 %var_2_87, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_146, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_85, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_144, i64* %var_2_6, align 8
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_113, 11
; %var_2_147 = add i64 %var_2_77, 11
; Matched:\<badref\>:  store i64 %var_2_88, i64* %PC, align 8
; store i64 %var_2_147, i64* %var_2_3, align 8
; Matched:%var_2_89:  %var_2_89 = inttoptr i64 %var_2_85 to i64*
; %var_2_148 = inttoptr i64 %var_2_144 to i64*
; Matched:%var_2_90:  %var_2_90 = load i64, i64* %var_2_89, align 8
; %var_2_149 = load i64, i64* %var_2_148, align 8
; Matched:\<badref\>:  store i64 %var_2_90, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_149, i64* %var_2_3, align 8
; Matched:%var_2_91:  %var_2_91 = add i64 %var_2_61, 48
; %var_2_150 = add i64 %var_2_120, 48
; Matched:\<badref\>:  store i64 %var_2_91, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_150, i64* %var_2_6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZneI16reverse_iteratorIS0_I14double_pointerdEdEEiRKT_S6_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_401f63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZN16reverse_iteratorIS_I14double_pointerdEdEppEi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZNK16reverse_iteratorIS_I14double_pointerdEdEdeEv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x60cf00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x60cf00_type* @G__0x60cf00 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZN3__0clERKdS1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401f15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
