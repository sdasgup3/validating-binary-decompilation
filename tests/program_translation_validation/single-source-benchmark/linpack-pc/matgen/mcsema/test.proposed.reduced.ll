; ModuleID = '/tmp/tmploq3ai9e-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x16c2__rip__type = type <{ [8 x i8] }>
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
@G_0x16c2__rip_ = global %G_0x16c2__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @matgen(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
%var_2_5 = add i64 %1, 1
store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:%var_2_11:  %var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %var_2_11, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_12, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_9, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_11, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %var_2_6, align 8
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_12 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
%var_2_13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_18:  %var_2_18 = bitcast [32 x %union.VectorReg]* %var_2_6 to i32*
; %var_2_14 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
%var_2_15 = getelementptr inbounds i8, i8* %var_2_12, i64 4
; Matched:%var_2_20:  %var_2_20 = bitcast i8* %var_2_19 to i32*
; %var_2_16 = bitcast i8* %var_2_15 to i32*
; Matched:%var_2_21:  %var_2_21 = bitcast i64* %var_2_17 to i32*
; %var_2_17 = bitcast i64* %var_2_13 to i32*
%var_2_18 = getelementptr inbounds i8, i8* %var_2_12, i64 12
; Matched:%var_2_23:  %var_2_23 = bitcast i8* %var_2_22 to i32*
; %var_2_19 = bitcast i8* %var_2_18 to i32*
%var_2_20 = bitcast [32 x %union.VectorReg]* %var_2_11 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_20, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_25:  %var_2_25 = add i64 %var_2_12, -16
; %var_2_21 = add i64 %var_2_7, -16
; Matched:%var_2_26:  %var_2_26 = load i64, i64* %RDI, align 8
; %var_2_22 = load i64, i64* %RDI.i280, align 8
; Matched:%var_2_27:  %var_2_27 = add i64 %var_2_15, 10
; %var_2_23 = add i64 %var_2_10, 10
; Matched:\<badref\>:  store i64 %var_2_27, i64* %PC, align 8
; store i64 %var_2_23, i64* %var_2_3, align 8
; Matched:%var_2_28:  %var_2_28 = inttoptr i64 %var_2_25 to i64*
; %var_2_24 = inttoptr i64 %var_2_21 to i64*
; Matched:\<badref\>:  store i64 %var_2_26, i64* %var_2_28, align 8
; store i64 %var_2_22, i64* %var_2_24, align 8
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %ESI = bitcast %union.anon* %var_2_5 to i32*
; %ESI.i = bitcast %union.anon* %var_2_25 to i32*
; Matched:%var_2_29:  %var_2_29 = load i64, i64* %RBP, align 8
; %var_2_26 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_30:  %var_2_30 = add i64 %var_2_29, -12
; %var_2_27 = add i64 %var_2_26, -12
; Matched:%var_2_31:  %var_2_31 = load i32, i32* %ESI, align 4
; %var_2_28 = load i32, i32* %ESI.i, align 4
%var_2_29 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_806:  %var_2_806 = add i64 %var_2_805, 3
; %var_2_30 = add i64 %var_2_29, 3
; Matched:\<badref\>:  store i64 %var_2_806, i64* %PC, align 8
; store i64 %var_2_30, i64* %var_2_3, align 8
; Matched:%var_2_34:  %var_2_34 = inttoptr i64 %var_2_30 to i32*
; %var_2_31 = inttoptr i64 %var_2_27 to i32*
; Matched:\<badref\>:  store i32 %var_2_31, i32* %var_2_34, align 4
; store i32 %var_2_28, i32* %var_2_31, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX = bitcast %union.anon* %var_2_4 to i32*
; %EDX.i275 = bitcast %union.anon* %var_2_32 to i32*
; Matched:%var_2_35:  %var_2_35 = load i64, i64* %RBP, align 8
; %var_2_33 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_36:  %var_2_36 = add i64 %var_2_35, -16
; %var_2_34 = add i64 %var_2_33, -16
; Matched:%var_2_37:  %var_2_37 = load i32, i32* %EDX, align 4
; %var_2_35 = load i32, i32* %EDX.i275, align 4
%var_2_36 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_33:  %var_2_33 = add i64 %var_2_32, 3
; %var_2_37 = add i64 %var_2_36, 3
; Matched:\<badref\>:  store i64 %var_2_198, i64* %PC, align 8
; store i64 %var_2_37, i64* %var_2_3, align 8
; Matched:%var_2_40:  %var_2_40 = inttoptr i64 %var_2_36 to i32*
; %var_2_38 = inttoptr i64 %var_2_34 to i32*
; Matched:\<badref\>:  store i32 %var_2_37, i32* %var_2_40, align 4
; store i32 %var_2_35, i32* %var_2_38, align 4
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
; Matched:  %RCX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RCX.i272 = getelementptr inbounds %union.anon, %union.anon* %var_2_39, i64 0, i32 0
; Matched:%var_2_41:  %var_2_41 = load i64, i64* %RBP, align 8
; %var_2_40 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_41, -24
; %var_2_41 = add i64 %var_2_40, -24
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RCX, align 8
; %var_2_42 = load i64, i64* %RCX.i272, align 8
%var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 4
; %var_2_44 = add i64 %var_2_43, 4
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_44, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_42 to i64*
; %var_2_45 = inttoptr i64 %var_2_41 to i64*
; Matched:\<badref\>:  store i64 %var_2_43, i64* %var_2_46, align 8
; store i64 %var_2_42, i64* %var_2_45, align 8
; Matched:  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %RBP, align 8
; %var_2_46 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, -32
; %var_2_47 = add i64 %var_2_46, -32
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %R8, align 8
; %var_2_48 = load i64, i64* %R8.i, align 8
%var_2_49 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, 4
; %var_2_50 = add i64 %var_2_49, 4
; Matched:\<badref\>:  store i64 %var_2_615, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_48 to i64*
; %var_2_51 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_49, i64* %var_2_52, align 8
; store i64 %var_2_48, i64* %var_2_51, align 8
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %RBP, align 8
; %var_2_52 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, -36
; %var_2_53 = add i64 %var_2_52, -36
%var_2_54 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_71, 7
; %var_2_55 = add i64 %var_2_54, 7
; Matched:\<badref\>:  store i64 %var_2_72, i64* %PC, align 8
; store i64 %var_2_55, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_54 to i32*
; %var_2_56 = inttoptr i64 %var_2_53 to i32*
; Matched:\<badref\>:  store i32 1325, i32* %var_2_57, align 4
; store i32 1325, i32* %var_2_56, align 4
%var_2_57 = load i64, i64* %RBP.i, align 8
%var_2_58 = add i64 %var_2_57, -32
%var_2_59 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_44, 4
; %var_2_60 = add i64 %var_2_59, 4
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_60, i64* %var_2_3, align 8
%var_2_61 = inttoptr i64 %var_2_58 to i64*
%var_2_62 = load i64, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_63, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_62, i64* %RCX.i272, align 8
; Matched:%var_2_506:  %var_2_506 = add i64 %var_2_497, 8
; %var_2_63 = add i64 %var_2_59, 8
; Matched:\<badref\>:  store i64 %var_2_506, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
%var_2_64 = bitcast [32 x %union.VectorReg]* %var_2_11 to <2 x float>*
%var_2_65 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_66 = extractelement <2 x float> %var_2_65, i32 0
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_63 to float*
; %var_2_67 = inttoptr i64 %var_2_62 to float*
; Matched:\<badref\>:  store float %var_2_67, float* %var_2_68, align 4
; store float %var_2_66, float* %var_2_67, align 4
%var_2_68 = load i64, i64* %RBP.i, align 8
%var_2_69 = add i64 %var_2_68, -44
%var_2_70 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 7
; %var_2_71 = add i64 %var_2_70, 7
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_71, i64* %var_2_3, align 8
%var_2_72 = inttoptr i64 %var_2_69 to i32*
store i32 0, i32* %var_2_72, align 4
  %RAX.i257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
%var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
%var_2_76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
%var_2_77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
%var_2_78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
%var_2_79 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_11, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_80 = bitcast i64* %var_2_13 to double*
%var_2_81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_82 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_81, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_83:  %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_84:  %var_2_84 = bitcast i64* %var_2_83 to double*
; %var_2_84 = bitcast i64* %var_2_83 to double*
%ECX.i230 = bitcast %union.anon* %var_2_39 to i32*
; Matched:%var_2_85:  %var_2_85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %var_2_85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
; %var_2_86 = getelementptr inbounds %union.anon, %union.anon* %var_2_32, i64 0, i32 0
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_86:  %var_2_86 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_88 = bitcast %union.VectorReg* %var_2_87 to double*
; Matched:%var_2_87:  %var_2_87 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_89 = bitcast %union.VectorReg* %var_2_81 to double*
%var_2_90 = bitcast [32 x %union.VectorReg]* %var_2_11 to double*
%var_2_91 = bitcast i64* %var_2_13 to <2 x i32>*
; Matched:%var_2_90:  %var_2_90 = bitcast [32 x %union.VectorReg]* %var_2_6 to float*
; %var_2_92 = bitcast [32 x %union.VectorReg]* %var_2_11 to float*
; Matched:  %RSI = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; %RSI.i206 = getelementptr inbounds %union.anon, %union.anon* %var_2_25, i64 0, i32 0
%var_2_93 = bitcast i8* %var_2_15 to float*
%var_2_94 = bitcast i64* %var_2_13 to float*
%var_2_95 = bitcast i8* %var_2_18 to float*
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40178f

block_.L_40178f:                                  ; preds = %block_.L_40186a, %entry
; Matched:%var_2_835:  %var_2_835 = phi i64 [ %.pre, %block_401760 ], [ %var_2_424, %block_40186a ]
; %var_2_96 = phi i64 [ %.pre, %entry ], [ %var_2_594, %block_.L_40186a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_40186a ]
%var_2_97 = load i64, i64* %RBP.i, align 8
%var_2_98 = add i64 %var_2_97, -44
; Matched:%var_2_838:  %var_2_838 = add i64 %var_2_835, 3
; %var_2_99 = add i64 %var_2_96, 3
; Matched:\<badref\>:  store i64 %var_2_838, i64* %PC, align 8
; store i64 %var_2_99, i64* %var_2_3, align 8
%var_2_100 = inttoptr i64 %var_2_98 to i32*
%var_2_101 = load i32, i32* %var_2_100, align 4
; Matched:%var_2_841:  %var_2_841 = zext i32 %var_2_840 to i64
; %var_2_102 = zext i32 %var_2_101 to i64
; Matched:\<badref\>:  store i64 %var_2_360, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_102, i64* %RAX.i257, align 8
%var_2_103 = add i64 %var_2_97, -16
; Matched:%var_2_843:  %var_2_843 = add i64 %var_2_835, 6
; %var_2_104 = add i64 %var_2_96, 6
; Matched:\<badref\>:  store i64 %var_2_843, i64* %PC, align 8
; store i64 %var_2_104, i64* %var_2_3, align 8
%var_2_105 = inttoptr i64 %var_2_103 to i32*
%var_2_106 = load i32, i32* %var_2_105, align 4
%var_2_107 = sub i32 %var_2_101, %var_2_106
; Matched:%var_2_847:  %var_2_847 = icmp ult i32 %var_2_840, %var_2_845
; %var_2_108 = icmp ult i32 %var_2_101, %var_2_106
; Matched:%var_2_367:  %var_2_367 = zext i1 %var_2_366 to i8
; %var_2_109 = zext i1 %var_2_108 to i8
; Matched:\<badref\>:  store i8 %var_2_848, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_109, i8* %var_2_73, align 1
; Matched:%var_2_849:  %var_2_849 = and i32 %var_2_846, 255
; %var_2_110 = and i32 %var_2_107, 255
; Matched:%var_2_850:  %var_2_850 = tail call i32 @llvm.ctpop.i32(i32 %var_2_849) #12
; %var_2_111 = tail call i32 @llvm.ctpop.i32(i32 %var_2_110)
; Matched:%var_2_851:  %var_2_851 = trunc i32 %var_2_850 to i8
; %var_2_112 = trunc i32 %var_2_111 to i8
; Matched:%var_2_852:  %var_2_852 = and i8 %var_2_851, 1
; %var_2_113 = and i8 %var_2_112, 1
; Matched:%var_2_372:  %var_2_372 = xor i8 %var_2_371, 1
; %var_2_114 = xor i8 %var_2_113, 1
; Matched:\<badref\>:  store i8 %var_2_853, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_114, i8* %var_2_74, align 1
; Matched:%var_2_373:  %var_2_373 = xor i32 %var_2_364, %var_2_359
; %var_2_115 = xor i32 %var_2_106, %var_2_101
; Matched:%var_2_855:  %var_2_855 = xor i32 %var_2_854, %var_2_846
; %var_2_116 = xor i32 %var_2_115, %var_2_107
; Matched:%var_2_856:  %var_2_856 = lshr i32 %var_2_855, 4
; %var_2_117 = lshr i32 %var_2_116, 4
; Matched:%var_2_857:  %var_2_857 = trunc i32 %var_2_856 to i8
; %var_2_118 = trunc i32 %var_2_117 to i8
; Matched:%var_2_858:  %var_2_858 = and i8 %var_2_857, 1
; %var_2_119 = and i8 %var_2_118, 1
; Matched:\<badref\>:  store i8 %var_2_858, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_119, i8* %var_2_75, align 1
; Matched:%var_2_378:  %var_2_378 = icmp eq i32 %var_2_365, 0
; %var_2_120 = icmp eq i32 %var_2_107, 0
; Matched:%var_2_860:  %var_2_860 = zext i1 %var_2_859 to i8
; %var_2_121 = zext i1 %var_2_120 to i8
; Matched:\<badref\>:  store i8 %var_2_379, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_121, i8* %var_2_76, align 1
%var_2_122 = lshr i32 %var_2_107, 31
%var_2_123 = trunc i32 %var_2_122 to i8
; Matched:\<badref\>:  store i8 %var_2_862, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_123, i8* %var_2_77, align 1
%var_2_124 = lshr i32 %var_2_101, 31
%var_2_125 = lshr i32 %var_2_106, 31
%var_2_126 = xor i32 %var_2_125, %var_2_124
%var_2_127 = xor i32 %var_2_122, %var_2_124
%var_2_128 = add nuw nsw i32 %var_2_127, %var_2_126
%var_2_129 = icmp eq i32 %var_2_128, 2
; Matched:%var_2_869:  %var_2_869 = zext i1 %var_2_868 to i8
; %var_2_130 = zext i1 %var_2_129 to i8
; Matched:\<badref\>:  store i8 %var_2_869, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_130, i8* %var_2_78, align 1
%var_2_131 = icmp ne i8 %var_2_123, 0
%var_2_132 = xor i1 %var_2_131, %var_2_129
; Matched:  %.v = select i1 %var_2_871, i64 12, i64 238
; %.v = select i1 %var_2_132, i64 12, i64 238
; Matched:%var_2_872:  %var_2_872 = add i64 %var_2_835, %.v
; %var_2_133 = add i64 %var_2_96, %.v
%var_2_134 = add i64 %var_2_97, -40
; Matched:%var_2_874:  %var_2_874 = add i64 %var_2_872, 7
; %var_2_135 = add i64 %var_2_133, 7
; Matched:\<badref\>:  store i64 %var_2_874, i64* %PC, align 8
; store i64 %var_2_135, i64* %var_2_3, align 8
%var_2_136 = inttoptr i64 %var_2_134 to i32*
store i32 0, i32* %var_2_136, align 4
%.pre21 = load i64, i64* %var_2_3, align 8
br i1 %var_2_132, label %block_.L_4017a2.preheader, label %block_.L_401884.preheader

block_.L_4017a2.preheader:                        ; preds = %block_.L_40178f
  br label %block_.L_4017a2

block_.L_401884.preheader:                        ; preds = %block_.L_40178f
%var_2_137 = bitcast [32 x %union.VectorReg]* %var_2_11 to <4 x i32>*
  br label %block_.L_401884

block_.L_4017a2:                                  ; preds = %block_.L_4017a2.preheader, %block_.L_40184f
%var_2_138 = phi i64 [ %var_2_564, %block_.L_40184f ], [ %.pre21, %block_.L_4017a2.preheader ]
%MEMORY.1 = phi %struct.Memory* [ %var_2_428, %block_.L_40184f ], [ %MEMORY.0, %block_.L_4017a2.preheader ]
%var_2_139 = load i64, i64* %RBP.i, align 8
%var_2_140 = add i64 %var_2_139, -40
; Matched:%var_2_725:  %var_2_725 = add i64 %var_2_722, 3
; %var_2_141 = add i64 %var_2_138, 3
; Matched:\<badref\>:  store i64 %var_2_725, i64* %PC, align 8
; store i64 %var_2_141, i64* %var_2_3, align 8
%var_2_142 = inttoptr i64 %var_2_140 to i32*
%var_2_143 = load i32, i32* %var_2_142, align 4
; Matched:%var_2_307:  %var_2_307 = zext i32 %var_2_306 to i64
; %var_2_144 = zext i32 %var_2_143 to i64
; Matched:\<badref\>:  store i64 %var_2_892, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_144, i64* %RAX.i257, align 8
%var_2_145 = add i64 %var_2_139, -16
; Matched:%var_2_730:  %var_2_730 = add i64 %var_2_722, 6
; %var_2_146 = add i64 %var_2_138, 6
; Matched:\<badref\>:  store i64 %var_2_730, i64* %PC, align 8
; store i64 %var_2_146, i64* %var_2_3, align 8
%var_2_147 = inttoptr i64 %var_2_145 to i32*
%var_2_148 = load i32, i32* %var_2_147, align 4
%var_2_149 = sub i32 %var_2_143, %var_2_148
; Matched:%var_2_313:  %var_2_313 = icmp ult i32 %var_2_306, %var_2_311
; %var_2_150 = icmp ult i32 %var_2_143, %var_2_148
; Matched:%var_2_899:  %var_2_899 = zext i1 %var_2_898 to i8
; %var_2_151 = zext i1 %var_2_150 to i8
; Matched:\<badref\>:  store i8 %var_2_899, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_151, i8* %var_2_73, align 1
; Matched:%var_2_736:  %var_2_736 = and i32 %var_2_733, 255
; %var_2_152 = and i32 %var_2_149, 255
; Matched:%var_2_901:  %var_2_901 = tail call i32 @llvm.ctpop.i32(i32 %var_2_900) #12
; %var_2_153 = tail call i32 @llvm.ctpop.i32(i32 %var_2_152)
; Matched:%var_2_317:  %var_2_317 = trunc i32 %var_2_316 to i8
; %var_2_154 = trunc i32 %var_2_153 to i8
; Matched:%var_2_903:  %var_2_903 = and i8 %var_2_902, 1
; %var_2_155 = and i8 %var_2_154, 1
; Matched:%var_2_904:  %var_2_904 = xor i8 %var_2_903, 1
; %var_2_156 = xor i8 %var_2_155, 1
; Matched:\<badref\>:  store i8 %var_2_319, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_156, i8* %var_2_74, align 1
; Matched:%var_2_905:  %var_2_905 = xor i32 %var_2_896, %var_2_891
; %var_2_157 = xor i32 %var_2_148, %var_2_143
; Matched:%var_2_906:  %var_2_906 = xor i32 %var_2_905, %var_2_897
; %var_2_158 = xor i32 %var_2_157, %var_2_149
; Matched:%var_2_743:  %var_2_743 = lshr i32 %var_2_742, 4
; %var_2_159 = lshr i32 %var_2_158, 4
; Matched:%var_2_908:  %var_2_908 = trunc i32 %var_2_907 to i8
; %var_2_160 = trunc i32 %var_2_159 to i8
; Matched:%var_2_324:  %var_2_324 = and i8 %var_2_323, 1
; %var_2_161 = and i8 %var_2_160, 1
; Matched:\<badref\>:  store i8 %var_2_909, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_161, i8* %var_2_75, align 1
; Matched:%var_2_910:  %var_2_910 = icmp eq i32 %var_2_897, 0
; %var_2_162 = icmp eq i32 %var_2_149, 0
; Matched:%var_2_326:  %var_2_326 = zext i1 %var_2_325 to i8
; %var_2_163 = zext i1 %var_2_162 to i8
; Matched:\<badref\>:  store i8 %var_2_911, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_163, i8* %var_2_76, align 1
%var_2_164 = lshr i32 %var_2_149, 31
%var_2_165 = trunc i32 %var_2_164 to i8
; Matched:\<badref\>:  store i8 %var_2_913, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_165, i8* %var_2_77, align 1
%var_2_166 = lshr i32 %var_2_143, 31
%var_2_167 = lshr i32 %var_2_148, 31
%var_2_168 = xor i32 %var_2_167, %var_2_166
%var_2_169 = xor i32 %var_2_164, %var_2_166
%var_2_170 = add nuw nsw i32 %var_2_169, %var_2_168
%var_2_171 = icmp eq i32 %var_2_170, 2
; Matched:%var_2_756:  %var_2_756 = zext i1 %var_2_755 to i8
; %var_2_172 = zext i1 %var_2_171 to i8
; Matched:\<badref\>:  store i8 %var_2_920, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_172, i8* %var_2_78, align 1
%var_2_173 = icmp ne i8 %var_2_165, 0
%var_2_174 = xor i1 %var_2_173, %var_2_171
%.v30 = select i1 %var_2_174, i64 12, i64 200
%var_2_175 = add i64 %var_2_138, %.v30
; Matched:\<badref\>:  store i64 %var_2_759, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_175, i64* %var_2_3, align 8
br i1 %var_2_174, label %block_4017ae, label %block_.L_40186a

block_4017ae:                                     ; preds = %block_.L_4017a2
%var_2_176 = add i64 %var_2_175, ptrtoint (%G_0x16c2__rip__type* @G_0x16c2__rip_ to i64)
; Matched:%var_2_396:  %var_2_396 = add i64 %var_2_759, 8
; %var_2_177 = add i64 %var_2_175, 8
; Matched:\<badref\>:  store i64 %var_2_396, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
%var_2_178 = inttoptr i64 %var_2_176 to i64*
%var_2_179 = load i64, i64* %var_2_178, align 8
store i64 %var_2_179, i64* %var_2_79, align 1
store double 0.000000e+00, double* %var_2_80, align 1
%var_2_180 = add i64 %var_2_175, add (i64 ptrtoint (%G_0x16c2__rip__type* @G_0x16c2__rip_ to i64), i64 8)
%var_2_181 = add i64 %var_2_175, 16
store i64 %var_2_181, i64* %var_2_3, align 8
%var_2_182 = inttoptr i64 %var_2_180 to i64*
%var_2_183 = load i64, i64* %var_2_182, align 8
store i64 %var_2_183, i64* %var_2_82, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1287
; store double 0.000000e+00, double* %var_2_84, align 1
  store i64 65536, i64* %RAX.i257, align 8
; Matched:%var_2_473:  %var_2_473 = add i64 %var_2_723, -36
; %var_2_184 = add i64 %var_2_139, -36
; Matched:%var_2_474:  %var_2_474 = add i64 %var_2_759, 28
; %var_2_185 = add i64 %var_2_175, 28
; Matched:\<badref\>:  store i64 %var_2_474, i64* %PC, align 8
; store i64 %var_2_185, i64* %var_2_3, align 8
; Matched:%var_2_475:  %var_2_475 = inttoptr i64 %var_2_473 to i32*
; %var_2_186 = inttoptr i64 %var_2_184 to i32*
; Matched:%var_2_476:  %var_2_476 = load i32, i32* %var_2_475, align 4
; %var_2_187 = load i32, i32* %var_2_186, align 4
; Matched:%var_2_477:  %var_2_477 = sext i32 %var_2_476 to i64
; %var_2_188 = sext i32 %var_2_187 to i64
; Matched:%var_2_478:  %var_2_478 = mul nsw i64 %var_2_477, 3125
; %var_2_189 = mul nsw i64 %var_2_188, 3125
; Matched:%var_2_479:  %var_2_479 = trunc i64 %var_2_478 to i32
; %var_2_190 = trunc i64 %var_2_189 to i32
; Matched:%var_2_480:  %var_2_480 = and i64 %var_2_478, 4294967295
; %var_2_191 = and i64 %var_2_189, 4294967295
; Matched:\<badref\>:  store i64 %var_2_480, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_191, i64* %RCX.i272, align 8
; Matched:%var_2_481:  %var_2_481 = mul i64 %var_2_477, 13421772800000
; %var_2_192 = mul i64 %var_2_188, 13421772800000
; Matched:%var_2_482:  %var_2_482 = ashr exact i64 %var_2_481, 32
; %var_2_193 = ashr exact i64 %var_2_192, 32
; Matched:%var_2_483:  %var_2_483 = icmp ne i64 %var_2_482, %var_2_478
; %var_2_194 = icmp ne i64 %var_2_193, %var_2_189
; Matched:%var_2_484:  %var_2_484 = zext i1 %var_2_483 to i8
; %var_2_195 = zext i1 %var_2_194 to i8
; Matched:\<badref\>:  store i8 %var_2_484, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_195, i8* %var_2_73, align 1
; Matched:%var_2_485:  %var_2_485 = and i32 %var_2_479, 255
; %var_2_196 = and i32 %var_2_190, 255
; Matched:%var_2_486:  %var_2_486 = tail call i32 @llvm.ctpop.i32(i32 %var_2_485) #12
; %var_2_197 = tail call i32 @llvm.ctpop.i32(i32 %var_2_196)
; Matched:%var_2_487:  %var_2_487 = trunc i32 %var_2_486 to i8
; %var_2_198 = trunc i32 %var_2_197 to i8
; Matched:%var_2_488:  %var_2_488 = and i8 %var_2_487, 1
; %var_2_199 = and i8 %var_2_198, 1
; Matched:%var_2_489:  %var_2_489 = xor i8 %var_2_488, 1
; %var_2_200 = xor i8 %var_2_199, 1
; Matched:\<badref\>:  store i8 %var_2_489, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_200, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
; Matched:%var_2_490:  %var_2_490 = lshr i32 %var_2_479, 31
; %var_2_201 = lshr i32 %var_2_190, 31
; Matched:%var_2_491:  %var_2_491 = trunc i32 %var_2_490 to i8
; %var_2_202 = trunc i32 %var_2_201 to i8
; Matched:\<badref\>:  store i8 %var_2_491, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_202, i8* %var_2_77, align 1
; Matched:\<badref\>:  store i8 %var_2_484, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_195, i8* %var_2_78, align 1
; Matched:%var_2_492:  %var_2_492 = add i64 %var_2_723, -48
; %var_2_203 = add i64 %var_2_139, -48
; Matched:%var_2_493:  %var_2_493 = add i64 %var_2_759, 31
; %var_2_204 = add i64 %var_2_175, 31
; Matched:\<badref\>:  store i64 %var_2_493, i64* %PC, align 8
; store i64 %var_2_204, i64* %var_2_3, align 8
; Matched:%var_2_494:  %var_2_494 = inttoptr i64 %var_2_492 to i32*
; %var_2_205 = inttoptr i64 %var_2_203 to i32*
; Matched:\<badref\>:  store i32 65536, i32* %var_2_494, align 4
; store i32 65536, i32* %var_2_205, align 4
%var_2_206 = load i32, i32* %ECX.i230, align 4
%var_2_207 = zext i32 %var_2_206 to i64
%var_2_208 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_496, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_207, i64* %RAX.i257, align 8
%var_2_209 = sext i32 %var_2_206 to i64
%var_2_210 = lshr i64 %var_2_209, 32
; Matched:\<badref\>:  store i64 %var_2_499, i64* %var_2_85, align 8, !tbaa !1261
; store i64 %var_2_210, i64* %var_2_85, align 8
%var_2_211 = load i64, i64* %RBP.i, align 8
%var_2_212 = add i64 %var_2_211, -48
; Matched:%var_2_502:  %var_2_502 = add i64 %var_2_497, 6
; %var_2_213 = add i64 %var_2_208, 6
; Matched:\<badref\>:  store i64 %var_2_502, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
%var_2_214 = inttoptr i64 %var_2_212 to i32*
%var_2_215 = load i32, i32* %var_2_214, align 4
; Matched:%var_2_505:  %var_2_505 = zext i32 %var_2_504 to i64
; %var_2_216 = zext i32 %var_2_215 to i64
; Matched:\<badref\>:  store i64 %var_2_505, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_216, i64* %RCX.i272, align 8
%var_2_217 = add i64 %var_2_208, 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_217, i64* %var_2_3, align 8
%var_2_218 = sext i32 %var_2_215 to i64
%var_2_219 = shl nuw i64 %var_2_210, 32
%var_2_220 = or i64 %var_2_219, %var_2_207
%var_2_221 = sdiv i64 %var_2_220, %var_2_218
%var_2_222 = shl i64 %var_2_221, 32
%var_2_223 = ashr exact i64 %var_2_222, 32
%var_2_224 = icmp eq i64 %var_2_221, %var_2_223
br i1 %var_2_224, label %var_2_227, label %var_2_225

var_2_225:
%var_2_226 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_217, %struct.Memory* %MEMORY.1)
; Matched:%var_2_500:  %var_2_500 = load i64, i64* %RBP, align 8
; %.pre22 = load i64, i64* %RBP.i, align 8
; Matched:  %.pre23 = load i32, i32* %EDX, align 4
; %.pre23 = load i32, i32* %EDX.i275, align 4
; Matched:  %.pre24 = load i64, i64* %PC, align 8
; %.pre24 = load i64, i64* %var_2_3, align 8
  br label %routine_idivl__ecx.exit

var_2_227:
; Matched:%var_2_517:  %var_2_517 = srem i64 %var_2_509, %var_2_507
; %var_2_228 = srem i64 %var_2_220, %var_2_218
; Matched:%var_2_518:  %var_2_518 = and i64 %var_2_510, 4294967295
; %var_2_229 = and i64 %var_2_221, 4294967295
; Matched:\<badref\>:  store i64 %var_2_518, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_229, i64* %RAX.i257, align 8
; Matched:%var_2_519:  %var_2_519 = and i64 %var_2_517, 4294967295
; %var_2_230 = and i64 %var_2_228, 4294967295
; Matched:\<badref\>:  store i64 %var_2_519, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_230, i64* %var_2_86, align 8
store i8 0, i8* %var_2_73, align 1
store i8 0, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
store i8 0, i8* %var_2_77, align 1
store i8 0, i8* %var_2_78, align 1
; Matched:%var_2_520:  %var_2_520 = trunc i64 %var_2_517 to i32
; %var_2_231 = trunc i64 %var_2_228 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %var_2_227, %var_2_225
; Matched:%var_2_521:  %var_2_521 = phi i64 [ %.pre24, %var_2_514 ], [ %var_2_506, %var_2_516 ]
; %var_2_232 = phi i64 [ %.pre24, %var_2_225 ], [ %var_2_217, %var_2_227 ]
; Matched:%var_2_522:  %var_2_522 = phi i32 [ %.pre23, %var_2_514 ], [ %var_2_520, %var_2_516 ]
; %var_2_233 = phi i32 [ %.pre23, %var_2_225 ], [ %var_2_231, %var_2_227 ]
; Matched:%var_2_523:  %var_2_523 = phi i64 [ %.pre22, %var_2_514 ], [ %var_2_500, %var_2_516 ]
; %var_2_234 = phi i64 [ %.pre22, %var_2_225 ], [ %var_2_211, %var_2_227 ]
%var_2_235 = phi %struct.Memory* [ %var_2_226, %var_2_225 ], [ %MEMORY.1, %var_2_227 ]
; Matched:%var_2_525:  %var_2_525 = add i64 %var_2_523, -36
; %var_2_236 = add i64 %var_2_234, -36
; Matched:%var_2_526:  %var_2_526 = add i64 %var_2_521, 3
; %var_2_237 = add i64 %var_2_232, 3
; Matched:\<badref\>:  store i64 %var_2_526, i64* %PC, align 8
; store i64 %var_2_237, i64* %var_2_3, align 8
; Matched:%var_2_527:  %var_2_527 = inttoptr i64 %var_2_525 to i32*
; %var_2_238 = inttoptr i64 %var_2_236 to i32*
; Matched:\<badref\>:  store i32 %var_2_522, i32* %var_2_527, align 4
; store i32 %var_2_233, i32* %var_2_238, align 4
%var_2_239 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_529:  %var_2_529 = add i64 %var_2_528, -36
; %var_2_240 = add i64 %var_2_239, -36
; Matched:%var_2_530:  %var_2_530 = load i64, i64* %PC, align 8
; %var_2_241 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_531:  %var_2_531 = add i64 %var_2_530, 5
; %var_2_242 = add i64 %var_2_241, 5
; Matched:\<badref\>:  store i64 %var_2_531, i64* %PC, align 8
; store i64 %var_2_242, i64* %var_2_3, align 8
; Matched:%var_2_532:  %var_2_532 = inttoptr i64 %var_2_529 to i32*
; %var_2_243 = inttoptr i64 %var_2_240 to i32*
; Matched:%var_2_533:  %var_2_533 = load i32, i32* %var_2_532, align 4
; %var_2_244 = load i32, i32* %var_2_243, align 4
; Matched:%var_2_534:  %var_2_534 = sitofp i32 %var_2_533 to double
; %var_2_245 = sitofp i32 %var_2_244 to double
; Matched:%var_2_535:  %var_2_535 = load double, double* %var_2_87, align 1
; %var_2_246 = load double, double* %var_2_89, align 1
; Matched:%var_2_536:  %var_2_536 = fsub double %var_2_534, %var_2_535
; %var_2_247 = fsub double %var_2_245, %var_2_246
; Matched:%var_2_169:  %var_2_169 = load \<2 x float\>, \<2 x float\>* %var_2_65, align 1
; %var_2_248 = load double, double* %var_2_90, align 1
; Matched:%var_2_538:  %var_2_538 = fdiv double %var_2_536, %var_2_537
; %var_2_249 = fdiv double %var_2_247, %var_2_248
; Matched:\<badref\>:  store double %var_2_538, double* %var_2_86, align 1, !tbaa !1287
; store double %var_2_249, double* %var_2_88, align 1
%.cast = bitcast double %var_2_248 to <2 x i32>
%var_2_250 = load <2 x i32>, <2 x i32>* %var_2_91, align 1
; Matched:%var_2_540:  %var_2_540 = fptrunc double %var_2_538 to float
; %var_2_251 = fptrunc double %var_2_249 to float
; Matched:\<badref\>:  store float %var_2_540, float* %var_2_90, align 1, !tbaa !1267
; store float %var_2_251, float* %var_2_92, align 1
%var_2_252 = extractelement <2 x i32> %.cast, i32 1
; Matched:\<badref\>:  store i32 %var_2_176, i32* %var_2_20, align 1, !tbaa !1267
; store i32 %var_2_252, i32* %var_2_16, align 1
%var_2_253 = extractelement <2 x i32> %var_2_250, i32 0
; Matched:\<badref\>:  store i32 %var_2_177, i32* %var_2_21, align 1, !tbaa !1267
; store i32 %var_2_253, i32* %var_2_17, align 1
%var_2_254 = extractelement <2 x i32> %var_2_250, i32 1
; Matched:\<badref\>:  store i32 %var_2_178, i32* %var_2_23, align 1, !tbaa !1267
; store i32 %var_2_254, i32* %var_2_19, align 1
%var_2_255 = add i64 %var_2_239, -8
; Matched:%var_2_545:  %var_2_545 = add i64 %var_2_530, 21
; %var_2_256 = add i64 %var_2_241, 21
; Matched:\<badref\>:  store i64 %var_2_545, i64* %PC, align 8
; store i64 %var_2_256, i64* %var_2_3, align 8
%var_2_257 = inttoptr i64 %var_2_255 to i64*
%var_2_258 = load i64, i64* %var_2_257, align 8
; Matched:\<badref\>:  store i64 %var_2_547, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_258, i64* %RSI.i206, align 8
%var_2_259 = add i64 %var_2_239, -12
; Matched:%var_2_549:  %var_2_549 = add i64 %var_2_530, 24
; %var_2_260 = add i64 %var_2_241, 24
; Matched:\<badref\>:  store i64 %var_2_549, i64* %PC, align 8
; store i64 %var_2_260, i64* %var_2_3, align 8
%var_2_261 = inttoptr i64 %var_2_259 to i32*
%var_2_262 = load i32, i32* %var_2_261, align 4
; Matched:%var_2_622:  %var_2_622 = zext i32 %var_2_621 to i64
; %var_2_263 = zext i32 %var_2_262 to i64
; Matched:\<badref\>:  store i64 %var_2_552, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_263, i64* %var_2_86, align 8
%var_2_264 = add i64 %var_2_239, -44
; Matched:%var_2_554:  %var_2_554 = add i64 %var_2_530, 28
; %var_2_265 = add i64 %var_2_241, 28
; Matched:\<badref\>:  store i64 %var_2_554, i64* %PC, align 8
; store i64 %var_2_265, i64* %var_2_3, align 8
%var_2_266 = inttoptr i64 %var_2_264 to i32*
%var_2_267 = load i32, i32* %var_2_266, align 4
%var_2_268 = sext i32 %var_2_262 to i64
%var_2_269 = sext i32 %var_2_267 to i64
%var_2_270 = mul nsw i64 %var_2_269, %var_2_268
; Matched:%var_2_630:  %var_2_630 = trunc i64 %var_2_629 to i32
; %var_2_271 = trunc i64 %var_2_270 to i32
; Matched:%var_2_561:  %var_2_561 = and i64 %var_2_559, 4294967295
; %var_2_272 = and i64 %var_2_270, 4294967295
; Matched:\<badref\>:  store i64 %var_2_631, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_272, i64* %var_2_86, align 8
; Matched:%var_2_562:  %var_2_562 = shl i64 %var_2_559, 32
; %var_2_273 = shl i64 %var_2_270, 32
; Matched:%var_2_246:  %var_2_246 = ashr exact i64 %var_2_245, 32
; %var_2_274 = ashr exact i64 %var_2_273, 32
; Matched:%var_2_247:  %var_2_247 = icmp ne i64 %var_2_246, %var_2_242
; %var_2_275 = icmp ne i64 %var_2_274, %var_2_270
; Matched:%var_2_635:  %var_2_635 = zext i1 %var_2_634 to i8
; %var_2_276 = zext i1 %var_2_275 to i8
; Matched:\<badref\>:  store i8 %var_2_248, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_276, i8* %var_2_73, align 1
; Matched:%var_2_636:  %var_2_636 = and i32 %var_2_630, 255
; %var_2_277 = and i32 %var_2_271, 255
; Matched:%var_2_250:  %var_2_250 = tail call i32 @llvm.ctpop.i32(i32 %var_2_249) #12
; %var_2_278 = tail call i32 @llvm.ctpop.i32(i32 %var_2_277)
; Matched:%var_2_130:  %var_2_130 = trunc i32 %var_2_129 to i8
; %var_2_279 = trunc i32 %var_2_278 to i8
; Matched:%var_2_569:  %var_2_569 = and i8 %var_2_568, 1
; %var_2_280 = and i8 %var_2_279, 1
; Matched:%var_2_253:  %var_2_253 = xor i8 %var_2_252, 1
; %var_2_281 = xor i8 %var_2_280, 1
; Matched:\<badref\>:  store i8 %var_2_640, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_281, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
; Matched:%var_2_571:  %var_2_571 = lshr i32 %var_2_560, 31
; %var_2_282 = lshr i32 %var_2_271, 31
; Matched:%var_2_255:  %var_2_255 = trunc i32 %var_2_254 to i8
; %var_2_283 = trunc i32 %var_2_282 to i8
; Matched:\<badref\>:  store i8 %var_2_642, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_283, i8* %var_2_77, align 1
; Matched:\<badref\>:  store i8 %var_2_565, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_276, i8* %var_2_78, align 1
%var_2_284 = add i64 %var_2_239, -40
; Matched:%var_2_574:  %var_2_574 = add i64 %var_2_530, 31
; %var_2_285 = add i64 %var_2_241, 31
; Matched:\<badref\>:  store i64 %var_2_574, i64* %PC, align 8
; store i64 %var_2_285, i64* %var_2_3, align 8
%var_2_286 = trunc i64 %var_2_270 to i32
%var_2_287 = inttoptr i64 %var_2_284 to i32*
%var_2_288 = load i32, i32* %var_2_287, align 4
%var_2_289 = add i32 %var_2_288, %var_2_286
; Matched:%var_2_649:  %var_2_649 = zext i32 %var_2_648 to i64
; %var_2_290 = zext i32 %var_2_289 to i64
; Matched:\<badref\>:  store i64 %var_2_579, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_290, i64* %var_2_86, align 8
; Matched:%var_2_650:  %var_2_650 = icmp ult i32 %var_2_648, %var_2_645
; %var_2_291 = icmp ult i32 %var_2_289, %var_2_286
; Matched:%var_2_264:  %var_2_264 = icmp ult i32 %var_2_261, %var_2_260
; %var_2_292 = icmp ult i32 %var_2_289, %var_2_288
; Matched:%var_2_582:  %var_2_582 = or i1 %var_2_580, %var_2_581
; %var_2_293 = or i1 %var_2_291, %var_2_292
; Matched:%var_2_583:  %var_2_583 = zext i1 %var_2_582 to i8
; %var_2_294 = zext i1 %var_2_293 to i8
; Matched:\<badref\>:  store i8 %var_2_583, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_294, i8* %var_2_73, align 1
; Matched:%var_2_654:  %var_2_654 = and i32 %var_2_648, 255
; %var_2_295 = and i32 %var_2_289, 255
; Matched:%var_2_268:  %var_2_268 = tail call i32 @llvm.ctpop.i32(i32 %var_2_267) #12
; %var_2_296 = tail call i32 @llvm.ctpop.i32(i32 %var_2_295)
; Matched:%var_2_586:  %var_2_586 = trunc i32 %var_2_585 to i8
; %var_2_297 = trunc i32 %var_2_296 to i8
; Matched:%var_2_657:  %var_2_657 = and i8 %var_2_656, 1
; %var_2_298 = and i8 %var_2_297, 1
; Matched:%var_2_271:  %var_2_271 = xor i8 %var_2_270, 1
; %var_2_299 = xor i8 %var_2_298, 1
; Matched:\<badref\>:  store i8 %var_2_588, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_299, i8* %var_2_74, align 1
; Matched:%var_2_272:  %var_2_272 = xor i32 %var_2_260, %var_2_258
; %var_2_300 = xor i32 %var_2_288, %var_2_286
; Matched:%var_2_273:  %var_2_273 = xor i32 %var_2_272, %var_2_261
; %var_2_301 = xor i32 %var_2_300, %var_2_289
; Matched:%var_2_661:  %var_2_661 = lshr i32 %var_2_660, 4
; %var_2_302 = lshr i32 %var_2_301, 4
; Matched:%var_2_275:  %var_2_275 = trunc i32 %var_2_274 to i8
; %var_2_303 = trunc i32 %var_2_302 to i8
; Matched:%var_2_593:  %var_2_593 = and i8 %var_2_592, 1
; %var_2_304 = and i8 %var_2_303, 1
; Matched:\<badref\>:  store i8 %var_2_663, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_304, i8* %var_2_75, align 1
; Matched:%var_2_277:  %var_2_277 = icmp eq i32 %var_2_261, 0
; %var_2_305 = icmp eq i32 %var_2_289, 0
; Matched:%var_2_595:  %var_2_595 = zext i1 %var_2_594 to i8
; %var_2_306 = zext i1 %var_2_305 to i8
; Matched:\<badref\>:  store i8 %var_2_595, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_306, i8* %var_2_76, align 1
; Matched:%var_2_279:  %var_2_279 = lshr i32 %var_2_261, 31
; %var_2_307 = lshr i32 %var_2_289, 31
; Matched:%var_2_667:  %var_2_667 = trunc i32 %var_2_666 to i8
; %var_2_308 = trunc i32 %var_2_307 to i8
; Matched:\<badref\>:  store i8 %var_2_667, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_308, i8* %var_2_77, align 1
; Matched:%var_2_281:  %var_2_281 = lshr i32 %var_2_258, 31
; %var_2_309 = lshr i32 %var_2_286, 31
; Matched:%var_2_669:  %var_2_669 = lshr i32 %var_2_647, 31
; %var_2_310 = lshr i32 %var_2_288, 31
; Matched:%var_2_283:  %var_2_283 = xor i32 %var_2_279, %var_2_281
; %var_2_311 = xor i32 %var_2_307, %var_2_309
; Matched:%var_2_161:  %var_2_161 = xor i32 %var_2_156, %var_2_159
; %var_2_312 = xor i32 %var_2_307, %var_2_310
; Matched:%var_2_285:  %var_2_285 = add nuw nsw i32 %var_2_283, %var_2_284
; %var_2_313 = add nuw nsw i32 %var_2_311, %var_2_312
; Matched:%var_2_286:  %var_2_286 = icmp eq i32 %var_2_285, 2
; %var_2_314 = icmp eq i32 %var_2_313, 2
; Matched:%var_2_674:  %var_2_674 = zext i1 %var_2_673 to i8
; %var_2_315 = zext i1 %var_2_314 to i8
; Matched:\<badref\>:  store i8 %var_2_674, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_315, i8* %var_2_78, align 1
%var_2_316 = sext i32 %var_2_289 to i64
; Matched:\<badref\>:  store i64 %var_2_675, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_316, i64* %RDI.i280, align 8
; Matched:%var_2_606:  %var_2_606 = shl nsw i64 %var_2_605, 2
; %var_2_317 = shl nsw i64 %var_2_316, 2
; Matched:%var_2_607:  %var_2_607 = add i64 %var_2_547, %var_2_606
; %var_2_318 = add i64 %var_2_258, %var_2_317
; Matched:%var_2_608:  %var_2_608 = add i64 %var_2_530, 39
; %var_2_319 = add i64 %var_2_241, 39
; Matched:\<badref\>:  store i64 %var_2_608, i64* %PC, align 8
; store i64 %var_2_319, i64* %var_2_3, align 8
%var_2_320 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_321 = extractelement <2 x float> %var_2_320, i32 0
; Matched:%var_2_611:  %var_2_611 = inttoptr i64 %var_2_607 to float*
; %var_2_322 = inttoptr i64 %var_2_318 to float*
; Matched:\<badref\>:  store float %var_2_610, float* %var_2_611, align 4
; store float %var_2_321, float* %var_2_322, align 4
%var_2_323 = load i64, i64* %RBP.i, align 8
%var_2_324 = add i64 %var_2_323, -8
%var_2_325 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_615:  %var_2_615 = add i64 %var_2_614, 4
; %var_2_326 = add i64 %var_2_325, 4
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_326, i64* %var_2_3, align 8
%var_2_327 = inttoptr i64 %var_2_324 to i64*
%var_2_328 = load i64, i64* %var_2_327, align 8
; Matched:\<badref\>:  store i64 %var_2_617, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_328, i64* %RSI.i206, align 8
%var_2_329 = add i64 %var_2_323, -12
; Matched:%var_2_619:  %var_2_619 = add i64 %var_2_614, 7
; %var_2_330 = add i64 %var_2_325, 7
; Matched:\<badref\>:  store i64 %var_2_619, i64* %PC, align 8
; store i64 %var_2_330, i64* %var_2_3, align 8
%var_2_331 = inttoptr i64 %var_2_329 to i32*
%var_2_332 = load i32, i32* %var_2_331, align 4
; Matched:%var_2_114:  %var_2_114 = zext i32 %var_2_113 to i64
; %var_2_333 = zext i32 %var_2_332 to i64
; Matched:\<badref\>:  store i64 %var_2_114, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_333, i64* %var_2_86, align 8
%var_2_334 = add i64 %var_2_323, -44
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_614, 11
; %var_2_335 = add i64 %var_2_325, 11
; Matched:\<badref\>:  store i64 %var_2_624, i64* %PC, align 8
; store i64 %var_2_335, i64* %var_2_3, align 8
%var_2_336 = inttoptr i64 %var_2_334 to i32*
%var_2_337 = load i32, i32* %var_2_336, align 4
%var_2_338 = sext i32 %var_2_332 to i64
%var_2_339 = sext i32 %var_2_337 to i64
%var_2_340 = mul nsw i64 %var_2_339, %var_2_338
; Matched:%var_2_122:  %var_2_122 = trunc i64 %var_2_121 to i32
; %var_2_341 = trunc i64 %var_2_340 to i32
; Matched:%var_2_123:  %var_2_123 = and i64 %var_2_121, 4294967295
; %var_2_342 = and i64 %var_2_340, 4294967295
; Matched:\<badref\>:  store i64 %var_2_123, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_342, i64* %var_2_86, align 8
; Matched:%var_2_124:  %var_2_124 = shl i64 %var_2_121, 32
; %var_2_343 = shl i64 %var_2_340, 32
; Matched:%var_2_633:  %var_2_633 = ashr exact i64 %var_2_632, 32
; %var_2_344 = ashr exact i64 %var_2_343, 32
; Matched:%var_2_126:  %var_2_126 = icmp ne i64 %var_2_125, %var_2_121
; %var_2_345 = icmp ne i64 %var_2_344, %var_2_340
; Matched:%var_2_127:  %var_2_127 = zext i1 %var_2_126 to i8
; %var_2_346 = zext i1 %var_2_345 to i8
; Matched:\<badref\>:  store i8 %var_2_127, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_346, i8* %var_2_73, align 1
; Matched:%var_2_128:  %var_2_128 = and i32 %var_2_122, 255
; %var_2_347 = and i32 %var_2_341, 255
; Matched:%var_2_637:  %var_2_637 = tail call i32 @llvm.ctpop.i32(i32 %var_2_636) #12
; %var_2_348 = tail call i32 @llvm.ctpop.i32(i32 %var_2_347)
; Matched:%var_2_251:  %var_2_251 = trunc i32 %var_2_250 to i8
; %var_2_349 = trunc i32 %var_2_348 to i8
; Matched:%var_2_131:  %var_2_131 = and i8 %var_2_130, 1
; %var_2_350 = and i8 %var_2_349, 1
; Matched:%var_2_640:  %var_2_640 = xor i8 %var_2_639, 1
; %var_2_351 = xor i8 %var_2_350, 1
; Matched:\<badref\>:  store i8 %var_2_570, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_351, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
; Matched:%var_2_641:  %var_2_641 = lshr i32 %var_2_630, 31
; %var_2_352 = lshr i32 %var_2_341, 31
; Matched:%var_2_642:  %var_2_642 = trunc i32 %var_2_641 to i8
; %var_2_353 = trunc i32 %var_2_352 to i8
; Matched:\<badref\>:  store i8 %var_2_255, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_353, i8* %var_2_77, align 1
; Matched:\<badref\>:  store i8 %var_2_127, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_346, i8* %var_2_78, align 1
%var_2_354 = add i64 %var_2_323, -40
; Matched:%var_2_644:  %var_2_644 = add i64 %var_2_614, 14
; %var_2_355 = add i64 %var_2_325, 14
; Matched:\<badref\>:  store i64 %var_2_644, i64* %PC, align 8
; store i64 %var_2_355, i64* %var_2_3, align 8
%var_2_356 = trunc i64 %var_2_340 to i32
%var_2_357 = inttoptr i64 %var_2_354 to i32*
%var_2_358 = load i32, i32* %var_2_357, align 4
%var_2_359 = add i32 %var_2_358, %var_2_356
; Matched:%var_2_579:  %var_2_579 = zext i32 %var_2_578 to i64
; %var_2_360 = zext i32 %var_2_359 to i64
; Matched:\<badref\>:  store i64 %var_2_139, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_360, i64* %var_2_86, align 8
%var_2_361 = icmp ult i32 %var_2_359, %var_2_356
%var_2_362 = icmp ult i32 %var_2_359, %var_2_358
%var_2_363 = or i1 %var_2_361, %var_2_362
%var_2_364 = zext i1 %var_2_363 to i8
; Matched:\<badref\>:  store i8 %var_2_653, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_364, i8* %var_2_73, align 1
; Matched:%var_2_144:  %var_2_144 = and i32 %var_2_138, 255
; %var_2_365 = and i32 %var_2_359, 255
; Matched:%var_2_145:  %var_2_145 = tail call i32 @llvm.ctpop.i32(i32 %var_2_144) #12
; %var_2_366 = tail call i32 @llvm.ctpop.i32(i32 %var_2_365)
; Matched:%var_2_269:  %var_2_269 = trunc i32 %var_2_268 to i8
; %var_2_367 = trunc i32 %var_2_366 to i8
; Matched:%var_2_270:  %var_2_270 = and i8 %var_2_269, 1
; %var_2_368 = and i8 %var_2_367, 1
; Matched:%var_2_588:  %var_2_588 = xor i8 %var_2_587, 1
; %var_2_369 = xor i8 %var_2_368, 1
; Matched:\<badref\>:  store i8 %var_2_658, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_369, i8* %var_2_74, align 1
; Matched:%var_2_589:  %var_2_589 = xor i32 %var_2_577, %var_2_575
; %var_2_370 = xor i32 %var_2_358, %var_2_356
; Matched:%var_2_660:  %var_2_660 = xor i32 %var_2_659, %var_2_648
; %var_2_371 = xor i32 %var_2_370, %var_2_359
; Matched:%var_2_151:  %var_2_151 = lshr i32 %var_2_150, 4
; %var_2_372 = lshr i32 %var_2_371, 4
; Matched:%var_2_152:  %var_2_152 = trunc i32 %var_2_151 to i8
; %var_2_373 = trunc i32 %var_2_372 to i8
; Matched:%var_2_276:  %var_2_276 = and i8 %var_2_275, 1
; %var_2_374 = and i8 %var_2_373, 1
; Matched:\<badref\>:  store i8 %var_2_276, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_374, i8* %var_2_75, align 1
%var_2_375 = icmp eq i32 %var_2_359, 0
%var_2_376 = zext i1 %var_2_375 to i8
; Matched:\<badref\>:  store i8 %var_2_278, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_376, i8* %var_2_76, align 1
; Matched:%var_2_666:  %var_2_666 = lshr i32 %var_2_648, 31
; %var_2_377 = lshr i32 %var_2_359, 31
; Matched:%var_2_157:  %var_2_157 = trunc i32 %var_2_156 to i8
; %var_2_378 = trunc i32 %var_2_377 to i8
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_378, i8* %var_2_77, align 1
; Matched:%var_2_598:  %var_2_598 = lshr i32 %var_2_575, 31
; %var_2_379 = lshr i32 %var_2_356, 31
; Matched:%var_2_159:  %var_2_159 = lshr i32 %var_2_137, 31
; %var_2_380 = lshr i32 %var_2_358, 31
; Matched:%var_2_600:  %var_2_600 = xor i32 %var_2_596, %var_2_598
; %var_2_381 = xor i32 %var_2_377, %var_2_379
; Matched:%var_2_671:  %var_2_671 = xor i32 %var_2_666, %var_2_669
; %var_2_382 = xor i32 %var_2_377, %var_2_380
; Matched:%var_2_602:  %var_2_602 = add nuw nsw i32 %var_2_600, %var_2_601
; %var_2_383 = add nuw nsw i32 %var_2_381, %var_2_382
; Matched:%var_2_673:  %var_2_673 = icmp eq i32 %var_2_672, 2
; %var_2_384 = icmp eq i32 %var_2_383, 2
; Matched:%var_2_164:  %var_2_164 = zext i1 %var_2_163 to i8
; %var_2_385 = zext i1 %var_2_384 to i8
; Matched:\<badref\>:  store i8 %var_2_164, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_385, i8* %var_2_78, align 1
%var_2_386 = sext i32 %var_2_359 to i64
; Matched:\<badref\>:  store i64 %var_2_605, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_386, i64* %RDI.i280, align 8
; Matched:%var_2_289:  %var_2_289 = shl nsw i64 %var_2_288, 2
; %var_2_387 = shl nsw i64 %var_2_386, 2
; Matched:%var_2_677:  %var_2_677 = add i64 %var_2_617, %var_2_676
; %var_2_388 = add i64 %var_2_328, %var_2_387
; Matched:%var_2_678:  %var_2_678 = add i64 %var_2_614, 22
; %var_2_389 = add i64 %var_2_325, 22
; Matched:\<badref\>:  store i64 %var_2_678, i64* %PC, align 8
; store i64 %var_2_389, i64* %var_2_3, align 8
; Matched:%var_2_679:  %var_2_679 = inttoptr i64 %var_2_677 to i32*
; %var_2_390 = inttoptr i64 %var_2_388 to i32*
; Matched:%var_2_680:  %var_2_680 = load i32, i32* %var_2_679, align 4
; %var_2_391 = load i32, i32* %var_2_390, align 4
; Matched:\<badref\>:  store i32 %var_2_680, i32* %var_2_18, align 1, !tbaa !1267
; store i32 %var_2_391, i32* %var_2_14, align 1
store float 0.000000e+00, float* %var_2_93, align 1
store float 0.000000e+00, float* %var_2_94, align 1
store float 0.000000e+00, float* %var_2_95, align 1
%var_2_392 = add i64 %var_2_323, -32
; Matched:%var_2_682:  %var_2_682 = add i64 %var_2_614, 26
; %var_2_393 = add i64 %var_2_325, 26
; Matched:\<badref\>:  store i64 %var_2_682, i64* %PC, align 8
; store i64 %var_2_393, i64* %var_2_3, align 8
%var_2_394 = inttoptr i64 %var_2_392 to i64*
%var_2_395 = load i64, i64* %var_2_394, align 8
; Matched:\<badref\>:  store i64 %var_2_684, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_395, i64* %RSI.i206, align 8
%var_2_396 = add i64 %var_2_325, 29
; Matched:\<badref\>:  store i64 %var_2_685, i64* %PC, align 8
; store i64 %var_2_396, i64* %var_2_3, align 8
%var_2_397 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_398 = extractelement <2 x float> %var_2_397, i32 0
%var_2_399 = inttoptr i64 %var_2_395 to float*
%var_2_400 = load float, float* %var_2_399, align 4
%var_2_401 = fcmp uno float %var_2_398, %var_2_400
br i1 %var_2_401, label %var_2_402, label %var_2_412

var_2_402:
%var_2_403 = fadd float %var_2_398, %var_2_400
%var_2_404 = bitcast float %var_2_403 to i32
%var_2_405 = and i32 %var_2_404, 2143289344
%var_2_406 = icmp eq i32 %var_2_405, 2139095040
%var_2_407 = and i32 %var_2_404, 4194303
%var_2_408 = icmp ne i32 %var_2_407, 0
%var_2_409 = and i1 %var_2_406, %var_2_408
br i1 %var_2_409, label %var_2_410, label %var_2_418

var_2_410:
%var_2_411 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_396, %struct.Memory* %var_2_235)
; Matched:  %.pre25 = load i64, i64* %PC, align 8
; %.pre25 = load i64, i64* %var_2_3, align 8
%.pre26 = load i8, i8* %var_2_73, align 1
%.pre27 = load i8, i8* %var_2_76, align 1
  br label %routine_ucomiss___rsi____xmm0.exit

var_2_412:
%var_2_413 = fcmp ogt float %var_2_398, %var_2_400
br i1 %var_2_413, label %var_2_418, label %var_2_414

var_2_414:
%var_2_415 = fcmp olt float %var_2_398, %var_2_400
br i1 %var_2_415, label %var_2_418, label %var_2_416

var_2_416:
%var_2_417 = fcmp oeq float %var_2_398, %var_2_400
br i1 %var_2_417, label %var_2_418, label %var_2_422

var_2_418:
%var_2_419 = phi i8 [ 0, %var_2_412 ], [ 0, %var_2_414 ], [ 1, %var_2_416 ], [ 1, %var_2_402 ]
; Matched:%var_2_709:  %var_2_709 = phi i8 [ 0, %var_2_701 ], [ 0, %var_2_703 ], [ 0, %var_2_705 ], [ 1, %var_2_691 ]
; %var_2_420 = phi i8 [ 0, %var_2_412 ], [ 0, %var_2_414 ], [ 0, %var_2_416 ], [ 1, %var_2_402 ]
%var_2_421 = phi i8 [ 0, %var_2_412 ], [ 1, %var_2_414 ], [ 0, %var_2_416 ], [ 1, %var_2_402 ]
; Matched:\<badref\>:  store i8 %var_2_708, i8* %var_2_77, align 1, !tbaa !1289
; store i8 %var_2_419, i8* %var_2_76, align 1
; Matched:\<badref\>:  store i8 %var_2_709, i8* %var_2_75, align 1, !tbaa !1289
; store i8 %var_2_420, i8* %var_2_74, align 1
; Matched:\<badref\>:  store i8 %var_2_710, i8* %var_2_74, align 1, !tbaa !1289
; store i8 %var_2_421, i8* %var_2_73, align 1
br label %var_2_422

var_2_422:
%var_2_423 = phi i8 [ %var_2_419, %var_2_418 ], [ %var_2_376, %var_2_416 ]
%var_2_424 = phi i8 [ %var_2_421, %var_2_418 ], [ %var_2_364, %var_2_416 ]
store i8 0, i8* %var_2_78, align 1
store i8 0, i8* %var_2_77, align 1
store i8 0, i8* %var_2_75, align 1
  br label %routine_ucomiss___rsi____xmm0.exit

routine_ucomiss___rsi____xmm0.exit:               ; preds = %var_2_422, %var_2_410
%var_2_425 = phi i8 [ %.pre27, %var_2_410 ], [ %var_2_423, %var_2_422 ]
%var_2_426 = phi i8 [ %.pre26, %var_2_410 ], [ %var_2_424, %var_2_422 ]
; Matched:%var_2_716:  %var_2_716 = phi i64 [ %.pre25, %var_2_699 ], [ %var_2_685, %var_2_711 ]
; %var_2_427 = phi i64 [ %.pre25, %var_2_410 ], [ %var_2_396, %var_2_422 ]
%var_2_428 = phi %struct.Memory* [ %var_2_411, %var_2_410 ], [ %var_2_235, %var_2_422 ]
%var_2_429 = or i8 %var_2_425, %var_2_426
%var_2_430 = icmp ne i8 %var_2_429, 0
; Matched:  %.v33 = select i1 %var_2_719, i64 38, i64 6
; %.v33 = select i1 %var_2_430, i64 38, i64 6
; Matched:%var_2_720:  %var_2_720 = add i64 %var_2_716, %.v33
; %var_2_431 = add i64 %var_2_427, %.v33
; Matched:\<badref\>:  store i64 %var_2_720, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_431, i64* %var_2_3, align 8
%var_2_432 = load i64, i64* %RBP.i, align 8
br i1 %var_2_430, label %block_.L_401842, label %block_401822

block_401822:                                     ; preds = %routine_ucomiss___rsi____xmm0.exit
%var_2_433 = add i64 %var_2_432, -8
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_720, 4
; %var_2_434 = add i64 %var_2_431, 4
; Matched:\<badref\>:  store i64 %var_2_343, i64* %PC, align 8
; store i64 %var_2_434, i64* %var_2_3, align 8
%var_2_435 = inttoptr i64 %var_2_433 to i64*
%var_2_436 = load i64, i64* %var_2_435, align 8
; Matched:\<badref\>:  store i64 %var_2_230, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_436, i64* %RAX.i257, align 8
%var_2_437 = add i64 %var_2_432, -12
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_720, 7
; %var_2_438 = add i64 %var_2_431, 7
; Matched:\<badref\>:  store i64 %var_2_232, i64* %PC, align 8
; store i64 %var_2_438, i64* %var_2_3, align 8
%var_2_439 = inttoptr i64 %var_2_437 to i32*
%var_2_440 = load i32, i32* %var_2_439, align 4
; Matched:%var_2_235:  %var_2_235 = zext i32 %var_2_234 to i64
; %var_2_441 = zext i32 %var_2_440 to i64
; Matched:\<badref\>:  store i64 %var_2_235, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_441, i64* %RCX.i272, align 8
%var_2_442 = add i64 %var_2_432, -44
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_720, 11
; %var_2_443 = add i64 %var_2_431, 11
; Matched:\<badref\>:  store i64 %var_2_237, i64* %PC, align 8
; store i64 %var_2_443, i64* %var_2_3, align 8
%var_2_444 = inttoptr i64 %var_2_442 to i32*
%var_2_445 = load i32, i32* %var_2_444, align 4
%var_2_446 = sext i32 %var_2_440 to i64
%var_2_447 = sext i32 %var_2_445 to i64
%var_2_448 = mul nsw i64 %var_2_447, %var_2_446
; Matched:%var_2_560:  %var_2_560 = trunc i64 %var_2_559 to i32
; %var_2_449 = trunc i64 %var_2_448 to i32
; Matched:%var_2_244:  %var_2_244 = and i64 %var_2_242, 4294967295
; %var_2_450 = and i64 %var_2_448, 4294967295
; Matched:\<badref\>:  store i64 %var_2_244, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_450, i64* %RCX.i272, align 8
; Matched:%var_2_245:  %var_2_245 = shl i64 %var_2_242, 32
; %var_2_451 = shl i64 %var_2_448, 32
; Matched:%var_2_125:  %var_2_125 = ashr exact i64 %var_2_124, 32
; %var_2_452 = ashr exact i64 %var_2_451, 32
; Matched:%var_2_564:  %var_2_564 = icmp ne i64 %var_2_563, %var_2_559
; %var_2_453 = icmp ne i64 %var_2_452, %var_2_448
; Matched:%var_2_565:  %var_2_565 = zext i1 %var_2_564 to i8
; %var_2_454 = zext i1 %var_2_453 to i8
; Matched:\<badref\>:  store i8 %var_2_565, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_454, i8* %var_2_73, align 1
; Matched:%var_2_249:  %var_2_249 = and i32 %var_2_243, 255
; %var_2_455 = and i32 %var_2_449, 255
; Matched:%var_2_129:  %var_2_129 = tail call i32 @llvm.ctpop.i32(i32 %var_2_128) #12
; %var_2_456 = tail call i32 @llvm.ctpop.i32(i32 %var_2_455)
; Matched:%var_2_568:  %var_2_568 = trunc i32 %var_2_567 to i8
; %var_2_457 = trunc i32 %var_2_456 to i8
; Matched:%var_2_252:  %var_2_252 = and i8 %var_2_251, 1
; %var_2_458 = and i8 %var_2_457, 1
; Matched:%var_2_570:  %var_2_570 = xor i8 %var_2_569, 1
; %var_2_459 = xor i8 %var_2_458, 1
; Matched:\<badref\>:  store i8 %var_2_253, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_459, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
; Matched:%var_2_254:  %var_2_254 = lshr i32 %var_2_243, 31
; %var_2_460 = lshr i32 %var_2_449, 31
; Matched:%var_2_134:  %var_2_134 = trunc i32 %var_2_133 to i8
; %var_2_461 = trunc i32 %var_2_460 to i8
; Matched:\<badref\>:  store i8 %var_2_572, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_461, i8* %var_2_77, align 1
; Matched:\<badref\>:  store i8 %var_2_248, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_454, i8* %var_2_78, align 1
%var_2_462 = add i64 %var_2_432, -40
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_720, 14
; %var_2_463 = add i64 %var_2_431, 14
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_463, i64* %var_2_3, align 8
%var_2_464 = trunc i64 %var_2_448 to i32
%var_2_465 = inttoptr i64 %var_2_462 to i32*
%var_2_466 = load i32, i32* %var_2_465, align 4
%var_2_467 = add i32 %var_2_466, %var_2_464
; Matched:%var_2_262:  %var_2_262 = zext i32 %var_2_261 to i64
; %var_2_468 = zext i32 %var_2_467 to i64
; Matched:\<badref\>:  store i64 %var_2_262, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_468, i64* %RCX.i272, align 8
; Matched:%var_2_580:  %var_2_580 = icmp ult i32 %var_2_578, %var_2_575
; %var_2_469 = icmp ult i32 %var_2_467, %var_2_464
; Matched:%var_2_141:  %var_2_141 = icmp ult i32 %var_2_138, %var_2_137
; %var_2_470 = icmp ult i32 %var_2_467, %var_2_466
; Matched:%var_2_142:  %var_2_142 = or i1 %var_2_140, %var_2_141
; %var_2_471 = or i1 %var_2_469, %var_2_470
; Matched:%var_2_143:  %var_2_143 = zext i1 %var_2_142 to i8
; %var_2_472 = zext i1 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_143, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_472, i8* %var_2_73, align 1
; Matched:%var_2_584:  %var_2_584 = and i32 %var_2_578, 255
; %var_2_473 = and i32 %var_2_467, 255
; Matched:%var_2_585:  %var_2_585 = tail call i32 @llvm.ctpop.i32(i32 %var_2_584) #12
; %var_2_474 = tail call i32 @llvm.ctpop.i32(i32 %var_2_473)
; Matched:%var_2_146:  %var_2_146 = trunc i32 %var_2_145 to i8
; %var_2_475 = trunc i32 %var_2_474 to i8
; Matched:%var_2_587:  %var_2_587 = and i8 %var_2_586, 1
; %var_2_476 = and i8 %var_2_475, 1
; Matched:%var_2_148:  %var_2_148 = xor i8 %var_2_147, 1
; %var_2_477 = xor i8 %var_2_476, 1
; Matched:\<badref\>:  store i8 %var_2_148, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_477, i8* %var_2_74, align 1
; Matched:%var_2_149:  %var_2_149 = xor i32 %var_2_137, %var_2_136
; %var_2_478 = xor i32 %var_2_466, %var_2_464
; Matched:%var_2_150:  %var_2_150 = xor i32 %var_2_149, %var_2_138
; %var_2_479 = xor i32 %var_2_478, %var_2_467
; Matched:%var_2_591:  %var_2_591 = lshr i32 %var_2_590, 4
; %var_2_480 = lshr i32 %var_2_479, 4
; Matched:%var_2_592:  %var_2_592 = trunc i32 %var_2_591 to i8
; %var_2_481 = trunc i32 %var_2_480 to i8
; Matched:%var_2_153:  %var_2_153 = and i8 %var_2_152, 1
; %var_2_482 = and i8 %var_2_481, 1
; Matched:\<badref\>:  store i8 %var_2_593, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_482, i8* %var_2_75, align 1
; Matched:%var_2_154:  %var_2_154 = icmp eq i32 %var_2_138, 0
; %var_2_483 = icmp eq i32 %var_2_467, 0
; Matched:%var_2_155:  %var_2_155 = zext i1 %var_2_154 to i8
; %var_2_484 = zext i1 %var_2_483 to i8
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_484, i8* %var_2_76, align 1
; Matched:%var_2_156:  %var_2_156 = lshr i32 %var_2_138, 31
; %var_2_485 = lshr i32 %var_2_467, 31
; Matched:%var_2_597:  %var_2_597 = trunc i32 %var_2_596 to i8
; %var_2_486 = trunc i32 %var_2_485 to i8
; Matched:\<badref\>:  store i8 %var_2_597, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_486, i8* %var_2_77, align 1
; Matched:%var_2_158:  %var_2_158 = lshr i32 %var_2_136, 31
; %var_2_487 = lshr i32 %var_2_464, 31
; Matched:%var_2_599:  %var_2_599 = lshr i32 %var_2_577, 31
; %var_2_488 = lshr i32 %var_2_466, 31
; Matched:%var_2_160:  %var_2_160 = xor i32 %var_2_156, %var_2_158
; %var_2_489 = xor i32 %var_2_485, %var_2_487
; Matched:%var_2_284:  %var_2_284 = xor i32 %var_2_279, %var_2_282
; %var_2_490 = xor i32 %var_2_485, %var_2_488
; Matched:%var_2_162:  %var_2_162 = add nuw nsw i32 %var_2_160, %var_2_161
; %var_2_491 = add nuw nsw i32 %var_2_489, %var_2_490
; Matched:%var_2_163:  %var_2_163 = icmp eq i32 %var_2_162, 2
; %var_2_492 = icmp eq i32 %var_2_491, 2
; Matched:%var_2_604:  %var_2_604 = zext i1 %var_2_603 to i8
; %var_2_493 = zext i1 %var_2_492 to i8
; Matched:\<badref\>:  store i8 %var_2_604, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_493, i8* %var_2_78, align 1
%var_2_494 = sext i32 %var_2_467 to i64
; Matched:\<badref\>:  store i64 %var_2_288, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_494, i64* %var_2_86, align 8
; Matched:%var_2_676:  %var_2_676 = shl nsw i64 %var_2_675, 2
; %var_2_495 = shl nsw i64 %var_2_494, 2
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_230, %var_2_289
; %var_2_496 = add i64 %var_2_436, %var_2_495
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_720, 22
; %var_2_497 = add i64 %var_2_431, 22
; Matched:\<badref\>:  store i64 %var_2_291, i64* %PC, align 8
; store i64 %var_2_497, i64* %var_2_3, align 8
; Matched:%var_2_292:  %var_2_292 = inttoptr i64 %var_2_290 to i32*
; %var_2_498 = inttoptr i64 %var_2_496 to i32*
; Matched:%var_2_293:  %var_2_293 = load i32, i32* %var_2_292, align 4
; %var_2_499 = load i32, i32* %var_2_498, align 4
; Matched:\<badref\>:  store i32 %var_2_293, i32* %var_2_18, align 1, !tbaa !1267
; store i32 %var_2_499, i32* %var_2_14, align 1
store float 0.000000e+00, float* %var_2_93, align 1
store float 0.000000e+00, float* %var_2_94, align 1
store float 0.000000e+00, float* %var_2_95, align 1
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_721, -52
; %var_2_500 = add i64 %var_2_432, -52
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_720, 27
; %var_2_501 = add i64 %var_2_431, 27
; Matched:\<badref\>:  store i64 %var_2_295, i64* %PC, align 8
; store i64 %var_2_501, i64* %var_2_3, align 8
%var_2_502 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_503 = extractelement <2 x float> %var_2_502, i32 0
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_294 to float*
; %var_2_504 = inttoptr i64 %var_2_500 to float*
; Matched:\<badref\>:  store float %var_2_297, float* %var_2_298, align 4
; store float %var_2_503, float* %var_2_504, align 4
; Matched:%var_2_299:  %var_2_299 = load i64, i64* %PC, align 8
; %var_2_505 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_299, 18
; %var_2_506 = add i64 %var_2_505, 18
; Matched:\<badref\>:  store i64 %var_2_300, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_506, i64* %var_2_3, align 8
  br label %block_.L_40184f

block_.L_401842:                                  ; preds = %routine_ucomiss___rsi____xmm0.exit
%var_2_507 = add i64 %var_2_432, -32
; Matched:%var_2_343:  %var_2_343 = add i64 %var_2_720, 4
; %var_2_508 = add i64 %var_2_431, 4
; Matched:\<badref\>:  store i64 %var_2_228, i64* %PC, align 8
; store i64 %var_2_508, i64* %var_2_3, align 8
%var_2_509 = inttoptr i64 %var_2_507 to i64*
%var_2_510 = load i64, i64* %var_2_509, align 8
; Matched:\<badref\>:  store i64 %var_2_345, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_510, i64* %RAX.i257, align 8
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_720, 8
; %var_2_511 = add i64 %var_2_431, 8
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_511, i64* %var_2_3, align 8
; Matched:%var_2_347:  %var_2_347 = inttoptr i64 %var_2_345 to i32*
; %var_2_512 = inttoptr i64 %var_2_510 to i32*
; Matched:%var_2_348:  %var_2_348 = load i32, i32* %var_2_347, align 4
; %var_2_513 = load i32, i32* %var_2_512, align 4
; Matched:\<badref\>:  store i32 %var_2_348, i32* %var_2_18, align 1, !tbaa !1267
; store i32 %var_2_513, i32* %var_2_14, align 1
store float 0.000000e+00, float* %var_2_93, align 1
store float 0.000000e+00, float* %var_2_94, align 1
store float 0.000000e+00, float* %var_2_95, align 1
; Matched:%var_2_349:  %var_2_349 = add i64 %var_2_721, -52
; %var_2_514 = add i64 %var_2_432, -52
; Matched:%var_2_350:  %var_2_350 = add i64 %var_2_720, 13
; %var_2_515 = add i64 %var_2_431, 13
; Matched:\<badref\>:  store i64 %var_2_350, i64* %PC, align 8
; store i64 %var_2_515, i64* %var_2_3, align 8
%var_2_516 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_517 = extractelement <2 x float> %var_2_516, i32 0
; Matched:%var_2_353:  %var_2_353 = inttoptr i64 %var_2_349 to float*
; %var_2_518 = inttoptr i64 %var_2_514 to float*
; Matched:\<badref\>:  store float %var_2_352, float* %var_2_353, align 4
; store float %var_2_517, float* %var_2_518, align 4
; Matched:  %.pre28 = load i64, i64* %PC, align 8
; %.pre28 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40184f

block_.L_40184f:                                  ; preds = %block_.L_401842, %block_401822
; Matched:%var_2_425:  %var_2_425 = phi i64 [ %.pre28, %block_401842 ], [ %var_2_300, %block_401822 ]
; %var_2_519 = phi i64 [ %.pre28, %block_.L_401842 ], [ %var_2_506, %block_401822 ]
%var_2_520 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_427:  %var_2_427 = add i64 %var_2_426, -52
; %var_2_521 = add i64 %var_2_520, -52
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_425, 5
; %var_2_522 = add i64 %var_2_519, 5
; Matched:\<badref\>:  store i64 %var_2_428, i64* %PC, align 8
; store i64 %var_2_522, i64* %var_2_3, align 8
; Matched:%var_2_429:  %var_2_429 = inttoptr i64 %var_2_427 to i32*
; %var_2_523 = inttoptr i64 %var_2_521 to i32*
; Matched:%var_2_430:  %var_2_430 = load i32, i32* %var_2_429, align 4
; %var_2_524 = load i32, i32* %var_2_523, align 4
; Matched:\<badref\>:  store i32 %var_2_430, i32* %var_2_18, align 1, !tbaa !1267
; store i32 %var_2_524, i32* %var_2_14, align 1
store float 0.000000e+00, float* %var_2_93, align 1
store float 0.000000e+00, float* %var_2_94, align 1
store float 0.000000e+00, float* %var_2_95, align 1
%var_2_525 = add i64 %var_2_520, -32
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_425, 9
; %var_2_526 = add i64 %var_2_519, 9
; Matched:\<badref\>:  store i64 %var_2_432, i64* %PC, align 8
; store i64 %var_2_526, i64* %var_2_3, align 8
%var_2_527 = inttoptr i64 %var_2_525 to i64*
%var_2_528 = load i64, i64* %var_2_527, align 8
; Matched:\<badref\>:  store i64 %var_2_434, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_528, i64* %RAX.i257, align 8
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_425, 13
; %var_2_529 = add i64 %var_2_519, 13
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8
; store i64 %var_2_529, i64* %var_2_3, align 8
%var_2_530 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_531 = extractelement <2 x float> %var_2_530, i32 0
; Matched:%var_2_438:  %var_2_438 = inttoptr i64 %var_2_434 to float*
; %var_2_532 = inttoptr i64 %var_2_528 to float*
; Matched:\<badref\>:  store float %var_2_437, float* %var_2_438, align 4
; store float %var_2_531, float* %var_2_532, align 4
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %RBP, align 8
; %var_2_533 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_439, -40
; %var_2_534 = add i64 %var_2_533, -40
%var_2_535 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_38, 3
; %var_2_536 = add i64 %var_2_535, 3
; Matched:\<badref\>:  store i64 %var_2_39, i64* %PC, align 8
; store i64 %var_2_536, i64* %var_2_3, align 8
; Matched:%var_2_807:  %var_2_807 = inttoptr i64 %var_2_804 to i32*
; %var_2_537 = inttoptr i64 %var_2_534 to i32*
; Matched:%var_2_808:  %var_2_808 = load i32, i32* %var_2_807, align 4
; %var_2_538 = load i32, i32* %var_2_537, align 4
; Matched:%var_2_201:  %var_2_201 = add i32 %var_2_200, 1
; %var_2_539 = add i32 %var_2_538, 1
; Matched:%var_2_810:  %var_2_810 = zext i32 %var_2_809 to i64
; %var_2_540 = zext i32 %var_2_539 to i64
; Matched:\<badref\>:  store i64 %var_2_446, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_540, i64* %RAX.i257, align 8
; Matched:%var_2_447:  %var_2_447 = icmp eq i32 %var_2_444, -1
; %var_2_541 = icmp eq i32 %var_2_538, -1
; Matched:%var_2_812:  %var_2_812 = icmp eq i32 %var_2_809, 0
; %var_2_542 = icmp eq i32 %var_2_539, 0
; Matched:%var_2_449:  %var_2_449 = or i1 %var_2_447, %var_2_448
; %var_2_543 = or i1 %var_2_541, %var_2_542
; Matched:%var_2_206:  %var_2_206 = zext i1 %var_2_205 to i8
; %var_2_544 = zext i1 %var_2_543 to i8
; Matched:\<badref\>:  store i8 %var_2_814, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_544, i8* %var_2_73, align 1
; Matched:%var_2_207:  %var_2_207 = and i32 %var_2_201, 255
; %var_2_545 = and i32 %var_2_539, 255
; Matched:%var_2_816:  %var_2_816 = tail call i32 @llvm.ctpop.i32(i32 %var_2_815) #12
; %var_2_546 = tail call i32 @llvm.ctpop.i32(i32 %var_2_545)
; Matched:%var_2_453:  %var_2_453 = trunc i32 %var_2_452 to i8
; %var_2_547 = trunc i32 %var_2_546 to i8
; Matched:%var_2_454:  %var_2_454 = and i8 %var_2_453, 1
; %var_2_548 = and i8 %var_2_547, 1
; Matched:%var_2_819:  %var_2_819 = xor i8 %var_2_818, 1
; %var_2_549 = xor i8 %var_2_548, 1
; Matched:\<badref\>:  store i8 %var_2_455, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_549, i8* %var_2_74, align 1
; Matched:%var_2_212:  %var_2_212 = xor i32 %var_2_201, %var_2_200
; %var_2_550 = xor i32 %var_2_539, %var_2_538
; Matched:%var_2_213:  %var_2_213 = lshr i32 %var_2_212, 4
; %var_2_551 = lshr i32 %var_2_550, 4
; Matched:%var_2_214:  %var_2_214 = trunc i32 %var_2_213 to i8
; %var_2_552 = trunc i32 %var_2_551 to i8
; Matched:%var_2_459:  %var_2_459 = and i8 %var_2_458, 1
; %var_2_553 = and i8 %var_2_552, 1
; Matched:\<badref\>:  store i8 %var_2_215, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_553, i8* %var_2_75, align 1
; Matched:%var_2_460:  %var_2_460 = zext i1 %var_2_448 to i8
; %var_2_554 = zext i1 %var_2_542 to i8
; Matched:\<badref\>:  store i8 %var_2_824, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_554, i8* %var_2_76, align 1
; Matched:%var_2_217:  %var_2_217 = lshr i32 %var_2_201, 31
; %var_2_555 = lshr i32 %var_2_539, 31
; Matched:%var_2_218:  %var_2_218 = trunc i32 %var_2_217 to i8
; %var_2_556 = trunc i32 %var_2_555 to i8
; Matched:\<badref\>:  store i8 %var_2_218, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_556, i8* %var_2_77, align 1
; Matched:%var_2_219:  %var_2_219 = lshr i32 %var_2_200, 31
; %var_2_557 = lshr i32 %var_2_538, 31
; Matched:%var_2_464:  %var_2_464 = xor i32 %var_2_461, %var_2_463
; %var_2_558 = xor i32 %var_2_555, %var_2_557
; Matched:%var_2_221:  %var_2_221 = add nuw nsw i32 %var_2_220, %var_2_217
; %var_2_559 = add nuw nsw i32 %var_2_558, %var_2_555
; Matched:%var_2_466:  %var_2_466 = icmp eq i32 %var_2_465, 2
; %var_2_560 = icmp eq i32 %var_2_559, 2
; Matched:%var_2_223:  %var_2_223 = zext i1 %var_2_222 to i8
; %var_2_561 = zext i1 %var_2_560 to i8
; Matched:\<badref\>:  store i8 %var_2_467, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_561, i8* %var_2_78, align 1
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_197, 9
; %var_2_562 = add i64 %var_2_535, 9
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_562, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_201, i32* %var_2_199, align 4
; store i32 %var_2_539, i32* %var_2_537, align 4
%var_2_563 = load i64, i64* %var_2_3, align 8
%var_2_564 = add i64 %var_2_563, -195
; Matched:\<badref\>:  store i64 %var_2_470, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_564, i64* %var_2_3, align 8
  br label %block_.L_4017a2

block_.L_40186a:                                  ; preds = %block_.L_4017a2
; Matched:%var_2_395:  %var_2_395 = add i64 %var_2_723, -44
; %var_2_565 = add i64 %var_2_139, -44
; Matched:%var_2_396:  %var_2_396 = add i64 %var_2_759, 8
; %var_2_566 = add i64 %var_2_175, 8
; Matched:\<badref\>:  store i64 %var_2_396, i64* %PC, align 8
; store i64 %var_2_566, i64* %var_2_3, align 8
; Matched:%var_2_397:  %var_2_397 = inttoptr i64 %var_2_395 to i32*
; %var_2_567 = inttoptr i64 %var_2_565 to i32*
; Matched:%var_2_763:  %var_2_763 = load i32, i32* %var_2_762, align 4
; %var_2_568 = load i32, i32* %var_2_567, align 4
; Matched:%var_2_764:  %var_2_764 = add i32 %var_2_763, 1
; %var_2_569 = add i32 %var_2_568, 1
; Matched:%var_2_400:  %var_2_400 = zext i32 %var_2_399 to i64
; %var_2_570 = zext i32 %var_2_569 to i64
; Matched:\<badref\>:  store i64 %var_2_400, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_570, i64* %RAX.i257, align 8
; Matched:%var_2_401:  %var_2_401 = icmp eq i32 %var_2_398, -1
; %var_2_571 = icmp eq i32 %var_2_568, -1
; Matched:%var_2_402:  %var_2_402 = icmp eq i32 %var_2_399, 0
; %var_2_572 = icmp eq i32 %var_2_569, 0
; Matched:%var_2_403:  %var_2_403 = or i1 %var_2_401, %var_2_402
; %var_2_573 = or i1 %var_2_571, %var_2_572
; Matched:%var_2_404:  %var_2_404 = zext i1 %var_2_403 to i8
; %var_2_574 = zext i1 %var_2_573 to i8
; Matched:\<badref\>:  store i8 %var_2_769, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_574, i8* %var_2_73, align 1
; Matched:%var_2_770:  %var_2_770 = and i32 %var_2_764, 255
; %var_2_575 = and i32 %var_2_569, 255
; Matched:%var_2_406:  %var_2_406 = tail call i32 @llvm.ctpop.i32(i32 %var_2_405) #12
; %var_2_576 = tail call i32 @llvm.ctpop.i32(i32 %var_2_575)
; Matched:%var_2_407:  %var_2_407 = trunc i32 %var_2_406 to i8
; %var_2_577 = trunc i32 %var_2_576 to i8
; Matched:%var_2_408:  %var_2_408 = and i8 %var_2_407, 1
; %var_2_578 = and i8 %var_2_577, 1
; Matched:%var_2_409:  %var_2_409 = xor i8 %var_2_408, 1
; %var_2_579 = xor i8 %var_2_578, 1
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_579, i8* %var_2_74, align 1
; Matched:%var_2_410:  %var_2_410 = xor i32 %var_2_399, %var_2_398
; %var_2_580 = xor i32 %var_2_569, %var_2_568
; Matched:%var_2_776:  %var_2_776 = lshr i32 %var_2_775, 4
; %var_2_581 = lshr i32 %var_2_580, 4
; Matched:%var_2_777:  %var_2_777 = trunc i32 %var_2_776 to i8
; %var_2_582 = trunc i32 %var_2_581 to i8
; Matched:%var_2_413:  %var_2_413 = and i8 %var_2_412, 1
; %var_2_583 = and i8 %var_2_582, 1
; Matched:\<badref\>:  store i8 %var_2_413, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_583, i8* %var_2_75, align 1
; Matched:%var_2_414:  %var_2_414 = zext i1 %var_2_402 to i8
; %var_2_584 = zext i1 %var_2_572 to i8
; Matched:\<badref\>:  store i8 %var_2_414, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_584, i8* %var_2_76, align 1
; Matched:%var_2_415:  %var_2_415 = lshr i32 %var_2_399, 31
; %var_2_585 = lshr i32 %var_2_569, 31
; Matched:%var_2_416:  %var_2_416 = trunc i32 %var_2_415 to i8
; %var_2_586 = trunc i32 %var_2_585 to i8
; Matched:\<badref\>:  store i8 %var_2_781, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_586, i8* %var_2_77, align 1
; Matched:%var_2_782:  %var_2_782 = lshr i32 %var_2_763, 31
; %var_2_587 = lshr i32 %var_2_568, 31
; Matched:%var_2_418:  %var_2_418 = xor i32 %var_2_415, %var_2_417
; %var_2_588 = xor i32 %var_2_585, %var_2_587
; Matched:%var_2_784:  %var_2_784 = add nuw nsw i32 %var_2_783, %var_2_780
; %var_2_589 = add nuw nsw i32 %var_2_588, %var_2_585
; Matched:%var_2_420:  %var_2_420 = icmp eq i32 %var_2_419, 2
; %var_2_590 = icmp eq i32 %var_2_589, 2
; Matched:%var_2_421:  %var_2_421 = zext i1 %var_2_420 to i8
; %var_2_591 = zext i1 %var_2_590 to i8
; Matched:\<badref\>:  store i8 %var_2_786, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_591, i8* %var_2_78, align 1
; Matched:%var_2_422:  %var_2_422 = add i64 %var_2_759, 14
; %var_2_592 = add i64 %var_2_175, 14
; Matched:\<badref\>:  store i64 %var_2_422, i64* %PC, align 8
; store i64 %var_2_592, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_764, i32* %var_2_762, align 4
; store i32 %var_2_569, i32* %var_2_567, align 4
; Matched:%var_2_423:  %var_2_423 = load i64, i64* %PC, align 8
; %var_2_593 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_424:  %var_2_424 = add i64 %var_2_423, -233
; %var_2_594 = add i64 %var_2_593, -233
; Matched:\<badref\>:  store i64 %var_2_424, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_594, i64* %var_2_3, align 8
  br label %block_.L_40178f

block_.L_401884:                                  ; preds = %block_.L_401884.preheader, %block_401890
; Matched:%var_2_886:  %var_2_886 = phi i64 [ %var_2_834, %block_401890 ], [ %.pre21, %block_401884.preheader ]
; %var_2_595 = phi i64 [ %var_2_677, %block_401890 ], [ %.pre21, %block_.L_401884.preheader ]
%var_2_596 = load i64, i64* %RBP.i, align 8
%var_2_597 = add i64 %var_2_596, -40
; Matched:%var_2_889:  %var_2_889 = add i64 %var_2_886, 3
; %var_2_598 = add i64 %var_2_595, 3
; Matched:\<badref\>:  store i64 %var_2_889, i64* %PC, align 8
; store i64 %var_2_598, i64* %var_2_3, align 8
%var_2_599 = inttoptr i64 %var_2_597 to i32*
%var_2_600 = load i32, i32* %var_2_599, align 4
; Matched:%var_2_892:  %var_2_892 = zext i32 %var_2_891 to i64
; %var_2_601 = zext i32 %var_2_600 to i64
; Matched:\<badref\>:  store i64 %var_2_728, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_601, i64* %RAX.i257, align 8
%var_2_602 = add i64 %var_2_596, -16
; Matched:%var_2_894:  %var_2_894 = add i64 %var_2_886, 6
; %var_2_603 = add i64 %var_2_595, 6
; Matched:\<badref\>:  store i64 %var_2_894, i64* %PC, align 8
; store i64 %var_2_603, i64* %var_2_3, align 8
%var_2_604 = inttoptr i64 %var_2_602 to i32*
%var_2_605 = load i32, i32* %var_2_604, align 4
%var_2_606 = sub i32 %var_2_600, %var_2_605
; Matched:%var_2_898:  %var_2_898 = icmp ult i32 %var_2_891, %var_2_896
; %var_2_607 = icmp ult i32 %var_2_600, %var_2_605
; Matched:%var_2_735:  %var_2_735 = zext i1 %var_2_734 to i8
; %var_2_608 = zext i1 %var_2_607 to i8
; Matched:\<badref\>:  store i8 %var_2_735, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_608, i8* %var_2_73, align 1
; Matched:%var_2_315:  %var_2_315 = and i32 %var_2_312, 255
; %var_2_609 = and i32 %var_2_606, 255
; Matched:%var_2_737:  %var_2_737 = tail call i32 @llvm.ctpop.i32(i32 %var_2_736) #12
; %var_2_610 = tail call i32 @llvm.ctpop.i32(i32 %var_2_609)
; Matched:%var_2_902:  %var_2_902 = trunc i32 %var_2_901 to i8
; %var_2_611 = trunc i32 %var_2_610 to i8
; Matched:%var_2_739:  %var_2_739 = and i8 %var_2_738, 1
; %var_2_612 = and i8 %var_2_611, 1
; Matched:%var_2_740:  %var_2_740 = xor i8 %var_2_739, 1
; %var_2_613 = xor i8 %var_2_612, 1
; Matched:\<badref\>:  store i8 %var_2_904, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_613, i8* %var_2_74, align 1
; Matched:%var_2_741:  %var_2_741 = xor i32 %var_2_732, %var_2_727
; %var_2_614 = xor i32 %var_2_605, %var_2_600
; Matched:%var_2_742:  %var_2_742 = xor i32 %var_2_741, %var_2_733
; %var_2_615 = xor i32 %var_2_614, %var_2_606
; Matched:%var_2_322:  %var_2_322 = lshr i32 %var_2_321, 4
; %var_2_616 = lshr i32 %var_2_615, 4
; Matched:%var_2_744:  %var_2_744 = trunc i32 %var_2_743 to i8
; %var_2_617 = trunc i32 %var_2_616 to i8
; Matched:%var_2_909:  %var_2_909 = and i8 %var_2_908, 1
; %var_2_618 = and i8 %var_2_617, 1
; Matched:\<badref\>:  store i8 %var_2_745, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_618, i8* %var_2_75, align 1
; Matched:%var_2_746:  %var_2_746 = icmp eq i32 %var_2_733, 0
; %var_2_619 = icmp eq i32 %var_2_606, 0
; Matched:%var_2_911:  %var_2_911 = zext i1 %var_2_910 to i8
; %var_2_620 = zext i1 %var_2_619 to i8
; Matched:\<badref\>:  store i8 %var_2_747, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_620, i8* %var_2_76, align 1
%var_2_621 = lshr i32 %var_2_606, 31
%var_2_622 = trunc i32 %var_2_621 to i8
; Matched:\<badref\>:  store i8 %var_2_749, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_622, i8* %var_2_77, align 1
%var_2_623 = lshr i32 %var_2_600, 31
%var_2_624 = lshr i32 %var_2_605, 31
%var_2_625 = xor i32 %var_2_624, %var_2_623
%var_2_626 = xor i32 %var_2_621, %var_2_623
%var_2_627 = add nuw nsw i32 %var_2_626, %var_2_625
%var_2_628 = icmp eq i32 %var_2_627, 2
; Matched:%var_2_335:  %var_2_335 = zext i1 %var_2_334 to i8
; %var_2_629 = zext i1 %var_2_628 to i8
; Matched:\<badref\>:  store i8 %var_2_756, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_629, i8* %var_2_78, align 1
%var_2_630 = icmp ne i8 %var_2_622, 0
%var_2_631 = xor i1 %var_2_630, %var_2_628
; Matched:  %.v31 = select i1 %var_2_922, i64 12, i64 42
; %.v31 = select i1 %var_2_631, i64 12, i64 42
; Matched:%var_2_923:  %var_2_923 = add i64 %var_2_886, %.v31
; %var_2_632 = add i64 %var_2_595, %.v31
; Matched:\<badref\>:  store i64 %var_2_923, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_632, i64* %var_2_3, align 8
br i1 %var_2_631, label %block_401890, label %block_.L_4018ae

block_401890:                                     ; preds = %block_.L_401884
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_137, align 1
%var_2_633 = add i64 %var_2_596, -24
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_923, 7
; %var_2_634 = add i64 %var_2_632, 7
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8
; store i64 %var_2_634, i64* %var_2_3, align 8
%var_2_635 = inttoptr i64 %var_2_633 to i64*
%var_2_636 = load i64, i64* %var_2_635, align 8
; Matched:\<badref\>:  store i64 %var_2_183, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_636, i64* %RAX.i257, align 8
; Matched:%var_2_794:  %var_2_794 = add i64 %var_2_923, 11
; %var_2_637 = add i64 %var_2_632, 11
; Matched:\<badref\>:  store i64 %var_2_794, i64* %PC, align 8
; store i64 %var_2_637, i64* %var_2_3, align 8
%var_2_638 = load i32, i32* %var_2_599, align 4
%var_2_639 = sext i32 %var_2_638 to i64
; Matched:\<badref\>:  store i64 %var_2_100, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_639, i64* %RCX.i272, align 8
; Matched:%var_2_797:  %var_2_797 = shl nsw i64 %var_2_796, 2
; %var_2_640 = shl nsw i64 %var_2_639, 2
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, %var_2_183
; %var_2_641 = add i64 %var_2_640, %var_2_636
; Matched:%var_2_799:  %var_2_799 = add i64 %var_2_923, 16
; %var_2_642 = add i64 %var_2_632, 16
; Matched:\<badref\>:  store i64 %var_2_799, i64* %PC, align 8
; store i64 %var_2_642, i64* %var_2_3, align 8
%var_2_643 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_644 = extractelement <2 x float> %var_2_643, i32 0
; Matched:%var_2_802:  %var_2_802 = inttoptr i64 %var_2_798 to float*
; %var_2_645 = inttoptr i64 %var_2_641 to float*
; Matched:\<badref\>:  store float %var_2_801, float* %var_2_802, align 4
; store float %var_2_644, float* %var_2_645, align 4
; Matched:%var_2_439:  %var_2_439 = load i64, i64* %RBP, align 8
; %var_2_646 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_195, -40
; %var_2_647 = add i64 %var_2_646, -40
%var_2_648 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_197, 3
; %var_2_649 = add i64 %var_2_648, 3
; Matched:\<badref\>:  store i64 %var_2_33, i64* %PC, align 8
; store i64 %var_2_649, i64* %var_2_3, align 8
; Matched:%var_2_443:  %var_2_443 = inttoptr i64 %var_2_440 to i32*
; %var_2_650 = inttoptr i64 %var_2_647 to i32*
; Matched:%var_2_444:  %var_2_444 = load i32, i32* %var_2_443, align 4
; %var_2_651 = load i32, i32* %var_2_650, align 4
; Matched:%var_2_809:  %var_2_809 = add i32 %var_2_808, 1
; %var_2_652 = add i32 %var_2_651, 1
; Matched:%var_2_446:  %var_2_446 = zext i32 %var_2_445 to i64
; %var_2_653 = zext i32 %var_2_652 to i64
; Matched:\<badref\>:  store i64 %var_2_202, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_653, i64* %RAX.i257, align 8
; Matched:%var_2_811:  %var_2_811 = icmp eq i32 %var_2_808, -1
; %var_2_654 = icmp eq i32 %var_2_651, -1
; Matched:%var_2_448:  %var_2_448 = icmp eq i32 %var_2_445, 0
; %var_2_655 = icmp eq i32 %var_2_652, 0
; Matched:%var_2_813:  %var_2_813 = or i1 %var_2_811, %var_2_812
; %var_2_656 = or i1 %var_2_654, %var_2_655
; Matched:%var_2_814:  %var_2_814 = zext i1 %var_2_813 to i8
; %var_2_657 = zext i1 %var_2_656 to i8
; Matched:\<badref\>:  store i8 %var_2_450, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_657, i8* %var_2_73, align 1
; Matched:%var_2_815:  %var_2_815 = and i32 %var_2_809, 255
; %var_2_658 = and i32 %var_2_652, 255
; Matched:%var_2_452:  %var_2_452 = tail call i32 @llvm.ctpop.i32(i32 %var_2_451) #12
; %var_2_659 = tail call i32 @llvm.ctpop.i32(i32 %var_2_658)
; Matched:%var_2_209:  %var_2_209 = trunc i32 %var_2_208 to i8
; %var_2_660 = trunc i32 %var_2_659 to i8
; Matched:%var_2_210:  %var_2_210 = and i8 %var_2_209, 1
; %var_2_661 = and i8 %var_2_660, 1
; Matched:%var_2_455:  %var_2_455 = xor i8 %var_2_454, 1
; %var_2_662 = xor i8 %var_2_661, 1
; Matched:\<badref\>:  store i8 %var_2_819, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_662, i8* %var_2_74, align 1
; Matched:%var_2_820:  %var_2_820 = xor i32 %var_2_809, %var_2_808
; %var_2_663 = xor i32 %var_2_652, %var_2_651
; Matched:%var_2_457:  %var_2_457 = lshr i32 %var_2_456, 4
; %var_2_664 = lshr i32 %var_2_663, 4
; Matched:%var_2_822:  %var_2_822 = trunc i32 %var_2_821 to i8
; %var_2_665 = trunc i32 %var_2_664 to i8
; Matched:%var_2_215:  %var_2_215 = and i8 %var_2_214, 1
; %var_2_666 = and i8 %var_2_665, 1
; Matched:\<badref\>:  store i8 %var_2_823, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_666, i8* %var_2_75, align 1
; Matched:%var_2_216:  %var_2_216 = zext i1 %var_2_204 to i8
; %var_2_667 = zext i1 %var_2_655 to i8
; Matched:\<badref\>:  store i8 %var_2_460, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_667, i8* %var_2_76, align 1
; Matched:%var_2_461:  %var_2_461 = lshr i32 %var_2_445, 31
; %var_2_668 = lshr i32 %var_2_652, 31
; Matched:%var_2_826:  %var_2_826 = trunc i32 %var_2_825 to i8
; %var_2_669 = trunc i32 %var_2_668 to i8
; Matched:\<badref\>:  store i8 %var_2_462, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_669, i8* %var_2_77, align 1
; Matched:%var_2_827:  %var_2_827 = lshr i32 %var_2_808, 31
; %var_2_670 = lshr i32 %var_2_651, 31
; Matched:%var_2_220:  %var_2_220 = xor i32 %var_2_217, %var_2_219
; %var_2_671 = xor i32 %var_2_668, %var_2_670
; Matched:%var_2_829:  %var_2_829 = add nuw nsw i32 %var_2_828, %var_2_825
; %var_2_672 = add nuw nsw i32 %var_2_671, %var_2_668
; Matched:%var_2_830:  %var_2_830 = icmp eq i32 %var_2_829, 2
; %var_2_673 = icmp eq i32 %var_2_672, 2
; Matched:%var_2_467:  %var_2_467 = zext i1 %var_2_466 to i8
; %var_2_674 = zext i1 %var_2_673 to i8
; Matched:\<badref\>:  store i8 %var_2_223, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_674, i8* %var_2_78, align 1
; Matched:%var_2_832:  %var_2_832 = add i64 %var_2_805, 9
; %var_2_675 = add i64 %var_2_648, 9
; Matched:\<badref\>:  store i64 %var_2_468, i64* %PC, align 8
; store i64 %var_2_675, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_809, i32* %var_2_807, align 4
; store i32 %var_2_652, i32* %var_2_650, align 4
; Matched:%var_2_833:  %var_2_833 = load i64, i64* %PC, align 8
; %var_2_676 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_834:  %var_2_834 = add i64 %var_2_833, -37
; %var_2_677 = add i64 %var_2_676, -37
; Matched:\<badref\>:  store i64 %var_2_834, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_677, i64* %var_2_3, align 8
  br label %block_.L_401884

block_.L_4018ae:                                  ; preds = %block_.L_401884
%var_2_678 = add i64 %var_2_596, -44
; Matched:%var_2_791:  %var_2_791 = add i64 %var_2_923, 7
; %var_2_679 = add i64 %var_2_632, 7
; Matched:\<badref\>:  store i64 %var_2_791, i64* %PC, align 8
; store i64 %var_2_679, i64* %var_2_3, align 8
%var_2_680 = inttoptr i64 %var_2_678 to i32*
store i32 0, i32* %var_2_680, align 4
; Matched:  %.pre19 = load i64, i64* %PC, align 8
; %.pre19 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4018b5

block_.L_4018b5:                                  ; preds = %block_.L_401912, %block_.L_4018ae
; Matched:%var_2_354:  %var_2_354 = phi i64 [ %var_2_789, %block_401912 ], [ %.pre19, %block_4018ae ]
; %var_2_681 = phi i64 [ %var_2_922, %block_.L_401912 ], [ %.pre19, %block_.L_4018ae ]
%var_2_682 = load i64, i64* %RBP.i, align 8
%var_2_683 = add i64 %var_2_682, -44
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_354, 3
; %var_2_684 = add i64 %var_2_681, 3
; Matched:\<badref\>:  store i64 %var_2_357, i64* %PC, align 8
; store i64 %var_2_684, i64* %var_2_3, align 8
%var_2_685 = inttoptr i64 %var_2_683 to i32*
%var_2_686 = load i32, i32* %var_2_685, align 4
; Matched:%var_2_360:  %var_2_360 = zext i32 %var_2_359 to i64
; %var_2_687 = zext i32 %var_2_686 to i64
; Matched:\<badref\>:  store i64 %var_2_841, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_687, i64* %RAX.i257, align 8
%var_2_688 = add i64 %var_2_682, -16
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_354, 6
; %var_2_689 = add i64 %var_2_681, 6
; Matched:\<badref\>:  store i64 %var_2_362, i64* %PC, align 8
; store i64 %var_2_689, i64* %var_2_3, align 8
%var_2_690 = inttoptr i64 %var_2_688 to i32*
%var_2_691 = load i32, i32* %var_2_690, align 4
%var_2_692 = sub i32 %var_2_686, %var_2_691
; Matched:%var_2_366:  %var_2_366 = icmp ult i32 %var_2_359, %var_2_364
; %var_2_693 = icmp ult i32 %var_2_686, %var_2_691
; Matched:%var_2_848:  %var_2_848 = zext i1 %var_2_847 to i8
; %var_2_694 = zext i1 %var_2_693 to i8
; Matched:\<badref\>:  store i8 %var_2_367, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_694, i8* %var_2_73, align 1
; Matched:%var_2_368:  %var_2_368 = and i32 %var_2_365, 255
; %var_2_695 = and i32 %var_2_692, 255
; Matched:%var_2_369:  %var_2_369 = tail call i32 @llvm.ctpop.i32(i32 %var_2_368) #12
; %var_2_696 = tail call i32 @llvm.ctpop.i32(i32 %var_2_695)
; Matched:%var_2_370:  %var_2_370 = trunc i32 %var_2_369 to i8
; %var_2_697 = trunc i32 %var_2_696 to i8
; Matched:%var_2_371:  %var_2_371 = and i8 %var_2_370, 1
; %var_2_698 = and i8 %var_2_697, 1
; Matched:%var_2_853:  %var_2_853 = xor i8 %var_2_852, 1
; %var_2_699 = xor i8 %var_2_698, 1
; Matched:\<badref\>:  store i8 %var_2_372, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_699, i8* %var_2_74, align 1
; Matched:%var_2_854:  %var_2_854 = xor i32 %var_2_845, %var_2_840
; %var_2_700 = xor i32 %var_2_691, %var_2_686
; Matched:%var_2_374:  %var_2_374 = xor i32 %var_2_373, %var_2_365
; %var_2_701 = xor i32 %var_2_700, %var_2_692
; Matched:%var_2_375:  %var_2_375 = lshr i32 %var_2_374, 4
; %var_2_702 = lshr i32 %var_2_701, 4
; Matched:%var_2_376:  %var_2_376 = trunc i32 %var_2_375 to i8
; %var_2_703 = trunc i32 %var_2_702 to i8
; Matched:%var_2_377:  %var_2_377 = and i8 %var_2_376, 1
; %var_2_704 = and i8 %var_2_703, 1
; Matched:\<badref\>:  store i8 %var_2_377, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_704, i8* %var_2_75, align 1
; Matched:%var_2_859:  %var_2_859 = icmp eq i32 %var_2_846, 0
; %var_2_705 = icmp eq i32 %var_2_692, 0
; Matched:%var_2_379:  %var_2_379 = zext i1 %var_2_378 to i8
; %var_2_706 = zext i1 %var_2_705 to i8
; Matched:\<badref\>:  store i8 %var_2_860, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_706, i8* %var_2_76, align 1
%var_2_707 = lshr i32 %var_2_692, 31
%var_2_708 = trunc i32 %var_2_707 to i8
; Matched:\<badref\>:  store i8 %var_2_381, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_708, i8* %var_2_77, align 1
%var_2_709 = lshr i32 %var_2_686, 31
%var_2_710 = lshr i32 %var_2_691, 31
%var_2_711 = xor i32 %var_2_710, %var_2_709
%var_2_712 = xor i32 %var_2_707, %var_2_709
%var_2_713 = add nuw nsw i32 %var_2_712, %var_2_711
%var_2_714 = icmp eq i32 %var_2_713, 2
; Matched:%var_2_388:  %var_2_388 = zext i1 %var_2_387 to i8
; %var_2_715 = zext i1 %var_2_714 to i8
; Matched:\<badref\>:  store i8 %var_2_388, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_715, i8* %var_2_78, align 1
%var_2_716 = icmp ne i8 %var_2_708, 0
%var_2_717 = xor i1 %var_2_716, %var_2_714
; Matched:  %.v32 = select i1 %var_2_390, i64 12, i64 112
; %.v32 = select i1 %var_2_717, i64 12, i64 112
; Matched:%var_2_391:  %var_2_391 = add i64 %var_2_354, %.v32
; %var_2_718 = add i64 %var_2_681, %.v32
; Matched:\<badref\>:  store i64 %var_2_391, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_718, i64* %var_2_3, align 8
br i1 %var_2_717, label %block_4018c1, label %block_.L_401925

block_4018c1:                                     ; preds = %block_.L_4018b5
%var_2_719 = add i64 %var_2_682, -40
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_391, 7
; %var_2_720 = add i64 %var_2_718, 7
; Matched:\<badref\>:  store i64 %var_2_340, i64* %PC, align 8
; store i64 %var_2_720, i64* %var_2_3, align 8
%var_2_721 = inttoptr i64 %var_2_719 to i32*
store i32 0, i32* %var_2_721, align 4
; Matched:  %.pre20 = load i64, i64* %PC, align 8
; %.pre20 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4018c8

block_.L_4018c8:                                  ; preds = %block_4018d4, %block_4018c1
; Matched:%var_2_301:  %var_2_301 = phi i64 [ %.pre20, %block_4018c1 ], [ %var_2_226, %block_4018d4 ]
; %var_2_722 = phi i64 [ %var_2_892, %block_4018d4 ], [ %.pre20, %block_4018c1 ]
%var_2_723 = load i64, i64* %RBP.i, align 8
%var_2_724 = add i64 %var_2_723, -40
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_301, 3
; %var_2_725 = add i64 %var_2_722, 3
; Matched:\<badref\>:  store i64 %var_2_304, i64* %PC, align 8
; store i64 %var_2_725, i64* %var_2_3, align 8
%var_2_726 = inttoptr i64 %var_2_724 to i32*
%var_2_727 = load i32, i32* %var_2_726, align 4
; Matched:%var_2_728:  %var_2_728 = zext i32 %var_2_727 to i64
; %var_2_728 = zext i32 %var_2_727 to i64
; Matched:\<badref\>:  store i64 %var_2_307, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_728, i64* %RAX.i257, align 8
%var_2_729 = add i64 %var_2_723, -16
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_301, 6
; %var_2_730 = add i64 %var_2_722, 6
; Matched:\<badref\>:  store i64 %var_2_309, i64* %PC, align 8
; store i64 %var_2_730, i64* %var_2_3, align 8
%var_2_731 = inttoptr i64 %var_2_729 to i32*
%var_2_732 = load i32, i32* %var_2_731, align 4
%var_2_733 = sub i32 %var_2_727, %var_2_732
; Matched:%var_2_734:  %var_2_734 = icmp ult i32 %var_2_727, %var_2_732
; %var_2_734 = icmp ult i32 %var_2_727, %var_2_732
; Matched:%var_2_314:  %var_2_314 = zext i1 %var_2_313 to i8
; %var_2_735 = zext i1 %var_2_734 to i8
; Matched:\<badref\>:  store i8 %var_2_314, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_735, i8* %var_2_73, align 1
; Matched:%var_2_900:  %var_2_900 = and i32 %var_2_897, 255
; %var_2_736 = and i32 %var_2_733, 255
; Matched:%var_2_316:  %var_2_316 = tail call i32 @llvm.ctpop.i32(i32 %var_2_315) #12
; %var_2_737 = tail call i32 @llvm.ctpop.i32(i32 %var_2_736)
; Matched:%var_2_738:  %var_2_738 = trunc i32 %var_2_737 to i8
; %var_2_738 = trunc i32 %var_2_737 to i8
; Matched:%var_2_318:  %var_2_318 = and i8 %var_2_317, 1
; %var_2_739 = and i8 %var_2_738, 1
; Matched:%var_2_319:  %var_2_319 = xor i8 %var_2_318, 1
; %var_2_740 = xor i8 %var_2_739, 1
; Matched:\<badref\>:  store i8 %var_2_740, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_740, i8* %var_2_74, align 1
; Matched:%var_2_320:  %var_2_320 = xor i32 %var_2_311, %var_2_306
; %var_2_741 = xor i32 %var_2_732, %var_2_727
; Matched:%var_2_321:  %var_2_321 = xor i32 %var_2_320, %var_2_312
; %var_2_742 = xor i32 %var_2_741, %var_2_733
; Matched:%var_2_907:  %var_2_907 = lshr i32 %var_2_906, 4
; %var_2_743 = lshr i32 %var_2_742, 4
; Matched:%var_2_323:  %var_2_323 = trunc i32 %var_2_322 to i8
; %var_2_744 = trunc i32 %var_2_743 to i8
; Matched:%var_2_745:  %var_2_745 = and i8 %var_2_744, 1
; %var_2_745 = and i8 %var_2_744, 1
; Matched:\<badref\>:  store i8 %var_2_324, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_745, i8* %var_2_75, align 1
; Matched:%var_2_325:  %var_2_325 = icmp eq i32 %var_2_312, 0
; %var_2_746 = icmp eq i32 %var_2_733, 0
; Matched:%var_2_747:  %var_2_747 = zext i1 %var_2_746 to i8
; %var_2_747 = zext i1 %var_2_746 to i8
; Matched:\<badref\>:  store i8 %var_2_326, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_747, i8* %var_2_76, align 1
%var_2_748 = lshr i32 %var_2_733, 31
%var_2_749 = trunc i32 %var_2_748 to i8
; Matched:\<badref\>:  store i8 %var_2_328, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_749, i8* %var_2_77, align 1
%var_2_750 = lshr i32 %var_2_727, 31
%var_2_751 = lshr i32 %var_2_732, 31
%var_2_752 = xor i32 %var_2_751, %var_2_750
%var_2_753 = xor i32 %var_2_748, %var_2_750
%var_2_754 = add nuw nsw i32 %var_2_753, %var_2_752
%var_2_755 = icmp eq i32 %var_2_754, 2
; Matched:%var_2_920:  %var_2_920 = zext i1 %var_2_919 to i8
; %var_2_756 = zext i1 %var_2_755 to i8
; Matched:\<badref\>:  store i8 %var_2_335, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_756, i8* %var_2_78, align 1
%var_2_757 = icmp ne i8 %var_2_749, 0
%var_2_758 = xor i1 %var_2_757, %var_2_755
; Matched:  %.v29 = select i1 %var_2_337, i64 12, i64 74
; %.v29 = select i1 %var_2_758, i64 12, i64 74
; Matched:%var_2_338:  %var_2_338 = add i64 %var_2_301, %.v29
; %var_2_759 = add i64 %var_2_722, %.v29
; Matched:\<badref\>:  store i64 %var_2_338, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_759, i64* %var_2_3, align 8
br i1 %var_2_758, label %block_4018d4, label %block_.L_401912

block_4018d4:                                     ; preds = %block_.L_4018c8
%var_2_760 = add i64 %var_2_723, -24
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_338, 4
; %var_2_761 = add i64 %var_2_759, 4
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_761, i64* %var_2_3, align 8
%var_2_762 = inttoptr i64 %var_2_760 to i64*
%var_2_763 = load i64, i64* %var_2_762, align 8
; Matched:\<badref\>:  store i64 %var_2_793, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_763, i64* %RAX.i257, align 8
; Matched:%var_2_761:  %var_2_761 = add i64 %var_2_338, 8
; %var_2_764 = add i64 %var_2_759, 8
; Matched:\<badref\>:  store i64 %var_2_761, i64* %PC, align 8
; store i64 %var_2_764, i64* %var_2_3, align 8
%var_2_765 = load i32, i32* %var_2_726, align 4
%var_2_766 = sext i32 %var_2_765 to i64
; Matched:\<badref\>:  store i64 %var_2_796, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_766, i64* %RCX.i272, align 8
; Matched:%var_2_101:  %var_2_101 = shl nsw i64 %var_2_100, 2
; %var_2_767 = shl nsw i64 %var_2_766, 2
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_101, %var_2_97
; %var_2_768 = add i64 %var_2_767, %var_2_763
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_338, 13
; %var_2_769 = add i64 %var_2_759, 13
; Matched:\<badref\>:  store i64 %var_2_103, i64* %PC, align 8
; store i64 %var_2_769, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = inttoptr i64 %var_2_102 to i32*
; %var_2_770 = inttoptr i64 %var_2_768 to i32*
; Matched:%var_2_105:  %var_2_105 = load i32, i32* %var_2_104, align 4
; %var_2_771 = load i32, i32* %var_2_770, align 4
; Matched:\<badref\>:  store i32 %var_2_105, i32* %var_2_18, align 1, !tbaa !1267
; store i32 %var_2_771, i32* %var_2_14, align 1
store float 0.000000e+00, float* %var_2_93, align 1
store float 0.000000e+00, float* %var_2_94, align 1
store float 0.000000e+00, float* %var_2_95, align 1
%var_2_772 = add i64 %var_2_723, -8
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_338, 17
; %var_2_773 = add i64 %var_2_759, 17
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8
; store i64 %var_2_773, i64* %var_2_3, align 8
%var_2_774 = inttoptr i64 %var_2_772 to i64*
%var_2_775 = load i64, i64* %var_2_774, align 8
; Matched:\<badref\>:  store i64 %var_2_109, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_775, i64* %RAX.i257, align 8
%var_2_776 = add i64 %var_2_723, -12
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_338, 20
; %var_2_777 = add i64 %var_2_759, 20
; Matched:\<badref\>:  store i64 %var_2_111, i64* %PC, align 8
; store i64 %var_2_777, i64* %var_2_3, align 8
%var_2_778 = inttoptr i64 %var_2_776 to i32*
%var_2_779 = load i32, i32* %var_2_778, align 4
; Matched:%var_2_552:  %var_2_552 = zext i32 %var_2_551 to i64
; %var_2_780 = zext i32 %var_2_779 to i64
; Matched:\<badref\>:  store i64 %var_2_622, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_780, i64* %var_2_86, align 8
%var_2_781 = add i64 %var_2_723, -44
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_338, 24
; %var_2_782 = add i64 %var_2_759, 24
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8
; store i64 %var_2_782, i64* %var_2_3, align 8
%var_2_783 = inttoptr i64 %var_2_781 to i32*
%var_2_784 = load i32, i32* %var_2_783, align 4
%var_2_785 = sext i32 %var_2_779 to i64
%var_2_786 = sext i32 %var_2_784 to i64
%var_2_787 = mul nsw i64 %var_2_786, %var_2_785
; Matched:%var_2_243:  %var_2_243 = trunc i64 %var_2_242 to i32
; %var_2_788 = trunc i64 %var_2_787 to i32
; Matched:%var_2_631:  %var_2_631 = and i64 %var_2_629, 4294967295
; %var_2_789 = and i64 %var_2_787, 4294967295
; Matched:\<badref\>:  store i64 %var_2_561, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_789, i64* %var_2_86, align 8
; Matched:%var_2_632:  %var_2_632 = shl i64 %var_2_629, 32
; %var_2_790 = shl i64 %var_2_787, 32
; Matched:%var_2_563:  %var_2_563 = ashr exact i64 %var_2_562, 32
; %var_2_791 = ashr exact i64 %var_2_790, 32
; Matched:%var_2_634:  %var_2_634 = icmp ne i64 %var_2_633, %var_2_629
; %var_2_792 = icmp ne i64 %var_2_791, %var_2_787
; Matched:%var_2_248:  %var_2_248 = zext i1 %var_2_247 to i8
; %var_2_793 = zext i1 %var_2_792 to i8
; Matched:\<badref\>:  store i8 %var_2_635, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_793, i8* %var_2_73, align 1
; Matched:%var_2_566:  %var_2_566 = and i32 %var_2_560, 255
; %var_2_794 = and i32 %var_2_788, 255
; Matched:%var_2_567:  %var_2_567 = tail call i32 @llvm.ctpop.i32(i32 %var_2_566) #12
; %var_2_795 = tail call i32 @llvm.ctpop.i32(i32 %var_2_794)
; Matched:%var_2_638:  %var_2_638 = trunc i32 %var_2_637 to i8
; %var_2_796 = trunc i32 %var_2_795 to i8
; Matched:%var_2_639:  %var_2_639 = and i8 %var_2_638, 1
; %var_2_797 = and i8 %var_2_796, 1
; Matched:%var_2_132:  %var_2_132 = xor i8 %var_2_131, 1
; %var_2_798 = xor i8 %var_2_797, 1
; Matched:\<badref\>:  store i8 %var_2_132, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_798, i8* %var_2_74, align 1
store i8 0, i8* %var_2_75, align 1
store i8 0, i8* %var_2_76, align 1
; Matched:%var_2_133:  %var_2_133 = lshr i32 %var_2_122, 31
; %var_2_799 = lshr i32 %var_2_788, 31
; Matched:%var_2_572:  %var_2_572 = trunc i32 %var_2_571 to i8
; %var_2_800 = trunc i32 %var_2_799 to i8
; Matched:\<badref\>:  store i8 %var_2_134, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_800, i8* %var_2_77, align 1
; Matched:\<badref\>:  store i8 %var_2_635, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_793, i8* %var_2_78, align 1
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_338, 27
; %var_2_801 = add i64 %var_2_759, 27
; Matched:\<badref\>:  store i64 %var_2_135, i64* %PC, align 8
; store i64 %var_2_801, i64* %var_2_3, align 8
%var_2_802 = trunc i64 %var_2_787 to i32
%var_2_803 = load i32, i32* %var_2_726, align 4
%var_2_804 = add i32 %var_2_803, %var_2_802
; Matched:%var_2_139:  %var_2_139 = zext i32 %var_2_138 to i64
; %var_2_805 = zext i32 %var_2_804 to i64
; Matched:\<badref\>:  store i64 %var_2_649, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_805, i64* %var_2_86, align 8
; Matched:%var_2_140:  %var_2_140 = icmp ult i32 %var_2_138, %var_2_136
; %var_2_806 = icmp ult i32 %var_2_804, %var_2_802
; Matched:%var_2_651:  %var_2_651 = icmp ult i32 %var_2_648, %var_2_647
; %var_2_807 = icmp ult i32 %var_2_804, %var_2_803
; Matched:%var_2_265:  %var_2_265 = or i1 %var_2_263, %var_2_264
; %var_2_808 = or i1 %var_2_806, %var_2_807
; Matched:%var_2_653:  %var_2_653 = zext i1 %var_2_652 to i8
; %var_2_809 = zext i1 %var_2_808 to i8
; Matched:\<badref\>:  store i8 %var_2_266, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_809, i8* %var_2_73, align 1
; Matched:%var_2_267:  %var_2_267 = and i32 %var_2_261, 255
; %var_2_810 = and i32 %var_2_804, 255
; Matched:%var_2_655:  %var_2_655 = tail call i32 @llvm.ctpop.i32(i32 %var_2_654) #12
; %var_2_811 = tail call i32 @llvm.ctpop.i32(i32 %var_2_810)
; Matched:%var_2_656:  %var_2_656 = trunc i32 %var_2_655 to i8
; %var_2_812 = trunc i32 %var_2_811 to i8
; Matched:%var_2_147:  %var_2_147 = and i8 %var_2_146, 1
; %var_2_813 = and i8 %var_2_812, 1
; Matched:%var_2_658:  %var_2_658 = xor i8 %var_2_657, 1
; %var_2_814 = xor i8 %var_2_813, 1
; Matched:\<badref\>:  store i8 %var_2_271, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_814, i8* %var_2_74, align 1
; Matched:%var_2_659:  %var_2_659 = xor i32 %var_2_647, %var_2_645
; %var_2_815 = xor i32 %var_2_803, %var_2_802
; Matched:%var_2_590:  %var_2_590 = xor i32 %var_2_589, %var_2_578
; %var_2_816 = xor i32 %var_2_815, %var_2_804
; Matched:%var_2_274:  %var_2_274 = lshr i32 %var_2_273, 4
; %var_2_817 = lshr i32 %var_2_816, 4
; Matched:%var_2_662:  %var_2_662 = trunc i32 %var_2_661 to i8
; %var_2_818 = trunc i32 %var_2_817 to i8
; Matched:%var_2_663:  %var_2_663 = and i8 %var_2_662, 1
; %var_2_819 = and i8 %var_2_818, 1
; Matched:\<badref\>:  store i8 %var_2_153, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_819, i8* %var_2_75, align 1
; Matched:%var_2_664:  %var_2_664 = icmp eq i32 %var_2_648, 0
; %var_2_820 = icmp eq i32 %var_2_804, 0
; Matched:%var_2_278:  %var_2_278 = zext i1 %var_2_277 to i8
; %var_2_821 = zext i1 %var_2_820 to i8
; Matched:\<badref\>:  store i8 %var_2_665, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_821, i8* %var_2_76, align 1
; Matched:%var_2_596:  %var_2_596 = lshr i32 %var_2_578, 31
; %var_2_822 = lshr i32 %var_2_804, 31
; Matched:%var_2_280:  %var_2_280 = trunc i32 %var_2_279 to i8
; %var_2_823 = trunc i32 %var_2_822 to i8
; Matched:\<badref\>:  store i8 %var_2_280, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_823, i8* %var_2_77, align 1
; Matched:%var_2_668:  %var_2_668 = lshr i32 %var_2_645, 31
; %var_2_824 = lshr i32 %var_2_802, 31
; Matched:%var_2_282:  %var_2_282 = lshr i32 %var_2_260, 31
; %var_2_825 = lshr i32 %var_2_803, 31
; Matched:%var_2_670:  %var_2_670 = xor i32 %var_2_666, %var_2_668
; %var_2_826 = xor i32 %var_2_822, %var_2_824
; Matched:%var_2_601:  %var_2_601 = xor i32 %var_2_596, %var_2_599
; %var_2_827 = xor i32 %var_2_822, %var_2_825
; Matched:%var_2_672:  %var_2_672 = add nuw nsw i32 %var_2_670, %var_2_671
; %var_2_828 = add nuw nsw i32 %var_2_826, %var_2_827
; Matched:%var_2_603:  %var_2_603 = icmp eq i32 %var_2_602, 2
; %var_2_829 = icmp eq i32 %var_2_828, 2
; Matched:%var_2_287:  %var_2_287 = zext i1 %var_2_286 to i8
; %var_2_830 = zext i1 %var_2_829 to i8
; Matched:\<badref\>:  store i8 %var_2_287, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_830, i8* %var_2_78, align 1
; Matched:%var_2_165:  %var_2_165 = sext i32 %var_2_138 to i64
; %var_2_831 = sext i32 %var_2_804 to i64
; Matched:\<badref\>:  store i64 %var_2_165, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_831, i64* %RCX.i272, align 8
; Matched:%var_2_166:  %var_2_166 = shl nsw i64 %var_2_165, 2
; %var_2_832 = shl nsw i64 %var_2_831, 2
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_109, %var_2_166
; %var_2_833 = add i64 %var_2_775, %var_2_832
; Matched:%var_2_168:  %var_2_168 = add i64 %var_2_338, 35
; %var_2_834 = add i64 %var_2_759, 35
; Matched:\<badref\>:  store i64 %var_2_168, i64* %PC, align 8
; store i64 %var_2_834, i64* %var_2_3, align 8
%var_2_835 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_836 = load <2 x i32>, <2 x i32>* %var_2_91, align 1
; Matched:%var_2_171:  %var_2_171 = inttoptr i64 %var_2_167 to float*
; %var_2_837 = inttoptr i64 %var_2_833 to float*
; Matched:%var_2_172:  %var_2_172 = load float, float* %var_2_171, align 4
; %var_2_838 = load float, float* %var_2_837, align 4
%var_2_839 = extractelement <2 x float> %var_2_835, i32 0
; Matched:%var_2_174:  %var_2_174 = fadd float %var_2_173, %var_2_172
; %var_2_840 = fadd float %var_2_839, %var_2_838
; Matched:\<badref\>:  store float %var_2_174, float* %var_2_90, align 1, !tbaa !1267
; store float %var_2_840, float* %var_2_92, align 1
%var_2_841 = bitcast <2 x float> %var_2_835 to <2 x i32>
%var_2_842 = extractelement <2 x i32> %var_2_841, i32 1
; Matched:\<badref\>:  store i32 %var_2_541, i32* %var_2_20, align 1, !tbaa !1267
; store i32 %var_2_842, i32* %var_2_16, align 1
%var_2_843 = extractelement <2 x i32> %var_2_836, i32 0
; Matched:\<badref\>:  store i32 %var_2_542, i32* %var_2_21, align 1, !tbaa !1267
; store i32 %var_2_843, i32* %var_2_17, align 1
%var_2_844 = extractelement <2 x i32> %var_2_836, i32 1
; Matched:\<badref\>:  store i32 %var_2_543, i32* %var_2_23, align 1, !tbaa !1267
; store i32 %var_2_844, i32* %var_2_19, align 1
%var_2_845 = load i64, i64* %RBP.i, align 8
%var_2_846 = add i64 %var_2_845, -24
; Matched:%var_2_181:  %var_2_181 = add i64 %var_2_338, 39
; %var_2_847 = add i64 %var_2_759, 39
; Matched:\<badref\>:  store i64 %var_2_181, i64* %PC, align 8
; store i64 %var_2_847, i64* %var_2_3, align 8
%var_2_848 = inttoptr i64 %var_2_846 to i64*
%var_2_849 = load i64, i64* %var_2_848, align 8
; Matched:\<badref\>:  store i64 %var_2_97, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_849, i64* %RAX.i257, align 8
%var_2_850 = add i64 %var_2_845, -40
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_338, 43
; %var_2_851 = add i64 %var_2_759, 43
; Matched:\<badref\>:  store i64 %var_2_185, i64* %PC, align 8
; store i64 %var_2_851, i64* %var_2_3, align 8
%var_2_852 = inttoptr i64 %var_2_850 to i32*
%var_2_853 = load i32, i32* %var_2_852, align 4
%var_2_854 = sext i32 %var_2_853 to i64
; Matched:\<badref\>:  store i64 %var_2_188, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_854, i64* %RCX.i272, align 8
; Matched:%var_2_189:  %var_2_189 = shl nsw i64 %var_2_188, 2
; %var_2_855 = shl nsw i64 %var_2_854, 2
; Matched:%var_2_798:  %var_2_798 = add i64 %var_2_797, %var_2_793
; %var_2_856 = add i64 %var_2_855, %var_2_849
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_338, 48
; %var_2_857 = add i64 %var_2_759, 48
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_857, i64* %var_2_3, align 8
%var_2_858 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_859 = extractelement <2 x float> %var_2_858, i32 0
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_190 to float*
; %var_2_860 = inttoptr i64 %var_2_856 to float*
; Matched:\<badref\>:  store float %var_2_193, float* %var_2_194, align 4
; store float %var_2_859, float* %var_2_860, align 4
; Matched:%var_2_803:  %var_2_803 = load i64, i64* %RBP, align 8
; %var_2_861 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_804:  %var_2_804 = add i64 %var_2_803, -40
; %var_2_862 = add i64 %var_2_861, -40
%var_2_863 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_441, 3
; %var_2_864 = add i64 %var_2_863, 3
; Matched:\<badref\>:  store i64 %var_2_442, i64* %PC, align 8
; store i64 %var_2_864, i64* %var_2_3, align 8
; Matched:%var_2_199:  %var_2_199 = inttoptr i64 %var_2_196 to i32*
; %var_2_865 = inttoptr i64 %var_2_862 to i32*
; Matched:%var_2_200:  %var_2_200 = load i32, i32* %var_2_199, align 4
; %var_2_866 = load i32, i32* %var_2_865, align 4
; Matched:%var_2_445:  %var_2_445 = add i32 %var_2_444, 1
; %var_2_867 = add i32 %var_2_866, 1
; Matched:%var_2_202:  %var_2_202 = zext i32 %var_2_201 to i64
; %var_2_868 = zext i32 %var_2_867 to i64
; Matched:\<badref\>:  store i64 %var_2_810, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_868, i64* %RAX.i257, align 8
; Matched:%var_2_203:  %var_2_203 = icmp eq i32 %var_2_200, -1
; %var_2_869 = icmp eq i32 %var_2_866, -1
; Matched:%var_2_204:  %var_2_204 = icmp eq i32 %var_2_201, 0
; %var_2_870 = icmp eq i32 %var_2_867, 0
; Matched:%var_2_205:  %var_2_205 = or i1 %var_2_203, %var_2_204
; %var_2_871 = or i1 %var_2_869, %var_2_870
; Matched:%var_2_450:  %var_2_450 = zext i1 %var_2_449 to i8
; %var_2_872 = zext i1 %var_2_871 to i8
; Matched:\<badref\>:  store i8 %var_2_206, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_872, i8* %var_2_73, align 1
; Matched:%var_2_451:  %var_2_451 = and i32 %var_2_445, 255
; %var_2_873 = and i32 %var_2_867, 255
; Matched:%var_2_208:  %var_2_208 = tail call i32 @llvm.ctpop.i32(i32 %var_2_207) #12
; %var_2_874 = tail call i32 @llvm.ctpop.i32(i32 %var_2_873)
; Matched:%var_2_817:  %var_2_817 = trunc i32 %var_2_816 to i8
; %var_2_875 = trunc i32 %var_2_874 to i8
; Matched:%var_2_818:  %var_2_818 = and i8 %var_2_817, 1
; %var_2_876 = and i8 %var_2_875, 1
; Matched:%var_2_211:  %var_2_211 = xor i8 %var_2_210, 1
; %var_2_877 = xor i8 %var_2_876, 1
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_877, i8* %var_2_74, align 1
; Matched:%var_2_456:  %var_2_456 = xor i32 %var_2_445, %var_2_444
; %var_2_878 = xor i32 %var_2_867, %var_2_866
; Matched:%var_2_821:  %var_2_821 = lshr i32 %var_2_820, 4
; %var_2_879 = lshr i32 %var_2_878, 4
; Matched:%var_2_458:  %var_2_458 = trunc i32 %var_2_457 to i8
; %var_2_880 = trunc i32 %var_2_879 to i8
; Matched:%var_2_823:  %var_2_823 = and i8 %var_2_822, 1
; %var_2_881 = and i8 %var_2_880, 1
; Matched:\<badref\>:  store i8 %var_2_459, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_881, i8* %var_2_75, align 1
; Matched:%var_2_824:  %var_2_824 = zext i1 %var_2_812 to i8
; %var_2_882 = zext i1 %var_2_870 to i8
; Matched:\<badref\>:  store i8 %var_2_216, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_882, i8* %var_2_76, align 1
; Matched:%var_2_825:  %var_2_825 = lshr i32 %var_2_809, 31
; %var_2_883 = lshr i32 %var_2_867, 31
; Matched:%var_2_462:  %var_2_462 = trunc i32 %var_2_461 to i8
; %var_2_884 = trunc i32 %var_2_883 to i8
; Matched:\<badref\>:  store i8 %var_2_826, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_884, i8* %var_2_77, align 1
; Matched:%var_2_463:  %var_2_463 = lshr i32 %var_2_444, 31
; %var_2_885 = lshr i32 %var_2_866, 31
; Matched:%var_2_828:  %var_2_828 = xor i32 %var_2_825, %var_2_827
; %var_2_886 = xor i32 %var_2_883, %var_2_885
; Matched:%var_2_465:  %var_2_465 = add nuw nsw i32 %var_2_464, %var_2_461
; %var_2_887 = add nuw nsw i32 %var_2_886, %var_2_883
; Matched:%var_2_222:  %var_2_222 = icmp eq i32 %var_2_221, 2
; %var_2_888 = icmp eq i32 %var_2_887, 2
; Matched:%var_2_831:  %var_2_831 = zext i1 %var_2_830 to i8
; %var_2_889 = zext i1 %var_2_888 to i8
; Matched:\<badref\>:  store i8 %var_2_831, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_889, i8* %var_2_78, align 1
; Matched:%var_2_468:  %var_2_468 = add i64 %var_2_441, 9
; %var_2_890 = add i64 %var_2_863, 9
; Matched:\<badref\>:  store i64 %var_2_832, i64* %PC, align 8
; store i64 %var_2_890, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_445, i32* %var_2_443, align 4
; store i32 %var_2_867, i32* %var_2_865, align 4
; Matched:%var_2_225:  %var_2_225 = load i64, i64* %PC, align 8
; %var_2_891 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_225, -69
; %var_2_892 = add i64 %var_2_891, -69
; Matched:\<badref\>:  store i64 %var_2_226, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_892, i64* %var_2_3, align 8
  br label %block_.L_4018c8

block_.L_401912:                                  ; preds = %block_.L_4018c8
; Matched:%var_2_760:  %var_2_760 = add i64 %var_2_302, -44
; %var_2_893 = add i64 %var_2_723, -44
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_338, 8
; %var_2_894 = add i64 %var_2_759, 8
; Matched:\<badref\>:  store i64 %var_2_98, i64* %PC, align 8
; store i64 %var_2_894, i64* %var_2_3, align 8
; Matched:%var_2_762:  %var_2_762 = inttoptr i64 %var_2_760 to i32*
; %var_2_895 = inttoptr i64 %var_2_893 to i32*
; Matched:%var_2_398:  %var_2_398 = load i32, i32* %var_2_397, align 4
; %var_2_896 = load i32, i32* %var_2_895, align 4
; Matched:%var_2_399:  %var_2_399 = add i32 %var_2_398, 1
; %var_2_897 = add i32 %var_2_896, 1
; Matched:%var_2_765:  %var_2_765 = zext i32 %var_2_764 to i64
; %var_2_898 = zext i32 %var_2_897 to i64
; Matched:\<badref\>:  store i64 %var_2_765, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_898, i64* %RAX.i257, align 8
; Matched:%var_2_766:  %var_2_766 = icmp eq i32 %var_2_763, -1
; %var_2_899 = icmp eq i32 %var_2_896, -1
; Matched:%var_2_767:  %var_2_767 = icmp eq i32 %var_2_764, 0
; %var_2_900 = icmp eq i32 %var_2_897, 0
; Matched:%var_2_768:  %var_2_768 = or i1 %var_2_766, %var_2_767
; %var_2_901 = or i1 %var_2_899, %var_2_900
; Matched:%var_2_769:  %var_2_769 = zext i1 %var_2_768 to i8
; %var_2_902 = zext i1 %var_2_901 to i8
; Matched:\<badref\>:  store i8 %var_2_404, i8* %var_2_74, align 1, !tbaa !1269
; store i8 %var_2_902, i8* %var_2_73, align 1
; Matched:%var_2_405:  %var_2_405 = and i32 %var_2_399, 255
; %var_2_903 = and i32 %var_2_897, 255
; Matched:%var_2_771:  %var_2_771 = tail call i32 @llvm.ctpop.i32(i32 %var_2_770) #12
; %var_2_904 = tail call i32 @llvm.ctpop.i32(i32 %var_2_903)
; Matched:%var_2_772:  %var_2_772 = trunc i32 %var_2_771 to i8
; %var_2_905 = trunc i32 %var_2_904 to i8
; Matched:%var_2_773:  %var_2_773 = and i8 %var_2_772, 1
; %var_2_906 = and i8 %var_2_905, 1
; Matched:%var_2_774:  %var_2_774 = xor i8 %var_2_773, 1
; %var_2_907 = xor i8 %var_2_906, 1
; Matched:\<badref\>:  store i8 %var_2_774, i8* %var_2_75, align 1, !tbaa !1282
; store i8 %var_2_907, i8* %var_2_74, align 1
; Matched:%var_2_775:  %var_2_775 = xor i32 %var_2_764, %var_2_763
; %var_2_908 = xor i32 %var_2_897, %var_2_896
; Matched:%var_2_411:  %var_2_411 = lshr i32 %var_2_410, 4
; %var_2_909 = lshr i32 %var_2_908, 4
; Matched:%var_2_412:  %var_2_412 = trunc i32 %var_2_411 to i8
; %var_2_910 = trunc i32 %var_2_909 to i8
; Matched:%var_2_778:  %var_2_778 = and i8 %var_2_777, 1
; %var_2_911 = and i8 %var_2_910, 1
; Matched:\<badref\>:  store i8 %var_2_778, i8* %var_2_76, align 1, !tbaa !1283
; store i8 %var_2_911, i8* %var_2_75, align 1
; Matched:%var_2_779:  %var_2_779 = zext i1 %var_2_767 to i8
; %var_2_912 = zext i1 %var_2_900 to i8
; Matched:\<badref\>:  store i8 %var_2_779, i8* %var_2_77, align 1, !tbaa !1284
; store i8 %var_2_912, i8* %var_2_76, align 1
; Matched:%var_2_780:  %var_2_780 = lshr i32 %var_2_764, 31
; %var_2_913 = lshr i32 %var_2_897, 31
; Matched:%var_2_781:  %var_2_781 = trunc i32 %var_2_780 to i8
; %var_2_914 = trunc i32 %var_2_913 to i8
; Matched:\<badref\>:  store i8 %var_2_416, i8* %var_2_78, align 1, !tbaa !1285
; store i8 %var_2_914, i8* %var_2_77, align 1
; Matched:%var_2_417:  %var_2_417 = lshr i32 %var_2_398, 31
; %var_2_915 = lshr i32 %var_2_896, 31
; Matched:%var_2_783:  %var_2_783 = xor i32 %var_2_780, %var_2_782
; %var_2_916 = xor i32 %var_2_913, %var_2_915
; Matched:%var_2_419:  %var_2_419 = add nuw nsw i32 %var_2_418, %var_2_415
; %var_2_917 = add nuw nsw i32 %var_2_916, %var_2_913
; Matched:%var_2_785:  %var_2_785 = icmp eq i32 %var_2_784, 2
; %var_2_918 = icmp eq i32 %var_2_917, 2
; Matched:%var_2_786:  %var_2_786 = zext i1 %var_2_785 to i8
; %var_2_919 = zext i1 %var_2_918 to i8
; Matched:\<badref\>:  store i8 %var_2_421, i8* %var_2_79, align 1, !tbaa !1286
; store i8 %var_2_919, i8* %var_2_78, align 1
; Matched:%var_2_787:  %var_2_787 = add i64 %var_2_338, 14
; %var_2_920 = add i64 %var_2_759, 14
; Matched:\<badref\>:  store i64 %var_2_787, i64* %PC, align 8
; store i64 %var_2_920, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_399, i32* %var_2_397, align 4
; store i32 %var_2_897, i32* %var_2_895, align 4
; Matched:%var_2_788:  %var_2_788 = load i64, i64* %PC, align 8
; %var_2_921 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_789:  %var_2_789 = add i64 %var_2_788, -107
; %var_2_922 = add i64 %var_2_921, -107
; Matched:\<badref\>:  store i64 %var_2_789, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_922, i64* %var_2_3, align 8
  br label %block_.L_4018b5

block_.L_401925:                                  ; preds = %block_.L_4018b5
; Matched:%var_2_877:  %var_2_877 = add i64 %var_2_391, 1
; %var_2_923 = add i64 %var_2_718, 1
; Matched:\<badref\>:  store i64 %var_2_877, i64* %PC, align 8
; store i64 %var_2_923, i64* %var_2_3, align 8
; Matched:%var_2_878:  %var_2_878 = load i64, i64* %var_2_11, align 8, !tbaa !1261
; %var_2_924 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_879:  %var_2_879 = add i64 %var_2_878, 8
; %var_2_925 = add i64 %var_2_924, 8
; Matched:%var_2_880:  %var_2_880 = inttoptr i64 %var_2_878 to i64*
; %var_2_926 = inttoptr i64 %var_2_924 to i64*
; Matched:%var_2_881:  %var_2_881 = load i64, i64* %var_2_880, align 8
; %var_2_927 = load i64, i64* %var_2_926, align 8
; Matched:\<badref\>:  store i64 %var_2_881, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_927, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_879, i64* %var_2_11, align 8, !tbaa !1261
; store i64 %var_2_925, i64* %var_2_6, align 8
; Matched:%var_2_882:  %var_2_882 = add i64 %var_2_391, 2
; %var_2_928 = add i64 %var_2_718, 2
; Matched:\<badref\>:  store i64 %var_2_882, i64* %PC, align 8
; store i64 %var_2_928, i64* %var_2_3, align 8
; Matched:%var_2_883:  %var_2_883 = inttoptr i64 %var_2_879 to i64*
; %var_2_929 = inttoptr i64 %var_2_925 to i64*
; Matched:%var_2_884:  %var_2_884 = load i64, i64* %var_2_883, align 8
; %var_2_930 = load i64, i64* %var_2_929, align 8
; Matched:\<badref\>:  store i64 %var_2_884, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_930, i64* %var_2_3, align 8
; Matched:%var_2_885:  %var_2_885 = add i64 %var_2_878, 16
; %var_2_931 = add i64 %var_2_924, 16
; Matched:\<badref\>:  store i64 %var_2_885, i64* %var_2_11, align 8, !tbaa !1261
; store i64 %var_2_931, i64* %var_2_6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x52d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1325, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RCX to float**
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jge_.L_40187d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_40186a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x16c2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x16c2__rip__type* @G_0x16c2__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x16c2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x16c2__rip__type* @G_0x16c2__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 65536, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0xc35__MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3125
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 13421772800000
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
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
define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rsi__rdi_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %RDI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss___rsi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RSI to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = load float, float* %5, align 4
  %12 = fcmp uno float %10, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd float %10, %11
  %15 = bitcast float %14 to i32
  %16 = and i32 %15, 2143289344
  %17 = icmp eq i32 %16, 2139095040
  %18 = and i32 %15, 4194303
  %19 = icmp ne i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt float %10, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %10, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %10, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_401842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movss___rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_jmpq_.L_40184f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40186f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40178f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4018ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401925(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401912(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4018c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4018b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
