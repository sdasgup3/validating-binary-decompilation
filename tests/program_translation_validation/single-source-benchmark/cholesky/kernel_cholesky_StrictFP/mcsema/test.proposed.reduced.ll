; ModuleID = '/tmp/tmpirz65hgs-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x550__rip__type = type <{ [8 x i8] }>
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
@G_0x550__rip_ = global %G_0x550__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_cholesky_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_7:  %var_2_7 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_7, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %var_2_8, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_10:  %var_2_10 = inttoptr i64 %var_2_9 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_6, i64* %var_2_10, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_9, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -72
; %var_2_11 = add i64 %var_2_7, -72
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = icmp ult i64 %var_2_9, 64
; %var_2_12 = icmp ult i64 %var_2_8, 64
; Matched:%var_2_14:  %var_2_14 = zext i1 %var_2_13 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_15:  %var_2_15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_14, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_16:  %var_2_16 = trunc i64 %var_2_12 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_17:  %var_2_17 = and i32 %var_2_16, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_18:  %var_2_18 = tail call i32 @llvm.ctpop.i32(i32 %var_2_17) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_19:  %var_2_19 = trunc i32 %var_2_18 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_20:  %var_2_20 = and i8 %var_2_19, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_21:  %var_2_21 = xor i8 %var_2_20, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_22:  %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_21, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_23:  %var_2_23 = xor i64 %var_2_9, %var_2_12
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_24:  %var_2_24 = lshr i64 %var_2_23, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_25:  %var_2_25 = trunc i64 %var_2_24 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_26:  %var_2_26 = and i8 %var_2_25, 1
; %var_2_25 = and i8 %var_2_24, 1
; Matched:%var_2_27:  %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_26, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_28:  %var_2_28 = icmp eq i64 %var_2_12, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_29:  %var_2_29 = zext i1 %var_2_28 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_31:  %var_2_31 = lshr i64 %var_2_12, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_32:  %var_2_32 = trunc i64 %var_2_31 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_9, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_35:  %var_2_35 = xor i64 %var_2_31, %var_2_34
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_36:  %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_37:  %var_2_37 = icmp eq i64 %var_2_36, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_38:  %var_2_38 = zext i1 %var_2_37 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_3 to i32*
; %EDI.i = bitcast %union.anon* %var_2_39 to i32*
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_8, -12
; %var_2_40 = add i64 %var_2_7, -12
; Matched:%var_2_41:  %var_2_41 = load i32, i32* %EDI, align 4
; %var_2_41 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_11, 10
; %var_2_42 = add i64 %var_2_10, 10
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_43:  %var_2_43 = inttoptr i64 %var_2_40 to i32*
; %var_2_43 = inttoptr i64 %var_2_40 to i32*
; Matched:\<badref\>:  store i32 %var_2_41, i32* %var_2_43, align 4
; store i32 %var_2_41, i32* %var_2_43, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_44:  %var_2_44 = load i64, i64* %RBP, align 8
; %var_2_44 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_44, -16
; %var_2_45 = add i64 %var_2_44, -16
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RSI, align 8
; %var_2_46 = load i64, i64* %RSI.i, align 8
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %PC, align 8
; %var_2_47 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, 4
; %var_2_48 = add i64 %var_2_47, 4
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8
; store i64 %var_2_48, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = inttoptr i64 %var_2_45 to i64*
; %var_2_49 = inttoptr i64 %var_2_45 to i64*
; Matched:\<badref\>:  store i64 %var_2_46, i64* %var_2_49, align 8
; store i64 %var_2_46, i64* %var_2_49, align 8
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %RBP, align 8
; %var_2_50 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, -24
; %var_2_51 = add i64 %var_2_50, -24
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RDX, align 8
; %var_2_52 = load i64, i64* %RDX.i282, align 8
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %PC, align 8
; %var_2_53 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, 4
; %var_2_54 = add i64 %var_2_53, 4
; Matched:\<badref\>:  store i64 %var_2_54, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_51 to i64*
; %var_2_55 = inttoptr i64 %var_2_51 to i64*
; Matched:\<badref\>:  store i64 %var_2_52, i64* %var_2_55, align 8
; store i64 %var_2_52, i64* %var_2_55, align 8
%var_2_56 = load i64, i64* %RBP.i, align 8
%var_2_57 = add i64 %var_2_56, -28
; Matched:%var_2_708:  %var_2_708 = load i64, i64* %PC, align 8
; %var_2_58 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, 7
; %var_2_59 = add i64 %var_2_58, 7
; Matched:\<badref\>:  store i64 %var_2_709, i64* %PC, align 8
; store i64 %var_2_59, i64* %var_2_3, align 8
%var_2_60 = inttoptr i64 %var_2_57 to i32*
store i32 0, i32* %var_2_60, align 4
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%var_2_61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_61:  %var_2_61 = bitcast [32 x %union.VectorReg]* %var_2_4 to i8*
; %var_2_62 = bitcast [32 x %union.VectorReg]* %var_2_61 to i8*
%var_2_63 = bitcast [32 x %union.VectorReg]* %var_2_61 to double*
%var_2_64 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_61, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_66 = bitcast i64* %var_2_65 to double*
%var_2_67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_68 = bitcast %union.VectorReg* %var_2_67 to double*
; Matched:%var_2_67:  %var_2_67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_69 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_67, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_68:  %var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_69:  %var_2_69 = bitcast i64* %var_2_68 to double*
; %var_2_71 = bitcast i64* %var_2_70 to double*
%var_2_72 = bitcast %union.VectorReg* %var_2_67 to <2 x i32>*
%var_2_73 = bitcast i64* %var_2_70 to <2 x i32>*
; Matched:%var_2_72:  %var_2_72 = bitcast [32 x %union.VectorReg]* %var_2_4 to i32*
; %var_2_74 = bitcast [32 x %union.VectorReg]* %var_2_61 to i32*
; Matched:%var_2_73:  %var_2_73 = getelementptr inbounds i8, i8* %var_2_61, i64 4
; %var_2_75 = getelementptr inbounds i8, i8* %var_2_62, i64 4
; Matched:%var_2_74:  %var_2_74 = bitcast i8* %var_2_73 to i32*
; %var_2_76 = bitcast i8* %var_2_75 to i32*
; Matched:%var_2_75:  %var_2_75 = bitcast i64* %var_2_64 to i32*
; %var_2_77 = bitcast i64* %var_2_65 to i32*
; Matched:%var_2_76:  %var_2_76 = getelementptr inbounds i8, i8* %var_2_61, i64 12
; %var_2_78 = getelementptr inbounds i8, i8* %var_2_62, i64 12
; Matched:%var_2_77:  %var_2_77 = bitcast i8* %var_2_76 to i32*
; %var_2_79 = bitcast i8* %var_2_78 to i32*
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d5a

block_.L_400d5a:                                  ; preds = %block_.L_400eee, %entry
; Matched:%var_2_184:  %var_2_184 = phi i64 [ %var_2_183, %block_400eee ], [ %.pre, %block_400d40 ]
; %var_2_80 = phi i64 [ %.pre, %entry ], [ %var_2_802, %block_.L_400eee ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_400e05, %block_.L_400eee ]
%var_2_81 = load i64, i64* %RBP.i, align 8
%var_2_82 = add i64 %var_2_81, -28
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_184, 3
; %var_2_83 = add i64 %var_2_80, 3
; Matched:\<badref\>:  store i64 %var_2_187, i64* %PC, align 8
; store i64 %var_2_83, i64* %var_2_3, align 8
%var_2_84 = inttoptr i64 %var_2_82 to i32*
%var_2_85 = load i32, i32* %var_2_84, align 4
; Matched:%var_2_190:  %var_2_190 = zext i32 %var_2_189 to i64
; %var_2_86 = zext i32 %var_2_85 to i64
; Matched:\<badref\>:  store i64 %var_2_190, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_86, i64* %RAX.i277, align 8
%var_2_87 = add i64 %var_2_81, -4
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_184, 6
; %var_2_88 = add i64 %var_2_80, 6
; Matched:\<badref\>:  store i64 %var_2_192, i64* %PC, align 8
; store i64 %var_2_88, i64* %var_2_3, align 8
%var_2_89 = inttoptr i64 %var_2_87 to i32*
%var_2_90 = load i32, i32* %var_2_89, align 4
%var_2_91 = sub i32 %var_2_85, %var_2_90
; Matched:%var_2_196:  %var_2_196 = icmp ult i32 %var_2_189, %var_2_194
; %var_2_92 = icmp ult i32 %var_2_85, %var_2_90
; Matched:%var_2_197:  %var_2_197 = zext i1 %var_2_196 to i8
; %var_2_93 = zext i1 %var_2_92 to i8
; Matched:\<badref\>:  store i8 %var_2_197, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_93, i8* %var_2_14, align 1
; Matched:%var_2_198:  %var_2_198 = and i32 %var_2_195, 255
; %var_2_94 = and i32 %var_2_91, 255
; Matched:%var_2_199:  %var_2_199 = tail call i32 @llvm.ctpop.i32(i32 %var_2_198) #14
; %var_2_95 = tail call i32 @llvm.ctpop.i32(i32 %var_2_94)
; Matched:%var_2_200:  %var_2_200 = trunc i32 %var_2_199 to i8
; %var_2_96 = trunc i32 %var_2_95 to i8
; Matched:%var_2_201:  %var_2_201 = and i8 %var_2_200, 1
; %var_2_97 = and i8 %var_2_96, 1
; Matched:%var_2_202:  %var_2_202 = xor i8 %var_2_201, 1
; %var_2_98 = xor i8 %var_2_97, 1
; Matched:\<badref\>:  store i8 %var_2_202, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_98, i8* %var_2_21, align 1
; Matched:%var_2_203:  %var_2_203 = xor i32 %var_2_194, %var_2_189
; %var_2_99 = xor i32 %var_2_90, %var_2_85
; Matched:%var_2_204:  %var_2_204 = xor i32 %var_2_203, %var_2_195
; %var_2_100 = xor i32 %var_2_99, %var_2_91
; Matched:%var_2_205:  %var_2_205 = lshr i32 %var_2_204, 4
; %var_2_101 = lshr i32 %var_2_100, 4
; Matched:%var_2_206:  %var_2_206 = trunc i32 %var_2_205 to i8
; %var_2_102 = trunc i32 %var_2_101 to i8
; Matched:%var_2_207:  %var_2_207 = and i8 %var_2_206, 1
; %var_2_103 = and i8 %var_2_102, 1
; Matched:\<badref\>:  store i8 %var_2_207, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_103, i8* %var_2_26, align 1
; Matched:%var_2_208:  %var_2_208 = icmp eq i32 %var_2_195, 0
; %var_2_104 = icmp eq i32 %var_2_91, 0
; Matched:%var_2_209:  %var_2_209 = zext i1 %var_2_208 to i8
; %var_2_105 = zext i1 %var_2_104 to i8
; Matched:\<badref\>:  store i8 %var_2_209, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_105, i8* %var_2_29, align 1
%var_2_106 = lshr i32 %var_2_91, 31
%var_2_107 = trunc i32 %var_2_106 to i8
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_107, i8* %var_2_32, align 1
%var_2_108 = lshr i32 %var_2_85, 31
%var_2_109 = lshr i32 %var_2_90, 31
%var_2_110 = xor i32 %var_2_109, %var_2_108
%var_2_111 = xor i32 %var_2_106, %var_2_108
%var_2_112 = add nuw nsw i32 %var_2_111, %var_2_110
%var_2_113 = icmp eq i32 %var_2_112, 2
; Matched:%var_2_218:  %var_2_218 = zext i1 %var_2_217 to i8
; %var_2_114 = zext i1 %var_2_113 to i8
; Matched:\<badref\>:  store i8 %var_2_218, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_114, i8* %var_2_38, align 1
%var_2_115 = icmp ne i8 %var_2_107, 0
%var_2_116 = xor i1 %var_2_115, %var_2_113
; Matched:  %.v48 = select i1 %var_2_220, i64 12, i64 423
; %.v21 = select i1 %var_2_116, i64 12, i64 423
; Matched:%var_2_221:  %var_2_221 = add i64 %var_2_184, %.v48
; %var_2_117 = add i64 %var_2_80, %.v21
; Matched:\<badref\>:  store i64 %var_2_221, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_117, i64* %var_2_3, align 8
br i1 %var_2_116, label %block_400d66, label %block_.L_400f01

block_400d66:                                     ; preds = %block_.L_400d5a
%var_2_118 = add i64 %var_2_81, -24
; Matched:%var_2_433:  %var_2_433 = add i64 %var_2_221, 4
; %var_2_119 = add i64 %var_2_117, 4
; Matched:\<badref\>:  store i64 %var_2_433, i64* %PC, align 8
; store i64 %var_2_119, i64* %var_2_3, align 8
%var_2_120 = inttoptr i64 %var_2_118 to i64*
%var_2_121 = load i64, i64* %var_2_120, align 8
; Matched:\<badref\>:  store i64 %var_2_576, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_121, i64* %RAX.i277, align 8
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_221, 8
; %var_2_122 = add i64 %var_2_117, 8
; Matched:\<badref\>:  store i64 %var_2_436, i64* %PC, align 8
; store i64 %var_2_122, i64* %var_2_3, align 8
; Matched:%var_2_578:  %var_2_578 = load i32, i32* %var_2_497, align 4
; %var_2_123 = load i32, i32* %var_2_84, align 4
; Matched:%var_2_579:  %var_2_579 = sext i32 %var_2_578 to i64
; %var_2_124 = sext i32 %var_2_123 to i64
; Matched:%var_2_580:  %var_2_580 = shl nsw i64 %var_2_579, 13
; %var_2_125 = shl nsw i64 %var_2_124, 13
; Matched:\<badref\>:  store i64 %var_2_580, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %RCX.i267, align 8
; Matched:%var_2_581:  %var_2_581 = add i64 %var_2_580, %var_2_576
; %var_2_126 = add i64 %var_2_125, %var_2_121
; Matched:\<badref\>:  store i64 %var_2_581, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_126, i64* %RAX.i277, align 8
; Matched:%var_2_441:  %var_2_441 = icmp ult i64 %var_2_440, %var_2_435
; %var_2_127 = icmp ult i64 %var_2_126, %var_2_121
; Matched:%var_2_542:  %var_2_542 = icmp ult i64 %var_2_540, %var_2_539
; %var_2_128 = icmp ult i64 %var_2_126, %var_2_125
; Matched:%var_2_671:  %var_2_671 = or i1 %var_2_669, %var_2_670
; %var_2_129 = or i1 %var_2_127, %var_2_128
; Matched:%var_2_672:  %var_2_672 = zext i1 %var_2_671 to i8
; %var_2_130 = zext i1 %var_2_129 to i8
; Matched:\<badref\>:  store i8 %var_2_672, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_130, i8* %var_2_14, align 1
; Matched:%var_2_673:  %var_2_673 = trunc i64 %var_2_668 to i32
; %var_2_131 = trunc i64 %var_2_126 to i32
; Matched:%var_2_323:  %var_2_323 = and i32 %var_2_322, 255
; %var_2_132 = and i32 %var_2_131, 255
; Matched:%var_2_324:  %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323) #14
; %var_2_133 = tail call i32 @llvm.ctpop.i32(i32 %var_2_132)
; Matched:%var_2_589:  %var_2_589 = trunc i32 %var_2_588 to i8
; %var_2_134 = trunc i32 %var_2_133 to i8
; Matched:%var_2_326:  %var_2_326 = and i8 %var_2_325, 1
; %var_2_135 = and i8 %var_2_134, 1
; Matched:%var_2_327:  %var_2_327 = xor i8 %var_2_326, 1
; %var_2_136 = xor i8 %var_2_135, 1
; Matched:\<badref\>:  store i8 %var_2_327, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_136, i8* %var_2_21, align 1
; Matched:%var_2_328:  %var_2_328 = xor i64 %var_2_312, %var_2_317
; %var_2_137 = xor i64 %var_2_121, %var_2_126
; Matched:%var_2_329:  %var_2_329 = lshr i64 %var_2_328, 4
; %var_2_138 = lshr i64 %var_2_137, 4
; Matched:%var_2_681:  %var_2_681 = trunc i64 %var_2_680 to i8
; %var_2_139 = trunc i64 %var_2_138 to i8
; Matched:%var_2_682:  %var_2_682 = and i8 %var_2_681, 1
; %var_2_140 = and i8 %var_2_139, 1
; Matched:\<badref\>:  store i8 %var_2_331, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_140, i8* %var_2_26, align 1
; Matched:%var_2_332:  %var_2_332 = icmp eq i64 %var_2_317, 0
; %var_2_141 = icmp eq i64 %var_2_126, 0
; Matched:%var_2_456:  %var_2_456 = zext i1 %var_2_455 to i8
; %var_2_142 = zext i1 %var_2_141 to i8
; Matched:\<badref\>:  store i8 %var_2_597, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_142, i8* %var_2_29, align 1
; Matched:%var_2_598:  %var_2_598 = lshr i64 %var_2_581, 63
; %var_2_143 = lshr i64 %var_2_126, 63
; Matched:%var_2_599:  %var_2_599 = trunc i64 %var_2_598 to i8
; %var_2_144 = trunc i64 %var_2_143 to i8
; Matched:\<badref\>:  store i8 %var_2_458, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_144, i8* %var_2_32, align 1
; Matched:%var_2_600:  %var_2_600 = lshr i64 %var_2_576, 63
; %var_2_145 = lshr i64 %var_2_121, 63
; Matched:%var_2_601:  %var_2_601 = lshr i64 %var_2_579, 50
; %var_2_146 = lshr i64 %var_2_124, 50
; Matched:%var_2_602:  %var_2_602 = and i64 %var_2_601, 1
; %var_2_147 = and i64 %var_2_146, 1
; Matched:%var_2_603:  %var_2_603 = xor i64 %var_2_598, %var_2_600
; %var_2_148 = xor i64 %var_2_143, %var_2_145
; Matched:%var_2_604:  %var_2_604 = xor i64 %var_2_598, %var_2_602
; %var_2_149 = xor i64 %var_2_143, %var_2_147
; Matched:%var_2_605:  %var_2_605 = add nuw nsw i64 %var_2_603, %var_2_604
; %var_2_150 = add nuw nsw i64 %var_2_148, %var_2_149
; Matched:%var_2_606:  %var_2_606 = icmp eq i64 %var_2_605, 2
; %var_2_151 = icmp eq i64 %var_2_150, 2
; Matched:%var_2_607:  %var_2_607 = zext i1 %var_2_606 to i8
; %var_2_152 = zext i1 %var_2_151 to i8
; Matched:\<badref\>:  store i8 %var_2_607, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_152, i8* %var_2_38, align 1
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_221, 19
; %var_2_153 = add i64 %var_2_117, 19
; Matched:\<badref\>:  store i64 %var_2_467, i64* %PC, align 8
; store i64 %var_2_153, i64* %var_2_3, align 8
; Matched:%var_2_116:  %var_2_116 = load i32, i32* %var_2_115, align 4
; %var_2_154 = load i32, i32* %var_2_84, align 4
; Matched:%var_2_117:  %var_2_117 = sext i32 %var_2_116 to i64
; %var_2_155 = sext i32 %var_2_154 to i64
; Matched:\<badref\>:  store i64 %var_2_117, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %RCX.i267, align 8
; Matched:%var_2_470:  %var_2_470 = shl nsw i64 %var_2_469, 3
; %var_2_156 = shl nsw i64 %var_2_155, 3
; Matched:%var_2_471:  %var_2_471 = add i64 %var_2_470, %var_2_440
; %var_2_157 = add i64 %var_2_156, %var_2_126
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_221, 24
; %var_2_158 = add i64 %var_2_117, 24
; Matched:\<badref\>:  store i64 %var_2_472, i64* %PC, align 8
; store i64 %var_2_158, i64* %var_2_3, align 8
; Matched:%var_2_473:  %var_2_473 = inttoptr i64 %var_2_471 to i64*
; %var_2_159 = inttoptr i64 %var_2_157 to i64*
; Matched:%var_2_474:  %var_2_474 = load i64, i64* %var_2_473, align 8
; %var_2_160 = load i64, i64* %var_2_159, align 8
; Matched:\<badref\>:  store i64 %var_2_474, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_160, i64* %var_2_64, align 1
store double 0.000000e+00, double* %var_2_66, align 1
; Matched:%var_2_475:  %var_2_475 = add i64 %var_2_221, 29
; %var_2_161 = add i64 %var_2_117, 29
; Matched:\<badref\>:  store i64 %var_2_475, i64* %PC, align 8
; store i64 %var_2_161, i64* %var_2_3, align 8
; Matched:%var_2_476:  %var_2_476 = load i32, i32* %var_2_193, align 4
; %var_2_162 = load i32, i32* %var_2_89, align 4
; Matched:%var_2_477:  %var_2_477 = sitofp i32 %var_2_476 to double
; %var_2_163 = sitofp i32 %var_2_162 to double
; Matched:\<badref\>:  store double %var_2_477, double* %var_2_66, align 1, !tbaa !1284
; store double %var_2_163, double* %var_2_68, align 1
; Matched:%var_2_478:  %var_2_478 = bitcast i64 %var_2_474 to double
; %var_2_164 = bitcast i64 %var_2_160 to double
; Matched:%var_2_479:  %var_2_479 = fmul double %var_2_477, %var_2_478
; %var_2_165 = fmul double %var_2_163, %var_2_164
; Matched:\<badref\>:  store double %var_2_479, double* %var_2_62, align 1, !tbaa !1284
; store double %var_2_165, double* %var_2_63, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_64, align 1, !tbaa !1284
; store i64 0, i64* %var_2_65, align 1
; Matched:%var_2_480:  %var_2_480 = add i64 %var_2_185, -48
; %var_2_166 = add i64 %var_2_81, -48
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_221, 38
; %var_2_167 = add i64 %var_2_117, 38
; Matched:\<badref\>:  store i64 %var_2_481, i64* %PC, align 8
; store i64 %var_2_167, i64* %var_2_3, align 8
; Matched:%var_2_482:  %var_2_482 = inttoptr i64 %var_2_480 to double*
; %var_2_168 = inttoptr i64 %var_2_166 to double*
; Matched:\<badref\>:  store double %var_2_479, double* %var_2_482, align 8
; store double %var_2_165, double* %var_2_168, align 8
%var_2_169 = load i64, i64* %RBP.i, align 8
%var_2_170 = add i64 %var_2_169, -32
; Matched:%var_2_485:  %var_2_485 = load i64, i64* %PC, align 8
; %var_2_171 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_485, 7
; %var_2_172 = add i64 %var_2_171, 7
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_172, i64* %var_2_3, align 8
%var_2_173 = inttoptr i64 %var_2_170 to i32*
store i32 0, i32* %var_2_173, align 4
%.pre16 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d93

block_.L_400d93:                                  ; preds = %block_400da4, %block_400d66
%var_2_174 = phi i64 [ %var_2_343, %block_400da4 ], [ %.pre16, %block_400d66 ]
%var_2_175 = load i64, i64* %RBP.i, align 8
%var_2_176 = add i64 %var_2_175, -32
; Matched:%var_2_491:  %var_2_491 = add i64 %var_2_488, 3
; %var_2_177 = add i64 %var_2_174, 3
; Matched:\<badref\>:  store i64 %var_2_491, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
%var_2_178 = inttoptr i64 %var_2_176 to i32*
%var_2_179 = load i32, i32* %var_2_178, align 4
; Matched:%var_2_494:  %var_2_494 = zext i32 %var_2_493 to i64
; %var_2_180 = zext i32 %var_2_179 to i64
; Matched:\<badref\>:  store i64 %var_2_400, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_180, i64* %RAX.i277, align 8
%var_2_181 = add i64 %var_2_175, -28
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_222, 6
; %var_2_182 = add i64 %var_2_174, 6
; Matched:\<badref\>:  store i64 %var_2_496, i64* %PC, align 8
; store i64 %var_2_182, i64* %var_2_3, align 8
%var_2_183 = inttoptr i64 %var_2_181 to i32*
%var_2_184 = load i32, i32* %var_2_183, align 4
%var_2_185 = add i32 %var_2_184, -1
; Matched:%var_2_500:  %var_2_500 = zext i32 %var_2_499 to i64
; %var_2_186 = zext i32 %var_2_185 to i64
; Matched:\<badref\>:  store i64 %var_2_234, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_186, i64* %RCX.i267, align 8
%var_2_187 = lshr i32 %var_2_185, 31
%var_2_188 = sub i32 %var_2_179, %var_2_185
; Matched:%var_2_503:  %var_2_503 = icmp ult i32 %var_2_493, %var_2_499
; %var_2_189 = icmp ult i32 %var_2_179, %var_2_185
; Matched:%var_2_504:  %var_2_504 = zext i1 %var_2_503 to i8
; %var_2_190 = zext i1 %var_2_189 to i8
; Matched:\<badref\>:  store i8 %var_2_504, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_190, i8* %var_2_14, align 1
; Matched:%var_2_505:  %var_2_505 = and i32 %var_2_502, 255
; %var_2_191 = and i32 %var_2_188, 255
; Matched:%var_2_506:  %var_2_506 = tail call i32 @llvm.ctpop.i32(i32 %var_2_505) #14
; %var_2_192 = tail call i32 @llvm.ctpop.i32(i32 %var_2_191)
; Matched:%var_2_507:  %var_2_507 = trunc i32 %var_2_506 to i8
; %var_2_193 = trunc i32 %var_2_192 to i8
; Matched:%var_2_508:  %var_2_508 = and i8 %var_2_507, 1
; %var_2_194 = and i8 %var_2_193, 1
; Matched:%var_2_509:  %var_2_509 = xor i8 %var_2_508, 1
; %var_2_195 = xor i8 %var_2_194, 1
; Matched:\<badref\>:  store i8 %var_2_509, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_195, i8* %var_2_21, align 1
; Matched:%var_2_510:  %var_2_510 = xor i32 %var_2_499, %var_2_493
; %var_2_196 = xor i32 %var_2_185, %var_2_179
; Matched:%var_2_511:  %var_2_511 = xor i32 %var_2_510, %var_2_502
; %var_2_197 = xor i32 %var_2_196, %var_2_188
; Matched:%var_2_512:  %var_2_512 = lshr i32 %var_2_511, 4
; %var_2_198 = lshr i32 %var_2_197, 4
; Matched:%var_2_513:  %var_2_513 = trunc i32 %var_2_512 to i8
; %var_2_199 = trunc i32 %var_2_198 to i8
; Matched:%var_2_514:  %var_2_514 = and i8 %var_2_513, 1
; %var_2_200 = and i8 %var_2_199, 1
; Matched:\<badref\>:  store i8 %var_2_514, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_200, i8* %var_2_26, align 1
%var_2_201 = icmp eq i32 %var_2_188, 0
; Matched:%var_2_516:  %var_2_516 = zext i1 %var_2_515 to i8
; %var_2_202 = zext i1 %var_2_201 to i8
; Matched:\<badref\>:  store i8 %var_2_516, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_202, i8* %var_2_29, align 1
%var_2_203 = lshr i32 %var_2_188, 31
%var_2_204 = trunc i32 %var_2_203 to i8
; Matched:\<badref\>:  store i8 %var_2_518, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_204, i8* %var_2_32, align 1
%var_2_205 = lshr i32 %var_2_179, 31
%var_2_206 = xor i32 %var_2_187, %var_2_205
%var_2_207 = xor i32 %var_2_203, %var_2_205
%var_2_208 = add nuw nsw i32 %var_2_207, %var_2_206
%var_2_209 = icmp eq i32 %var_2_208, 2
; Matched:%var_2_524:  %var_2_524 = zext i1 %var_2_523 to i8
; %var_2_210 = zext i1 %var_2_209 to i8
; Matched:\<badref\>:  store i8 %var_2_524, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_210, i8* %var_2_38, align 1
%var_2_211 = icmp ne i8 %var_2_204, 0
%var_2_212 = xor i1 %var_2_211, %var_2_209
%.demorgan = or i1 %var_2_201, %var_2_212
  %.v22 = select i1 %.demorgan, i64 17, i64 93
%var_2_213 = add i64 %var_2_174, %.v22
; Matched:\<badref\>:  store i64 %var_2_527, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_213, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_400da4, label %block_.L_400df0

block_400da4:                                     ; preds = %block_.L_400d93
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_489, -48
; %var_2_214 = add i64 %var_2_175, -48
; Matched:%var_2_529:  %var_2_529 = add i64 %var_2_527, 5
; %var_2_215 = add i64 %var_2_213, 5
; Matched:\<badref\>:  store i64 %var_2_529, i64* %PC, align 8
; store i64 %var_2_215, i64* %var_2_3, align 8
; Matched:%var_2_530:  %var_2_530 = inttoptr i64 %var_2_528 to i64*
; %var_2_216 = inttoptr i64 %var_2_214 to i64*
; Matched:%var_2_531:  %var_2_531 = load i64, i64* %var_2_530, align 8
; %var_2_217 = load i64, i64* %var_2_216, align 8
; Matched:\<badref\>:  store i64 %var_2_531, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_217, i64* %var_2_64, align 1
store double 0.000000e+00, double* %var_2_66, align 1
%var_2_218 = add i64 %var_2_175, -24
; Matched:%var_2_533:  %var_2_533 = add i64 %var_2_527, 9
; %var_2_219 = add i64 %var_2_213, 9
; Matched:\<badref\>:  store i64 %var_2_533, i64* %PC, align 8
; store i64 %var_2_219, i64* %var_2_3, align 8
%var_2_220 = inttoptr i64 %var_2_218 to i64*
%var_2_221 = load i64, i64* %var_2_220, align 8
; Matched:\<badref\>:  store i64 %var_2_269, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_221, i64* %RAX.i277, align 8
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_527, 13
; %var_2_222 = add i64 %var_2_213, 13
; Matched:\<badref\>:  store i64 %var_2_536, i64* %PC, align 8
; store i64 %var_2_222, i64* %var_2_3, align 8
; Matched:%var_2_437:  %var_2_437 = load i32, i32* %var_2_188, align 4
; %var_2_223 = load i32, i32* %var_2_183, align 4
; Matched:%var_2_438:  %var_2_438 = sext i32 %var_2_437 to i64
; %var_2_224 = sext i32 %var_2_223 to i64
; Matched:%var_2_439:  %var_2_439 = shl nsw i64 %var_2_438, 13
; %var_2_225 = shl nsw i64 %var_2_224, 13
; Matched:\<badref\>:  store i64 %var_2_439, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_225, i64* %RCX.i267, align 8
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_439, %var_2_435
; %var_2_226 = add i64 %var_2_225, %var_2_221
; Matched:\<badref\>:  store i64 %var_2_440, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_226, i64* %RAX.i277, align 8
; Matched:%var_2_541:  %var_2_541 = icmp ult i64 %var_2_540, %var_2_535
; %var_2_227 = icmp ult i64 %var_2_226, %var_2_221
; Matched:%var_2_670:  %var_2_670 = icmp ult i64 %var_2_668, %var_2_667
; %var_2_228 = icmp ult i64 %var_2_226, %var_2_225
; Matched:%var_2_320:  %var_2_320 = or i1 %var_2_318, %var_2_319
; %var_2_229 = or i1 %var_2_227, %var_2_228
; Matched:%var_2_321:  %var_2_321 = zext i1 %var_2_320 to i8
; %var_2_230 = zext i1 %var_2_229 to i8
; Matched:\<badref\>:  store i8 %var_2_321, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_230, i8* %var_2_14, align 1
; Matched:%var_2_322:  %var_2_322 = trunc i64 %var_2_317 to i32
; %var_2_231 = trunc i64 %var_2_226 to i32
; Matched:%var_2_587:  %var_2_587 = and i32 %var_2_586, 255
; %var_2_232 = and i32 %var_2_231, 255
; Matched:%var_2_588:  %var_2_588 = tail call i32 @llvm.ctpop.i32(i32 %var_2_587) #14
; %var_2_233 = tail call i32 @llvm.ctpop.i32(i32 %var_2_232)
; Matched:%var_2_448:  %var_2_448 = trunc i32 %var_2_447 to i8
; %var_2_234 = trunc i32 %var_2_233 to i8
; Matched:%var_2_590:  %var_2_590 = and i8 %var_2_589, 1
; %var_2_235 = and i8 %var_2_234, 1
; Matched:%var_2_591:  %var_2_591 = xor i8 %var_2_590, 1
; %var_2_236 = xor i8 %var_2_235, 1
; Matched:\<badref\>:  store i8 %var_2_591, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_236, i8* %var_2_21, align 1
; Matched:%var_2_592:  %var_2_592 = xor i64 %var_2_576, %var_2_581
; %var_2_237 = xor i64 %var_2_221, %var_2_226
; Matched:%var_2_593:  %var_2_593 = lshr i64 %var_2_592, 4
; %var_2_238 = lshr i64 %var_2_237, 4
; Matched:%var_2_594:  %var_2_594 = trunc i64 %var_2_593 to i8
; %var_2_239 = trunc i64 %var_2_238 to i8
; Matched:%var_2_595:  %var_2_595 = and i8 %var_2_594, 1
; %var_2_240 = and i8 %var_2_239, 1
; Matched:\<badref\>:  store i8 %var_2_595, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_240, i8* %var_2_26, align 1
; Matched:%var_2_455:  %var_2_455 = icmp eq i64 %var_2_440, 0
; %var_2_241 = icmp eq i64 %var_2_226, 0
; Matched:%var_2_556:  %var_2_556 = zext i1 %var_2_555 to i8
; %var_2_242 = zext i1 %var_2_241 to i8
; Matched:\<badref\>:  store i8 %var_2_456, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_242, i8* %var_2_29, align 1
; Matched:%var_2_457:  %var_2_457 = lshr i64 %var_2_440, 63
; %var_2_243 = lshr i64 %var_2_226, 63
; Matched:%var_2_458:  %var_2_458 = trunc i64 %var_2_457 to i8
; %var_2_244 = trunc i64 %var_2_243 to i8
; Matched:\<badref\>:  store i8 %var_2_686, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_244, i8* %var_2_32, align 1
; Matched:%var_2_459:  %var_2_459 = lshr i64 %var_2_435, 63
; %var_2_245 = lshr i64 %var_2_221, 63
; Matched:%var_2_460:  %var_2_460 = lshr i64 %var_2_438, 50
; %var_2_246 = lshr i64 %var_2_224, 50
; Matched:%var_2_461:  %var_2_461 = and i64 %var_2_460, 1
; %var_2_247 = and i64 %var_2_246, 1
; Matched:%var_2_462:  %var_2_462 = xor i64 %var_2_457, %var_2_459
; %var_2_248 = xor i64 %var_2_243, %var_2_245
; Matched:%var_2_463:  %var_2_463 = xor i64 %var_2_457, %var_2_461
; %var_2_249 = xor i64 %var_2_243, %var_2_247
; Matched:%var_2_464:  %var_2_464 = add nuw nsw i64 %var_2_462, %var_2_463
; %var_2_250 = add nuw nsw i64 %var_2_248, %var_2_249
; Matched:%var_2_465:  %var_2_465 = icmp eq i64 %var_2_464, 2
; %var_2_251 = icmp eq i64 %var_2_250, 2
; Matched:%var_2_466:  %var_2_466 = zext i1 %var_2_465 to i8
; %var_2_252 = zext i1 %var_2_251 to i8
; Matched:\<badref\>:  store i8 %var_2_466, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_252, i8* %var_2_38, align 1
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_527, 24
; %var_2_253 = add i64 %var_2_213, 24
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_253, i64* %var_2_3, align 8
; Matched:%var_2_696:  %var_2_696 = load i32, i32* %var_2_398, align 4
; %var_2_254 = load i32, i32* %var_2_178, align 4
; Matched:%var_2_697:  %var_2_697 = sext i32 %var_2_696 to i64
; %var_2_255 = sext i32 %var_2_254 to i64
; Matched:\<badref\>:  store i64 %var_2_697, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_255, i64* %RCX.i267, align 8
; Matched:%var_2_570:  %var_2_570 = shl nsw i64 %var_2_569, 3
; %var_2_256 = shl nsw i64 %var_2_255, 3
; Matched:%var_2_571:  %var_2_571 = add i64 %var_2_570, %var_2_540
; %var_2_257 = add i64 %var_2_256, %var_2_226
; Matched:%var_2_572:  %var_2_572 = add i64 %var_2_527, 29
; %var_2_258 = add i64 %var_2_213, 29
; Matched:\<badref\>:  store i64 %var_2_572, i64* %PC, align 8
; store i64 %var_2_258, i64* %var_2_3, align 8
; Matched:%var_2_573:  %var_2_573 = inttoptr i64 %var_2_571 to i64*
; %var_2_259 = inttoptr i64 %var_2_257 to i64*
; Matched:%var_2_574:  %var_2_574 = load i64, i64* %var_2_573, align 8
; %var_2_260 = load i64, i64* %var_2_259, align 8
; Matched:\<badref\>:  store i64 %var_2_574, i64* %var_2_67, align 1, !tbaa !1284
; store i64 %var_2_260, i64* %var_2_69, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_69, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_71, align 1
; Matched:%var_2_575:  %var_2_575 = add i64 %var_2_527, 33
; %var_2_261 = add i64 %var_2_213, 33
; Matched:\<badref\>:  store i64 %var_2_575, i64* %PC, align 8
; store i64 %var_2_261, i64* %var_2_3, align 8
%var_2_262 = load i64, i64* %var_2_220, align 8
; Matched:\<badref\>:  store i64 %var_2_661, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_262, i64* %RAX.i277, align 8
; Matched:%var_2_577:  %var_2_577 = add i64 %var_2_527, 37
; %var_2_263 = add i64 %var_2_213, 37
; Matched:\<badref\>:  store i64 %var_2_577, i64* %PC, align 8
; store i64 %var_2_263, i64* %var_2_3, align 8
; Matched:%var_2_537:  %var_2_537 = load i32, i32* %var_2_497, align 4
; %var_2_264 = load i32, i32* %var_2_183, align 4
; Matched:%var_2_538:  %var_2_538 = sext i32 %var_2_537 to i64
; %var_2_265 = sext i32 %var_2_264 to i64
; Matched:%var_2_539:  %var_2_539 = shl nsw i64 %var_2_538, 13
; %var_2_266 = shl nsw i64 %var_2_265, 13
; Matched:\<badref\>:  store i64 %var_2_539, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_266, i64* %RCX.i267, align 8
; Matched:%var_2_540:  %var_2_540 = add i64 %var_2_539, %var_2_535
; %var_2_267 = add i64 %var_2_266, %var_2_262
; Matched:\<badref\>:  store i64 %var_2_540, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_267, i64* %RAX.i277, align 8
; Matched:%var_2_669:  %var_2_669 = icmp ult i64 %var_2_668, %var_2_661
; %var_2_268 = icmp ult i64 %var_2_267, %var_2_262
; Matched:%var_2_319:  %var_2_319 = icmp ult i64 %var_2_317, %var_2_316
; %var_2_269 = icmp ult i64 %var_2_267, %var_2_266
; Matched:%var_2_584:  %var_2_584 = or i1 %var_2_582, %var_2_583
; %var_2_270 = or i1 %var_2_268, %var_2_269
; Matched:%var_2_585:  %var_2_585 = zext i1 %var_2_584 to i8
; %var_2_271 = zext i1 %var_2_270 to i8
; Matched:\<badref\>:  store i8 %var_2_585, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_271, i8* %var_2_14, align 1
; Matched:%var_2_586:  %var_2_586 = trunc i64 %var_2_581 to i32
; %var_2_272 = trunc i64 %var_2_267 to i32
; Matched:%var_2_446:  %var_2_446 = and i32 %var_2_445, 255
; %var_2_273 = and i32 %var_2_272, 255
; Matched:%var_2_447:  %var_2_447 = tail call i32 @llvm.ctpop.i32(i32 %var_2_446) #14
; %var_2_274 = tail call i32 @llvm.ctpop.i32(i32 %var_2_273)
; Matched:%var_2_548:  %var_2_548 = trunc i32 %var_2_547 to i8
; %var_2_275 = trunc i32 %var_2_274 to i8
; Matched:%var_2_449:  %var_2_449 = and i8 %var_2_448, 1
; %var_2_276 = and i8 %var_2_275, 1
; Matched:%var_2_450:  %var_2_450 = xor i8 %var_2_449, 1
; %var_2_277 = xor i8 %var_2_276, 1
; Matched:\<badref\>:  store i8 %var_2_450, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_277, i8* %var_2_21, align 1
; Matched:%var_2_451:  %var_2_451 = xor i64 %var_2_435, %var_2_440
; %var_2_278 = xor i64 %var_2_262, %var_2_267
; Matched:%var_2_452:  %var_2_452 = lshr i64 %var_2_451, 4
; %var_2_279 = lshr i64 %var_2_278, 4
; Matched:%var_2_453:  %var_2_453 = trunc i64 %var_2_452 to i8
; %var_2_280 = trunc i64 %var_2_279 to i8
; Matched:%var_2_454:  %var_2_454 = and i8 %var_2_453, 1
; %var_2_281 = and i8 %var_2_280, 1
; Matched:\<badref\>:  store i8 %var_2_454, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_281, i8* %var_2_26, align 1
; Matched:%var_2_555:  %var_2_555 = icmp eq i64 %var_2_540, 0
; %var_2_282 = icmp eq i64 %var_2_267, 0
; Matched:%var_2_684:  %var_2_684 = zext i1 %var_2_683 to i8
; %var_2_283 = zext i1 %var_2_282 to i8
; Matched:\<badref\>:  store i8 %var_2_684, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_283, i8* %var_2_29, align 1
; Matched:%var_2_685:  %var_2_685 = lshr i64 %var_2_668, 63
; %var_2_284 = lshr i64 %var_2_267, 63
; Matched:%var_2_686:  %var_2_686 = trunc i64 %var_2_685 to i8
; %var_2_285 = trunc i64 %var_2_284 to i8
; Matched:\<badref\>:  store i8 %var_2_335, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_285, i8* %var_2_32, align 1
; Matched:%var_2_559:  %var_2_559 = lshr i64 %var_2_535, 63
; %var_2_286 = lshr i64 %var_2_262, 63
; Matched:%var_2_560:  %var_2_560 = lshr i64 %var_2_538, 50
; %var_2_287 = lshr i64 %var_2_265, 50
; Matched:%var_2_561:  %var_2_561 = and i64 %var_2_560, 1
; %var_2_288 = and i64 %var_2_287, 1
; Matched:%var_2_562:  %var_2_562 = xor i64 %var_2_557, %var_2_559
; %var_2_289 = xor i64 %var_2_284, %var_2_286
; Matched:%var_2_563:  %var_2_563 = xor i64 %var_2_557, %var_2_561
; %var_2_290 = xor i64 %var_2_284, %var_2_288
; Matched:%var_2_564:  %var_2_564 = add nuw nsw i64 %var_2_562, %var_2_563
; %var_2_291 = add nuw nsw i64 %var_2_289, %var_2_290
; Matched:%var_2_565:  %var_2_565 = icmp eq i64 %var_2_564, 2
; %var_2_292 = icmp eq i64 %var_2_291, 2
; Matched:%var_2_566:  %var_2_566 = zext i1 %var_2_565 to i8
; %var_2_293 = zext i1 %var_2_292 to i8
; Matched:\<badref\>:  store i8 %var_2_566, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_293, i8* %var_2_38, align 1
%var_2_294 = load i64, i64* %RBP.i, align 8
%var_2_295 = add i64 %var_2_294, -32
; Matched:%var_2_610:  %var_2_610 = add i64 %var_2_527, 48
; %var_2_296 = add i64 %var_2_213, 48
; Matched:\<badref\>:  store i64 %var_2_610, i64* %PC, align 8
; store i64 %var_2_296, i64* %var_2_3, align 8
%var_2_297 = inttoptr i64 %var_2_295 to i32*
; Matched:%var_2_612:  %var_2_612 = load i32, i32* %var_2_611, align 4
; %var_2_298 = load i32, i32* %var_2_297, align 4
; Matched:%var_2_613:  %var_2_613 = sext i32 %var_2_612 to i64
; %var_2_299 = sext i32 %var_2_298 to i64
; Matched:\<badref\>:  store i64 %var_2_613, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %RCX.i267, align 8
; Matched:%var_2_614:  %var_2_614 = shl nsw i64 %var_2_613, 3
; %var_2_300 = shl nsw i64 %var_2_299, 3
; Matched:%var_2_615:  %var_2_615 = add i64 %var_2_614, %var_2_581
; %var_2_301 = add i64 %var_2_300, %var_2_267
; Matched:%var_2_616:  %var_2_616 = add i64 %var_2_527, 53
; %var_2_302 = add i64 %var_2_213, 53
; Matched:\<badref\>:  store i64 %var_2_616, i64* %PC, align 8
; store i64 %var_2_302, i64* %var_2_3, align 8
; Matched:%var_2_617:  %var_2_617 = bitcast i64 %var_2_574 to double
; %var_2_303 = bitcast i64 %var_2_260 to double
; Matched:%var_2_618:  %var_2_618 = inttoptr i64 %var_2_615 to double*
; %var_2_304 = inttoptr i64 %var_2_301 to double*
; Matched:%var_2_619:  %var_2_619 = load double, double* %var_2_618, align 8
; %var_2_305 = load double, double* %var_2_304, align 8
; Matched:%var_2_620:  %var_2_620 = fmul double %var_2_617, %var_2_619
; %var_2_306 = fmul double %var_2_303, %var_2_305
; Matched:\<badref\>:  store double %var_2_620, double* %var_2_66, align 1, !tbaa !1284
; store double %var_2_306, double* %var_2_68, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_68, align 1, !tbaa !1284
; store i64 0, i64* %var_2_70, align 1
; Matched:%var_2_621:  %var_2_621 = load double, double* %var_2_62, align 1
; %var_2_307 = load double, double* %var_2_63, align 1
; Matched:%var_2_622:  %var_2_622 = fsub double %var_2_621, %var_2_620
; %var_2_308 = fsub double %var_2_307, %var_2_306
; Matched:\<badref\>:  store double %var_2_622, double* %var_2_62, align 1, !tbaa !1284
; store double %var_2_308, double* %var_2_63, align 1
; Matched:%var_2_623:  %var_2_623 = add i64 %var_2_608, -48
; %var_2_309 = add i64 %var_2_294, -48
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_527, 62
; %var_2_310 = add i64 %var_2_213, 62
; Matched:\<badref\>:  store i64 %var_2_624, i64* %PC, align 8
; store i64 %var_2_310, i64* %var_2_3, align 8
; Matched:%var_2_625:  %var_2_625 = inttoptr i64 %var_2_623 to double*
; %var_2_311 = inttoptr i64 %var_2_309 to double*
; Matched:\<badref\>:  store double %var_2_622, double* %var_2_625, align 8
; store double %var_2_308, double* %var_2_311, align 8
; Matched:%var_2_626:  %var_2_626 = load i64, i64* %RBP, align 8
; %var_2_312 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_800, -32
; %var_2_313 = add i64 %var_2_312, -32
; Matched:%var_2_628:  %var_2_628 = load i64, i64* %PC, align 8
; %var_2_314 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_629:  %var_2_629 = add i64 %var_2_628, 3
; %var_2_315 = add i64 %var_2_314, 3
; Matched:\<badref\>:  store i64 %var_2_803, i64* %PC, align 8
; store i64 %var_2_315, i64* %var_2_3, align 8
; Matched:%var_2_630:  %var_2_630 = inttoptr i64 %var_2_627 to i32*
; %var_2_316 = inttoptr i64 %var_2_313 to i32*
; Matched:%var_2_631:  %var_2_631 = load i32, i32* %var_2_630, align 4
; %var_2_317 = load i32, i32* %var_2_316, align 4
; Matched:%var_2_632:  %var_2_632 = add i32 %var_2_631, 1
; %var_2_318 = add i32 %var_2_317, 1
; Matched:%var_2_633:  %var_2_633 = zext i32 %var_2_632 to i64
; %var_2_319 = zext i32 %var_2_318 to i64
; Matched:\<badref\>:  store i64 %var_2_807, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_319, i64* %RAX.i277, align 8
; Matched:%var_2_634:  %var_2_634 = icmp eq i32 %var_2_631, -1
; %var_2_320 = icmp eq i32 %var_2_317, -1
; Matched:%var_2_635:  %var_2_635 = icmp eq i32 %var_2_632, 0
; %var_2_321 = icmp eq i32 %var_2_318, 0
; Matched:%var_2_636:  %var_2_636 = or i1 %var_2_634, %var_2_635
; %var_2_322 = or i1 %var_2_320, %var_2_321
; Matched:%var_2_637:  %var_2_637 = zext i1 %var_2_636 to i8
; %var_2_323 = zext i1 %var_2_322 to i8
; Matched:\<badref\>:  store i8 %var_2_637, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_323, i8* %var_2_14, align 1
; Matched:%var_2_638:  %var_2_638 = and i32 %var_2_632, 255
; %var_2_324 = and i32 %var_2_318, 255
; Matched:%var_2_639:  %var_2_639 = tail call i32 @llvm.ctpop.i32(i32 %var_2_638) #14
; %var_2_325 = tail call i32 @llvm.ctpop.i32(i32 %var_2_324)
; Matched:%var_2_814:  %var_2_814 = trunc i32 %var_2_813 to i8
; %var_2_326 = trunc i32 %var_2_325 to i8
; Matched:%var_2_641:  %var_2_641 = and i8 %var_2_640, 1
; %var_2_327 = and i8 %var_2_326, 1
; Matched:%var_2_642:  %var_2_642 = xor i8 %var_2_641, 1
; %var_2_328 = xor i8 %var_2_327, 1
; Matched:\<badref\>:  store i8 %var_2_642, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_328, i8* %var_2_21, align 1
; Matched:%var_2_643:  %var_2_643 = xor i32 %var_2_632, %var_2_631
; %var_2_329 = xor i32 %var_2_318, %var_2_317
; Matched:%var_2_644:  %var_2_644 = lshr i32 %var_2_643, 4
; %var_2_330 = lshr i32 %var_2_329, 4
; Matched:%var_2_645:  %var_2_645 = trunc i32 %var_2_644 to i8
; %var_2_331 = trunc i32 %var_2_330 to i8
; Matched:%var_2_646:  %var_2_646 = and i8 %var_2_645, 1
; %var_2_332 = and i8 %var_2_331, 1
; Matched:\<badref\>:  store i8 %var_2_820, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_332, i8* %var_2_26, align 1
; Matched:%var_2_647:  %var_2_647 = zext i1 %var_2_635 to i8
; %var_2_333 = zext i1 %var_2_321 to i8
; Matched:\<badref\>:  store i8 %var_2_647, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_333, i8* %var_2_29, align 1
; Matched:%var_2_648:  %var_2_648 = lshr i32 %var_2_632, 31
; %var_2_334 = lshr i32 %var_2_318, 31
; Matched:%var_2_649:  %var_2_649 = trunc i32 %var_2_648 to i8
; %var_2_335 = trunc i32 %var_2_334 to i8
; Matched:\<badref\>:  store i8 %var_2_649, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_335, i8* %var_2_32, align 1
; Matched:%var_2_650:  %var_2_650 = lshr i32 %var_2_631, 31
; %var_2_336 = lshr i32 %var_2_317, 31
; Matched:%var_2_651:  %var_2_651 = xor i32 %var_2_648, %var_2_650
; %var_2_337 = xor i32 %var_2_334, %var_2_336
; Matched:%var_2_826:  %var_2_826 = add nuw nsw i32 %var_2_825, %var_2_822
; %var_2_338 = add nuw nsw i32 %var_2_337, %var_2_334
; Matched:%var_2_653:  %var_2_653 = icmp eq i32 %var_2_652, 2
; %var_2_339 = icmp eq i32 %var_2_338, 2
; Matched:%var_2_654:  %var_2_654 = zext i1 %var_2_653 to i8
; %var_2_340 = zext i1 %var_2_339 to i8
; Matched:\<badref\>:  store i8 %var_2_654, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_340, i8* %var_2_38, align 1
; Matched:%var_2_655:  %var_2_655 = add i64 %var_2_628, 9
; %var_2_341 = add i64 %var_2_314, 9
; Matched:\<badref\>:  store i64 %var_2_655, i64* %PC, align 8
; store i64 %var_2_341, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_632, i32* %var_2_630, align 4
; store i32 %var_2_318, i32* %var_2_316, align 4
%var_2_342 = load i64, i64* %var_2_3, align 8
%var_2_343 = add i64 %var_2_342, -88
; Matched:\<badref\>:  store i64 %var_2_657, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_343, i64* %var_2_3, align 8
  br label %block_.L_400d93

block_.L_400df0:                                  ; preds = %block_.L_400d93
%var_2_344 = add i64 %var_2_213, ptrtoint (%G_0x550__rip__type* @G_0x550__rip_ to i64)
%var_2_345 = add i64 %var_2_213, 8
store i64 %var_2_345, i64* %var_2_3, align 8
%var_2_346 = inttoptr i64 %var_2_344 to i64*
%var_2_347 = load i64, i64* %var_2_346, align 8
store i64 %var_2_347, i64* %var_2_64, align 1
store double 0.000000e+00, double* %var_2_66, align 1
; Matched:%var_2_81:  %var_2_81 = add i64 %var_2_489, -48
; %var_2_348 = add i64 %var_2_175, -48
; Matched:%var_2_82:  %var_2_82 = add i64 %var_2_527, 13
; %var_2_349 = add i64 %var_2_213, 13
; Matched:\<badref\>:  store i64 %var_2_82, i64* %PC, align 8
; store i64 %var_2_349, i64* %var_2_3, align 8
; Matched:%var_2_83:  %var_2_83 = inttoptr i64 %var_2_81 to i64*
; %var_2_350 = inttoptr i64 %var_2_348 to i64*
; Matched:%var_2_84:  %var_2_84 = load i64, i64* %var_2_83, align 8
; %var_2_351 = load i64, i64* %var_2_350, align 8
; Matched:\<badref\>:  store i64 %var_2_84, i64* %var_2_67, align 1, !tbaa !1284
; store i64 %var_2_351, i64* %var_2_69, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_69, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_71, align 1
%var_2_352 = add i64 %var_2_175, -56
; Matched:%var_2_86:  %var_2_86 = add i64 %var_2_527, 18
; %var_2_353 = add i64 %var_2_213, 18
; Matched:\<badref\>:  store i64 %var_2_86, i64* %PC, align 8
; store i64 %var_2_353, i64* %var_2_3, align 8
%var_2_354 = inttoptr i64 %var_2_352 to i64*
store i64 %var_2_347, i64* %var_2_354, align 8
%var_2_355 = load i64, i64* %var_2_3, align 8
%var_2_356 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
%var_2_357 = load <2 x i32>, <2 x i32>* %var_2_73, align 1
%var_2_358 = extractelement <2 x i32> %var_2_356, i32 0
; Matched:\<badref\>:  store i32 %var_2_91, i32* %var_2_72, align 1, !tbaa !1286
; store i32 %var_2_358, i32* %var_2_74, align 1
%var_2_359 = extractelement <2 x i32> %var_2_356, i32 1
; Matched:\<badref\>:  store i32 %var_2_92, i32* %var_2_74, align 1, !tbaa !1286
; store i32 %var_2_359, i32* %var_2_76, align 1
%var_2_360 = extractelement <2 x i32> %var_2_357, i32 0
; Matched:\<badref\>:  store i32 %var_2_93, i32* %var_2_75, align 1, !tbaa !1286
; store i32 %var_2_360, i32* %var_2_77, align 1
%var_2_361 = extractelement <2 x i32> %var_2_357, i32 1
; Matched:\<badref\>:  store i32 %var_2_94, i32* %var_2_77, align 1, !tbaa !1286
; store i32 %var_2_361, i32* %var_2_79, align 1
%var_2_362 = add i64 %var_2_355, -1826
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_88, 8
; %var_2_363 = add i64 %var_2_355, 8
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_364 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_97, -8
; %var_2_365 = add i64 %var_2_364, -8
; Matched:%var_2_99:  %var_2_99 = inttoptr i64 %var_2_98 to i64*
; %var_2_366 = inttoptr i64 %var_2_365 to i64*
; Matched:\<badref\>:  store i64 %var_2_96, i64* %var_2_99, align 8
; store i64 %var_2_363, i64* %var_2_366, align 8
; Matched:\<badref\>:  store i64 %var_2_98, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_365, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_362, i64* %var_2_3, align 8
%call2_400e05 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %var_2_362, %struct.Memory* %MEMORY.0)
%var_2_367 = load i64, i64* %RBP.i, align 8
%var_2_368 = add i64 %var_2_367, -56
%var_2_369 = load i64, i64* %var_2_3, align 8
%var_2_370 = add i64 %var_2_369, 5
store i64 %var_2_370, i64* %var_2_3, align 8
%var_2_371 = inttoptr i64 %var_2_368 to double*
%var_2_372 = load double, double* %var_2_371, align 8
%var_2_373 = load double, double* %var_2_63, align 1
%var_2_374 = fdiv double %var_2_372, %var_2_373
store double %var_2_374, double* %var_2_68, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_68, align 1, !tbaa !1284
; store i64 0, i64* %var_2_70, align 1
%var_2_375 = add i64 %var_2_367, -16
%var_2_376 = add i64 %var_2_369, 13
store i64 %var_2_376, i64* %var_2_3, align 8
%var_2_377 = inttoptr i64 %var_2_375 to i64*
%var_2_378 = load i64, i64* %var_2_377, align 8
; Matched:\<badref\>:  store i64 %var_2_746, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_378, i64* %RAX.i277, align 8
%var_2_379 = add i64 %var_2_367, -28
%var_2_380 = add i64 %var_2_369, 17
store i64 %var_2_380, i64* %var_2_3, align 8
%var_2_381 = inttoptr i64 %var_2_379 to i32*
%var_2_382 = load i32, i32* %var_2_381, align 4
%var_2_383 = sext i32 %var_2_382 to i64
; Matched:\<badref\>:  store i64 %var_2_795, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_383, i64* %RCX.i267, align 8
%var_2_384 = shl nsw i64 %var_2_383, 3
%var_2_385 = add i64 %var_2_384, %var_2_378
%var_2_386 = add i64 %var_2_369, 22
store i64 %var_2_386, i64* %var_2_3, align 8
%var_2_387 = inttoptr i64 %var_2_385 to double*
store double %var_2_374, double* %var_2_387, align 8
%var_2_388 = load i64, i64* %RBP.i, align 8
%var_2_389 = add i64 %var_2_388, -28
; Matched:%var_2_364:  %var_2_364 = load i64, i64* %PC, align 8
; %var_2_390 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_364, 3
; %var_2_391 = add i64 %var_2_390, 3
; Matched:\<badref\>:  store i64 %var_2_629, i64* %PC, align 8
; store i64 %var_2_391, i64* %var_2_3, align 8
%var_2_392 = inttoptr i64 %var_2_389 to i32*
; Matched:%var_2_127:  %var_2_127 = load i32, i32* %var_2_126, align 4
; %var_2_393 = load i32, i32* %var_2_392, align 4
; Matched:%var_2_158:  %var_2_158 = add i32 %var_2_157, 1
; %var_2_394 = add i32 %var_2_393, 1
; Matched:%var_2_129:  %var_2_129 = zext i32 %var_2_128 to i64
; %var_2_395 = zext i32 %var_2_394 to i64
; Matched:\<badref\>:  store i64 %var_2_129, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_395, i64* %RDX.i282, align 8
; Matched:%var_2_130:  %var_2_130 = icmp eq i32 %var_2_127, -1
; %var_2_396 = icmp eq i32 %var_2_393, -1
; Matched:%var_2_161:  %var_2_161 = icmp eq i32 %var_2_158, 0
; %var_2_397 = icmp eq i32 %var_2_394, 0
; Matched:%var_2_162:  %var_2_162 = or i1 %var_2_160, %var_2_161
; %var_2_398 = or i1 %var_2_396, %var_2_397
; Matched:%var_2_133:  %var_2_133 = zext i1 %var_2_132 to i8
; %var_2_399 = zext i1 %var_2_398 to i8
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_399, i8* %var_2_14, align 1
; Matched:%var_2_164:  %var_2_164 = and i32 %var_2_158, 255
; %var_2_400 = and i32 %var_2_394, 255
; Matched:%var_2_165:  %var_2_165 = tail call i32 @llvm.ctpop.i32(i32 %var_2_164) #14
; %var_2_401 = tail call i32 @llvm.ctpop.i32(i32 %var_2_400)
; Matched:%var_2_136:  %var_2_136 = trunc i32 %var_2_135 to i8
; %var_2_402 = trunc i32 %var_2_401 to i8
; Matched:%var_2_137:  %var_2_137 = and i8 %var_2_136, 1
; %var_2_403 = and i8 %var_2_402, 1
; Matched:%var_2_168:  %var_2_168 = xor i8 %var_2_167, 1
; %var_2_404 = xor i8 %var_2_403, 1
; Matched:\<badref\>:  store i8 %var_2_168, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_404, i8* %var_2_21, align 1
; Matched:%var_2_139:  %var_2_139 = xor i32 %var_2_128, %var_2_127
; %var_2_405 = xor i32 %var_2_394, %var_2_393
; Matched:%var_2_140:  %var_2_140 = lshr i32 %var_2_139, 4
; %var_2_406 = lshr i32 %var_2_405, 4
; Matched:%var_2_171:  %var_2_171 = trunc i32 %var_2_170 to i8
; %var_2_407 = trunc i32 %var_2_406 to i8
; Matched:%var_2_172:  %var_2_172 = and i8 %var_2_171, 1
; %var_2_408 = and i8 %var_2_407, 1
; Matched:\<badref\>:  store i8 %var_2_142, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_408, i8* %var_2_26, align 1
; Matched:%var_2_143:  %var_2_143 = zext i1 %var_2_131 to i8
; %var_2_409 = zext i1 %var_2_397 to i8
; Matched:\<badref\>:  store i8 %var_2_173, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_409, i8* %var_2_29, align 1
; Matched:%var_2_174:  %var_2_174 = lshr i32 %var_2_158, 31
; %var_2_410 = lshr i32 %var_2_394, 31
; Matched:%var_2_145:  %var_2_145 = trunc i32 %var_2_144 to i8
; %var_2_411 = trunc i32 %var_2_410 to i8
; Matched:\<badref\>:  store i8 %var_2_145, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_411, i8* %var_2_32, align 1
; Matched:%var_2_176:  %var_2_176 = lshr i32 %var_2_157, 31
; %var_2_412 = lshr i32 %var_2_393, 31
; Matched:%var_2_177:  %var_2_177 = xor i32 %var_2_174, %var_2_176
; %var_2_413 = xor i32 %var_2_410, %var_2_412
; Matched:%var_2_148:  %var_2_148 = add nuw nsw i32 %var_2_147, %var_2_144
; %var_2_414 = add nuw nsw i32 %var_2_413, %var_2_410
; Matched:%var_2_149:  %var_2_149 = icmp eq i32 %var_2_148, 2
; %var_2_415 = icmp eq i32 %var_2_414, 2
; Matched:%var_2_180:  %var_2_180 = zext i1 %var_2_179 to i8
; %var_2_416 = zext i1 %var_2_415 to i8
; Matched:\<badref\>:  store i8 %var_2_180, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_416, i8* %var_2_38, align 1
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_122, -32
; %var_2_417 = add i64 %var_2_388, -32
; Matched:%var_2_829:  %var_2_829 = add i64 %var_2_802, 9
; %var_2_418 = add i64 %var_2_390, 9
; Matched:\<badref\>:  store i64 %var_2_829, i64* %PC, align 8
; store i64 %var_2_418, i64* %var_2_3, align 8
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_151 to i32*
; %var_2_419 = inttoptr i64 %var_2_417 to i32*
; Matched:\<badref\>:  store i32 %var_2_128, i32* %var_2_153, align 4
; store i32 %var_2_394, i32* %var_2_419, align 4
; Matched:  %.pre44 = load i64, i64* %PC, align 8
; %.pre17 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e29

block_.L_400e29:                                  ; preds = %block_.L_400eb6, %block_.L_400df0
; Matched:%var_2_394:  %var_2_394 = phi i64 [ %var_2_831, %block_400eb6 ], [ %.pre44, %block_400df0 ]
; %var_2_420 = phi i64 [ %var_2_772, %block_.L_400eb6 ], [ %.pre17, %block_.L_400df0 ]
%var_2_421 = load i64, i64* %RBP.i, align 8
%var_2_422 = add i64 %var_2_421, -32
; Matched:%var_2_397:  %var_2_397 = add i64 %var_2_394, 3
; %var_2_423 = add i64 %var_2_420, 3
; Matched:\<badref\>:  store i64 %var_2_397, i64* %PC, align 8
; store i64 %var_2_423, i64* %var_2_3, align 8
%var_2_424 = inttoptr i64 %var_2_422 to i32*
%var_2_425 = load i32, i32* %var_2_424, align 4
; Matched:%var_2_400:  %var_2_400 = zext i32 %var_2_399 to i64
; %var_2_426 = zext i32 %var_2_425 to i64
; Matched:\<badref\>:  store i64 %var_2_494, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_426, i64* %RAX.i277, align 8
%var_2_427 = add i64 %var_2_421, -4
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_394, 6
; %var_2_428 = add i64 %var_2_420, 6
; Matched:\<badref\>:  store i64 %var_2_402, i64* %PC, align 8
; store i64 %var_2_428, i64* %var_2_3, align 8
%var_2_429 = inttoptr i64 %var_2_427 to i32*
%var_2_430 = load i32, i32* %var_2_429, align 4
%var_2_431 = sub i32 %var_2_425, %var_2_430
; Matched:%var_2_406:  %var_2_406 = icmp ult i32 %var_2_399, %var_2_404
; %var_2_432 = icmp ult i32 %var_2_425, %var_2_430
; Matched:%var_2_407:  %var_2_407 = zext i1 %var_2_406 to i8
; %var_2_433 = zext i1 %var_2_432 to i8
; Matched:\<badref\>:  store i8 %var_2_407, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_433, i8* %var_2_14, align 1
; Matched:%var_2_408:  %var_2_408 = and i32 %var_2_405, 255
; %var_2_434 = and i32 %var_2_431, 255
; Matched:%var_2_409:  %var_2_409 = tail call i32 @llvm.ctpop.i32(i32 %var_2_408) #14
; %var_2_435 = tail call i32 @llvm.ctpop.i32(i32 %var_2_434)
; Matched:%var_2_410:  %var_2_410 = trunc i32 %var_2_409 to i8
; %var_2_436 = trunc i32 %var_2_435 to i8
; Matched:%var_2_411:  %var_2_411 = and i8 %var_2_410, 1
; %var_2_437 = and i8 %var_2_436, 1
; Matched:%var_2_412:  %var_2_412 = xor i8 %var_2_411, 1
; %var_2_438 = xor i8 %var_2_437, 1
; Matched:\<badref\>:  store i8 %var_2_412, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_438, i8* %var_2_21, align 1
; Matched:%var_2_413:  %var_2_413 = xor i32 %var_2_404, %var_2_399
; %var_2_439 = xor i32 %var_2_430, %var_2_425
; Matched:%var_2_414:  %var_2_414 = xor i32 %var_2_413, %var_2_405
; %var_2_440 = xor i32 %var_2_439, %var_2_431
; Matched:%var_2_415:  %var_2_415 = lshr i32 %var_2_414, 4
; %var_2_441 = lshr i32 %var_2_440, 4
; Matched:%var_2_416:  %var_2_416 = trunc i32 %var_2_415 to i8
; %var_2_442 = trunc i32 %var_2_441 to i8
; Matched:%var_2_417:  %var_2_417 = and i8 %var_2_416, 1
; %var_2_443 = and i8 %var_2_442, 1
; Matched:\<badref\>:  store i8 %var_2_417, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_443, i8* %var_2_26, align 1
; Matched:%var_2_418:  %var_2_418 = icmp eq i32 %var_2_405, 0
; %var_2_444 = icmp eq i32 %var_2_431, 0
; Matched:%var_2_419:  %var_2_419 = zext i1 %var_2_418 to i8
; %var_2_445 = zext i1 %var_2_444 to i8
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_445, i8* %var_2_29, align 1
%var_2_446 = lshr i32 %var_2_431, 31
%var_2_447 = trunc i32 %var_2_446 to i8
; Matched:\<badref\>:  store i8 %var_2_421, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_447, i8* %var_2_32, align 1
%var_2_448 = lshr i32 %var_2_425, 31
%var_2_449 = lshr i32 %var_2_430, 31
%var_2_450 = xor i32 %var_2_449, %var_2_448
%var_2_451 = xor i32 %var_2_446, %var_2_448
%var_2_452 = add nuw nsw i32 %var_2_451, %var_2_450
%var_2_453 = icmp eq i32 %var_2_452, 2
; Matched:%var_2_428:  %var_2_428 = zext i1 %var_2_427 to i8
; %var_2_454 = zext i1 %var_2_453 to i8
; Matched:\<badref\>:  store i8 %var_2_428, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_454, i8* %var_2_38, align 1
%var_2_455 = icmp ne i8 %var_2_447, 0
%var_2_456 = xor i1 %var_2_455, %var_2_453
; Matched:  %.v = select i1 %var_2_430, i64 12, i64 197
; %.v = select i1 %var_2_456, i64 12, i64 197
; Matched:%var_2_431:  %var_2_431 = add i64 %var_2_394, %.v
; %var_2_457 = add i64 %var_2_420, %.v
; Matched:\<badref\>:  store i64 %var_2_431, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_457, i64* %var_2_3, align 8
br i1 %var_2_456, label %block_400e35, label %block_.L_400eee

block_400e35:                                     ; preds = %block_.L_400e29
%var_2_458 = add i64 %var_2_421, -24
; Matched:%var_2_659:  %var_2_659 = add i64 %var_2_431, 4
; %var_2_459 = add i64 %var_2_457, 4
; Matched:\<badref\>:  store i64 %var_2_659, i64* %PC, align 8
; store i64 %var_2_459, i64* %var_2_3, align 8
%var_2_460 = inttoptr i64 %var_2_458 to i64*
%var_2_461 = load i64, i64* %var_2_460, align 8
; Matched:\<badref\>:  store i64 %var_2_435, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_461, i64* %RAX.i277, align 8
%var_2_462 = add i64 %var_2_421, -28
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_431, 8
; %var_2_463 = add i64 %var_2_457, 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %PC, align 8
; store i64 %var_2_463, i64* %var_2_3, align 8
%var_2_464 = inttoptr i64 %var_2_462 to i32*
; Matched:%var_2_665:  %var_2_665 = load i32, i32* %var_2_664, align 4
; %var_2_465 = load i32, i32* %var_2_464, align 4
; Matched:%var_2_315:  %var_2_315 = sext i32 %var_2_314 to i64
; %var_2_466 = sext i32 %var_2_465 to i64
; Matched:%var_2_667:  %var_2_667 = shl nsw i64 %var_2_666, 13
; %var_2_467 = shl nsw i64 %var_2_466, 13
; Matched:\<badref\>:  store i64 %var_2_667, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_467, i64* %RCX.i267, align 8
; Matched:%var_2_668:  %var_2_668 = add i64 %var_2_667, %var_2_661
; %var_2_468 = add i64 %var_2_467, %var_2_461
; Matched:\<badref\>:  store i64 %var_2_317, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_468, i64* %RAX.i277, align 8
; Matched:%var_2_582:  %var_2_582 = icmp ult i64 %var_2_581, %var_2_576
; %var_2_469 = icmp ult i64 %var_2_468, %var_2_461
; Matched:%var_2_442:  %var_2_442 = icmp ult i64 %var_2_440, %var_2_439
; %var_2_470 = icmp ult i64 %var_2_468, %var_2_467
; Matched:%var_2_443:  %var_2_443 = or i1 %var_2_441, %var_2_442
; %var_2_471 = or i1 %var_2_469, %var_2_470
; Matched:%var_2_544:  %var_2_544 = zext i1 %var_2_543 to i8
; %var_2_472 = zext i1 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_444, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_472, i8* %var_2_14, align 1
; Matched:%var_2_445:  %var_2_445 = trunc i64 %var_2_440 to i32
; %var_2_473 = trunc i64 %var_2_468 to i32
; Matched:%var_2_546:  %var_2_546 = and i32 %var_2_545, 255
; %var_2_474 = and i32 %var_2_473, 255
; Matched:%var_2_675:  %var_2_675 = tail call i32 @llvm.ctpop.i32(i32 %var_2_674) #14
; %var_2_475 = tail call i32 @llvm.ctpop.i32(i32 %var_2_474)
; Matched:%var_2_325:  %var_2_325 = trunc i32 %var_2_324 to i8
; %var_2_476 = trunc i32 %var_2_475 to i8
; Matched:%var_2_677:  %var_2_677 = and i8 %var_2_676, 1
; %var_2_477 = and i8 %var_2_476, 1
; Matched:%var_2_550:  %var_2_550 = xor i8 %var_2_549, 1
; %var_2_478 = xor i8 %var_2_477, 1
; Matched:\<badref\>:  store i8 %var_2_678, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_478, i8* %var_2_21, align 1
; Matched:%var_2_551:  %var_2_551 = xor i64 %var_2_535, %var_2_540
; %var_2_479 = xor i64 %var_2_461, %var_2_468
; Matched:%var_2_552:  %var_2_552 = lshr i64 %var_2_551, 4
; %var_2_480 = lshr i64 %var_2_479, 4
; Matched:%var_2_330:  %var_2_330 = trunc i64 %var_2_329 to i8
; %var_2_481 = trunc i64 %var_2_480 to i8
; Matched:%var_2_554:  %var_2_554 = and i8 %var_2_553, 1
; %var_2_482 = and i8 %var_2_481, 1
; Matched:\<badref\>:  store i8 %var_2_682, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_482, i8* %var_2_26, align 1
; Matched:%var_2_596:  %var_2_596 = icmp eq i64 %var_2_581, 0
; %var_2_483 = icmp eq i64 %var_2_468, 0
; Matched:%var_2_333:  %var_2_333 = zext i1 %var_2_332 to i8
; %var_2_484 = zext i1 %var_2_483 to i8
; Matched:\<badref\>:  store i8 %var_2_333, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_484, i8* %var_2_29, align 1
; Matched:%var_2_557:  %var_2_557 = lshr i64 %var_2_540, 63
; %var_2_485 = lshr i64 %var_2_468, 63
; Matched:%var_2_558:  %var_2_558 = trunc i64 %var_2_557 to i8
; %var_2_486 = trunc i64 %var_2_485 to i8
; Matched:\<badref\>:  store i8 %var_2_558, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_486, i8* %var_2_32, align 1
; Matched:%var_2_336:  %var_2_336 = lshr i64 %var_2_312, 63
; %var_2_487 = lshr i64 %var_2_461, 63
; Matched:%var_2_337:  %var_2_337 = lshr i64 %var_2_315, 50
; %var_2_488 = lshr i64 %var_2_466, 50
; Matched:%var_2_338:  %var_2_338 = and i64 %var_2_337, 1
; %var_2_489 = and i64 %var_2_488, 1
; Matched:%var_2_690:  %var_2_690 = xor i64 %var_2_685, %var_2_687
; %var_2_490 = xor i64 %var_2_485, %var_2_487
; Matched:%var_2_340:  %var_2_340 = xor i64 %var_2_334, %var_2_338
; %var_2_491 = xor i64 %var_2_485, %var_2_489
; Matched:%var_2_692:  %var_2_692 = add nuw nsw i64 %var_2_690, %var_2_691
; %var_2_492 = add nuw nsw i64 %var_2_490, %var_2_491
; Matched:%var_2_342:  %var_2_342 = icmp eq i64 %var_2_341, 2
; %var_2_493 = icmp eq i64 %var_2_492, 2
; Matched:%var_2_694:  %var_2_694 = zext i1 %var_2_693 to i8
; %var_2_494 = zext i1 %var_2_493 to i8
; Matched:\<badref\>:  store i8 %var_2_343, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_494, i8* %var_2_38, align 1
; Matched:%var_2_695:  %var_2_695 = add i64 %var_2_431, 19
; %var_2_495 = add i64 %var_2_457, 19
; Matched:\<badref\>:  store i64 %var_2_695, i64* %PC, align 8
; store i64 %var_2_495, i64* %var_2_3, align 8
; Matched:%var_2_568:  %var_2_568 = load i32, i32* %var_2_492, align 4
; %var_2_496 = load i32, i32* %var_2_424, align 4
; Matched:%var_2_569:  %var_2_569 = sext i32 %var_2_568 to i64
; %var_2_497 = sext i32 %var_2_496 to i64
; Matched:\<badref\>:  store i64 %var_2_569, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_497, i64* %RCX.i267, align 8
; Matched:%var_2_698:  %var_2_698 = shl nsw i64 %var_2_697, 3
; %var_2_498 = shl nsw i64 %var_2_497, 3
; Matched:%var_2_699:  %var_2_699 = add i64 %var_2_698, %var_2_668
; %var_2_499 = add i64 %var_2_498, %var_2_468
; Matched:%var_2_700:  %var_2_700 = add i64 %var_2_431, 24
; %var_2_500 = add i64 %var_2_457, 24
; Matched:\<badref\>:  store i64 %var_2_700, i64* %PC, align 8
; store i64 %var_2_500, i64* %var_2_3, align 8
; Matched:%var_2_701:  %var_2_701 = inttoptr i64 %var_2_699 to i64*
; %var_2_501 = inttoptr i64 %var_2_499 to i64*
; Matched:%var_2_702:  %var_2_702 = load i64, i64* %var_2_701, align 8
; %var_2_502 = load i64, i64* %var_2_501, align 8
; Matched:\<badref\>:  store i64 %var_2_702, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_502, i64* %var_2_64, align 1
store double 0.000000e+00, double* %var_2_66, align 1
; Matched:%var_2_703:  %var_2_703 = add i64 %var_2_395, -48
; %var_2_503 = add i64 %var_2_421, -48
; Matched:%var_2_704:  %var_2_704 = add i64 %var_2_431, 29
; %var_2_504 = add i64 %var_2_457, 29
; Matched:\<badref\>:  store i64 %var_2_704, i64* %PC, align 8
; store i64 %var_2_504, i64* %var_2_3, align 8
; Matched:%var_2_705:  %var_2_705 = inttoptr i64 %var_2_703 to i64*
; %var_2_505 = inttoptr i64 %var_2_503 to i64*
; Matched:\<badref\>:  store i64 %var_2_702, i64* %var_2_705, align 8
; store i64 %var_2_502, i64* %var_2_505, align 8
%var_2_506 = load i64, i64* %RBP.i, align 8
%var_2_507 = add i64 %var_2_506, -36
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %PC, align 8
; %var_2_508 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_709:  %var_2_709 = add i64 %var_2_708, 7
; %var_2_509 = add i64 %var_2_508, 7
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_509, i64* %var_2_3, align 8
%var_2_510 = inttoptr i64 %var_2_507 to i32*
store i32 0, i32* %var_2_510, align 4
; Matched:  %.pre43 = load i64, i64* %PC, align 8
; %.pre18 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400e59

block_.L_400e59:                                  ; preds = %block_400e6a, %block_400e35
; Matched:%var_2_488:  %var_2_488 = phi i64 [ %var_2_657, %block_400da4 ], [ %.pre43, %block_400d66 ]
; %var_2_511 = phi i64 [ %var_2_682, %block_400e6a ], [ %.pre18, %block_400e35 ]
%var_2_512 = load i64, i64* %RBP.i, align 8
%var_2_513 = add i64 %var_2_512, -36
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_222, 3
; %var_2_514 = add i64 %var_2_511, 3
; Matched:\<badref\>:  store i64 %var_2_225, i64* %PC, align 8
; store i64 %var_2_514, i64* %var_2_3, align 8
%var_2_515 = inttoptr i64 %var_2_513 to i32*
%var_2_516 = load i32, i32* %var_2_515, align 4
; Matched:%var_2_228:  %var_2_228 = zext i32 %var_2_227 to i64
; %var_2_517 = zext i32 %var_2_516 to i64
; Matched:\<badref\>:  store i64 %var_2_228, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_517, i64* %RAX.i277, align 8
%var_2_518 = add i64 %var_2_512, -28
; Matched:%var_2_496:  %var_2_496 = add i64 %var_2_488, 6
; %var_2_519 = add i64 %var_2_511, 6
; Matched:\<badref\>:  store i64 %var_2_230, i64* %PC, align 8
; store i64 %var_2_519, i64* %var_2_3, align 8
%var_2_520 = inttoptr i64 %var_2_518 to i32*
%var_2_521 = load i32, i32* %var_2_520, align 4
%var_2_522 = add i32 %var_2_521, -1
; Matched:%var_2_234:  %var_2_234 = zext i32 %var_2_233 to i64
; %var_2_523 = zext i32 %var_2_522 to i64
; Matched:\<badref\>:  store i64 %var_2_500, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_523, i64* %RCX.i267, align 8
%var_2_524 = lshr i32 %var_2_522, 31
%var_2_525 = sub i32 %var_2_516, %var_2_522
; Matched:%var_2_237:  %var_2_237 = icmp ult i32 %var_2_227, %var_2_233
; %var_2_526 = icmp ult i32 %var_2_516, %var_2_522
; Matched:%var_2_238:  %var_2_238 = zext i1 %var_2_237 to i8
; %var_2_527 = zext i1 %var_2_526 to i8
; Matched:\<badref\>:  store i8 %var_2_238, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_527, i8* %var_2_14, align 1
; Matched:%var_2_239:  %var_2_239 = and i32 %var_2_236, 255
; %var_2_528 = and i32 %var_2_525, 255
; Matched:%var_2_240:  %var_2_240 = tail call i32 @llvm.ctpop.i32(i32 %var_2_239) #14
; %var_2_529 = tail call i32 @llvm.ctpop.i32(i32 %var_2_528)
; Matched:%var_2_241:  %var_2_241 = trunc i32 %var_2_240 to i8
; %var_2_530 = trunc i32 %var_2_529 to i8
; Matched:%var_2_242:  %var_2_242 = and i8 %var_2_241, 1
; %var_2_531 = and i8 %var_2_530, 1
; Matched:%var_2_243:  %var_2_243 = xor i8 %var_2_242, 1
; %var_2_532 = xor i8 %var_2_531, 1
; Matched:\<badref\>:  store i8 %var_2_243, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_532, i8* %var_2_21, align 1
; Matched:%var_2_244:  %var_2_244 = xor i32 %var_2_233, %var_2_227
; %var_2_533 = xor i32 %var_2_522, %var_2_516
; Matched:%var_2_245:  %var_2_245 = xor i32 %var_2_244, %var_2_236
; %var_2_534 = xor i32 %var_2_533, %var_2_525
; Matched:%var_2_246:  %var_2_246 = lshr i32 %var_2_245, 4
; %var_2_535 = lshr i32 %var_2_534, 4
; Matched:%var_2_247:  %var_2_247 = trunc i32 %var_2_246 to i8
; %var_2_536 = trunc i32 %var_2_535 to i8
; Matched:%var_2_248:  %var_2_248 = and i8 %var_2_247, 1
; %var_2_537 = and i8 %var_2_536, 1
; Matched:\<badref\>:  store i8 %var_2_248, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_537, i8* %var_2_26, align 1
%var_2_538 = icmp eq i32 %var_2_525, 0
; Matched:%var_2_250:  %var_2_250 = zext i1 %var_2_249 to i8
; %var_2_539 = zext i1 %var_2_538 to i8
; Matched:\<badref\>:  store i8 %var_2_250, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_539, i8* %var_2_29, align 1
%var_2_540 = lshr i32 %var_2_525, 31
%var_2_541 = trunc i32 %var_2_540 to i8
; Matched:\<badref\>:  store i8 %var_2_252, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_541, i8* %var_2_32, align 1
%var_2_542 = lshr i32 %var_2_516, 31
%var_2_543 = xor i32 %var_2_524, %var_2_542
%var_2_544 = xor i32 %var_2_540, %var_2_542
%var_2_545 = add nuw nsw i32 %var_2_544, %var_2_543
%var_2_546 = icmp eq i32 %var_2_545, 2
; Matched:%var_2_258:  %var_2_258 = zext i1 %var_2_257 to i8
; %var_2_547 = zext i1 %var_2_546 to i8
; Matched:\<badref\>:  store i8 %var_2_258, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_547, i8* %var_2_38, align 1
%var_2_548 = icmp ne i8 %var_2_541, 0
%var_2_549 = xor i1 %var_2_548, %var_2_546
%.demorgan19 = or i1 %var_2_538, %var_2_549
; Matched:  %.v47 = select i1 %.demorgan46, i64 17, i64 93
; %.v20 = select i1 %.demorgan19, i64 17, i64 93
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_222, %.v47
; %var_2_550 = add i64 %var_2_511, %.v20
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_223, -48
; %var_2_551 = add i64 %var_2_512, -48
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_261, 5
; %var_2_552 = add i64 %var_2_550, 5
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_552, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_262 to i64*
; %var_2_553 = inttoptr i64 %var_2_551 to i64*
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %var_2_264, align 8
; %var_2_554 = load i64, i64* %var_2_553, align 8
; Matched:\<badref\>:  store i64 %var_2_265, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_554, i64* %var_2_64, align 1
store double 0.000000e+00, double* %var_2_66, align 1
  br i1 %.demorgan19, label %block_400e6a, label %block_.L_400eb6

block_400e6a:                                     ; preds = %block_.L_400e59
%var_2_555 = add i64 %var_2_512, -24
; Matched:%var_2_744:  %var_2_744 = add i64 %var_2_261, 9
; %var_2_556 = add i64 %var_2_550, 9
; Matched:\<badref\>:  store i64 %var_2_267, i64* %PC, align 8
; store i64 %var_2_556, i64* %var_2_3, align 8
%var_2_557 = inttoptr i64 %var_2_555 to i64*
%var_2_558 = load i64, i64* %var_2_557, align 8
; Matched:\<badref\>:  store i64 %var_2_312, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_558, i64* %RAX.i277, align 8
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_223, -32
; %var_2_559 = add i64 %var_2_512, -32
; Matched:%var_2_747:  %var_2_747 = add i64 %var_2_261, 13
; %var_2_560 = add i64 %var_2_550, 13
; Matched:\<badref\>:  store i64 %var_2_271, i64* %PC, align 8
; store i64 %var_2_560, i64* %var_2_3, align 8
; Matched:%var_2_272:  %var_2_272 = inttoptr i64 %var_2_270 to i32*
; %var_2_561 = inttoptr i64 %var_2_559 to i32*
; Matched:%var_2_273:  %var_2_273 = load i32, i32* %var_2_272, align 4
; %var_2_562 = load i32, i32* %var_2_561, align 4
; Matched:%var_2_274:  %var_2_274 = sext i32 %var_2_273 to i64
; %var_2_563 = sext i32 %var_2_562 to i64
; Matched:%var_2_765:  %var_2_765 = shl nsw i64 %var_2_764, 13
; %var_2_564 = shl nsw i64 %var_2_563, 13
; Matched:\<badref\>:  store i64 %var_2_275, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_564, i64* %RCX.i267, align 8
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_275, %var_2_269
; %var_2_565 = add i64 %var_2_564, %var_2_558
; Matched:\<badref\>:  store i64 %var_2_766, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_565, i64* %RAX.i277, align 8
; Matched:%var_2_277:  %var_2_277 = icmp ult i64 %var_2_276, %var_2_269
; %var_2_566 = icmp ult i64 %var_2_565, %var_2_558
; Matched:%var_2_278:  %var_2_278 = icmp ult i64 %var_2_276, %var_2_275
; %var_2_567 = icmp ult i64 %var_2_565, %var_2_564
; Matched:%var_2_279:  %var_2_279 = or i1 %var_2_277, %var_2_278
; %var_2_568 = or i1 %var_2_566, %var_2_567
; Matched:%var_2_280:  %var_2_280 = zext i1 %var_2_279 to i8
; %var_2_569 = zext i1 %var_2_568 to i8
; Matched:\<badref\>:  store i8 %var_2_770, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_569, i8* %var_2_14, align 1
; Matched:%var_2_281:  %var_2_281 = trunc i64 %var_2_276 to i32
; %var_2_570 = trunc i64 %var_2_565 to i32
; Matched:%var_2_282:  %var_2_282 = and i32 %var_2_281, 255
; %var_2_571 = and i32 %var_2_570, 255
; Matched:%var_2_773:  %var_2_773 = tail call i32 @llvm.ctpop.i32(i32 %var_2_772) #14
; %var_2_572 = tail call i32 @llvm.ctpop.i32(i32 %var_2_571)
; Matched:%var_2_284:  %var_2_284 = trunc i32 %var_2_283 to i8
; %var_2_573 = trunc i32 %var_2_572 to i8
; Matched:%var_2_285:  %var_2_285 = and i8 %var_2_284, 1
; %var_2_574 = and i8 %var_2_573, 1
; Matched:%var_2_286:  %var_2_286 = xor i8 %var_2_285, 1
; %var_2_575 = xor i8 %var_2_574, 1
; Matched:\<badref\>:  store i8 %var_2_286, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_575, i8* %var_2_21, align 1
; Matched:%var_2_777:  %var_2_777 = xor i64 %var_2_759, %var_2_766
; %var_2_576 = xor i64 %var_2_558, %var_2_565
; Matched:%var_2_288:  %var_2_288 = lshr i64 %var_2_287, 4
; %var_2_577 = lshr i64 %var_2_576, 4
; Matched:%var_2_289:  %var_2_289 = trunc i64 %var_2_288 to i8
; %var_2_578 = trunc i64 %var_2_577 to i8
; Matched:%var_2_780:  %var_2_780 = and i8 %var_2_779, 1
; %var_2_579 = and i8 %var_2_578, 1
; Matched:\<badref\>:  store i8 %var_2_290, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_579, i8* %var_2_26, align 1
; Matched:%var_2_291:  %var_2_291 = icmp eq i64 %var_2_276, 0
; %var_2_580 = icmp eq i64 %var_2_565, 0
; Matched:%var_2_292:  %var_2_292 = zext i1 %var_2_291 to i8
; %var_2_581 = zext i1 %var_2_580 to i8
; Matched:\<badref\>:  store i8 %var_2_292, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_581, i8* %var_2_29, align 1
; Matched:%var_2_783:  %var_2_783 = lshr i64 %var_2_766, 63
; %var_2_582 = lshr i64 %var_2_565, 63
; Matched:%var_2_294:  %var_2_294 = trunc i64 %var_2_293 to i8
; %var_2_583 = trunc i64 %var_2_582 to i8
; Matched:\<badref\>:  store i8 %var_2_294, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_583, i8* %var_2_32, align 1
; Matched:%var_2_785:  %var_2_785 = lshr i64 %var_2_759, 63
; %var_2_584 = lshr i64 %var_2_558, 63
; Matched:%var_2_296:  %var_2_296 = lshr i64 %var_2_274, 50
; %var_2_585 = lshr i64 %var_2_563, 50
; Matched:%var_2_297:  %var_2_297 = and i64 %var_2_296, 1
; %var_2_586 = and i64 %var_2_585, 1
; Matched:%var_2_298:  %var_2_298 = xor i64 %var_2_293, %var_2_295
; %var_2_587 = xor i64 %var_2_582, %var_2_584
; Matched:%var_2_299:  %var_2_299 = xor i64 %var_2_293, %var_2_297
; %var_2_588 = xor i64 %var_2_582, %var_2_586
; Matched:%var_2_790:  %var_2_790 = add nuw nsw i64 %var_2_788, %var_2_789
; %var_2_589 = add nuw nsw i64 %var_2_587, %var_2_588
; Matched:%var_2_301:  %var_2_301 = icmp eq i64 %var_2_300, 2
; %var_2_590 = icmp eq i64 %var_2_589, 2
; Matched:%var_2_302:  %var_2_302 = zext i1 %var_2_301 to i8
; %var_2_591 = zext i1 %var_2_590 to i8
; Matched:\<badref\>:  store i8 %var_2_792, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_591, i8* %var_2_38, align 1
; Matched:%var_2_303:  %var_2_303 = add i64 %var_2_261, 24
; %var_2_592 = add i64 %var_2_550, 24
; Matched:\<badref\>:  store i64 %var_2_303, i64* %PC, align 8
; store i64 %var_2_592, i64* %var_2_3, align 8
; Matched:%var_2_304:  %var_2_304 = load i32, i32* %var_2_226, align 4
; %var_2_593 = load i32, i32* %var_2_515, align 4
; Matched:%var_2_349:  %var_2_349 = sext i32 %var_2_348 to i64
; %var_2_594 = sext i32 %var_2_593 to i64
; Matched:\<badref\>:  store i64 %var_2_305, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_594, i64* %RCX.i267, align 8
; Matched:%var_2_306:  %var_2_306 = shl nsw i64 %var_2_305, 3
; %var_2_595 = shl nsw i64 %var_2_594, 3
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_306, %var_2_276
; %var_2_596 = add i64 %var_2_595, %var_2_565
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_261, 29
; %var_2_597 = add i64 %var_2_550, 29
; Matched:\<badref\>:  store i64 %var_2_308, i64* %PC, align 8
; store i64 %var_2_597, i64* %var_2_3, align 8
; Matched:%var_2_309:  %var_2_309 = inttoptr i64 %var_2_307 to i64*
; %var_2_598 = inttoptr i64 %var_2_596 to i64*
; Matched:%var_2_310:  %var_2_310 = load i64, i64* %var_2_309, align 8
; %var_2_599 = load i64, i64* %var_2_598, align 8
; Matched:\<badref\>:  store i64 %var_2_310, i64* %var_2_67, align 1, !tbaa !1284
; store i64 %var_2_599, i64* %var_2_69, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_69, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_71, align 1
; Matched:%var_2_311:  %var_2_311 = add i64 %var_2_261, 33
; %var_2_600 = add i64 %var_2_550, 33
; Matched:\<badref\>:  store i64 %var_2_311, i64* %PC, align 8
; store i64 %var_2_600, i64* %var_2_3, align 8
%var_2_601 = load i64, i64* %var_2_557, align 8
; Matched:\<badref\>:  store i64 %var_2_759, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_601, i64* %RAX.i277, align 8
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_261, 37
; %var_2_602 = add i64 %var_2_550, 37
; Matched:\<badref\>:  store i64 %var_2_313, i64* %PC, align 8
; store i64 %var_2_602, i64* %var_2_3, align 8
; Matched:%var_2_314:  %var_2_314 = load i32, i32* %var_2_231, align 4
; %var_2_603 = load i32, i32* %var_2_520, align 4
; Matched:%var_2_666:  %var_2_666 = sext i32 %var_2_665 to i64
; %var_2_604 = sext i32 %var_2_603 to i64
; Matched:%var_2_316:  %var_2_316 = shl nsw i64 %var_2_315, 13
; %var_2_605 = shl nsw i64 %var_2_604, 13
; Matched:\<badref\>:  store i64 %var_2_316, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_605, i64* %RCX.i267, align 8
; Matched:%var_2_317:  %var_2_317 = add i64 %var_2_316, %var_2_312
; %var_2_606 = add i64 %var_2_605, %var_2_601
; Matched:\<badref\>:  store i64 %var_2_668, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_606, i64* %RAX.i277, align 8
; Matched:%var_2_318:  %var_2_318 = icmp ult i64 %var_2_317, %var_2_312
; %var_2_607 = icmp ult i64 %var_2_606, %var_2_601
; Matched:%var_2_583:  %var_2_583 = icmp ult i64 %var_2_581, %var_2_580
; %var_2_608 = icmp ult i64 %var_2_606, %var_2_605
; Matched:%var_2_543:  %var_2_543 = or i1 %var_2_541, %var_2_542
; %var_2_609 = or i1 %var_2_607, %var_2_608
; Matched:%var_2_444:  %var_2_444 = zext i1 %var_2_443 to i8
; %var_2_610 = zext i1 %var_2_609 to i8
; Matched:\<badref\>:  store i8 %var_2_544, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_610, i8* %var_2_14, align 1
; Matched:%var_2_545:  %var_2_545 = trunc i64 %var_2_540 to i32
; %var_2_611 = trunc i64 %var_2_606 to i32
; Matched:%var_2_674:  %var_2_674 = and i32 %var_2_673, 255
; %var_2_612 = and i32 %var_2_611, 255
; Matched:%var_2_547:  %var_2_547 = tail call i32 @llvm.ctpop.i32(i32 %var_2_546) #14
; %var_2_613 = tail call i32 @llvm.ctpop.i32(i32 %var_2_612)
; Matched:%var_2_676:  %var_2_676 = trunc i32 %var_2_675 to i8
; %var_2_614 = trunc i32 %var_2_613 to i8
; Matched:%var_2_549:  %var_2_549 = and i8 %var_2_548, 1
; %var_2_615 = and i8 %var_2_614, 1
; Matched:%var_2_678:  %var_2_678 = xor i8 %var_2_677, 1
; %var_2_616 = xor i8 %var_2_615, 1
; Matched:\<badref\>:  store i8 %var_2_550, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_616, i8* %var_2_21, align 1
; Matched:%var_2_679:  %var_2_679 = xor i64 %var_2_661, %var_2_668
; %var_2_617 = xor i64 %var_2_601, %var_2_606
; Matched:%var_2_680:  %var_2_680 = lshr i64 %var_2_679, 4
; %var_2_618 = lshr i64 %var_2_617, 4
; Matched:%var_2_553:  %var_2_553 = trunc i64 %var_2_552 to i8
; %var_2_619 = trunc i64 %var_2_618 to i8
; Matched:%var_2_331:  %var_2_331 = and i8 %var_2_330, 1
; %var_2_620 = and i8 %var_2_619, 1
; Matched:\<badref\>:  store i8 %var_2_554, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_620, i8* %var_2_26, align 1
; Matched:%var_2_683:  %var_2_683 = icmp eq i64 %var_2_668, 0
; %var_2_621 = icmp eq i64 %var_2_606, 0
; Matched:%var_2_597:  %var_2_597 = zext i1 %var_2_596 to i8
; %var_2_622 = zext i1 %var_2_621 to i8
; Matched:\<badref\>:  store i8 %var_2_556, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_622, i8* %var_2_29, align 1
; Matched:%var_2_334:  %var_2_334 = lshr i64 %var_2_317, 63
; %var_2_623 = lshr i64 %var_2_606, 63
; Matched:%var_2_335:  %var_2_335 = trunc i64 %var_2_334 to i8
; %var_2_624 = trunc i64 %var_2_623 to i8
; Matched:\<badref\>:  store i8 %var_2_599, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_624, i8* %var_2_32, align 1
; Matched:%var_2_687:  %var_2_687 = lshr i64 %var_2_661, 63
; %var_2_625 = lshr i64 %var_2_601, 63
; Matched:%var_2_688:  %var_2_688 = lshr i64 %var_2_666, 50
; %var_2_626 = lshr i64 %var_2_604, 50
; Matched:%var_2_689:  %var_2_689 = and i64 %var_2_688, 1
; %var_2_627 = and i64 %var_2_626, 1
; Matched:%var_2_339:  %var_2_339 = xor i64 %var_2_334, %var_2_336
; %var_2_628 = xor i64 %var_2_623, %var_2_625
; Matched:%var_2_691:  %var_2_691 = xor i64 %var_2_685, %var_2_689
; %var_2_629 = xor i64 %var_2_623, %var_2_627
; Matched:%var_2_341:  %var_2_341 = add nuw nsw i64 %var_2_339, %var_2_340
; %var_2_630 = add nuw nsw i64 %var_2_628, %var_2_629
; Matched:%var_2_693:  %var_2_693 = icmp eq i64 %var_2_692, 2
; %var_2_631 = icmp eq i64 %var_2_630, 2
; Matched:%var_2_343:  %var_2_343 = zext i1 %var_2_342 to i8
; %var_2_632 = zext i1 %var_2_631 to i8
; Matched:\<badref\>:  store i8 %var_2_694, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_632, i8* %var_2_38, align 1
%var_2_633 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_344, -36
; %var_2_634 = add i64 %var_2_633, -36
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_261, 48
; %var_2_635 = add i64 %var_2_550, 48
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_635, i64* %var_2_3, align 8
; Matched:%var_2_347:  %var_2_347 = inttoptr i64 %var_2_345 to i32*
; %var_2_636 = inttoptr i64 %var_2_634 to i32*
; Matched:%var_2_348:  %var_2_348 = load i32, i32* %var_2_347, align 4
; %var_2_637 = load i32, i32* %var_2_636, align 4
; Matched:%var_2_305:  %var_2_305 = sext i32 %var_2_304 to i64
; %var_2_638 = sext i32 %var_2_637 to i64
; Matched:\<badref\>:  store i64 %var_2_349, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_638, i64* %RCX.i267, align 8
; Matched:%var_2_350:  %var_2_350 = shl nsw i64 %var_2_349, 3
; %var_2_639 = shl nsw i64 %var_2_638, 3
; Matched:%var_2_351:  %var_2_351 = add i64 %var_2_350, %var_2_317
; %var_2_640 = add i64 %var_2_639, %var_2_606
; Matched:%var_2_352:  %var_2_352 = add i64 %var_2_261, 53
; %var_2_641 = add i64 %var_2_550, 53
; Matched:\<badref\>:  store i64 %var_2_352, i64* %PC, align 8
; store i64 %var_2_641, i64* %var_2_3, align 8
; Matched:%var_2_353:  %var_2_353 = bitcast i64 %var_2_310 to double
; %var_2_642 = bitcast i64 %var_2_599 to double
; Matched:%var_2_354:  %var_2_354 = inttoptr i64 %var_2_351 to double*
; %var_2_643 = inttoptr i64 %var_2_640 to double*
; Matched:%var_2_355:  %var_2_355 = load double, double* %var_2_354, align 8
; %var_2_644 = load double, double* %var_2_643, align 8
; Matched:%var_2_356:  %var_2_356 = fmul double %var_2_353, %var_2_355
; %var_2_645 = fmul double %var_2_642, %var_2_644
; Matched:\<badref\>:  store double %var_2_356, double* %var_2_66, align 1, !tbaa !1284
; store double %var_2_645, double* %var_2_68, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_68, align 1, !tbaa !1284
; store i64 0, i64* %var_2_70, align 1
; Matched:%var_2_357:  %var_2_357 = load double, double* %var_2_62, align 1
; %var_2_646 = load double, double* %var_2_63, align 1
; Matched:%var_2_358:  %var_2_358 = fsub double %var_2_357, %var_2_356
; %var_2_647 = fsub double %var_2_646, %var_2_645
; Matched:\<badref\>:  store double %var_2_358, double* %var_2_62, align 1, !tbaa !1284
; store double %var_2_647, double* %var_2_63, align 1
; Matched:%var_2_359:  %var_2_359 = add i64 %var_2_344, -48
; %var_2_648 = add i64 %var_2_633, -48
; Matched:%var_2_360:  %var_2_360 = add i64 %var_2_261, 62
; %var_2_649 = add i64 %var_2_550, 62
; Matched:\<badref\>:  store i64 %var_2_360, i64* %PC, align 8
; store i64 %var_2_649, i64* %var_2_3, align 8
; Matched:%var_2_361:  %var_2_361 = inttoptr i64 %var_2_359 to double*
; %var_2_650 = inttoptr i64 %var_2_648 to double*
; Matched:\<badref\>:  store double %var_2_358, double* %var_2_361, align 8
; store double %var_2_647, double* %var_2_650, align 8
; Matched:%var_2_362:  %var_2_362 = load i64, i64* %RBP, align 8
; %var_2_651 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_363:  %var_2_363 = add i64 %var_2_362, -36
; %var_2_652 = add i64 %var_2_651, -36
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %PC, align 8
; %var_2_653 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_803:  %var_2_803 = add i64 %var_2_802, 3
; %var_2_654 = add i64 %var_2_653, 3
; Matched:\<badref\>:  store i64 %var_2_365, i64* %PC, align 8
; store i64 %var_2_654, i64* %var_2_3, align 8
; Matched:%var_2_366:  %var_2_366 = inttoptr i64 %var_2_363 to i32*
; %var_2_655 = inttoptr i64 %var_2_652 to i32*
; Matched:%var_2_367:  %var_2_367 = load i32, i32* %var_2_366, align 4
; %var_2_656 = load i32, i32* %var_2_655, align 4
; Matched:%var_2_368:  %var_2_368 = add i32 %var_2_367, 1
; %var_2_657 = add i32 %var_2_656, 1
; Matched:%var_2_369:  %var_2_369 = zext i32 %var_2_368 to i64
; %var_2_658 = zext i32 %var_2_657 to i64
; Matched:\<badref\>:  store i64 %var_2_369, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_658, i64* %RAX.i277, align 8
; Matched:%var_2_370:  %var_2_370 = icmp eq i32 %var_2_367, -1
; %var_2_659 = icmp eq i32 %var_2_656, -1
; Matched:%var_2_371:  %var_2_371 = icmp eq i32 %var_2_368, 0
; %var_2_660 = icmp eq i32 %var_2_657, 0
; Matched:%var_2_372:  %var_2_372 = or i1 %var_2_370, %var_2_371
; %var_2_661 = or i1 %var_2_659, %var_2_660
; Matched:%var_2_373:  %var_2_373 = zext i1 %var_2_372 to i8
; %var_2_662 = zext i1 %var_2_661 to i8
; Matched:\<badref\>:  store i8 %var_2_373, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_662, i8* %var_2_14, align 1
; Matched:%var_2_374:  %var_2_374 = and i32 %var_2_368, 255
; %var_2_663 = and i32 %var_2_657, 255
; Matched:%var_2_375:  %var_2_375 = tail call i32 @llvm.ctpop.i32(i32 %var_2_374) #14
; %var_2_664 = tail call i32 @llvm.ctpop.i32(i32 %var_2_663)
; Matched:%var_2_376:  %var_2_376 = trunc i32 %var_2_375 to i8
; %var_2_665 = trunc i32 %var_2_664 to i8
; Matched:%var_2_377:  %var_2_377 = and i8 %var_2_376, 1
; %var_2_666 = and i8 %var_2_665, 1
; Matched:%var_2_378:  %var_2_378 = xor i8 %var_2_377, 1
; %var_2_667 = xor i8 %var_2_666, 1
; Matched:\<badref\>:  store i8 %var_2_378, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_667, i8* %var_2_21, align 1
; Matched:%var_2_379:  %var_2_379 = xor i32 %var_2_368, %var_2_367
; %var_2_668 = xor i32 %var_2_657, %var_2_656
; Matched:%var_2_380:  %var_2_380 = lshr i32 %var_2_379, 4
; %var_2_669 = lshr i32 %var_2_668, 4
; Matched:%var_2_381:  %var_2_381 = trunc i32 %var_2_380 to i8
; %var_2_670 = trunc i32 %var_2_669 to i8
; Matched:%var_2_382:  %var_2_382 = and i8 %var_2_381, 1
; %var_2_671 = and i8 %var_2_670, 1
; Matched:\<badref\>:  store i8 %var_2_382, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_671, i8* %var_2_26, align 1
; Matched:%var_2_383:  %var_2_383 = zext i1 %var_2_371 to i8
; %var_2_672 = zext i1 %var_2_660 to i8
; Matched:\<badref\>:  store i8 %var_2_383, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_672, i8* %var_2_29, align 1
; Matched:%var_2_384:  %var_2_384 = lshr i32 %var_2_368, 31
; %var_2_673 = lshr i32 %var_2_657, 31
; Matched:%var_2_385:  %var_2_385 = trunc i32 %var_2_384 to i8
; %var_2_674 = trunc i32 %var_2_673 to i8
; Matched:\<badref\>:  store i8 %var_2_385, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_674, i8* %var_2_32, align 1
; Matched:%var_2_386:  %var_2_386 = lshr i32 %var_2_367, 31
; %var_2_675 = lshr i32 %var_2_656, 31
; Matched:%var_2_387:  %var_2_387 = xor i32 %var_2_384, %var_2_386
; %var_2_676 = xor i32 %var_2_673, %var_2_675
; Matched:%var_2_388:  %var_2_388 = add nuw nsw i32 %var_2_387, %var_2_384
; %var_2_677 = add nuw nsw i32 %var_2_676, %var_2_673
; Matched:%var_2_389:  %var_2_389 = icmp eq i32 %var_2_388, 2
; %var_2_678 = icmp eq i32 %var_2_677, 2
; Matched:%var_2_390:  %var_2_390 = zext i1 %var_2_389 to i8
; %var_2_679 = zext i1 %var_2_678 to i8
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_679, i8* %var_2_38, align 1
; Matched:%var_2_391:  %var_2_391 = add i64 %var_2_364, 9
; %var_2_680 = add i64 %var_2_653, 9
; Matched:\<badref\>:  store i64 %var_2_391, i64* %PC, align 8
; store i64 %var_2_680, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_368, i32* %var_2_366, align 4
; store i32 %var_2_657, i32* %var_2_655, align 4
; Matched:%var_2_392:  %var_2_392 = load i64, i64* %PC, align 8
; %var_2_681 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_392, -88
; %var_2_682 = add i64 %var_2_681, -88
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_682, i64* %var_2_3, align 8
  br label %block_.L_400e59

block_.L_400eb6:                                  ; preds = %block_.L_400e59
; Matched:%var_2_742:  %var_2_742 = bitcast i64 %var_2_265 to double
; %var_2_683 = bitcast i64 %var_2_554 to double
; Matched:%var_2_743:  %var_2_743 = add i64 %var_2_223, -16
; %var_2_684 = add i64 %var_2_512, -16
; Matched:%var_2_267:  %var_2_267 = add i64 %var_2_261, 9
; %var_2_685 = add i64 %var_2_550, 9
; Matched:\<badref\>:  store i64 %var_2_744, i64* %PC, align 8
; store i64 %var_2_685, i64* %var_2_3, align 8
; Matched:%var_2_111:  %var_2_111 = inttoptr i64 %var_2_109 to i64*
; %var_2_686 = inttoptr i64 %var_2_684 to i64*
; Matched:%var_2_746:  %var_2_746 = load i64, i64* %var_2_745, align 8
; %var_2_687 = load i64, i64* %var_2_686, align 8
; Matched:\<badref\>:  store i64 %var_2_112, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_687, i64* %RAX.i277, align 8
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_261, 13
; %var_2_688 = add i64 %var_2_550, 13
; Matched:\<badref\>:  store i64 %var_2_747, i64* %PC, align 8
; store i64 %var_2_688, i64* %var_2_3, align 8
; Matched:%var_2_468:  %var_2_468 = load i32, i32* %var_2_188, align 4
; %var_2_689 = load i32, i32* %var_2_520, align 4
; Matched:%var_2_469:  %var_2_469 = sext i32 %var_2_468 to i64
; %var_2_690 = sext i32 %var_2_689 to i64
; Matched:\<badref\>:  store i64 %var_2_469, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_690, i64* %RCX.i267, align 8
; Matched:%var_2_750:  %var_2_750 = shl nsw i64 %var_2_749, 3
; %var_2_691 = shl nsw i64 %var_2_690, 3
; Matched:%var_2_751:  %var_2_751 = add i64 %var_2_750, %var_2_746
; %var_2_692 = add i64 %var_2_691, %var_2_687
; Matched:%var_2_752:  %var_2_752 = add i64 %var_2_261, 18
; %var_2_693 = add i64 %var_2_550, 18
; Matched:\<badref\>:  store i64 %var_2_752, i64* %PC, align 8
; store i64 %var_2_693, i64* %var_2_3, align 8
; Matched:%var_2_753:  %var_2_753 = inttoptr i64 %var_2_751 to double*
; %var_2_694 = inttoptr i64 %var_2_692 to double*
; Matched:%var_2_754:  %var_2_754 = load double, double* %var_2_753, align 8
; %var_2_695 = load double, double* %var_2_694, align 8
; Matched:%var_2_755:  %var_2_755 = fmul double %var_2_742, %var_2_754
; %var_2_696 = fmul double %var_2_683, %var_2_695
; Matched:\<badref\>:  store double %var_2_755, double* %var_2_62, align 1, !tbaa !1284
; store double %var_2_696, double* %var_2_63, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_64, align 1, !tbaa !1284
; store i64 0, i64* %var_2_65, align 1
%var_2_697 = add i64 %var_2_512, -24
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_261, 22
; %var_2_698 = add i64 %var_2_550, 22
; Matched:\<badref\>:  store i64 %var_2_757, i64* %PC, align 8
; store i64 %var_2_698, i64* %var_2_3, align 8
%var_2_699 = inttoptr i64 %var_2_697 to i64*
%var_2_700 = load i64, i64* %var_2_699, align 8
; Matched:\<badref\>:  store i64 %var_2_535, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_700, i64* %RAX.i277, align 8
; Matched:%var_2_760:  %var_2_760 = add i64 %var_2_223, -32
; %var_2_701 = add i64 %var_2_512, -32
; Matched:%var_2_761:  %var_2_761 = add i64 %var_2_261, 26
; %var_2_702 = add i64 %var_2_550, 26
; Matched:\<badref\>:  store i64 %var_2_761, i64* %PC, align 8
; store i64 %var_2_702, i64* %var_2_3, align 8
; Matched:%var_2_762:  %var_2_762 = inttoptr i64 %var_2_760 to i32*
; %var_2_703 = inttoptr i64 %var_2_701 to i32*
; Matched:%var_2_763:  %var_2_763 = load i32, i32* %var_2_762, align 4
; %var_2_704 = load i32, i32* %var_2_703, align 4
; Matched:%var_2_764:  %var_2_764 = sext i32 %var_2_763 to i64
; %var_2_705 = sext i32 %var_2_704 to i64
; Matched:%var_2_275:  %var_2_275 = shl nsw i64 %var_2_274, 13
; %var_2_706 = shl nsw i64 %var_2_705, 13
; Matched:\<badref\>:  store i64 %var_2_765, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_706, i64* %RCX.i267, align 8
; Matched:%var_2_766:  %var_2_766 = add i64 %var_2_765, %var_2_759
; %var_2_707 = add i64 %var_2_706, %var_2_700
; Matched:\<badref\>:  store i64 %var_2_276, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_707, i64* %RAX.i277, align 8
; Matched:%var_2_767:  %var_2_767 = icmp ult i64 %var_2_766, %var_2_759
; %var_2_708 = icmp ult i64 %var_2_707, %var_2_700
; Matched:%var_2_768:  %var_2_768 = icmp ult i64 %var_2_766, %var_2_765
; %var_2_709 = icmp ult i64 %var_2_707, %var_2_706
; Matched:%var_2_769:  %var_2_769 = or i1 %var_2_767, %var_2_768
; %var_2_710 = or i1 %var_2_708, %var_2_709
; Matched:%var_2_770:  %var_2_770 = zext i1 %var_2_769 to i8
; %var_2_711 = zext i1 %var_2_710 to i8
; Matched:\<badref\>:  store i8 %var_2_280, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_711, i8* %var_2_14, align 1
; Matched:%var_2_771:  %var_2_771 = trunc i64 %var_2_766 to i32
; %var_2_712 = trunc i64 %var_2_707 to i32
; Matched:%var_2_772:  %var_2_772 = and i32 %var_2_771, 255
; %var_2_713 = and i32 %var_2_712, 255
; Matched:%var_2_283:  %var_2_283 = tail call i32 @llvm.ctpop.i32(i32 %var_2_282) #14
; %var_2_714 = tail call i32 @llvm.ctpop.i32(i32 %var_2_713)
; Matched:%var_2_774:  %var_2_774 = trunc i32 %var_2_773 to i8
; %var_2_715 = trunc i32 %var_2_714 to i8
; Matched:%var_2_775:  %var_2_775 = and i8 %var_2_774, 1
; %var_2_716 = and i8 %var_2_715, 1
; Matched:%var_2_776:  %var_2_776 = xor i8 %var_2_775, 1
; %var_2_717 = xor i8 %var_2_716, 1
; Matched:\<badref\>:  store i8 %var_2_776, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_717, i8* %var_2_21, align 1
; Matched:%var_2_287:  %var_2_287 = xor i64 %var_2_269, %var_2_276
; %var_2_718 = xor i64 %var_2_700, %var_2_707
; Matched:%var_2_778:  %var_2_778 = lshr i64 %var_2_777, 4
; %var_2_719 = lshr i64 %var_2_718, 4
; Matched:%var_2_779:  %var_2_779 = trunc i64 %var_2_778 to i8
; %var_2_720 = trunc i64 %var_2_719 to i8
; Matched:%var_2_290:  %var_2_290 = and i8 %var_2_289, 1
; %var_2_721 = and i8 %var_2_720, 1
; Matched:\<badref\>:  store i8 %var_2_780, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_721, i8* %var_2_26, align 1
; Matched:%var_2_781:  %var_2_781 = icmp eq i64 %var_2_766, 0
; %var_2_722 = icmp eq i64 %var_2_707, 0
; Matched:%var_2_782:  %var_2_782 = zext i1 %var_2_781 to i8
; %var_2_723 = zext i1 %var_2_722 to i8
; Matched:\<badref\>:  store i8 %var_2_782, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_723, i8* %var_2_29, align 1
; Matched:%var_2_293:  %var_2_293 = lshr i64 %var_2_276, 63
; %var_2_724 = lshr i64 %var_2_707, 63
; Matched:%var_2_784:  %var_2_784 = trunc i64 %var_2_783 to i8
; %var_2_725 = trunc i64 %var_2_724 to i8
; Matched:\<badref\>:  store i8 %var_2_784, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_725, i8* %var_2_32, align 1
; Matched:%var_2_295:  %var_2_295 = lshr i64 %var_2_269, 63
; %var_2_726 = lshr i64 %var_2_700, 63
; Matched:%var_2_786:  %var_2_786 = lshr i64 %var_2_764, 50
; %var_2_727 = lshr i64 %var_2_705, 50
; Matched:%var_2_787:  %var_2_787 = and i64 %var_2_786, 1
; %var_2_728 = and i64 %var_2_727, 1
; Matched:%var_2_788:  %var_2_788 = xor i64 %var_2_783, %var_2_785
; %var_2_729 = xor i64 %var_2_724, %var_2_726
; Matched:%var_2_789:  %var_2_789 = xor i64 %var_2_783, %var_2_787
; %var_2_730 = xor i64 %var_2_724, %var_2_728
; Matched:%var_2_300:  %var_2_300 = add nuw nsw i64 %var_2_298, %var_2_299
; %var_2_731 = add nuw nsw i64 %var_2_729, %var_2_730
; Matched:%var_2_791:  %var_2_791 = icmp eq i64 %var_2_790, 2
; %var_2_732 = icmp eq i64 %var_2_731, 2
; Matched:%var_2_792:  %var_2_792 = zext i1 %var_2_791 to i8
; %var_2_733 = zext i1 %var_2_732 to i8
; Matched:\<badref\>:  store i8 %var_2_302, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_733, i8* %var_2_38, align 1
; Matched:%var_2_793:  %var_2_793 = add i64 %var_2_261, 37
; %var_2_734 = add i64 %var_2_550, 37
; Matched:\<badref\>:  store i64 %var_2_793, i64* %PC, align 8
; store i64 %var_2_734, i64* %var_2_3, align 8
; Matched:%var_2_748:  %var_2_748 = load i32, i32* %var_2_231, align 4
; %var_2_735 = load i32, i32* %var_2_520, align 4
; Matched:%var_2_795:  %var_2_795 = sext i32 %var_2_794 to i64
; %var_2_736 = sext i32 %var_2_735 to i64
; Matched:\<badref\>:  store i64 %var_2_749, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_736, i64* %RCX.i267, align 8
; Matched:%var_2_796:  %var_2_796 = shl nsw i64 %var_2_795, 3
; %var_2_737 = shl nsw i64 %var_2_736, 3
; Matched:%var_2_797:  %var_2_797 = add i64 %var_2_796, %var_2_766
; %var_2_738 = add i64 %var_2_737, %var_2_707
; Matched:%var_2_798:  %var_2_798 = add i64 %var_2_261, 42
; %var_2_739 = add i64 %var_2_550, 42
; Matched:\<badref\>:  store i64 %var_2_798, i64* %PC, align 8
; store i64 %var_2_739, i64* %var_2_3, align 8
; Matched:%var_2_799:  %var_2_799 = inttoptr i64 %var_2_797 to double*
; %var_2_740 = inttoptr i64 %var_2_738 to double*
; Matched:\<badref\>:  store double %var_2_755, double* %var_2_799, align 8
; store double %var_2_696, double* %var_2_740, align 8
; Matched:%var_2_800:  %var_2_800 = load i64, i64* %RBP, align 8
; %var_2_741 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_627:  %var_2_627 = add i64 %var_2_626, -32
; %var_2_742 = add i64 %var_2_741, -32
; Matched:%var_2_802:  %var_2_802 = load i64, i64* %PC, align 8
; %var_2_743 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_124, 3
; %var_2_744 = add i64 %var_2_743, 3
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8
; store i64 %var_2_744, i64* %var_2_3, align 8
; Matched:%var_2_804:  %var_2_804 = inttoptr i64 %var_2_801 to i32*
; %var_2_745 = inttoptr i64 %var_2_742 to i32*
; Matched:%var_2_805:  %var_2_805 = load i32, i32* %var_2_804, align 4
; %var_2_746 = load i32, i32* %var_2_745, align 4
; Matched:%var_2_806:  %var_2_806 = add i32 %var_2_805, 1
; %var_2_747 = add i32 %var_2_746, 1
; Matched:%var_2_807:  %var_2_807 = zext i32 %var_2_806 to i64
; %var_2_748 = zext i32 %var_2_747 to i64
; Matched:\<badref\>:  store i64 %var_2_633, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_748, i64* %RAX.i277, align 8
; Matched:%var_2_808:  %var_2_808 = icmp eq i32 %var_2_805, -1
; %var_2_749 = icmp eq i32 %var_2_746, -1
; Matched:%var_2_809:  %var_2_809 = icmp eq i32 %var_2_806, 0
; %var_2_750 = icmp eq i32 %var_2_747, 0
; Matched:%var_2_810:  %var_2_810 = or i1 %var_2_808, %var_2_809
; %var_2_751 = or i1 %var_2_749, %var_2_750
; Matched:%var_2_811:  %var_2_811 = zext i1 %var_2_810 to i8
; %var_2_752 = zext i1 %var_2_751 to i8
; Matched:\<badref\>:  store i8 %var_2_811, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_752, i8* %var_2_14, align 1
; Matched:%var_2_812:  %var_2_812 = and i32 %var_2_806, 255
; %var_2_753 = and i32 %var_2_747, 255
; Matched:%var_2_813:  %var_2_813 = tail call i32 @llvm.ctpop.i32(i32 %var_2_812) #14
; %var_2_754 = tail call i32 @llvm.ctpop.i32(i32 %var_2_753)
; Matched:%var_2_640:  %var_2_640 = trunc i32 %var_2_639 to i8
; %var_2_755 = trunc i32 %var_2_754 to i8
; Matched:%var_2_815:  %var_2_815 = and i8 %var_2_814, 1
; %var_2_756 = and i8 %var_2_755, 1
; Matched:%var_2_816:  %var_2_816 = xor i8 %var_2_815, 1
; %var_2_757 = xor i8 %var_2_756, 1
; Matched:\<badref\>:  store i8 %var_2_816, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_757, i8* %var_2_21, align 1
; Matched:%var_2_817:  %var_2_817 = xor i32 %var_2_806, %var_2_805
; %var_2_758 = xor i32 %var_2_747, %var_2_746
; Matched:%var_2_818:  %var_2_818 = lshr i32 %var_2_817, 4
; %var_2_759 = lshr i32 %var_2_758, 4
; Matched:%var_2_819:  %var_2_819 = trunc i32 %var_2_818 to i8
; %var_2_760 = trunc i32 %var_2_759 to i8
; Matched:%var_2_820:  %var_2_820 = and i8 %var_2_819, 1
; %var_2_761 = and i8 %var_2_760, 1
; Matched:\<badref\>:  store i8 %var_2_646, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_761, i8* %var_2_26, align 1
; Matched:%var_2_821:  %var_2_821 = zext i1 %var_2_809 to i8
; %var_2_762 = zext i1 %var_2_750 to i8
; Matched:\<badref\>:  store i8 %var_2_821, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_762, i8* %var_2_29, align 1
; Matched:%var_2_822:  %var_2_822 = lshr i32 %var_2_806, 31
; %var_2_763 = lshr i32 %var_2_747, 31
; Matched:%var_2_823:  %var_2_823 = trunc i32 %var_2_822 to i8
; %var_2_764 = trunc i32 %var_2_763 to i8
; Matched:\<badref\>:  store i8 %var_2_823, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_764, i8* %var_2_32, align 1
; Matched:%var_2_824:  %var_2_824 = lshr i32 %var_2_805, 31
; %var_2_765 = lshr i32 %var_2_746, 31
; Matched:%var_2_825:  %var_2_825 = xor i32 %var_2_822, %var_2_824
; %var_2_766 = xor i32 %var_2_763, %var_2_765
; Matched:%var_2_652:  %var_2_652 = add nuw nsw i32 %var_2_651, %var_2_648
; %var_2_767 = add nuw nsw i32 %var_2_766, %var_2_763
; Matched:%var_2_827:  %var_2_827 = icmp eq i32 %var_2_826, 2
; %var_2_768 = icmp eq i32 %var_2_767, 2
; Matched:%var_2_828:  %var_2_828 = zext i1 %var_2_827 to i8
; %var_2_769 = zext i1 %var_2_768 to i8
; Matched:\<badref\>:  store i8 %var_2_828, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_769, i8* %var_2_38, align 1
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_124, 9
; %var_2_770 = add i64 %var_2_743, 9
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8
; store i64 %var_2_770, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_806, i32* %var_2_804, align 4
; store i32 %var_2_747, i32* %var_2_745, align 4
; Matched:%var_2_830:  %var_2_830 = load i64, i64* %PC, align 8
; %var_2_771 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_831:  %var_2_831 = add i64 %var_2_830, -192
; %var_2_772 = add i64 %var_2_771, -192
; Matched:\<badref\>:  store i64 %var_2_831, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_772, i64* %var_2_3, align 8
  br label %block_.L_400e29

block_.L_400eee:                                  ; preds = %block_.L_400e29
%var_2_773 = add i64 %var_2_421, -28
; Matched:%var_2_663:  %var_2_663 = add i64 %var_2_431, 8
; %var_2_774 = add i64 %var_2_457, 8
; Matched:\<badref\>:  store i64 %var_2_663, i64* %PC, align 8
; store i64 %var_2_774, i64* %var_2_3, align 8
%var_2_775 = inttoptr i64 %var_2_773 to i32*
; Matched:%var_2_157:  %var_2_157 = load i32, i32* %var_2_156, align 4
; %var_2_776 = load i32, i32* %var_2_775, align 4
; Matched:%var_2_128:  %var_2_128 = add i32 %var_2_127, 1
; %var_2_777 = add i32 %var_2_776, 1
; Matched:%var_2_159:  %var_2_159 = zext i32 %var_2_158 to i64
; %var_2_778 = zext i32 %var_2_777 to i64
; Matched:\<badref\>:  store i64 %var_2_159, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_778, i64* %RAX.i277, align 8
; Matched:%var_2_160:  %var_2_160 = icmp eq i32 %var_2_157, -1
; %var_2_779 = icmp eq i32 %var_2_776, -1
; Matched:%var_2_131:  %var_2_131 = icmp eq i32 %var_2_128, 0
; %var_2_780 = icmp eq i32 %var_2_777, 0
; Matched:%var_2_132:  %var_2_132 = or i1 %var_2_130, %var_2_131
; %var_2_781 = or i1 %var_2_779, %var_2_780
; Matched:%var_2_163:  %var_2_163 = zext i1 %var_2_162 to i8
; %var_2_782 = zext i1 %var_2_781 to i8
; Matched:\<badref\>:  store i8 %var_2_163, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_782, i8* %var_2_14, align 1
; Matched:%var_2_134:  %var_2_134 = and i32 %var_2_128, 255
; %var_2_783 = and i32 %var_2_777, 255
; Matched:%var_2_135:  %var_2_135 = tail call i32 @llvm.ctpop.i32(i32 %var_2_134) #14
; %var_2_784 = tail call i32 @llvm.ctpop.i32(i32 %var_2_783)
; Matched:%var_2_166:  %var_2_166 = trunc i32 %var_2_165 to i8
; %var_2_785 = trunc i32 %var_2_784 to i8
; Matched:%var_2_167:  %var_2_167 = and i8 %var_2_166, 1
; %var_2_786 = and i8 %var_2_785, 1
; Matched:%var_2_138:  %var_2_138 = xor i8 %var_2_137, 1
; %var_2_787 = xor i8 %var_2_786, 1
; Matched:\<badref\>:  store i8 %var_2_138, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_787, i8* %var_2_21, align 1
; Matched:%var_2_169:  %var_2_169 = xor i32 %var_2_158, %var_2_157
; %var_2_788 = xor i32 %var_2_777, %var_2_776
; Matched:%var_2_170:  %var_2_170 = lshr i32 %var_2_169, 4
; %var_2_789 = lshr i32 %var_2_788, 4
; Matched:%var_2_141:  %var_2_141 = trunc i32 %var_2_140 to i8
; %var_2_790 = trunc i32 %var_2_789 to i8
; Matched:%var_2_142:  %var_2_142 = and i8 %var_2_141, 1
; %var_2_791 = and i8 %var_2_790, 1
; Matched:\<badref\>:  store i8 %var_2_172, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_791, i8* %var_2_26, align 1
; Matched:%var_2_173:  %var_2_173 = zext i1 %var_2_161 to i8
; %var_2_792 = zext i1 %var_2_780 to i8
; Matched:\<badref\>:  store i8 %var_2_143, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_792, i8* %var_2_29, align 1
; Matched:%var_2_144:  %var_2_144 = lshr i32 %var_2_128, 31
; %var_2_793 = lshr i32 %var_2_777, 31
; Matched:%var_2_175:  %var_2_175 = trunc i32 %var_2_174 to i8
; %var_2_794 = trunc i32 %var_2_793 to i8
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_794, i8* %var_2_32, align 1
; Matched:%var_2_146:  %var_2_146 = lshr i32 %var_2_127, 31
; %var_2_795 = lshr i32 %var_2_776, 31
; Matched:%var_2_147:  %var_2_147 = xor i32 %var_2_144, %var_2_146
; %var_2_796 = xor i32 %var_2_793, %var_2_795
; Matched:%var_2_178:  %var_2_178 = add nuw nsw i32 %var_2_177, %var_2_174
; %var_2_797 = add nuw nsw i32 %var_2_796, %var_2_793
; Matched:%var_2_179:  %var_2_179 = icmp eq i32 %var_2_178, 2
; %var_2_798 = icmp eq i32 %var_2_797, 2
; Matched:%var_2_150:  %var_2_150 = zext i1 %var_2_149 to i8
; %var_2_799 = zext i1 %var_2_798 to i8
; Matched:\<badref\>:  store i8 %var_2_150, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_799, i8* %var_2_38, align 1
; Matched:%var_2_181:  %var_2_181 = add i64 %var_2_431, 14
; %var_2_800 = add i64 %var_2_457, 14
; Matched:\<badref\>:  store i64 %var_2_181, i64* %PC, align 8
; store i64 %var_2_800, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_158, i32* %var_2_156, align 4
; store i32 %var_2_777, i32* %var_2_775, align 4
; Matched:%var_2_182:  %var_2_182 = load i64, i64* %PC, align 8
; %var_2_801 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_182, -418
; %var_2_802 = add i64 %var_2_801, -418
; Matched:\<badref\>:  store i64 %var_2_183, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_802, i64* %var_2_3, align 8
  br label %block_.L_400d5a

block_.L_400f01:                                  ; preds = %block_.L_400d5a
; Matched:%var_2_711:  %var_2_711 = load i64, i64* %RSP, align 8
; %var_2_803 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_712:  %var_2_712 = add i64 %var_2_711, 64
; %var_2_804 = add i64 %var_2_803, 64
; Matched:\<badref\>:  store i64 %var_2_712, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_804, i64* %var_2_6, align 8
; Matched:%var_2_713:  %var_2_713 = icmp ugt i64 %var_2_711, -65
; %var_2_805 = icmp ugt i64 %var_2_803, -65
; Matched:%var_2_714:  %var_2_714 = zext i1 %var_2_713 to i8
; %var_2_806 = zext i1 %var_2_805 to i8
; Matched:\<badref\>:  store i8 %var_2_714, i8* %var_2_15, align 1, !tbaa !1265
; store i8 %var_2_806, i8* %var_2_14, align 1
; Matched:%var_2_715:  %var_2_715 = trunc i64 %var_2_712 to i32
; %var_2_807 = trunc i64 %var_2_804 to i32
; Matched:%var_2_716:  %var_2_716 = and i32 %var_2_715, 255
; %var_2_808 = and i32 %var_2_807, 255
; Matched:%var_2_717:  %var_2_717 = tail call i32 @llvm.ctpop.i32(i32 %var_2_716) #14
; %var_2_809 = tail call i32 @llvm.ctpop.i32(i32 %var_2_808)
; Matched:%var_2_718:  %var_2_718 = trunc i32 %var_2_717 to i8
; %var_2_810 = trunc i32 %var_2_809 to i8
; Matched:%var_2_719:  %var_2_719 = and i8 %var_2_718, 1
; %var_2_811 = and i8 %var_2_810, 1
; Matched:%var_2_720:  %var_2_720 = xor i8 %var_2_719, 1
; %var_2_812 = xor i8 %var_2_811, 1
; Matched:\<badref\>:  store i8 %var_2_720, i8* %var_2_22, align 1, !tbaa !1279
; store i8 %var_2_812, i8* %var_2_21, align 1
; Matched:%var_2_721:  %var_2_721 = xor i64 %var_2_712, %var_2_711
; %var_2_813 = xor i64 %var_2_804, %var_2_803
; Matched:%var_2_722:  %var_2_722 = lshr i64 %var_2_721, 4
; %var_2_814 = lshr i64 %var_2_813, 4
; Matched:%var_2_723:  %var_2_723 = trunc i64 %var_2_722 to i8
; %var_2_815 = trunc i64 %var_2_814 to i8
; Matched:%var_2_724:  %var_2_724 = and i8 %var_2_723, 1
; %var_2_816 = and i8 %var_2_815, 1
; Matched:\<badref\>:  store i8 %var_2_724, i8* %var_2_27, align 1, !tbaa !1280
; store i8 %var_2_816, i8* %var_2_26, align 1
; Matched:%var_2_725:  %var_2_725 = icmp eq i64 %var_2_712, 0
; %var_2_817 = icmp eq i64 %var_2_804, 0
; Matched:%var_2_726:  %var_2_726 = zext i1 %var_2_725 to i8
; %var_2_818 = zext i1 %var_2_817 to i8
; Matched:\<badref\>:  store i8 %var_2_726, i8* %var_2_30, align 1, !tbaa !1281
; store i8 %var_2_818, i8* %var_2_29, align 1
; Matched:%var_2_727:  %var_2_727 = lshr i64 %var_2_712, 63
; %var_2_819 = lshr i64 %var_2_804, 63
; Matched:%var_2_728:  %var_2_728 = trunc i64 %var_2_727 to i8
; %var_2_820 = trunc i64 %var_2_819 to i8
; Matched:\<badref\>:  store i8 %var_2_728, i8* %var_2_33, align 1, !tbaa !1282
; store i8 %var_2_820, i8* %var_2_32, align 1
; Matched:%var_2_729:  %var_2_729 = lshr i64 %var_2_711, 63
; %var_2_821 = lshr i64 %var_2_803, 63
; Matched:%var_2_730:  %var_2_730 = xor i64 %var_2_727, %var_2_729
; %var_2_822 = xor i64 %var_2_819, %var_2_821
; Matched:%var_2_731:  %var_2_731 = add nuw nsw i64 %var_2_730, %var_2_727
; %var_2_823 = add nuw nsw i64 %var_2_822, %var_2_819
; Matched:%var_2_732:  %var_2_732 = icmp eq i64 %var_2_731, 2
; %var_2_824 = icmp eq i64 %var_2_823, 2
; Matched:%var_2_733:  %var_2_733 = zext i1 %var_2_732 to i8
; %var_2_825 = zext i1 %var_2_824 to i8
; Matched:\<badref\>:  store i8 %var_2_733, i8* %var_2_39, align 1, !tbaa !1283
; store i8 %var_2_825, i8* %var_2_38, align 1
; Matched:%var_2_734:  %var_2_734 = add i64 %var_2_221, 5
; %var_2_826 = add i64 %var_2_117, 5
; Matched:\<badref\>:  store i64 %var_2_734, i64* %PC, align 8
; store i64 %var_2_826, i64* %var_2_3, align 8
; Matched:%var_2_735:  %var_2_735 = add i64 %var_2_711, 72
; %var_2_827 = add i64 %var_2_803, 72
; Matched:%var_2_736:  %var_2_736 = inttoptr i64 %var_2_712 to i64*
; %var_2_828 = inttoptr i64 %var_2_804 to i64*
; Matched:%var_2_737:  %var_2_737 = load i64, i64* %var_2_736, align 8
; %var_2_829 = load i64, i64* %var_2_828, align 8
; Matched:\<badref\>:  store i64 %var_2_737, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_829, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_735, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_827, i64* %var_2_6, align 8
; Matched:%var_2_738:  %var_2_738 = add i64 %var_2_221, 6
; %var_2_830 = add i64 %var_2_117, 6
; Matched:\<badref\>:  store i64 %var_2_738, i64* %PC, align 8
; store i64 %var_2_830, i64* %var_2_3, align 8
; Matched:%var_2_739:  %var_2_739 = inttoptr i64 %var_2_735 to i64*
; %var_2_831 = inttoptr i64 %var_2_827 to i64*
; Matched:%var_2_740:  %var_2_740 = load i64, i64* %var_2_739, align 8
; %var_2_832 = load i64, i64* %var_2_831, align 8
; Matched:\<badref\>:  store i64 %var_2_740, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_832, i64* %var_2_3, align 8
; Matched:%var_2_741:  %var_2_741 = add i64 %var_2_711, 80
; %var_2_833 = add i64 %var_2_803, 80
; Matched:\<badref\>:  store i64 %var_2_741, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_833, i64* %var_2_6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jge_.L_400f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 51
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 50
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400df0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x550__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x550__rip__type* @G_0x550__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400eee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400eb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_400e59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ef3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400d5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
