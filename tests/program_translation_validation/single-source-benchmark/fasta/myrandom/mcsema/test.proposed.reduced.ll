; ModuleID = '/tmp/tmp0uciqevr-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602100_type = type <{ [8 x i8] }>
%G_0xec__rip__type = type <{ [4 x i8] }>
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
@G_0x602100 = local_unnamed_addr global %G_0x602100_type zeroinitializer
@G_0xec__rip_ = global %G_0xec__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @myrandom(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
routine_divq__rcx.exit:
; Matched:  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_13:  %var_2_13 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_13 = bitcast %union.VectorReg* %var_2_12 to i8*
; Matched:%var_2_14:  %var_2_14 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_400be0__rodata_type* @seg_400be0__rodata to i64), i64 8) to i32*), align 8
; %var_2_14 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0xec__rip__type* @G_0xec__rip_ to i64), i64 36) to i32*), align 4
; Matched:%var_2_15:  %var_2_15 = bitcast %union.VectorReg* %var_2_4 to i32*
; %var_2_15 = bitcast %union.VectorReg* %var_2_12 to i32*
; Matched:\<badref\>:  store i32 %var_2_14, i32* %var_2_15, align 1, !tbaa !1265
; store i32 %var_2_14, i32* %var_2_15, align 1
; Matched:%var_2_16:  %var_2_16 = getelementptr inbounds i8, i8* %var_2_13, i64 4
; %var_2_16 = getelementptr inbounds i8, i8* %var_2_13, i64 4
; Matched:%var_2_17:  %var_2_17 = bitcast i8* %var_2_16 to float*
; %var_2_17 = bitcast i8* %var_2_16 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_17, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_17, align 1
; Matched:%var_2_18:  %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_19:  %var_2_19 = bitcast i64* %var_2_18 to float*
; %var_2_19 = bitcast i64* %var_2_18 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_19, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_19, align 1
; Matched:%var_2_20:  %var_2_20 = getelementptr inbounds i8, i8* %var_2_13, i64 12
; %var_2_20 = getelementptr inbounds i8, i8* %var_2_13, i64 12
; Matched:%var_2_21:  %var_2_21 = bitcast i8* %var_2_20 to float*
; %var_2_21 = bitcast i8* %var_2_20 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_21, align 1, !tbaa !1265
; store float 0.000000e+00, float* %var_2_21, align 1
  %RCX.i34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:\<badref\>:  store i64 139968, i64* %RCX, align 8, !tbaa !1261
; store i64 139968, i64* %RCX.i34, align 8
; Matched:%var_2_22:  %var_2_22 = add i64 %var_2_9, -12
; %var_2_22 = add i64 %var_2_7, -12
; Matched:%var_2_23:  %var_2_23 = add i64 %var_2_12, 23
; %var_2_23 = add i64 %var_2_10, 23
; Matched:\<badref\>:  store i64 %var_2_23, i64* %PC, align 8
; store i64 %var_2_23, i64* %var_2_3, align 8
%var_2_24 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_25 = load <2 x float>, <2 x float>* %var_2_24, align 1
%var_2_26 = extractelement <2 x float> %var_2_25, i32 0
; Matched:%var_2_27:  %var_2_27 = inttoptr i64 %var_2_22 to float*
; %var_2_27 = inttoptr i64 %var_2_22 to float*
; Matched:\<badref\>:  store float %var_2_26, float* %var_2_27, align 4
; store float %var_2_26, float* %var_2_27, align 4
; Matched:%var_2_28:  %var_2_28 = load i64, i64* %RBP, align 8
; %var_2_28 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_29:  %var_2_29 = add i64 %var_2_28, -16
; %var_2_29 = add i64 %var_2_28, -16
; Matched:%var_2_40:  %var_2_40 = load i64, i64* %PC, align 8
; %var_2_30 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_36:  %var_2_36 = add i64 %var_2_35, 8
; %var_2_31 = add i64 %var_2_30, 8
; Matched:\<badref\>:  store i64 %var_2_31, i64* %PC, align 8
; store i64 %var_2_31, i64* %var_2_3, align 8
; Matched:%var_2_32:  %var_2_32 = inttoptr i64 %var_2_29 to i64*
; %var_2_32 = inttoptr i64 %var_2_29 to i64*
; Matched:\<badref\>:  store i64 139968, i64* %var_2_32, align 8
; store i64 139968, i64* %var_2_32, align 8
; Matched:%var_2_33:  %var_2_33 = load i64, i64* %RBP, align 8
; %var_2_33 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_34:  %var_2_34 = add i64 %var_2_33, -24
; %var_2_34 = add i64 %var_2_33, -24
; Matched:%var_2_30:  %var_2_30 = load i64, i64* %PC, align 8
; %var_2_35 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_40, 8
; %var_2_36 = add i64 %var_2_35, 8
; Matched:\<badref\>:  store i64 %var_2_36, i64* %PC, align 8
; store i64 %var_2_36, i64* %var_2_3, align 8
; Matched:%var_2_37:  %var_2_37 = inttoptr i64 %var_2_34 to i64*
; %var_2_37 = inttoptr i64 %var_2_34 to i64*
; Matched:\<badref\>:  store i64 3877, i64* %var_2_37, align 8
; store i64 3877, i64* %var_2_37, align 8
; Matched:%var_2_38:  %var_2_38 = load i64, i64* %RBP, align 8
; %var_2_38 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_38, -32
; %var_2_39 = add i64 %var_2_38, -32
; Matched:%var_2_35:  %var_2_35 = load i64, i64* %PC, align 8
; %var_2_40 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_31:  %var_2_31 = add i64 %var_2_30, 8
; %var_2_41 = add i64 %var_2_40, 8
; Matched:\<badref\>:  store i64 %var_2_41, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_42:  %var_2_42 = inttoptr i64 %var_2_39 to i64*
; %var_2_42 = inttoptr i64 %var_2_39 to i64*
; Matched:\<badref\>:  store i64 29573, i64* %var_2_42, align 8
; store i64 29573, i64* %var_2_42, align 8
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
%var_2_44 = load i64, i64* bitcast (%G_0x602100_type* @G_0x602100 to i64*), align 8
%var_2_45 = mul i64 %var_2_44, 3877
; Matched:%var_2_46:  %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:%var_2_47:  %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:%var_2_48:  %var_2_48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:%var_2_49:  %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:%var_2_50:  %var_2_50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:%var_2_51:  %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
%var_2_52 = add i64 %var_2_45, 29573
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:\<badref\>:  store i64 0, i64* %RSI, align 8, !tbaa !1261
; store i64 0, i64* %RSI.i, align 8
%var_2_53 = load i64, i64* %RCX.i34, align 8
; Matched:  %div = udiv i64 %var_2_52, %var_2_53
; %div = udiv i64 %var_2_52, %var_2_53
; Matched:%var_2_54:  %var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %var_2_54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_55 = urem i64 %var_2_52, %var_2_53
; Matched:\<badref\>:  store i64 %div, i64* %var_2_54, align 8, !tbaa !1261
; store i64 %div, i64* %var_2_54, align 8
; Matched:\<badref\>:  store i64 %var_2_55, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_55, i64* %RDX.i24, align 8
; Matched:\<badref\>:  store i8 0, i8* %var_2_46, align 1, !tbaa !1267
; store i8 0, i8* %var_2_46, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_47, align 1, !tbaa !1281
; store i8 0, i8* %var_2_47, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_48, align 1, !tbaa !1282
; store i8 0, i8* %var_2_48, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_49, align 1, !tbaa !1283
; store i8 0, i8* %var_2_49, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_50, align 1, !tbaa !1284
; store i8 0, i8* %var_2_50, align 1
; Matched:\<badref\>:  store i8 0, i8* %var_2_51, align 1, !tbaa !1285
; store i8 0, i8* %var_2_51, align 1
store i64 %var_2_55, i64* bitcast (%G_0x602100_type* @G_0x602100 to i64*), align 8
%var_2_56 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP, align 8
; %var_2_57 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -4
; %var_2_58 = add i64 %var_2_57, -4
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_43, 42
; %var_2_59 = add i64 %var_2_43, 42
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_59, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_58 to i32*
; %var_2_60 = inttoptr i64 %var_2_58 to i32*
; Matched:%var_2_61:  %var_2_61 = load i32, i32* %var_2_60, align 4
; %var_2_61 = load i32, i32* %var_2_60, align 4
; Matched:%var_2_62:  %var_2_62 = bitcast [32 x %union.VectorReg]* %var_2_3 to float*
; %var_2_62 = bitcast [32 x %union.VectorReg]* %var_2_11 to float*
; Matched:%var_2_63:  %var_2_63 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_63 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
; Matched:\<badref\>:  store i32 %var_2_61, i32* %var_2_63, align 1, !tbaa !1265
; store i32 %var_2_61, i32* %var_2_63, align 1
%var_2_64 = getelementptr inbounds i8, i8* %var_2_56, i64 4
%var_2_65 = bitcast i8* %var_2_64 to float*
store float 0.000000e+00, float* %var_2_65, align 1
%var_2_66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_67 = bitcast i64* %var_2_66 to float*
store float 0.000000e+00, float* %var_2_67, align 1
%var_2_68 = getelementptr inbounds i8, i8* %var_2_56, i64 12
%var_2_69 = bitcast i8* %var_2_68 to float*
store float 0.000000e+00, float* %var_2_69, align 1
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_70:  %var_2_70 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_71 = bitcast %union.VectorReg* %var_2_70 to i8*
%var_2_72 = bitcast %union.VectorReg* %var_2_70 to <2 x i32>*
%var_2_73 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
; Matched:%var_2_73:  %var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_75 = bitcast i64* %var_2_74 to <2 x i32>*
%var_2_76 = load <2 x i32>, <2 x i32>* %var_2_75, align 1
; Matched:%var_2_76:  %var_2_76 = sitofp i64 %var_2_55 to float
; %var_2_77 = sitofp i64 %var_2_55 to float
; Matched:%var_2_77:  %var_2_77 = bitcast %union.VectorReg* %var_2_5 to float*
; %var_2_78 = bitcast %union.VectorReg* %var_2_70 to float*
; Matched:\<badref\>:  store float %var_2_76, float* %var_2_77, align 1, !tbaa !1265
; store float %var_2_77, float* %var_2_78, align 1
%var_2_79 = extractelement <2 x i32> %var_2_73, i32 1
; Matched:%var_2_79:  %var_2_79 = getelementptr inbounds i8, i8* %var_2_70, i64 4
; %var_2_80 = getelementptr inbounds i8, i8* %var_2_71, i64 4
; Matched:%var_2_80:  %var_2_80 = bitcast i8* %var_2_79 to i32*
; %var_2_81 = bitcast i8* %var_2_80 to i32*
; Matched:\<badref\>:  store i32 %var_2_78, i32* %var_2_80, align 1, !tbaa !1265
; store i32 %var_2_79, i32* %var_2_81, align 1
%var_2_82 = extractelement <2 x i32> %var_2_76, i32 0
; Matched:%var_2_82:  %var_2_82 = bitcast i64* %var_2_73 to i32*
; %var_2_83 = bitcast i64* %var_2_74 to i32*
; Matched:\<badref\>:  store i32 %var_2_81, i32* %var_2_82, align 1, !tbaa !1265
; store i32 %var_2_82, i32* %var_2_83, align 1
%var_2_84 = extractelement <2 x i32> %var_2_76, i32 1
; Matched:%var_2_84:  %var_2_84 = getelementptr inbounds i8, i8* %var_2_70, i64 12
; %var_2_85 = getelementptr inbounds i8, i8* %var_2_71, i64 12
; Matched:%var_2_85:  %var_2_85 = bitcast i8* %var_2_84 to i32*
; %var_2_86 = bitcast i8* %var_2_85 to i32*
; Matched:\<badref\>:  store i32 %var_2_83, i32* %var_2_85, align 1, !tbaa !1265
; store i32 %var_2_84, i32* %var_2_86, align 1
%var_2_87 = load <2 x float>, <2 x float>* %var_2_24, align 1
%var_2_88 = bitcast i64* %var_2_66 to <2 x i32>*
%var_2_89 = load <2 x i32>, <2 x i32>* %var_2_88, align 1
%var_2_90 = bitcast %union.VectorReg* %var_2_70 to <2 x float>*
%var_2_91 = load <2 x float>, <2 x float>* %var_2_90, align 1
%var_2_92 = extractelement <2 x float> %var_2_87, i32 0
%var_2_93 = extractelement <2 x float> %var_2_91, i32 0
; Matched:%var_2_93:  %var_2_93 = fmul float %var_2_91, %var_2_92
; %var_2_94 = fmul float %var_2_92, %var_2_93
; Matched:\<badref\>:  store float %var_2_93, float* %var_2_62, align 1, !tbaa !1265
; store float %var_2_94, float* %var_2_62, align 1
%var_2_95 = bitcast <2 x float> %var_2_87 to <2 x i32>
%var_2_96 = extractelement <2 x i32> %var_2_95, i32 1
; Matched:%var_2_96:  %var_2_96 = bitcast i8* %var_2_64 to i32*
; %var_2_97 = bitcast i8* %var_2_64 to i32*
; Matched:\<badref\>:  store i32 %var_2_95, i32* %var_2_96, align 1, !tbaa !1265
; store i32 %var_2_96, i32* %var_2_97, align 1
%var_2_98 = extractelement <2 x i32> %var_2_89, i32 0
; Matched:%var_2_98:  %var_2_98 = bitcast i64* %var_2_66 to i32*
; %var_2_99 = bitcast i64* %var_2_66 to i32*
; Matched:\<badref\>:  store i32 %var_2_110, i32* %var_2_98, align 1, !tbaa !1265
; store i32 %var_2_98, i32* %var_2_99, align 1
%var_2_100 = extractelement <2 x i32> %var_2_89, i32 1
; Matched:%var_2_100:  %var_2_100 = bitcast i8* %var_2_68 to i32*
; %var_2_101 = bitcast i8* %var_2_68 to i32*
; Matched:\<badref\>:  store i32 %var_2_99, i32* %var_2_100, align 1, !tbaa !1265
; store i32 %var_2_100, i32* %var_2_101, align 1
%var_2_102 = load <2 x float>, <2 x float>* %var_2_24, align 1
%var_2_103 = load <2 x i32>, <2 x i32>* %var_2_88, align 1
%var_2_104 = bitcast %union.VectorReg* %var_2_12 to <2 x float>*
%var_2_105 = load <2 x float>, <2 x float>* %var_2_104, align 1
%var_2_106 = extractelement <2 x float> %var_2_102, i32 0
%var_2_107 = extractelement <2 x float> %var_2_105, i32 0
; Matched:%var_2_107:  %var_2_107 = fdiv float %var_2_105, %var_2_106
; %var_2_108 = fdiv float %var_2_106, %var_2_107
; Matched:\<badref\>:  store float %var_2_107, float* %var_2_62, align 1, !tbaa !1265
; store float %var_2_108, float* %var_2_62, align 1
%var_2_109 = bitcast <2 x float> %var_2_102 to <2 x i32>
%var_2_110 = extractelement <2 x i32> %var_2_109, i32 1
; Matched:\<badref\>:  store i32 %var_2_109, i32* %var_2_96, align 1, !tbaa !1265
; store i32 %var_2_110, i32* %var_2_97, align 1
%var_2_111 = extractelement <2 x i32> %var_2_103, i32 0
; Matched:\<badref\>:  store i32 %var_2_97, i32* %var_2_98, align 1, !tbaa !1265
; store i32 %var_2_111, i32* %var_2_99, align 1
%var_2_112 = extractelement <2 x i32> %var_2_103, i32 1
; Matched:\<badref\>:  store i32 %var_2_111, i32* %var_2_100, align 1, !tbaa !1265
; store i32 %var_2_112, i32* %var_2_101, align 1
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_43, 61
; %var_2_113 = add i64 %var_2_43, 61
; Matched:\<badref\>:  store i64 %var_2_112, i64* %PC, align 8
; store i64 %var_2_113, i64* %var_2_3, align 8
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %var_2_8, align 8, !tbaa !1261
; %var_2_114 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_114:  %var_2_114 = add i64 %var_2_113, 8
; %var_2_115 = add i64 %var_2_114, 8
; Matched:%var_2_115:  %var_2_115 = inttoptr i64 %var_2_113 to i64*
; %var_2_116 = inttoptr i64 %var_2_114 to i64*
; Matched:%var_2_116:  %var_2_116 = load i64, i64* %var_2_115, align 8
; %var_2_117 = load i64, i64* %var_2_116, align 8
; Matched:\<badref\>:  store i64 %var_2_116, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_117, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_114, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %var_2_6, align 8
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_43, 62
; %var_2_118 = add i64 %var_2_43, 62
; Matched:\<badref\>:  store i64 %var_2_117, i64* %PC, align 8
; store i64 %var_2_118, i64* %var_2_3, align 8
; Matched:%var_2_118:  %var_2_118 = inttoptr i64 %var_2_114 to i64*
; %var_2_119 = inttoptr i64 %var_2_115 to i64*
; Matched:%var_2_119:  %var_2_119 = load i64, i64* %var_2_118, align 8
; %var_2_120 = load i64, i64* %var_2_119, align 8
; Matched:\<badref\>:  store i64 %var_2_119, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_120, i64* %var_2_3, align 8
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_113, 16
; %var_2_121 = add i64 %var_2_114, 16
; Matched:\<badref\>:  store i64 %var_2_120, i64* %var_2_8, align 8, !tbaa !1261
; store i64 %var_2_121, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss_0xec__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0xec__rip__type* @G_0xec__rip_ to i64), i64 36) to i32*), align 4
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x222c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 139968, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x222c0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 139968, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xf25__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 3877, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x7385__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 29573, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xf25__0x602100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602100_type* @G_0x602100 to i64*), align 8
  %6 = sext i64 %5 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %5 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 3877
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x7385___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 29573
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -29574
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
define %struct.Memory* @routine_movq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = zext i64 %9 to i128
  %11 = shl nuw i128 %10, 64
  %12 = zext i64 %7 to i128
  %13 = or i128 %11, %12
  %14 = zext i64 %3 to i128
  %15 = udiv i128 %13, %14
  %16 = and i128 %15, 18446744073709551615
  %17 = icmp eq i128 %15, %16
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %block_400488
  %19 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:20:                                     ; preds = %block_400488
  %21 = urem i128 %13, %14
  %22 = trunc i128 %21 to i64
  %23 = trunc i128 %15 to i64
  store i64 %23, i64* %6, align 8
  store i64 %22, i64* %8, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %20, %18
  %30 = phi %struct.Memory* [ %19, %18 ], [ %2, %20 ]
  ret %struct.Memory* %30
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x602100(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x602100_type* @G_0x602100 to i64*), align 8
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
define %struct.Memory* @routine_cvtsi2ssq_0x602100___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i64, i64* bitcast (%G_0x602100_type* @G_0x602100 to i64*), align 8
  %13 = sitofp i64 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = fmul float %15, %16
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
