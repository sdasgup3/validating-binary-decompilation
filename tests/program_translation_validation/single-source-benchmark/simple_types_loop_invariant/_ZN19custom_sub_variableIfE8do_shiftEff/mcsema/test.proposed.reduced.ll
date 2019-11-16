; ModuleID = '/tmp/tmp209w1dvj-query.ll'
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @_ZN19custom_sub_variableIfE8do_shiftEff(%struct.State* noalias nocapture, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #0 {
entry:
; Matched:  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_5:  %var_2_5 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_6:  %var_2_6 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_6, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
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
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_8, -12
; %var_2_12 = add i64 %var_2_7, -12
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_11, 8
; %var_2_13 = add i64 %var_2_10, 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %PC, align 8
; store i64 %var_2_13, i64* %var_2_3, align 8
%var_2_14 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_15 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_16 = extractelement <2 x float> %var_2_15, i32 0
; Matched:%var_2_17:  %var_2_17 = inttoptr i64 %var_2_12 to float*
; %var_2_17 = inttoptr i64 %var_2_12 to float*
; Matched:\<badref\>:  store float %var_2_16, float* %var_2_17, align 4
; store float %var_2_16, float* %var_2_17, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_18:  %var_2_18 = load i64, i64* %RBP, align 8
; %var_2_19 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_18, -8
; %var_2_20 = add i64 %var_2_19, -8
; Matched:%var_2_20:  %var_2_20 = load i64, i64* %PC, align 8
; %var_2_21 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_21:  %var_2_21 = add i64 %var_2_20, 5
; %var_2_22 = add i64 %var_2_21, 5
; Matched:\<badref\>:  store i64 %var_2_21, i64* %PC, align 8
; store i64 %var_2_22, i64* %var_2_3, align 8
%var_2_23 = bitcast %union.VectorReg* %var_2_18 to <2 x float>*
%var_2_24 = load <2 x float>, <2 x float>* %var_2_23, align 1
%var_2_25 = extractelement <2 x float> %var_2_24, i32 0
; Matched:%var_2_25:  %var_2_25 = inttoptr i64 %var_2_19 to float*
; %var_2_26 = inttoptr i64 %var_2_20 to float*
; Matched:\<badref\>:  store float %var_2_24, float* %var_2_25, align 4
; store float %var_2_25, float* %var_2_26, align 4
%var_2_27 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
; Matched:%var_2_27:  %var_2_27 = load i64, i64* %RBP, align 8
; %var_2_28 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_28:  %var_2_28 = add i64 %var_2_27, -4
; %var_2_29 = add i64 %var_2_28, -4
; Matched:%var_2_29:  %var_2_29 = load i64, i64* %PC, align 8
; %var_2_30 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_30:  %var_2_30 = add i64 %var_2_29, 5
; %var_2_31 = add i64 %var_2_30, 5
; Matched:\<badref\>:  store i64 %var_2_30, i64* %PC, align 8
; store i64 %var_2_31, i64* %var_2_3, align 8
; Matched:%var_2_31:  %var_2_31 = inttoptr i64 %var_2_28 to i32*
; %var_2_32 = inttoptr i64 %var_2_29 to i32*
; Matched:%var_2_32:  %var_2_32 = load i32, i32* %var_2_31, align 4
; %var_2_33 = load i32, i32* %var_2_32, align 4
; Matched:%var_2_33:  %var_2_33 = bitcast [32 x %union.VectorReg]* %var_2_3 to float*
; %var_2_34 = bitcast [32 x %union.VectorReg]* %var_2_11 to float*
; Matched:%var_2_34:  %var_2_34 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_35 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
; Matched:\<badref\>:  store i32 %var_2_32, i32* %var_2_34, align 1, !tbaa !1265
; store i32 %var_2_33, i32* %var_2_35, align 1
%var_2_36 = getelementptr inbounds i8, i8* %var_2_27, i64 4
%var_2_37 = bitcast i8* %var_2_36 to float*
store float 0.000000e+00, float* %var_2_37, align 1
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_39 = bitcast i64* %var_2_38 to float*
store float 0.000000e+00, float* %var_2_39, align 1
%var_2_40 = getelementptr inbounds i8, i8* %var_2_27, i64 12
%var_2_41 = bitcast i8* %var_2_40 to float*
store float 0.000000e+00, float* %var_2_41, align 1
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_27, -8
; %var_2_42 = add i64 %var_2_28, -8
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_29, 10
; %var_2_43 = add i64 %var_2_30, 10
; Matched:\<badref\>:  store i64 %var_2_42, i64* %PC, align 8
; store i64 %var_2_43, i64* %var_2_3, align 8
%var_2_44 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_45 = bitcast i64* %var_2_38 to <2 x i32>*
%var_2_46 = load <2 x i32>, <2 x i32>* %var_2_45, align 1
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_41 to float*
; %var_2_47 = inttoptr i64 %var_2_42 to float*
; Matched:%var_2_47:  %var_2_47 = load float, float* %var_2_46, align 4
; %var_2_48 = load float, float* %var_2_47, align 4
%var_2_49 = extractelement <2 x float> %var_2_44, i32 0
; Matched:%var_2_49:  %var_2_49 = fsub float %var_2_48, %var_2_47
; %var_2_50 = fsub float %var_2_49, %var_2_48
; Matched:\<badref\>:  store float %var_2_49, float* %var_2_33, align 1, !tbaa !1265
; store float %var_2_50, float* %var_2_34, align 1
%var_2_51 = bitcast <2 x float> %var_2_44 to <2 x i32>
%var_2_52 = extractelement <2 x i32> %var_2_51, i32 1
; Matched:%var_2_52:  %var_2_52 = bitcast i8* %var_2_35 to i32*
; %var_2_53 = bitcast i8* %var_2_36 to i32*
; Matched:\<badref\>:  store i32 %var_2_51, i32* %var_2_52, align 1, !tbaa !1265
; store i32 %var_2_52, i32* %var_2_53, align 1
%var_2_54 = extractelement <2 x i32> %var_2_46, i32 0
; Matched:%var_2_54:  %var_2_54 = bitcast i64* %var_2_37 to i32*
; %var_2_55 = bitcast i64* %var_2_38 to i32*
; Matched:\<badref\>:  store i32 %var_2_53, i32* %var_2_54, align 1, !tbaa !1265
; store i32 %var_2_54, i32* %var_2_55, align 1
%var_2_56 = extractelement <2 x i32> %var_2_46, i32 1
; Matched:%var_2_56:  %var_2_56 = bitcast i8* %var_2_39 to i32*
; %var_2_57 = bitcast i8* %var_2_40 to i32*
; Matched:\<badref\>:  store i32 %var_2_55, i32* %var_2_56, align 1, !tbaa !1265
; store i32 %var_2_56, i32* %var_2_57, align 1
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_29, 11
; %var_2_58 = add i64 %var_2_30, 11
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %var_2_7, align 8, !tbaa !1261
; %var_2_59 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, 8
; %var_2_60 = add i64 %var_2_59, 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_58 to i64*
; %var_2_61 = inttoptr i64 %var_2_59 to i64*
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %var_2_60, align 8
; %var_2_62 = load i64, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_61, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_62, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_59, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_29, 12
; %var_2_63 = add i64 %var_2_30, 12
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
; Matched:%var_2_63:  %var_2_63 = inttoptr i64 %var_2_59 to i64*
; %var_2_64 = inttoptr i64 %var_2_60 to i64*
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %var_2_63, align 8
; %var_2_65 = load i64, i64* %var_2_64, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_65, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_58, 16
; %var_2_66 = add i64 %var_2_59, 16
; Matched:\<badref\>:  store i64 %var_2_65, i64* %var_2_7, align 8, !tbaa !1261
; store i64 %var_2_66, i64* %var_2_6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_subss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

attributes #0 = { alwaysinline norecurse nounwind }
attributes #1 = { norecurse nounwind }
