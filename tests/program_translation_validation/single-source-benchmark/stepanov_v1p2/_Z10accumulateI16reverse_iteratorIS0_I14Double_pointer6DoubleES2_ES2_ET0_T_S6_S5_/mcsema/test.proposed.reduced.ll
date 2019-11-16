; ModuleID = '/tmp/tmplxiajqxx-query.ll'
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

declare %struct.Memory* @sub_401c70._ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401cb0._ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401ce0._ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @"sub_401160._ZN3$_0clERK6DoubleS2_"(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z10accumulateI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_ET0_T_S6_S5_(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_7, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_6, -56
; %var_2_11 = add i64 %var_2_7, -56
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_11:  %var_2_11 = icmp ult i64 %var_2_7, 48
; %var_2_12 = icmp ult i64 %var_2_8, 48
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
; Matched:%var_2_21:  %var_2_21 = xor i64 %var_2_7, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_21, %var_2_10
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_23:  %var_2_23 = lshr i64 %var_2_22, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_24:  %var_2_24 = trunc i64 %var_2_23 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_25:  %var_2_25 = and i8 %var_2_24, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_27:  %var_2_27 = icmp eq i64 %var_2_10, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_28:  %var_2_28 = zext i1 %var_2_27 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_30:  %var_2_30 = lshr i64 %var_2_10, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_31:  %var_2_31 = trunc i64 %var_2_30 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_7, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_34:  %var_2_34 = xor i64 %var_2_30, %var_2_33
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_35:  %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_36:  %var_2_36 = icmp eq i64 %var_2_35, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_37:  %var_2_37 = zext i1 %var_2_36 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
  %RDI.i56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_6, -24
; %var_2_40 = add i64 %var_2_7, -24
; Matched:%var_2_40:  %var_2_40 = load i64, i64* %RDI, align 8
; %var_2_41 = load i64, i64* %RDI.i56, align 8
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_9, 11
; %var_2_42 = add i64 %var_2_10, 11
; Matched:\<badref\>:  store i64 %var_2_41, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_42:  %var_2_42 = inttoptr i64 %var_2_39 to i64*
; %var_2_43 = inttoptr i64 %var_2_40 to i64*
; Matched:\<badref\>:  store i64 %var_2_40, i64* %var_2_42, align 8
; store i64 %var_2_41, i64* %var_2_43, align 8
  %RSI.i53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RBP, align 8
; %var_2_44 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_43, -24
; %var_2_45 = add i64 %var_2_44, -24
; Matched:%var_2_45:  %var_2_45 = load i64, i64* %RSI, align 8
; %var_2_46 = load i64, i64* %RSI.i53, align 8
%var_2_47 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_94, 4
; %var_2_48 = add i64 %var_2_47, 4
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_48, i64* %var_2_3, align 8
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_44 to i64*
; %var_2_49 = inttoptr i64 %var_2_45 to i64*
; Matched:\<badref\>:  store i64 %var_2_45, i64* %var_2_48, align 8
; store i64 %var_2_46, i64* %var_2_49, align 8
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %RBP, align 8
; %var_2_50 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -32
; %var_2_51 = add i64 %var_2_50, -32
%var_2_52 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_51, 5
; %var_2_53 = add i64 %var_2_52, 5
; Matched:\<badref\>:  store i64 %var_2_136, i64* %PC, align 8
; store i64 %var_2_53, i64* %var_2_3, align 8
; Matched:%var_2_53:  %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %var_2_53, align 1
; %var_2_55 = load i64, i64* %var_2_54, align 1
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_50 to i64*
; %var_2_56 = inttoptr i64 %var_2_51 to i64*
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_55, align 8
; store i64 %var_2_55, i64* %var_2_56, align 8
%var_2_57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%EAX.i = bitcast %union.anon* %var_2_57 to i32*
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i29 = getelementptr inbounds %union.anon, %union.anon* %var_2_57, i64 0, i32 0
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_401be5

block_.L_401be5:                                  ; preds = %block_401bfb, %entry
; Matched:%var_2_103:  %var_2_103 = phi i64 [ %var_2_102, %block_401bfb ], [ %.pre, %block_401bd0 ]
; %var_2_58 = phi i64 [ %var_2_123, %block_401bfb ], [ %.pre, %entry ]
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %RBP, align 8
; %var_2_59 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_125, -16
; %var_2_60 = add i64 %var_2_59, -16
; Matched:\<badref\>:  store i64 %var_2_56, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %RDI.i56, align 8
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_104, -24
; %var_2_61 = add i64 %var_2_59, -24
; Matched:\<badref\>:  store i64 %var_2_106, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_61, i64* %RSI.i53, align 8
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_103, 139
; %var_2_62 = add i64 %var_2_58, 139
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_103, 13
; %var_2_63 = add i64 %var_2_58, 13
; Matched:%var_2_109:  %var_2_109 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_64 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_72, -8
; %var_2_65 = add i64 %var_2_64, -8
; Matched:%var_2_111:  %var_2_111 = inttoptr i64 %var_2_110 to i64*
; %var_2_66 = inttoptr i64 %var_2_65 to i64*
; Matched:\<badref\>:  store i64 %var_2_108, i64* %var_2_111, align 8
; store i64 %var_2_63, i64* %var_2_66, align 8
; Matched:\<badref\>:  store i64 %var_2_73, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_65, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_62, i64* %var_2_3, align 8
; Matched:%var_2_112:  %var_2_112 = tail call %struct.Memory* @sub_401c70__ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7__renamed_(%struct.State* nonnull %0, i64 %var_2_107, %struct.Memory* %2)
; %call2_401bed = tail call %struct.Memory* @sub_401c70._ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_(%struct.State* nonnull %0, i64 %var_2_62, %struct.Memory* %2)
%var_2_67 = load i32, i32* %EAX.i, align 4
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %PC, align 8
; %var_2_68 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_115:  %var_2_115 = and i32 %var_2_113, 255
; %var_2_69 = and i32 %var_2_67, 255
; Matched:%var_2_116:  %var_2_116 = tail call i32 @llvm.ctpop.i32(i32 %var_2_115) #12
; %var_2_70 = tail call i32 @llvm.ctpop.i32(i32 %var_2_69)
; Matched:%var_2_117:  %var_2_117 = trunc i32 %var_2_116 to i8
; %var_2_71 = trunc i32 %var_2_70 to i8
; Matched:%var_2_118:  %var_2_118 = and i8 %var_2_117, 1
; %var_2_72 = and i8 %var_2_71, 1
; Matched:%var_2_119:  %var_2_119 = xor i8 %var_2_118, 1
; %var_2_73 = xor i8 %var_2_72, 1
; Matched:\<badref\>:  store i8 %var_2_119, i8* %var_2_20, align 1, !tbaa !1279
; store i8 %var_2_73, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
%var_2_74 = icmp eq i32 %var_2_67, 0
; Matched:%var_2_121:  %var_2_121 = zext i1 %var_2_120 to i8
; %var_2_75 = zext i1 %var_2_74 to i8
; Matched:\<badref\>:  store i8 %var_2_121, i8* %var_2_29, align 1, !tbaa !1281
; store i8 %var_2_75, i8* %var_2_30, align 1
; Matched:%var_2_122:  %var_2_122 = lshr i32 %var_2_113, 31
; %var_2_76 = lshr i32 %var_2_67, 31
; Matched:%var_2_123:  %var_2_123 = trunc i32 %var_2_122 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_32, align 1, !tbaa !1282
; store i8 %var_2_77, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
; Matched:  %.v = select i1 %var_2_120, i64 73, i64 9
; %.v = select i1 %var_2_74, i64 73, i64 9
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_114, %.v
; %var_2_78 = add i64 %var_2_68, %.v
; Matched:\<badref\>:  store i64 %var_2_124, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_78, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = load i64, i64* %RBP, align 8
; %var_2_79 = load i64, i64* %RBP.i, align 8
br i1 %var_2_74, label %block_.L_401c3b, label %block_401bfb

block_401bfb:                                     ; preds = %block_.L_401be5
; Matched:%var_2_105:  %var_2_105 = add i64 %var_2_104, -16
; %var_2_80 = add i64 %var_2_79, -16
; Matched:\<badref\>:  store i64 %var_2_105, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_80, i64* %RDI.i56, align 8
  store i64 0, i64* %RSI.i53, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_124, 181
; %var_2_81 = add i64 %var_2_78, 181
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_124, 11
; %var_2_82 = add i64 %var_2_78, 11
; Matched:%var_2_82:  %var_2_82 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_83 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_83:  %var_2_83 = add i64 %var_2_82, -8
; %var_2_84 = add i64 %var_2_83, -8
; Matched:%var_2_61:  %var_2_61 = inttoptr i64 %var_2_60 to i64*
; %var_2_85 = inttoptr i64 %var_2_84 to i64*
; Matched:\<badref\>:  store i64 %var_2_58, i64* %var_2_61, align 8
; store i64 %var_2_82, i64* %var_2_85, align 8
; Matched:\<badref\>:  store i64 %var_2_83, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_84, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_81, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = tail call %struct.Memory* @sub_401cb0__ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi_renamed_(%struct.State* nonnull %0, i64 %var_2_57, %struct.Memory* %2)
; %call2_401c01 = tail call %struct.Memory* @sub_401cb0._ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi(%struct.State* nonnull %0, i64 %var_2_81, %struct.Memory* %2)
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %RBP, align 8
; %var_2_86 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -48
; %var_2_87 = add i64 %var_2_86, -48
%var_2_88 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_87, i64* %RDI.i56, align 8
; Matched:%var_2_66:  %var_2_66 = load i64, i64* %RAX, align 8
; %var_2_89 = load i64, i64* %RAX.i29, align 8
; Matched:%var_2_67:  %var_2_67 = add i64 %var_2_65, 8
; %var_2_90 = add i64 %var_2_88, 8
; Matched:\<badref\>:  store i64 %var_2_67, i64* %PC, align 8
; store i64 %var_2_90, i64* %var_2_3, align 8
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_64 to i64*
; %var_2_91 = inttoptr i64 %var_2_87 to i64*
; Matched:\<badref\>:  store i64 %var_2_66, i64* %var_2_68, align 8
; store i64 %var_2_89, i64* %var_2_91, align 8
; Matched:%var_2_69:  %var_2_69 = load i64, i64* %PC, align 8
; %var_2_92 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_70:  %var_2_70 = add i64 %var_2_69, 210
; %var_2_93 = add i64 %var_2_92, 210
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_69, 5
; %var_2_94 = add i64 %var_2_92, 5
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_95 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_110:  %var_2_110 = add i64 %var_2_109, -8
; %var_2_96 = add i64 %var_2_95, -8
; Matched:%var_2_74:  %var_2_74 = inttoptr i64 %var_2_73 to i64*
; %var_2_97 = inttoptr i64 %var_2_96 to i64*
; Matched:\<badref\>:  store i64 %var_2_71, i64* %var_2_74, align 8
; store i64 %var_2_94, i64* %var_2_97, align 8
; Matched:\<badref\>:  store i64 %var_2_60, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_96, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_70, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_93, i64* %var_2_3, align 8
; Matched:%var_2_75:  %var_2_75 = tail call %struct.Memory* @sub_401ce0__ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv_renamed_(%struct.State* nonnull %0, i64 %var_2_70, %struct.Memory* %2)
; %call2_401c0e = tail call %struct.Memory* @sub_401ce0._ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv(%struct.State* nonnull %0, i64 %var_2_93, %struct.Memory* %2)
; Matched:%var_2_76:  %var_2_76 = load i64, i64* %PC, align 8
; %var_2_98 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x60cf00_type* @G__0x60cf00 to i64), i64* %RDI.i56, align 8
; Matched:%var_2_77:  %var_2_77 = load i64, i64* %RBP, align 8
; %var_2_99 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_77, -32
; %var_2_100 = add i64 %var_2_99, -32
; Matched:\<badref\>:  store i64 %var_2_78, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_100, i64* %RSI.i53, align 8
; Matched:%var_2_79:  %var_2_79 = load i64, i64* %RAX, align 8
; %var_2_101 = load i64, i64* %RAX.i29, align 8
; Matched:\<badref\>:  store i64 %var_2_79, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_101, i64* %RDX.i, align 8
; Matched:%var_2_80:  %var_2_80 = add i64 %var_2_76, -2739
; %var_2_102 = add i64 %var_2_98, -2739
; Matched:%var_2_81:  %var_2_81 = add i64 %var_2_76, 22
; %var_2_103 = add i64 %var_2_98, 22
; Matched:%var_2_72:  %var_2_72 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_104 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_59, -8
; %var_2_105 = add i64 %var_2_104, -8
; Matched:%var_2_84:  %var_2_84 = inttoptr i64 %var_2_83 to i64*
; %var_2_106 = inttoptr i64 %var_2_105 to i64*
; Matched:\<badref\>:  store i64 %var_2_81, i64* %var_2_84, align 8
; store i64 %var_2_103, i64* %var_2_106, align 8
; Matched:\<badref\>:  store i64 %var_2_110, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_105, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_80, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_102, i64* %var_2_3, align 8
%call2_401c24 = tail call %struct.Memory* @"sub_401160._ZN3$_0clERK6DoubleS2_"(%struct.State* nonnull %0, i64 %var_2_102, %struct.Memory* %2)
; Matched:%var_2_86:  %var_2_86 = load i64, i64* %RBP, align 8
; %var_2_107 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_87:  %var_2_87 = add i64 %var_2_86, -40
; %var_2_108 = add i64 %var_2_107, -40
%var_2_109 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_88, 5
; %var_2_110 = add i64 %var_2_109, 5
; Matched:\<badref\>:  store i64 %var_2_89, i64* %PC, align 8
; store i64 %var_2_110, i64* %var_2_3, align 8
; Matched:%var_2_90:  %var_2_90 = load i64, i64* %var_2_53, align 1
; %var_2_111 = load i64, i64* %var_2_54, align 1
; Matched:%var_2_91:  %var_2_91 = inttoptr i64 %var_2_87 to i64*
; %var_2_112 = inttoptr i64 %var_2_108 to i64*
; Matched:\<badref\>:  store i64 %var_2_90, i64* %var_2_91, align 8
; store i64 %var_2_111, i64* %var_2_112, align 8
; Matched:%var_2_92:  %var_2_92 = load i64, i64* %RBP, align 8
; %var_2_113 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_93:  %var_2_93 = add i64 %var_2_92, -40
; %var_2_114 = add i64 %var_2_113, -40
%var_2_115 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, 4
; %var_2_116 = add i64 %var_2_115, 4
; Matched:\<badref\>:  store i64 %var_2_47, i64* %PC, align 8
; store i64 %var_2_116, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_93 to i64*
; %var_2_117 = inttoptr i64 %var_2_114 to i64*
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %var_2_96, align 8
; %var_2_118 = load i64, i64* %var_2_117, align 8
; Matched:\<badref\>:  store i64 %var_2_97, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_118, i64* %RAX.i29, align 8
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_92, -32
; %var_2_119 = add i64 %var_2_113, -32
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_94, 8
; %var_2_120 = add i64 %var_2_115, 8
; Matched:\<badref\>:  store i64 %var_2_99, i64* %PC, align 8
; store i64 %var_2_120, i64* %var_2_3, align 8
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_98 to i64*
; %var_2_121 = inttoptr i64 %var_2_119 to i64*
; Matched:\<badref\>:  store i64 %var_2_97, i64* %var_2_100, align 8
; store i64 %var_2_118, i64* %var_2_121, align 8
; Matched:%var_2_101:  %var_2_101 = load i64, i64* %PC, align 8
; %var_2_122 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_101, -81
; %var_2_123 = add i64 %var_2_122, -81
; Matched:\<badref\>:  store i64 %var_2_102, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_123, i64* %var_2_3, align 8
  br label %block_.L_401be5

block_.L_401c3b:                                  ; preds = %block_.L_401be5
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, -32
; %var_2_124 = add i64 %var_2_79, -32
; Matched:%var_2_127:  %var_2_127 = add i64 %var_2_124, 4
; %var_2_125 = add i64 %var_2_78, 4
; Matched:\<badref\>:  store i64 %var_2_127, i64* %PC, align 8
; store i64 %var_2_125, i64* %var_2_3, align 8
; Matched:%var_2_128:  %var_2_128 = inttoptr i64 %var_2_126 to i64*
; %var_2_126 = inttoptr i64 %var_2_124 to i64*
; Matched:%var_2_129:  %var_2_129 = load i64, i64* %var_2_128, align 8
; %var_2_127 = load i64, i64* %var_2_126, align 8
; Matched:\<badref\>:  store i64 %var_2_129, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_127, i64* %RAX.i29, align 8
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_125, -8
; %var_2_128 = add i64 %var_2_79, -8
; Matched:%var_2_131:  %var_2_131 = add i64 %var_2_124, 8
; %var_2_129 = add i64 %var_2_78, 8
; Matched:\<badref\>:  store i64 %var_2_131, i64* %PC, align 8
; store i64 %var_2_129, i64* %var_2_3, align 8
; Matched:%var_2_132:  %var_2_132 = inttoptr i64 %var_2_130 to i64*
; %var_2_130 = inttoptr i64 %var_2_128 to i64*
; Matched:\<badref\>:  store i64 %var_2_129, i64* %var_2_132, align 8
; store i64 %var_2_127, i64* %var_2_130, align 8
; Matched:%var_2_133:  %var_2_133 = load i64, i64* %RBP, align 8
; %var_2_131 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, -8
; %var_2_132 = add i64 %var_2_131, -8
%var_2_133 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_136:  %var_2_136 = add i64 %var_2_135, 5
; %var_2_134 = add i64 %var_2_133, 5
; Matched:\<badref\>:  store i64 %var_2_52, i64* %PC, align 8
; store i64 %var_2_134, i64* %var_2_3, align 8
; Matched:%var_2_137:  %var_2_137 = inttoptr i64 %var_2_134 to i64*
; %var_2_135 = inttoptr i64 %var_2_132 to i64*
; Matched:%var_2_138:  %var_2_138 = load i64, i64* %var_2_137, align 8
; %var_2_136 = load i64, i64* %var_2_135, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_53, align 1, !tbaa !1284
; store i64 %var_2_136, i64* %var_2_54, align 1
; Matched:%var_2_139:  %var_2_139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_140:  %var_2_140 = bitcast i64* %var_2_139 to double*
; %var_2_138 = bitcast i64* %var_2_137 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_140, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_138, align 1
; Matched:%var_2_141:  %var_2_141 = load i64, i64* %RSP, align 8
; %var_2_139 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_141, 48
; %var_2_140 = add i64 %var_2_139, 48
; Matched:\<badref\>:  store i64 %var_2_142, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %var_2_6, align 8
; Matched:%var_2_143:  %var_2_143 = icmp ugt i64 %var_2_141, -49
; %var_2_141 = icmp ugt i64 %var_2_139, -49
; Matched:%var_2_144:  %var_2_144 = zext i1 %var_2_143 to i8
; %var_2_142 = zext i1 %var_2_141 to i8
; Matched:\<badref\>:  store i8 %var_2_144, i8* %var_2_13, align 1, !tbaa !1265
; store i8 %var_2_142, i8* %var_2_14, align 1
; Matched:%var_2_145:  %var_2_145 = trunc i64 %var_2_142 to i32
; %var_2_143 = trunc i64 %var_2_140 to i32
; Matched:%var_2_146:  %var_2_146 = and i32 %var_2_145, 255
; %var_2_144 = and i32 %var_2_143, 255
; Matched:%var_2_147:  %var_2_147 = tail call i32 @llvm.ctpop.i32(i32 %var_2_146) #12
; %var_2_145 = tail call i32 @llvm.ctpop.i32(i32 %var_2_144)
; Matched:%var_2_148:  %var_2_148 = trunc i32 %var_2_147 to i8
; %var_2_146 = trunc i32 %var_2_145 to i8
; Matched:%var_2_149:  %var_2_149 = and i8 %var_2_148, 1
; %var_2_147 = and i8 %var_2_146, 1
; Matched:%var_2_150:  %var_2_150 = xor i8 %var_2_149, 1
; %var_2_148 = xor i8 %var_2_147, 1
; Matched:\<badref\>:  store i8 %var_2_150, i8* %var_2_20, align 1, !tbaa !1279
; store i8 %var_2_148, i8* %var_2_21, align 1
; Matched:%var_2_151:  %var_2_151 = xor i64 %var_2_141, 16
; %var_2_149 = xor i64 %var_2_139, 16
; Matched:%var_2_152:  %var_2_152 = xor i64 %var_2_151, %var_2_142
; %var_2_150 = xor i64 %var_2_149, %var_2_140
; Matched:%var_2_153:  %var_2_153 = lshr i64 %var_2_152, 4
; %var_2_151 = lshr i64 %var_2_150, 4
; Matched:%var_2_154:  %var_2_154 = trunc i64 %var_2_153 to i8
; %var_2_152 = trunc i64 %var_2_151 to i8
; Matched:%var_2_155:  %var_2_155 = and i8 %var_2_154, 1
; %var_2_153 = and i8 %var_2_152, 1
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_26, align 1, !tbaa !1280
; store i8 %var_2_153, i8* %var_2_27, align 1
; Matched:%var_2_156:  %var_2_156 = icmp eq i64 %var_2_142, 0
; %var_2_154 = icmp eq i64 %var_2_140, 0
; Matched:%var_2_157:  %var_2_157 = zext i1 %var_2_156 to i8
; %var_2_155 = zext i1 %var_2_154 to i8
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_29, align 1, !tbaa !1281
; store i8 %var_2_155, i8* %var_2_30, align 1
; Matched:%var_2_158:  %var_2_158 = lshr i64 %var_2_142, 63
; %var_2_156 = lshr i64 %var_2_140, 63
; Matched:%var_2_159:  %var_2_159 = trunc i64 %var_2_158 to i8
; %var_2_157 = trunc i64 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_159, i8* %var_2_32, align 1, !tbaa !1282
; store i8 %var_2_157, i8* %var_2_33, align 1
; Matched:%var_2_160:  %var_2_160 = lshr i64 %var_2_141, 63
; %var_2_158 = lshr i64 %var_2_139, 63
; Matched:%var_2_161:  %var_2_161 = xor i64 %var_2_158, %var_2_160
; %var_2_159 = xor i64 %var_2_156, %var_2_158
; Matched:%var_2_162:  %var_2_162 = add nuw nsw i64 %var_2_161, %var_2_158
; %var_2_160 = add nuw nsw i64 %var_2_159, %var_2_156
; Matched:%var_2_163:  %var_2_163 = icmp eq i64 %var_2_162, 2
; %var_2_161 = icmp eq i64 %var_2_160, 2
; Matched:%var_2_164:  %var_2_164 = zext i1 %var_2_163 to i8
; %var_2_162 = zext i1 %var_2_161 to i8
; Matched:\<badref\>:  store i8 %var_2_164, i8* %var_2_38, align 1, !tbaa !1283
; store i8 %var_2_162, i8* %var_2_39, align 1
; Matched:%var_2_165:  %var_2_165 = add i64 %var_2_135, 10
; %var_2_163 = add i64 %var_2_133, 10
; Matched:\<badref\>:  store i64 %var_2_165, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_141, 56
; %var_2_164 = add i64 %var_2_139, 56
; Matched:%var_2_167:  %var_2_167 = inttoptr i64 %var_2_142 to i64*
; %var_2_165 = inttoptr i64 %var_2_140 to i64*
; Matched:%var_2_168:  %var_2_168 = load i64, i64* %var_2_167, align 8
; %var_2_166 = load i64, i64* %var_2_165, align 8
; Matched:\<badref\>:  store i64 %var_2_168, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_166, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_166, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_164, i64* %var_2_6, align 8
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_135, 11
; %var_2_167 = add i64 %var_2_133, 11
; Matched:\<badref\>:  store i64 %var_2_169, i64* %PC, align 8
; store i64 %var_2_167, i64* %var_2_3, align 8
; Matched:%var_2_170:  %var_2_170 = inttoptr i64 %var_2_166 to i64*
; %var_2_168 = inttoptr i64 %var_2_164 to i64*
; Matched:%var_2_171:  %var_2_171 = load i64, i64* %var_2_170, align 8
; %var_2_169 = load i64, i64* %var_2_168, align 8
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_169, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = add i64 %var_2_141, 64
; %var_2_170 = add i64 %var_2_139, 64
; Matched:\<badref\>:  store i64 %var_2_172, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_170, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_._ZneI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_EEiRKT_S7_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401c3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_._ZN16reverse_iteratorIS_I14Double_pointer6DoubleES1_EppEi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZNK16reverse_iteratorIS_I14Double_pointer6DoubleES1_EdeEv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_._ZN3__0clERK6DoubleS2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_401be5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
