; ModuleID = '/tmp/tmpkk2k859i-query.ll'
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
define %struct.Memory* @_ZN31custom_divide_multiple_variableIfE8do_shiftEfffff(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #0 {
entry:
; Matched:  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_8:  %var_2_8 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_9:  %var_2_9 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_9, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_10:  %var_2_10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %var_2_10, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_11, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_13:  %var_2_13 = inttoptr i64 %var_2_12 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_8, i64* %var_2_13, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_12, i64* %var_2_10, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_14:  %var_2_14 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -12
; %var_2_12 = add i64 %var_2_7, -12
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_14, 8
; %var_2_13 = add i64 %var_2_10, 8
; Matched:\<badref\>:  store i64 %var_2_16, i64* %PC, align 8
; store i64 %var_2_13, i64* %var_2_3, align 8
%var_2_14 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_15 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_16 = extractelement <2 x float> %var_2_15, i32 0
; Matched:%var_2_20:  %var_2_20 = inttoptr i64 %var_2_15 to float*
; %var_2_17 = inttoptr i64 %var_2_12 to float*
; Matched:\<badref\>:  store float %var_2_19, float* %var_2_20, align 4
; store float %var_2_16, float* %var_2_17, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_21:  %var_2_21 = load i64, i64* %RBP, align 8
; %var_2_19 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_22:  %var_2_22 = add i64 %var_2_21, -8
; %var_2_20 = add i64 %var_2_19, -8
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %PC, align 8
; %var_2_21 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, 5
; %var_2_22 = add i64 %var_2_21, 5
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8
; store i64 %var_2_22, i64* %var_2_3, align 8
%var_2_23 = bitcast %union.VectorReg* %var_2_18 to <2 x float>*
%var_2_24 = load <2 x float>, <2 x float>* %var_2_23, align 1
%var_2_25 = extractelement <2 x float> %var_2_24, i32 0
; Matched:%var_2_28:  %var_2_28 = inttoptr i64 %var_2_22 to float*
; %var_2_26 = inttoptr i64 %var_2_20 to float*
; Matched:\<badref\>:  store float %var_2_27, float* %var_2_28, align 4
; store float %var_2_25, float* %var_2_26, align 4
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_29:  %var_2_29 = load i64, i64* %RBP, align 8
; %var_2_28 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_30:  %var_2_30 = add i64 %var_2_29, -12
; %var_2_29 = add i64 %var_2_28, -12
; Matched:%var_2_39:  %var_2_39 = load i64, i64* %PC, align 8
; %var_2_30 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_39, 5
; %var_2_31 = add i64 %var_2_30, 5
; Matched:\<badref\>:  store i64 %var_2_40, i64* %PC, align 8
; store i64 %var_2_31, i64* %var_2_3, align 8
%var_2_32 = bitcast %union.VectorReg* %var_2_27 to <2 x float>*
%var_2_33 = load <2 x float>, <2 x float>* %var_2_32, align 1
%var_2_34 = extractelement <2 x float> %var_2_33, i32 0
; Matched:%var_2_36:  %var_2_36 = inttoptr i64 %var_2_30 to float*
; %var_2_35 = inttoptr i64 %var_2_29 to float*
; Matched:\<badref\>:  store float %var_2_35, float* %var_2_36, align 4
; store float %var_2_34, float* %var_2_35, align 4
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_37:  %var_2_37 = load i64, i64* %RBP, align 8
; %var_2_37 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_38:  %var_2_38 = add i64 %var_2_37, -16
; %var_2_38 = add i64 %var_2_37, -16
; Matched:%var_2_31:  %var_2_31 = load i64, i64* %PC, align 8
; %var_2_39 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_32:  %var_2_32 = add i64 %var_2_31, 5
; %var_2_40 = add i64 %var_2_39, 5
; Matched:\<badref\>:  store i64 %var_2_32, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
%var_2_41 = bitcast %union.VectorReg* %var_2_36 to <2 x float>*
%var_2_42 = load <2 x float>, <2 x float>* %var_2_41, align 1
%var_2_43 = extractelement <2 x float> %var_2_42, i32 0
; Matched:%var_2_44:  %var_2_44 = inttoptr i64 %var_2_38 to float*
; %var_2_44 = inttoptr i64 %var_2_38 to float*
; Matched:\<badref\>:  store float %var_2_43, float* %var_2_44, align 4
; store float %var_2_43, float* %var_2_44, align 4
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_45:  %var_2_45 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_45, -20
; %var_2_47 = add i64 %var_2_46, -20
; Matched:%var_2_23:  %var_2_23 = load i64, i64* %PC, align 8
; %var_2_48 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_24:  %var_2_24 = add i64 %var_2_23, 5
; %var_2_49 = add i64 %var_2_48, 5
; Matched:\<badref\>:  store i64 %var_2_24, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
%var_2_50 = bitcast %union.VectorReg* %var_2_45 to <2 x float>*
%var_2_51 = load <2 x float>, <2 x float>* %var_2_50, align 1
%var_2_52 = extractelement <2 x float> %var_2_51, i32 0
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_46 to float*
; %var_2_53 = inttoptr i64 %var_2_47 to float*
; Matched:\<badref\>:  store float %var_2_51, float* %var_2_52, align 4
; store float %var_2_52, float* %var_2_53, align 4
%var_2_54 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %RBP, align 8
; %var_2_55 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_55:  %var_2_55 = add i64 %var_2_54, -4
; %var_2_56 = add i64 %var_2_55, -4
; Matched:%var_2_56:  %var_2_56 = load i64, i64* %PC, align 8
; %var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, 5
; %var_2_58 = add i64 %var_2_57, 5
; Matched:\<badref\>:  store i64 %var_2_57, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
; Matched:%var_2_58:  %var_2_58 = inttoptr i64 %var_2_55 to i32*
; %var_2_59 = inttoptr i64 %var_2_56 to i32*
; Matched:%var_2_59:  %var_2_59 = load i32, i32* %var_2_58, align 4
; %var_2_60 = load i32, i32* %var_2_59, align 4
; Matched:%var_2_60:  %var_2_60 = bitcast [32 x %union.VectorReg]* %var_2_3 to float*
; %var_2_61 = bitcast [32 x %union.VectorReg]* %var_2_11 to float*
; Matched:%var_2_61:  %var_2_61 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_62 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
; Matched:\<badref\>:  store i32 %var_2_59, i32* %var_2_61, align 1, !tbaa !1265
; store i32 %var_2_60, i32* %var_2_62, align 1
%var_2_63 = getelementptr inbounds i8, i8* %var_2_54, i64 4
%var_2_64 = bitcast i8* %var_2_63 to float*
store float 0.000000e+00, float* %var_2_64, align 1
%var_2_65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_66 = bitcast i64* %var_2_65 to float*
store float 0.000000e+00, float* %var_2_66, align 1
%var_2_67 = getelementptr inbounds i8, i8* %var_2_54, i64 12
%var_2_68 = bitcast i8* %var_2_67 to float*
store float 0.000000e+00, float* %var_2_68, align 1
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_54, -8
; %var_2_69 = add i64 %var_2_55, -8
; Matched:%var_2_69:  %var_2_69 = add i64 %var_2_56, 10
; %var_2_70 = add i64 %var_2_57, 10
; Matched:\<badref\>:  store i64 %var_2_69, i64* %PC, align 8
; store i64 %var_2_70, i64* %var_2_3, align 8
%var_2_71 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_72 = bitcast i64* %var_2_65 to <2 x i32>*
%var_2_73 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
; Matched:%var_2_73:  %var_2_73 = inttoptr i64 %var_2_68 to float*
; %var_2_74 = inttoptr i64 %var_2_69 to float*
; Matched:%var_2_74:  %var_2_74 = load float, float* %var_2_73, align 4
; %var_2_75 = load float, float* %var_2_74, align 4
%var_2_76 = extractelement <2 x float> %var_2_71, i32 0
; Matched:%var_2_76:  %var_2_76 = fdiv float %var_2_75, %var_2_74
; %var_2_77 = fdiv float %var_2_76, %var_2_75
; Matched:\<badref\>:  store float %var_2_76, float* %var_2_60, align 1, !tbaa !1265
; store float %var_2_77, float* %var_2_61, align 1
%var_2_78 = bitcast <2 x float> %var_2_71 to <2 x i32>
%var_2_79 = extractelement <2 x i32> %var_2_78, i32 1
; Matched:%var_2_79:  %var_2_79 = bitcast i8* %var_2_62 to i32*
; %var_2_80 = bitcast i8* %var_2_63 to i32*
; Matched:\<badref\>:  store i32 %var_2_78, i32* %var_2_79, align 1, !tbaa !1265
; store i32 %var_2_79, i32* %var_2_80, align 1
%var_2_81 = extractelement <2 x i32> %var_2_73, i32 0
; Matched:%var_2_81:  %var_2_81 = bitcast i64* %var_2_64 to i32*
; %var_2_82 = bitcast i64* %var_2_65 to i32*
; Matched:\<badref\>:  store i32 %var_2_80, i32* %var_2_81, align 1, !tbaa !1265
; store i32 %var_2_81, i32* %var_2_82, align 1
%var_2_83 = extractelement <2 x i32> %var_2_73, i32 1
; Matched:%var_2_83:  %var_2_83 = bitcast i8* %var_2_66 to i32*
; %var_2_84 = bitcast i8* %var_2_67 to i32*
; Matched:\<badref\>:  store i32 %var_2_82, i32* %var_2_83, align 1, !tbaa !1265
; store i32 %var_2_83, i32* %var_2_84, align 1
; Matched:%var_2_84:  %var_2_84 = add i64 %var_2_54, -12
; %var_2_85 = add i64 %var_2_55, -12
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_56, 15
; %var_2_86 = add i64 %var_2_57, 15
; Matched:\<badref\>:  store i64 %var_2_85, i64* %PC, align 8
; store i64 %var_2_86, i64* %var_2_3, align 8
%var_2_87 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_88 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
; Matched:%var_2_88:  %var_2_88 = inttoptr i64 %var_2_84 to float*
; %var_2_89 = inttoptr i64 %var_2_85 to float*
; Matched:%var_2_89:  %var_2_89 = load float, float* %var_2_88, align 4
; %var_2_90 = load float, float* %var_2_89, align 4
%var_2_91 = extractelement <2 x float> %var_2_87, i32 0
; Matched:%var_2_91:  %var_2_91 = fdiv float %var_2_90, %var_2_89
; %var_2_92 = fdiv float %var_2_91, %var_2_90
; Matched:\<badref\>:  store float %var_2_91, float* %var_2_60, align 1, !tbaa !1265
; store float %var_2_92, float* %var_2_61, align 1
%var_2_93 = bitcast <2 x float> %var_2_87 to <2 x i32>
%var_2_94 = extractelement <2 x i32> %var_2_93, i32 1
; Matched:\<badref\>:  store i32 %var_2_93, i32* %var_2_79, align 1, !tbaa !1265
; store i32 %var_2_94, i32* %var_2_80, align 1
%var_2_95 = extractelement <2 x i32> %var_2_88, i32 0
; Matched:\<badref\>:  store i32 %var_2_94, i32* %var_2_81, align 1, !tbaa !1265
; store i32 %var_2_95, i32* %var_2_82, align 1
%var_2_96 = extractelement <2 x i32> %var_2_88, i32 1
; Matched:\<badref\>:  store i32 %var_2_95, i32* %var_2_83, align 1, !tbaa !1265
; store i32 %var_2_96, i32* %var_2_84, align 1
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_54, -16
; %var_2_97 = add i64 %var_2_55, -16
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_56, 20
; %var_2_98 = add i64 %var_2_57, 20
; Matched:\<badref\>:  store i64 %var_2_97, i64* %PC, align 8
; store i64 %var_2_98, i64* %var_2_3, align 8
%var_2_99 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_100 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
; Matched:%var_2_100:  %var_2_100 = inttoptr i64 %var_2_96 to float*
; %var_2_101 = inttoptr i64 %var_2_97 to float*
; Matched:%var_2_101:  %var_2_101 = load float, float* %var_2_100, align 4
; %var_2_102 = load float, float* %var_2_101, align 4
%var_2_103 = extractelement <2 x float> %var_2_99, i32 0
; Matched:%var_2_103:  %var_2_103 = fdiv float %var_2_102, %var_2_101
; %var_2_104 = fdiv float %var_2_103, %var_2_102
; Matched:\<badref\>:  store float %var_2_103, float* %var_2_60, align 1, !tbaa !1265
; store float %var_2_104, float* %var_2_61, align 1
%var_2_105 = bitcast <2 x float> %var_2_99 to <2 x i32>
%var_2_106 = extractelement <2 x i32> %var_2_105, i32 1
; Matched:\<badref\>:  store i32 %var_2_105, i32* %var_2_79, align 1, !tbaa !1265
; store i32 %var_2_106, i32* %var_2_80, align 1
%var_2_107 = extractelement <2 x i32> %var_2_100, i32 0
; Matched:\<badref\>:  store i32 %var_2_106, i32* %var_2_81, align 1, !tbaa !1265
; store i32 %var_2_107, i32* %var_2_82, align 1
%var_2_108 = extractelement <2 x i32> %var_2_100, i32 1
; Matched:\<badref\>:  store i32 %var_2_107, i32* %var_2_83, align 1, !tbaa !1265
; store i32 %var_2_108, i32* %var_2_84, align 1
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_54, -20
; %var_2_109 = add i64 %var_2_55, -20
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_56, 25
; %var_2_110 = add i64 %var_2_57, 25
; Matched:\<badref\>:  store i64 %var_2_109, i64* %PC, align 8
; store i64 %var_2_110, i64* %var_2_3, align 8
%var_2_111 = load <2 x float>, <2 x float>* %var_2_14, align 1
%var_2_112 = load <2 x i32>, <2 x i32>* %var_2_72, align 1
; Matched:%var_2_112:  %var_2_112 = inttoptr i64 %var_2_108 to float*
; %var_2_113 = inttoptr i64 %var_2_109 to float*
; Matched:%var_2_113:  %var_2_113 = load float, float* %var_2_112, align 4
; %var_2_114 = load float, float* %var_2_113, align 4
%var_2_115 = extractelement <2 x float> %var_2_111, i32 0
; Matched:%var_2_115:  %var_2_115 = fdiv float %var_2_114, %var_2_113
; %var_2_116 = fdiv float %var_2_115, %var_2_114
; Matched:\<badref\>:  store float %var_2_115, float* %var_2_60, align 1, !tbaa !1265
; store float %var_2_116, float* %var_2_61, align 1
%var_2_117 = bitcast <2 x float> %var_2_111 to <2 x i32>
%var_2_118 = extractelement <2 x i32> %var_2_117, i32 1
; Matched:\<badref\>:  store i32 %var_2_117, i32* %var_2_79, align 1, !tbaa !1265
; store i32 %var_2_118, i32* %var_2_80, align 1
%var_2_119 = extractelement <2 x i32> %var_2_112, i32 0
; Matched:\<badref\>:  store i32 %var_2_118, i32* %var_2_81, align 1, !tbaa !1265
; store i32 %var_2_119, i32* %var_2_82, align 1
%var_2_120 = extractelement <2 x i32> %var_2_112, i32 1
; Matched:\<badref\>:  store i32 %var_2_119, i32* %var_2_83, align 1, !tbaa !1265
; store i32 %var_2_120, i32* %var_2_84, align 1
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_56, 26
; %var_2_121 = add i64 %var_2_57, 26
; Matched:\<badref\>:  store i64 %var_2_120, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_121:  %var_2_121 = load i64, i64* %var_2_10, align 8, !tbaa !1261
; %var_2_122 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_121, 8
; %var_2_123 = add i64 %var_2_122, 8
; Matched:%var_2_123:  %var_2_123 = inttoptr i64 %var_2_121 to i64*
; %var_2_124 = inttoptr i64 %var_2_122 to i64*
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %var_2_123, align 8
; %var_2_125 = load i64, i64* %var_2_124, align 8
; Matched:\<badref\>:  store i64 %var_2_124, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_125, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_122, i64* %var_2_10, align 8, !tbaa !1261
; store i64 %var_2_123, i64* %var_2_6, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_56, 27
; %var_2_126 = add i64 %var_2_57, 27
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = inttoptr i64 %var_2_122 to i64*
; %var_2_127 = inttoptr i64 %var_2_123 to i64*
; Matched:%var_2_127:  %var_2_127 = load i64, i64* %var_2_126, align 8
; %var_2_128 = load i64, i64* %var_2_127, align 8
; Matched:\<badref\>:  store i64 %var_2_127, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_128, i64* %var_2_3, align 8
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_121, 16
; %var_2_129 = add i64 %var_2_122, 16
; Matched:\<badref\>:  store i64 %var_2_128, i64* %var_2_10, align 8, !tbaa !1261
; store i64 %var_2_129, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss__xmm2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movss__xmm3__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movss__xmm4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_divss_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_divss_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_divss_MINUS0x14__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
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
