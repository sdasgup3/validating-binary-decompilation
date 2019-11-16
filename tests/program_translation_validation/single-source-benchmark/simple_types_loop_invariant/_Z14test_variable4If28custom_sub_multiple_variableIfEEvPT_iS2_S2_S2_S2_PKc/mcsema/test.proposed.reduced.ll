; ModuleID = '/tmp/tmpknf66yx9-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x61a080_type = type <{ [4 x i8] }>
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
@G_0x61a080 = local_unnamed_addr global %G_0x61a080_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400e60._Z11start_timerv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cdc0._ZN28custom_sub_multiple_variableIfE8do_shiftEfffff(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ce00._Z26check_shifted_variable_sumIf28custom_sub_multiple_variableIfEEvT_S2_S2_S2_S2_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400e80._Z5timerv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400820._Z13record_resultdPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @_Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -72
; %var_2_11 = add i64 %var_2_7, -72
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = icmp ult i64 %var_2_12, 64
; %var_2_12 = icmp ult i64 %var_2_8, 64
; Matched:%var_2_17:  %var_2_17 = zext i1 %var_2_16 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_18:  %var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
; Matched:%var_2_30:  %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
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
; Matched:%var_2_36:  %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
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
; Matched:%var_2_42:  %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI.i101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_11, -16
; %var_2_39 = add i64 %var_2_7, -16
; Matched:%var_2_44:  %var_2_44 = load i64, i64* %RDI, align 8
; %var_2_40 = load i64, i64* %RDI.i101, align 8
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_14, 11
; %var_2_41 = add i64 %var_2_10, 11
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_41, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_43 to i64*
; %var_2_42 = inttoptr i64 %var_2_39 to i64*
; Matched:\<badref\>:  store i64 %var_2_44, i64* %var_2_46, align 8
; store i64 %var_2_40, i64* %var_2_42, align 8
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %ESI = bitcast %union.anon* %var_2_3 to i32*
; %ESI.i = bitcast %union.anon* %var_2_43 to i32*
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %RBP, align 8
; %var_2_44 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, -12
; %var_2_45 = add i64 %var_2_44, -12
; Matched:%var_2_49:  %var_2_49 = load i32, i32* %ESI, align 4
; %var_2_46 = load i32, i32* %ESI.i, align 4
%var_2_47 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 3
; %var_2_48 = add i64 %var_2_47, 3
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8
; store i64 %var_2_48, i64* %var_2_3, align 8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_48 to i32*
; %var_2_49 = inttoptr i64 %var_2_45 to i32*
; Matched:\<badref\>:  store i32 %var_2_49, i32* %var_2_52, align 4
; store i32 %var_2_46, i32* %var_2_49, align 4
%var_2_50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_53:  %var_2_53 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, -16
; %var_2_52 = add i64 %var_2_51, -16
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_53 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, 5
; %var_2_54 = add i64 %var_2_53, 5
; Matched:\<badref\>:  store i64 %var_2_72, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
%var_2_55 = bitcast [32 x %union.VectorReg]* %var_2_50 to <2 x float>*
%var_2_56 = load <2 x float>, <2 x float>* %var_2_55, align 1
%var_2_57 = extractelement <2 x float> %var_2_56, i32 0
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_54 to float*
; %var_2_58 = inttoptr i64 %var_2_52 to float*
; Matched:\<badref\>:  store float %var_2_59, float* %var_2_60, align 4
; store float %var_2_57, float* %var_2_58, align 4
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %RBP, align 8
; %var_2_60 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, -20
; %var_2_61 = add i64 %var_2_60, -20
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %PC, align 8
; %var_2_62 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_72:  %var_2_72 = add i64 %var_2_71, 5
; %var_2_63 = add i64 %var_2_62, 5
; Matched:\<badref\>:  store i64 %var_2_80, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
%var_2_64 = bitcast %union.VectorReg* %var_2_59 to <2 x float>*
%var_2_65 = load <2 x float>, <2 x float>* %var_2_64, align 1
%var_2_66 = extractelement <2 x float> %var_2_65, i32 0
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_62 to float*
; %var_2_67 = inttoptr i64 %var_2_61 to float*
; Matched:\<badref\>:  store float %var_2_67, float* %var_2_68, align 4
; store float %var_2_66, float* %var_2_67, align 4
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_69:  %var_2_69 = load i64, i64* %RBP, align 8
; %var_2_69 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_70:  %var_2_70 = add i64 %var_2_69, -24
; %var_2_70 = add i64 %var_2_69, -24
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %PC, align 8
; %var_2_71 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_195, 5
; %var_2_72 = add i64 %var_2_71, 5
; Matched:\<badref\>:  store i64 %var_2_284, i64* %PC, align 8
; store i64 %var_2_72, i64* %var_2_3, align 8
%var_2_73 = bitcast %union.VectorReg* %var_2_68 to <2 x float>*
%var_2_74 = load <2 x float>, <2 x float>* %var_2_73, align 1
%var_2_75 = extractelement <2 x float> %var_2_74, i32 0
; Matched:%var_2_76:  %var_2_76 = inttoptr i64 %var_2_70 to float*
; %var_2_76 = inttoptr i64 %var_2_70 to float*
; Matched:\<badref\>:  store float %var_2_75, float* %var_2_76, align 4
; store float %var_2_75, float* %var_2_76, align 4
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_77:  %var_2_77 = load i64, i64* %RBP, align 8
; %var_2_78 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_78:  %var_2_78 = add i64 %var_2_77, -28
; %var_2_79 = add i64 %var_2_78, -28
; Matched:%var_2_79:  %var_2_79 = load i64, i64* %PC, align 8
; %var_2_80 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_80:  %var_2_80 = add i64 %var_2_79, 5
; %var_2_81 = add i64 %var_2_80, 5
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8
; store i64 %var_2_81, i64* %var_2_3, align 8
%var_2_82 = bitcast %union.VectorReg* %var_2_77 to <2 x float>*
%var_2_83 = load <2 x float>, <2 x float>* %var_2_82, align 1
%var_2_84 = extractelement <2 x float> %var_2_83, i32 0
; Matched:%var_2_84:  %var_2_84 = inttoptr i64 %var_2_78 to float*
; %var_2_85 = inttoptr i64 %var_2_79 to float*
; Matched:\<badref\>:  store float %var_2_83, float* %var_2_84, align 4
; store float %var_2_84, float* %var_2_85, align 4
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_85:  %var_2_85 = load i64, i64* %RBP, align 8
; %var_2_86 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_86:  %var_2_86 = add i64 %var_2_85, -40
; %var_2_87 = add i64 %var_2_86, -40
; Matched:%var_2_87:  %var_2_87 = load i64, i64* %RDX, align 8
; %var_2_88 = load i64, i64* %RDX.i, align 8
; Matched:%var_2_88:  %var_2_88 = load i64, i64* %PC, align 8
; %var_2_89 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_89:  %var_2_89 = add i64 %var_2_88, 4
; %var_2_90 = add i64 %var_2_89, 4
; Matched:\<badref\>:  store i64 %var_2_89, i64* %PC, align 8
; store i64 %var_2_90, i64* %var_2_3, align 8
; Matched:%var_2_90:  %var_2_90 = inttoptr i64 %var_2_86 to i64*
; %var_2_91 = inttoptr i64 %var_2_87 to i64*
; Matched:\<badref\>:  store i64 %var_2_87, i64* %var_2_90, align 8
; store i64 %var_2_88, i64* %var_2_91, align 8
%var_2_92 = load i64, i64* %var_2_3, align 8
%var_2_93 = add i64 %var_2_92, -41111
; Matched:%var_2_93:  %var_2_93 = add i64 %var_2_91, 5
; %var_2_94 = add i64 %var_2_92, 5
; Matched:%var_2_314:  %var_2_314 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_95 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_94, -8
; %var_2_96 = add i64 %var_2_95, -8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_95 to i64*
; %var_2_97 = inttoptr i64 %var_2_96 to i64*
; Matched:\<badref\>:  store i64 %var_2_93, i64* %var_2_96, align 8
; store i64 %var_2_94, i64* %var_2_97, align 8
; Matched:\<badref\>:  store i64 %var_2_95, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_96, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_92, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_93, i64* %var_2_3, align 8
%call2_40aef7 = tail call %struct.Memory* @sub_400e60._Z11start_timerv(%struct.State* %0, i64 %var_2_93, %struct.Memory* %2)
%var_2_98 = load i64, i64* %RBP.i, align 8
%var_2_99 = add i64 %var_2_98, -44
; Matched:%var_2_156:  %var_2_156 = load i64, i64* %PC, align 8
; %var_2_100 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_156, 7
; %var_2_101 = add i64 %var_2_100, 7
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_101, i64* %var_2_3, align 8
%var_2_102 = inttoptr i64 %var_2_99 to i32*
store i32 0, i32* %var_2_102, align 4
; Matched:  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; %RAX.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_103 = bitcast [32 x %union.VectorReg]* %var_2_50 to i8*
%var_2_104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_105:  %var_2_105 = bitcast [32 x %union.VectorReg]* %var_2_4 to i32*
; %var_2_105 = bitcast [32 x %union.VectorReg]* %var_2_50 to i32*
%var_2_106 = getelementptr inbounds i8, i8* %var_2_103, i64 4
; Matched:%var_2_107:  %var_2_107 = bitcast i8* %var_2_106 to i32*
; %var_2_107 = bitcast i8* %var_2_106 to i32*
; Matched:%var_2_108:  %var_2_108 = bitcast i64* %var_2_104 to i32*
; %var_2_108 = bitcast i64* %var_2_104 to i32*
%var_2_109 = getelementptr inbounds i8, i8* %var_2_103, i64 12
; Matched:%var_2_110:  %var_2_110 = bitcast i8* %var_2_109 to i32*
; %var_2_110 = bitcast i8* %var_2_109 to i32*
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_111:  %var_2_111 = bitcast [32 x %union.VectorReg]* %var_2_4 to float*
; %var_2_111 = bitcast [32 x %union.VectorReg]* %var_2_50 to float*
%var_2_112 = bitcast i8* %var_2_106 to float*
%var_2_113 = bitcast i64* %var_2_104 to float*
%var_2_114 = bitcast i8* %var_2_109 to float*
; Matched:%var_2_115:  %var_2_115 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_115 = bitcast %union.VectorReg* %var_2_59 to i8*
; Matched:%var_2_116:  %var_2_116 = bitcast %union.VectorReg* %var_2_5 to i32*
; %var_2_116 = bitcast %union.VectorReg* %var_2_59 to i32*
; Matched:%var_2_117:  %var_2_117 = getelementptr inbounds i8, i8* %var_2_115, i64 4
; %var_2_117 = getelementptr inbounds i8, i8* %var_2_115, i64 4
; Matched:%var_2_118:  %var_2_118 = bitcast i8* %var_2_117 to float*
; %var_2_118 = bitcast i8* %var_2_117 to float*
; Matched:%var_2_119:  %var_2_119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_120:  %var_2_120 = bitcast i64* %var_2_119 to float*
; %var_2_120 = bitcast i64* %var_2_119 to float*
; Matched:%var_2_121:  %var_2_121 = getelementptr inbounds i8, i8* %var_2_115, i64 12
; %var_2_121 = getelementptr inbounds i8, i8* %var_2_115, i64 12
; Matched:%var_2_122:  %var_2_122 = bitcast i8* %var_2_121 to float*
; %var_2_122 = bitcast i8* %var_2_121 to float*
; Matched:%var_2_123:  %var_2_123 = bitcast %union.VectorReg* %var_2_6 to i8*
; %var_2_123 = bitcast %union.VectorReg* %var_2_68 to i8*
; Matched:%var_2_124:  %var_2_124 = bitcast %union.VectorReg* %var_2_6 to i32*
; %var_2_124 = bitcast %union.VectorReg* %var_2_68 to i32*
; Matched:%var_2_125:  %var_2_125 = getelementptr inbounds i8, i8* %var_2_123, i64 4
; %var_2_125 = getelementptr inbounds i8, i8* %var_2_123, i64 4
; Matched:%var_2_126:  %var_2_126 = bitcast i8* %var_2_125 to float*
; %var_2_126 = bitcast i8* %var_2_125 to float*
; Matched:%var_2_127:  %var_2_127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_128:  %var_2_128 = bitcast i64* %var_2_127 to float*
; %var_2_128 = bitcast i64* %var_2_127 to float*
; Matched:%var_2_129:  %var_2_129 = getelementptr inbounds i8, i8* %var_2_123, i64 12
; %var_2_129 = getelementptr inbounds i8, i8* %var_2_123, i64 12
; Matched:%var_2_130:  %var_2_130 = bitcast i8* %var_2_129 to float*
; %var_2_130 = bitcast i8* %var_2_129 to float*
; Matched:%var_2_131:  %var_2_131 = bitcast %union.VectorReg* %var_2_7 to i8*
; %var_2_131 = bitcast %union.VectorReg* %var_2_77 to i8*
; Matched:%var_2_132:  %var_2_132 = bitcast %union.VectorReg* %var_2_7 to i32*
; %var_2_132 = bitcast %union.VectorReg* %var_2_77 to i32*
; Matched:%var_2_133:  %var_2_133 = getelementptr inbounds i8, i8* %var_2_131, i64 4
; %var_2_133 = getelementptr inbounds i8, i8* %var_2_131, i64 4
; Matched:%var_2_134:  %var_2_134 = bitcast i8* %var_2_133 to float*
; %var_2_134 = bitcast i8* %var_2_133 to float*
; Matched:%var_2_135:  %var_2_135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_136:  %var_2_136 = bitcast i64* %var_2_135 to float*
; %var_2_136 = bitcast i64* %var_2_135 to float*
; Matched:%var_2_137:  %var_2_137 = getelementptr inbounds i8, i8* %var_2_131, i64 12
; %var_2_137 = getelementptr inbounds i8, i8* %var_2_131, i64 12
; Matched:%var_2_138:  %var_2_138 = bitcast i8* %var_2_137 to float*
; %var_2_138 = bitcast i8* %var_2_137 to float*
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_139:  %var_2_139 = bitcast %union.VectorReg* %var_2_8 to i8*
; %var_2_140 = bitcast %union.VectorReg* %var_2_139 to i8*
; Matched:%var_2_140:  %var_2_140 = bitcast %union.VectorReg* %var_2_8 to i32*
; %var_2_141 = bitcast %union.VectorReg* %var_2_139 to i32*
; Matched:%var_2_141:  %var_2_141 = getelementptr inbounds i8, i8* %var_2_139, i64 4
; %var_2_142 = getelementptr inbounds i8, i8* %var_2_140, i64 4
; Matched:%var_2_142:  %var_2_142 = bitcast i8* %var_2_141 to float*
; %var_2_143 = bitcast i8* %var_2_142 to float*
; Matched:%var_2_143:  %var_2_143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_144:  %var_2_144 = bitcast i64* %var_2_143 to float*
; %var_2_145 = bitcast i64* %var_2_144 to float*
; Matched:%var_2_145:  %var_2_145 = getelementptr inbounds i8, i8* %var_2_139, i64 12
; %var_2_146 = getelementptr inbounds i8, i8* %var_2_140, i64 12
; Matched:%var_2_146:  %var_2_146 = bitcast i8* %var_2_145 to float*
; %var_2_147 = bitcast i8* %var_2_146 to float*
%var_2_148 = bitcast i64* %var_2_104 to <2 x i32>*
%.pre = load i64, i64* %var_2_3, align 8
%var_2_149 = bitcast [32 x %union.VectorReg]* %var_2_50 to <4 x i32>*
  br label %block_.L_40af03

block_.L_40af03:                                  ; preds = %block_.L_40af6c, %entry
%var_2_150 = phi i64 [ %var_2_371, %block_.L_40af6c ], [ %.pre, %entry ]
%var_2_151 = load i64, i64* %RBP.i, align 8
%var_2_152 = add i64 %var_2_151, -44
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_350, 3
; %var_2_153 = add i64 %var_2_150, 3
; Matched:\<badref\>:  store i64 %var_2_353, i64* %PC, align 8
; store i64 %var_2_153, i64* %var_2_3, align 8
%var_2_154 = inttoptr i64 %var_2_152 to i32*
%var_2_155 = load i32, i32* %var_2_154, align 4
; Matched:%var_2_356:  %var_2_356 = zext i32 %var_2_355 to i64
; %var_2_156 = zext i32 %var_2_155 to i64
; Matched:\<badref\>:  store i64 %var_2_356, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_156, i64* %RAX.i82, align 8
%var_2_157 = load i32, i32* bitcast (%G_0x61a080_type* @G_0x61a080 to i32*), align 8
%var_2_158 = sub i32 %var_2_155, %var_2_157
; Matched:%var_2_359:  %var_2_359 = icmp ult i32 %var_2_355, %var_2_357
; %var_2_159 = icmp ult i32 %var_2_155, %var_2_157
; Matched:%var_2_360:  %var_2_360 = zext i1 %var_2_359 to i8
; %var_2_160 = zext i1 %var_2_159 to i8
; Matched:\<badref\>:  store i8 %var_2_360, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_160, i8* %var_2_14, align 1
; Matched:%var_2_361:  %var_2_361 = and i32 %var_2_358, 255
; %var_2_161 = and i32 %var_2_158, 255
; Matched:%var_2_362:  %var_2_362 = tail call i32 @llvm.ctpop.i32(i32 %var_2_361) #12
; %var_2_162 = tail call i32 @llvm.ctpop.i32(i32 %var_2_161)
; Matched:%var_2_363:  %var_2_363 = trunc i32 %var_2_362 to i8
; %var_2_163 = trunc i32 %var_2_162 to i8
; Matched:%var_2_364:  %var_2_364 = and i8 %var_2_363, 1
; %var_2_164 = and i8 %var_2_163, 1
; Matched:%var_2_365:  %var_2_365 = xor i8 %var_2_364, 1
; %var_2_165 = xor i8 %var_2_164, 1
; Matched:\<badref\>:  store i8 %var_2_365, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_165, i8* %var_2_21, align 1
; Matched:%var_2_366:  %var_2_366 = xor i32 %var_2_357, %var_2_355
; %var_2_166 = xor i32 %var_2_157, %var_2_155
; Matched:%var_2_367:  %var_2_367 = xor i32 %var_2_366, %var_2_358
; %var_2_167 = xor i32 %var_2_166, %var_2_158
; Matched:%var_2_368:  %var_2_368 = lshr i32 %var_2_367, 4
; %var_2_168 = lshr i32 %var_2_167, 4
; Matched:%var_2_369:  %var_2_369 = trunc i32 %var_2_368 to i8
; %var_2_169 = trunc i32 %var_2_168 to i8
; Matched:%var_2_370:  %var_2_370 = and i8 %var_2_369, 1
; %var_2_170 = and i8 %var_2_169, 1
; Matched:\<badref\>:  store i8 %var_2_370, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_170, i8* %var_2_26, align 1
; Matched:%var_2_371:  %var_2_371 = icmp eq i32 %var_2_358, 0
; %var_2_171 = icmp eq i32 %var_2_158, 0
; Matched:%var_2_372:  %var_2_372 = zext i1 %var_2_371 to i8
; %var_2_172 = zext i1 %var_2_171 to i8
; Matched:\<badref\>:  store i8 %var_2_372, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_172, i8* %var_2_29, align 1
%var_2_173 = lshr i32 %var_2_158, 31
%var_2_174 = trunc i32 %var_2_173 to i8
; Matched:\<badref\>:  store i8 %var_2_374, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_174, i8* %var_2_32, align 1
%var_2_175 = lshr i32 %var_2_155, 31
%var_2_176 = lshr i32 %var_2_157, 31
%var_2_177 = xor i32 %var_2_176, %var_2_175
%var_2_178 = xor i32 %var_2_173, %var_2_175
%var_2_179 = add nuw nsw i32 %var_2_178, %var_2_177
%var_2_180 = icmp eq i32 %var_2_179, 2
; Matched:%var_2_381:  %var_2_381 = zext i1 %var_2_380 to i8
; %var_2_181 = zext i1 %var_2_180 to i8
; Matched:\<badref\>:  store i8 %var_2_381, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_181, i8* %var_2_38, align 1
%var_2_182 = icmp ne i8 %var_2_174, 0
%var_2_183 = xor i1 %var_2_182, %var_2_180
%.v = select i1 %var_2_183, i64 16, i64 149
%var_2_184 = add i64 %var_2_150, %.v
; Matched:\<badref\>:  store i64 %var_2_384, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_184, i64* %var_2_3, align 8
br i1 %var_2_183, label %block_40af13, label %block_.L_40af98

block_40af13:                                     ; preds = %block_.L_40af03
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_149, align 1
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_351, -48
; %var_2_185 = add i64 %var_2_151, -48
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_384, 8
; %var_2_186 = add i64 %var_2_184, 8
; Matched:\<badref\>:  store i64 %var_2_150, i64* %PC, align 8
; store i64 %var_2_186, i64* %var_2_3, align 8
%var_2_187 = load <2 x float>, <2 x float>* %var_2_55, align 1
%var_2_188 = extractelement <2 x float> %var_2_187, i32 0
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_149 to float*
; %var_2_189 = inttoptr i64 %var_2_185 to float*
; Matched:\<badref\>:  store float %var_2_209, float* %var_2_199, align 4
; store float %var_2_188, float* %var_2_189, align 4
%var_2_190 = load i64, i64* %RBP.i, align 8
%var_2_191 = add i64 %var_2_190, -52
; Matched:%var_2_100:  %var_2_100 = load i64, i64* %PC, align 8
; %var_2_192 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_100, 7
; %var_2_193 = add i64 %var_2_192, 7
; Matched:\<badref\>:  store i64 %var_2_101, i64* %PC, align 8
; store i64 %var_2_193, i64* %var_2_3, align 8
%var_2_194 = inttoptr i64 %var_2_191 to i32*
store i32 0, i32* %var_2_194, align 4
; Matched:  %.pre6 = load i64, i64* %PC, align 8
; %.pre6 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40af22

block_.L_40af22:                                  ; preds = %block_40af2e, %block_40af13
; Matched:%var_2_385:  %var_2_385 = phi i64 [ %var_2_241, %block_40af2e ], [ %.pre6, %block_40af13 ]
; %var_2_195 = phi i64 [ %var_2_314, %block_40af2e ], [ %.pre6, %block_40af13 ]
%var_2_196 = load i64, i64* %RBP.i, align 8
%var_2_197 = add i64 %var_2_196, -52
; Matched:%var_2_388:  %var_2_388 = add i64 %var_2_385, 3
; %var_2_198 = add i64 %var_2_195, 3
; Matched:\<badref\>:  store i64 %var_2_388, i64* %PC, align 8
; store i64 %var_2_198, i64* %var_2_3, align 8
%var_2_199 = inttoptr i64 %var_2_197 to i32*
%var_2_200 = load i32, i32* %var_2_199, align 4
; Matched:%var_2_391:  %var_2_391 = zext i32 %var_2_390 to i64
; %var_2_201 = zext i32 %var_2_200 to i64
; Matched:\<badref\>:  store i64 %var_2_391, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_201, i64* %RAX.i82, align 8
%var_2_202 = add i64 %var_2_196, -12
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_385, 6
; %var_2_203 = add i64 %var_2_195, 6
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8
; store i64 %var_2_203, i64* %var_2_3, align 8
%var_2_204 = inttoptr i64 %var_2_202 to i32*
%var_2_205 = load i32, i32* %var_2_204, align 4
%var_2_206 = sub i32 %var_2_200, %var_2_205
; Matched:%var_2_397:  %var_2_397 = icmp ult i32 %var_2_390, %var_2_395
; %var_2_207 = icmp ult i32 %var_2_200, %var_2_205
; Matched:%var_2_398:  %var_2_398 = zext i1 %var_2_397 to i8
; %var_2_208 = zext i1 %var_2_207 to i8
; Matched:\<badref\>:  store i8 %var_2_398, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_208, i8* %var_2_14, align 1
; Matched:%var_2_399:  %var_2_399 = and i32 %var_2_396, 255
; %var_2_209 = and i32 %var_2_206, 255
; Matched:%var_2_400:  %var_2_400 = tail call i32 @llvm.ctpop.i32(i32 %var_2_399) #12
; %var_2_210 = tail call i32 @llvm.ctpop.i32(i32 %var_2_209)
; Matched:%var_2_401:  %var_2_401 = trunc i32 %var_2_400 to i8
; %var_2_211 = trunc i32 %var_2_210 to i8
; Matched:%var_2_402:  %var_2_402 = and i8 %var_2_401, 1
; %var_2_212 = and i8 %var_2_211, 1
; Matched:%var_2_403:  %var_2_403 = xor i8 %var_2_402, 1
; %var_2_213 = xor i8 %var_2_212, 1
; Matched:\<badref\>:  store i8 %var_2_403, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_213, i8* %var_2_21, align 1
; Matched:%var_2_404:  %var_2_404 = xor i32 %var_2_395, %var_2_390
; %var_2_214 = xor i32 %var_2_205, %var_2_200
; Matched:%var_2_405:  %var_2_405 = xor i32 %var_2_404, %var_2_396
; %var_2_215 = xor i32 %var_2_214, %var_2_206
; Matched:%var_2_406:  %var_2_406 = lshr i32 %var_2_405, 4
; %var_2_216 = lshr i32 %var_2_215, 4
; Matched:%var_2_407:  %var_2_407 = trunc i32 %var_2_406 to i8
; %var_2_217 = trunc i32 %var_2_216 to i8
; Matched:%var_2_408:  %var_2_408 = and i8 %var_2_407, 1
; %var_2_218 = and i8 %var_2_217, 1
; Matched:\<badref\>:  store i8 %var_2_408, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_218, i8* %var_2_26, align 1
; Matched:%var_2_409:  %var_2_409 = icmp eq i32 %var_2_396, 0
; %var_2_219 = icmp eq i32 %var_2_206, 0
; Matched:%var_2_410:  %var_2_410 = zext i1 %var_2_409 to i8
; %var_2_220 = zext i1 %var_2_219 to i8
; Matched:\<badref\>:  store i8 %var_2_410, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_220, i8* %var_2_29, align 1
%var_2_221 = lshr i32 %var_2_206, 31
%var_2_222 = trunc i32 %var_2_221 to i8
; Matched:\<badref\>:  store i8 %var_2_412, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_222, i8* %var_2_32, align 1
%var_2_223 = lshr i32 %var_2_200, 31
%var_2_224 = lshr i32 %var_2_205, 31
%var_2_225 = xor i32 %var_2_224, %var_2_223
%var_2_226 = xor i32 %var_2_221, %var_2_223
%var_2_227 = add nuw nsw i32 %var_2_226, %var_2_225
%var_2_228 = icmp eq i32 %var_2_227, 2
; Matched:%var_2_419:  %var_2_419 = zext i1 %var_2_418 to i8
; %var_2_229 = zext i1 %var_2_228 to i8
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_229, i8* %var_2_38, align 1
%var_2_230 = icmp ne i8 %var_2_222, 0
%var_2_231 = xor i1 %var_2_230, %var_2_228
; Matched:  %.v7 = select i1 %var_2_421, i64 12, i64 74
; %.v7 = select i1 %var_2_231, i64 12, i64 74
; Matched:%var_2_422:  %var_2_422 = add i64 %var_2_385, %.v7
; %var_2_232 = add i64 %var_2_195, %.v7
; Matched:\<badref\>:  store i64 %var_2_422, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_232, i64* %var_2_3, align 8
br i1 %var_2_231, label %block_40af2e, label %block_.L_40af6c

block_40af2e:                                     ; preds = %block_.L_40af22
; Matched:%var_2_159:  %var_2_159 = add i64 %var_2_386, -8
; %var_2_233 = add i64 %var_2_196, -8
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_422, 4
; %var_2_234 = add i64 %var_2_232, 4
; Matched:\<badref\>:  store i64 %var_2_160, i64* %PC, align 8
; store i64 %var_2_234, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = inttoptr i64 %var_2_159 to i64*
; %var_2_235 = inttoptr i64 %var_2_233 to i64*
; Matched:%var_2_162:  %var_2_162 = load i64, i64* %var_2_161, align 8
; %var_2_236 = load i64, i64* %var_2_235, align 8
; Matched:\<badref\>:  store i64 %var_2_162, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_236, i64* %RAX.i82, align 8
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_422, 8
; %var_2_237 = add i64 %var_2_232, 8
; Matched:\<badref\>:  store i64 %var_2_163, i64* %PC, align 8
; store i64 %var_2_237, i64* %var_2_3, align 8
; Matched:%var_2_164:  %var_2_164 = load i32, i32* %var_2_389, align 4
; %var_2_238 = load i32, i32* %var_2_199, align 4
; Matched:%var_2_165:  %var_2_165 = sext i32 %var_2_164 to i64
; %var_2_239 = sext i32 %var_2_238 to i64
; Matched:\<badref\>:  store i64 %var_2_165, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_239, i64* %RCX.i58, align 8
; Matched:%var_2_166:  %var_2_166 = shl nsw i64 %var_2_165, 2
; %var_2_240 = shl nsw i64 %var_2_239, 2
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_166, %var_2_162
; %var_2_241 = add i64 %var_2_240, %var_2_236
; Matched:%var_2_168:  %var_2_168 = add i64 %var_2_422, 13
; %var_2_242 = add i64 %var_2_232, 13
; Matched:\<badref\>:  store i64 %var_2_168, i64* %PC, align 8
; store i64 %var_2_242, i64* %var_2_3, align 8
; Matched:%var_2_169:  %var_2_169 = inttoptr i64 %var_2_167 to i32*
; %var_2_243 = inttoptr i64 %var_2_241 to i32*
; Matched:%var_2_170:  %var_2_170 = load i32, i32* %var_2_169, align 4
; %var_2_244 = load i32, i32* %var_2_243, align 4
; Matched:\<badref\>:  store i32 %var_2_170, i32* %var_2_105, align 1, !tbaa !1285
; store i32 %var_2_244, i32* %var_2_105, align 1
store float 0.000000e+00, float* %var_2_112, align 1
store float 0.000000e+00, float* %var_2_113, align 1
store float 0.000000e+00, float* %var_2_114, align 1
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_386, -16
; %var_2_245 = add i64 %var_2_196, -16
; Matched:%var_2_172:  %var_2_172 = add i64 %var_2_422, 18
; %var_2_246 = add i64 %var_2_232, 18
; Matched:\<badref\>:  store i64 %var_2_172, i64* %PC, align 8
; store i64 %var_2_246, i64* %var_2_3, align 8
; Matched:%var_2_173:  %var_2_173 = inttoptr i64 %var_2_171 to i32*
; %var_2_247 = inttoptr i64 %var_2_245 to i32*
; Matched:%var_2_174:  %var_2_174 = load i32, i32* %var_2_173, align 4
; %var_2_248 = load i32, i32* %var_2_247, align 4
; Matched:\<badref\>:  store i32 %var_2_174, i32* %var_2_116, align 1, !tbaa !1285
; store i32 %var_2_248, i32* %var_2_116, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_118, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_118, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_120, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_120, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_122, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_122, align 1
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_386, -20
; %var_2_249 = add i64 %var_2_196, -20
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_422, 23
; %var_2_250 = add i64 %var_2_232, 23
; Matched:\<badref\>:  store i64 %var_2_176, i64* %PC, align 8
; store i64 %var_2_250, i64* %var_2_3, align 8
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_175 to i32*
; %var_2_251 = inttoptr i64 %var_2_249 to i32*
; Matched:%var_2_178:  %var_2_178 = load i32, i32* %var_2_177, align 4
; %var_2_252 = load i32, i32* %var_2_251, align 4
; Matched:\<badref\>:  store i32 %var_2_178, i32* %var_2_124, align 1, !tbaa !1285
; store i32 %var_2_252, i32* %var_2_124, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_126, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_126, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_128, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_128, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_130, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_130, align 1
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_386, -24
; %var_2_253 = add i64 %var_2_196, -24
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_422, 28
; %var_2_254 = add i64 %var_2_232, 28
; Matched:\<badref\>:  store i64 %var_2_180, i64* %PC, align 8
; store i64 %var_2_254, i64* %var_2_3, align 8
; Matched:%var_2_181:  %var_2_181 = inttoptr i64 %var_2_179 to i32*
; %var_2_255 = inttoptr i64 %var_2_253 to i32*
; Matched:%var_2_182:  %var_2_182 = load i32, i32* %var_2_181, align 4
; %var_2_256 = load i32, i32* %var_2_255, align 4
; Matched:\<badref\>:  store i32 %var_2_182, i32* %var_2_132, align 1, !tbaa !1285
; store i32 %var_2_256, i32* %var_2_132, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_134, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_134, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_136, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_136, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_138, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_138, align 1
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_386, -28
; %var_2_257 = add i64 %var_2_196, -28
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_422, 33
; %var_2_258 = add i64 %var_2_232, 33
; Matched:\<badref\>:  store i64 %var_2_184, i64* %PC, align 8
; store i64 %var_2_258, i64* %var_2_3, align 8
; Matched:%var_2_185:  %var_2_185 = inttoptr i64 %var_2_183 to i32*
; %var_2_259 = inttoptr i64 %var_2_257 to i32*
; Matched:%var_2_186:  %var_2_186 = load i32, i32* %var_2_185, align 4
; %var_2_260 = load i32, i32* %var_2_259, align 4
; Matched:\<badref\>:  store i32 %var_2_186, i32* %var_2_140, align 1, !tbaa !1285
; store i32 %var_2_260, i32* %var_2_141, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_142, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_143, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_144, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_145, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_146, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_147, align 1
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_422, 7826
; %var_2_261 = add i64 %var_2_232, 7826
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_422, 38
; %var_2_262 = add i64 %var_2_232, 38
; Matched:%var_2_256:  %var_2_256 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_263 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_256, -8
; %var_2_264 = add i64 %var_2_263, -8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_190 to i64*
; %var_2_265 = inttoptr i64 %var_2_264 to i64*
; Matched:\<badref\>:  store i64 %var_2_188, i64* %var_2_191, align 8
; store i64 %var_2_262, i64* %var_2_265, align 8
; Matched:\<badref\>:  store i64 %var_2_257, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_264, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_187, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_261, i64* %var_2_3, align 8
; Matched:%var_2_192:  %var_2_192 = tail call %struct.Memory* @sub_40cdc0__ZN28custom_sub_multiple_variableIfE8do_shiftEfffff_renamed_(%struct.State* nonnull %0, i64 %var_2_187, %struct.Memory* %var_2_97)
; %call2_40af4f = tail call %struct.Memory* @sub_40cdc0._ZN28custom_sub_multiple_variableIfE8do_shiftEfffff(%struct.State* nonnull %0, i64 %var_2_261, %struct.Memory* %call2_40aef7)
; Matched:%var_2_193:  %var_2_193 = load i64, i64* %RBP, align 8
; %var_2_266 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_193, -48
; %var_2_267 = add i64 %var_2_266, -48
; Matched:%var_2_55:  %var_2_55 = load i64, i64* %PC, align 8
; %var_2_268 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 5
; %var_2_269 = add i64 %var_2_268, 5
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_269, i64* %var_2_3, align 8
%var_2_270 = load <2 x float>, <2 x float>* %var_2_55, align 1
%var_2_271 = load <2 x i32>, <2 x i32>* %var_2_148, align 1
; Matched:%var_2_199:  %var_2_199 = inttoptr i64 %var_2_194 to float*
; %var_2_272 = inttoptr i64 %var_2_267 to float*
; Matched:%var_2_200:  %var_2_200 = load float, float* %var_2_199, align 4
; %var_2_273 = load float, float* %var_2_272, align 4
%var_2_274 = extractelement <2 x float> %var_2_270, i32 0
; Matched:%var_2_202:  %var_2_202 = fadd float %var_2_201, %var_2_200
; %var_2_275 = fadd float %var_2_274, %var_2_273
; Matched:\<badref\>:  store float %var_2_202, float* %var_2_111, align 1, !tbaa !1285
; store float %var_2_275, float* %var_2_111, align 1
%var_2_276 = bitcast <2 x float> %var_2_270 to <2 x i32>
%var_2_277 = extractelement <2 x i32> %var_2_276, i32 1
; Matched:\<badref\>:  store i32 %var_2_204, i32* %var_2_107, align 1, !tbaa !1285
; store i32 %var_2_277, i32* %var_2_107, align 1
%var_2_278 = extractelement <2 x i32> %var_2_271, i32 0
; Matched:\<badref\>:  store i32 %var_2_205, i32* %var_2_108, align 1, !tbaa !1285
; store i32 %var_2_278, i32* %var_2_108, align 1
%var_2_279 = extractelement <2 x i32> %var_2_271, i32 1
; Matched:\<badref\>:  store i32 %var_2_206, i32* %var_2_110, align 1, !tbaa !1285
; store i32 %var_2_279, i32* %var_2_110, align 1
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_195, 10
; %var_2_280 = add i64 %var_2_268, 10
; Matched:\<badref\>:  store i64 %var_2_207, i64* %PC, align 8
; store i64 %var_2_280, i64* %var_2_3, align 8
%var_2_281 = load <2 x float>, <2 x float>* %var_2_55, align 1
%var_2_282 = extractelement <2 x float> %var_2_281, i32 0
; Matched:\<badref\>:  store float %var_2_152, float* %var_2_153, align 4
; store float %var_2_282, float* %var_2_272, align 4
; Matched:%var_2_210:  %var_2_210 = load i64, i64* %RBP, align 8
; %var_2_283 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_211:  %var_2_211 = add i64 %var_2_210, -52
; %var_2_284 = add i64 %var_2_283, -52
%var_2_285 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_212, 3
; %var_2_286 = add i64 %var_2_285, 3
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
; Matched:%var_2_214:  %var_2_214 = inttoptr i64 %var_2_211 to i32*
; %var_2_287 = inttoptr i64 %var_2_284 to i32*
; Matched:%var_2_215:  %var_2_215 = load i32, i32* %var_2_214, align 4
; %var_2_288 = load i32, i32* %var_2_287, align 4
; Matched:%var_2_216:  %var_2_216 = add i32 %var_2_215, 1
; %var_2_289 = add i32 %var_2_288, 1
; Matched:%var_2_217:  %var_2_217 = zext i32 %var_2_216 to i64
; %var_2_290 = zext i32 %var_2_289 to i64
; Matched:\<badref\>:  store i64 %var_2_217, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_290, i64* %RAX.i82, align 8
; Matched:%var_2_218:  %var_2_218 = icmp eq i32 %var_2_215, -1
; %var_2_291 = icmp eq i32 %var_2_288, -1
; Matched:%var_2_219:  %var_2_219 = icmp eq i32 %var_2_216, 0
; %var_2_292 = icmp eq i32 %var_2_289, 0
; Matched:%var_2_220:  %var_2_220 = or i1 %var_2_218, %var_2_219
; %var_2_293 = or i1 %var_2_291, %var_2_292
; Matched:%var_2_221:  %var_2_221 = zext i1 %var_2_220 to i8
; %var_2_294 = zext i1 %var_2_293 to i8
; Matched:\<badref\>:  store i8 %var_2_221, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_294, i8* %var_2_14, align 1
; Matched:%var_2_222:  %var_2_222 = and i32 %var_2_216, 255
; %var_2_295 = and i32 %var_2_289, 255
; Matched:%var_2_223:  %var_2_223 = tail call i32 @llvm.ctpop.i32(i32 %var_2_222) #12
; %var_2_296 = tail call i32 @llvm.ctpop.i32(i32 %var_2_295)
; Matched:%var_2_224:  %var_2_224 = trunc i32 %var_2_223 to i8
; %var_2_297 = trunc i32 %var_2_296 to i8
; Matched:%var_2_225:  %var_2_225 = and i8 %var_2_224, 1
; %var_2_298 = and i8 %var_2_297, 1
; Matched:%var_2_226:  %var_2_226 = xor i8 %var_2_225, 1
; %var_2_299 = xor i8 %var_2_298, 1
; Matched:\<badref\>:  store i8 %var_2_226, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_299, i8* %var_2_21, align 1
; Matched:%var_2_227:  %var_2_227 = xor i32 %var_2_216, %var_2_215
; %var_2_300 = xor i32 %var_2_289, %var_2_288
; Matched:%var_2_228:  %var_2_228 = lshr i32 %var_2_227, 4
; %var_2_301 = lshr i32 %var_2_300, 4
; Matched:%var_2_229:  %var_2_229 = trunc i32 %var_2_228 to i8
; %var_2_302 = trunc i32 %var_2_301 to i8
; Matched:%var_2_230:  %var_2_230 = and i8 %var_2_229, 1
; %var_2_303 = and i8 %var_2_302, 1
; Matched:\<badref\>:  store i8 %var_2_230, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_303, i8* %var_2_26, align 1
; Matched:%var_2_231:  %var_2_231 = zext i1 %var_2_219 to i8
; %var_2_304 = zext i1 %var_2_292 to i8
; Matched:\<badref\>:  store i8 %var_2_231, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_304, i8* %var_2_29, align 1
; Matched:%var_2_232:  %var_2_232 = lshr i32 %var_2_216, 31
; %var_2_305 = lshr i32 %var_2_289, 31
; Matched:%var_2_233:  %var_2_233 = trunc i32 %var_2_232 to i8
; %var_2_306 = trunc i32 %var_2_305 to i8
; Matched:\<badref\>:  store i8 %var_2_233, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_306, i8* %var_2_32, align 1
; Matched:%var_2_234:  %var_2_234 = lshr i32 %var_2_215, 31
; %var_2_307 = lshr i32 %var_2_288, 31
; Matched:%var_2_235:  %var_2_235 = xor i32 %var_2_232, %var_2_234
; %var_2_308 = xor i32 %var_2_305, %var_2_307
; Matched:%var_2_236:  %var_2_236 = add nuw nsw i32 %var_2_235, %var_2_232
; %var_2_309 = add nuw nsw i32 %var_2_308, %var_2_305
; Matched:%var_2_237:  %var_2_237 = icmp eq i32 %var_2_236, 2
; %var_2_310 = icmp eq i32 %var_2_309, 2
; Matched:%var_2_238:  %var_2_238 = zext i1 %var_2_237 to i8
; %var_2_311 = zext i1 %var_2_310 to i8
; Matched:\<badref\>:  store i8 %var_2_238, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_311, i8* %var_2_38, align 1
; Matched:%var_2_239:  %var_2_239 = add i64 %var_2_212, 9
; %var_2_312 = add i64 %var_2_285, 9
; Matched:\<badref\>:  store i64 %var_2_239, i64* %PC, align 8
; store i64 %var_2_312, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_216, i32* %var_2_214, align 4
; store i32 %var_2_289, i32* %var_2_287, align 4
; Matched:%var_2_240:  %var_2_240 = load i64, i64* %PC, align 8
; %var_2_313 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_240, -69
; %var_2_314 = add i64 %var_2_313, -69
; Matched:\<badref\>:  store i64 %var_2_241, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_314, i64* %var_2_3, align 8
  br label %block_.L_40af22

block_.L_40af6c:                                  ; preds = %block_.L_40af22
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_386, -48
; %var_2_315 = add i64 %var_2_196, -48
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_422, 5
; %var_2_316 = add i64 %var_2_232, 5
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8
; store i64 %var_2_316, i64* %var_2_3, align 8
; Matched:%var_2_294:  %var_2_294 = inttoptr i64 %var_2_292 to i32*
; %var_2_317 = inttoptr i64 %var_2_315 to i32*
; Matched:%var_2_295:  %var_2_295 = load i32, i32* %var_2_294, align 4
; %var_2_318 = load i32, i32* %var_2_317, align 4
; Matched:\<badref\>:  store i32 %var_2_295, i32* %var_2_105, align 1, !tbaa !1285
; store i32 %var_2_318, i32* %var_2_105, align 1
store float 0.000000e+00, float* %var_2_112, align 1
store float 0.000000e+00, float* %var_2_113, align 1
store float 0.000000e+00, float* %var_2_114, align 1
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_386, -16
; %var_2_319 = add i64 %var_2_196, -16
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_422, 10
; %var_2_320 = add i64 %var_2_232, 10
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_320, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_296 to i32*
; %var_2_321 = inttoptr i64 %var_2_319 to i32*
; Matched:%var_2_299:  %var_2_299 = load i32, i32* %var_2_298, align 4
; %var_2_322 = load i32, i32* %var_2_321, align 4
; Matched:\<badref\>:  store i32 %var_2_299, i32* %var_2_116, align 1, !tbaa !1285
; store i32 %var_2_322, i32* %var_2_116, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_118, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_118, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_120, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_120, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_122, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_122, align 1
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_386, -20
; %var_2_323 = add i64 %var_2_196, -20
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_422, 15
; %var_2_324 = add i64 %var_2_232, 15
; Matched:\<badref\>:  store i64 %var_2_301, i64* %PC, align 8
; store i64 %var_2_324, i64* %var_2_3, align 8
; Matched:%var_2_302:  %var_2_302 = inttoptr i64 %var_2_300 to i32*
; %var_2_325 = inttoptr i64 %var_2_323 to i32*
; Matched:%var_2_303:  %var_2_303 = load i32, i32* %var_2_302, align 4
; %var_2_326 = load i32, i32* %var_2_325, align 4
; Matched:\<badref\>:  store i32 %var_2_303, i32* %var_2_124, align 1, !tbaa !1285
; store i32 %var_2_326, i32* %var_2_124, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_126, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_126, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_128, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_128, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_130, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_130, align 1
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_386, -24
; %var_2_327 = add i64 %var_2_196, -24
; Matched:%var_2_305:  %var_2_305 = add i64 %var_2_422, 20
; %var_2_328 = add i64 %var_2_232, 20
; Matched:\<badref\>:  store i64 %var_2_305, i64* %PC, align 8
; store i64 %var_2_328, i64* %var_2_3, align 8
; Matched:%var_2_306:  %var_2_306 = inttoptr i64 %var_2_304 to i32*
; %var_2_329 = inttoptr i64 %var_2_327 to i32*
; Matched:%var_2_307:  %var_2_307 = load i32, i32* %var_2_306, align 4
; %var_2_330 = load i32, i32* %var_2_329, align 4
; Matched:\<badref\>:  store i32 %var_2_307, i32* %var_2_132, align 1, !tbaa !1285
; store i32 %var_2_330, i32* %var_2_132, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_134, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_134, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_136, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_136, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_138, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_138, align 1
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_386, -28
; %var_2_331 = add i64 %var_2_196, -28
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_422, 25
; %var_2_332 = add i64 %var_2_232, 25
; Matched:\<badref\>:  store i64 %var_2_309, i64* %PC, align 8
; store i64 %var_2_332, i64* %var_2_3, align 8
; Matched:%var_2_310:  %var_2_310 = inttoptr i64 %var_2_308 to i32*
; %var_2_333 = inttoptr i64 %var_2_331 to i32*
; Matched:%var_2_311:  %var_2_311 = load i32, i32* %var_2_310, align 4
; %var_2_334 = load i32, i32* %var_2_333, align 4
; Matched:\<badref\>:  store i32 %var_2_311, i32* %var_2_140, align 1, !tbaa !1285
; store i32 %var_2_334, i32* %var_2_141, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_142, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_143, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_144, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_145, align 1
; Matched:\<badref\>:  store float 0.000000e+00, float* %var_2_146, align 1, !tbaa !1285
; store float 0.000000e+00, float* %var_2_147, align 1
; Matched:%var_2_312:  %var_2_312 = add i64 %var_2_422, 7828
; %var_2_335 = add i64 %var_2_232, 7828
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_422, 30
; %var_2_336 = add i64 %var_2_232, 30
; Matched:%var_2_94:  %var_2_94 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_337 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_245:  %var_2_245 = add i64 %var_2_244, -8
; %var_2_338 = add i64 %var_2_337, -8
; Matched:%var_2_316:  %var_2_316 = inttoptr i64 %var_2_315 to i64*
; %var_2_339 = inttoptr i64 %var_2_338 to i64*
; Matched:\<badref\>:  store i64 %var_2_313, i64* %var_2_316, align 8
; store i64 %var_2_336, i64* %var_2_339, align 8
; Matched:\<badref\>:  store i64 %var_2_245, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_338, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_312, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_335, i64* %var_2_3, align 8
; Matched:%var_2_317:  %var_2_317 = tail call %struct.Memory* @sub_40ce00__Z26check_shifted_variable_sumIf28custom_sub_multiple_variableIfEEvT_S2_S2_S2_S2__renamed_(%struct.State* nonnull %0, i64 %var_2_312, %struct.Memory* %var_2_97)
; %call2_40af85 = tail call %struct.Memory* @sub_40ce00._Z26check_shifted_variable_sumIf28custom_sub_multiple_variableIfEEvT_S2_S2_S2_S2_(%struct.State* nonnull %0, i64 %var_2_335, %struct.Memory* %call2_40aef7)
; Matched:%var_2_318:  %var_2_318 = load i64, i64* %RBP, align 8
; %var_2_340 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_318, -44
; %var_2_341 = add i64 %var_2_340, -44
%var_2_342 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_321:  %var_2_321 = add i64 %var_2_320, 3
; %var_2_343 = add i64 %var_2_342, 3
; Matched:\<badref\>:  store i64 %var_2_321, i64* %PC, align 8
; store i64 %var_2_343, i64* %var_2_3, align 8
; Matched:%var_2_322:  %var_2_322 = inttoptr i64 %var_2_319 to i32*
; %var_2_344 = inttoptr i64 %var_2_341 to i32*
; Matched:%var_2_323:  %var_2_323 = load i32, i32* %var_2_322, align 4
; %var_2_345 = load i32, i32* %var_2_344, align 4
; Matched:%var_2_324:  %var_2_324 = add i32 %var_2_323, 1
; %var_2_346 = add i32 %var_2_345, 1
; Matched:%var_2_325:  %var_2_325 = zext i32 %var_2_324 to i64
; %var_2_347 = zext i32 %var_2_346 to i64
; Matched:\<badref\>:  store i64 %var_2_325, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_347, i64* %RAX.i82, align 8
; Matched:%var_2_326:  %var_2_326 = icmp eq i32 %var_2_323, -1
; %var_2_348 = icmp eq i32 %var_2_345, -1
; Matched:%var_2_327:  %var_2_327 = icmp eq i32 %var_2_324, 0
; %var_2_349 = icmp eq i32 %var_2_346, 0
; Matched:%var_2_328:  %var_2_328 = or i1 %var_2_326, %var_2_327
; %var_2_350 = or i1 %var_2_348, %var_2_349
; Matched:%var_2_329:  %var_2_329 = zext i1 %var_2_328 to i8
; %var_2_351 = zext i1 %var_2_350 to i8
; Matched:\<badref\>:  store i8 %var_2_329, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_351, i8* %var_2_14, align 1
; Matched:%var_2_330:  %var_2_330 = and i32 %var_2_324, 255
; %var_2_352 = and i32 %var_2_346, 255
; Matched:%var_2_331:  %var_2_331 = tail call i32 @llvm.ctpop.i32(i32 %var_2_330) #12
; %var_2_353 = tail call i32 @llvm.ctpop.i32(i32 %var_2_352)
; Matched:%var_2_332:  %var_2_332 = trunc i32 %var_2_331 to i8
; %var_2_354 = trunc i32 %var_2_353 to i8
; Matched:%var_2_333:  %var_2_333 = and i8 %var_2_332, 1
; %var_2_355 = and i8 %var_2_354, 1
; Matched:%var_2_334:  %var_2_334 = xor i8 %var_2_333, 1
; %var_2_356 = xor i8 %var_2_355, 1
; Matched:\<badref\>:  store i8 %var_2_334, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_356, i8* %var_2_21, align 1
; Matched:%var_2_335:  %var_2_335 = xor i32 %var_2_324, %var_2_323
; %var_2_357 = xor i32 %var_2_346, %var_2_345
; Matched:%var_2_336:  %var_2_336 = lshr i32 %var_2_335, 4
; %var_2_358 = lshr i32 %var_2_357, 4
; Matched:%var_2_337:  %var_2_337 = trunc i32 %var_2_336 to i8
; %var_2_359 = trunc i32 %var_2_358 to i8
; Matched:%var_2_338:  %var_2_338 = and i8 %var_2_337, 1
; %var_2_360 = and i8 %var_2_359, 1
; Matched:\<badref\>:  store i8 %var_2_338, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_360, i8* %var_2_26, align 1
; Matched:%var_2_339:  %var_2_339 = zext i1 %var_2_327 to i8
; %var_2_361 = zext i1 %var_2_349 to i8
; Matched:\<badref\>:  store i8 %var_2_339, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_361, i8* %var_2_29, align 1
; Matched:%var_2_340:  %var_2_340 = lshr i32 %var_2_324, 31
; %var_2_362 = lshr i32 %var_2_346, 31
; Matched:%var_2_341:  %var_2_341 = trunc i32 %var_2_340 to i8
; %var_2_363 = trunc i32 %var_2_362 to i8
; Matched:\<badref\>:  store i8 %var_2_341, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_363, i8* %var_2_32, align 1
; Matched:%var_2_342:  %var_2_342 = lshr i32 %var_2_323, 31
; %var_2_364 = lshr i32 %var_2_345, 31
; Matched:%var_2_343:  %var_2_343 = xor i32 %var_2_340, %var_2_342
; %var_2_365 = xor i32 %var_2_362, %var_2_364
; Matched:%var_2_344:  %var_2_344 = add nuw nsw i32 %var_2_343, %var_2_340
; %var_2_366 = add nuw nsw i32 %var_2_365, %var_2_362
; Matched:%var_2_345:  %var_2_345 = icmp eq i32 %var_2_344, 2
; %var_2_367 = icmp eq i32 %var_2_366, 2
; Matched:%var_2_346:  %var_2_346 = zext i1 %var_2_345 to i8
; %var_2_368 = zext i1 %var_2_367 to i8
; Matched:\<badref\>:  store i8 %var_2_346, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_368, i8* %var_2_38, align 1
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_320, 9
; %var_2_369 = add i64 %var_2_342, 9
; Matched:\<badref\>:  store i64 %var_2_347, i64* %PC, align 8
; store i64 %var_2_369, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_324, i32* %var_2_322, align 4
; store i32 %var_2_346, i32* %var_2_344, align 4
%var_2_370 = load i64, i64* %var_2_3, align 8
%var_2_371 = add i64 %var_2_370, -144
; Matched:\<badref\>:  store i64 %var_2_349, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_371, i64* %var_2_3, align 8
  br label %block_.L_40af03

block_.L_40af98:                                  ; preds = %block_.L_40af03
%var_2_372 = add i64 %var_2_184, -41240
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_384, 5
; %var_2_373 = add i64 %var_2_184, 5
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_374 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_315:  %var_2_315 = add i64 %var_2_314, -8
; %var_2_375 = add i64 %var_2_374, -8
; Matched:%var_2_246:  %var_2_246 = inttoptr i64 %var_2_245 to i64*
; %var_2_376 = inttoptr i64 %var_2_375 to i64*
; Matched:\<badref\>:  store i64 %var_2_243, i64* %var_2_246, align 8
; store i64 %var_2_373, i64* %var_2_376, align 8
; Matched:\<badref\>:  store i64 %var_2_315, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_375, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_242, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_372, i64* %var_2_3, align 8
%call2_40af98 = tail call %struct.Memory* @sub_400e80._Z5timerv(%struct.State* nonnull %0, i64 %var_2_372, %struct.Memory* %call2_40aef7)
; Matched:%var_2_248:  %var_2_248 = load i64, i64* %RBP, align 8
; %var_2_377 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, -40
; %var_2_378 = add i64 %var_2_377, -40
%var_2_379 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_251:  %var_2_251 = add i64 %var_2_250, 4
; %var_2_380 = add i64 %var_2_379, 4
; Matched:\<badref\>:  store i64 %var_2_251, i64* %PC, align 8
; store i64 %var_2_380, i64* %var_2_3, align 8
; Matched:%var_2_252:  %var_2_252 = inttoptr i64 %var_2_249 to i64*
; %var_2_381 = inttoptr i64 %var_2_378 to i64*
; Matched:%var_2_253:  %var_2_253 = load i64, i64* %var_2_252, align 8
; %var_2_382 = load i64, i64* %var_2_381, align 8
; Matched:\<badref\>:  store i64 %var_2_253, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_382, i64* %RDI.i101, align 8
%var_2_383 = add i64 %var_2_379, -42877
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_250, 9
; %var_2_384 = add i64 %var_2_379, 9
; Matched:%var_2_244:  %var_2_244 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_385 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, -8
; %var_2_386 = add i64 %var_2_385, -8
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_257 to i64*
; %var_2_387 = inttoptr i64 %var_2_386 to i64*
; Matched:\<badref\>:  store i64 %var_2_255, i64* %var_2_258, align 8
; store i64 %var_2_384, i64* %var_2_387, align 8
; Matched:\<badref\>:  store i64 %var_2_190, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_386, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_254, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_383, i64* %var_2_3, align 8
%call2_40afa1 = tail call %struct.Memory* @sub_400820._Z13record_resultdPKc(%struct.State* nonnull %0, i64 %var_2_383, %struct.Memory* %call2_40af98)
; Matched:%var_2_260:  %var_2_260 = load i64, i64* %RSP, align 8
; %var_2_388 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_71:  %var_2_71 = load i64, i64* %PC, align 8
; %var_2_389 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_260, 64
; %var_2_390 = add i64 %var_2_388, 64
; Matched:\<badref\>:  store i64 %var_2_262, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_390, i64* %var_2_6, align 8
; Matched:%var_2_263:  %var_2_263 = icmp ugt i64 %var_2_260, -65
; %var_2_391 = icmp ugt i64 %var_2_388, -65
; Matched:%var_2_264:  %var_2_264 = zext i1 %var_2_263 to i8
; %var_2_392 = zext i1 %var_2_391 to i8
; Matched:\<badref\>:  store i8 %var_2_264, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_392, i8* %var_2_14, align 1
; Matched:%var_2_265:  %var_2_265 = trunc i64 %var_2_262 to i32
; %var_2_393 = trunc i64 %var_2_390 to i32
; Matched:%var_2_266:  %var_2_266 = and i32 %var_2_265, 255
; %var_2_394 = and i32 %var_2_393, 255
; Matched:%var_2_267:  %var_2_267 = tail call i32 @llvm.ctpop.i32(i32 %var_2_266) #12
; %var_2_395 = tail call i32 @llvm.ctpop.i32(i32 %var_2_394)
; Matched:%var_2_268:  %var_2_268 = trunc i32 %var_2_267 to i8
; %var_2_396 = trunc i32 %var_2_395 to i8
; Matched:%var_2_269:  %var_2_269 = and i8 %var_2_268, 1
; %var_2_397 = and i8 %var_2_396, 1
; Matched:%var_2_270:  %var_2_270 = xor i8 %var_2_269, 1
; %var_2_398 = xor i8 %var_2_397, 1
; Matched:\<badref\>:  store i8 %var_2_270, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_398, i8* %var_2_21, align 1
; Matched:%var_2_271:  %var_2_271 = xor i64 %var_2_262, %var_2_260
; %var_2_399 = xor i64 %var_2_390, %var_2_388
; Matched:%var_2_272:  %var_2_272 = lshr i64 %var_2_271, 4
; %var_2_400 = lshr i64 %var_2_399, 4
; Matched:%var_2_273:  %var_2_273 = trunc i64 %var_2_272 to i8
; %var_2_401 = trunc i64 %var_2_400 to i8
; Matched:%var_2_274:  %var_2_274 = and i8 %var_2_273, 1
; %var_2_402 = and i8 %var_2_401, 1
; Matched:\<badref\>:  store i8 %var_2_274, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_402, i8* %var_2_26, align 1
; Matched:%var_2_275:  %var_2_275 = icmp eq i64 %var_2_262, 0
; %var_2_403 = icmp eq i64 %var_2_390, 0
; Matched:%var_2_276:  %var_2_276 = zext i1 %var_2_275 to i8
; %var_2_404 = zext i1 %var_2_403 to i8
; Matched:\<badref\>:  store i8 %var_2_276, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_404, i8* %var_2_29, align 1
; Matched:%var_2_277:  %var_2_277 = lshr i64 %var_2_262, 63
; %var_2_405 = lshr i64 %var_2_390, 63
; Matched:%var_2_278:  %var_2_278 = trunc i64 %var_2_277 to i8
; %var_2_406 = trunc i64 %var_2_405 to i8
; Matched:\<badref\>:  store i8 %var_2_278, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_406, i8* %var_2_32, align 1
; Matched:%var_2_279:  %var_2_279 = lshr i64 %var_2_260, 63
; %var_2_407 = lshr i64 %var_2_388, 63
; Matched:%var_2_280:  %var_2_280 = xor i64 %var_2_277, %var_2_279
; %var_2_408 = xor i64 %var_2_405, %var_2_407
; Matched:%var_2_281:  %var_2_281 = add nuw nsw i64 %var_2_280, %var_2_277
; %var_2_409 = add nuw nsw i64 %var_2_408, %var_2_405
; Matched:%var_2_282:  %var_2_282 = icmp eq i64 %var_2_281, 2
; %var_2_410 = icmp eq i64 %var_2_409, 2
; Matched:%var_2_283:  %var_2_283 = zext i1 %var_2_282 to i8
; %var_2_411 = zext i1 %var_2_410 to i8
; Matched:\<badref\>:  store i8 %var_2_283, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_411, i8* %var_2_38, align 1
; Matched:%var_2_284:  %var_2_284 = add i64 %var_2_261, 5
; %var_2_412 = add i64 %var_2_389, 5
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8
; store i64 %var_2_412, i64* %var_2_3, align 8
; Matched:%var_2_285:  %var_2_285 = add i64 %var_2_260, 72
; %var_2_413 = add i64 %var_2_388, 72
; Matched:%var_2_286:  %var_2_286 = inttoptr i64 %var_2_262 to i64*
; %var_2_414 = inttoptr i64 %var_2_390 to i64*
; Matched:%var_2_287:  %var_2_287 = load i64, i64* %var_2_286, align 8
; %var_2_415 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_287, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_415, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_285, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_413, i64* %var_2_6, align 8
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_261, 6
; %var_2_416 = add i64 %var_2_389, 6
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_416, i64* %var_2_3, align 8
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_285 to i64*
; %var_2_417 = inttoptr i64 %var_2_413 to i64*
; Matched:%var_2_290:  %var_2_290 = load i64, i64* %var_2_289, align 8
; %var_2_418 = load i64, i64* %var_2_417, align 8
; Matched:\<badref\>:  store i64 %var_2_290, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_418, i64* %var_2_3, align 8
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_260, 80
; %var_2_419 = add i64 %var_2_388, 80
; Matched:\<badref\>:  store i64 %var_2_291, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_419, i64* %var_2_6, align 8
  ret %struct.Memory* %call2_40afa1
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movss__xmm2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movss__xmm3__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z11start_timerv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x61a080___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x61a080_type* @G_0x61a080 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40af98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jge_.L_40af6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_addss_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40af22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_callq_._Z26check_shifted_variable_sumIf28custom_sub_multiple_variableIfEEvT_S2_S2_S2_S2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40af03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z5timerv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13record_resultdPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
