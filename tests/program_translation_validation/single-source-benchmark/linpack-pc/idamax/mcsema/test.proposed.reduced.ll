; ModuleID = '/tmp/tmpomjn5zvv-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1ec__rip__type = type <{ [16 x i8] }>
%G_0x219__rip__type = type <{ [16 x i8] }>
%G_0x24d__rip__type = type <{ [16 x i8] }>
%G_0x28c__rip__type = type <{ [16 x i8] }>
%G_0x2b9__rip__type = type <{ [16 x i8] }>
%G_0x2f6__rip__type = type <{ [16 x i8] }>
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
@G_0x1ec__rip_ = global %G_0x1ec__rip__type zeroinitializer
@G_0x219__rip_ = global %G_0x219__rip__type zeroinitializer
@G_0x24d__rip_ = global %G_0x24d__rip__type zeroinitializer
@G_0x28c__rip_ = global %G_0x28c__rip__type zeroinitializer
@G_0x2b9__rip_ = global %G_0x2b9__rip__type zeroinitializer
@G_0x2f6__rip_ = global %G_0x2f6__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_8, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_9:  %var_2_9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %var_2_9, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_10, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_12:  %var_2_12 = inttoptr i64 %var_2_11 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_7, i64* %var_2_12, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_9, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_11, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_4 to i32*
; %EDI.i = bitcast %union.anon* %var_2_11 to i32*
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_10, -16
; %var_2_12 = add i64 %var_2_7, -16
; Matched:%var_2_15:  %var_2_15 = load i32, i32* %EDI, align 4
; %var_2_13 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_13, 6
; %var_2_14 = add i64 %var_2_10, 6
; Matched:\<badref\>:  store i64 %var_2_16, i64* %PC, align 8
; store i64 %var_2_14, i64* %var_2_3, align 8
; Matched:%var_2_17:  %var_2_17 = inttoptr i64 %var_2_14 to i32*
; %var_2_15 = inttoptr i64 %var_2_12 to i32*
; Matched:\<badref\>:  store i32 %var_2_15, i32* %var_2_17, align 4
; store i32 %var_2_13, i32* %var_2_15, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_18:  %var_2_18 = load i64, i64* %RBP, align 8
; %var_2_16 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_18, -16
; %var_2_17 = add i64 %var_2_16, -16
; Matched:%var_2_20:  %var_2_20 = load i64, i64* %RSI, align 8
; %var_2_18 = load i64, i64* %RSI.i, align 8
%var_2_19 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_216:  %var_2_216 = add i64 %var_2_215, 4
; %var_2_20 = add i64 %var_2_19, 4
; Matched:\<badref\>:  store i64 %var_2_216, i64* %PC, align 8
; store i64 %var_2_20, i64* %var_2_3, align 8
; Matched:%var_2_23:  %var_2_23 = inttoptr i64 %var_2_19 to i64*
; %var_2_21 = inttoptr i64 %var_2_17 to i64*
; Matched:\<badref\>:  store i64 %var_2_20, i64* %var_2_23, align 8
; store i64 %var_2_18, i64* %var_2_21, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX = bitcast %union.anon* %var_2_3 to i32*
; %EDX.i = bitcast %union.anon* %var_2_22 to i32*
; Matched:%var_2_24:  %var_2_24 = load i64, i64* %RBP, align 8
; %var_2_23 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_25:  %var_2_25 = add i64 %var_2_24, -20
; %var_2_24 = add i64 %var_2_23, -20
; Matched:%var_2_26:  %var_2_26 = load i32, i32* %EDX, align 4
; %var_2_25 = load i32, i32* %EDX.i, align 4
%var_2_26 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_720:  %var_2_720 = add i64 %var_2_719, 3
; %var_2_27 = add i64 %var_2_26, 3
; Matched:\<badref\>:  store i64 %var_2_28, i64* %PC, align 8
; store i64 %var_2_27, i64* %var_2_3, align 8
; Matched:%var_2_29:  %var_2_29 = inttoptr i64 %var_2_25 to i32*
; %var_2_28 = inttoptr i64 %var_2_24 to i32*
; Matched:\<badref\>:  store i32 %var_2_26, i32* %var_2_29, align 4
; store i32 %var_2_25, i32* %var_2_28, align 4
%var_2_29 = load i64, i64* %RBP.i, align 8
%var_2_30 = add i64 %var_2_29, -8
%var_2_31 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_22:  %var_2_22 = add i64 %var_2_21, 4
; %var_2_32 = add i64 %var_2_31, 4
; Matched:\<badref\>:  store i64 %var_2_22, i64* %PC, align 8
; store i64 %var_2_32, i64* %var_2_3, align 8
%var_2_33 = inttoptr i64 %var_2_30 to i32*
%var_2_34 = load i32, i32* %var_2_33, align 4
%var_2_35 = add i32 %var_2_34, -1
%var_2_36 = icmp eq i32 %var_2_34, 0
%var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:%var_2_40:  %var_2_40 = and i32 %var_2_36, 255
; %var_2_39 = and i32 %var_2_35, 255
; Matched:%var_2_649:  %var_2_649 = tail call i32 @llvm.ctpop.i32(i32 %var_2_648) #12
; %var_2_40 = tail call i32 @llvm.ctpop.i32(i32 %var_2_39)
; Matched:%var_2_42:  %var_2_42 = trunc i32 %var_2_41 to i8
; %var_2_41 = trunc i32 %var_2_40 to i8
; Matched:%var_2_43:  %var_2_43 = and i8 %var_2_42, 1
; %var_2_42 = and i8 %var_2_41, 1
; Matched:%var_2_652:  %var_2_652 = xor i8 %var_2_651, 1
; %var_2_43 = xor i8 %var_2_42, 1
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_652, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_43, i8* %var_2_44, align 1
; Matched:%var_2_46:  %var_2_46 = xor i32 %var_2_36, %var_2_35
; %var_2_45 = xor i32 %var_2_35, %var_2_34
; Matched:%var_2_47:  %var_2_47 = lshr i32 %var_2_46, 4
; %var_2_46 = lshr i32 %var_2_45, 4
; Matched:%var_2_48:  %var_2_48 = trunc i32 %var_2_47 to i8
; %var_2_47 = trunc i32 %var_2_46 to i8
; Matched:%var_2_656:  %var_2_656 = and i8 %var_2_655, 1
; %var_2_48 = and i8 %var_2_47, 1
%var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_656, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_48, i8* %var_2_49, align 1
; Matched:%var_2_657:  %var_2_657 = icmp eq i32 %var_2_645, 0
; %var_2_50 = icmp eq i32 %var_2_35, 0
; Matched:%var_2_658:  %var_2_658 = zext i1 %var_2_657 to i8
; %var_2_51 = zext i1 %var_2_50 to i8
%var_2_52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_658, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_51, i8* %var_2_52, align 1
%var_2_53 = lshr i32 %var_2_35, 31
%var_2_54 = trunc i32 %var_2_53 to i8
%var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_55, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_54, i8* %var_2_55, align 1
%var_2_56 = lshr i32 %var_2_34, 31
%var_2_57 = xor i32 %var_2_53, %var_2_56
%var_2_58 = add nuw nsw i32 %var_2_57, %var_2_56
%var_2_59 = icmp eq i32 %var_2_58, 2
; Matched:%var_2_665:  %var_2_665 = zext i1 %var_2_664 to i8
; %var_2_60 = zext i1 %var_2_59 to i8
%var_2_61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_665, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_60, i8* %var_2_61, align 1
%var_2_62 = icmp ne i8 %var_2_54, 0
%var_2_63 = xor i1 %var_2_62, %var_2_59
; Matched:  %.v = select i1 %var_2_64, i64 10, i64 22
; %.v = select i1 %var_2_63, i64 10, i64 22
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_32, %.v
; %var_2_64 = add i64 %var_2_31, %.v
; Matched:\<badref\>:  store i64 %var_2_65, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_64, i64* %var_2_3, align 8
br i1 %var_2_63, label %block_402b68, label %block_.L_402b74

block_402b68:                                     ; preds = %entry
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_30, -4
; %var_2_65 = add i64 %var_2_29, -4
; Matched:%var_2_601:  %var_2_601 = add i64 %var_2_65, 7
; %var_2_66 = add i64 %var_2_64, 7
; Matched:\<badref\>:  store i64 %var_2_601, i64* %PC, align 8
; store i64 %var_2_66, i64* %var_2_3, align 8
; Matched:%var_2_326:  %var_2_326 = inttoptr i64 %var_2_324 to i32*
; %var_2_67 = inttoptr i64 %var_2_65 to i32*
; Matched:\<badref\>:  store i32 -1, i32* %var_2_602, align 4
; store i32 -1, i32* %var_2_67, align 4
; Matched:%var_2_603:  %var_2_603 = load i64, i64* %PC, align 8
; %var_2_68 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_604:  %var_2_604 = add i64 %var_2_603, 368
; %var_2_69 = add i64 %var_2_68, 368
; Matched:\<badref\>:  store i64 %var_2_604, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_69, i64* %var_2_3, align 8
  br label %block_.L_402cdf

block_.L_402b74:                                  ; preds = %entry
; Matched:%var_2_643:  %var_2_643 = add i64 %var_2_65, 4
; %var_2_70 = add i64 %var_2_64, 4
; Matched:\<badref\>:  store i64 %var_2_643, i64* %PC, align 8
; store i64 %var_2_70, i64* %var_2_3, align 8
%var_2_71 = load i32, i32* %var_2_33, align 4
%var_2_72 = add i32 %var_2_71, -1
%var_2_73 = icmp eq i32 %var_2_71, 0
%var_2_74 = zext i1 %var_2_73 to i8
store i8 %var_2_74, i8* %var_2_38, align 1
; Matched:%var_2_648:  %var_2_648 = and i32 %var_2_645, 255
; %var_2_75 = and i32 %var_2_72, 255
; Matched:%var_2_41:  %var_2_41 = tail call i32 @llvm.ctpop.i32(i32 %var_2_40) #12
; %var_2_76 = tail call i32 @llvm.ctpop.i32(i32 %var_2_75)
; Matched:%var_2_650:  %var_2_650 = trunc i32 %var_2_649 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:%var_2_651:  %var_2_651 = and i8 %var_2_650, 1
; %var_2_78 = and i8 %var_2_77, 1
; Matched:%var_2_44:  %var_2_44 = xor i8 %var_2_43, 1
; %var_2_79 = xor i8 %var_2_78, 1
; Matched:\<badref\>:  store i8 %var_2_44, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_79, i8* %var_2_44, align 1
; Matched:%var_2_653:  %var_2_653 = xor i32 %var_2_645, %var_2_644
; %var_2_80 = xor i32 %var_2_72, %var_2_71
; Matched:%var_2_654:  %var_2_654 = lshr i32 %var_2_653, 4
; %var_2_81 = lshr i32 %var_2_80, 4
; Matched:%var_2_655:  %var_2_655 = trunc i32 %var_2_654 to i8
; %var_2_82 = trunc i32 %var_2_81 to i8
; Matched:%var_2_49:  %var_2_49 = and i8 %var_2_48, 1
; %var_2_83 = and i8 %var_2_82, 1
; Matched:\<badref\>:  store i8 %var_2_49, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_83, i8* %var_2_49, align 1
%var_2_84 = icmp eq i32 %var_2_72, 0
; Matched:%var_2_52:  %var_2_52 = zext i1 %var_2_51 to i8
; %var_2_85 = zext i1 %var_2_84 to i8
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_85, i8* %var_2_52, align 1
; Matched:%var_2_54:  %var_2_54 = lshr i32 %var_2_36, 31
; %var_2_86 = lshr i32 %var_2_72, 31
; Matched:%var_2_55:  %var_2_55 = trunc i32 %var_2_54 to i8
; %var_2_87 = trunc i32 %var_2_86 to i8
; Matched:\<badref\>:  store i8 %var_2_660, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_87, i8* %var_2_55, align 1
; Matched:%var_2_57:  %var_2_57 = lshr i32 %var_2_35, 31
; %var_2_88 = lshr i32 %var_2_71, 31
; Matched:%var_2_662:  %var_2_662 = xor i32 %var_2_659, %var_2_661
; %var_2_89 = xor i32 %var_2_86, %var_2_88
; Matched:%var_2_59:  %var_2_59 = add nuw nsw i32 %var_2_58, %var_2_57
; %var_2_90 = add nuw nsw i32 %var_2_89, %var_2_88
; Matched:%var_2_60:  %var_2_60 = icmp eq i32 %var_2_59, 2
; %var_2_91 = icmp eq i32 %var_2_90, 2
; Matched:%var_2_61:  %var_2_61 = zext i1 %var_2_60 to i8
; %var_2_92 = zext i1 %var_2_91 to i8
; Matched:\<badref\>:  store i8 %var_2_61, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_92, i8* %var_2_61, align 1
; Matched:  %.v27 = select i1 %var_2_657, i64 10, i64 22
; %.v22 = select i1 %var_2_84, i64 10, i64 22
; Matched:%var_2_666:  %var_2_666 = add i64 %var_2_65, %.v27
; %var_2_93 = add i64 %var_2_64, %.v22
; Matched:\<badref\>:  store i64 %var_2_666, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_93, i64* %var_2_3, align 8
br i1 %var_2_84, label %block_402b7e, label %block_.L_402b8a

block_402b7e:                                     ; preds = %block_.L_402b74
; Matched:%var_2_600:  %var_2_600 = add i64 %var_2_30, -4
; %var_2_94 = add i64 %var_2_29, -4
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_666, 7
; %var_2_95 = add i64 %var_2_93, 7
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8
; store i64 %var_2_95, i64* %var_2_3, align 8
; Matched:%var_2_602:  %var_2_602 = inttoptr i64 %var_2_600 to i32*
; %var_2_96 = inttoptr i64 %var_2_94 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_326, align 4
; store i32 0, i32* %var_2_96, align 4
; Matched:%var_2_327:  %var_2_327 = load i64, i64* %PC, align 8
; %var_2_97 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_327, 346
; %var_2_98 = add i64 %var_2_97, 346
; Matched:\<badref\>:  store i64 %var_2_328, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_98, i64* %var_2_3, align 8
  br label %block_.L_402cdf

block_.L_402b8a:                                  ; preds = %block_.L_402b74
%var_2_99 = add i64 %var_2_29, -20
; Matched:%var_2_543:  %var_2_543 = add i64 %var_2_666, 4
; %var_2_100 = add i64 %var_2_93, 4
; Matched:\<badref\>:  store i64 %var_2_543, i64* %PC, align 8
; store i64 %var_2_100, i64* %var_2_3, align 8
%var_2_101 = inttoptr i64 %var_2_99 to i32*
%var_2_102 = load i32, i32* %var_2_101, align 4
%var_2_103 = add i32 %var_2_102, -1
; Matched:%var_2_547:  %var_2_547 = icmp eq i32 %var_2_545, 0
; %var_2_104 = icmp eq i32 %var_2_102, 0
; Matched:%var_2_548:  %var_2_548 = zext i1 %var_2_547 to i8
; %var_2_105 = zext i1 %var_2_104 to i8
; Matched:\<badref\>:  store i8 %var_2_548, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_105, i8* %var_2_38, align 1
; Matched:%var_2_549:  %var_2_549 = and i32 %var_2_546, 255
; %var_2_106 = and i32 %var_2_103, 255
; Matched:%var_2_550:  %var_2_550 = tail call i32 @llvm.ctpop.i32(i32 %var_2_549) #12
; %var_2_107 = tail call i32 @llvm.ctpop.i32(i32 %var_2_106)
; Matched:%var_2_551:  %var_2_551 = trunc i32 %var_2_550 to i8
; %var_2_108 = trunc i32 %var_2_107 to i8
; Matched:%var_2_552:  %var_2_552 = and i8 %var_2_551, 1
; %var_2_109 = and i8 %var_2_108, 1
; Matched:%var_2_553:  %var_2_553 = xor i8 %var_2_552, 1
; %var_2_110 = xor i8 %var_2_109, 1
; Matched:\<badref\>:  store i8 %var_2_553, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_110, i8* %var_2_44, align 1
; Matched:%var_2_554:  %var_2_554 = xor i32 %var_2_546, %var_2_545
; %var_2_111 = xor i32 %var_2_103, %var_2_102
; Matched:%var_2_555:  %var_2_555 = lshr i32 %var_2_554, 4
; %var_2_112 = lshr i32 %var_2_111, 4
; Matched:%var_2_556:  %var_2_556 = trunc i32 %var_2_555 to i8
; %var_2_113 = trunc i32 %var_2_112 to i8
; Matched:%var_2_557:  %var_2_557 = and i8 %var_2_556, 1
; %var_2_114 = and i8 %var_2_113, 1
; Matched:\<badref\>:  store i8 %var_2_557, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_114, i8* %var_2_49, align 1
%var_2_115 = icmp eq i32 %var_2_103, 0
; Matched:%var_2_559:  %var_2_559 = zext i1 %var_2_558 to i8
; %var_2_116 = zext i1 %var_2_115 to i8
; Matched:\<badref\>:  store i8 %var_2_559, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_116, i8* %var_2_52, align 1
; Matched:%var_2_560:  %var_2_560 = lshr i32 %var_2_546, 31
; %var_2_117 = lshr i32 %var_2_103, 31
; Matched:%var_2_561:  %var_2_561 = trunc i32 %var_2_560 to i8
; %var_2_118 = trunc i32 %var_2_117 to i8
; Matched:\<badref\>:  store i8 %var_2_561, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_118, i8* %var_2_55, align 1
; Matched:%var_2_562:  %var_2_562 = lshr i32 %var_2_545, 31
; %var_2_119 = lshr i32 %var_2_102, 31
; Matched:%var_2_563:  %var_2_563 = xor i32 %var_2_560, %var_2_562
; %var_2_120 = xor i32 %var_2_117, %var_2_119
; Matched:%var_2_564:  %var_2_564 = add nuw nsw i32 %var_2_563, %var_2_562
; %var_2_121 = add nuw nsw i32 %var_2_120, %var_2_119
; Matched:%var_2_565:  %var_2_565 = icmp eq i32 %var_2_564, 2
; %var_2_122 = icmp eq i32 %var_2_121, 2
; Matched:%var_2_566:  %var_2_566 = zext i1 %var_2_565 to i8
; %var_2_123 = zext i1 %var_2_122 to i8
; Matched:\<badref\>:  store i8 %var_2_566, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_123, i8* %var_2_61, align 1
; Matched:  %.v28 = select i1 %var_2_558, i64 179, i64 10
; %.v23 = select i1 %var_2_115, i64 179, i64 10
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_666, %.v28
; %var_2_124 = add i64 %var_2_93, %.v23
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_124, i64* %var_2_3, align 8
br i1 %var_2_115, label %block_.L_402c3d, label %block_402b94

block_402b94:                                     ; preds = %block_.L_402b8a
%var_2_125 = add i64 %var_2_29, -32
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_567, 7
; %var_2_126 = add i64 %var_2_124, 7
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
%var_2_127 = inttoptr i64 %var_2_125 to i32*
store i32 1, i32* %var_2_127, align 4
  %RAX.i198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_128 = load i64, i64* %RBP.i, align 8
%var_2_129 = add i64 %var_2_128, -16
%var_2_130 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_334, 4
; %var_2_131 = add i64 %var_2_130, 4
; Matched:\<badref\>:  store i64 %var_2_335, i64* %PC, align 8
; store i64 %var_2_131, i64* %var_2_3, align 8
%var_2_132 = inttoptr i64 %var_2_129 to i64*
%var_2_133 = load i64, i64* %var_2_132, align 8
; Matched:\<badref\>:  store i64 %var_2_69, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_133, i64* %RAX.i198, align 8
%var_2_134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_135 = bitcast [32 x %union.VectorReg]* %var_2_134 to i8*
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_334, 8
; %var_2_136 = add i64 %var_2_130, 8
; Matched:\<badref\>:  store i64 %var_2_339, i64* %PC, align 8
; store i64 %var_2_136, i64* %var_2_3, align 8
%var_2_137 = inttoptr i64 %var_2_133 to float*
%var_2_138 = load float, float* %var_2_137, align 4
%var_2_139 = fpext float %var_2_138 to double
%var_2_140 = bitcast [32 x %union.VectorReg]* %var_2_134 to double*
store double %var_2_139, double* %var_2_140, align 1
%var_2_141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_142 = bitcast %union.VectorReg* %var_2_141 to i8*
%var_2_143 = add i64 %var_2_130, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 8)
%var_2_144 = add i64 %var_2_130, 15
store i64 %var_2_144, i64* %var_2_3, align 8
%var_2_145 = inttoptr i64 %var_2_143 to i32*
%var_2_146 = load i32, i32* %var_2_145, align 4
%var_2_147 = add i64 %var_2_130, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 12)
%var_2_148 = inttoptr i64 %var_2_147 to i32*
%var_2_149 = load i32, i32* %var_2_148, align 4
%var_2_150 = add i64 %var_2_130, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 16)
%var_2_151 = inttoptr i64 %var_2_150 to i32*
%var_2_152 = load i32, i32* %var_2_151, align 4
%var_2_153 = add i64 %var_2_130, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 20)
%var_2_154 = inttoptr i64 %var_2_153 to i32*
%var_2_155 = load i32, i32* %var_2_154, align 4
%var_2_156 = bitcast %union.VectorReg* %var_2_141 to i32*
store i32 %var_2_146, i32* %var_2_156, align 1
%var_2_157 = getelementptr inbounds i8, i8* %var_2_142, i64 4
%var_2_158 = bitcast i8* %var_2_157 to i32*
store i32 %var_2_149, i32* %var_2_158, align 1
%var_2_159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_160 = bitcast i64* %var_2_159 to i32*
store i32 %var_2_152, i32* %var_2_160, align 1
%var_2_161 = getelementptr inbounds i8, i8* %var_2_142, i64 12
%var_2_162 = bitcast i8* %var_2_161 to i32*
store i32 %var_2_155, i32* %var_2_162, align 1
; Matched:%var_2_356:  %var_2_356 = bitcast double %var_2_342 to i64
; %var_2_163 = bitcast double %var_2_139 to i64
; Matched:%var_2_357:  %var_2_357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_426:  %var_2_426 = load i64, i64* %var_2_425, align 1
; %var_2_165 = load i64, i64* %var_2_164, align 1
%var_2_166 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_141, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_428:  %var_2_428 = load i64, i64* %var_2_427, align 1
; %var_2_167 = load i64, i64* %var_2_166, align 1
; Matched:%var_2_277:  %var_2_277 = load i64, i64* %var_2_352, align 1
; %var_2_168 = load i64, i64* %var_2_159, align 1
; Matched:%var_2_430:  %var_2_430 = and i64 %var_2_428, %var_2_424
; %var_2_169 = and i64 %var_2_167, %var_2_163
; Matched:%var_2_431:  %var_2_431 = and i64 %var_2_429, %var_2_426
; %var_2_170 = and i64 %var_2_168, %var_2_165
; Matched:%var_2_364:  %var_2_364 = trunc i64 %var_2_362 to i32
; %var_2_171 = trunc i64 %var_2_169 to i32
; Matched:%var_2_365:  %var_2_365 = lshr i64 %var_2_362, 32
; %var_2_172 = lshr i64 %var_2_169, 32
; Matched:%var_2_434:  %var_2_434 = trunc i64 %var_2_433 to i32
; %var_2_173 = trunc i64 %var_2_172 to i32
%var_2_174 = bitcast [32 x %union.VectorReg]* %var_2_134 to i32*
; Matched:\<badref\>:  store i32 %var_2_432, i32* %var_2_435, align 1, !tbaa !1286
; store i32 %var_2_171, i32* %var_2_174, align 1
%var_2_175 = getelementptr inbounds i8, i8* %var_2_135, i64 4
%var_2_176 = bitcast i8* %var_2_175 to i32*
; Matched:\<badref\>:  store i32 %var_2_434, i32* %var_2_437, align 1, !tbaa !1286
; store i32 %var_2_173, i32* %var_2_176, align 1
; Matched:%var_2_174:  %var_2_174 = trunc i64 %var_2_170 to i32
; %var_2_177 = trunc i64 %var_2_170 to i32
; Matched:%var_2_371:  %var_2_371 = bitcast i64* %var_2_357 to i32*
; %var_2_178 = bitcast i64* %var_2_164 to i32*
; Matched:\<badref\>:  store i32 %var_2_370, i32* %var_2_371, align 1, !tbaa !1286
; store i32 %var_2_177, i32* %var_2_178, align 1
; Matched:%var_2_372:  %var_2_372 = lshr i64 %var_2_363, 32
; %var_2_179 = lshr i64 %var_2_170, 32
; Matched:%var_2_373:  %var_2_373 = trunc i64 %var_2_372 to i32
; %var_2_180 = trunc i64 %var_2_179 to i32
; Matched:%var_2_442:  %var_2_442 = getelementptr inbounds i8, i8* %var_2_406, i64 12
; %var_2_181 = getelementptr inbounds i8, i8* %var_2_135, i64 12
; Matched:%var_2_443:  %var_2_443 = bitcast i8* %var_2_442 to i32*
; %var_2_182 = bitcast i8* %var_2_181 to i32*
; Matched:\<badref\>:  store i32 %var_2_373, i32* %var_2_375, align 1, !tbaa !1286
; store i32 %var_2_180, i32* %var_2_182, align 1
%var_2_183 = bitcast [32 x %union.VectorReg]* %var_2_134 to <2 x i32>*
%var_2_184 = load <2 x i32>, <2 x i32>* %var_2_183, align 1
%var_2_185 = bitcast i64* %var_2_164 to <2 x i32>*
%var_2_186 = load <2 x i32>, <2 x i32>* %var_2_185, align 1
%.cast = bitcast <2 x i32> %var_2_184 to double
; Matched:%var_2_248:  %var_2_248 = fptrunc double %.cast14 to float
; %var_2_187 = fptrunc double %.cast to float
; Matched:%var_2_449:  %var_2_449 = bitcast [32 x %union.VectorReg]* %var_2_5 to float*
; %var_2_188 = bitcast [32 x %union.VectorReg]* %var_2_134 to float*
; Matched:\<badref\>:  store float %var_2_448, float* %var_2_449, align 1, !tbaa !1284
; store float %var_2_187, float* %var_2_188, align 1
%var_2_189 = extractelement <2 x i32> %var_2_184, i32 1
; Matched:\<badref\>:  store i32 %var_2_382, i32* %var_2_369, align 1, !tbaa !1284
; store i32 %var_2_189, i32* %var_2_176, align 1
%var_2_190 = extractelement <2 x i32> %var_2_186, i32 0
; Matched:\<badref\>:  store i32 %var_2_383, i32* %var_2_371, align 1, !tbaa !1284
; store i32 %var_2_190, i32* %var_2_178, align 1
%var_2_191 = extractelement <2 x i32> %var_2_186, i32 1
; Matched:\<badref\>:  store i32 %var_2_452, i32* %var_2_443, align 1, !tbaa !1284
; store i32 %var_2_191, i32* %var_2_182, align 1
; Matched:%var_2_453:  %var_2_453 = add i64 %var_2_400, -24
; %var_2_192 = add i64 %var_2_128, -24
; Matched:%var_2_454:  %var_2_454 = add i64 %var_2_402, 28
; %var_2_193 = add i64 %var_2_130, 28
; Matched:\<badref\>:  store i64 %var_2_386, i64* %PC, align 8
; store i64 %var_2_193, i64* %var_2_3, align 8
%var_2_194 = bitcast [32 x %union.VectorReg]* %var_2_134 to <2 x float>*
%var_2_195 = load <2 x float>, <2 x float>* %var_2_194, align 1
%var_2_196 = extractelement <2 x float> %var_2_195, i32 0
; Matched:%var_2_458:  %var_2_458 = inttoptr i64 %var_2_453 to float*
; %var_2_197 = inttoptr i64 %var_2_192 to float*
; Matched:\<badref\>:  store float %var_2_457, float* %var_2_458, align 4
; store float %var_2_196, float* %var_2_197, align 4
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_459:  %var_2_459 = load i64, i64* %RBP, align 8
; %var_2_198 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_680:  %var_2_680 = add i64 %var_2_679, -32
; %var_2_199 = add i64 %var_2_198, -32
%var_2_200 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_28:  %var_2_28 = add i64 %var_2_27, 3
; %var_2_201 = add i64 %var_2_200, 3
; Matched:\<badref\>:  store i64 %var_2_462, i64* %PC, align 8
; store i64 %var_2_201, i64* %var_2_3, align 8
; Matched:%var_2_463:  %var_2_463 = inttoptr i64 %var_2_460 to i32*
; %var_2_202 = inttoptr i64 %var_2_199 to i32*
; Matched:%var_2_683:  %var_2_683 = load i32, i32* %var_2_682, align 4
; %var_2_203 = load i32, i32* %var_2_202, align 4
; Matched:%var_2_465:  %var_2_465 = zext i32 %var_2_464 to i64
; %var_2_204 = zext i32 %var_2_203 to i64
; Matched:\<badref\>:  store i64 %var_2_465, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_204, i64* %RCX.i181, align 8
; Matched:%var_2_685:  %var_2_685 = add i64 %var_2_679, -20
; %var_2_205 = add i64 %var_2_198, -20
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_461, 6
; %var_2_206 = add i64 %var_2_200, 6
; Matched:\<badref\>:  store i64 %var_2_467, i64* %PC, align 8
; store i64 %var_2_206, i64* %var_2_3, align 8
; Matched:%var_2_687:  %var_2_687 = inttoptr i64 %var_2_685 to i32*
; %var_2_207 = inttoptr i64 %var_2_205 to i32*
; Matched:%var_2_469:  %var_2_469 = load i32, i32* %var_2_468, align 4
; %var_2_208 = load i32, i32* %var_2_207, align 4
; Matched:%var_2_689:  %var_2_689 = add i32 %var_2_688, %var_2_683
; %var_2_209 = add i32 %var_2_208, %var_2_203
; Matched:%var_2_471:  %var_2_471 = zext i32 %var_2_470 to i64
; %var_2_210 = zext i32 %var_2_209 to i64
; Matched:\<badref\>:  store i64 %var_2_471, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_210, i64* %RCX.i181, align 8
; Matched:%var_2_691:  %var_2_691 = icmp ult i32 %var_2_689, %var_2_683
; %var_2_211 = icmp ult i32 %var_2_209, %var_2_203
; Matched:%var_2_473:  %var_2_473 = icmp ult i32 %var_2_470, %var_2_469
; %var_2_212 = icmp ult i32 %var_2_209, %var_2_208
; Matched:%var_2_693:  %var_2_693 = or i1 %var_2_691, %var_2_692
; %var_2_213 = or i1 %var_2_211, %var_2_212
; Matched:%var_2_694:  %var_2_694 = zext i1 %var_2_693 to i8
; %var_2_214 = zext i1 %var_2_213 to i8
; Matched:\<badref\>:  store i8 %var_2_475, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_214, i8* %var_2_38, align 1
; Matched:%var_2_695:  %var_2_695 = and i32 %var_2_689, 255
; %var_2_215 = and i32 %var_2_209, 255
; Matched:%var_2_696:  %var_2_696 = tail call i32 @llvm.ctpop.i32(i32 %var_2_695) #12
; %var_2_216 = tail call i32 @llvm.ctpop.i32(i32 %var_2_215)
; Matched:%var_2_697:  %var_2_697 = trunc i32 %var_2_696 to i8
; %var_2_217 = trunc i32 %var_2_216 to i8
; Matched:%var_2_698:  %var_2_698 = and i8 %var_2_697, 1
; %var_2_218 = and i8 %var_2_217, 1
; Matched:%var_2_699:  %var_2_699 = xor i8 %var_2_698, 1
; %var_2_219 = xor i8 %var_2_218, 1
; Matched:\<badref\>:  store i8 %var_2_699, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_219, i8* %var_2_44, align 1
; Matched:%var_2_700:  %var_2_700 = xor i32 %var_2_688, %var_2_683
; %var_2_220 = xor i32 %var_2_208, %var_2_203
; Matched:%var_2_701:  %var_2_701 = xor i32 %var_2_700, %var_2_689
; %var_2_221 = xor i32 %var_2_220, %var_2_209
; Matched:%var_2_702:  %var_2_702 = lshr i32 %var_2_701, 4
; %var_2_222 = lshr i32 %var_2_221, 4
; Matched:%var_2_703:  %var_2_703 = trunc i32 %var_2_702 to i8
; %var_2_223 = trunc i32 %var_2_222 to i8
; Matched:%var_2_704:  %var_2_704 = and i8 %var_2_703, 1
; %var_2_224 = and i8 %var_2_223, 1
; Matched:\<badref\>:  store i8 %var_2_704, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_224, i8* %var_2_49, align 1
; Matched:%var_2_705:  %var_2_705 = icmp eq i32 %var_2_689, 0
; %var_2_225 = icmp eq i32 %var_2_209, 0
; Matched:%var_2_706:  %var_2_706 = zext i1 %var_2_705 to i8
; %var_2_226 = zext i1 %var_2_225 to i8
; Matched:\<badref\>:  store i8 %var_2_706, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_226, i8* %var_2_52, align 1
; Matched:%var_2_707:  %var_2_707 = lshr i32 %var_2_689, 31
; %var_2_227 = lshr i32 %var_2_209, 31
; Matched:%var_2_708:  %var_2_708 = trunc i32 %var_2_707 to i8
; %var_2_228 = trunc i32 %var_2_227 to i8
; Matched:\<badref\>:  store i8 %var_2_708, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_228, i8* %var_2_55, align 1
; Matched:%var_2_709:  %var_2_709 = lshr i32 %var_2_683, 31
; %var_2_229 = lshr i32 %var_2_203, 31
; Matched:%var_2_710:  %var_2_710 = lshr i32 %var_2_688, 31
; %var_2_230 = lshr i32 %var_2_208, 31
; Matched:%var_2_711:  %var_2_711 = xor i32 %var_2_707, %var_2_709
; %var_2_231 = xor i32 %var_2_227, %var_2_229
; Matched:%var_2_712:  %var_2_712 = xor i32 %var_2_707, %var_2_710
; %var_2_232 = xor i32 %var_2_227, %var_2_230
; Matched:%var_2_713:  %var_2_713 = add nuw nsw i32 %var_2_711, %var_2_712
; %var_2_233 = add nuw nsw i32 %var_2_231, %var_2_232
; Matched:%var_2_714:  %var_2_714 = icmp eq i32 %var_2_713, 2
; %var_2_234 = icmp eq i32 %var_2_233, 2
; Matched:%var_2_715:  %var_2_715 = zext i1 %var_2_714 to i8
; %var_2_235 = zext i1 %var_2_234 to i8
; Matched:\<badref\>:  store i8 %var_2_715, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_235, i8* %var_2_61, align 1
; Matched:%var_2_746:  %var_2_746 = add i64 %var_2_719, 9
; %var_2_236 = add i64 %var_2_200, 9
; Matched:\<badref\>:  store i64 %var_2_746, i64* %PC, align 8
; store i64 %var_2_236, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_689, i32* %var_2_682, align 4
; store i32 %var_2_209, i32* %var_2_202, align 4
%var_2_237 = load i64, i64* %RBP.i, align 8
%var_2_238 = add i64 %var_2_237, -28
; Matched:%var_2_393:  %var_2_393 = load i64, i64* %PC, align 8
; %var_2_239 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_393, 7
; %var_2_240 = add i64 %var_2_239, 7
; Matched:\<badref\>:  store i64 %var_2_394, i64* %PC, align 8
; store i64 %var_2_240, i64* %var_2_3, align 8
%var_2_241 = inttoptr i64 %var_2_238 to i32*
store i32 1, i32* %var_2_241, align 4
; Matched:%var_2_396:  %var_2_396 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_242 = bitcast %union.VectorReg* %var_2_141 to double*
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RDX.i130 = getelementptr inbounds %union.anon, %union.anon* %var_2_22, i64 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_402bc7

block_.L_402bc7:                                  ; preds = %block_.L_402c21, %block_402b94
%var_2_243 = phi i64 [ %.pre, %block_402b94 ], [ %var_2_491, %block_.L_402c21 ]
%MEMORY.0 = phi %struct.Memory* [ %2, %block_402b94 ], [ %var_2_355, %block_.L_402c21 ]
%var_2_244 = load i64, i64* %RBP.i, align 8
%var_2_245 = add i64 %var_2_244, -28
; Matched:%var_2_608:  %var_2_608 = add i64 %var_2_605, 3
; %var_2_246 = add i64 %var_2_243, 3
; Matched:\<badref\>:  store i64 %var_2_608, i64* %PC, align 8
; store i64 %var_2_246, i64* %var_2_3, align 8
%var_2_247 = inttoptr i64 %var_2_245 to i32*
%var_2_248 = load i32, i32* %var_2_247, align 4
; Matched:%var_2_611:  %var_2_611 = zext i32 %var_2_610 to i64
; %var_2_249 = zext i32 %var_2_248 to i64
; Matched:\<badref\>:  store i64 %var_2_611, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_249, i64* %RAX.i198, align 8
%var_2_250 = add i64 %var_2_244, -8
; Matched:%var_2_613:  %var_2_613 = add i64 %var_2_605, 6
; %var_2_251 = add i64 %var_2_243, 6
; Matched:\<badref\>:  store i64 %var_2_613, i64* %PC, align 8
; store i64 %var_2_251, i64* %var_2_3, align 8
%var_2_252 = inttoptr i64 %var_2_250 to i32*
%var_2_253 = load i32, i32* %var_2_252, align 4
%var_2_254 = sub i32 %var_2_248, %var_2_253
%var_2_255 = icmp ult i32 %var_2_248, %var_2_253
%var_2_256 = zext i1 %var_2_255 to i8
; Matched:\<badref\>:  store i8 %var_2_618, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_256, i8* %var_2_38, align 1
; Matched:%var_2_619:  %var_2_619 = and i32 %var_2_616, 255
; %var_2_257 = and i32 %var_2_254, 255
; Matched:%var_2_519:  %var_2_519 = tail call i32 @llvm.ctpop.i32(i32 %var_2_518) #12
; %var_2_258 = tail call i32 @llvm.ctpop.i32(i32 %var_2_257)
; Matched:%var_2_520:  %var_2_520 = trunc i32 %var_2_519 to i8
; %var_2_259 = trunc i32 %var_2_258 to i8
; Matched:%var_2_521:  %var_2_521 = and i8 %var_2_520, 1
; %var_2_260 = and i8 %var_2_259, 1
; Matched:%var_2_623:  %var_2_623 = xor i8 %var_2_622, 1
; %var_2_261 = xor i8 %var_2_260, 1
; Matched:\<badref\>:  store i8 %var_2_623, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_261, i8* %var_2_44, align 1
; Matched:%var_2_624:  %var_2_624 = xor i32 %var_2_615, %var_2_610
; %var_2_262 = xor i32 %var_2_253, %var_2_248
; Matched:%var_2_625:  %var_2_625 = xor i32 %var_2_624, %var_2_616
; %var_2_263 = xor i32 %var_2_262, %var_2_254
; Matched:%var_2_626:  %var_2_626 = lshr i32 %var_2_625, 4
; %var_2_264 = lshr i32 %var_2_263, 4
; Matched:%var_2_526:  %var_2_526 = trunc i32 %var_2_525 to i8
; %var_2_265 = trunc i32 %var_2_264 to i8
; Matched:%var_2_527:  %var_2_527 = and i8 %var_2_526, 1
; %var_2_266 = and i8 %var_2_265, 1
; Matched:\<badref\>:  store i8 %var_2_527, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_266, i8* %var_2_49, align 1
%var_2_267 = icmp eq i32 %var_2_254, 0
%var_2_268 = zext i1 %var_2_267 to i8
; Matched:\<badref\>:  store i8 %var_2_630, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_268, i8* %var_2_52, align 1
%var_2_269 = lshr i32 %var_2_254, 31
%var_2_270 = trunc i32 %var_2_269 to i8
; Matched:\<badref\>:  store i8 %var_2_531, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_270, i8* %var_2_55, align 1
%var_2_271 = lshr i32 %var_2_248, 31
%var_2_272 = lshr i32 %var_2_253, 31
%var_2_273 = xor i32 %var_2_272, %var_2_271
%var_2_274 = xor i32 %var_2_269, %var_2_271
%var_2_275 = add nuw nsw i32 %var_2_274, %var_2_273
%var_2_276 = icmp eq i32 %var_2_275, 2
; Matched:%var_2_639:  %var_2_639 = zext i1 %var_2_638 to i8
; %var_2_277 = zext i1 %var_2_276 to i8
; Matched:\<badref\>:  store i8 %var_2_538, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_277, i8* %var_2_61, align 1
%var_2_278 = icmp ne i8 %var_2_270, 0
%var_2_279 = xor i1 %var_2_278, %var_2_276
%.v24 = select i1 %var_2_279, i64 12, i64 113
%var_2_280 = add i64 %var_2_243, %.v24
; Matched:\<badref\>:  store i64 %var_2_642, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_280, i64* %var_2_3, align 8
br i1 %var_2_279, label %block_402bd3, label %block_.L_402c38

block_402bd3:                                     ; preds = %block_.L_402bc7
%var_2_281 = add i64 %var_2_244, -16
; Matched:%var_2_67:  %var_2_67 = add i64 %var_2_642, 4
; %var_2_282 = add i64 %var_2_280, 4
; Matched:\<badref\>:  store i64 %var_2_67, i64* %PC, align 8
; store i64 %var_2_282, i64* %var_2_3, align 8
%var_2_283 = inttoptr i64 %var_2_281 to i64*
%var_2_284 = load i64, i64* %var_2_283, align 8
; Matched:\<badref\>:  store i64 %var_2_405, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_284, i64* %RAX.i198, align 8
%var_2_285 = add i64 %var_2_244, -32
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_642, 8
; %var_2_286 = add i64 %var_2_280, 8
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
%var_2_287 = inttoptr i64 %var_2_285 to i32*
%var_2_288 = load i32, i32* %var_2_287, align 4
%var_2_289 = sext i32 %var_2_288 to i64
; Matched:\<badref\>:  store i64 %var_2_74, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_289, i64* %RCX.i181, align 8
%var_2_290 = shl nsw i64 %var_2_289, 2
%var_2_291 = add i64 %var_2_290, %var_2_284
; Matched:%var_2_77:  %var_2_77 = add i64 %var_2_642, 13
; %var_2_292 = add i64 %var_2_280, 13
; Matched:\<badref\>:  store i64 %var_2_77, i64* %PC, align 8
; store i64 %var_2_292, i64* %var_2_3, align 8
%var_2_293 = inttoptr i64 %var_2_291 to float*
%var_2_294 = load float, float* %var_2_293, align 4
%var_2_295 = fpext float %var_2_294 to double
store double %var_2_295, double* %var_2_140, align 1
%var_2_296 = add i64 %var_2_280, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 13)
%var_2_297 = add i64 %var_2_280, 20
store i64 %var_2_297, i64* %var_2_3, align 8
%var_2_298 = inttoptr i64 %var_2_296 to i32*
%var_2_299 = load i32, i32* %var_2_298, align 4
%var_2_300 = add i64 %var_2_280, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 17)
%var_2_301 = inttoptr i64 %var_2_300 to i32*
%var_2_302 = load i32, i32* %var_2_301, align 4
%var_2_303 = add i64 %var_2_280, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 21)
%var_2_304 = inttoptr i64 %var_2_303 to i32*
%var_2_305 = load i32, i32* %var_2_304, align 4
%var_2_306 = add i64 %var_2_280, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 25)
%var_2_307 = inttoptr i64 %var_2_306 to i32*
%var_2_308 = load i32, i32* %var_2_307, align 4
store i32 %var_2_299, i32* %var_2_156, align 1
store i32 %var_2_302, i32* %var_2_158, align 1
store i32 %var_2_305, i32* %var_2_160, align 1
store i32 %var_2_308, i32* %var_2_162, align 1
; Matched:%var_2_85:  %var_2_85 = bitcast double %var_2_80 to i64
; %var_2_309 = bitcast double %var_2_295 to i64
; Matched:%var_2_235:  %var_2_235 = load i64, i64* %var_2_357, align 1
; %var_2_310 = load i64, i64* %var_2_164, align 1
; Matched:%var_2_87:  %var_2_87 = load i64, i64* %var_2_427, align 1
; %var_2_311 = load i64, i64* %var_2_166, align 1
; Matched:%var_2_237:  %var_2_237 = load i64, i64* %var_2_352, align 1
; %var_2_312 = load i64, i64* %var_2_159, align 1
; Matched:%var_2_89:  %var_2_89 = and i64 %var_2_87, %var_2_85
; %var_2_313 = and i64 %var_2_311, %var_2_309
; Matched:%var_2_363:  %var_2_363 = and i64 %var_2_361, %var_2_358
; %var_2_314 = and i64 %var_2_312, %var_2_310
; Matched:%var_2_171:  %var_2_171 = trunc i64 %var_2_169 to i32
; %var_2_315 = trunc i64 %var_2_313 to i32
; Matched:%var_2_172:  %var_2_172 = lshr i64 %var_2_169, 32
; %var_2_316 = lshr i64 %var_2_313, 32
; Matched:%var_2_93:  %var_2_93 = trunc i64 %var_2_92 to i32
; %var_2_317 = trunc i64 %var_2_316 to i32
; Matched:\<badref\>:  store i32 %var_2_91, i32* %var_2_435, align 1, !tbaa !1286
; store i32 %var_2_315, i32* %var_2_174, align 1
; Matched:\<badref\>:  store i32 %var_2_93, i32* %var_2_437, align 1, !tbaa !1286
; store i32 %var_2_317, i32* %var_2_176, align 1
; Matched:%var_2_283:  %var_2_283 = trunc i64 %var_2_279 to i32
; %var_2_318 = trunc i64 %var_2_314 to i32
; Matched:\<badref\>:  store i32 %var_2_174, i32* %var_2_439, align 1, !tbaa !1286
; store i32 %var_2_318, i32* %var_2_178, align 1
; Matched:%var_2_175:  %var_2_175 = lshr i64 %var_2_170, 32
; %var_2_319 = lshr i64 %var_2_314, 32
; Matched:%var_2_176:  %var_2_176 = trunc i64 %var_2_175 to i32
; %var_2_320 = trunc i64 %var_2_319 to i32
; Matched:\<badref\>:  store i32 %var_2_176, i32* %var_2_443, align 1, !tbaa !1286
; store i32 %var_2_320, i32* %var_2_182, align 1
%var_2_321 = add i64 %var_2_244, -24
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_642, 29
; %var_2_322 = add i64 %var_2_280, 29
; Matched:\<badref\>:  store i64 %var_2_98, i64* %PC, align 8
; store i64 %var_2_322, i64* %var_2_3, align 8
%var_2_323 = inttoptr i64 %var_2_321 to float*
%var_2_324 = load float, float* %var_2_323, align 4
%var_2_325 = fpext float %var_2_324 to double
; Matched:\<badref\>:  store double %var_2_101, double* %var_2_503, align 1, !tbaa !1287
; store double %var_2_325, double* %var_2_242, align 1
%var_2_326 = add i64 %var_2_280, 33
; Matched:\<badref\>:  store i64 %var_2_102, i64* %PC, align 8
; store i64 %var_2_326, i64* %var_2_3, align 8
%var_2_327 = load double, double* %var_2_140, align 1
%var_2_328 = fcmp uno double %var_2_327, %var_2_325
br i1 %var_2_328, label %var_2_329, label %var_2_339

var_2_329:
%var_2_330 = fadd double %var_2_325, %var_2_327
%var_2_331 = bitcast double %var_2_330 to i64
%var_2_332 = and i64 %var_2_331, 9221120237041090560
%var_2_333 = icmp eq i64 %var_2_332, 9218868437227405312
%var_2_334 = and i64 %var_2_331, 2251799813685247
%var_2_335 = icmp ne i64 %var_2_334, 0
%var_2_336 = and i1 %var_2_333, %var_2_335
br i1 %var_2_336, label %var_2_337, label %var_2_345

var_2_337:
%var_2_338 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_326, %struct.Memory* %MEMORY.0)
; Matched:  %.pre17 = load i64, i64* %PC, align 8
; %.pre12 = load i64, i64* %var_2_3, align 8
%.pre13 = load i8, i8* %var_2_38, align 1
%.pre14 = load i8, i8* %var_2_52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit145

var_2_339:
%var_2_340 = fcmp ogt double %var_2_327, %var_2_325
br i1 %var_2_340, label %var_2_345, label %var_2_341

var_2_341:
%var_2_342 = fcmp olt double %var_2_327, %var_2_325
br i1 %var_2_342, label %var_2_345, label %var_2_343

var_2_343:
%var_2_344 = fcmp oeq double %var_2_327, %var_2_325
br i1 %var_2_344, label %var_2_345, label %var_2_349

var_2_345:
%var_2_346 = phi i8 [ 0, %var_2_339 ], [ 0, %var_2_341 ], [ 1, %var_2_343 ], [ 1, %var_2_329 ]
; Matched:%var_2_123:  %var_2_123 = phi i8 [ 0, %var_2_115 ], [ 0, %var_2_117 ], [ 0, %var_2_119 ], [ 1, %var_2_105 ]
; %var_2_347 = phi i8 [ 0, %var_2_339 ], [ 0, %var_2_341 ], [ 0, %var_2_343 ], [ 1, %var_2_329 ]
%var_2_348 = phi i8 [ 0, %var_2_339 ], [ 1, %var_2_341 ], [ 0, %var_2_343 ], [ 1, %var_2_329 ]
; Matched:\<badref\>:  store i8 %var_2_311, i8* %var_2_53, align 1, !tbaa !1289
; store i8 %var_2_346, i8* %var_2_52, align 1
; Matched:\<badref\>:  store i8 %var_2_312, i8* %var_2_45, align 1, !tbaa !1289
; store i8 %var_2_347, i8* %var_2_44, align 1
; Matched:\<badref\>:  store i8 %var_2_313, i8* %var_2_39, align 1, !tbaa !1289
; store i8 %var_2_348, i8* %var_2_38, align 1
br label %var_2_349

var_2_349:
%var_2_350 = phi i8 [ %var_2_346, %var_2_345 ], [ %var_2_268, %var_2_343 ]
%var_2_351 = phi i8 [ %var_2_348, %var_2_345 ], [ %var_2_256, %var_2_343 ]
store i8 0, i8* %var_2_61, align 1
store i8 0, i8* %var_2_55, align 1
store i8 0, i8* %var_2_49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit145

routine_ucomisd__xmm1___xmm0.exit145:             ; preds = %var_2_349, %var_2_337
%var_2_352 = phi i8 [ %.pre14, %var_2_337 ], [ %var_2_350, %var_2_349 ]
%var_2_353 = phi i8 [ %.pre13, %var_2_337 ], [ %var_2_351, %var_2_349 ]
; Matched:%var_2_130:  %var_2_130 = phi i64 [ %.pre17, %var_2_113 ], [ %var_2_102, %var_2_125 ]
; %var_2_354 = phi i64 [ %.pre12, %var_2_337 ], [ %var_2_326, %var_2_349 ]
%var_2_355 = phi %struct.Memory* [ %var_2_338, %var_2_337 ], [ %MEMORY.0, %var_2_349 ]
%var_2_356 = or i8 %var_2_352, %var_2_353
%var_2_357 = icmp ne i8 %var_2_356, 0
; Matched:  %.v30 = select i1 %var_2_133, i64 45, i64 6
; %.v25 = select i1 %var_2_357, i64 45, i64 6
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_130, %.v30
; %var_2_358 = add i64 %var_2_354, %.v25
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_358, i64* %var_2_3, align 8
br i1 %var_2_357, label %block_.L_402c21, label %block_402bfa

block_402bfa:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit145
%var_2_359 = load i64, i64* %RBP.i, align 8
%var_2_360 = add i64 %var_2_359, -28
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_134, 3
; %var_2_361 = add i64 %var_2_358, 3
; Matched:\<badref\>:  store i64 %var_2_137, i64* %PC, align 8
; store i64 %var_2_361, i64* %var_2_3, align 8
%var_2_362 = inttoptr i64 %var_2_360 to i32*
%var_2_363 = load i32, i32* %var_2_362, align 4
; Matched:%var_2_140:  %var_2_140 = zext i32 %var_2_139 to i64
; %var_2_364 = zext i32 %var_2_363 to i64
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %RAX.i198, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_204, -36
; %var_2_365 = add i64 %var_2_359, -36
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_134, 6
; %var_2_366 = add i64 %var_2_358, 6
; Matched:\<badref\>:  store i64 %var_2_142, i64* %PC, align 8
; store i64 %var_2_366, i64* %var_2_3, align 8
; Matched:%var_2_143:  %var_2_143 = inttoptr i64 %var_2_141 to i32*
; %var_2_367 = inttoptr i64 %var_2_365 to i32*
; Matched:\<badref\>:  store i32 %var_2_139, i32* %var_2_143, align 4
; store i32 %var_2_363, i32* %var_2_367, align 4
%var_2_368 = load i64, i64* %RBP.i, align 8
%var_2_369 = add i64 %var_2_368, -16
%var_2_370 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_147:  %var_2_147 = add i64 %var_2_146, 4
; %var_2_371 = add i64 %var_2_370, 4
; Matched:\<badref\>:  store i64 %var_2_147, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
%var_2_372 = inttoptr i64 %var_2_369 to i64*
%var_2_373 = load i64, i64* %var_2_372, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_373, i64* %RCX.i181, align 8
%var_2_374 = add i64 %var_2_368, -32
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_146, 8
; %var_2_375 = add i64 %var_2_370, 8
; Matched:\<badref\>:  store i64 %var_2_151, i64* %PC, align 8
; store i64 %var_2_375, i64* %var_2_3, align 8
%var_2_376 = inttoptr i64 %var_2_374 to i32*
%var_2_377 = load i32, i32* %var_2_376, align 4
%var_2_378 = sext i32 %var_2_377 to i64
; Matched:\<badref\>:  store i64 %var_2_154, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_378, i64* %RDX.i130, align 8
%var_2_379 = shl nsw i64 %var_2_378, 2
%var_2_380 = add i64 %var_2_379, %var_2_373
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_215, 13
; %var_2_381 = add i64 %var_2_370, 13
; Matched:\<badref\>:  store i64 %var_2_226, i64* %PC, align 8
; store i64 %var_2_381, i64* %var_2_3, align 8
%var_2_382 = inttoptr i64 %var_2_380 to float*
%var_2_383 = load float, float* %var_2_382, align 4
%var_2_384 = fpext float %var_2_383 to double
store double %var_2_384, double* %var_2_140, align 1
%var_2_385 = add i64 %var_2_370, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 13)
%var_2_386 = add i64 %var_2_370, 20
store i64 %var_2_386, i64* %var_2_3, align 8
%var_2_387 = inttoptr i64 %var_2_385 to i32*
%var_2_388 = load i32, i32* %var_2_387, align 4
%var_2_389 = add i64 %var_2_370, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 17)
%var_2_390 = inttoptr i64 %var_2_389 to i32*
%var_2_391 = load i32, i32* %var_2_390, align 4
%var_2_392 = add i64 %var_2_370, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 21)
%var_2_393 = inttoptr i64 %var_2_392 to i32*
%var_2_394 = load i32, i32* %var_2_393, align 4
%var_2_395 = add i64 %var_2_370, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 25)
%var_2_396 = inttoptr i64 %var_2_395 to i32*
%var_2_397 = load i32, i32* %var_2_396, align 4
store i32 %var_2_388, i32* %var_2_156, align 1
store i32 %var_2_391, i32* %var_2_158, align 1
store i32 %var_2_394, i32* %var_2_160, align 1
store i32 %var_2_397, i32* %var_2_162, align 1
; Matched:%var_2_165:  %var_2_165 = bitcast double %var_2_160 to i64
; %var_2_398 = bitcast double %var_2_384 to i64
; Matched:%var_2_275:  %var_2_275 = load i64, i64* %var_2_357, align 1
; %var_2_399 = load i64, i64* %var_2_164, align 1
; Matched:%var_2_167:  %var_2_167 = load i64, i64* %var_2_427, align 1
; %var_2_400 = load i64, i64* %var_2_166, align 1
; Matched:%var_2_429:  %var_2_429 = load i64, i64* %var_2_420, align 1
; %var_2_401 = load i64, i64* %var_2_159, align 1
; Matched:%var_2_169:  %var_2_169 = and i64 %var_2_167, %var_2_165
; %var_2_402 = and i64 %var_2_400, %var_2_398
; Matched:%var_2_239:  %var_2_239 = and i64 %var_2_237, %var_2_235
; %var_2_403 = and i64 %var_2_401, %var_2_399
; Matched:%var_2_91:  %var_2_91 = trunc i64 %var_2_89 to i32
; %var_2_404 = trunc i64 %var_2_402 to i32
; Matched:%var_2_92:  %var_2_92 = lshr i64 %var_2_89, 32
; %var_2_405 = lshr i64 %var_2_402, 32
; Matched:%var_2_173:  %var_2_173 = trunc i64 %var_2_172 to i32
; %var_2_406 = trunc i64 %var_2_405 to i32
; Matched:\<badref\>:  store i32 %var_2_171, i32* %var_2_435, align 1, !tbaa !1286
; store i32 %var_2_404, i32* %var_2_174, align 1
; Matched:\<badref\>:  store i32 %var_2_173, i32* %var_2_437, align 1, !tbaa !1286
; store i32 %var_2_406, i32* %var_2_176, align 1
; Matched:%var_2_370:  %var_2_370 = trunc i64 %var_2_363 to i32
; %var_2_407 = trunc i64 %var_2_403 to i32
; Matched:\<badref\>:  store i32 %var_2_94, i32* %var_2_439, align 1, !tbaa !1286
; store i32 %var_2_407, i32* %var_2_178, align 1
; Matched:%var_2_95:  %var_2_95 = lshr i64 %var_2_90, 32
; %var_2_408 = lshr i64 %var_2_403, 32
; Matched:%var_2_96:  %var_2_96 = trunc i64 %var_2_95 to i32
; %var_2_409 = trunc i64 %var_2_408 to i32
; Matched:\<badref\>:  store i32 %var_2_441, i32* %var_2_443, align 1, !tbaa !1286
; store i32 %var_2_409, i32* %var_2_182, align 1
%var_2_410 = load <2 x i32>, <2 x i32>* %var_2_183, align 1
%var_2_411 = load <2 x i32>, <2 x i32>* %var_2_185, align 1
%.cast7 = bitcast <2 x i32> %var_2_410 to double
; Matched:%var_2_380:  %var_2_380 = fptrunc double %.cast13 to float
; %var_2_412 = fptrunc double %.cast7 to float
; Matched:\<badref\>:  store float %var_2_179, float* %var_2_449, align 1, !tbaa !1284
; store float %var_2_412, float* %var_2_188, align 1
%var_2_413 = extractelement <2 x i32> %var_2_410, i32 1
; Matched:\<badref\>:  store i32 %var_2_450, i32* %var_2_437, align 1, !tbaa !1284
; store i32 %var_2_413, i32* %var_2_176, align 1
%var_2_414 = extractelement <2 x i32> %var_2_411, i32 0
; Matched:\<badref\>:  store i32 %var_2_451, i32* %var_2_439, align 1, !tbaa !1284
; store i32 %var_2_414, i32* %var_2_178, align 1
%var_2_415 = extractelement <2 x i32> %var_2_411, i32 1
; Matched:\<badref\>:  store i32 %var_2_251, i32* %var_2_375, align 1, !tbaa !1284
; store i32 %var_2_415, i32* %var_2_182, align 1
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_332, -24
; %var_2_416 = add i64 %var_2_368, -24
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_215, 33
; %var_2_417 = add i64 %var_2_370, 33
; Matched:\<badref\>:  store i64 %var_2_184, i64* %PC, align 8
; store i64 %var_2_417, i64* %var_2_3, align 8
%var_2_418 = load <2 x float>, <2 x float>* %var_2_194, align 1
%var_2_419 = extractelement <2 x float> %var_2_418, i32 0
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_252 to float*
; %var_2_420 = inttoptr i64 %var_2_416 to float*
; Matched:\<badref\>:  store float %var_2_255, float* %var_2_256, align 4
; store float %var_2_419, float* %var_2_420, align 4
; Matched:  %.pre20 = load i64, i64* %PC, align 8
; %.pre15 = load i64, i64* %var_2_3, align 8
  br label %block_.L_402c21

block_.L_402c21:                                  ; preds = %block_402bfa, %routine_ucomisd__xmm1___xmm0.exit145
; Matched:%var_2_678:  %var_2_678 = phi i64 [ %.pre20, %block_402bfa ], [ %var_2_134, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1 ]
; %var_2_421 = phi i64 [ %.pre15, %block_402bfa ], [ %var_2_358, %routine_ucomisd__xmm1___xmm0.exit145 ]
; Matched:%var_2_679:  %var_2_679 = load i64, i64* %RBP, align 8
; %var_2_422 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_460:  %var_2_460 = add i64 %var_2_459, -32
; %var_2_423 = add i64 %var_2_422, -32
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_678, 3
; %var_2_424 = add i64 %var_2_421, 3
; Matched:\<badref\>:  store i64 %var_2_681, i64* %PC, align 8
; store i64 %var_2_424, i64* %var_2_3, align 8
; Matched:%var_2_682:  %var_2_682 = inttoptr i64 %var_2_680 to i32*
; %var_2_425 = inttoptr i64 %var_2_423 to i32*
; Matched:%var_2_464:  %var_2_464 = load i32, i32* %var_2_463, align 4
; %var_2_426 = load i32, i32* %var_2_425, align 4
; Matched:%var_2_684:  %var_2_684 = zext i32 %var_2_683 to i64
; %var_2_427 = zext i32 %var_2_426 to i64
; Matched:\<badref\>:  store i64 %var_2_684, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_427, i64* %RAX.i198, align 8
; Matched:%var_2_466:  %var_2_466 = add i64 %var_2_459, -20
; %var_2_428 = add i64 %var_2_422, -20
; Matched:%var_2_686:  %var_2_686 = add i64 %var_2_678, 6
; %var_2_429 = add i64 %var_2_421, 6
; Matched:\<badref\>:  store i64 %var_2_686, i64* %PC, align 8
; store i64 %var_2_429, i64* %var_2_3, align 8
; Matched:%var_2_468:  %var_2_468 = inttoptr i64 %var_2_466 to i32*
; %var_2_430 = inttoptr i64 %var_2_428 to i32*
; Matched:%var_2_688:  %var_2_688 = load i32, i32* %var_2_687, align 4
; %var_2_431 = load i32, i32* %var_2_430, align 4
; Matched:%var_2_470:  %var_2_470 = add i32 %var_2_469, %var_2_464
; %var_2_432 = add i32 %var_2_431, %var_2_426
; Matched:%var_2_690:  %var_2_690 = zext i32 %var_2_689 to i64
; %var_2_433 = zext i32 %var_2_432 to i64
; Matched:\<badref\>:  store i64 %var_2_690, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_433, i64* %RAX.i198, align 8
; Matched:%var_2_472:  %var_2_472 = icmp ult i32 %var_2_470, %var_2_464
; %var_2_434 = icmp ult i32 %var_2_432, %var_2_426
; Matched:%var_2_692:  %var_2_692 = icmp ult i32 %var_2_689, %var_2_688
; %var_2_435 = icmp ult i32 %var_2_432, %var_2_431
; Matched:%var_2_474:  %var_2_474 = or i1 %var_2_472, %var_2_473
; %var_2_436 = or i1 %var_2_434, %var_2_435
; Matched:%var_2_475:  %var_2_475 = zext i1 %var_2_474 to i8
; %var_2_437 = zext i1 %var_2_436 to i8
; Matched:\<badref\>:  store i8 %var_2_694, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_437, i8* %var_2_38, align 1
; Matched:%var_2_476:  %var_2_476 = and i32 %var_2_470, 255
; %var_2_438 = and i32 %var_2_432, 255
; Matched:%var_2_477:  %var_2_477 = tail call i32 @llvm.ctpop.i32(i32 %var_2_476) #12
; %var_2_439 = tail call i32 @llvm.ctpop.i32(i32 %var_2_438)
; Matched:%var_2_478:  %var_2_478 = trunc i32 %var_2_477 to i8
; %var_2_440 = trunc i32 %var_2_439 to i8
; Matched:%var_2_479:  %var_2_479 = and i8 %var_2_478, 1
; %var_2_441 = and i8 %var_2_440, 1
; Matched:%var_2_480:  %var_2_480 = xor i8 %var_2_479, 1
; %var_2_442 = xor i8 %var_2_441, 1
; Matched:\<badref\>:  store i8 %var_2_480, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_442, i8* %var_2_44, align 1
; Matched:%var_2_481:  %var_2_481 = xor i32 %var_2_469, %var_2_464
; %var_2_443 = xor i32 %var_2_431, %var_2_426
; Matched:%var_2_482:  %var_2_482 = xor i32 %var_2_481, %var_2_470
; %var_2_444 = xor i32 %var_2_443, %var_2_432
; Matched:%var_2_483:  %var_2_483 = lshr i32 %var_2_482, 4
; %var_2_445 = lshr i32 %var_2_444, 4
; Matched:%var_2_484:  %var_2_484 = trunc i32 %var_2_483 to i8
; %var_2_446 = trunc i32 %var_2_445 to i8
; Matched:%var_2_485:  %var_2_485 = and i8 %var_2_484, 1
; %var_2_447 = and i8 %var_2_446, 1
; Matched:\<badref\>:  store i8 %var_2_485, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_447, i8* %var_2_49, align 1
; Matched:%var_2_486:  %var_2_486 = icmp eq i32 %var_2_470, 0
; %var_2_448 = icmp eq i32 %var_2_432, 0
; Matched:%var_2_487:  %var_2_487 = zext i1 %var_2_486 to i8
; %var_2_449 = zext i1 %var_2_448 to i8
; Matched:\<badref\>:  store i8 %var_2_487, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_449, i8* %var_2_52, align 1
; Matched:%var_2_488:  %var_2_488 = lshr i32 %var_2_470, 31
; %var_2_450 = lshr i32 %var_2_432, 31
; Matched:%var_2_489:  %var_2_489 = trunc i32 %var_2_488 to i8
; %var_2_451 = trunc i32 %var_2_450 to i8
; Matched:\<badref\>:  store i8 %var_2_489, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_451, i8* %var_2_55, align 1
; Matched:%var_2_490:  %var_2_490 = lshr i32 %var_2_464, 31
; %var_2_452 = lshr i32 %var_2_426, 31
; Matched:%var_2_491:  %var_2_491 = lshr i32 %var_2_469, 31
; %var_2_453 = lshr i32 %var_2_431, 31
; Matched:%var_2_492:  %var_2_492 = xor i32 %var_2_488, %var_2_490
; %var_2_454 = xor i32 %var_2_450, %var_2_452
; Matched:%var_2_493:  %var_2_493 = xor i32 %var_2_488, %var_2_491
; %var_2_455 = xor i32 %var_2_450, %var_2_453
; Matched:%var_2_494:  %var_2_494 = add nuw nsw i32 %var_2_492, %var_2_493
; %var_2_456 = add nuw nsw i32 %var_2_454, %var_2_455
; Matched:%var_2_495:  %var_2_495 = icmp eq i32 %var_2_494, 2
; %var_2_457 = icmp eq i32 %var_2_456, 2
; Matched:%var_2_496:  %var_2_496 = zext i1 %var_2_495 to i8
; %var_2_458 = zext i1 %var_2_457 to i8
; Matched:\<badref\>:  store i8 %var_2_496, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_458, i8* %var_2_61, align 1
; Matched:%var_2_716:  %var_2_716 = add i64 %var_2_678, 9
; %var_2_459 = add i64 %var_2_421, 9
; Matched:\<badref\>:  store i64 %var_2_716, i64* %PC, align 8
; store i64 %var_2_459, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_470, i32* %var_2_463, align 4
; store i32 %var_2_432, i32* %var_2_425, align 4
; Matched:%var_2_569:  %var_2_569 = load i64, i64* %RBP, align 8
; %var_2_460 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_570:  %var_2_570 = add i64 %var_2_569, -28
; %var_2_461 = add i64 %var_2_460, -28
%var_2_462 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_461, 3
; %var_2_463 = add i64 %var_2_462, 3
; Matched:\<badref\>:  store i64 %var_2_720, i64* %PC, align 8
; store i64 %var_2_463, i64* %var_2_3, align 8
; Matched:%var_2_721:  %var_2_721 = inttoptr i64 %var_2_718 to i32*
; %var_2_464 = inttoptr i64 %var_2_461 to i32*
; Matched:%var_2_722:  %var_2_722 = load i32, i32* %var_2_721, align 4
; %var_2_465 = load i32, i32* %var_2_464, align 4
; Matched:%var_2_723:  %var_2_723 = add i32 %var_2_722, 1
; %var_2_466 = add i32 %var_2_465, 1
; Matched:%var_2_575:  %var_2_575 = zext i32 %var_2_574 to i64
; %var_2_467 = zext i32 %var_2_466 to i64
; Matched:\<badref\>:  store i64 %var_2_575, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_467, i64* %RAX.i198, align 8
; Matched:%var_2_576:  %var_2_576 = icmp eq i32 %var_2_573, -1
; %var_2_468 = icmp eq i32 %var_2_465, -1
; Matched:%var_2_577:  %var_2_577 = icmp eq i32 %var_2_574, 0
; %var_2_469 = icmp eq i32 %var_2_466, 0
; Matched:%var_2_727:  %var_2_727 = or i1 %var_2_725, %var_2_726
; %var_2_470 = or i1 %var_2_468, %var_2_469
; Matched:%var_2_728:  %var_2_728 = zext i1 %var_2_727 to i8
; %var_2_471 = zext i1 %var_2_470 to i8
; Matched:\<badref\>:  store i8 %var_2_728, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_471, i8* %var_2_38, align 1
; Matched:%var_2_729:  %var_2_729 = and i32 %var_2_723, 255
; %var_2_472 = and i32 %var_2_466, 255
; Matched:%var_2_581:  %var_2_581 = tail call i32 @llvm.ctpop.i32(i32 %var_2_580) #12
; %var_2_473 = tail call i32 @llvm.ctpop.i32(i32 %var_2_472)
; Matched:%var_2_582:  %var_2_582 = trunc i32 %var_2_581 to i8
; %var_2_474 = trunc i32 %var_2_473 to i8
; Matched:%var_2_583:  %var_2_583 = and i8 %var_2_582, 1
; %var_2_475 = and i8 %var_2_474, 1
; Matched:%var_2_584:  %var_2_584 = xor i8 %var_2_583, 1
; %var_2_476 = xor i8 %var_2_475, 1
; Matched:\<badref\>:  store i8 %var_2_733, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_476, i8* %var_2_44, align 1
; Matched:%var_2_734:  %var_2_734 = xor i32 %var_2_723, %var_2_722
; %var_2_477 = xor i32 %var_2_466, %var_2_465
; Matched:%var_2_735:  %var_2_735 = lshr i32 %var_2_734, 4
; %var_2_478 = lshr i32 %var_2_477, 4
; Matched:%var_2_736:  %var_2_736 = trunc i32 %var_2_735 to i8
; %var_2_479 = trunc i32 %var_2_478 to i8
; Matched:%var_2_588:  %var_2_588 = and i8 %var_2_587, 1
; %var_2_480 = and i8 %var_2_479, 1
; Matched:\<badref\>:  store i8 %var_2_588, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_480, i8* %var_2_49, align 1
; Matched:%var_2_589:  %var_2_589 = zext i1 %var_2_577 to i8
; %var_2_481 = zext i1 %var_2_469 to i8
; Matched:\<badref\>:  store i8 %var_2_589, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_481, i8* %var_2_52, align 1
; Matched:%var_2_739:  %var_2_739 = lshr i32 %var_2_723, 31
; %var_2_482 = lshr i32 %var_2_466, 31
; Matched:%var_2_740:  %var_2_740 = trunc i32 %var_2_739 to i8
; %var_2_483 = trunc i32 %var_2_482 to i8
; Matched:\<badref\>:  store i8 %var_2_740, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_483, i8* %var_2_55, align 1
; Matched:%var_2_741:  %var_2_741 = lshr i32 %var_2_722, 31
; %var_2_484 = lshr i32 %var_2_465, 31
; Matched:%var_2_593:  %var_2_593 = xor i32 %var_2_590, %var_2_592
; %var_2_485 = xor i32 %var_2_482, %var_2_484
; Matched:%var_2_594:  %var_2_594 = add nuw nsw i32 %var_2_593, %var_2_590
; %var_2_486 = add nuw nsw i32 %var_2_485, %var_2_482
; Matched:%var_2_595:  %var_2_595 = icmp eq i32 %var_2_594, 2
; %var_2_487 = icmp eq i32 %var_2_486, 2
; Matched:%var_2_596:  %var_2_596 = zext i1 %var_2_595 to i8
; %var_2_488 = zext i1 %var_2_487 to i8
; Matched:\<badref\>:  store i8 %var_2_745, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_488, i8* %var_2_61, align 1
; Matched:%var_2_497:  %var_2_497 = add i64 %var_2_461, 9
; %var_2_489 = add i64 %var_2_462, 9
; Matched:\<badref\>:  store i64 %var_2_497, i64* %PC, align 8
; store i64 %var_2_489, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_723, i32* %var_2_721, align 4
; store i32 %var_2_466, i32* %var_2_464, align 4
%var_2_490 = load i64, i64* %var_2_3, align 8
%var_2_491 = add i64 %var_2_490, -108
; Matched:\<badref\>:  store i64 %var_2_748, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_491, i64* %var_2_3, align 8
  br label %block_.L_402bc7

block_.L_402c38:                                  ; preds = %block_.L_402bc7
%var_2_492 = add i64 %var_2_280, 161
  br label %block_.L_402cd9

block_.L_402c3d:                                  ; preds = %block_.L_402b8a
%var_2_493 = add i64 %var_2_29, -36
; Matched:%var_2_398:  %var_2_398 = add i64 %var_2_567, 7
; %var_2_494 = add i64 %var_2_124, 7
; Matched:\<badref\>:  store i64 %var_2_398, i64* %PC, align 8
; store i64 %var_2_494, i64* %var_2_3, align 8
%var_2_495 = inttoptr i64 %var_2_493 to i32*
store i32 0, i32* %var_2_495, align 4
  %RAX.i91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_496 = load i64, i64* %RBP.i, align 8
%var_2_497 = add i64 %var_2_496, -16
%var_2_498 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_403:  %var_2_403 = add i64 %var_2_402, 4
; %var_2_499 = add i64 %var_2_498, 4
; Matched:\<badref\>:  store i64 %var_2_403, i64* %PC, align 8
; store i64 %var_2_499, i64* %var_2_3, align 8
%var_2_500 = inttoptr i64 %var_2_497 to i64*
%var_2_501 = load i64, i64* %var_2_500, align 8
; Matched:\<badref\>:  store i64 %var_2_260, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_501, i64* %RAX.i91, align 8
%var_2_502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_503 = bitcast [32 x %union.VectorReg]* %var_2_502 to i8*
; Matched:%var_2_407:  %var_2_407 = add i64 %var_2_402, 8
; %var_2_504 = add i64 %var_2_498, 8
; Matched:\<badref\>:  store i64 %var_2_407, i64* %PC, align 8
; store i64 %var_2_504, i64* %var_2_3, align 8
%var_2_505 = inttoptr i64 %var_2_501 to float*
%var_2_506 = load float, float* %var_2_505, align 4
%var_2_507 = fpext float %var_2_506 to double
%var_2_508 = bitcast [32 x %union.VectorReg]* %var_2_502 to double*
store double %var_2_507, double* %var_2_508, align 1
%var_2_509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_510 = bitcast %union.VectorReg* %var_2_509 to i8*
%var_2_511 = add i64 %var_2_498, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 8)
%var_2_512 = add i64 %var_2_498, 15
store i64 %var_2_512, i64* %var_2_3, align 8
%var_2_513 = inttoptr i64 %var_2_511 to i32*
%var_2_514 = load i32, i32* %var_2_513, align 4
%var_2_515 = add i64 %var_2_498, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 12)
%var_2_516 = inttoptr i64 %var_2_515 to i32*
%var_2_517 = load i32, i32* %var_2_516, align 4
%var_2_518 = add i64 %var_2_498, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 16)
%var_2_519 = inttoptr i64 %var_2_518 to i32*
%var_2_520 = load i32, i32* %var_2_519, align 4
%var_2_521 = add i64 %var_2_498, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 20)
%var_2_522 = inttoptr i64 %var_2_521 to i32*
%var_2_523 = load i32, i32* %var_2_522, align 4
%var_2_524 = bitcast %union.VectorReg* %var_2_509 to i32*
store i32 %var_2_514, i32* %var_2_524, align 1
%var_2_525 = getelementptr inbounds i8, i8* %var_2_510, i64 4
%var_2_526 = bitcast i8* %var_2_525 to i32*
store i32 %var_2_517, i32* %var_2_526, align 1
%var_2_527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_528 = bitcast i64* %var_2_527 to i32*
store i32 %var_2_520, i32* %var_2_528, align 1
%var_2_529 = getelementptr inbounds i8, i8* %var_2_510, i64 12
%var_2_530 = bitcast i8* %var_2_529 to i32*
store i32 %var_2_523, i32* %var_2_530, align 1
; Matched:%var_2_424:  %var_2_424 = bitcast double %var_2_410 to i64
; %var_2_531 = bitcast double %var_2_507 to i64
; Matched:%var_2_425:  %var_2_425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_166:  %var_2_166 = load i64, i64* %var_2_425, align 1
; %var_2_533 = load i64, i64* %var_2_532, align 1
%var_2_534 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_509, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_360:  %var_2_360 = load i64, i64* %var_2_359, align 1
; %var_2_535 = load i64, i64* %var_2_534, align 1
; Matched:%var_2_168:  %var_2_168 = load i64, i64* %var_2_420, align 1
; %var_2_536 = load i64, i64* %var_2_527, align 1
; Matched:%var_2_362:  %var_2_362 = and i64 %var_2_360, %var_2_356
; %var_2_537 = and i64 %var_2_535, %var_2_531
; Matched:%var_2_279:  %var_2_279 = and i64 %var_2_277, %var_2_275
; %var_2_538 = and i64 %var_2_536, %var_2_533
; Matched:%var_2_432:  %var_2_432 = trunc i64 %var_2_430 to i32
; %var_2_539 = trunc i64 %var_2_537 to i32
; Matched:%var_2_433:  %var_2_433 = lshr i64 %var_2_430, 32
; %var_2_540 = lshr i64 %var_2_537, 32
; Matched:%var_2_366:  %var_2_366 = trunc i64 %var_2_365 to i32
; %var_2_541 = trunc i64 %var_2_540 to i32
%var_2_542 = bitcast [32 x %union.VectorReg]* %var_2_502 to i32*
; Matched:\<badref\>:  store i32 %var_2_364, i32* %var_2_367, align 1, !tbaa !1286
; store i32 %var_2_539, i32* %var_2_542, align 1
%var_2_543 = getelementptr inbounds i8, i8* %var_2_503, i64 4
%var_2_544 = bitcast i8* %var_2_543 to i32*
; Matched:\<badref\>:  store i32 %var_2_366, i32* %var_2_369, align 1, !tbaa !1286
; store i32 %var_2_541, i32* %var_2_544, align 1
; Matched:%var_2_94:  %var_2_94 = trunc i64 %var_2_90 to i32
; %var_2_545 = trunc i64 %var_2_538 to i32
; Matched:%var_2_439:  %var_2_439 = bitcast i64* %var_2_425 to i32*
; %var_2_546 = bitcast i64* %var_2_532 to i32*
; Matched:\<badref\>:  store i32 %var_2_438, i32* %var_2_439, align 1, !tbaa !1286
; store i32 %var_2_545, i32* %var_2_546, align 1
; Matched:%var_2_440:  %var_2_440 = lshr i64 %var_2_431, 32
; %var_2_547 = lshr i64 %var_2_538, 32
; Matched:%var_2_441:  %var_2_441 = trunc i64 %var_2_440 to i32
; %var_2_548 = trunc i64 %var_2_547 to i32
; Matched:%var_2_374:  %var_2_374 = getelementptr inbounds i8, i8* %var_2_338, i64 12
; %var_2_549 = getelementptr inbounds i8, i8* %var_2_503, i64 12
; Matched:%var_2_375:  %var_2_375 = bitcast i8* %var_2_374 to i32*
; %var_2_550 = bitcast i8* %var_2_549 to i32*
; Matched:\<badref\>:  store i32 %var_2_245, i32* %var_2_375, align 1, !tbaa !1286
; store i32 %var_2_548, i32* %var_2_550, align 1
%var_2_551 = bitcast [32 x %union.VectorReg]* %var_2_502 to <2 x i32>*
%var_2_552 = load <2 x i32>, <2 x i32>* %var_2_551, align 1
%var_2_553 = bitcast i64* %var_2_532 to <2 x i32>*
%var_2_554 = load <2 x i32>, <2 x i32>* %var_2_553, align 1
%.cast8 = bitcast <2 x i32> %var_2_552 to double
; Matched:%var_2_179:  %var_2_179 = fptrunc double %.cast12 to float
; %var_2_555 = fptrunc double %.cast8 to float
; Matched:%var_2_381:  %var_2_381 = bitcast [32 x %union.VectorReg]* %var_2_5 to float*
; %var_2_556 = bitcast [32 x %union.VectorReg]* %var_2_502 to float*
; Matched:\<badref\>:  store float %var_2_380, float* %var_2_381, align 1, !tbaa !1284
; store float %var_2_555, float* %var_2_556, align 1
%var_2_557 = extractelement <2 x i32> %var_2_552, i32 1
; Matched:\<badref\>:  store i32 %var_2_249, i32* %var_2_369, align 1, !tbaa !1284
; store i32 %var_2_557, i32* %var_2_544, align 1
%var_2_558 = extractelement <2 x i32> %var_2_554, i32 0
; Matched:\<badref\>:  store i32 %var_2_250, i32* %var_2_371, align 1, !tbaa !1284
; store i32 %var_2_558, i32* %var_2_546, align 1
%var_2_559 = extractelement <2 x i32> %var_2_554, i32 1
; Matched:\<badref\>:  store i32 %var_2_384, i32* %var_2_375, align 1, !tbaa !1284
; store i32 %var_2_559, i32* %var_2_550, align 1
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_213, -24
; %var_2_560 = add i64 %var_2_496, -24
; Matched:%var_2_386:  %var_2_386 = add i64 %var_2_334, 28
; %var_2_561 = add i64 %var_2_498, 28
; Matched:\<badref\>:  store i64 %var_2_454, i64* %PC, align 8
; store i64 %var_2_561, i64* %var_2_3, align 8
%var_2_562 = bitcast [32 x %union.VectorReg]* %var_2_502 to <2 x float>*
%var_2_563 = load <2 x float>, <2 x float>* %var_2_562, align 1
%var_2_564 = extractelement <2 x float> %var_2_563, i32 0
; Matched:%var_2_390:  %var_2_390 = inttoptr i64 %var_2_385 to float*
; %var_2_565 = inttoptr i64 %var_2_560 to float*
; Matched:\<badref\>:  store float %var_2_389, float* %var_2_390, align 4
; store float %var_2_564, float* %var_2_565, align 4
%var_2_566 = load i64, i64* %RBP.i, align 8
%var_2_567 = add i64 %var_2_566, -28
; Matched:%var_2_500:  %var_2_500 = load i64, i64* %PC, align 8
; %var_2_568 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_501:  %var_2_501 = add i64 %var_2_500, 7
; %var_2_569 = add i64 %var_2_568, 7
; Matched:\<badref\>:  store i64 %var_2_501, i64* %PC, align 8
; store i64 %var_2_569, i64* %var_2_3, align 8
%var_2_570 = inttoptr i64 %var_2_567 to i32*
store i32 1, i32* %var_2_570, align 4
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_503:  %var_2_503 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_571 = bitcast %union.VectorReg* %var_2_509 to double*
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RDX.i32 = getelementptr inbounds %union.anon, %union.anon* %var_2_22, i64 0, i32 0
%.pre16 = load i64, i64* %var_2_3, align 8
  br label %block_.L_402c67

block_.L_402c67:                                  ; preds = %block_.L_402cc1, %block_.L_402c3d
%var_2_572 = phi i64 [ %.pre16, %block_.L_402c3d ], [ %var_2_779, %block_.L_402cc1 ]
%MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_402c3d ], [ %var_2_682, %block_.L_402cc1 ]
%var_2_573 = load i64, i64* %RBP.i, align 8
%var_2_574 = add i64 %var_2_573, -28
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_504, 3
; %var_2_575 = add i64 %var_2_572, 3
; Matched:\<badref\>:  store i64 %var_2_507, i64* %PC, align 8
; store i64 %var_2_575, i64* %var_2_3, align 8
%var_2_576 = inttoptr i64 %var_2_574 to i32*
%var_2_577 = load i32, i32* %var_2_576, align 4
; Matched:%var_2_209:  %var_2_209 = zext i32 %var_2_208 to i64
; %var_2_578 = zext i32 %var_2_577 to i64
; Matched:\<badref\>:  store i64 %var_2_209, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_578, i64* %RAX.i91, align 8
%var_2_579 = add i64 %var_2_573, -8
; Matched:%var_2_512:  %var_2_512 = add i64 %var_2_504, 6
; %var_2_580 = add i64 %var_2_572, 6
; Matched:\<badref\>:  store i64 %var_2_512, i64* %PC, align 8
; store i64 %var_2_580, i64* %var_2_3, align 8
%var_2_581 = inttoptr i64 %var_2_579 to i32*
%var_2_582 = load i32, i32* %var_2_581, align 4
%var_2_583 = sub i32 %var_2_577, %var_2_582
%var_2_584 = icmp ult i32 %var_2_577, %var_2_582
%var_2_585 = zext i1 %var_2_584 to i8
; Matched:\<badref\>:  store i8 %var_2_517, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_585, i8* %var_2_38, align 1
; Matched:%var_2_518:  %var_2_518 = and i32 %var_2_515, 255
; %var_2_586 = and i32 %var_2_583, 255
; Matched:%var_2_620:  %var_2_620 = tail call i32 @llvm.ctpop.i32(i32 %var_2_619) #12
; %var_2_587 = tail call i32 @llvm.ctpop.i32(i32 %var_2_586)
; Matched:%var_2_621:  %var_2_621 = trunc i32 %var_2_620 to i8
; %var_2_588 = trunc i32 %var_2_587 to i8
; Matched:%var_2_622:  %var_2_622 = and i8 %var_2_621, 1
; %var_2_589 = and i8 %var_2_588, 1
; Matched:%var_2_522:  %var_2_522 = xor i8 %var_2_521, 1
; %var_2_590 = xor i8 %var_2_589, 1
; Matched:\<badref\>:  store i8 %var_2_522, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_590, i8* %var_2_44, align 1
; Matched:%var_2_523:  %var_2_523 = xor i32 %var_2_514, %var_2_509
; %var_2_591 = xor i32 %var_2_582, %var_2_577
; Matched:%var_2_524:  %var_2_524 = xor i32 %var_2_523, %var_2_515
; %var_2_592 = xor i32 %var_2_591, %var_2_583
; Matched:%var_2_525:  %var_2_525 = lshr i32 %var_2_524, 4
; %var_2_593 = lshr i32 %var_2_592, 4
; Matched:%var_2_627:  %var_2_627 = trunc i32 %var_2_626 to i8
; %var_2_594 = trunc i32 %var_2_593 to i8
; Matched:%var_2_628:  %var_2_628 = and i8 %var_2_627, 1
; %var_2_595 = and i8 %var_2_594, 1
; Matched:\<badref\>:  store i8 %var_2_628, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_595, i8* %var_2_49, align 1
%var_2_596 = icmp eq i32 %var_2_583, 0
%var_2_597 = zext i1 %var_2_596 to i8
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_597, i8* %var_2_52, align 1
%var_2_598 = lshr i32 %var_2_583, 31
%var_2_599 = trunc i32 %var_2_598 to i8
; Matched:\<badref\>:  store i8 %var_2_632, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_599, i8* %var_2_55, align 1
%var_2_600 = lshr i32 %var_2_577, 31
%var_2_601 = lshr i32 %var_2_582, 31
%var_2_602 = xor i32 %var_2_601, %var_2_600
%var_2_603 = xor i32 %var_2_598, %var_2_600
%var_2_604 = add nuw nsw i32 %var_2_603, %var_2_602
%var_2_605 = icmp eq i32 %var_2_604, 2
; Matched:%var_2_538:  %var_2_538 = zext i1 %var_2_537 to i8
; %var_2_606 = zext i1 %var_2_605 to i8
; Matched:\<badref\>:  store i8 %var_2_639, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_606, i8* %var_2_61, align 1
%var_2_607 = icmp ne i8 %var_2_599, 0
%var_2_608 = xor i1 %var_2_607, %var_2_605
%.v26 = select i1 %var_2_608, i64 12, i64 109
%var_2_609 = add i64 %var_2_572, %.v26
; Matched:\<badref\>:  store i64 %var_2_541, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_609, i64* %var_2_3, align 8
br i1 %var_2_608, label %block_402c73, label %block_.L_402cd4

block_402c73:                                     ; preds = %block_.L_402c67
%var_2_610 = add i64 %var_2_573, -16
; Matched:%var_2_258:  %var_2_258 = add i64 %var_2_541, 4
; %var_2_611 = add i64 %var_2_609, 4
; Matched:\<badref\>:  store i64 %var_2_258, i64* %PC, align 8
; store i64 %var_2_611, i64* %var_2_3, align 8
%var_2_612 = inttoptr i64 %var_2_610 to i64*
%var_2_613 = load i64, i64* %var_2_612, align 8
; Matched:\<badref\>:  store i64 %var_2_337, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_613, i64* %RAX.i91, align 8
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_541, 8
; %var_2_614 = add i64 %var_2_609, 8
; Matched:\<badref\>:  store i64 %var_2_261, i64* %PC, align 8
; store i64 %var_2_614, i64* %var_2_3, align 8
%var_2_615 = load i32, i32* %var_2_576, align 4
%var_2_616 = sext i32 %var_2_615 to i64
; Matched:\<badref\>:  store i64 %var_2_263, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_616, i64* %RCX.i62, align 8
%var_2_617 = shl nsw i64 %var_2_616, 2
%var_2_618 = add i64 %var_2_617, %var_2_613
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_541, 13
; %var_2_619 = add i64 %var_2_609, 13
; Matched:\<badref\>:  store i64 %var_2_266, i64* %PC, align 8
; store i64 %var_2_619, i64* %var_2_3, align 8
%var_2_620 = inttoptr i64 %var_2_618 to float*
%var_2_621 = load float, float* %var_2_620, align 4
%var_2_622 = fpext float %var_2_621 to double
store double %var_2_622, double* %var_2_508, align 1
%var_2_623 = add i64 %var_2_609, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 13)
%var_2_624 = add i64 %var_2_609, 20
store i64 %var_2_624, i64* %var_2_3, align 8
%var_2_625 = inttoptr i64 %var_2_623 to i32*
%var_2_626 = load i32, i32* %var_2_625, align 4
%var_2_627 = add i64 %var_2_609, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 17)
%var_2_628 = inttoptr i64 %var_2_627 to i32*
%var_2_629 = load i32, i32* %var_2_628, align 4
%var_2_630 = add i64 %var_2_609, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 21)
%var_2_631 = inttoptr i64 %var_2_630 to i32*
%var_2_632 = load i32, i32* %var_2_631, align 4
%var_2_633 = add i64 %var_2_609, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 25)
%var_2_634 = inttoptr i64 %var_2_633 to i32*
%var_2_635 = load i32, i32* %var_2_634, align 4
store i32 %var_2_626, i32* %var_2_524, align 1
store i32 %var_2_629, i32* %var_2_526, align 1
store i32 %var_2_632, i32* %var_2_528, align 1
store i32 %var_2_635, i32* %var_2_530, align 1
; Matched:%var_2_274:  %var_2_274 = bitcast double %var_2_269 to i64
; %var_2_636 = bitcast double %var_2_622 to i64
; Matched:%var_2_86:  %var_2_86 = load i64, i64* %var_2_425, align 1
; %var_2_637 = load i64, i64* %var_2_532, align 1
; Matched:%var_2_236:  %var_2_236 = load i64, i64* %var_2_359, align 1
; %var_2_638 = load i64, i64* %var_2_534, align 1
; Matched:%var_2_88:  %var_2_88 = load i64, i64* %var_2_420, align 1
; %var_2_639 = load i64, i64* %var_2_527, align 1
; Matched:%var_2_278:  %var_2_278 = and i64 %var_2_276, %var_2_274
; %var_2_640 = and i64 %var_2_638, %var_2_636
; Matched:%var_2_170:  %var_2_170 = and i64 %var_2_168, %var_2_166
; %var_2_641 = and i64 %var_2_639, %var_2_637
; Matched:%var_2_280:  %var_2_280 = trunc i64 %var_2_278 to i32
; %var_2_642 = trunc i64 %var_2_640 to i32
; Matched:%var_2_241:  %var_2_241 = lshr i64 %var_2_238, 32
; %var_2_643 = lshr i64 %var_2_640, 32
; Matched:%var_2_282:  %var_2_282 = trunc i64 %var_2_281 to i32
; %var_2_644 = trunc i64 %var_2_643 to i32
; Matched:\<badref\>:  store i32 %var_2_240, i32* %var_2_367, align 1, !tbaa !1286
; store i32 %var_2_642, i32* %var_2_542, align 1
; Matched:\<badref\>:  store i32 %var_2_242, i32* %var_2_369, align 1, !tbaa !1286
; store i32 %var_2_644, i32* %var_2_544, align 1
; Matched:%var_2_438:  %var_2_438 = trunc i64 %var_2_431 to i32
; %var_2_645 = trunc i64 %var_2_641 to i32
; Matched:\<badref\>:  store i32 %var_2_243, i32* %var_2_371, align 1, !tbaa !1286
; store i32 %var_2_645, i32* %var_2_546, align 1
; Matched:%var_2_244:  %var_2_244 = lshr i64 %var_2_239, 32
; %var_2_646 = lshr i64 %var_2_641, 32
; Matched:%var_2_245:  %var_2_245 = trunc i64 %var_2_244 to i32
; %var_2_647 = trunc i64 %var_2_646 to i32
; Matched:\<badref\>:  store i32 %var_2_285, i32* %var_2_375, align 1, !tbaa !1286
; store i32 %var_2_647, i32* %var_2_550, align 1
%var_2_648 = add i64 %var_2_573, -24
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_541, 29
; %var_2_649 = add i64 %var_2_609, 29
; Matched:\<badref\>:  store i64 %var_2_287, i64* %PC, align 8
; store i64 %var_2_649, i64* %var_2_3, align 8
%var_2_650 = inttoptr i64 %var_2_648 to float*
%var_2_651 = load float, float* %var_2_650, align 4
%var_2_652 = fpext float %var_2_651 to double
; Matched:\<badref\>:  store double %var_2_290, double* %var_2_396, align 1, !tbaa !1287
; store double %var_2_652, double* %var_2_571, align 1
%var_2_653 = add i64 %var_2_609, 33
; Matched:\<badref\>:  store i64 %var_2_291, i64* %PC, align 8
; store i64 %var_2_653, i64* %var_2_3, align 8
%var_2_654 = load double, double* %var_2_508, align 1
%var_2_655 = fcmp uno double %var_2_654, %var_2_652
br i1 %var_2_655, label %var_2_656, label %var_2_666

var_2_656:
%var_2_657 = fadd double %var_2_652, %var_2_654
%var_2_658 = bitcast double %var_2_657 to i64
%var_2_659 = and i64 %var_2_658, 9221120237041090560
%var_2_660 = icmp eq i64 %var_2_659, 9218868437227405312
%var_2_661 = and i64 %var_2_658, 2251799813685247
%var_2_662 = icmp ne i64 %var_2_661, 0
%var_2_663 = and i1 %var_2_660, %var_2_662
br i1 %var_2_663, label %var_2_664, label %var_2_672

var_2_664:
%var_2_665 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_653, %struct.Memory* %MEMORY.2)
; Matched:  %.pre22 = load i64, i64* %PC, align 8
; %.pre17 = load i64, i64* %var_2_3, align 8
%.pre18 = load i8, i8* %var_2_38, align 1
%.pre19 = load i8, i8* %var_2_52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

var_2_666:
%var_2_667 = fcmp ogt double %var_2_654, %var_2_652
br i1 %var_2_667, label %var_2_672, label %var_2_668

var_2_668:
%var_2_669 = fcmp olt double %var_2_654, %var_2_652
br i1 %var_2_669, label %var_2_672, label %var_2_670

var_2_670:
%var_2_671 = fcmp oeq double %var_2_654, %var_2_652
br i1 %var_2_671, label %var_2_672, label %var_2_676

var_2_672:
%var_2_673 = phi i8 [ 0, %var_2_666 ], [ 0, %var_2_668 ], [ 1, %var_2_670 ], [ 1, %var_2_656 ]
; Matched:%var_2_312:  %var_2_312 = phi i8 [ 0, %var_2_304 ], [ 0, %var_2_306 ], [ 0, %var_2_308 ], [ 1, %var_2_294 ]
; %var_2_674 = phi i8 [ 0, %var_2_666 ], [ 0, %var_2_668 ], [ 0, %var_2_670 ], [ 1, %var_2_656 ]
%var_2_675 = phi i8 [ 0, %var_2_666 ], [ 1, %var_2_668 ], [ 0, %var_2_670 ], [ 1, %var_2_656 ]
; Matched:\<badref\>:  store i8 %var_2_122, i8* %var_2_53, align 1, !tbaa !1289
; store i8 %var_2_673, i8* %var_2_52, align 1
; Matched:\<badref\>:  store i8 %var_2_123, i8* %var_2_45, align 1, !tbaa !1289
; store i8 %var_2_674, i8* %var_2_44, align 1
; Matched:\<badref\>:  store i8 %var_2_124, i8* %var_2_39, align 1, !tbaa !1289
; store i8 %var_2_675, i8* %var_2_38, align 1
br label %var_2_676

var_2_676:
%var_2_677 = phi i8 [ %var_2_673, %var_2_672 ], [ %var_2_597, %var_2_670 ]
%var_2_678 = phi i8 [ %var_2_675, %var_2_672 ], [ %var_2_585, %var_2_670 ]
store i8 0, i8* %var_2_61, align 1
store i8 0, i8* %var_2_55, align 1
store i8 0, i8* %var_2_49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %var_2_676, %var_2_664
%var_2_679 = phi i8 [ %.pre19, %var_2_664 ], [ %var_2_677, %var_2_676 ]
%var_2_680 = phi i8 [ %.pre18, %var_2_664 ], [ %var_2_678, %var_2_676 ]
; Matched:%var_2_319:  %var_2_319 = phi i64 [ %.pre22, %var_2_302 ], [ %var_2_291, %var_2_314 ]
; %var_2_681 = phi i64 [ %.pre17, %var_2_664 ], [ %var_2_653, %var_2_676 ]
%var_2_682 = phi %struct.Memory* [ %var_2_665, %var_2_664 ], [ %MEMORY.2, %var_2_676 ]
%var_2_683 = or i8 %var_2_679, %var_2_680
%var_2_684 = icmp ne i8 %var_2_683, 0
; Matched:  %.v32 = select i1 %var_2_322, i64 45, i64 6
; %.v27 = select i1 %var_2_684, i64 45, i64 6
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_319, %.v32
; %var_2_685 = add i64 %var_2_681, %.v27
; Matched:\<badref\>:  store i64 %var_2_323, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_685, i64* %var_2_3, align 8
br i1 %var_2_684, label %block_.L_402cc1, label %block_402c9a

block_402c9a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
%var_2_686 = load i64, i64* %RBP.i, align 8
%var_2_687 = add i64 %var_2_686, -28
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_323, 3
; %var_2_688 = add i64 %var_2_685, 3
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_688, i64* %var_2_3, align 8
%var_2_689 = inttoptr i64 %var_2_687 to i32*
%var_2_690 = load i32, i32* %var_2_689, align 4
; Matched:%var_2_510:  %var_2_510 = zext i32 %var_2_509 to i64
; %var_2_691 = zext i32 %var_2_690 to i64
; Matched:\<badref\>:  store i64 %var_2_510, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_691, i64* %RAX.i91, align 8
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_135, -36
; %var_2_692 = add i64 %var_2_686, -36
; Matched:%var_2_211:  %var_2_211 = add i64 %var_2_323, 6
; %var_2_693 = add i64 %var_2_685, 6
; Matched:\<badref\>:  store i64 %var_2_211, i64* %PC, align 8
; store i64 %var_2_693, i64* %var_2_3, align 8
; Matched:%var_2_212:  %var_2_212 = inttoptr i64 %var_2_210 to i32*
; %var_2_694 = inttoptr i64 %var_2_692 to i32*
; Matched:\<badref\>:  store i32 %var_2_208, i32* %var_2_212, align 4
; store i32 %var_2_690, i32* %var_2_694, align 4
%var_2_695 = load i64, i64* %RBP.i, align 8
%var_2_696 = add i64 %var_2_695, -16
%var_2_697 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_33:  %var_2_33 = add i64 %var_2_32, 4
; %var_2_698 = add i64 %var_2_697, 4
; Matched:\<badref\>:  store i64 %var_2_33, i64* %PC, align 8
; store i64 %var_2_698, i64* %var_2_3, align 8
%var_2_699 = inttoptr i64 %var_2_696 to i64*
%var_2_700 = load i64, i64* %var_2_699, align 8
; Matched:\<badref\>:  store i64 %var_2_218, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_700, i64* %RCX.i62, align 8
%var_2_701 = add i64 %var_2_695, -28
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_215, 8
; %var_2_702 = add i64 %var_2_697, 8
; Matched:\<badref\>:  store i64 %var_2_220, i64* %PC, align 8
; store i64 %var_2_702, i64* %var_2_3, align 8
%var_2_703 = inttoptr i64 %var_2_701 to i32*
%var_2_704 = load i32, i32* %var_2_703, align 4
%var_2_705 = sext i32 %var_2_704 to i64
; Matched:\<badref\>:  store i64 %var_2_223, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_705, i64* %RDX.i32, align 8
%var_2_706 = shl nsw i64 %var_2_705, 2
%var_2_707 = add i64 %var_2_706, %var_2_700
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_146, 13
; %var_2_708 = add i64 %var_2_697, 13
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_708, i64* %var_2_3, align 8
%var_2_709 = inttoptr i64 %var_2_707 to float*
%var_2_710 = load float, float* %var_2_709, align 4
%var_2_711 = fpext float %var_2_710 to double
store double %var_2_711, double* %var_2_508, align 1
%var_2_712 = add i64 %var_2_697, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 13)
%var_2_713 = add i64 %var_2_697, 20
store i64 %var_2_713, i64* %var_2_3, align 8
%var_2_714 = inttoptr i64 %var_2_712 to i32*
%var_2_715 = load i32, i32* %var_2_714, align 4
%var_2_716 = add i64 %var_2_697, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 17)
%var_2_717 = inttoptr i64 %var_2_716 to i32*
%var_2_718 = load i32, i32* %var_2_717, align 4
%var_2_719 = add i64 %var_2_697, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 21)
%var_2_720 = inttoptr i64 %var_2_719 to i32*
%var_2_721 = load i32, i32* %var_2_720, align 4
%var_2_722 = add i64 %var_2_697, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 25)
%var_2_723 = inttoptr i64 %var_2_722 to i32*
%var_2_724 = load i32, i32* %var_2_723, align 4
store i32 %var_2_715, i32* %var_2_524, align 1
store i32 %var_2_718, i32* %var_2_526, align 1
store i32 %var_2_721, i32* %var_2_528, align 1
store i32 %var_2_724, i32* %var_2_530, align 1
; Matched:%var_2_234:  %var_2_234 = bitcast double %var_2_229 to i64
; %var_2_725 = bitcast double %var_2_711 to i64
; Matched:%var_2_358:  %var_2_358 = load i64, i64* %var_2_357, align 1
; %var_2_726 = load i64, i64* %var_2_532, align 1
; Matched:%var_2_276:  %var_2_276 = load i64, i64* %var_2_359, align 1
; %var_2_727 = load i64, i64* %var_2_534, align 1
; Matched:%var_2_361:  %var_2_361 = load i64, i64* %var_2_352, align 1
; %var_2_728 = load i64, i64* %var_2_527, align 1
; Matched:%var_2_238:  %var_2_238 = and i64 %var_2_236, %var_2_234
; %var_2_729 = and i64 %var_2_727, %var_2_725
; Matched:%var_2_90:  %var_2_90 = and i64 %var_2_88, %var_2_86
; %var_2_730 = and i64 %var_2_728, %var_2_726
; Matched:%var_2_240:  %var_2_240 = trunc i64 %var_2_238 to i32
; %var_2_731 = trunc i64 %var_2_729 to i32
; Matched:%var_2_281:  %var_2_281 = lshr i64 %var_2_278, 32
; %var_2_732 = lshr i64 %var_2_729, 32
; Matched:%var_2_242:  %var_2_242 = trunc i64 %var_2_241 to i32
; %var_2_733 = trunc i64 %var_2_732 to i32
; Matched:\<badref\>:  store i32 %var_2_280, i32* %var_2_367, align 1, !tbaa !1286
; store i32 %var_2_731, i32* %var_2_542, align 1
; Matched:\<badref\>:  store i32 %var_2_282, i32* %var_2_369, align 1, !tbaa !1286
; store i32 %var_2_733, i32* %var_2_544, align 1
; Matched:%var_2_243:  %var_2_243 = trunc i64 %var_2_239 to i32
; %var_2_734 = trunc i64 %var_2_730 to i32
; Matched:\<badref\>:  store i32 %var_2_283, i32* %var_2_371, align 1, !tbaa !1286
; store i32 %var_2_734, i32* %var_2_546, align 1
; Matched:%var_2_284:  %var_2_284 = lshr i64 %var_2_279, 32
; %var_2_735 = lshr i64 %var_2_730, 32
; Matched:%var_2_285:  %var_2_285 = trunc i64 %var_2_284 to i32
; %var_2_736 = trunc i64 %var_2_735 to i32
; Matched:\<badref\>:  store i32 %var_2_96, i32* %var_2_443, align 1, !tbaa !1286
; store i32 %var_2_736, i32* %var_2_550, align 1
%var_2_737 = load <2 x i32>, <2 x i32>* %var_2_551, align 1
%var_2_738 = load <2 x i32>, <2 x i32>* %var_2_553, align 1
%.cast9 = bitcast <2 x i32> %var_2_737 to double
; Matched:%var_2_448:  %var_2_448 = fptrunc double %.cast to float
; %var_2_739 = fptrunc double %.cast9 to float
; Matched:\<badref\>:  store float %var_2_248, float* %var_2_381, align 1, !tbaa !1284
; store float %var_2_739, float* %var_2_556, align 1
%var_2_740 = extractelement <2 x i32> %var_2_737, i32 1
; Matched:\<badref\>:  store i32 %var_2_180, i32* %var_2_437, align 1, !tbaa !1284
; store i32 %var_2_740, i32* %var_2_544, align 1
%var_2_741 = extractelement <2 x i32> %var_2_738, i32 0
; Matched:\<badref\>:  store i32 %var_2_181, i32* %var_2_439, align 1, !tbaa !1284
; store i32 %var_2_741, i32* %var_2_546, align 1
%var_2_742 = extractelement <2 x i32> %var_2_738, i32 1
; Matched:\<badref\>:  store i32 %var_2_182, i32* %var_2_443, align 1, !tbaa !1284
; store i32 %var_2_742, i32* %var_2_550, align 1
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_144, -24
; %var_2_743 = add i64 %var_2_695, -24
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_146, 33
; %var_2_744 = add i64 %var_2_697, 33
; Matched:\<badref\>:  store i64 %var_2_253, i64* %PC, align 8
; store i64 %var_2_744, i64* %var_2_3, align 8
%var_2_745 = load <2 x float>, <2 x float>* %var_2_562, align 1
%var_2_746 = extractelement <2 x float> %var_2_745, i32 0
; Matched:%var_2_187:  %var_2_187 = inttoptr i64 %var_2_183 to float*
; %var_2_747 = inttoptr i64 %var_2_743 to float*
; Matched:\<badref\>:  store float %var_2_186, float* %var_2_187, align 4
; store float %var_2_746, float* %var_2_747, align 4
; Matched:  %.pre25 = load i64, i64* %PC, align 8
; %.pre20 = load i64, i64* %var_2_3, align 8
  br label %block_.L_402cc1

block_.L_402cc1:                                  ; preds = %block_402c9a, %routine_ucomisd__xmm1___xmm0.exit
; Matched:%var_2_568:  %var_2_568 = phi i64 [ %var_2_323, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %.pre25, %block_402c9a ]
; %var_2_748 = phi i64 [ %.pre20, %block_402c9a ], [ %var_2_685, %routine_ucomisd__xmm1___xmm0.exit ]
; Matched:%var_2_717:  %var_2_717 = load i64, i64* %RBP, align 8
; %var_2_749 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_718:  %var_2_718 = add i64 %var_2_717, -28
; %var_2_750 = add i64 %var_2_749, -28
; Matched:%var_2_571:  %var_2_571 = add i64 %var_2_568, 8
; %var_2_751 = add i64 %var_2_748, 8
; Matched:\<badref\>:  store i64 %var_2_571, i64* %PC, align 8
; store i64 %var_2_751, i64* %var_2_3, align 8
; Matched:%var_2_572:  %var_2_572 = inttoptr i64 %var_2_570 to i32*
; %var_2_752 = inttoptr i64 %var_2_750 to i32*
; Matched:%var_2_573:  %var_2_573 = load i32, i32* %var_2_572, align 4
; %var_2_753 = load i32, i32* %var_2_752, align 4
; Matched:%var_2_574:  %var_2_574 = add i32 %var_2_573, 1
; %var_2_754 = add i32 %var_2_753, 1
; Matched:%var_2_724:  %var_2_724 = zext i32 %var_2_723 to i64
; %var_2_755 = zext i32 %var_2_754 to i64
; Matched:\<badref\>:  store i64 %var_2_724, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_755, i64* %RAX.i91, align 8
; Matched:%var_2_725:  %var_2_725 = icmp eq i32 %var_2_722, -1
; %var_2_756 = icmp eq i32 %var_2_753, -1
; Matched:%var_2_726:  %var_2_726 = icmp eq i32 %var_2_723, 0
; %var_2_757 = icmp eq i32 %var_2_754, 0
; Matched:%var_2_578:  %var_2_578 = or i1 %var_2_576, %var_2_577
; %var_2_758 = or i1 %var_2_756, %var_2_757
; Matched:%var_2_579:  %var_2_579 = zext i1 %var_2_578 to i8
; %var_2_759 = zext i1 %var_2_758 to i8
; Matched:\<badref\>:  store i8 %var_2_579, i8* %var_2_39, align 1, !tbaa !1265
; store i8 %var_2_759, i8* %var_2_38, align 1
; Matched:%var_2_580:  %var_2_580 = and i32 %var_2_574, 255
; %var_2_760 = and i32 %var_2_754, 255
; Matched:%var_2_730:  %var_2_730 = tail call i32 @llvm.ctpop.i32(i32 %var_2_729) #12
; %var_2_761 = tail call i32 @llvm.ctpop.i32(i32 %var_2_760)
; Matched:%var_2_731:  %var_2_731 = trunc i32 %var_2_730 to i8
; %var_2_762 = trunc i32 %var_2_761 to i8
; Matched:%var_2_732:  %var_2_732 = and i8 %var_2_731, 1
; %var_2_763 = and i8 %var_2_762, 1
; Matched:%var_2_733:  %var_2_733 = xor i8 %var_2_732, 1
; %var_2_764 = xor i8 %var_2_763, 1
; Matched:\<badref\>:  store i8 %var_2_584, i8* %var_2_45, align 1, !tbaa !1279
; store i8 %var_2_764, i8* %var_2_44, align 1
; Matched:%var_2_585:  %var_2_585 = xor i32 %var_2_574, %var_2_573
; %var_2_765 = xor i32 %var_2_754, %var_2_753
; Matched:%var_2_586:  %var_2_586 = lshr i32 %var_2_585, 4
; %var_2_766 = lshr i32 %var_2_765, 4
; Matched:%var_2_587:  %var_2_587 = trunc i32 %var_2_586 to i8
; %var_2_767 = trunc i32 %var_2_766 to i8
; Matched:%var_2_737:  %var_2_737 = and i8 %var_2_736, 1
; %var_2_768 = and i8 %var_2_767, 1
; Matched:\<badref\>:  store i8 %var_2_737, i8* %var_2_50, align 1, !tbaa !1280
; store i8 %var_2_768, i8* %var_2_49, align 1
; Matched:%var_2_738:  %var_2_738 = zext i1 %var_2_726 to i8
; %var_2_769 = zext i1 %var_2_757 to i8
; Matched:\<badref\>:  store i8 %var_2_738, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_769, i8* %var_2_52, align 1
; Matched:%var_2_590:  %var_2_590 = lshr i32 %var_2_574, 31
; %var_2_770 = lshr i32 %var_2_754, 31
; Matched:%var_2_591:  %var_2_591 = trunc i32 %var_2_590 to i8
; %var_2_771 = trunc i32 %var_2_770 to i8
; Matched:\<badref\>:  store i8 %var_2_591, i8* %var_2_56, align 1, !tbaa !1282
; store i8 %var_2_771, i8* %var_2_55, align 1
; Matched:%var_2_592:  %var_2_592 = lshr i32 %var_2_573, 31
; %var_2_772 = lshr i32 %var_2_753, 31
; Matched:%var_2_742:  %var_2_742 = xor i32 %var_2_739, %var_2_741
; %var_2_773 = xor i32 %var_2_770, %var_2_772
; Matched:%var_2_743:  %var_2_743 = add nuw nsw i32 %var_2_742, %var_2_739
; %var_2_774 = add nuw nsw i32 %var_2_773, %var_2_770
; Matched:%var_2_744:  %var_2_744 = icmp eq i32 %var_2_743, 2
; %var_2_775 = icmp eq i32 %var_2_774, 2
; Matched:%var_2_745:  %var_2_745 = zext i1 %var_2_744 to i8
; %var_2_776 = zext i1 %var_2_775 to i8
; Matched:\<badref\>:  store i8 %var_2_596, i8* %var_2_62, align 1, !tbaa !1283
; store i8 %var_2_776, i8* %var_2_61, align 1
; Matched:%var_2_597:  %var_2_597 = add i64 %var_2_568, 14
; %var_2_777 = add i64 %var_2_748, 14
; Matched:\<badref\>:  store i64 %var_2_597, i64* %PC, align 8
; store i64 %var_2_777, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_574, i32* %var_2_572, align 4
; store i32 %var_2_754, i32* %var_2_752, align 4
%var_2_778 = load i64, i64* %var_2_3, align 8
%var_2_779 = add i64 %var_2_778, -104
; Matched:\<badref\>:  store i64 %var_2_599, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_779, i64* %var_2_3, align 8
  br label %block_.L_402c67

block_.L_402cd4:                                  ; preds = %block_.L_402c67
%var_2_780 = add i64 %var_2_609, 5
store i64 %var_2_780, i64* %var_2_3, align 8
  br label %block_.L_402cd9

block_.L_402cd9:                                  ; preds = %block_.L_402cd4, %block_.L_402c38
  %RAX.i9.pre-phi = phi i64* [ %RAX.i91, %block_.L_402cd4 ], [ %RAX.i198, %block_.L_402c38 ]
%var_2_781 = phi i64 [ %var_2_573, %block_.L_402cd4 ], [ %var_2_244, %block_.L_402c38 ]
%storemerge = phi i64 [ %var_2_780, %block_.L_402cd4 ], [ %var_2_492, %block_.L_402c38 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_402cd4 ], [ %MEMORY.0, %block_.L_402c38 ]
%var_2_782 = add i64 %var_2_781, -36
%var_2_783 = add i64 %storemerge, 3
store i64 %var_2_783, i64* %var_2_3, align 8
%var_2_784 = inttoptr i64 %var_2_782 to i32*
%var_2_785 = load i32, i32* %var_2_784, align 4
%var_2_786 = zext i32 %var_2_785 to i64
store i64 %var_2_786, i64* %RAX.i9.pre-phi, align 8
; Matched:%var_2_675:  %var_2_675 = add i64 %var_2_667, -4
; %var_2_787 = add i64 %var_2_781, -4
%var_2_788 = add i64 %storemerge, 6
store i64 %var_2_788, i64* %var_2_3, align 8
; Matched:%var_2_677:  %var_2_677 = inttoptr i64 %var_2_675 to i32*
; %var_2_789 = inttoptr i64 %var_2_787 to i32*
; Matched:\<badref\>:  store i32 %var_2_673, i32* %var_2_677, align 4
; store i32 %var_2_785, i32* %var_2_789, align 4
; Matched:  %.pre26 = load i64, i64* %PC, align 8
; %.pre21 = load i64, i64* %var_2_3, align 8
  br label %block_.L_402cdf

block_.L_402cdf:                                  ; preds = %block_.L_402cd9, %block_402b7e, %block_402b68
; Matched:%var_2_188:  %var_2_188 = phi i64 [ %.pre26, %block_402cd9 ], [ %var_2_328, %block_402b7e ], [ %var_2_604, %block_402b68 ]
; %var_2_790 = phi i64 [ %.pre21, %block_.L_402cd9 ], [ %var_2_98, %block_402b7e ], [ %var_2_69, %block_402b68 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_402cd9 ], [ %2, %block_402b7e ], [ %2, %block_402b68 ]
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %RBP, align 8
; %var_2_791 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, -4
; %var_2_792 = add i64 %var_2_791, -4
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_188, 3
; %var_2_793 = add i64 %var_2_790, 3
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_793, i64* %var_2_3, align 8
; Matched:%var_2_192:  %var_2_192 = inttoptr i64 %var_2_190 to i32*
; %var_2_794 = inttoptr i64 %var_2_792 to i32*
; Matched:%var_2_193:  %var_2_193 = load i32, i32* %var_2_192, align 4
; %var_2_795 = load i32, i32* %var_2_794, align 4
; Matched:%var_2_194:  %var_2_194 = zext i32 %var_2_193 to i64
; %var_2_796 = zext i32 %var_2_795 to i64
; Matched:\<badref\>:  store i64 %var_2_194, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_796, i64* %RAX.i, align 8
; Matched:%var_2_195:  %var_2_195 = add i64 %var_2_188, 4
; %var_2_797 = add i64 %var_2_790, 4
; Matched:\<badref\>:  store i64 %var_2_195, i64* %PC, align 8
; store i64 %var_2_797, i64* %var_2_3, align 8
; Matched:%var_2_196:  %var_2_196 = load i64, i64* %var_2_9, align 8, !tbaa !1261
; %var_2_798 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_196, 8
; %var_2_799 = add i64 %var_2_798, 8
; Matched:%var_2_198:  %var_2_198 = inttoptr i64 %var_2_196 to i64*
; %var_2_800 = inttoptr i64 %var_2_798 to i64*
; Matched:%var_2_199:  %var_2_199 = load i64, i64* %var_2_198, align 8
; %var_2_801 = load i64, i64* %var_2_800, align 8
; Matched:\<badref\>:  store i64 %var_2_199, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_801, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_9, align 8, !tbaa !1261
; store i64 %var_2_799, i64* %var_2_6, align 8
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_188, 5
; %var_2_802 = add i64 %var_2_790, 5
; Matched:\<badref\>:  store i64 %var_2_200, i64* %PC, align 8
; store i64 %var_2_802, i64* %var_2_3, align 8
; Matched:%var_2_201:  %var_2_201 = inttoptr i64 %var_2_197 to i64*
; %var_2_803 = inttoptr i64 %var_2_799 to i64*
; Matched:%var_2_202:  %var_2_202 = load i64, i64* %var_2_201, align 8
; %var_2_804 = load i64, i64* %var_2_803, align 8
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_804, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = add i64 %var_2_196, 16
; %var_2_805 = add i64 %var_2_798, 16
; Matched:\<badref\>:  store i64 %var_2_203, i64* %var_2_9, align 8, !tbaa !1261
; store i64 %var_2_805, i64* %var_2_6, align 8
  ret %struct.Memory* %MEMORY.5
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jge_.L_402b74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402b8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_je_.L_402c3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load float, float* %5, align 4
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2f6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x2f6__rip__type* @G_0x2f6__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_402c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2b9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x2b9__rip__type* @G_0x2b9__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_402c21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x28c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x28c__rip__type* @G_0x28c__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_402bc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x24d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x24d__rip__type* @G_0x24d__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402cd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x219__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x219__rip__type* @G_0x219__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_402cc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x1ec__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402c67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
