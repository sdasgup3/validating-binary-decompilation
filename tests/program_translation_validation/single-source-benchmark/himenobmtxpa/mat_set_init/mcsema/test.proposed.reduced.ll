; ModuleID = '/tmp/tmpef5gq7yg-query.ll'
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
define %struct.Memory* @mat_set_init(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -16
; %var_2_11 = add i64 %var_2_7, -16
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %RDI, align 8
; %var_2_12 = load i64, i64* %RDI.i, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_18, 7
; %var_2_13 = add i64 %var_2_10, 7
; Matched:\<badref\>:  store i64 %var_2_14, i64* %PC, align 8
; store i64 %var_2_13, i64* %var_2_3, align 8
; Matched:%var_2_15:  %var_2_15 = inttoptr i64 %var_2_12 to i64*
; %var_2_14 = inttoptr i64 %var_2_11 to i64*
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_15, align 8
; store i64 %var_2_12, i64* %var_2_14, align 8
%var_2_15 = load i64, i64* %RBP.i, align 8
%var_2_16 = add i64 %var_2_15, -12
; Matched:%var_2_18:  %var_2_18 = load i64, i64* %PC, align 8
; %var_2_17 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_11, 7
; %var_2_18 = add i64 %var_2_17, 7
; Matched:\<badref\>:  store i64 %var_2_19, i64* %PC, align 8
; store i64 %var_2_18, i64* %var_2_3, align 8
%var_2_19 = inttoptr i64 %var_2_16 to i32*
store i32 0, i32* %var_2_19, align 4
  %RAX.i152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
%var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_27:  %var_2_27 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; %var_2_27 = bitcast [32 x %union.VectorReg]* %var_2_26 to i8*
%var_2_28 = bitcast [32 x %union.VectorReg]* %var_2_26 to <2 x i32>*
; Matched:%var_2_29:  %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_30 = bitcast i64* %var_2_29 to <2 x i32>*
; Matched:%var_2_31:  %var_2_31 = bitcast [32 x %union.VectorReg]* %var_2_3 to float*
; %var_2_31 = bitcast [32 x %union.VectorReg]* %var_2_26 to float*
; Matched:%var_2_32:  %var_2_32 = getelementptr inbounds i8, i8* %var_2_27, i64 4
; %var_2_32 = getelementptr inbounds i8, i8* %var_2_27, i64 4
; Matched:%var_2_33:  %var_2_33 = bitcast i8* %var_2_32 to i32*
; %var_2_33 = bitcast i8* %var_2_32 to i32*
; Matched:%var_2_34:  %var_2_34 = bitcast i64* %var_2_29 to i32*
; %var_2_34 = bitcast i64* %var_2_29 to i32*
; Matched:%var_2_35:  %var_2_35 = getelementptr inbounds i8, i8* %var_2_27, i64 12
; %var_2_35 = getelementptr inbounds i8, i8* %var_2_27, i64 12
; Matched:%var_2_36:  %var_2_36 = bitcast i8* %var_2_35 to i32*
; %var_2_36 = bitcast i8* %var_2_35 to i32*
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_37:  %var_2_37 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_38 = bitcast %union.VectorReg* %var_2_37 to i8*
%var_2_39 = bitcast %union.VectorReg* %var_2_37 to <2 x i32>*
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_41 = bitcast i64* %var_2_40 to <2 x i32>*
; Matched:%var_2_41:  %var_2_41 = bitcast %union.VectorReg* %var_2_4 to float*
; %var_2_42 = bitcast %union.VectorReg* %var_2_37 to float*
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds i8, i8* %var_2_37, i64 4
; %var_2_43 = getelementptr inbounds i8, i8* %var_2_38, i64 4
; Matched:%var_2_43:  %var_2_43 = bitcast i8* %var_2_42 to i32*
; %var_2_44 = bitcast i8* %var_2_43 to i32*
; Matched:%var_2_44:  %var_2_44 = bitcast i64* %var_2_39 to i32*
; %var_2_45 = bitcast i64* %var_2_40 to i32*
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds i8, i8* %var_2_37, i64 12
; %var_2_46 = getelementptr inbounds i8, i8* %var_2_38, i64 12
; Matched:%var_2_46:  %var_2_46 = bitcast i8* %var_2_45 to i32*
; %var_2_47 = bitcast i8* %var_2_46 to i32*
%var_2_48 = bitcast [32 x %union.VectorReg]* %var_2_26 to <2 x float>*
%var_2_49 = bitcast %union.VectorReg* %var_2_37 to <2 x float>*
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400b2f

block_.L_400b2f:                                  ; preds = %block_.L_400c04, %entry
; Matched:%var_2_444:  %var_2_444 = phi i64 [ %var_2_518, %block_400c04 ], [ %.pre, %block_400b20 ]
; %var_2_50 = phi i64 [ %var_2_519, %block_.L_400c04 ], [ %.pre, %entry ]
%var_2_51 = load i64, i64* %RBP.i, align 8
%var_2_52 = add i64 %var_2_51, -12
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_444, 3
; %var_2_53 = add i64 %var_2_50, 3
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_53, i64* %var_2_3, align 8
%var_2_54 = inttoptr i64 %var_2_52 to i32*
%var_2_55 = load i32, i32* %var_2_54, align 4
; Matched:%var_2_128:  %var_2_128 = zext i32 %var_2_127 to i64
; %var_2_56 = zext i32 %var_2_55 to i64
; Matched:\<badref\>:  store i64 %var_2_128, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_56, i64* %RAX.i152, align 8
%var_2_57 = add i64 %var_2_51, -8
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_444, 7
; %var_2_58 = add i64 %var_2_50, 7
; Matched:\<badref\>:  store i64 %var_2_452, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
%var_2_59 = inttoptr i64 %var_2_57 to i64*
%var_2_60 = load i64, i64* %var_2_59, align 8
; Matched:\<badref\>:  store i64 %var_2_183, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %RCX.i149, align 8
%var_2_61 = add i64 %var_2_60, 12
; Matched:%var_2_456:  %var_2_456 = add i64 %var_2_444, 10
; %var_2_62 = add i64 %var_2_50, 10
; Matched:\<badref\>:  store i64 %var_2_456, i64* %PC, align 8
; store i64 %var_2_62, i64* %var_2_3, align 8
%var_2_63 = inttoptr i64 %var_2_61 to i32*
%var_2_64 = load i32, i32* %var_2_63, align 4
%var_2_65 = sub i32 %var_2_55, %var_2_64
; Matched:%var_2_460:  %var_2_460 = icmp ult i32 %var_2_449, %var_2_458
; %var_2_66 = icmp ult i32 %var_2_55, %var_2_64
; Matched:%var_2_461:  %var_2_461 = zext i1 %var_2_460 to i8
; %var_2_67 = zext i1 %var_2_66 to i8
; Matched:\<badref\>:  store i8 %var_2_461, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_67, i8* %var_2_20, align 1
; Matched:%var_2_462:  %var_2_462 = and i32 %var_2_459, 255
; %var_2_68 = and i32 %var_2_65, 255
; Matched:%var_2_463:  %var_2_463 = tail call i32 @llvm.ctpop.i32(i32 %var_2_462) #12
; %var_2_69 = tail call i32 @llvm.ctpop.i32(i32 %var_2_68)
; Matched:%var_2_464:  %var_2_464 = trunc i32 %var_2_463 to i8
; %var_2_70 = trunc i32 %var_2_69 to i8
; Matched:%var_2_465:  %var_2_465 = and i8 %var_2_464, 1
; %var_2_71 = and i8 %var_2_70, 1
; Matched:%var_2_466:  %var_2_466 = xor i8 %var_2_465, 1
; %var_2_72 = xor i8 %var_2_71, 1
; Matched:\<badref\>:  store i8 %var_2_466, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_72, i8* %var_2_21, align 1
; Matched:%var_2_467:  %var_2_467 = xor i32 %var_2_458, %var_2_449
; %var_2_73 = xor i32 %var_2_64, %var_2_55
; Matched:%var_2_468:  %var_2_468 = xor i32 %var_2_467, %var_2_459
; %var_2_74 = xor i32 %var_2_73, %var_2_65
; Matched:%var_2_469:  %var_2_469 = lshr i32 %var_2_468, 4
; %var_2_75 = lshr i32 %var_2_74, 4
; Matched:%var_2_470:  %var_2_470 = trunc i32 %var_2_469 to i8
; %var_2_76 = trunc i32 %var_2_75 to i8
; Matched:%var_2_471:  %var_2_471 = and i8 %var_2_470, 1
; %var_2_77 = and i8 %var_2_76, 1
; Matched:\<badref\>:  store i8 %var_2_471, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_77, i8* %var_2_22, align 1
; Matched:%var_2_472:  %var_2_472 = icmp eq i32 %var_2_459, 0
; %var_2_78 = icmp eq i32 %var_2_65, 0
; Matched:%var_2_473:  %var_2_473 = zext i1 %var_2_472 to i8
; %var_2_79 = zext i1 %var_2_78 to i8
; Matched:\<badref\>:  store i8 %var_2_473, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_79, i8* %var_2_23, align 1
%var_2_80 = lshr i32 %var_2_65, 31
%var_2_81 = trunc i32 %var_2_80 to i8
; Matched:\<badref\>:  store i8 %var_2_475, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_81, i8* %var_2_24, align 1
%var_2_82 = lshr i32 %var_2_55, 31
%var_2_83 = lshr i32 %var_2_64, 31
%var_2_84 = xor i32 %var_2_83, %var_2_82
%var_2_85 = xor i32 %var_2_80, %var_2_82
%var_2_86 = add nuw nsw i32 %var_2_85, %var_2_84
%var_2_87 = icmp eq i32 %var_2_86, 2
; Matched:%var_2_482:  %var_2_482 = zext i1 %var_2_481 to i8
; %var_2_88 = zext i1 %var_2_87 to i8
; Matched:\<badref\>:  store i8 %var_2_482, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_88, i8* %var_2_25, align 1
%var_2_89 = icmp ne i8 %var_2_81, 0
%var_2_90 = xor i1 %var_2_89, %var_2_87
; Matched:  %.v10 = select i1 %var_2_484, i64 16, i64 232
; %.v10 = select i1 %var_2_90, i64 16, i64 232
; Matched:%var_2_485:  %var_2_485 = add i64 %var_2_444, %.v10
; %var_2_91 = add i64 %var_2_50, %.v10
; Matched:\<badref\>:  store i64 %var_2_485, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_91, i64* %var_2_3, align 8
br i1 %var_2_90, label %block_400b3f, label %block_.L_400c17

block_400b3f:                                     ; preds = %block_.L_400b2f
%var_2_92 = add i64 %var_2_51, -16
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_485, 7
; %var_2_93 = add i64 %var_2_91, 7
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_93, i64* %var_2_3, align 8
%var_2_94 = inttoptr i64 %var_2_92 to i32*
store i32 0, i32* %var_2_94, align 4
; Matched:  %.pre7 = load i64, i64* %PC, align 8
; %.pre7 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400b46

block_.L_400b46:                                  ; preds = %block_.L_400bf1, %block_400b3f
; Matched:%var_2_402:  %var_2_402 = phi i64 [ %var_2_123, %block_400bf1 ], [ %.pre7, %block_400b3f ]
; %var_2_95 = phi i64 [ %var_2_489, %block_.L_400bf1 ], [ %.pre7, %block_400b3f ]
%var_2_96 = load i64, i64* %RBP.i, align 8
%var_2_97 = add i64 %var_2_96, -16
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_402, 3
; %var_2_98 = add i64 %var_2_95, 3
; Matched:\<badref\>:  store i64 %var_2_405, i64* %PC, align 8
; store i64 %var_2_98, i64* %var_2_3, align 8
%var_2_99 = inttoptr i64 %var_2_97 to i32*
%var_2_100 = load i32, i32* %var_2_99, align 4
; Matched:%var_2_408:  %var_2_408 = zext i32 %var_2_407 to i64
; %var_2_101 = zext i32 %var_2_100 to i64
; Matched:\<badref\>:  store i64 %var_2_408, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_101, i64* %RAX.i152, align 8
%var_2_102 = add i64 %var_2_96, -8
; Matched:%var_2_410:  %var_2_410 = add i64 %var_2_402, 7
; %var_2_103 = add i64 %var_2_95, 7
; Matched:\<badref\>:  store i64 %var_2_410, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i64*
%var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:\<badref\>:  store i64 %var_2_227, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_105, i64* %RCX.i149, align 8
%var_2_106 = add i64 %var_2_105, 16
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_402, 10
; %var_2_107 = add i64 %var_2_95, 10
; Matched:\<badref\>:  store i64 %var_2_414, i64* %PC, align 8
; store i64 %var_2_107, i64* %var_2_3, align 8
%var_2_108 = inttoptr i64 %var_2_106 to i32*
%var_2_109 = load i32, i32* %var_2_108, align 4
%var_2_110 = sub i32 %var_2_100, %var_2_109
; Matched:%var_2_418:  %var_2_418 = icmp ult i32 %var_2_407, %var_2_416
; %var_2_111 = icmp ult i32 %var_2_100, %var_2_109
; Matched:%var_2_419:  %var_2_419 = zext i1 %var_2_418 to i8
; %var_2_112 = zext i1 %var_2_111 to i8
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_112, i8* %var_2_20, align 1
; Matched:%var_2_420:  %var_2_420 = and i32 %var_2_417, 255
; %var_2_113 = and i32 %var_2_110, 255
; Matched:%var_2_421:  %var_2_421 = tail call i32 @llvm.ctpop.i32(i32 %var_2_420) #12
; %var_2_114 = tail call i32 @llvm.ctpop.i32(i32 %var_2_113)
; Matched:%var_2_422:  %var_2_422 = trunc i32 %var_2_421 to i8
; %var_2_115 = trunc i32 %var_2_114 to i8
; Matched:%var_2_423:  %var_2_423 = and i8 %var_2_422, 1
; %var_2_116 = and i8 %var_2_115, 1
; Matched:%var_2_424:  %var_2_424 = xor i8 %var_2_423, 1
; %var_2_117 = xor i8 %var_2_116, 1
; Matched:\<badref\>:  store i8 %var_2_424, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_117, i8* %var_2_21, align 1
; Matched:%var_2_425:  %var_2_425 = xor i32 %var_2_416, %var_2_407
; %var_2_118 = xor i32 %var_2_109, %var_2_100
; Matched:%var_2_426:  %var_2_426 = xor i32 %var_2_425, %var_2_417
; %var_2_119 = xor i32 %var_2_118, %var_2_110
; Matched:%var_2_427:  %var_2_427 = lshr i32 %var_2_426, 4
; %var_2_120 = lshr i32 %var_2_119, 4
; Matched:%var_2_428:  %var_2_428 = trunc i32 %var_2_427 to i8
; %var_2_121 = trunc i32 %var_2_120 to i8
; Matched:%var_2_429:  %var_2_429 = and i8 %var_2_428, 1
; %var_2_122 = and i8 %var_2_121, 1
; Matched:\<badref\>:  store i8 %var_2_429, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_122, i8* %var_2_22, align 1
; Matched:%var_2_430:  %var_2_430 = icmp eq i32 %var_2_417, 0
; %var_2_123 = icmp eq i32 %var_2_110, 0
; Matched:%var_2_431:  %var_2_431 = zext i1 %var_2_430 to i8
; %var_2_124 = zext i1 %var_2_123 to i8
; Matched:\<badref\>:  store i8 %var_2_431, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_124, i8* %var_2_23, align 1
%var_2_125 = lshr i32 %var_2_110, 31
%var_2_126 = trunc i32 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_433, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_126, i8* %var_2_24, align 1
%var_2_127 = lshr i32 %var_2_100, 31
%var_2_128 = lshr i32 %var_2_109, 31
%var_2_129 = xor i32 %var_2_128, %var_2_127
%var_2_130 = xor i32 %var_2_125, %var_2_127
%var_2_131 = add nuw nsw i32 %var_2_130, %var_2_129
%var_2_132 = icmp eq i32 %var_2_131, 2
; Matched:%var_2_440:  %var_2_440 = zext i1 %var_2_439 to i8
; %var_2_133 = zext i1 %var_2_132 to i8
; Matched:\<badref\>:  store i8 %var_2_440, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_133, i8* %var_2_25, align 1
%var_2_134 = icmp ne i8 %var_2_126, 0
%var_2_135 = xor i1 %var_2_134, %var_2_132
; Matched:  %.v = select i1 %var_2_442, i64 16, i64 190
; %.v = select i1 %var_2_135, i64 16, i64 190
; Matched:%var_2_443:  %var_2_443 = add i64 %var_2_402, %.v
; %var_2_136 = add i64 %var_2_95, %.v
; Matched:\<badref\>:  store i64 %var_2_443, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_136, i64* %var_2_3, align 8
br i1 %var_2_135, label %block_400b56, label %block_.L_400c04

block_400b56:                                     ; preds = %block_.L_400b46
%var_2_137 = add i64 %var_2_96, -20
; Matched:%var_2_487:  %var_2_487 = add i64 %var_2_443, 7
; %var_2_138 = add i64 %var_2_136, 7
; Matched:\<badref\>:  store i64 %var_2_487, i64* %PC, align 8
; store i64 %var_2_138, i64* %var_2_3, align 8
%var_2_139 = inttoptr i64 %var_2_137 to i32*
store i32 0, i32* %var_2_139, align 4
; Matched:  %.pre8 = load i64, i64* %PC, align 8
; %.pre8 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400b5d

block_.L_400b5d:                                  ; preds = %block_400b6d, %block_400b56
; Matched:%var_2_52:  %var_2_52 = phi i64 [ %.pre8, %block_400b56 ], [ %var_2_401, %block_400b6d ]
; %var_2_140 = phi i64 [ %var_2_459, %block_400b6d ], [ %.pre8, %block_400b56 ]
%var_2_141 = load i64, i64* %RBP.i, align 8
%var_2_142 = add i64 %var_2_141, -20
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_52, 3
; %var_2_143 = add i64 %var_2_140, 3
; Matched:\<badref\>:  store i64 %var_2_55, i64* %PC, align 8
; store i64 %var_2_143, i64* %var_2_3, align 8
%var_2_144 = inttoptr i64 %var_2_142 to i32*
%var_2_145 = load i32, i32* %var_2_144, align 4
; Matched:%var_2_58:  %var_2_58 = zext i32 %var_2_57 to i64
; %var_2_146 = zext i32 %var_2_145 to i64
; Matched:\<badref\>:  store i64 %var_2_58, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_146, i64* %RAX.i152, align 8
%var_2_147 = add i64 %var_2_141, -8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_52, 7
; %var_2_148 = add i64 %var_2_140, 7
; Matched:\<badref\>:  store i64 %var_2_60, i64* %PC, align 8
; store i64 %var_2_148, i64* %var_2_3, align 8
%var_2_149 = inttoptr i64 %var_2_147 to i64*
%var_2_150 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_454, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_150, i64* %RCX.i149, align 8
%var_2_151 = add i64 %var_2_150, 20
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_52, 10
; %var_2_152 = add i64 %var_2_140, 10
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
%var_2_153 = inttoptr i64 %var_2_151 to i32*
%var_2_154 = load i32, i32* %var_2_153, align 4
%var_2_155 = sub i32 %var_2_145, %var_2_154
; Matched:%var_2_68:  %var_2_68 = icmp ult i32 %var_2_57, %var_2_66
; %var_2_156 = icmp ult i32 %var_2_145, %var_2_154
; Matched:%var_2_69:  %var_2_69 = zext i1 %var_2_68 to i8
; %var_2_157 = zext i1 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_69, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_157, i8* %var_2_20, align 1
; Matched:%var_2_70:  %var_2_70 = and i32 %var_2_67, 255
; %var_2_158 = and i32 %var_2_155, 255
; Matched:%var_2_71:  %var_2_71 = tail call i32 @llvm.ctpop.i32(i32 %var_2_70) #12
; %var_2_159 = tail call i32 @llvm.ctpop.i32(i32 %var_2_158)
; Matched:%var_2_72:  %var_2_72 = trunc i32 %var_2_71 to i8
; %var_2_160 = trunc i32 %var_2_159 to i8
; Matched:%var_2_73:  %var_2_73 = and i8 %var_2_72, 1
; %var_2_161 = and i8 %var_2_160, 1
; Matched:%var_2_74:  %var_2_74 = xor i8 %var_2_73, 1
; %var_2_162 = xor i8 %var_2_161, 1
; Matched:\<badref\>:  store i8 %var_2_74, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_162, i8* %var_2_21, align 1
; Matched:%var_2_75:  %var_2_75 = xor i32 %var_2_66, %var_2_57
; %var_2_163 = xor i32 %var_2_154, %var_2_145
; Matched:%var_2_76:  %var_2_76 = xor i32 %var_2_75, %var_2_67
; %var_2_164 = xor i32 %var_2_163, %var_2_155
; Matched:%var_2_77:  %var_2_77 = lshr i32 %var_2_76, 4
; %var_2_165 = lshr i32 %var_2_164, 4
; Matched:%var_2_78:  %var_2_78 = trunc i32 %var_2_77 to i8
; %var_2_166 = trunc i32 %var_2_165 to i8
; Matched:%var_2_79:  %var_2_79 = and i8 %var_2_78, 1
; %var_2_167 = and i8 %var_2_166, 1
; Matched:\<badref\>:  store i8 %var_2_79, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_167, i8* %var_2_22, align 1
; Matched:%var_2_80:  %var_2_80 = icmp eq i32 %var_2_67, 0
; %var_2_168 = icmp eq i32 %var_2_155, 0
; Matched:%var_2_81:  %var_2_81 = zext i1 %var_2_80 to i8
; %var_2_169 = zext i1 %var_2_168 to i8
; Matched:\<badref\>:  store i8 %var_2_81, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_169, i8* %var_2_23, align 1
%var_2_170 = lshr i32 %var_2_155, 31
%var_2_171 = trunc i32 %var_2_170 to i8
; Matched:\<badref\>:  store i8 %var_2_83, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_171, i8* %var_2_24, align 1
%var_2_172 = lshr i32 %var_2_145, 31
%var_2_173 = lshr i32 %var_2_154, 31
%var_2_174 = xor i32 %var_2_173, %var_2_172
%var_2_175 = xor i32 %var_2_170, %var_2_172
%var_2_176 = add nuw nsw i32 %var_2_175, %var_2_174
%var_2_177 = icmp eq i32 %var_2_176, 2
; Matched:%var_2_90:  %var_2_90 = zext i1 %var_2_89 to i8
; %var_2_178 = zext i1 %var_2_177 to i8
; Matched:\<badref\>:  store i8 %var_2_90, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_178, i8* %var_2_25, align 1
%var_2_179 = icmp ne i8 %var_2_171, 0
%var_2_180 = xor i1 %var_2_179, %var_2_177
; Matched:  %.v9 = select i1 %var_2_92, i64 16, i64 148
; %.v9 = select i1 %var_2_180, i64 16, i64 148
; Matched:%var_2_93:  %var_2_93 = add i64 %var_2_52, %.v9
; %var_2_181 = add i64 %var_2_140, %.v9
; Matched:\<badref\>:  store i64 %var_2_93, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_181, i64* %var_2_3, align 8
br i1 %var_2_180, label %block_400b6d, label %block_.L_400bf1

block_400b6d:                                     ; preds = %block_.L_400b5d
%var_2_182 = add i64 %var_2_141, -12
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_93, 3
; %var_2_183 = add i64 %var_2_181, 3
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8
; store i64 %var_2_183, i64* %var_2_3, align 8
%var_2_184 = inttoptr i64 %var_2_182 to i32*
%var_2_185 = load i32, i32* %var_2_184, align 4
; Matched:%var_2_450:  %var_2_450 = zext i32 %var_2_449 to i64
; %var_2_186 = zext i32 %var_2_185 to i64
; Matched:\<badref\>:  store i64 %var_2_450, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_186, i64* %RAX.i152, align 8
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_93, 7
; %var_2_187 = add i64 %var_2_181, 7
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8
; store i64 %var_2_187, i64* %var_2_3, align 8
%var_2_188 = load i32, i32* %var_2_184, align 4
%var_2_189 = sext i32 %var_2_185 to i64
%var_2_190 = sext i32 %var_2_188 to i64
%var_2_191 = mul nsw i64 %var_2_190, %var_2_189
%var_2_192 = trunc i64 %var_2_191 to i32
; Matched:%var_2_135:  %var_2_135 = and i64 %var_2_133, 4294967295
; %var_2_193 = and i64 %var_2_191, 4294967295
; Matched:\<badref\>:  store i64 %var_2_135, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_193, i64* %RAX.i152, align 8
%var_2_194 = shl i64 %var_2_191, 32
%var_2_195 = ashr exact i64 %var_2_194, 32
%var_2_196 = icmp ne i64 %var_2_195, %var_2_191
%var_2_197 = zext i1 %var_2_196 to i8
store i8 %var_2_197, i8* %var_2_20, align 1
%var_2_198 = and i32 %var_2_192, 255
%var_2_199 = tail call i32 @llvm.ctpop.i32(i32 %var_2_198)
%var_2_200 = trunc i32 %var_2_199 to i8
%var_2_201 = and i8 %var_2_200, 1
%var_2_202 = xor i8 %var_2_201, 1
store i8 %var_2_202, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
%var_2_203 = lshr i32 %var_2_192, 31
%var_2_204 = trunc i32 %var_2_203 to i8
store i8 %var_2_204, i8* %var_2_24, align 1
store i8 %var_2_197, i8* %var_2_25, align 1
; Matched:%var_2_147:  %var_2_147 = trunc i64 %var_2_133 to i32
; %var_2_205 = trunc i64 %var_2_191 to i32
%var_2_206 = load <2 x i32>, <2 x i32>* %var_2_28, align 1
%var_2_207 = load <2 x i32>, <2 x i32>* %var_2_30, align 1
; Matched:%var_2_150:  %var_2_150 = sitofp i32 %var_2_147 to float
; %var_2_208 = sitofp i32 %var_2_205 to float
; Matched:\<badref\>:  store float %var_2_150, float* %var_2_31, align 1, !tbaa !1284
; store float %var_2_208, float* %var_2_31, align 1
%var_2_209 = extractelement <2 x i32> %var_2_206, i32 1
; Matched:\<badref\>:  store i32 %var_2_151, i32* %var_2_33, align 1, !tbaa !1284
; store i32 %var_2_209, i32* %var_2_33, align 1
%var_2_210 = extractelement <2 x i32> %var_2_207, i32 0
; Matched:\<badref\>:  store i32 %var_2_221, i32* %var_2_34, align 1, !tbaa !1284
; store i32 %var_2_210, i32* %var_2_34, align 1
%var_2_211 = extractelement <2 x i32> %var_2_207, i32 1
; Matched:\<badref\>:  store i32 %var_2_153, i32* %var_2_36, align 1, !tbaa !1284
; store i32 %var_2_211, i32* %var_2_36, align 1
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_93, 15
; %var_2_212 = add i64 %var_2_181, 15
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8
; store i64 %var_2_212, i64* %var_2_3, align 8
%var_2_213 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_412, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_213, i64* %RCX.i149, align 8
%var_2_214 = add i64 %var_2_213, 12
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_93, 18
; %var_2_215 = add i64 %var_2_181, 18
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_215, i64* %var_2_3, align 8
%var_2_216 = inttoptr i64 %var_2_214 to i32*
%var_2_217 = load i32, i32* %var_2_216, align 4
; Matched:%var_2_160:  %var_2_160 = add i32 %var_2_159, -1
; %var_2_218 = add i32 %var_2_217, -1
; Matched:%var_2_161:  %var_2_161 = zext i32 %var_2_160 to i64
; %var_2_219 = zext i32 %var_2_218 to i64
; Matched:\<badref\>:  store i64 %var_2_161, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_219, i64* %RAX.i152, align 8
%var_2_220 = icmp eq i32 %var_2_217, 0
%var_2_221 = zext i1 %var_2_220 to i8
store i8 %var_2_221, i8* %var_2_20, align 1
; Matched:%var_2_164:  %var_2_164 = and i32 %var_2_160, 255
; %var_2_222 = and i32 %var_2_218, 255
; Matched:%var_2_165:  %var_2_165 = tail call i32 @llvm.ctpop.i32(i32 %var_2_164) #12
; %var_2_223 = tail call i32 @llvm.ctpop.i32(i32 %var_2_222)
; Matched:%var_2_166:  %var_2_166 = trunc i32 %var_2_165 to i8
; %var_2_224 = trunc i32 %var_2_223 to i8
; Matched:%var_2_167:  %var_2_167 = and i8 %var_2_166, 1
; %var_2_225 = and i8 %var_2_224, 1
; Matched:%var_2_168:  %var_2_168 = xor i8 %var_2_167, 1
; %var_2_226 = xor i8 %var_2_225, 1
; Matched:\<badref\>:  store i8 %var_2_168, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_226, i8* %var_2_21, align 1
; Matched:%var_2_169:  %var_2_169 = xor i32 %var_2_160, %var_2_159
; %var_2_227 = xor i32 %var_2_218, %var_2_217
; Matched:%var_2_170:  %var_2_170 = lshr i32 %var_2_169, 4
; %var_2_228 = lshr i32 %var_2_227, 4
; Matched:%var_2_171:  %var_2_171 = trunc i32 %var_2_170 to i8
; %var_2_229 = trunc i32 %var_2_228 to i8
; Matched:%var_2_172:  %var_2_172 = and i8 %var_2_171, 1
; %var_2_230 = and i8 %var_2_229, 1
; Matched:\<badref\>:  store i8 %var_2_172, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_230, i8* %var_2_22, align 1
; Matched:%var_2_173:  %var_2_173 = icmp eq i32 %var_2_160, 0
; %var_2_231 = icmp eq i32 %var_2_218, 0
; Matched:%var_2_174:  %var_2_174 = zext i1 %var_2_173 to i8
; %var_2_232 = zext i1 %var_2_231 to i8
; Matched:\<badref\>:  store i8 %var_2_174, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_232, i8* %var_2_23, align 1
; Matched:%var_2_175:  %var_2_175 = lshr i32 %var_2_160, 31
; %var_2_233 = lshr i32 %var_2_218, 31
; Matched:%var_2_176:  %var_2_176 = trunc i32 %var_2_175 to i8
; %var_2_234 = trunc i32 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_176, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_234, i8* %var_2_24, align 1
; Matched:%var_2_177:  %var_2_177 = lshr i32 %var_2_159, 31
; %var_2_235 = lshr i32 %var_2_217, 31
; Matched:%var_2_178:  %var_2_178 = xor i32 %var_2_175, %var_2_177
; %var_2_236 = xor i32 %var_2_233, %var_2_235
; Matched:%var_2_179:  %var_2_179 = add nuw nsw i32 %var_2_178, %var_2_177
; %var_2_237 = add nuw nsw i32 %var_2_236, %var_2_235
; Matched:%var_2_180:  %var_2_180 = icmp eq i32 %var_2_179, 2
; %var_2_238 = icmp eq i32 %var_2_237, 2
; Matched:%var_2_181:  %var_2_181 = zext i1 %var_2_180 to i8
; %var_2_239 = zext i1 %var_2_238 to i8
; Matched:\<badref\>:  store i8 %var_2_181, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_239, i8* %var_2_25, align 1
; Matched:%var_2_182:  %var_2_182 = add i64 %var_2_93, 25
; %var_2_240 = add i64 %var_2_181, 25
; Matched:\<badref\>:  store i64 %var_2_182, i64* %PC, align 8
; store i64 %var_2_240, i64* %var_2_3, align 8
%var_2_241 = load i64, i64* %var_2_149, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_241, i64* %RCX.i149, align 8
%var_2_242 = add i64 %var_2_241, 12
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_93, 28
; %var_2_243 = add i64 %var_2_181, 28
; Matched:\<badref\>:  store i64 %var_2_185, i64* %PC, align 8
; store i64 %var_2_243, i64* %var_2_3, align 8
%var_2_244 = inttoptr i64 %var_2_242 to i32*
%var_2_245 = load i32, i32* %var_2_244, align 4
; Matched:%var_2_188:  %var_2_188 = add i32 %var_2_187, -1
; %var_2_246 = add i32 %var_2_245, -1
; Matched:%var_2_189:  %var_2_189 = zext i32 %var_2_188 to i64
; %var_2_247 = zext i32 %var_2_246 to i64
; Matched:\<badref\>:  store i64 %var_2_189, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_247, i64* %RDX.i99, align 8
; Matched:%var_2_190:  %var_2_190 = sext i32 %var_2_160 to i64
; %var_2_248 = sext i32 %var_2_218 to i64
; Matched:%var_2_191:  %var_2_191 = sext i32 %var_2_188 to i64
; %var_2_249 = sext i32 %var_2_246 to i64
; Matched:%var_2_192:  %var_2_192 = mul nsw i64 %var_2_191, %var_2_190
; %var_2_250 = mul nsw i64 %var_2_249, %var_2_248
; Matched:%var_2_193:  %var_2_193 = trunc i64 %var_2_192 to i32
; %var_2_251 = trunc i64 %var_2_250 to i32
; Matched:%var_2_194:  %var_2_194 = and i64 %var_2_192, 4294967295
; %var_2_252 = and i64 %var_2_250, 4294967295
; Matched:\<badref\>:  store i64 %var_2_194, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_252, i64* %RAX.i152, align 8
; Matched:%var_2_195:  %var_2_195 = shl i64 %var_2_192, 32
; %var_2_253 = shl i64 %var_2_250, 32
; Matched:%var_2_196:  %var_2_196 = ashr exact i64 %var_2_195, 32
; %var_2_254 = ashr exact i64 %var_2_253, 32
; Matched:%var_2_197:  %var_2_197 = icmp ne i64 %var_2_196, %var_2_192
; %var_2_255 = icmp ne i64 %var_2_254, %var_2_250
; Matched:%var_2_198:  %var_2_198 = zext i1 %var_2_197 to i8
; %var_2_256 = zext i1 %var_2_255 to i8
; Matched:\<badref\>:  store i8 %var_2_198, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_256, i8* %var_2_20, align 1
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
; Matched:\<badref\>:  store i8 %var_2_203, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_261, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
; Matched:%var_2_204:  %var_2_204 = lshr i32 %var_2_193, 31
; %var_2_262 = lshr i32 %var_2_251, 31
; Matched:%var_2_205:  %var_2_205 = trunc i32 %var_2_204 to i8
; %var_2_263 = trunc i32 %var_2_262 to i8
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_263, i8* %var_2_24, align 1
; Matched:\<badref\>:  store i8 %var_2_198, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_256, i8* %var_2_25, align 1
; Matched:%var_2_206:  %var_2_206 = trunc i64 %var_2_192 to i32
; %var_2_264 = trunc i64 %var_2_250 to i32
%var_2_265 = load <2 x i32>, <2 x i32>* %var_2_39, align 1
%var_2_266 = load <2 x i32>, <2 x i32>* %var_2_41, align 1
; Matched:%var_2_209:  %var_2_209 = sitofp i32 %var_2_206 to float
; %var_2_267 = sitofp i32 %var_2_264 to float
; Matched:\<badref\>:  store float %var_2_209, float* %var_2_41, align 1, !tbaa !1284
; store float %var_2_267, float* %var_2_42, align 1
%var_2_268 = extractelement <2 x i32> %var_2_265, i32 1
; Matched:\<badref\>:  store i32 %var_2_210, i32* %var_2_43, align 1, !tbaa !1284
; store i32 %var_2_268, i32* %var_2_44, align 1
%var_2_269 = extractelement <2 x i32> %var_2_266, i32 0
; Matched:\<badref\>:  store i32 %var_2_211, i32* %var_2_44, align 1, !tbaa !1284
; store i32 %var_2_269, i32* %var_2_45, align 1
%var_2_270 = extractelement <2 x i32> %var_2_266, i32 1
; Matched:\<badref\>:  store i32 %var_2_212, i32* %var_2_46, align 1, !tbaa !1284
; store i32 %var_2_270, i32* %var_2_47, align 1
%var_2_271 = load <2 x float>, <2 x float>* %var_2_48, align 1
%var_2_272 = load <2 x i32>, <2 x i32>* %var_2_30, align 1
%var_2_273 = load <2 x float>, <2 x float>* %var_2_49, align 1
%var_2_274 = extractelement <2 x float> %var_2_271, i32 0
%var_2_275 = extractelement <2 x float> %var_2_273, i32 0
; Matched:%var_2_218:  %var_2_218 = fdiv float %var_2_216, %var_2_217
; %var_2_276 = fdiv float %var_2_274, %var_2_275
; Matched:\<badref\>:  store float %var_2_218, float* %var_2_31, align 1, !tbaa !1284
; store float %var_2_276, float* %var_2_31, align 1
%var_2_277 = bitcast <2 x float> %var_2_271 to <2 x i32>
%var_2_278 = extractelement <2 x i32> %var_2_277, i32 1
; Matched:\<badref\>:  store i32 %var_2_220, i32* %var_2_33, align 1, !tbaa !1284
; store i32 %var_2_278, i32* %var_2_33, align 1
%var_2_279 = extractelement <2 x i32> %var_2_272, i32 0
; Matched:\<badref\>:  store i32 %var_2_152, i32* %var_2_34, align 1, !tbaa !1284
; store i32 %var_2_279, i32* %var_2_34, align 1
%var_2_280 = extractelement <2 x i32> %var_2_272, i32 1
; Matched:\<badref\>:  store i32 %var_2_222, i32* %var_2_36, align 1, !tbaa !1284
; store i32 %var_2_280, i32* %var_2_36, align 1
%var_2_281 = load i64, i64* %RBP.i, align 8
%var_2_282 = add i64 %var_2_281, -8
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_93, 46
; %var_2_283 = add i64 %var_2_181, 46
; Matched:\<badref\>:  store i64 %var_2_225, i64* %PC, align 8
; store i64 %var_2_283, i64* %var_2_3, align 8
%var_2_284 = inttoptr i64 %var_2_282 to i64*
%var_2_285 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_62, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_285, i64* %RCX.i149, align 8
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_93, 49
; %var_2_286 = add i64 %var_2_181, 49
; Matched:\<badref\>:  store i64 %var_2_228, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
; Matched:%var_2_229:  %var_2_229 = inttoptr i64 %var_2_227 to i64*
; %var_2_287 = inttoptr i64 %var_2_285 to i64*
; Matched:%var_2_230:  %var_2_230 = load i64, i64* %var_2_229, align 8
; %var_2_288 = load i64, i64* %var_2_287, align 8
; Matched:\<badref\>:  store i64 %var_2_230, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_288, i64* %RCX.i149, align 8
; Matched:%var_2_231:  %var_2_231 = add i64 %var_2_93, 53
; %var_2_289 = add i64 %var_2_181, 53
; Matched:\<badref\>:  store i64 %var_2_231, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
; Matched:%var_2_236:  %var_2_236 = load i64, i64* %var_2_226, align 8
; %var_2_290 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_290, i64* %RSI.i82, align 8
  store i64 0, i64* %RAX.i152, align 8
store i8 0, i8* %var_2_20, align 1
store i8 1, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
store i8 0, i8* %var_2_24, align 1
store i8 0, i8* %var_2_25, align 1
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_93, 61
; %var_2_291 = add i64 %var_2_181, 61
; Matched:\<badref\>:  store i64 %var_2_233, i64* %PC, align 8
; store i64 %var_2_291, i64* %var_2_3, align 8
; Matched:%var_2_234:  %var_2_234 = load i64, i64* %var_2_226, align 8
; %var_2_292 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_265, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_292, i64* %RSI.i82, align 8
  store i64 0, i64* %RAX.i152, align 8
store i8 0, i8* %var_2_20, align 1
store i8 1, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
store i8 0, i8* %var_2_24, align 1
store i8 0, i8* %var_2_25, align 1
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_93, 69
; %var_2_293 = add i64 %var_2_181, 69
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8
; store i64 %var_2_293, i64* %var_2_3, align 8
; Matched:%var_2_295:  %var_2_295 = load i64, i64* %var_2_294, align 8
; %var_2_294 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_232, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_294, i64* %RSI.i82, align 8
  store i64 0, i64* %RAX.i152, align 8
store i8 0, i8* %var_2_20, align 1
store i8 1, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
store i8 0, i8* %var_2_24, align 1
store i8 0, i8* %var_2_25, align 1
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_223, -12
; %var_2_295 = add i64 %var_2_281, -12
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_93, 76
; %var_2_296 = add i64 %var_2_181, 76
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_296, i64* %var_2_3, align 8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_237 to i32*
; %var_2_297 = inttoptr i64 %var_2_295 to i32*
; Matched:%var_2_240:  %var_2_240 = load i32, i32* %var_2_239, align 4
; %var_2_298 = load i32, i32* %var_2_297, align 4
; Matched:%var_2_241:  %var_2_241 = zext i32 %var_2_240 to i64
; %var_2_299 = zext i32 %var_2_298 to i64
; Matched:\<badref\>:  store i64 %var_2_241, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %RDX.i99, align 8
; Matched:%var_2_242:  %var_2_242 = add i64 %var_2_93, 80
; %var_2_300 = add i64 %var_2_181, 80
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_243:  %var_2_243 = load i64, i64* %var_2_226, align 8
; %var_2_301 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_243, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_301, i64* %RSI.i82, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_243, 16
; %var_2_302 = add i64 %var_2_301, 16
; Matched:%var_2_245:  %var_2_245 = add i64 %var_2_93, 84
; %var_2_303 = add i64 %var_2_181, 84
; Matched:\<badref\>:  store i64 %var_2_245, i64* %PC, align 8
; store i64 %var_2_303, i64* %var_2_3, align 8
; Matched:%var_2_246:  %var_2_246 = inttoptr i64 %var_2_244 to i32*
; %var_2_304 = inttoptr i64 %var_2_302 to i32*
; Matched:%var_2_247:  %var_2_247 = load i32, i32* %var_2_246, align 4
; %var_2_305 = load i32, i32* %var_2_304, align 4
; Matched:%var_2_248:  %var_2_248 = sext i32 %var_2_240 to i64
; %var_2_306 = sext i32 %var_2_298 to i64
; Matched:%var_2_249:  %var_2_249 = sext i32 %var_2_247 to i64
; %var_2_307 = sext i32 %var_2_305 to i64
; Matched:%var_2_250:  %var_2_250 = mul nsw i64 %var_2_249, %var_2_248
; %var_2_308 = mul nsw i64 %var_2_307, %var_2_306
; Matched:%var_2_251:  %var_2_251 = trunc i64 %var_2_250 to i32
; %var_2_309 = trunc i64 %var_2_308 to i32
; Matched:%var_2_252:  %var_2_252 = and i64 %var_2_250, 4294967295
; %var_2_310 = and i64 %var_2_308, 4294967295
; Matched:\<badref\>:  store i64 %var_2_252, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_310, i64* %RDX.i99, align 8
; Matched:%var_2_253:  %var_2_253 = shl i64 %var_2_250, 32
; %var_2_311 = shl i64 %var_2_308, 32
; Matched:%var_2_254:  %var_2_254 = ashr exact i64 %var_2_253, 32
; %var_2_312 = ashr exact i64 %var_2_311, 32
; Matched:%var_2_255:  %var_2_255 = icmp ne i64 %var_2_254, %var_2_250
; %var_2_313 = icmp ne i64 %var_2_312, %var_2_308
; Matched:%var_2_256:  %var_2_256 = zext i1 %var_2_255 to i8
; %var_2_314 = zext i1 %var_2_313 to i8
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_314, i8* %var_2_20, align 1
; Matched:%var_2_257:  %var_2_257 = and i32 %var_2_251, 255
; %var_2_315 = and i32 %var_2_309, 255
; Matched:%var_2_258:  %var_2_258 = tail call i32 @llvm.ctpop.i32(i32 %var_2_257) #12
; %var_2_316 = tail call i32 @llvm.ctpop.i32(i32 %var_2_315)
; Matched:%var_2_259:  %var_2_259 = trunc i32 %var_2_258 to i8
; %var_2_317 = trunc i32 %var_2_316 to i8
; Matched:%var_2_260:  %var_2_260 = and i8 %var_2_259, 1
; %var_2_318 = and i8 %var_2_317, 1
; Matched:%var_2_261:  %var_2_261 = xor i8 %var_2_260, 1
; %var_2_319 = xor i8 %var_2_318, 1
; Matched:\<badref\>:  store i8 %var_2_261, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_319, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
store i8 0, i8* %var_2_23, align 1
; Matched:%var_2_262:  %var_2_262 = lshr i32 %var_2_251, 31
; %var_2_320 = lshr i32 %var_2_309, 31
; Matched:%var_2_263:  %var_2_263 = trunc i32 %var_2_262 to i8
; %var_2_321 = trunc i32 %var_2_320 to i8
; Matched:\<badref\>:  store i8 %var_2_263, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_321, i8* %var_2_24, align 1
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_314, i8* %var_2_25, align 1
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_93, 88
; %var_2_322 = add i64 %var_2_181, 88
; Matched:\<badref\>:  store i64 %var_2_264, i64* %PC, align 8
; store i64 %var_2_322, i64* %var_2_3, align 8
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %var_2_226, align 8
; %var_2_323 = load i64, i64* %var_2_284, align 8
; Matched:\<badref\>:  store i64 %var_2_295, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_323, i64* %RSI.i82, align 8
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, 20
; %var_2_324 = add i64 %var_2_323, 20
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_93, 92
; %var_2_325 = add i64 %var_2_181, 92
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8
; store i64 %var_2_325, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = inttoptr i64 %var_2_266 to i32*
; %var_2_326 = inttoptr i64 %var_2_324 to i32*
; Matched:%var_2_269:  %var_2_269 = load i32, i32* %var_2_268, align 4
; %var_2_327 = load i32, i32* %var_2_326, align 4
; Matched:%var_2_270:  %var_2_270 = shl i64 %var_2_250, 32
; %var_2_328 = shl i64 %var_2_308, 32
; Matched:%var_2_271:  %var_2_271 = ashr exact i64 %var_2_270, 32
; %var_2_329 = ashr exact i64 %var_2_328, 32
; Matched:%var_2_272:  %var_2_272 = sext i32 %var_2_269 to i64
; %var_2_330 = sext i32 %var_2_327 to i64
; Matched:%var_2_273:  %var_2_273 = mul nsw i64 %var_2_272, %var_2_271
; %var_2_331 = mul nsw i64 %var_2_330, %var_2_329
; Matched:%var_2_274:  %var_2_274 = and i64 %var_2_273, 4294967295
; %var_2_332 = and i64 %var_2_331, 4294967295
; Matched:\<badref\>:  store i64 %var_2_274, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_332, i64* %RDX.i99, align 8
; Matched:%var_2_275:  %var_2_275 = trunc i64 %var_2_273 to i32
; %var_2_333 = trunc i64 %var_2_331 to i32
; Matched:%var_2_276:  %var_2_276 = and i64 %var_2_273, 4294967295
; %var_2_334 = and i64 %var_2_331, 4294967295
; Matched:\<badref\>:  store i64 %var_2_276, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_334, i64* %RAX.i152, align 8
store i8 0, i8* %var_2_20, align 1
; Matched:%var_2_277:  %var_2_277 = and i32 %var_2_275, 255
; %var_2_335 = and i32 %var_2_333, 255
; Matched:%var_2_278:  %var_2_278 = tail call i32 @llvm.ctpop.i32(i32 %var_2_277) #12
; %var_2_336 = tail call i32 @llvm.ctpop.i32(i32 %var_2_335)
; Matched:%var_2_279:  %var_2_279 = trunc i32 %var_2_278 to i8
; %var_2_337 = trunc i32 %var_2_336 to i8
; Matched:%var_2_280:  %var_2_280 = and i8 %var_2_279, 1
; %var_2_338 = and i8 %var_2_337, 1
; Matched:%var_2_281:  %var_2_281 = xor i8 %var_2_280, 1
; %var_2_339 = xor i8 %var_2_338, 1
; Matched:\<badref\>:  store i8 %var_2_281, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_339, i8* %var_2_21, align 1
store i8 0, i8* %var_2_22, align 1
; Matched:%var_2_282:  %var_2_282 = icmp eq i32 %var_2_275, 0
; %var_2_340 = icmp eq i32 %var_2_333, 0
; Matched:%var_2_283:  %var_2_283 = zext i1 %var_2_282 to i8
; %var_2_341 = zext i1 %var_2_340 to i8
; Matched:\<badref\>:  store i8 %var_2_283, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_341, i8* %var_2_23, align 1
; Matched:%var_2_284:  %var_2_284 = lshr i32 %var_2_275, 31
; %var_2_342 = lshr i32 %var_2_333, 31
; Matched:%var_2_285:  %var_2_285 = trunc i32 %var_2_284 to i8
; %var_2_343 = trunc i32 %var_2_342 to i8
; Matched:\<badref\>:  store i8 %var_2_285, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_343, i8* %var_2_24, align 1
store i8 0, i8* %var_2_25, align 1
%var_2_344 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_286, -16
; %var_2_345 = add i64 %var_2_344, -16
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_93, 97
; %var_2_346 = add i64 %var_2_181, 97
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_346, i64* %var_2_3, align 8
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_287 to i32*
; %var_2_347 = inttoptr i64 %var_2_345 to i32*
; Matched:%var_2_290:  %var_2_290 = load i32, i32* %var_2_289, align 4
; %var_2_348 = load i32, i32* %var_2_347, align 4
; Matched:%var_2_291:  %var_2_291 = zext i32 %var_2_290 to i64
; %var_2_349 = zext i32 %var_2_348 to i64
; Matched:\<badref\>:  store i64 %var_2_291, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_349, i64* %RDX.i99, align 8
%var_2_350 = add i64 %var_2_344, -8
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_93, 101
; %var_2_351 = add i64 %var_2_181, 101
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8
; store i64 %var_2_351, i64* %var_2_3, align 8
%var_2_352 = inttoptr i64 %var_2_350 to i64*
; Matched:%var_2_232:  %var_2_232 = load i64, i64* %var_2_226, align 8
; %var_2_353 = load i64, i64* %var_2_352, align 8
; Matched:\<badref\>:  store i64 %var_2_234, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_353, i64* %RSI.i82, align 8
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_295, 20
; %var_2_354 = add i64 %var_2_353, 20
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_93, 105
; %var_2_355 = add i64 %var_2_181, 105
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_355, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_296 to i32*
; %var_2_356 = inttoptr i64 %var_2_354 to i32*
; Matched:%var_2_299:  %var_2_299 = load i32, i32* %var_2_298, align 4
; %var_2_357 = load i32, i32* %var_2_356, align 4
; Matched:%var_2_300:  %var_2_300 = sext i32 %var_2_290 to i64
; %var_2_358 = sext i32 %var_2_348 to i64
; Matched:%var_2_301:  %var_2_301 = sext i32 %var_2_299 to i64
; %var_2_359 = sext i32 %var_2_357 to i64
; Matched:%var_2_302:  %var_2_302 = mul nsw i64 %var_2_301, %var_2_300
; %var_2_360 = mul nsw i64 %var_2_359, %var_2_358
; Matched:%var_2_303:  %var_2_303 = and i64 %var_2_302, 4294967295
; %var_2_361 = and i64 %var_2_360, 4294967295
; Matched:\<badref\>:  store i64 %var_2_303, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_361, i64* %RDX.i99, align 8
; Matched:%var_2_304:  %var_2_304 = trunc i64 %var_2_302 to i32
; %var_2_362 = trunc i64 %var_2_360 to i32
; Matched:%var_2_305:  %var_2_305 = add i32 %var_2_304, %var_2_275
; %var_2_363 = add i32 %var_2_362, %var_2_333
; Matched:%var_2_306:  %var_2_306 = zext i32 %var_2_305 to i64
; %var_2_364 = zext i32 %var_2_363 to i64
; Matched:\<badref\>:  store i64 %var_2_306, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_364, i64* %RAX.i152, align 8
; Matched:%var_2_307:  %var_2_307 = icmp ult i32 %var_2_305, %var_2_275
; %var_2_365 = icmp ult i32 %var_2_363, %var_2_333
; Matched:%var_2_308:  %var_2_308 = icmp ult i32 %var_2_305, %var_2_304
; %var_2_366 = icmp ult i32 %var_2_363, %var_2_362
; Matched:%var_2_309:  %var_2_309 = or i1 %var_2_307, %var_2_308
; %var_2_367 = or i1 %var_2_365, %var_2_366
; Matched:%var_2_310:  %var_2_310 = zext i1 %var_2_309 to i8
; %var_2_368 = zext i1 %var_2_367 to i8
; Matched:\<badref\>:  store i8 %var_2_310, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_368, i8* %var_2_20, align 1
; Matched:%var_2_311:  %var_2_311 = and i32 %var_2_305, 255
; %var_2_369 = and i32 %var_2_363, 255
; Matched:%var_2_312:  %var_2_312 = tail call i32 @llvm.ctpop.i32(i32 %var_2_311) #12
; %var_2_370 = tail call i32 @llvm.ctpop.i32(i32 %var_2_369)
; Matched:%var_2_313:  %var_2_313 = trunc i32 %var_2_312 to i8
; %var_2_371 = trunc i32 %var_2_370 to i8
; Matched:%var_2_314:  %var_2_314 = and i8 %var_2_313, 1
; %var_2_372 = and i8 %var_2_371, 1
; Matched:%var_2_315:  %var_2_315 = xor i8 %var_2_314, 1
; %var_2_373 = xor i8 %var_2_372, 1
; Matched:\<badref\>:  store i8 %var_2_315, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_373, i8* %var_2_21, align 1
; Matched:%var_2_316:  %var_2_316 = xor i64 %var_2_302, %var_2_273
; %var_2_374 = xor i64 %var_2_360, %var_2_331
; Matched:%var_2_317:  %var_2_317 = trunc i64 %var_2_316 to i32
; %var_2_375 = trunc i64 %var_2_374 to i32
; Matched:%var_2_318:  %var_2_318 = xor i32 %var_2_317, %var_2_305
; %var_2_376 = xor i32 %var_2_375, %var_2_363
; Matched:%var_2_319:  %var_2_319 = lshr i32 %var_2_318, 4
; %var_2_377 = lshr i32 %var_2_376, 4
; Matched:%var_2_320:  %var_2_320 = trunc i32 %var_2_319 to i8
; %var_2_378 = trunc i32 %var_2_377 to i8
; Matched:%var_2_321:  %var_2_321 = and i8 %var_2_320, 1
; %var_2_379 = and i8 %var_2_378, 1
; Matched:\<badref\>:  store i8 %var_2_321, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_379, i8* %var_2_22, align 1
; Matched:%var_2_322:  %var_2_322 = icmp eq i32 %var_2_305, 0
; %var_2_380 = icmp eq i32 %var_2_363, 0
; Matched:%var_2_323:  %var_2_323 = zext i1 %var_2_322 to i8
; %var_2_381 = zext i1 %var_2_380 to i8
; Matched:\<badref\>:  store i8 %var_2_323, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_381, i8* %var_2_23, align 1
; Matched:%var_2_324:  %var_2_324 = lshr i32 %var_2_305, 31
; %var_2_382 = lshr i32 %var_2_363, 31
; Matched:%var_2_325:  %var_2_325 = trunc i32 %var_2_324 to i8
; %var_2_383 = trunc i32 %var_2_382 to i8
; Matched:\<badref\>:  store i8 %var_2_325, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_383, i8* %var_2_24, align 1
; Matched:%var_2_326:  %var_2_326 = lshr i32 %var_2_304, 31
; %var_2_384 = lshr i32 %var_2_362, 31
; Matched:%var_2_327:  %var_2_327 = xor i32 %var_2_324, %var_2_284
; %var_2_385 = xor i32 %var_2_382, %var_2_342
; Matched:%var_2_328:  %var_2_328 = xor i32 %var_2_324, %var_2_326
; %var_2_386 = xor i32 %var_2_382, %var_2_384
; Matched:%var_2_329:  %var_2_329 = add nuw nsw i32 %var_2_327, %var_2_328
; %var_2_387 = add nuw nsw i32 %var_2_385, %var_2_386
; Matched:%var_2_330:  %var_2_330 = icmp eq i32 %var_2_329, 2
; %var_2_388 = icmp eq i32 %var_2_387, 2
; Matched:%var_2_331:  %var_2_331 = zext i1 %var_2_330 to i8
; %var_2_389 = zext i1 %var_2_388 to i8
; Matched:\<badref\>:  store i8 %var_2_331, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_389, i8* %var_2_25, align 1
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_286, -20
; %var_2_390 = add i64 %var_2_344, -20
; Matched:%var_2_333:  %var_2_333 = add i64 %var_2_93, 110
; %var_2_391 = add i64 %var_2_181, 110
; Matched:\<badref\>:  store i64 %var_2_333, i64* %PC, align 8
; store i64 %var_2_391, i64* %var_2_3, align 8
; Matched:%var_2_334:  %var_2_334 = inttoptr i64 %var_2_332 to i32*
; %var_2_392 = inttoptr i64 %var_2_390 to i32*
; Matched:%var_2_335:  %var_2_335 = load i32, i32* %var_2_334, align 4
; %var_2_393 = load i32, i32* %var_2_392, align 4
; Matched:%var_2_336:  %var_2_336 = add i32 %var_2_335, %var_2_305
; %var_2_394 = add i32 %var_2_393, %var_2_363
; Matched:%var_2_337:  %var_2_337 = zext i32 %var_2_336 to i64
; %var_2_395 = zext i32 %var_2_394 to i64
; Matched:\<badref\>:  store i64 %var_2_337, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_395, i64* %RAX.i152, align 8
; Matched:%var_2_338:  %var_2_338 = icmp ult i32 %var_2_336, %var_2_305
; %var_2_396 = icmp ult i32 %var_2_394, %var_2_363
; Matched:%var_2_339:  %var_2_339 = icmp ult i32 %var_2_336, %var_2_335
; %var_2_397 = icmp ult i32 %var_2_394, %var_2_393
; Matched:%var_2_340:  %var_2_340 = or i1 %var_2_338, %var_2_339
; %var_2_398 = or i1 %var_2_396, %var_2_397
; Matched:%var_2_341:  %var_2_341 = zext i1 %var_2_340 to i8
; %var_2_399 = zext i1 %var_2_398 to i8
; Matched:\<badref\>:  store i8 %var_2_341, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_399, i8* %var_2_20, align 1
; Matched:%var_2_342:  %var_2_342 = and i32 %var_2_336, 255
; %var_2_400 = and i32 %var_2_394, 255
; Matched:%var_2_343:  %var_2_343 = tail call i32 @llvm.ctpop.i32(i32 %var_2_342) #12
; %var_2_401 = tail call i32 @llvm.ctpop.i32(i32 %var_2_400)
; Matched:%var_2_344:  %var_2_344 = trunc i32 %var_2_343 to i8
; %var_2_402 = trunc i32 %var_2_401 to i8
; Matched:%var_2_345:  %var_2_345 = and i8 %var_2_344, 1
; %var_2_403 = and i8 %var_2_402, 1
; Matched:%var_2_346:  %var_2_346 = xor i8 %var_2_345, 1
; %var_2_404 = xor i8 %var_2_403, 1
; Matched:\<badref\>:  store i8 %var_2_346, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_404, i8* %var_2_21, align 1
; Matched:%var_2_347:  %var_2_347 = xor i32 %var_2_335, %var_2_305
; %var_2_405 = xor i32 %var_2_393, %var_2_363
; Matched:%var_2_348:  %var_2_348 = xor i32 %var_2_347, %var_2_336
; %var_2_406 = xor i32 %var_2_405, %var_2_394
; Matched:%var_2_349:  %var_2_349 = lshr i32 %var_2_348, 4
; %var_2_407 = lshr i32 %var_2_406, 4
; Matched:%var_2_350:  %var_2_350 = trunc i32 %var_2_349 to i8
; %var_2_408 = trunc i32 %var_2_407 to i8
; Matched:%var_2_351:  %var_2_351 = and i8 %var_2_350, 1
; %var_2_409 = and i8 %var_2_408, 1
; Matched:\<badref\>:  store i8 %var_2_351, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_409, i8* %var_2_22, align 1
; Matched:%var_2_352:  %var_2_352 = icmp eq i32 %var_2_336, 0
; %var_2_410 = icmp eq i32 %var_2_394, 0
; Matched:%var_2_353:  %var_2_353 = zext i1 %var_2_352 to i8
; %var_2_411 = zext i1 %var_2_410 to i8
; Matched:\<badref\>:  store i8 %var_2_353, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_411, i8* %var_2_23, align 1
; Matched:%var_2_354:  %var_2_354 = lshr i32 %var_2_336, 31
; %var_2_412 = lshr i32 %var_2_394, 31
; Matched:%var_2_355:  %var_2_355 = trunc i32 %var_2_354 to i8
; %var_2_413 = trunc i32 %var_2_412 to i8
; Matched:\<badref\>:  store i8 %var_2_355, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_413, i8* %var_2_24, align 1
; Matched:%var_2_356:  %var_2_356 = lshr i32 %var_2_335, 31
; %var_2_414 = lshr i32 %var_2_393, 31
; Matched:%var_2_357:  %var_2_357 = xor i32 %var_2_354, %var_2_324
; %var_2_415 = xor i32 %var_2_412, %var_2_382
; Matched:%var_2_358:  %var_2_358 = xor i32 %var_2_354, %var_2_356
; %var_2_416 = xor i32 %var_2_412, %var_2_414
; Matched:%var_2_359:  %var_2_359 = add nuw nsw i32 %var_2_357, %var_2_358
; %var_2_417 = add nuw nsw i32 %var_2_415, %var_2_416
; Matched:%var_2_360:  %var_2_360 = icmp eq i32 %var_2_359, 2
; %var_2_418 = icmp eq i32 %var_2_417, 2
; Matched:%var_2_361:  %var_2_361 = zext i1 %var_2_360 to i8
; %var_2_419 = zext i1 %var_2_418 to i8
; Matched:\<badref\>:  store i8 %var_2_361, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_419, i8* %var_2_25, align 1
; Matched:%var_2_362:  %var_2_362 = sext i32 %var_2_336 to i64
; %var_2_420 = sext i32 %var_2_394 to i64
; Matched:\<badref\>:  store i64 %var_2_362, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_420, i64* %RSI.i82, align 8
; Matched:%var_2_363:  %var_2_363 = load i64, i64* %RCX, align 8
; %var_2_421 = load i64, i64* %RCX.i149, align 8
; Matched:%var_2_364:  %var_2_364 = shl nsw i64 %var_2_362, 2
; %var_2_422 = shl nsw i64 %var_2_420, 2
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_363, %var_2_364
; %var_2_423 = add i64 %var_2_421, %var_2_422
; Matched:%var_2_366:  %var_2_366 = add i64 %var_2_93, 118
; %var_2_424 = add i64 %var_2_181, 118
; Matched:\<badref\>:  store i64 %var_2_366, i64* %PC, align 8
; store i64 %var_2_424, i64* %var_2_3, align 8
%var_2_425 = load <2 x float>, <2 x float>* %var_2_48, align 1
%var_2_426 = extractelement <2 x float> %var_2_425, i32 0
; Matched:%var_2_369:  %var_2_369 = inttoptr i64 %var_2_365 to float*
; %var_2_427 = inttoptr i64 %var_2_423 to float*
; Matched:\<badref\>:  store float %var_2_368, float* %var_2_369, align 4
; store float %var_2_426, float* %var_2_427, align 4
; Matched:%var_2_370:  %var_2_370 = load i64, i64* %RBP, align 8
; %var_2_428 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_371:  %var_2_371 = add i64 %var_2_370, -20
; %var_2_429 = add i64 %var_2_428, -20
; Matched:%var_2_372:  %var_2_372 = load i64, i64* %PC, align 8
; %var_2_430 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_372, 3
; %var_2_431 = add i64 %var_2_430, 3
; Matched:\<badref\>:  store i64 %var_2_373, i64* %PC, align 8
; store i64 %var_2_431, i64* %var_2_3, align 8
; Matched:%var_2_374:  %var_2_374 = inttoptr i64 %var_2_371 to i32*
; %var_2_432 = inttoptr i64 %var_2_429 to i32*
; Matched:%var_2_375:  %var_2_375 = load i32, i32* %var_2_374, align 4
; %var_2_433 = load i32, i32* %var_2_432, align 4
; Matched:%var_2_376:  %var_2_376 = add i32 %var_2_375, 1
; %var_2_434 = add i32 %var_2_433, 1
; Matched:%var_2_377:  %var_2_377 = zext i32 %var_2_376 to i64
; %var_2_435 = zext i32 %var_2_434 to i64
; Matched:\<badref\>:  store i64 %var_2_377, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_435, i64* %RAX.i152, align 8
; Matched:%var_2_378:  %var_2_378 = icmp eq i32 %var_2_375, -1
; %var_2_436 = icmp eq i32 %var_2_433, -1
; Matched:%var_2_379:  %var_2_379 = icmp eq i32 %var_2_376, 0
; %var_2_437 = icmp eq i32 %var_2_434, 0
; Matched:%var_2_380:  %var_2_380 = or i1 %var_2_378, %var_2_379
; %var_2_438 = or i1 %var_2_436, %var_2_437
; Matched:%var_2_381:  %var_2_381 = zext i1 %var_2_380 to i8
; %var_2_439 = zext i1 %var_2_438 to i8
; Matched:\<badref\>:  store i8 %var_2_381, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_439, i8* %var_2_20, align 1
; Matched:%var_2_382:  %var_2_382 = and i32 %var_2_376, 255
; %var_2_440 = and i32 %var_2_434, 255
; Matched:%var_2_383:  %var_2_383 = tail call i32 @llvm.ctpop.i32(i32 %var_2_382) #12
; %var_2_441 = tail call i32 @llvm.ctpop.i32(i32 %var_2_440)
; Matched:%var_2_384:  %var_2_384 = trunc i32 %var_2_383 to i8
; %var_2_442 = trunc i32 %var_2_441 to i8
; Matched:%var_2_385:  %var_2_385 = and i8 %var_2_384, 1
; %var_2_443 = and i8 %var_2_442, 1
; Matched:%var_2_386:  %var_2_386 = xor i8 %var_2_385, 1
; %var_2_444 = xor i8 %var_2_443, 1
; Matched:\<badref\>:  store i8 %var_2_386, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_444, i8* %var_2_21, align 1
; Matched:%var_2_387:  %var_2_387 = xor i32 %var_2_376, %var_2_375
; %var_2_445 = xor i32 %var_2_434, %var_2_433
; Matched:%var_2_388:  %var_2_388 = lshr i32 %var_2_387, 4
; %var_2_446 = lshr i32 %var_2_445, 4
; Matched:%var_2_389:  %var_2_389 = trunc i32 %var_2_388 to i8
; %var_2_447 = trunc i32 %var_2_446 to i8
; Matched:%var_2_390:  %var_2_390 = and i8 %var_2_389, 1
; %var_2_448 = and i8 %var_2_447, 1
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_448, i8* %var_2_22, align 1
; Matched:%var_2_391:  %var_2_391 = zext i1 %var_2_379 to i8
; %var_2_449 = zext i1 %var_2_437 to i8
; Matched:\<badref\>:  store i8 %var_2_391, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_449, i8* %var_2_23, align 1
; Matched:%var_2_392:  %var_2_392 = lshr i32 %var_2_376, 31
; %var_2_450 = lshr i32 %var_2_434, 31
; Matched:%var_2_393:  %var_2_393 = trunc i32 %var_2_392 to i8
; %var_2_451 = trunc i32 %var_2_450 to i8
; Matched:\<badref\>:  store i8 %var_2_393, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_451, i8* %var_2_24, align 1
; Matched:%var_2_394:  %var_2_394 = lshr i32 %var_2_375, 31
; %var_2_452 = lshr i32 %var_2_433, 31
; Matched:%var_2_395:  %var_2_395 = xor i32 %var_2_392, %var_2_394
; %var_2_453 = xor i32 %var_2_450, %var_2_452
; Matched:%var_2_396:  %var_2_396 = add nuw nsw i32 %var_2_395, %var_2_392
; %var_2_454 = add nuw nsw i32 %var_2_453, %var_2_450
; Matched:%var_2_397:  %var_2_397 = icmp eq i32 %var_2_396, 2
; %var_2_455 = icmp eq i32 %var_2_454, 2
; Matched:%var_2_398:  %var_2_398 = zext i1 %var_2_397 to i8
; %var_2_456 = zext i1 %var_2_455 to i8
; Matched:\<badref\>:  store i8 %var_2_398, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_456, i8* %var_2_25, align 1
; Matched:%var_2_399:  %var_2_399 = add i64 %var_2_372, 9
; %var_2_457 = add i64 %var_2_430, 9
; Matched:\<badref\>:  store i64 %var_2_399, i64* %PC, align 8
; store i64 %var_2_457, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_376, i32* %var_2_374, align 4
; store i32 %var_2_434, i32* %var_2_432, align 4
; Matched:%var_2_400:  %var_2_400 = load i64, i64* %PC, align 8
; %var_2_458 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_400, -143
; %var_2_459 = add i64 %var_2_458, -143
; Matched:\<badref\>:  store i64 %var_2_401, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_459, i64* %var_2_3, align 8
  br label %block_.L_400b5d

block_.L_400bf1:                                  ; preds = %block_.L_400b5d
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_53, -16
; %var_2_460 = add i64 %var_2_141, -16
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_93, 8
; %var_2_461 = add i64 %var_2_181, 8
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_461, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_94 to i32*
; %var_2_462 = inttoptr i64 %var_2_460 to i32*
; Matched:%var_2_97:  %var_2_97 = load i32, i32* %var_2_96, align 4
; %var_2_463 = load i32, i32* %var_2_462, align 4
; Matched:%var_2_98:  %var_2_98 = add i32 %var_2_97, 1
; %var_2_464 = add i32 %var_2_463, 1
; Matched:%var_2_99:  %var_2_99 = zext i32 %var_2_98 to i64
; %var_2_465 = zext i32 %var_2_464 to i64
; Matched:\<badref\>:  store i64 %var_2_99, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_465, i64* %RAX.i152, align 8
; Matched:%var_2_100:  %var_2_100 = icmp eq i32 %var_2_97, -1
; %var_2_466 = icmp eq i32 %var_2_463, -1
; Matched:%var_2_101:  %var_2_101 = icmp eq i32 %var_2_98, 0
; %var_2_467 = icmp eq i32 %var_2_464, 0
; Matched:%var_2_102:  %var_2_102 = or i1 %var_2_100, %var_2_101
; %var_2_468 = or i1 %var_2_466, %var_2_467
; Matched:%var_2_103:  %var_2_103 = zext i1 %var_2_102 to i8
; %var_2_469 = zext i1 %var_2_468 to i8
; Matched:\<badref\>:  store i8 %var_2_103, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_469, i8* %var_2_20, align 1
; Matched:%var_2_104:  %var_2_104 = and i32 %var_2_98, 255
; %var_2_470 = and i32 %var_2_464, 255
; Matched:%var_2_105:  %var_2_105 = tail call i32 @llvm.ctpop.i32(i32 %var_2_104) #12
; %var_2_471 = tail call i32 @llvm.ctpop.i32(i32 %var_2_470)
; Matched:%var_2_106:  %var_2_106 = trunc i32 %var_2_105 to i8
; %var_2_472 = trunc i32 %var_2_471 to i8
; Matched:%var_2_107:  %var_2_107 = and i8 %var_2_106, 1
; %var_2_473 = and i8 %var_2_472, 1
; Matched:%var_2_108:  %var_2_108 = xor i8 %var_2_107, 1
; %var_2_474 = xor i8 %var_2_473, 1
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_474, i8* %var_2_21, align 1
; Matched:%var_2_109:  %var_2_109 = xor i32 %var_2_98, %var_2_97
; %var_2_475 = xor i32 %var_2_464, %var_2_463
; Matched:%var_2_110:  %var_2_110 = lshr i32 %var_2_109, 4
; %var_2_476 = lshr i32 %var_2_475, 4
; Matched:%var_2_111:  %var_2_111 = trunc i32 %var_2_110 to i8
; %var_2_477 = trunc i32 %var_2_476 to i8
; Matched:%var_2_112:  %var_2_112 = and i8 %var_2_111, 1
; %var_2_478 = and i8 %var_2_477, 1
; Matched:\<badref\>:  store i8 %var_2_112, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_478, i8* %var_2_22, align 1
; Matched:%var_2_113:  %var_2_113 = zext i1 %var_2_101 to i8
; %var_2_479 = zext i1 %var_2_467 to i8
; Matched:\<badref\>:  store i8 %var_2_113, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_479, i8* %var_2_23, align 1
; Matched:%var_2_114:  %var_2_114 = lshr i32 %var_2_98, 31
; %var_2_480 = lshr i32 %var_2_464, 31
; Matched:%var_2_115:  %var_2_115 = trunc i32 %var_2_114 to i8
; %var_2_481 = trunc i32 %var_2_480 to i8
; Matched:\<badref\>:  store i8 %var_2_115, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_481, i8* %var_2_24, align 1
; Matched:%var_2_116:  %var_2_116 = lshr i32 %var_2_97, 31
; %var_2_482 = lshr i32 %var_2_463, 31
; Matched:%var_2_117:  %var_2_117 = xor i32 %var_2_114, %var_2_116
; %var_2_483 = xor i32 %var_2_480, %var_2_482
; Matched:%var_2_118:  %var_2_118 = add nuw nsw i32 %var_2_117, %var_2_114
; %var_2_484 = add nuw nsw i32 %var_2_483, %var_2_480
; Matched:%var_2_119:  %var_2_119 = icmp eq i32 %var_2_118, 2
; %var_2_485 = icmp eq i32 %var_2_484, 2
; Matched:%var_2_120:  %var_2_120 = zext i1 %var_2_119 to i8
; %var_2_486 = zext i1 %var_2_485 to i8
; Matched:\<badref\>:  store i8 %var_2_120, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_486, i8* %var_2_25, align 1
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_93, 14
; %var_2_487 = add i64 %var_2_181, 14
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_487, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_98, i32* %var_2_96, align 4
; store i32 %var_2_464, i32* %var_2_462, align 4
; Matched:%var_2_122:  %var_2_122 = load i64, i64* %PC, align 8
; %var_2_488 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_122, -185
; %var_2_489 = add i64 %var_2_488, -185
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_489, i64* %var_2_3, align 8
  br label %block_.L_400b46

block_.L_400c04:                                  ; preds = %block_.L_400b46
; Matched:%var_2_489:  %var_2_489 = add i64 %var_2_403, -12
; %var_2_490 = add i64 %var_2_96, -12
; Matched:%var_2_490:  %var_2_490 = add i64 %var_2_443, 8
; %var_2_491 = add i64 %var_2_136, 8
; Matched:\<badref\>:  store i64 %var_2_490, i64* %PC, align 8
; store i64 %var_2_491, i64* %var_2_3, align 8
; Matched:%var_2_491:  %var_2_491 = inttoptr i64 %var_2_489 to i32*
; %var_2_492 = inttoptr i64 %var_2_490 to i32*
; Matched:%var_2_492:  %var_2_492 = load i32, i32* %var_2_491, align 4
; %var_2_493 = load i32, i32* %var_2_492, align 4
; Matched:%var_2_493:  %var_2_493 = add i32 %var_2_492, 1
; %var_2_494 = add i32 %var_2_493, 1
; Matched:%var_2_494:  %var_2_494 = zext i32 %var_2_493 to i64
; %var_2_495 = zext i32 %var_2_494 to i64
; Matched:\<badref\>:  store i64 %var_2_494, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_495, i64* %RAX.i152, align 8
; Matched:%var_2_495:  %var_2_495 = icmp eq i32 %var_2_492, -1
; %var_2_496 = icmp eq i32 %var_2_493, -1
; Matched:%var_2_496:  %var_2_496 = icmp eq i32 %var_2_493, 0
; %var_2_497 = icmp eq i32 %var_2_494, 0
; Matched:%var_2_497:  %var_2_497 = or i1 %var_2_495, %var_2_496
; %var_2_498 = or i1 %var_2_496, %var_2_497
; Matched:%var_2_498:  %var_2_498 = zext i1 %var_2_497 to i8
; %var_2_499 = zext i1 %var_2_498 to i8
; Matched:\<badref\>:  store i8 %var_2_498, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_499, i8* %var_2_20, align 1
; Matched:%var_2_499:  %var_2_499 = and i32 %var_2_493, 255
; %var_2_500 = and i32 %var_2_494, 255
; Matched:%var_2_500:  %var_2_500 = tail call i32 @llvm.ctpop.i32(i32 %var_2_499) #12
; %var_2_501 = tail call i32 @llvm.ctpop.i32(i32 %var_2_500)
; Matched:%var_2_501:  %var_2_501 = trunc i32 %var_2_500 to i8
; %var_2_502 = trunc i32 %var_2_501 to i8
; Matched:%var_2_502:  %var_2_502 = and i8 %var_2_501, 1
; %var_2_503 = and i8 %var_2_502, 1
; Matched:%var_2_503:  %var_2_503 = xor i8 %var_2_502, 1
; %var_2_504 = xor i8 %var_2_503, 1
; Matched:\<badref\>:  store i8 %var_2_503, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_504, i8* %var_2_21, align 1
; Matched:%var_2_504:  %var_2_504 = xor i32 %var_2_493, %var_2_492
; %var_2_505 = xor i32 %var_2_494, %var_2_493
; Matched:%var_2_505:  %var_2_505 = lshr i32 %var_2_504, 4
; %var_2_506 = lshr i32 %var_2_505, 4
; Matched:%var_2_506:  %var_2_506 = trunc i32 %var_2_505 to i8
; %var_2_507 = trunc i32 %var_2_506 to i8
; Matched:%var_2_507:  %var_2_507 = and i8 %var_2_506, 1
; %var_2_508 = and i8 %var_2_507, 1
; Matched:\<badref\>:  store i8 %var_2_507, i8* %var_2_23, align 1, !tbaa !1280
; store i8 %var_2_508, i8* %var_2_22, align 1
; Matched:%var_2_508:  %var_2_508 = zext i1 %var_2_496 to i8
; %var_2_509 = zext i1 %var_2_497 to i8
; Matched:\<badref\>:  store i8 %var_2_508, i8* %var_2_24, align 1, !tbaa !1281
; store i8 %var_2_509, i8* %var_2_23, align 1
; Matched:%var_2_509:  %var_2_509 = lshr i32 %var_2_493, 31
; %var_2_510 = lshr i32 %var_2_494, 31
; Matched:%var_2_510:  %var_2_510 = trunc i32 %var_2_509 to i8
; %var_2_511 = trunc i32 %var_2_510 to i8
; Matched:\<badref\>:  store i8 %var_2_510, i8* %var_2_25, align 1, !tbaa !1282
; store i8 %var_2_511, i8* %var_2_24, align 1
; Matched:%var_2_511:  %var_2_511 = lshr i32 %var_2_492, 31
; %var_2_512 = lshr i32 %var_2_493, 31
; Matched:%var_2_512:  %var_2_512 = xor i32 %var_2_509, %var_2_511
; %var_2_513 = xor i32 %var_2_510, %var_2_512
; Matched:%var_2_513:  %var_2_513 = add nuw nsw i32 %var_2_512, %var_2_509
; %var_2_514 = add nuw nsw i32 %var_2_513, %var_2_510
; Matched:%var_2_514:  %var_2_514 = icmp eq i32 %var_2_513, 2
; %var_2_515 = icmp eq i32 %var_2_514, 2
; Matched:%var_2_515:  %var_2_515 = zext i1 %var_2_514 to i8
; %var_2_516 = zext i1 %var_2_515 to i8
; Matched:\<badref\>:  store i8 %var_2_515, i8* %var_2_26, align 1, !tbaa !1283
; store i8 %var_2_516, i8* %var_2_25, align 1
; Matched:%var_2_516:  %var_2_516 = add i64 %var_2_443, 14
; %var_2_517 = add i64 %var_2_136, 14
; Matched:\<badref\>:  store i64 %var_2_516, i64* %PC, align 8
; store i64 %var_2_517, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_493, i32* %var_2_491, align 4
; store i32 %var_2_494, i32* %var_2_492, align 4
; Matched:%var_2_517:  %var_2_517 = load i64, i64* %PC, align 8
; %var_2_518 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_517, -227
; %var_2_519 = add i64 %var_2_518, -227
; Matched:\<badref\>:  store i64 %var_2_518, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_519, i64* %var_2_3, align 8
  br label %block_.L_400b2f

block_.L_400c17:                                  ; preds = %block_.L_400b2f
; Matched:%var_2_519:  %var_2_519 = add i64 %var_2_485, 1
; %var_2_520 = add i64 %var_2_91, 1
; Matched:\<badref\>:  store i64 %var_2_519, i64* %PC, align 8
; store i64 %var_2_520, i64* %var_2_3, align 8
; Matched:%var_2_520:  %var_2_520 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_521 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_521:  %var_2_521 = add i64 %var_2_520, 8
; %var_2_522 = add i64 %var_2_521, 8
; Matched:%var_2_522:  %var_2_522 = inttoptr i64 %var_2_520 to i64*
; %var_2_523 = inttoptr i64 %var_2_521 to i64*
; Matched:%var_2_523:  %var_2_523 = load i64, i64* %var_2_522, align 8
; %var_2_524 = load i64, i64* %var_2_523, align 8
; Matched:\<badref\>:  store i64 %var_2_523, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_524, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_521, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_522, i64* %var_2_6, align 8
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_485, 2
; %var_2_525 = add i64 %var_2_91, 2
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8
; store i64 %var_2_525, i64* %var_2_3, align 8
; Matched:%var_2_525:  %var_2_525 = inttoptr i64 %var_2_521 to i64*
; %var_2_526 = inttoptr i64 %var_2_522 to i64*
; Matched:%var_2_526:  %var_2_526 = load i64, i64* %var_2_525, align 8
; %var_2_527 = load i64, i64* %var_2_526, align 8
; Matched:\<badref\>:  store i64 %var_2_526, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_527, i64* %var_2_3, align 8
; Matched:%var_2_527:  %var_2_527 = add i64 %var_2_520, 16
; %var_2_528 = add i64 %var_2_521, 16
; Matched:\<badref\>:  store i64 %var_2_527, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_528, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_400c17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jge_.L_400c04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400bf1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, 0
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_imull__0x0__0xc__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x10__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x14__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_imull_0x10__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_imull_0x14__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_400b5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bf6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400b2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
