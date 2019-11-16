; ModuleID = '/tmp/tmp2t842a9m-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x61a088_type = type <{ [8 x i8] }>
%G_0x61a0a8_type = type <{ [4 x i8] }>
%G_0x7061__rip__type = type <{ [4 x i8] }>
%G__0x414b2e_type = type <{ [8 x i8] }>
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
@G_0x61a088 = local_unnamed_addr global %G_0x61a088_type zeroinitializer
@G_0x61a0a8 = local_unnamed_addr global %G_0x61a0a8_type zeroinitializer
@G_0x7061__rip_ = global %G_0x7061__rip__type zeroinitializer
@G__0x414b2e = global %G__0x414b2e_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_40cdc0._ZN28custom_sub_multiple_variableIfE8do_shiftEfffff(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c8a0._Z15tolerance_equalIfEbRT_S1_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z26check_shifted_variable_sumIf28custom_sub_multiple_variableIfEEvT_S2_S2_S2_S2_(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
; Matched:  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_10, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %var_2_11, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_13:  %var_2_13 = inttoptr i64 %var_2_12 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_9, i64* %var_2_13, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_14:  %var_2_14 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_12, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -40
; %var_2_11 = add i64 %var_2_7, -40
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = icmp ult i64 %var_2_12, 32
; %var_2_12 = icmp ult i64 %var_2_8, 32
; Matched:%var_2_17:  %var_2_17 = zext i1 %var_2_16 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_17, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_19:  %var_2_19 = trunc i64 %var_2_15 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_20:  %var_2_20 = and i32 %var_2_19, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_21:  %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_22:  %var_2_22 = trunc i32 %var_2_21 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_23:  %var_2_23 = and i8 %var_2_22, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_24:  %var_2_24 = xor i8 %var_2_23, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_25:  %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_24, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_26:  %var_2_26 = xor i64 %var_2_12, %var_2_15
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_27:  %var_2_27 = lshr i64 %var_2_26, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_28:  %var_2_28 = trunc i64 %var_2_27 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_29:  %var_2_29 = and i8 %var_2_28, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_31:  %var_2_31 = icmp eq i64 %var_2_15, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_32:  %var_2_32 = zext i1 %var_2_31 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
; Matched:%var_2_33:  %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_15, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_35:  %var_2_35 = trunc i64 %var_2_34 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_35, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_37:  %var_2_37 = lshr i64 %var_2_12, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_38:  %var_2_38 = xor i64 %var_2_34, %var_2_37
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_39:  %var_2_39 = add nuw nsw i64 %var_2_38, %var_2_37
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_40:  %var_2_40 = icmp eq i64 %var_2_39, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_41:  %var_2_41 = zext i1 %var_2_40 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_11, -12
; %var_2_40 = add i64 %var_2_7, -12
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_14, 12
; %var_2_41 = add i64 %var_2_10, 12
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
%var_2_42 = bitcast [32 x %union.VectorReg]* %var_2_39 to <2 x float>*
%var_2_43 = load <2 x float>, <2 x float>* %var_2_42, align 1
%var_2_44 = extractelement <2 x float> %var_2_43, i32 0
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_43 to float*
; %var_2_45 = inttoptr i64 %var_2_40 to float*
; Matched:\<badref\>:  store float %var_2_47, float* %var_2_48, align 4
; store float %var_2_44, float* %var_2_45, align 4
%var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %RBP, align 8
; %var_2_47 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -8
; %var_2_48 = add i64 %var_2_47, -8
; Matched:%var_2_51:  %var_2_51 = load i64, i64* %PC, align 8
; %var_2_49 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_51, 5
; %var_2_50 = add i64 %var_2_49, 5
; Matched:\<badref\>:  store i64 %var_2_52, i64* %PC, align 8
; store i64 %var_2_50, i64* %var_2_3, align 8
%var_2_51 = bitcast %union.VectorReg* %var_2_46 to <2 x float>*
%var_2_52 = load <2 x float>, <2 x float>* %var_2_51, align 1
%var_2_53 = extractelement <2 x float> %var_2_52, i32 0
; Matched:%var_2_56:  %var_2_56 = inttoptr i64 %var_2_50 to float*
; %var_2_54 = inttoptr i64 %var_2_48 to float*
; Matched:\<badref\>:  store float %var_2_55, float* %var_2_56, align 4
; store float %var_2_53, float* %var_2_54, align 4
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP, align 8
; %var_2_56 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -12
; %var_2_57 = add i64 %var_2_56, -12
; Matched:%var_2_67:  %var_2_67 = load i64, i64* %PC, align 8
; %var_2_58 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, 5
; %var_2_59 = add i64 %var_2_58, 5
; Matched:\<badref\>:  store i64 %var_2_68, i64* %PC, align 8
; store i64 %var_2_59, i64* %var_2_3, align 8
%var_2_60 = bitcast %union.VectorReg* %var_2_55 to <2 x float>*
%var_2_61 = load <2 x float>, <2 x float>* %var_2_60, align 1
%var_2_62 = extractelement <2 x float> %var_2_61, i32 0
; Matched:%var_2_64:  %var_2_64 = inttoptr i64 %var_2_58 to float*
; %var_2_63 = inttoptr i64 %var_2_57 to float*
; Matched:\<badref\>:  store float %var_2_63, float* %var_2_64, align 4
; store float %var_2_62, float* %var_2_63, align 4
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_65:  %var_2_65 = load i64, i64* %RBP, align 8
; %var_2_65 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, -16
; %var_2_66 = add i64 %var_2_65, -16
; Matched:%var_2_75:  %var_2_75 = load i64, i64* %PC, align 8
; %var_2_67 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_76:  %var_2_76 = add i64 %var_2_75, 5
; %var_2_68 = add i64 %var_2_67, 5
; Matched:\<badref\>:  store i64 %var_2_76, i64* %PC, align 8
; store i64 %var_2_68, i64* %var_2_3, align 8
%var_2_69 = bitcast %union.VectorReg* %var_2_64 to <2 x float>*
%var_2_70 = load <2 x float>, <2 x float>* %var_2_69, align 1
%var_2_71 = extractelement <2 x float> %var_2_70, i32 0
; Matched:%var_2_72:  %var_2_72 = inttoptr i64 %var_2_66 to float*
; %var_2_72 = inttoptr i64 %var_2_66 to float*
; Matched:\<badref\>:  store float %var_2_71, float* %var_2_72, align 4
; store float %var_2_71, float* %var_2_72, align 4
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_73:  %var_2_73 = load i64, i64* %RBP, align 8
; %var_2_74 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_73, -20
; %var_2_75 = add i64 %var_2_74, -20
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %PC, align 8
; %var_2_76 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_59, 5
; %var_2_77 = add i64 %var_2_76, 5
; Matched:\<badref\>:  store i64 %var_2_60, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
%var_2_78 = bitcast %union.VectorReg* %var_2_73 to <2 x float>*
%var_2_79 = load <2 x float>, <2 x float>* %var_2_78, align 1
%var_2_80 = extractelement <2 x float> %var_2_79, i32 0
; Matched:%var_2_80:  %var_2_80 = inttoptr i64 %var_2_74 to float*
; %var_2_81 = inttoptr i64 %var_2_75 to float*
; Matched:\<badref\>:  store float %var_2_79, float* %var_2_80, align 4
; store float %var_2_80, float* %var_2_81, align 4
; Matched:%var_2_81:  %var_2_81 = bitcast [32 x %union.VectorReg]* %var_2_4 to i8*
; %var_2_82 = bitcast [32 x %union.VectorReg]* %var_2_39 to i8*
%var_2_83 = load i64, i64* %var_2_3, align 8
%var_2_84 = bitcast [32 x %union.VectorReg]* %var_2_39 to <2 x i32>*
%var_2_85 = load <2 x i32>, <2 x i32>* %var_2_84, align 1
; Matched:%var_2_85:  %var_2_85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_87 = bitcast i64* %var_2_86 to <2 x i32>*
%var_2_88 = load <2 x i32>, <2 x i32>* %var_2_87, align 1
; Matched:%var_2_88:  %var_2_88 = load double, double* bitcast (%init_value_type* @init_value to double*), align 8
; %var_2_89 = load double, double* bitcast (%G_0x61a088_type* @G_0x61a088 to double*), align 8
; Matched:%var_2_89:  %var_2_89 = fptrunc double %var_2_88 to float
; %var_2_90 = fptrunc double %var_2_89 to float
; Matched:%var_2_90:  %var_2_90 = bitcast [32 x %union.VectorReg]* %var_2_4 to float*
; %var_2_91 = bitcast [32 x %union.VectorReg]* %var_2_39 to float*
; Matched:\<badref\>:  store float %var_2_89, float* %var_2_90, align 1, !tbaa !1284
; store float %var_2_90, float* %var_2_91, align 1
%var_2_92 = extractelement <2 x i32> %var_2_85, i32 1
; Matched:%var_2_92:  %var_2_92 = getelementptr inbounds i8, i8* %var_2_81, i64 4
; %var_2_93 = getelementptr inbounds i8, i8* %var_2_82, i64 4
; Matched:%var_2_93:  %var_2_93 = bitcast i8* %var_2_92 to i32*
; %var_2_94 = bitcast i8* %var_2_93 to i32*
; Matched:\<badref\>:  store i32 %var_2_91, i32* %var_2_93, align 1, !tbaa !1284
; store i32 %var_2_92, i32* %var_2_94, align 1
%var_2_95 = extractelement <2 x i32> %var_2_88, i32 0
; Matched:%var_2_95:  %var_2_95 = bitcast i64* %var_2_85 to i32*
; %var_2_96 = bitcast i64* %var_2_86 to i32*
; Matched:\<badref\>:  store i32 %var_2_94, i32* %var_2_95, align 1, !tbaa !1284
; store i32 %var_2_95, i32* %var_2_96, align 1
%var_2_97 = extractelement <2 x i32> %var_2_88, i32 1
; Matched:%var_2_97:  %var_2_97 = getelementptr inbounds i8, i8* %var_2_81, i64 12
; %var_2_98 = getelementptr inbounds i8, i8* %var_2_82, i64 12
; Matched:%var_2_98:  %var_2_98 = bitcast i8* %var_2_97 to i32*
; %var_2_99 = bitcast i8* %var_2_98 to i32*
; Matched:\<badref\>:  store i32 %var_2_96, i32* %var_2_98, align 1, !tbaa !1284
; store i32 %var_2_97, i32* %var_2_99, align 1
%var_2_100 = bitcast %union.VectorReg* %var_2_46 to i8*
; Matched:%var_2_100:  %var_2_100 = load i64, i64* %RBP, align 8
; %var_2_101 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_100, -8
; %var_2_102 = add i64 %var_2_101, -8
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_82, 14
; %var_2_103 = add i64 %var_2_83, 14
; Matched:\<badref\>:  store i64 %var_2_102, i64* %PC, align 8
; store i64 %var_2_103, i64* %var_2_3, align 8
; Matched:%var_2_103:  %var_2_103 = inttoptr i64 %var_2_101 to i32*
; %var_2_104 = inttoptr i64 %var_2_102 to i32*
; Matched:%var_2_104:  %var_2_104 = load i32, i32* %var_2_103, align 4
; %var_2_105 = load i32, i32* %var_2_104, align 4
; Matched:%var_2_105:  %var_2_105 = bitcast %union.VectorReg* %var_2_5 to float*
; %var_2_106 = bitcast %union.VectorReg* %var_2_46 to float*
%var_2_107 = bitcast %union.VectorReg* %var_2_46 to i32*
; Matched:\<badref\>:  store i32 %var_2_104, i32* %var_2_106, align 1, !tbaa !1284
; store i32 %var_2_105, i32* %var_2_107, align 1
%var_2_108 = getelementptr inbounds i8, i8* %var_2_100, i64 4
%var_2_109 = bitcast i8* %var_2_108 to float*
store float 0.000000e+00, float* %var_2_109, align 1
%var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_111 = bitcast i64* %var_2_110 to float*
store float 0.000000e+00, float* %var_2_111, align 1
%var_2_112 = getelementptr inbounds i8, i8* %var_2_100, i64 12
%var_2_113 = bitcast i8* %var_2_112 to float*
store float 0.000000e+00, float* %var_2_113, align 1
; Matched:%var_2_113:  %var_2_113 = bitcast %union.VectorReg* %var_2_6 to i8*
; %var_2_114 = bitcast %union.VectorReg* %var_2_55 to i8*
; Matched:%var_2_114:  %var_2_114 = add i64 %var_2_100, -12
; %var_2_115 = add i64 %var_2_101, -12
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_82, 19
; %var_2_116 = add i64 %var_2_83, 19
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8
; store i64 %var_2_116, i64* %var_2_3, align 8
; Matched:%var_2_116:  %var_2_116 = inttoptr i64 %var_2_114 to i32*
; %var_2_117 = inttoptr i64 %var_2_115 to i32*
; Matched:%var_2_117:  %var_2_117 = load i32, i32* %var_2_116, align 4
; %var_2_118 = load i32, i32* %var_2_117, align 4
; Matched:%var_2_118:  %var_2_118 = bitcast %union.VectorReg* %var_2_6 to i32*
; %var_2_119 = bitcast %union.VectorReg* %var_2_55 to i32*
; Matched:\<badref\>:  store i32 %var_2_117, i32* %var_2_118, align 1, !tbaa !1284
; store i32 %var_2_118, i32* %var_2_119, align 1
; Matched:%var_2_119:  %var_2_119 = getelementptr inbounds i8, i8* %var_2_113, i64 4
; %var_2_120 = getelementptr inbounds i8, i8* %var_2_114, i64 4
; Matched:%var_2_120:  %var_2_120 = bitcast i8* %var_2_119 to float*
; %var_2_121 = bitcast i8* %var_2_120 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_120, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_121, align 1
; Matched:%var_2_121:  %var_2_121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_122:  %var_2_122 = bitcast i64* %var_2_121 to float*
; %var_2_123 = bitcast i64* %var_2_122 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_122, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_123, align 1
; Matched:%var_2_123:  %var_2_123 = getelementptr inbounds i8, i8* %var_2_113, i64 12
; %var_2_124 = getelementptr inbounds i8, i8* %var_2_114, i64 12
; Matched:%var_2_124:  %var_2_124 = bitcast i8* %var_2_123 to float*
; %var_2_125 = bitcast i8* %var_2_124 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_124, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_125, align 1
; Matched:%var_2_125:  %var_2_125 = bitcast %union.VectorReg* %var_2_7 to i8*
; %var_2_126 = bitcast %union.VectorReg* %var_2_64 to i8*
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_100, -16
; %var_2_127 = add i64 %var_2_101, -16
; Matched:%var_2_127:  %var_2_127 = add i64 %var_2_82, 24
; %var_2_128 = add i64 %var_2_83, 24
; Matched:\<badref\>:  store i64 %var_2_127, i64* %PC, align 8
; store i64 %var_2_128, i64* %var_2_3, align 8
; Matched:%var_2_128:  %var_2_128 = inttoptr i64 %var_2_126 to i32*
; %var_2_129 = inttoptr i64 %var_2_127 to i32*
; Matched:%var_2_129:  %var_2_129 = load i32, i32* %var_2_128, align 4
; %var_2_130 = load i32, i32* %var_2_129, align 4
; Matched:%var_2_130:  %var_2_130 = bitcast %union.VectorReg* %var_2_7 to i32*
; %var_2_131 = bitcast %union.VectorReg* %var_2_64 to i32*
; Matched:\<badref\>:  store i32 %var_2_129, i32* %var_2_130, align 1, !tbaa !1284
; store i32 %var_2_130, i32* %var_2_131, align 1
; Matched:%var_2_131:  %var_2_131 = getelementptr inbounds i8, i8* %var_2_125, i64 4
; %var_2_132 = getelementptr inbounds i8, i8* %var_2_126, i64 4
; Matched:%var_2_132:  %var_2_132 = bitcast i8* %var_2_131 to float*
; %var_2_133 = bitcast i8* %var_2_132 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_132, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_133, align 1
; Matched:%var_2_133:  %var_2_133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_134:  %var_2_134 = bitcast i64* %var_2_133 to float*
; %var_2_135 = bitcast i64* %var_2_134 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_134, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_135, align 1
; Matched:%var_2_135:  %var_2_135 = getelementptr inbounds i8, i8* %var_2_125, i64 12
; %var_2_136 = getelementptr inbounds i8, i8* %var_2_126, i64 12
; Matched:%var_2_136:  %var_2_136 = bitcast i8* %var_2_135 to float*
; %var_2_137 = bitcast i8* %var_2_136 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_136, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_137, align 1
; Matched:%var_2_137:  %var_2_137 = bitcast %union.VectorReg* %var_2_8 to i8*
; %var_2_138 = bitcast %union.VectorReg* %var_2_73 to i8*
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_100, -20
; %var_2_139 = add i64 %var_2_101, -20
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_82, 29
; %var_2_140 = add i64 %var_2_83, 29
; Matched:\<badref\>:  store i64 %var_2_139, i64* %PC, align 8
; store i64 %var_2_140, i64* %var_2_3, align 8
; Matched:%var_2_140:  %var_2_140 = inttoptr i64 %var_2_138 to i32*
; %var_2_141 = inttoptr i64 %var_2_139 to i32*
; Matched:%var_2_141:  %var_2_141 = load i32, i32* %var_2_140, align 4
; %var_2_142 = load i32, i32* %var_2_141, align 4
; Matched:%var_2_142:  %var_2_142 = bitcast %union.VectorReg* %var_2_8 to i32*
; %var_2_143 = bitcast %union.VectorReg* %var_2_73 to i32*
; Matched:\<badref\>:  store i32 %var_2_141, i32* %var_2_142, align 1, !tbaa !1284
; store i32 %var_2_142, i32* %var_2_143, align 1
; Matched:%var_2_143:  %var_2_143 = getelementptr inbounds i8, i8* %var_2_137, i64 4
; %var_2_144 = getelementptr inbounds i8, i8* %var_2_138, i64 4
; Matched:%var_2_144:  %var_2_144 = bitcast i8* %var_2_143 to float*
; %var_2_145 = bitcast i8* %var_2_144 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_144, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_145, align 1
; Matched:%var_2_145:  %var_2_145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_146:  %var_2_146 = bitcast i64* %var_2_145 to float*
; %var_2_147 = bitcast i64* %var_2_146 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_146, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_147, align 1
; Matched:%var_2_147:  %var_2_147 = getelementptr inbounds i8, i8* %var_2_137, i64 12
; %var_2_148 = getelementptr inbounds i8, i8* %var_2_138, i64 12
; Matched:%var_2_148:  %var_2_148 = bitcast i8* %var_2_147 to float*
; %var_2_149 = bitcast i8* %var_2_148 to float*
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_148, align 1, !tbaa !1284
; store float 0.000000e+00, float* %var_2_149, align 1
%var_2_150 = add i64 %var_2_83, -97
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_82, 34
; %var_2_151 = add i64 %var_2_83, 34
; Matched:%var_2_231:  %var_2_231 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_152 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, -8
; %var_2_153 = add i64 %var_2_152, -8
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_152 to i64*
; %var_2_154 = inttoptr i64 %var_2_153 to i64*
; Matched:\<badref\>:  store i64 %var_2_150, i64* %var_2_153, align 8
; store i64 %var_2_151, i64* %var_2_154, align 8
; Matched:\<badref\>:  store i64 %var_2_182, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_153, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_150, i64* %var_2_3, align 8
%call2_40ce3e = tail call %struct.Memory* @sub_40cdc0._ZN28custom_sub_multiple_variableIfE8do_shiftEfffff(%struct.State* %0, i64 %var_2_150, %struct.Memory* %2)
  %RDI.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %RBP, align 8
; %var_2_155 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_155, -4
; %var_2_156 = add i64 %var_2_155, -4
%var_2_157 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_156, i64* %RDI.i27, align 8
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_155, -24
; %var_2_158 = add i64 %var_2_155, -24
; Matched:\<badref\>:  store i64 %var_2_158, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %RSI.i24, align 8
%var_2_159 = add i64 %var_2_157, add (i64 ptrtoint (%G_0x7061__rip__type* @G_0x7061__rip_ to i64), i64 8)
%var_2_160 = add i64 %var_2_157, 16
store i64 %var_2_160, i64* %var_2_3, align 8
%var_2_161 = inttoptr i64 %var_2_159 to i32*
%var_2_162 = load i32, i32* %var_2_161, align 4
store i32 %var_2_162, i32* %var_2_107, align 1
store float 0.000000e+00, float* %var_2_109, align 1
store float 0.000000e+00, float* %var_2_111, align 1
store float 0.000000e+00, float* %var_2_113, align 1
%var_2_163 = load <2 x float>, <2 x float>* %var_2_51, align 1
%var_2_164 = bitcast i64* %var_2_110 to <2 x i32>*
%var_2_165 = load <2 x i32>, <2 x i32>* %var_2_164, align 1
%var_2_166 = load <2 x float>, <2 x float>* %var_2_42, align 1
%var_2_167 = extractelement <2 x float> %var_2_163, i32 0
%var_2_168 = extractelement <2 x float> %var_2_166, i32 0
; Matched:%var_2_166:  %var_2_166 = fmul float %var_2_164, %var_2_165
; %var_2_169 = fmul float %var_2_167, %var_2_168
; Matched:\<badref\>:  store float %var_2_166, float* %var_2_105, align 1, !tbaa !1284
; store float %var_2_169, float* %var_2_106, align 1
%var_2_170 = bitcast <2 x float> %var_2_163 to <2 x i32>
%var_2_171 = extractelement <2 x i32> %var_2_170, i32 1
; Matched:%var_2_169:  %var_2_169 = bitcast i8* %var_2_107 to i32*
; %var_2_172 = bitcast i8* %var_2_108 to i32*
; Matched:\<badref\>:  store i32 %var_2_168, i32* %var_2_169, align 1, !tbaa !1284
; store i32 %var_2_171, i32* %var_2_172, align 1
%var_2_173 = extractelement <2 x i32> %var_2_165, i32 0
; Matched:%var_2_171:  %var_2_171 = bitcast i64* %var_2_109 to i32*
; %var_2_174 = bitcast i64* %var_2_110 to i32*
; Matched:\<badref\>:  store i32 %var_2_170, i32* %var_2_171, align 1, !tbaa !1284
; store i32 %var_2_173, i32* %var_2_174, align 1
%var_2_175 = extractelement <2 x i32> %var_2_165, i32 1
; Matched:%var_2_173:  %var_2_173 = bitcast i8* %var_2_111 to i32*
; %var_2_176 = bitcast i8* %var_2_112 to i32*
; Matched:\<badref\>:  store i32 %var_2_172, i32* %var_2_173, align 1, !tbaa !1284
; store i32 %var_2_175, i32* %var_2_176, align 1
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_157, 25
; %var_2_177 = add i64 %var_2_157, 25
; Matched:\<badref\>:  store i64 %var_2_174, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
%var_2_178 = load <2 x float>, <2 x float>* %var_2_51, align 1
%var_2_179 = extractelement <2 x float> %var_2_178, i32 0
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_158 to float*
; %var_2_180 = inttoptr i64 %var_2_158 to float*
; Matched:\<badref\>:  store float %var_2_176, float* %var_2_177, align 4
; store float %var_2_179, float* %var_2_180, align 4
%var_2_181 = load i64, i64* %var_2_3, align 8
%var_2_182 = add i64 %var_2_181, -1468
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_178, 5
; %var_2_183 = add i64 %var_2_181, 5
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_184 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -8
; %var_2_185 = add i64 %var_2_184, -8
; Matched:%var_2_183:  %var_2_183 = inttoptr i64 %var_2_182 to i64*
; %var_2_186 = inttoptr i64 %var_2_185 to i64*
; Matched:\<badref\>:  store i64 %var_2_180, i64* %var_2_183, align 8
; store i64 %var_2_183, i64* %var_2_186, align 8
; Matched:\<badref\>:  store i64 %var_2_232, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_185, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_179, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_182, i64* %var_2_3, align 8
%call2_40ce5c = tail call %struct.Memory* @sub_40c8a0._Z15tolerance_equalIfEbRT_S1_(%struct.State* %0, i64 %var_2_182, %struct.Memory* %call2_40ce3e)
%var_2_187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%AL.i16 = bitcast %union.anon* %var_2_187 to i8*
%var_2_188 = load i8, i8* %AL.i16, align 1
; Matched:%var_2_186:  %var_2_186 = load i64, i64* %PC, align 8
; %var_2_189 = load i64, i64* %var_2_3, align 8
%var_2_190 = and i8 %var_2_188, 1
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_188:  %var_2_188 = zext i8 %var_2_187 to i32
; %var_2_191 = zext i8 %var_2_190 to i32
; Matched:%var_2_189:  %var_2_189 = tail call i32 @llvm.ctpop.i32(i32 %var_2_188) #12
; %var_2_192 = tail call i32 @llvm.ctpop.i32(i32 %var_2_191)
; Matched:%var_2_190:  %var_2_190 = trunc i32 %var_2_189 to i8
; %var_2_193 = trunc i32 %var_2_192 to i8
; Matched:%var_2_191:  %var_2_191 = xor i8 %var_2_190, 1
; %var_2_194 = xor i8 %var_2_193, 1
; Matched:\<badref\>:  store i8 %var_2_191, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_194, i8* %var_2_21, align 1
%var_2_195 = xor i8 %var_2_190, 1
; Matched:\<badref\>:  store i8 %var_2_192, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_195, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_196 = icmp eq i8 %var_2_195, 0
; Matched:  %.v = select i1 %var_2_193, i64 35, i64 8
; %.v = select i1 %var_2_196, i64 35, i64 8
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_186, %.v
; %var_2_197 = add i64 %var_2_189, %.v
; Matched:\<badref\>:  store i64 %var_2_194, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_197, i64* %var_2_3, align 8
br i1 %var_2_196, label %block_.L_40ce84, label %block_40ce69

block_40ce69:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x414b2e_type* @G__0x414b2e to i64), i64* %RDI.i27, align 8
; Matched:%var_2_227:  %var_2_227 = load i32, i32* bitcast (%current_test_type* @current_test to i32*), align 8
; %var_2_198 = load i32, i32* bitcast (%G_0x61a0a8_type* @G_0x61a0a8 to i32*), align 8
; Matched:%var_2_228:  %var_2_228 = zext i32 %var_2_227 to i64
; %var_2_199 = zext i32 %var_2_198 to i64
; Matched:\<badref\>:  store i64 %var_2_228, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_199, i64* %RSI.i24, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1286
; store i8 0, i8* %AL.i16, align 1
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_194, -51097
; %var_2_200 = add i64 %var_2_197, -51097
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_194, 24
; %var_2_201 = add i64 %var_2_197, 24
; Matched:%var_2_181:  %var_2_181 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_202 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_182:  %var_2_182 = add i64 %var_2_181, -8
; %var_2_203 = add i64 %var_2_202, -8
; Matched:%var_2_233:  %var_2_233 = inttoptr i64 %var_2_232 to i64*
; %var_2_204 = inttoptr i64 %var_2_203 to i64*
; Matched:\<badref\>:  store i64 %var_2_230, i64* %var_2_233, align 8
; store i64 %var_2_201, i64* %var_2_204, align 8
; Matched:\<badref\>:  store i64 %var_2_152, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_203, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_200, i64* %var_2_3, align 8
%var_2_205 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_40ce5c)
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i = bitcast %union.anon* %var_2_187 to i32*
; Matched:%var_2_235:  %var_2_235 = load i64, i64* %RBP, align 8
; %var_2_206 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_235, -28
; %var_2_207 = add i64 %var_2_206, -28
; Matched:%var_2_237:  %var_2_237 = load i32, i32* %EAX, align 4
; %var_2_208 = load i32, i32* %EAX.i, align 4
; Matched:%var_2_238:  %var_2_238 = load i64, i64* %PC, align 8
; %var_2_209 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_238, 3
; %var_2_210 = add i64 %var_2_209, 3
; Matched:\<badref\>:  store i64 %var_2_239, i64* %PC, align 8
; store i64 %var_2_210, i64* %var_2_3, align 8
; Matched:%var_2_240:  %var_2_240 = inttoptr i64 %var_2_236 to i32*
; %var_2_211 = inttoptr i64 %var_2_207 to i32*
; Matched:\<badref\>:  store i32 %var_2_237, i32* %var_2_240, align 4
; store i32 %var_2_208, i32* %var_2_211, align 4
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40ce84

block_.L_40ce84:                                  ; preds = %block_40ce69, %entry
; Matched:%var_2_195:  %var_2_195 = phi i64 [ %var_2_194, %block_40ce00 ], [ %.pre, %block_40ce69 ]
; %var_2_212 = phi i64 [ %var_2_197, %entry ], [ %.pre, %block_40ce69 ]
%MEMORY.0 = phi %struct.Memory* [ %call2_40ce5c, %entry ], [ %var_2_205, %block_40ce69 ]
; Matched:%var_2_196:  %var_2_196 = load i64, i64* %RSP, align 8
; %var_2_213 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_196, 32
; %var_2_214 = add i64 %var_2_213, 32
; Matched:\<badref\>:  store i64 %var_2_197, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_214, i64* %var_2_6, align 8
; Matched:%var_2_198:  %var_2_198 = icmp ugt i64 %var_2_196, -33
; %var_2_215 = icmp ugt i64 %var_2_213, -33
; Matched:%var_2_199:  %var_2_199 = zext i1 %var_2_198 to i8
; %var_2_216 = zext i1 %var_2_215 to i8
; Matched:\<badref\>:  store i8 %var_2_199, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_216, i8* %var_2_14, align 1
; Matched:%var_2_200:  %var_2_200 = trunc i64 %var_2_197 to i32
; %var_2_217 = trunc i64 %var_2_214 to i32
; Matched:%var_2_201:  %var_2_201 = and i32 %var_2_200, 255
; %var_2_218 = and i32 %var_2_217, 255
; Matched:%var_2_202:  %var_2_202 = tail call i32 @llvm.ctpop.i32(i32 %var_2_201) #12
; %var_2_219 = tail call i32 @llvm.ctpop.i32(i32 %var_2_218)
; Matched:%var_2_203:  %var_2_203 = trunc i32 %var_2_202 to i8
; %var_2_220 = trunc i32 %var_2_219 to i8
; Matched:%var_2_204:  %var_2_204 = and i8 %var_2_203, 1
; %var_2_221 = and i8 %var_2_220, 1
; Matched:%var_2_205:  %var_2_205 = xor i8 %var_2_204, 1
; %var_2_222 = xor i8 %var_2_221, 1
; Matched:\<badref\>:  store i8 %var_2_205, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_222, i8* %var_2_21, align 1
; Matched:%var_2_206:  %var_2_206 = xor i64 %var_2_197, %var_2_196
; %var_2_223 = xor i64 %var_2_214, %var_2_213
; Matched:%var_2_207:  %var_2_207 = lshr i64 %var_2_206, 4
; %var_2_224 = lshr i64 %var_2_223, 4
; Matched:%var_2_208:  %var_2_208 = trunc i64 %var_2_207 to i8
; %var_2_225 = trunc i64 %var_2_224 to i8
; Matched:%var_2_209:  %var_2_209 = and i8 %var_2_208, 1
; %var_2_226 = and i8 %var_2_225, 1
; Matched:\<badref\>:  store i8 %var_2_209, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_226, i8* %var_2_26, align 1
; Matched:%var_2_210:  %var_2_210 = icmp eq i64 %var_2_197, 0
; %var_2_227 = icmp eq i64 %var_2_214, 0
; Matched:%var_2_211:  %var_2_211 = zext i1 %var_2_210 to i8
; %var_2_228 = zext i1 %var_2_227 to i8
; Matched:\<badref\>:  store i8 %var_2_211, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_228, i8* %var_2_29, align 1
; Matched:%var_2_212:  %var_2_212 = lshr i64 %var_2_197, 63
; %var_2_229 = lshr i64 %var_2_214, 63
; Matched:%var_2_213:  %var_2_213 = trunc i64 %var_2_212 to i8
; %var_2_230 = trunc i64 %var_2_229 to i8
; Matched:\<badref\>:  store i8 %var_2_213, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_230, i8* %var_2_32, align 1
; Matched:%var_2_214:  %var_2_214 = lshr i64 %var_2_196, 63
; %var_2_231 = lshr i64 %var_2_213, 63
; Matched:%var_2_215:  %var_2_215 = xor i64 %var_2_212, %var_2_214
; %var_2_232 = xor i64 %var_2_229, %var_2_231
; Matched:%var_2_216:  %var_2_216 = add nuw nsw i64 %var_2_215, %var_2_212
; %var_2_233 = add nuw nsw i64 %var_2_232, %var_2_229
; Matched:%var_2_217:  %var_2_217 = icmp eq i64 %var_2_216, 2
; %var_2_234 = icmp eq i64 %var_2_233, 2
; Matched:%var_2_218:  %var_2_218 = zext i1 %var_2_217 to i8
; %var_2_235 = zext i1 %var_2_234 to i8
; Matched:\<badref\>:  store i8 %var_2_218, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_235, i8* %var_2_38, align 1
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_195, 5
; %var_2_236 = add i64 %var_2_212, 5
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8
; store i64 %var_2_236, i64* %var_2_3, align 8
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_196, 40
; %var_2_237 = add i64 %var_2_213, 40
; Matched:%var_2_221:  %var_2_221 = inttoptr i64 %var_2_197 to i64*
; %var_2_238 = inttoptr i64 %var_2_214 to i64*
; Matched:%var_2_222:  %var_2_222 = load i64, i64* %var_2_221, align 8
; %var_2_239 = load i64, i64* %var_2_238, align 8
; Matched:\<badref\>:  store i64 %var_2_222, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_239, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_220, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_237, i64* %var_2_6, align 8
; Matched:%var_2_223:  %var_2_223 = add i64 %var_2_195, 6
; %var_2_240 = add i64 %var_2_212, 6
; Matched:\<badref\>:  store i64 %var_2_223, i64* %PC, align 8
; store i64 %var_2_240, i64* %var_2_3, align 8
; Matched:%var_2_224:  %var_2_224 = inttoptr i64 %var_2_220 to i64*
; %var_2_241 = inttoptr i64 %var_2_237 to i64*
; Matched:%var_2_225:  %var_2_225 = load i64, i64* %var_2_224, align 8
; %var_2_242 = load i64, i64* %var_2_241, align 8
; Matched:\<badref\>:  store i64 %var_2_225, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_242, i64* %var_2_3, align 8
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_196, 48
; %var_2_243 = add i64 %var_2_213, 48
; Matched:\<badref\>:  store i64 %var_2_226, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm3__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsd2ss_0x61a088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load double, double* bitcast (%G_0x61a088_type* @G_0x61a088 to double*), align 8
  %13 = fptrunc double %12 to float
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
define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._ZN28custom_sub_multiple_variableIfE8do_shiftEfffff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movss_0x7061__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x7061__rip__type* @G_0x7061__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_callq_._Z15tolerance_equalIfEbRT_S1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ce84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x414b2e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414b2e_type* @G__0x414b2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x61a0a8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x61a0a8_type* @G_0x61a0a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
