; ModuleID = '/tmp/tmp2uldl1cq-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3b4__rip__type = type <{ [8 x i8] }>
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
@G_0x3b4__rip_ = global %G_0x3b4__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @fflop(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
%var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_16:  %var_2_16 = bitcast [32 x %union.VectorReg]* %var_2_6 to i8*
; %var_2_12 = bitcast [32 x %union.VectorReg]* %var_2_11 to i8*
%var_2_13 = add i64 %var_2_10, add (i64 ptrtoint (%G_0x3b4__rip__type* @G_0x3b4__rip_ to i64), i64 3)
%var_2_14 = add i64 %var_2_10, 11
store i64 %var_2_14, i64* %var_2_3, align 8
%var_2_15 = inttoptr i64 %var_2_13 to i64*
%var_2_16 = load i64, i64* %var_2_15, align 8
%var_2_17 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_11, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_16, i64* %var_2_17, align 1
%var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_19 = bitcast i64* %var_2_18 to double*
store double 0.000000e+00, double* %var_2_19, align 1
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_5 to i32*
; %EDI.i = bitcast %union.anon* %var_2_20 to i32*
; Matched:%var_2_21:  %var_2_21 = add i64 %var_2_12, -12
; %var_2_21 = add i64 %var_2_7, -12
; Matched:%var_2_22:  %var_2_22 = load i32, i32* %EDI, align 4
; %var_2_22 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_23:  %var_2_23 = add i64 %var_2_15, 14
; %var_2_23 = add i64 %var_2_10, 14
; Matched:\<badref\>:  store i64 %var_2_23, i64* %PC, align 8
; store i64 %var_2_23, i64* %var_2_3, align 8
; Matched:%var_2_24:  %var_2_24 = inttoptr i64 %var_2_21 to i32*
; %var_2_24 = inttoptr i64 %var_2_21 to i32*
; Matched:\<badref\>:  store i32 %var_2_22, i32* %var_2_24, align 4
; store i32 %var_2_22, i32* %var_2_24, align 4
; Matched:%var_2_4:  %var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; %var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
; Matched:  %ESI = bitcast %union.anon* %var_2_4 to i32*
; %ESI.i = bitcast %union.anon* %var_2_25 to i32*
; Matched:%var_2_25:  %var_2_25 = load i64, i64* %RBP, align 8
; %var_2_26 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_26:  %var_2_26 = add i64 %var_2_25, -8
; %var_2_27 = add i64 %var_2_26, -8
; Matched:%var_2_27:  %var_2_27 = load i32, i32* %ESI, align 4
; %var_2_28 = load i32, i32* %ESI.i, align 4
; Matched:%var_2_34:  %var_2_34 = load i64, i64* %PC, align 8
; %var_2_29 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_39, 3
; %var_2_30 = add i64 %var_2_29, 3
; Matched:\<badref\>:  store i64 %var_2_40, i64* %PC, align 8
; store i64 %var_2_30, i64* %var_2_3, align 8
; Matched:%var_2_30:  %var_2_30 = inttoptr i64 %var_2_26 to i32*
; %var_2_31 = inttoptr i64 %var_2_27 to i32*
; Matched:\<badref\>:  store i32 %var_2_27, i32* %var_2_30, align 4
; store i32 %var_2_28, i32* %var_2_31, align 4
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX = bitcast %union.anon* %var_2_3 to i32*
; %EDX.i33 = bitcast %union.anon* %var_2_32 to i32*
; Matched:%var_2_31:  %var_2_31 = load i64, i64* %RBP, align 8
; %var_2_33 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_32:  %var_2_32 = add i64 %var_2_31, -12
; %var_2_34 = add i64 %var_2_33, -12
; Matched:%var_2_33:  %var_2_33 = load i32, i32* %EDX, align 4
; %var_2_35 = load i32, i32* %EDX.i33, align 4
; Matched:%var_2_28:  %var_2_28 = load i64, i64* %PC, align 8
; %var_2_36 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_29:  %var_2_29 = add i64 %var_2_28, 3
; %var_2_37 = add i64 %var_2_36, 3
; Matched:\<badref\>:  store i64 %var_2_29, i64* %PC, align 8
; store i64 %var_2_37, i64* %var_2_3, align 8
; Matched:%var_2_36:  %var_2_36 = inttoptr i64 %var_2_32 to i32*
; %var_2_38 = inttoptr i64 %var_2_34 to i32*
; Matched:\<badref\>:  store i32 %var_2_33, i32* %var_2_36, align 4
; store i32 %var_2_35, i32* %var_2_38, align 4
; Matched:  %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RDX.i30 = getelementptr inbounds %union.anon, %union.anon* %var_2_32, i64 0, i32 0
; Matched:%var_2_37:  %var_2_37 = load i64, i64* %RBP, align 8
; %var_2_39 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_38:  %var_2_38 = add i64 %var_2_37, -12
; %var_2_40 = add i64 %var_2_39, -12
; Matched:%var_2_39:  %var_2_39 = load i64, i64* %PC, align 8
; %var_2_41 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_35:  %var_2_35 = add i64 %var_2_34, 3
; %var_2_42 = add i64 %var_2_41, 3
; Matched:\<badref\>:  store i64 %var_2_35, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_41:  %var_2_41 = inttoptr i64 %var_2_38 to i32*
; %var_2_43 = inttoptr i64 %var_2_40 to i32*
; Matched:%var_2_42:  %var_2_42 = load i32, i32* %var_2_41, align 4
; %var_2_44 = load i32, i32* %var_2_43, align 4
; Matched:%var_2_43:  %var_2_43 = add i32 %var_2_42, -2
; %var_2_45 = add i32 %var_2_44, -2
; Matched:%var_2_44:  %var_2_44 = zext i32 %var_2_43 to i64
; %var_2_46 = zext i32 %var_2_45 to i64
; Matched:\<badref\>:  store i64 %var_2_44, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_46, i64* %RDX.i30, align 8
; Matched:%var_2_45:  %var_2_45 = icmp ult i32 %var_2_42, 2
; %var_2_47 = icmp ult i32 %var_2_44, 2
; Matched:%var_2_46:  %var_2_46 = zext i1 %var_2_45 to i8
; %var_2_48 = zext i1 %var_2_47 to i8
; Matched:%var_2_47:  %var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_46, i8* %var_2_47, align 1, !tbaa !1267
; store i8 %var_2_48, i8* %var_2_49, align 1
; Matched:%var_2_48:  %var_2_48 = and i32 %var_2_43, 255
; %var_2_50 = and i32 %var_2_45, 255
; Matched:%var_2_49:  %var_2_49 = tail call i32 @llvm.ctpop.i32(i32 %var_2_48) #12
; %var_2_51 = tail call i32 @llvm.ctpop.i32(i32 %var_2_50)
; Matched:%var_2_50:  %var_2_50 = trunc i32 %var_2_49 to i8
; %var_2_52 = trunc i32 %var_2_51 to i8
; Matched:%var_2_51:  %var_2_51 = and i8 %var_2_50, 1
; %var_2_53 = and i8 %var_2_52, 1
; Matched:%var_2_52:  %var_2_52 = xor i8 %var_2_51, 1
; %var_2_54 = xor i8 %var_2_53, 1
; Matched:%var_2_53:  %var_2_53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_52, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_54, i8* %var_2_55, align 1
; Matched:%var_2_54:  %var_2_54 = xor i32 %var_2_43, %var_2_42
; %var_2_56 = xor i32 %var_2_45, %var_2_44
; Matched:%var_2_55:  %var_2_55 = lshr i32 %var_2_54, 4
; %var_2_57 = lshr i32 %var_2_56, 4
; Matched:%var_2_56:  %var_2_56 = trunc i32 %var_2_55 to i8
; %var_2_58 = trunc i32 %var_2_57 to i8
; Matched:%var_2_57:  %var_2_57 = and i8 %var_2_56, 1
; %var_2_59 = and i8 %var_2_58, 1
; Matched:%var_2_58:  %var_2_58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; %var_2_60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_57, i8* %var_2_58, align 1, !tbaa !1282
; store i8 %var_2_59, i8* %var_2_60, align 1
; Matched:%var_2_59:  %var_2_59 = icmp eq i32 %var_2_43, 0
; %var_2_61 = icmp eq i32 %var_2_45, 0
; Matched:%var_2_60:  %var_2_60 = zext i1 %var_2_59 to i8
; %var_2_62 = zext i1 %var_2_61 to i8
; Matched:%var_2_61:  %var_2_61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_60, i8* %var_2_61, align 1, !tbaa !1283
; store i8 %var_2_62, i8* %var_2_63, align 1
; Matched:%var_2_62:  %var_2_62 = lshr i32 %var_2_43, 31
; %var_2_64 = lshr i32 %var_2_45, 31
; Matched:%var_2_63:  %var_2_63 = trunc i32 %var_2_62 to i8
; %var_2_65 = trunc i32 %var_2_64 to i8
; Matched:%var_2_64:  %var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_63, i8* %var_2_64, align 1, !tbaa !1284
; store i8 %var_2_65, i8* %var_2_66, align 1
; Matched:%var_2_65:  %var_2_65 = lshr i32 %var_2_42, 31
; %var_2_67 = lshr i32 %var_2_44, 31
; Matched:%var_2_66:  %var_2_66 = xor i32 %var_2_62, %var_2_65
; %var_2_68 = xor i32 %var_2_64, %var_2_67
; Matched:%var_2_67:  %var_2_67 = add nuw nsw i32 %var_2_66, %var_2_65
; %var_2_69 = add nuw nsw i32 %var_2_68, %var_2_67
; Matched:%var_2_68:  %var_2_68 = icmp eq i32 %var_2_67, 2
; %var_2_70 = icmp eq i32 %var_2_69, 2
; Matched:%var_2_69:  %var_2_69 = zext i1 %var_2_68 to i8
; %var_2_71 = zext i1 %var_2_70 to i8
; Matched:%var_2_70:  %var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_69, i8* %var_2_70, align 1, !tbaa !1285
; store i8 %var_2_71, i8* %var_2_72, align 1
; Matched:%var_2_7:  %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_71:  %var_2_71 = sitofp i32 %var_2_43 to double
; %var_2_74 = sitofp i32 %var_2_45 to double
; Matched:%var_2_72:  %var_2_72 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_75 = bitcast %union.VectorReg* %var_2_73 to double*
; Matched:\<badref\>:  store double %var_2_71, double* %var_2_72, align 1, !tbaa !1265
; store double %var_2_74, double* %var_2_75, align 1
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_37, -8
; %var_2_76 = add i64 %var_2_39, -8
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_39, 13
; %var_2_77 = add i64 %var_2_41, 13
; Matched:\<badref\>:  store i64 %var_2_74, i64* %PC, align 8
; store i64 %var_2_77, i64* %var_2_3, align 8
; Matched:%var_2_75:  %var_2_75 = inttoptr i64 %var_2_73 to i32*
; %var_2_78 = inttoptr i64 %var_2_76 to i32*
; Matched:%var_2_76:  %var_2_76 = load i32, i32* %var_2_75, align 4
; %var_2_79 = load i32, i32* %var_2_78, align 4
; Matched:%var_2_77:  %var_2_77 = add i32 %var_2_76, -2
; %var_2_80 = add i32 %var_2_79, -2
; Matched:%var_2_78:  %var_2_78 = zext i32 %var_2_77 to i64
; %var_2_81 = zext i32 %var_2_80 to i64
; Matched:\<badref\>:  store i64 %var_2_78, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_81, i64* %RDX.i30, align 8
; Matched:%var_2_79:  %var_2_79 = icmp ult i32 %var_2_76, 2
; %var_2_82 = icmp ult i32 %var_2_79, 2
; Matched:%var_2_80:  %var_2_80 = zext i1 %var_2_79 to i8
; %var_2_83 = zext i1 %var_2_82 to i8
; Matched:\<badref\>:  store i8 %var_2_80, i8* %var_2_47, align 1, !tbaa !1267
; store i8 %var_2_83, i8* %var_2_49, align 1
; Matched:%var_2_81:  %var_2_81 = and i32 %var_2_77, 255
; %var_2_84 = and i32 %var_2_80, 255
; Matched:%var_2_82:  %var_2_82 = tail call i32 @llvm.ctpop.i32(i32 %var_2_81) #12
; %var_2_85 = tail call i32 @llvm.ctpop.i32(i32 %var_2_84)
; Matched:%var_2_83:  %var_2_83 = trunc i32 %var_2_82 to i8
; %var_2_86 = trunc i32 %var_2_85 to i8
; Matched:%var_2_84:  %var_2_84 = and i8 %var_2_83, 1
; %var_2_87 = and i8 %var_2_86, 1
; Matched:%var_2_85:  %var_2_85 = xor i8 %var_2_84, 1
; %var_2_88 = xor i8 %var_2_87, 1
; Matched:\<badref\>:  store i8 %var_2_85, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_88, i8* %var_2_55, align 1
; Matched:%var_2_86:  %var_2_86 = xor i32 %var_2_77, %var_2_76
; %var_2_89 = xor i32 %var_2_80, %var_2_79
; Matched:%var_2_87:  %var_2_87 = lshr i32 %var_2_86, 4
; %var_2_90 = lshr i32 %var_2_89, 4
; Matched:%var_2_88:  %var_2_88 = trunc i32 %var_2_87 to i8
; %var_2_91 = trunc i32 %var_2_90 to i8
; Matched:%var_2_89:  %var_2_89 = and i8 %var_2_88, 1
; %var_2_92 = and i8 %var_2_91, 1
; Matched:\<badref\>:  store i8 %var_2_89, i8* %var_2_58, align 1, !tbaa !1282
; store i8 %var_2_92, i8* %var_2_60, align 1
; Matched:%var_2_90:  %var_2_90 = icmp eq i32 %var_2_77, 0
; %var_2_93 = icmp eq i32 %var_2_80, 0
; Matched:%var_2_91:  %var_2_91 = zext i1 %var_2_90 to i8
; %var_2_94 = zext i1 %var_2_93 to i8
; Matched:\<badref\>:  store i8 %var_2_91, i8* %var_2_61, align 1, !tbaa !1283
; store i8 %var_2_94, i8* %var_2_63, align 1
; Matched:%var_2_92:  %var_2_92 = lshr i32 %var_2_77, 31
; %var_2_95 = lshr i32 %var_2_80, 31
; Matched:%var_2_93:  %var_2_93 = trunc i32 %var_2_92 to i8
; %var_2_96 = trunc i32 %var_2_95 to i8
; Matched:\<badref\>:  store i8 %var_2_93, i8* %var_2_64, align 1, !tbaa !1284
; store i8 %var_2_96, i8* %var_2_66, align 1
; Matched:%var_2_94:  %var_2_94 = lshr i32 %var_2_76, 31
; %var_2_97 = lshr i32 %var_2_79, 31
; Matched:%var_2_95:  %var_2_95 = xor i32 %var_2_92, %var_2_94
; %var_2_98 = xor i32 %var_2_95, %var_2_97
; Matched:%var_2_96:  %var_2_96 = add nuw nsw i32 %var_2_95, %var_2_94
; %var_2_99 = add nuw nsw i32 %var_2_98, %var_2_97
; Matched:%var_2_97:  %var_2_97 = icmp eq i32 %var_2_96, 2
; %var_2_100 = icmp eq i32 %var_2_99, 2
; Matched:%var_2_98:  %var_2_98 = zext i1 %var_2_97 to i8
; %var_2_101 = zext i1 %var_2_100 to i8
; Matched:\<badref\>:  store i8 %var_2_98, i8* %var_2_70, align 1, !tbaa !1285
; store i8 %var_2_101, i8* %var_2_72, align 1
; Matched:%var_2_8:  %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_99:  %var_2_99 = sitofp i32 %var_2_77 to double
; %var_2_103 = sitofp i32 %var_2_80 to double
; Matched:%var_2_100:  %var_2_100 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_104 = bitcast %union.VectorReg* %var_2_102 to double*
; Matched:\<badref\>:  store double %var_2_99, double* %var_2_100, align 1, !tbaa !1265
; store double %var_2_103, double* %var_2_104, align 1
; Matched:%var_2_101:  %var_2_101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_106 = bitcast i64* %var_2_105 to <2 x i32>*
%var_2_107 = load <2 x i32>, <2 x i32>* %var_2_106, align 1
; Matched:%var_2_104:  %var_2_104 = fmul double %var_2_99, %var_2_71
; %var_2_108 = fmul double %var_2_103, %var_2_74
; Matched:\<badref\>:  store double %var_2_104, double* %var_2_72, align 1, !tbaa !1265
; store double %var_2_108, double* %var_2_75, align 1
; Matched:%var_2_105:  %var_2_105 = load i64, i64* %RBP, align 8
; %var_2_109 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_105, -4
; %var_2_110 = add i64 %var_2_109, -4
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_39, 27
; %var_2_111 = add i64 %var_2_41, 27
; Matched:\<badref\>:  store i64 %var_2_107, i64* %PC, align 8
; store i64 %var_2_111, i64* %var_2_3, align 8
; Matched:%var_2_108:  %var_2_108 = inttoptr i64 %var_2_106 to i32*
; %var_2_112 = inttoptr i64 %var_2_110 to i32*
; Matched:%var_2_109:  %var_2_109 = load i32, i32* %var_2_108, align 4
; %var_2_113 = load i32, i32* %var_2_112, align 4
; Matched:%var_2_110:  %var_2_110 = add i32 %var_2_109, -2
; %var_2_114 = add i32 %var_2_113, -2
; Matched:%var_2_111:  %var_2_111 = zext i32 %var_2_110 to i64
; %var_2_115 = zext i32 %var_2_114 to i64
; Matched:\<badref\>:  store i64 %var_2_111, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %RDX.i30, align 8
; Matched:%var_2_112:  %var_2_112 = icmp ult i32 %var_2_109, 2
; %var_2_116 = icmp ult i32 %var_2_113, 2
; Matched:%var_2_113:  %var_2_113 = zext i1 %var_2_112 to i8
; %var_2_117 = zext i1 %var_2_116 to i8
; Matched:\<badref\>:  store i8 %var_2_113, i8* %var_2_47, align 1, !tbaa !1267
; store i8 %var_2_117, i8* %var_2_49, align 1
; Matched:%var_2_114:  %var_2_114 = and i32 %var_2_110, 255
; %var_2_118 = and i32 %var_2_114, 255
; Matched:%var_2_115:  %var_2_115 = tail call i32 @llvm.ctpop.i32(i32 %var_2_114) #12
; %var_2_119 = tail call i32 @llvm.ctpop.i32(i32 %var_2_118)
; Matched:%var_2_116:  %var_2_116 = trunc i32 %var_2_115 to i8
; %var_2_120 = trunc i32 %var_2_119 to i8
; Matched:%var_2_117:  %var_2_117 = and i8 %var_2_116, 1
; %var_2_121 = and i8 %var_2_120, 1
; Matched:%var_2_118:  %var_2_118 = xor i8 %var_2_117, 1
; %var_2_122 = xor i8 %var_2_121, 1
; Matched:\<badref\>:  store i8 %var_2_118, i8* %var_2_53, align 1, !tbaa !1281
; store i8 %var_2_122, i8* %var_2_55, align 1
; Matched:%var_2_119:  %var_2_119 = xor i32 %var_2_110, %var_2_109
; %var_2_123 = xor i32 %var_2_114, %var_2_113
; Matched:%var_2_120:  %var_2_120 = lshr i32 %var_2_119, 4
; %var_2_124 = lshr i32 %var_2_123, 4
; Matched:%var_2_121:  %var_2_121 = trunc i32 %var_2_120 to i8
; %var_2_125 = trunc i32 %var_2_124 to i8
; Matched:%var_2_122:  %var_2_122 = and i8 %var_2_121, 1
; %var_2_126 = and i8 %var_2_125, 1
; Matched:\<badref\>:  store i8 %var_2_122, i8* %var_2_58, align 1, !tbaa !1282
; store i8 %var_2_126, i8* %var_2_60, align 1
; Matched:%var_2_123:  %var_2_123 = icmp eq i32 %var_2_110, 0
; %var_2_127 = icmp eq i32 %var_2_114, 0
; Matched:%var_2_124:  %var_2_124 = zext i1 %var_2_123 to i8
; %var_2_128 = zext i1 %var_2_127 to i8
; Matched:\<badref\>:  store i8 %var_2_124, i8* %var_2_61, align 1, !tbaa !1283
; store i8 %var_2_128, i8* %var_2_63, align 1
; Matched:%var_2_125:  %var_2_125 = lshr i32 %var_2_110, 31
; %var_2_129 = lshr i32 %var_2_114, 31
; Matched:%var_2_126:  %var_2_126 = trunc i32 %var_2_125 to i8
; %var_2_130 = trunc i32 %var_2_129 to i8
; Matched:\<badref\>:  store i8 %var_2_126, i8* %var_2_64, align 1, !tbaa !1284
; store i8 %var_2_130, i8* %var_2_66, align 1
; Matched:%var_2_127:  %var_2_127 = lshr i32 %var_2_109, 31
; %var_2_131 = lshr i32 %var_2_113, 31
; Matched:%var_2_128:  %var_2_128 = xor i32 %var_2_125, %var_2_127
; %var_2_132 = xor i32 %var_2_129, %var_2_131
; Matched:%var_2_129:  %var_2_129 = add nuw nsw i32 %var_2_128, %var_2_127
; %var_2_133 = add nuw nsw i32 %var_2_132, %var_2_131
; Matched:%var_2_130:  %var_2_130 = icmp eq i32 %var_2_129, 2
; %var_2_134 = icmp eq i32 %var_2_133, 2
; Matched:%var_2_131:  %var_2_131 = zext i1 %var_2_130 to i8
; %var_2_135 = zext i1 %var_2_134 to i8
; Matched:\<badref\>:  store i8 %var_2_131, i8* %var_2_70, align 1, !tbaa !1285
; store i8 %var_2_135, i8* %var_2_72, align 1
; Matched:%var_2_132:  %var_2_132 = sitofp i32 %var_2_110 to double
; %var_2_136 = sitofp i32 %var_2_114 to double
; Matched:\<badref\>:  store double %var_2_132, double* %var_2_100, align 1, !tbaa !1265
; store double %var_2_136, double* %var_2_104, align 1
; Matched:%var_2_133:  %var_2_133 = fmul double %var_2_132, %var_2_104
; %var_2_137 = fmul double %var_2_136, %var_2_108
; Matched:%var_2_134:  %var_2_134 = bitcast [32 x %union.VectorReg]* %var_2_6 to double*
; %var_2_138 = bitcast [32 x %union.VectorReg]* %var_2_11 to double*
; Matched:%var_2_135:  %var_2_135 = load double, double* %var_2_134, align 1
; %var_2_139 = load double, double* %var_2_138, align 1
; Matched:%var_2_136:  %var_2_136 = fmul double %var_2_133, %var_2_135
; %var_2_140 = fmul double %var_2_137, %var_2_139
; Matched:\<badref\>:  store double %var_2_136, double* %var_2_72, align 1, !tbaa !1265
; store double %var_2_140, double* %var_2_75, align 1
%.cast = bitcast double %var_2_140 to <2 x i32>
%var_2_141 = extractelement <2 x i32> %.cast, i32 0
; Matched:%var_2_138:  %var_2_138 = bitcast [32 x %union.VectorReg]* %var_2_6 to i32*
; %var_2_142 = bitcast [32 x %union.VectorReg]* %var_2_11 to i32*
; Matched:\<badref\>:  store i32 %var_2_137, i32* %var_2_138, align 1, !tbaa !1286
; store i32 %var_2_141, i32* %var_2_142, align 1
%var_2_143 = extractelement <2 x i32> %.cast, i32 1
; Matched:%var_2_140:  %var_2_140 = getelementptr inbounds i8, i8* %var_2_16, i64 4
; %var_2_144 = getelementptr inbounds i8, i8* %var_2_12, i64 4
; Matched:%var_2_141:  %var_2_141 = bitcast i8* %var_2_140 to i32*
; %var_2_145 = bitcast i8* %var_2_144 to i32*
; Matched:\<badref\>:  store i32 %var_2_139, i32* %var_2_141, align 1, !tbaa !1286
; store i32 %var_2_143, i32* %var_2_145, align 1
%var_2_146 = extractelement <2 x i32> %var_2_107, i32 0
; Matched:%var_2_143:  %var_2_143 = bitcast i64* %var_2_19 to i32*
; %var_2_147 = bitcast i64* %var_2_18 to i32*
; Matched:\<badref\>:  store i32 %var_2_142, i32* %var_2_143, align 1, !tbaa !1286
; store i32 %var_2_146, i32* %var_2_147, align 1
%var_2_148 = extractelement <2 x i32> %var_2_107, i32 1
; Matched:%var_2_145:  %var_2_145 = getelementptr inbounds i8, i8* %var_2_16, i64 12
; %var_2_149 = getelementptr inbounds i8, i8* %var_2_12, i64 12
; Matched:%var_2_146:  %var_2_146 = bitcast i8* %var_2_145 to i32*
; %var_2_150 = bitcast i8* %var_2_149 to i32*
; Matched:\<badref\>:  store i32 %var_2_144, i32* %var_2_146, align 1, !tbaa !1286
; store i32 %var_2_148, i32* %var_2_150, align 1
; Matched:%var_2_147:  %var_2_147 = add i64 %var_2_39, 46
; %var_2_151 = add i64 %var_2_41, 46
; Matched:\<badref\>:  store i64 %var_2_147, i64* %PC, align 8
; store i64 %var_2_151, i64* %var_2_3, align 8
; Matched:%var_2_148:  %var_2_148 = load i64, i64* %var_2_11, align 8, !tbaa !1261
; %var_2_152 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_148, 8
; %var_2_153 = add i64 %var_2_152, 8
; Matched:%var_2_150:  %var_2_150 = inttoptr i64 %var_2_148 to i64*
; %var_2_154 = inttoptr i64 %var_2_152 to i64*
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %var_2_150, align 8
; %var_2_155 = load i64, i64* %var_2_154, align 8
; Matched:\<badref\>:  store i64 %var_2_151, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %var_2_11, align 8, !tbaa !1261
; store i64 %var_2_153, i64* %var_2_6, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_39, 47
; %var_2_156 = add i64 %var_2_41, 47
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8
; store i64 %var_2_156, i64* %var_2_3, align 8
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_149 to i64*
; %var_2_157 = inttoptr i64 %var_2_153 to i64*
; Matched:%var_2_154:  %var_2_154 = load i64, i64* %var_2_153, align 8
; %var_2_158 = load i64, i64* %var_2_157, align 8
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_3, align 8
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_148, 16
; %var_2_159 = add i64 %var_2_152, 16
; Matched:\<badref\>:  store i64 %var_2_155, i64* %var_2_11, align 8, !tbaa !1261
; store i64 %var_2_159, i64* %var_2_6, align 8
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
define %struct.Memory* @routine_movsd_0x3b4__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3b4__rip__type* @G_0x3b4__rip_ to i64)
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_subl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
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
