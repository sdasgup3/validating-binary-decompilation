; ModuleID = '/tmp/tmpk7t2zz1h-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x14d0__rip__type = type <{ [8 x i8] }>
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
@G_0x14d0__rip_ = global %G_0x14d0__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @cft1st(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_8, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
; Matched:  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %var_2_9, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_11:  %var_2_11 = inttoptr i64 %var_2_10 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_7, i64* %var_2_11, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_10, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_9, -32
; %var_2_11 = add i64 %var_2_7, -32
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_14:  %var_2_14 = icmp ult i64 %var_2_10, 24
; %var_2_12 = icmp ult i64 %var_2_8, 24
; Matched:%var_2_15:  %var_2_15 = zext i1 %var_2_14 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_15, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_17:  %var_2_17 = trunc i64 %var_2_13 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_18:  %var_2_18 = and i32 %var_2_17, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_19:  %var_2_19 = tail call i32 @llvm.ctpop.i32(i32 %var_2_18) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_20:  %var_2_20 = trunc i32 %var_2_19 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_21:  %var_2_21 = and i8 %var_2_20, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_22:  %var_2_22 = xor i8 %var_2_21, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_23:  %var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_22, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_24:  %var_2_24 = xor i64 %var_2_10, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_25:  %var_2_25 = xor i64 %var_2_24, %var_2_13
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_26:  %var_2_26 = lshr i64 %var_2_25, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_27:  %var_2_27 = trunc i64 %var_2_26 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_28:  %var_2_28 = and i8 %var_2_27, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_30:  %var_2_30 = icmp eq i64 %var_2_13, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_31:  %var_2_31 = zext i1 %var_2_30 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
; Matched:%var_2_32:  %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_13, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_34:  %var_2_34 = trunc i64 %var_2_33 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
; Matched:%var_2_35:  %var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_10, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_37:  %var_2_37 = xor i64 %var_2_33, %var_2_36
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_38:  %var_2_38 = add nuw nsw i64 %var_2_37, %var_2_36
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_39:  %var_2_39 = icmp eq i64 %var_2_38, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_40:  %var_2_40 = zext i1 %var_2_39 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_40, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_3 to i32*
; %EDI.i = bitcast %union.anon* %var_2_40 to i32*
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_9, -12
; %var_2_41 = add i64 %var_2_7, -12
; Matched:%var_2_43:  %var_2_43 = load i32, i32* %EDI, align 4
; %var_2_42 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_230, 10
; %var_2_43 = add i64 %var_2_10, 10
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8
; store i64 %var_2_43, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_42 to i32*
; %var_2_44 = inttoptr i64 %var_2_41 to i32*
; Matched:\<badref\>:  store i32 %var_2_43, i32* %var_2_45, align 4
; store i32 %var_2_42, i32* %var_2_44, align 4
; Matched:  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI.i1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RBP, align 8
; %var_2_45 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, -16
; %var_2_46 = add i64 %var_2_45, -16
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %RSI, align 8
; %var_2_47 = load i64, i64* %RSI.i1794, align 8
%var_2_48 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, 4
; %var_2_49 = add i64 %var_2_48, 4
; Matched:\<badref\>:  store i64 %var_2_1064, i64* %PC, align 8
; store i64 %var_2_49, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = inttoptr i64 %var_2_47 to i64*
; %var_2_50 = inttoptr i64 %var_2_46 to i64*
; Matched:\<badref\>:  store i64 %var_2_48, i64* %var_2_51, align 8
; store i64 %var_2_47, i64* %var_2_50, align 8
; Matched:  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %RDX.i1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, -24
; %var_2_52 = add i64 %var_2_51, -24
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %RDX, align 8
; %var_2_53 = load i64, i64* %RDX.i1791, align 8
%var_2_54 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1247:  %var_2_1247 = add i64 %var_2_1246, 4
; %var_2_55 = add i64 %var_2_54, 4
; Matched:\<badref\>:  store i64 %var_2_2137, i64* %PC, align 8
; store i64 %var_2_55, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_53 to i64*
; %var_2_56 = inttoptr i64 %var_2_52 to i64*
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_57, align 8
; store i64 %var_2_53, i64* %var_2_56, align 8
%var_2_57 = load i64, i64* %RBP.i, align 8
%var_2_58 = add i64 %var_2_57, -16
%var_2_59 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, 4
; %var_2_60 = add i64 %var_2_59, 4
; Matched:\<badref\>:  store i64 %var_2_887, i64* %PC, align 8
; store i64 %var_2_60, i64* %var_2_3, align 8
%var_2_61 = inttoptr i64 %var_2_58 to i64*
%var_2_62 = load i64, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_1402, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_62, i64* %RDX.i1791, align 8
%var_2_63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_64 = add i64 %var_2_59, 8
store i64 %var_2_64, i64* %var_2_3, align 8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_108 to i64*
; %var_2_65 = inttoptr i64 %var_2_62 to i64*
; Matched:%var_2_111:  %var_2_111 = load i64, i64* %var_2_110, align 8
; %var_2_66 = load i64, i64* %var_2_65, align 8
; Matched:%var_2_67:  %var_2_67 = bitcast [32 x %union.VectorReg]* %var_2_4 to double*
; %var_2_67 = bitcast [32 x %union.VectorReg]* %var_2_63 to double*
%var_2_68 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_63, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_111, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_66, i64* %var_2_68, align 1
; Matched:%var_2_69:  %var_2_69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_70:  %var_2_70 = bitcast i64* %var_2_69 to double*
; %var_2_70 = bitcast i64* %var_2_69 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_60, 12
; %var_2_71 = add i64 %var_2_59, 12
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_71, i64* %var_2_3, align 8
%var_2_72 = load i64, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_523, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_72, i64* %RDX.i1791, align 8
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_72, 16
; %var_2_73 = add i64 %var_2_72, 16
; Matched:%var_2_2933:  %var_2_2933 = add i64 %var_2_2922, 17
; %var_2_74 = add i64 %var_2_59, 17
; Matched:\<badref\>:  store i64 %var_2_316, i64* %PC, align 8
; store i64 %var_2_74, i64* %var_2_3, align 8
; Matched:%var_2_75:  %var_2_75 = bitcast i64 %var_2_66 to double
; %var_2_75 = bitcast i64 %var_2_66 to double
; Matched:%var_2_76:  %var_2_76 = inttoptr i64 %var_2_73 to double*
; %var_2_76 = inttoptr i64 %var_2_73 to double*
; Matched:%var_2_77:  %var_2_77 = load double, double* %var_2_76, align 8
; %var_2_77 = load double, double* %var_2_76, align 8
; Matched:%var_2_78:  %var_2_78 = fadd double %var_2_75, %var_2_77
; %var_2_78 = fadd double %var_2_75, %var_2_77
; Matched:\<badref\>:  store double %var_2_78, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_78, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_58, -96
; %var_2_79 = add i64 %var_2_57, -96
; Matched:%var_2_1283:  %var_2_1283 = add i64 %var_2_1246, 22
; %var_2_80 = add i64 %var_2_59, 22
; Matched:\<badref\>:  store i64 %var_2_1511, i64* %PC, align 8
; store i64 %var_2_80, i64* %var_2_3, align 8
; Matched:%var_2_81:  %var_2_81 = inttoptr i64 %var_2_79 to double*
; %var_2_81 = inttoptr i64 %var_2_79 to double*
; Matched:\<badref\>:  store double %var_2_78, double* %var_2_81, align 8
; store double %var_2_78, double* %var_2_81, align 8
%var_2_82 = load i64, i64* %RBP.i, align 8
%var_2_83 = add i64 %var_2_82, -16
%var_2_84 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1552:  %var_2_1552 = add i64 %var_2_1551, 4
; %var_2_85 = add i64 %var_2_84, 4
; Matched:\<badref\>:  store i64 %var_2_1552, i64* %PC, align 8
; store i64 %var_2_85, i64* %var_2_3, align 8
%var_2_86 = inttoptr i64 %var_2_83 to i64*
%var_2_87 = load i64, i64* %var_2_86, align 8
; Matched:\<badref\>:  store i64 %var_2_692, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_87, i64* %RDX.i1791, align 8
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_128, 8
; %var_2_88 = add i64 %var_2_87, 8
%var_2_89 = add i64 %var_2_84, 9
store i64 %var_2_89, i64* %var_2_3, align 8
; Matched:%var_2_90:  %var_2_90 = inttoptr i64 %var_2_88 to i64*
; %var_2_90 = inttoptr i64 %var_2_88 to i64*
; Matched:%var_2_132:  %var_2_132 = load i64, i64* %var_2_131, align 8
; %var_2_91 = load i64, i64* %var_2_90, align 8
; Matched:\<badref\>:  store i64 %var_2_91, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_91, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1995:  %var_2_1995 = add i64 %var_2_1990, 13
; %var_2_92 = add i64 %var_2_84, 13
; Matched:\<badref\>:  store i64 %var_2_1995, i64* %PC, align 8
; store i64 %var_2_92, i64* %var_2_3, align 8
%var_2_93 = load i64, i64* %var_2_86, align 8
; Matched:\<badref\>:  store i64 %var_2_3032, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_93, i64* %RDX.i1791, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, 24
; %var_2_94 = add i64 %var_2_93, 24
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_84, 18
; %var_2_95 = add i64 %var_2_84, 18
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_95, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = bitcast i64 %var_2_91 to double
; %var_2_96 = bitcast i64 %var_2_91 to double
; Matched:%var_2_97:  %var_2_97 = inttoptr i64 %var_2_94 to double*
; %var_2_97 = inttoptr i64 %var_2_94 to double*
; Matched:%var_2_98:  %var_2_98 = load double, double* %var_2_97, align 8
; %var_2_98 = load double, double* %var_2_97, align 8
; Matched:%var_2_99:  %var_2_99 = fadd double %var_2_96, %var_2_98
; %var_2_99 = fadd double %var_2_96, %var_2_98
; Matched:\<badref\>:  store double %var_2_99, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_99, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_82, -104
; %var_2_100 = add i64 %var_2_82, -104
; Matched:%var_2_943:  %var_2_943 = add i64 %var_2_905, 23
; %var_2_101 = add i64 %var_2_84, 23
; Matched:\<badref\>:  store i64 %var_2_943, i64* %PC, align 8
; store i64 %var_2_101, i64* %var_2_3, align 8
; Matched:%var_2_102:  %var_2_102 = inttoptr i64 %var_2_100 to double*
; %var_2_102 = inttoptr i64 %var_2_100 to double*
; Matched:\<badref\>:  store double %var_2_99, double* %var_2_102, align 8
; store double %var_2_99, double* %var_2_102, align 8
%var_2_103 = load i64, i64* %RBP.i, align 8
%var_2_104 = add i64 %var_2_103, -16
%var_2_105 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1117:  %var_2_1117 = add i64 %var_2_1116, 4
; %var_2_106 = add i64 %var_2_105, 4
; Matched:\<badref\>:  store i64 %var_2_1476, i64* %PC, align 8
; store i64 %var_2_106, i64* %var_2_3, align 8
%var_2_107 = inttoptr i64 %var_2_104 to i64*
%var_2_108 = load i64, i64* %var_2_107, align 8
; Matched:\<badref\>:  store i64 %var_2_2498, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_108, i64* %RDX.i1791, align 8
%var_2_109 = add i64 %var_2_105, 8
store i64 %var_2_109, i64* %var_2_3, align 8
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_63 to i64*
; %var_2_110 = inttoptr i64 %var_2_108 to i64*
; Matched:%var_2_66:  %var_2_66 = load i64, i64* %var_2_65, align 8
; %var_2_111 = load i64, i64* %var_2_110, align 8
; Matched:\<badref\>:  store i64 %var_2_66, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_111, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_105, 12
; %var_2_112 = add i64 %var_2_105, 12
; Matched:\<badref\>:  store i64 %var_2_112, i64* %PC, align 8
; store i64 %var_2_112, i64* %var_2_3, align 8
%var_2_113 = load i64, i64* %var_2_107, align 8
; Matched:\<badref\>:  store i64 %var_2_218, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_113, i64* %RDX.i1791, align 8
; Matched:%var_2_114:  %var_2_114 = add i64 %var_2_113, 16
; %var_2_114 = add i64 %var_2_113, 16
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_286, 17
; %var_2_115 = add i64 %var_2_105, 17
; Matched:\<badref\>:  store i64 %var_2_2933, i64* %PC, align 8
; store i64 %var_2_115, i64* %var_2_3, align 8
; Matched:%var_2_116:  %var_2_116 = bitcast i64 %var_2_111 to double
; %var_2_116 = bitcast i64 %var_2_111 to double
; Matched:%var_2_117:  %var_2_117 = inttoptr i64 %var_2_114 to double*
; %var_2_117 = inttoptr i64 %var_2_114 to double*
; Matched:%var_2_118:  %var_2_118 = load double, double* %var_2_117, align 8
; %var_2_118 = load double, double* %var_2_117, align 8
; Matched:%var_2_119:  %var_2_119 = fsub double %var_2_116, %var_2_118
; %var_2_119 = fsub double %var_2_116, %var_2_118
; Matched:\<badref\>:  store double %var_2_119, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_119, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_103, -112
; %var_2_120 = add i64 %var_2_103, -112
; Matched:%var_2_2379:  %var_2_2379 = add i64 %var_2_2343, 22
; %var_2_121 = add i64 %var_2_105, 22
; Matched:\<badref\>:  store i64 %var_2_2607, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_120 to double*
; %var_2_122 = inttoptr i64 %var_2_120 to double*
; Matched:\<badref\>:  store double %var_2_119, double* %var_2_122, align 8
; store double %var_2_119, double* %var_2_122, align 8
%var_2_123 = load i64, i64* %RBP.i, align 8
%var_2_124 = add i64 %var_2_123, -16
%var_2_125 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_967:  %var_2_967 = add i64 %var_2_966, 4
; %var_2_126 = add i64 %var_2_125, 4
; Matched:\<badref\>:  store i64 %var_2_1324, i64* %PC, align 8
; store i64 %var_2_126, i64* %var_2_3, align 8
%var_2_127 = inttoptr i64 %var_2_124 to i64*
%var_2_128 = load i64, i64* %var_2_127, align 8
; Matched:\<badref\>:  store i64 %var_2_550, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_128, i64* %RDX.i1791, align 8
; Matched:%var_2_88:  %var_2_88 = add i64 %var_2_87, 8
; %var_2_129 = add i64 %var_2_128, 8
%var_2_130 = add i64 %var_2_125, 9
store i64 %var_2_130, i64* %var_2_3, align 8
; Matched:%var_2_131:  %var_2_131 = inttoptr i64 %var_2_129 to i64*
; %var_2_131 = inttoptr i64 %var_2_129 to i64*
; Matched:%var_2_91:  %var_2_91 = load i64, i64* %var_2_90, align 8
; %var_2_132 = load i64, i64* %var_2_131, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_132, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_286, 13
; %var_2_133 = add i64 %var_2_125, 13
; Matched:\<badref\>:  store i64 %var_2_291, i64* %PC, align 8
; store i64 %var_2_133, i64* %var_2_3, align 8
%var_2_134 = load i64, i64* %var_2_127, align 8
; Matched:\<badref\>:  store i64 %var_2_397, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_134, i64* %RDX.i1791, align 8
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_134, 24
; %var_2_135 = add i64 %var_2_134, 24
; Matched:%var_2_1432:  %var_2_1432 = add i64 %var_2_1399, 18
; %var_2_136 = add i64 %var_2_125, 18
; Matched:\<badref\>:  store i64 %var_2_1432, i64* %PC, align 8
; store i64 %var_2_136, i64* %var_2_3, align 8
; Matched:%var_2_137:  %var_2_137 = bitcast i64 %var_2_132 to double
; %var_2_137 = bitcast i64 %var_2_132 to double
; Matched:%var_2_138:  %var_2_138 = inttoptr i64 %var_2_135 to double*
; %var_2_138 = inttoptr i64 %var_2_135 to double*
; Matched:%var_2_139:  %var_2_139 = load double, double* %var_2_138, align 8
; %var_2_139 = load double, double* %var_2_138, align 8
; Matched:%var_2_140:  %var_2_140 = fsub double %var_2_137, %var_2_139
; %var_2_140 = fsub double %var_2_137, %var_2_139
; Matched:\<badref\>:  store double %var_2_140, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_140, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_123, -120
; %var_2_141 = add i64 %var_2_123, -120
; Matched:%var_2_770:  %var_2_770 = add i64 %var_2_753, 23
; %var_2_142 = add i64 %var_2_125, 23
; Matched:\<badref\>:  store i64 %var_2_770, i64* %PC, align 8
; store i64 %var_2_142, i64* %var_2_3, align 8
; Matched:%var_2_143:  %var_2_143 = inttoptr i64 %var_2_141 to double*
; %var_2_143 = inttoptr i64 %var_2_141 to double*
; Matched:\<badref\>:  store double %var_2_140, double* %var_2_143, align 8
; store double %var_2_140, double* %var_2_143, align 8
%var_2_144 = load i64, i64* %RBP.i, align 8
%var_2_145 = add i64 %var_2_144, -16
%var_2_146 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_478, 4
; %var_2_147 = add i64 %var_2_146, 4
; Matched:\<badref\>:  store i64 %var_2_147, i64* %PC, align 8
; store i64 %var_2_147, i64* %var_2_3, align 8
%var_2_148 = inttoptr i64 %var_2_145 to i64*
%var_2_149 = load i64, i64* %var_2_148, align 8
; Matched:\<badref\>:  store i64 %var_2_1810, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_149, i64* %RDX.i1791, align 8
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_149, 32
; %var_2_150 = add i64 %var_2_149, 32
%var_2_151 = add i64 %var_2_146, 9
store i64 %var_2_151, i64* %var_2_3, align 8
; Matched:%var_2_152:  %var_2_152 = inttoptr i64 %var_2_150 to i64*
; %var_2_152 = inttoptr i64 %var_2_150 to i64*
; Matched:%var_2_153:  %var_2_153 = load i64, i64* %var_2_152, align 8
; %var_2_153 = load i64, i64* %var_2_152, align 8
; Matched:\<badref\>:  store i64 %var_2_195, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_153, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1719:  %var_2_1719 = add i64 %var_2_1714, 13
; %var_2_154 = add i64 %var_2_146, 13
; Matched:\<badref\>:  store i64 %var_2_643, i64* %PC, align 8
; store i64 %var_2_154, i64* %var_2_3, align 8
%var_2_155 = load i64, i64* %var_2_148, align 8
; Matched:\<badref\>:  store i64 %var_2_2532, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %RDX.i1791, align 8
; Matched:%var_2_156:  %var_2_156 = add i64 %var_2_155, 48
; %var_2_156 = add i64 %var_2_155, 48
; Matched:%var_2_2528:  %var_2_2528 = add i64 %var_2_2495, 18
; %var_2_157 = add i64 %var_2_146, 18
; Matched:\<badref\>:  store i64 %var_2_2528, i64* %PC, align 8
; store i64 %var_2_157, i64* %var_2_3, align 8
; Matched:%var_2_158:  %var_2_158 = bitcast i64 %var_2_153 to double
; %var_2_158 = bitcast i64 %var_2_153 to double
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_156 to double*
; %var_2_159 = inttoptr i64 %var_2_156 to double*
; Matched:%var_2_160:  %var_2_160 = load double, double* %var_2_159, align 8
; %var_2_160 = load double, double* %var_2_159, align 8
; Matched:%var_2_161:  %var_2_161 = fadd double %var_2_158, %var_2_160
; %var_2_161 = fadd double %var_2_158, %var_2_160
; Matched:\<badref\>:  store double %var_2_161, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_161, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_162:  %var_2_162 = add i64 %var_2_144, -128
; %var_2_162 = add i64 %var_2_144, -128
; Matched:%var_2_690:  %var_2_690 = add i64 %var_2_668, 23
; %var_2_163 = add i64 %var_2_146, 23
; Matched:\<badref\>:  store i64 %var_2_690, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_164:  %var_2_164 = inttoptr i64 %var_2_162 to double*
; %var_2_164 = inttoptr i64 %var_2_162 to double*
; Matched:\<badref\>:  store double %var_2_161, double* %var_2_164, align 8
; store double %var_2_161, double* %var_2_164, align 8
%var_2_165 = load i64, i64* %RBP.i, align 8
%var_2_166 = add i64 %var_2_165, -16
%var_2_167 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_168:  %var_2_168 = add i64 %var_2_167, 4
; %var_2_168 = add i64 %var_2_167, 4
; Matched:\<badref\>:  store i64 %var_2_1194, i64* %PC, align 8
; store i64 %var_2_168, i64* %var_2_3, align 8
%var_2_169 = inttoptr i64 %var_2_166 to i64*
%var_2_170 = load i64, i64* %var_2_169, align 8
; Matched:\<badref\>:  store i64 %var_2_418, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_170, i64* %RDX.i1791, align 8
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_212, 40
; %var_2_171 = add i64 %var_2_170, 40
%var_2_172 = add i64 %var_2_167, 9
store i64 %var_2_172, i64* %var_2_3, align 8
; Matched:%var_2_173:  %var_2_173 = inttoptr i64 %var_2_171 to i64*
; %var_2_173 = inttoptr i64 %var_2_171 to i64*
; Matched:%var_2_216:  %var_2_216 = load i64, i64* %var_2_215, align 8
; %var_2_174 = load i64, i64* %var_2_173, align 8
; Matched:\<badref\>:  store i64 %var_2_216, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_174, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_92:  %var_2_92 = add i64 %var_2_84, 13
; %var_2_175 = add i64 %var_2_167, 13
; Matched:\<badref\>:  store i64 %var_2_1657, i64* %PC, align 8
; store i64 %var_2_175, i64* %var_2_3, align 8
%var_2_176 = load i64, i64* %var_2_169, align 8
; Matched:\<badref\>:  store i64 %var_2_93, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_176, i64* %RDX.i1791, align 8
; Matched:%var_2_177:  %var_2_177 = add i64 %var_2_176, 56
; %var_2_177 = add i64 %var_2_176, 56
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_167, 18
; %var_2_178 = add i64 %var_2_167, 18
; Matched:\<badref\>:  store i64 %var_2_1025, i64* %PC, align 8
; store i64 %var_2_178, i64* %var_2_3, align 8
; Matched:%var_2_179:  %var_2_179 = bitcast i64 %var_2_174 to double
; %var_2_179 = bitcast i64 %var_2_174 to double
; Matched:%var_2_180:  %var_2_180 = inttoptr i64 %var_2_177 to double*
; %var_2_180 = inttoptr i64 %var_2_177 to double*
; Matched:%var_2_181:  %var_2_181 = load double, double* %var_2_180, align 8
; %var_2_181 = load double, double* %var_2_180, align 8
; Matched:%var_2_182:  %var_2_182 = fadd double %var_2_179, %var_2_181
; %var_2_182 = fadd double %var_2_179, %var_2_181
; Matched:\<badref\>:  store double %var_2_182, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_182, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_165, -136
; %var_2_183 = add i64 %var_2_165, -136
; Matched:%var_2_184:  %var_2_184 = add i64 %var_2_167, 26
; %var_2_184 = add i64 %var_2_167, 26
; Matched:\<badref\>:  store i64 %var_2_184, i64* %PC, align 8
; store i64 %var_2_184, i64* %var_2_3, align 8
; Matched:%var_2_185:  %var_2_185 = inttoptr i64 %var_2_183 to double*
; %var_2_185 = inttoptr i64 %var_2_183 to double*
; Matched:\<badref\>:  store double %var_2_182, double* %var_2_185, align 8
; store double %var_2_182, double* %var_2_185, align 8
%var_2_186 = load i64, i64* %RBP.i, align 8
%var_2_187 = add i64 %var_2_186, -16
%var_2_188 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_105, 4
; %var_2_189 = add i64 %var_2_188, 4
; Matched:\<badref\>:  store i64 %var_2_2648, i64* %PC, align 8
; store i64 %var_2_189, i64* %var_2_3, align 8
%var_2_190 = inttoptr i64 %var_2_187 to i64*
%var_2_191 = load i64, i64* %var_2_190, align 8
; Matched:\<badref\>:  store i64 %var_2_261, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_191, i64* %RDX.i1791, align 8
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_191, 32
; %var_2_192 = add i64 %var_2_191, 32
%var_2_193 = add i64 %var_2_188, 9
store i64 %var_2_193, i64* %var_2_3, align 8
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_192 to i64*
; %var_2_194 = inttoptr i64 %var_2_192 to i64*
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %var_2_194, align 8
; %var_2_195 = load i64, i64* %var_2_194, align 8
; Matched:\<badref\>:  store i64 %var_2_153, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_195, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1849:  %var_2_1849 = add i64 %var_2_1844, 13
; %var_2_196 = add i64 %var_2_188, 13
; Matched:\<badref\>:  store i64 %var_2_1849, i64* %PC, align 8
; store i64 %var_2_196, i64* %var_2_3, align 8
%var_2_197 = load i64, i64* %var_2_190, align 8
; Matched:\<badref\>:  store i64 %var_2_1665, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_197, i64* %RDX.i1791, align 8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_197, 48
; %var_2_198 = add i64 %var_2_197, 48
; Matched:%var_2_199:  %var_2_199 = add i64 %var_2_188, 18
; %var_2_199 = add i64 %var_2_188, 18
; Matched:\<badref\>:  store i64 %var_2_199, i64* %PC, align 8
; store i64 %var_2_199, i64* %var_2_3, align 8
; Matched:%var_2_200:  %var_2_200 = bitcast i64 %var_2_195 to double
; %var_2_200 = bitcast i64 %var_2_195 to double
; Matched:%var_2_201:  %var_2_201 = inttoptr i64 %var_2_198 to double*
; %var_2_201 = inttoptr i64 %var_2_198 to double*
; Matched:%var_2_202:  %var_2_202 = load double, double* %var_2_201, align 8
; %var_2_202 = load double, double* %var_2_201, align 8
; Matched:%var_2_203:  %var_2_203 = fsub double %var_2_200, %var_2_202
; %var_2_203 = fsub double %var_2_200, %var_2_202
; Matched:\<badref\>:  store double %var_2_203, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_203, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_204:  %var_2_204 = add i64 %var_2_186, -144
; %var_2_204 = add i64 %var_2_186, -144
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_188, 26
; %var_2_205 = add i64 %var_2_188, 26
; Matched:\<badref\>:  store i64 %var_2_205, i64* %PC, align 8
; store i64 %var_2_205, i64* %var_2_3, align 8
; Matched:%var_2_206:  %var_2_206 = inttoptr i64 %var_2_204 to double*
; %var_2_206 = inttoptr i64 %var_2_204 to double*
; Matched:\<badref\>:  store double %var_2_203, double* %var_2_206, align 8
; store double %var_2_203, double* %var_2_206, align 8
%var_2_207 = load i64, i64* %RBP.i, align 8
%var_2_208 = add i64 %var_2_207, -16
%var_2_209 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2496:  %var_2_2496 = add i64 %var_2_2495, 4
; %var_2_210 = add i64 %var_2_209, 4
; Matched:\<badref\>:  store i64 %var_2_210, i64* %PC, align 8
; store i64 %var_2_210, i64* %var_2_3, align 8
%var_2_211 = inttoptr i64 %var_2_208 to i64*
%var_2_212 = load i64, i64* %var_2_211, align 8
; Matched:\<badref\>:  store i64 %var_2_113, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_212, i64* %RDX.i1791, align 8
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_170, 40
; %var_2_213 = add i64 %var_2_212, 40
%var_2_214 = add i64 %var_2_209, 9
store i64 %var_2_214, i64* %var_2_3, align 8
; Matched:%var_2_215:  %var_2_215 = inttoptr i64 %var_2_213 to i64*
; %var_2_215 = inttoptr i64 %var_2_213 to i64*
; Matched:%var_2_174:  %var_2_174 = load i64, i64* %var_2_173, align 8
; %var_2_216 = load i64, i64* %var_2_215, align 8
; Matched:\<badref\>:  store i64 %var_2_174, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_216, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_457, 13
; %var_2_217 = add i64 %var_2_209, 13
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8
; store i64 %var_2_217, i64* %var_2_3, align 8
%var_2_218 = load i64, i64* %var_2_211, align 8
; Matched:\<badref\>:  store i64 %var_2_280, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_218, i64* %RDX.i1791, align 8
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_218, 56
; %var_2_219 = add i64 %var_2_218, 56
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_209, 18
; %var_2_220 = add i64 %var_2_209, 18
; Matched:\<badref\>:  store i64 %var_2_220, i64* %PC, align 8
; store i64 %var_2_220, i64* %var_2_3, align 8
; Matched:%var_2_221:  %var_2_221 = bitcast i64 %var_2_216 to double
; %var_2_221 = bitcast i64 %var_2_216 to double
; Matched:%var_2_222:  %var_2_222 = inttoptr i64 %var_2_219 to double*
; %var_2_222 = inttoptr i64 %var_2_219 to double*
; Matched:%var_2_223:  %var_2_223 = load double, double* %var_2_222, align 8
; %var_2_223 = load double, double* %var_2_222, align 8
; Matched:%var_2_224:  %var_2_224 = fsub double %var_2_221, %var_2_223
; %var_2_224 = fsub double %var_2_221, %var_2_223
; Matched:\<badref\>:  store double %var_2_224, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_224, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_207, -152
; %var_2_225 = add i64 %var_2_207, -152
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_209, 26
; %var_2_226 = add i64 %var_2_209, 26
; Matched:\<badref\>:  store i64 %var_2_226, i64* %PC, align 8
; store i64 %var_2_226, i64* %var_2_3, align 8
; Matched:%var_2_227:  %var_2_227 = inttoptr i64 %var_2_225 to double*
; %var_2_227 = inttoptr i64 %var_2_225 to double*
; Matched:\<badref\>:  store double %var_2_224, double* %var_2_227, align 8
; store double %var_2_224, double* %var_2_227, align 8
%var_2_228 = load i64, i64* %RBP.i, align 8
%var_2_229 = add i64 %var_2_228, -96
%var_2_230 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_231:  %var_2_231 = add i64 %var_2_230, 5
; %var_2_231 = add i64 %var_2_230, 5
; Matched:\<badref\>:  store i64 %var_2_1628, i64* %PC, align 8
; store i64 %var_2_231, i64* %var_2_3, align 8
%var_2_232 = inttoptr i64 %var_2_229 to i64*
%var_2_233 = load i64, i64* %var_2_232, align 8
; Matched:\<badref\>:  store i64 %var_2_270, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_233, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_566:  %var_2_566 = add i64 %var_2_560, -128
; %var_2_234 = add i64 %var_2_228, -128
; Matched:%var_2_783:  %var_2_783 = add i64 %var_2_778, 10
; %var_2_235 = add i64 %var_2_230, 10
; Matched:\<badref\>:  store i64 %var_2_783, i64* %PC, align 8
; store i64 %var_2_235, i64* %var_2_3, align 8
; Matched:%var_2_568:  %var_2_568 = bitcast i64 %var_2_565 to double
; %var_2_236 = bitcast i64 %var_2_233 to double
; Matched:%var_2_2882:  %var_2_2882 = inttoptr i64 %var_2_2879 to double*
; %var_2_237 = inttoptr i64 %var_2_234 to double*
; Matched:%var_2_570:  %var_2_570 = load double, double* %var_2_569, align 8
; %var_2_238 = load double, double* %var_2_237, align 8
; Matched:%var_2_2884:  %var_2_2884 = fadd double %var_2_2881, %var_2_2883
; %var_2_239 = fadd double %var_2_236, %var_2_238
; Matched:\<badref\>:  store double %var_2_2884, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_239, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_240 = add i64 %var_2_228, -16
; Matched:%var_2_630:  %var_2_630 = add i64 %var_2_619, 14
; %var_2_241 = add i64 %var_2_230, 14
; Matched:\<badref\>:  store i64 %var_2_390, i64* %PC, align 8
; store i64 %var_2_241, i64* %var_2_3, align 8
%var_2_242 = inttoptr i64 %var_2_240 to i64*
%var_2_243 = load i64, i64* %var_2_242, align 8
; Matched:\<badref\>:  store i64 %var_2_1512, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %RDX.i1791, align 8
; Matched:%var_2_2169:  %var_2_2169 = add i64 %var_2_2136, 18
; %var_2_244 = add i64 %var_2_230, 18
; Matched:\<badref\>:  store i64 %var_2_2169, i64* %PC, align 8
; store i64 %var_2_244, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_243 to double*
; %var_2_245 = inttoptr i64 %var_2_243 to double*
; Matched:\<badref\>:  store double %var_2_239, double* %var_2_245, align 8
; store double %var_2_239, double* %var_2_245, align 8
%var_2_246 = load i64, i64* %RBP.i, align 8
%var_2_247 = add i64 %var_2_246, -104
%var_2_248 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1991:  %var_2_1991 = add i64 %var_2_1990, 5
; %var_2_249 = add i64 %var_2_248, 5
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8
; store i64 %var_2_249, i64* %var_2_3, align 8
%var_2_250 = inttoptr i64 %var_2_247 to i64*
%var_2_251 = load i64, i64* %var_2_250, align 8
; Matched:\<badref\>:  store i64 %var_2_584, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_251, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_585:  %var_2_585 = add i64 %var_2_579, -136
; %var_2_252 = add i64 %var_2_246, -136
; Matched:%var_2_743:  %var_2_743 = add i64 %var_2_738, 13
; %var_2_253 = add i64 %var_2_248, 13
; Matched:\<badref\>:  store i64 %var_2_743, i64* %PC, align 8
; store i64 %var_2_253, i64* %var_2_3, align 8
; Matched:%var_2_587:  %var_2_587 = bitcast i64 %var_2_584 to double
; %var_2_254 = bitcast i64 %var_2_251 to double
; Matched:%var_2_588:  %var_2_588 = inttoptr i64 %var_2_585 to double*
; %var_2_255 = inttoptr i64 %var_2_252 to double*
; Matched:%var_2_589:  %var_2_589 = load double, double* %var_2_588, align 8
; %var_2_256 = load double, double* %var_2_255, align 8
; Matched:%var_2_590:  %var_2_590 = fadd double %var_2_587, %var_2_589
; %var_2_257 = fadd double %var_2_254, %var_2_256
; Matched:\<badref\>:  store double %var_2_590, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_257, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_258 = add i64 %var_2_246, -16
; Matched:%var_2_2890:  %var_2_2890 = add i64 %var_2_2875, 17
; %var_2_259 = add i64 %var_2_248, 17
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_259, i64* %var_2_3, align 8
%var_2_260 = inttoptr i64 %var_2_258 to i64*
%var_2_261 = load i64, i64* %var_2_260, align 8
; Matched:\<badref\>:  store i64 %var_2_299, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_261, i64* %RDX.i1791, align 8
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_261, 8
; %var_2_262 = add i64 %var_2_261, 8
; Matched:%var_2_2683:  %var_2_2683 = add i64 %var_2_2647, 22
; %var_2_263 = add i64 %var_2_248, 22
; Matched:\<badref\>:  store i64 %var_2_339, i64* %PC, align 8
; store i64 %var_2_263, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_262 to double*
; %var_2_264 = inttoptr i64 %var_2_262 to double*
; Matched:\<badref\>:  store double %var_2_257, double* %var_2_264, align 8
; store double %var_2_257, double* %var_2_264, align 8
%var_2_265 = load i64, i64* %RBP.i, align 8
%var_2_266 = add i64 %var_2_265, -96
%var_2_267 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1933:  %var_2_1933 = add i64 %var_2_1932, 5
; %var_2_268 = add i64 %var_2_267, 5
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8
; store i64 %var_2_268, i64* %var_2_3, align 8
%var_2_269 = inttoptr i64 %var_2_266 to i64*
%var_2_270 = load i64, i64* %var_2_269, align 8
; Matched:\<badref\>:  store i64 %var_2_565, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_270, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_623:  %var_2_623 = add i64 %var_2_617, -128
; %var_2_271 = add i64 %var_2_265, -128
; Matched:%var_2_2974:  %var_2_2974 = add i64 %var_2_2969, 10
; %var_2_272 = add i64 %var_2_267, 10
; Matched:\<badref\>:  store i64 %var_2_2974, i64* %PC, align 8
; store i64 %var_2_272, i64* %var_2_3, align 8
; Matched:%var_2_273:  %var_2_273 = bitcast i64 %var_2_270 to double
; %var_2_273 = bitcast i64 %var_2_270 to double
; Matched:%var_2_626:  %var_2_626 = inttoptr i64 %var_2_623 to double*
; %var_2_274 = inttoptr i64 %var_2_271 to double*
; Matched:%var_2_275:  %var_2_275 = load double, double* %var_2_274, align 8
; %var_2_275 = load double, double* %var_2_274, align 8
; Matched:%var_2_276:  %var_2_276 = fsub double %var_2_273, %var_2_275
; %var_2_276 = fsub double %var_2_273, %var_2_275
; Matched:\<badref\>:  store double %var_2_276, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_276, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_277 = add i64 %var_2_265, -16
; Matched:%var_2_390:  %var_2_390 = add i64 %var_2_381, 14
; %var_2_278 = add i64 %var_2_267, 14
; Matched:\<badref\>:  store i64 %var_2_2886, i64* %PC, align 8
; store i64 %var_2_278, i64* %var_2_3, align 8
%var_2_279 = inttoptr i64 %var_2_277 to i64*
%var_2_280 = load i64, i64* %var_2_279, align 8
; Matched:\<badref\>:  store i64 %var_2_2422, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_280, i64* %RDX.i1791, align 8
; Matched:%var_2_281:  %var_2_281 = add i64 %var_2_280, 32
; %var_2_281 = add i64 %var_2_280, 32
; Matched:%var_2_577:  %var_2_577 = add i64 %var_2_562, 19
; %var_2_282 = add i64 %var_2_267, 19
; Matched:\<badref\>:  store i64 %var_2_577, i64* %PC, align 8
; store i64 %var_2_282, i64* %var_2_3, align 8
; Matched:%var_2_283:  %var_2_283 = inttoptr i64 %var_2_281 to double*
; %var_2_283 = inttoptr i64 %var_2_281 to double*
; Matched:\<badref\>:  store double %var_2_276, double* %var_2_283, align 8
; store double %var_2_276, double* %var_2_283, align 8
%var_2_284 = load i64, i64* %RBP.i, align 8
%var_2_285 = add i64 %var_2_284, -104
%var_2_286 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3297:  %var_2_3297 = add i64 %var_2_3296, 5
; %var_2_287 = add i64 %var_2_286, 5
; Matched:\<badref\>:  store i64 %var_2_2219, i64* %PC, align 8
; store i64 %var_2_287, i64* %var_2_3, align 8
%var_2_288 = inttoptr i64 %var_2_285 to i64*
%var_2_289 = load i64, i64* %var_2_288, align 8
; Matched:\<badref\>:  store i64 %var_2_251, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_289, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_284, -136
; %var_2_290 = add i64 %var_2_284, -136
; Matched:%var_2_1049:  %var_2_1049 = add i64 %var_2_1034, 13
; %var_2_291 = add i64 %var_2_286, 13
; Matched:\<badref\>:  store i64 %var_2_1049, i64* %PC, align 8
; store i64 %var_2_291, i64* %var_2_3, align 8
; Matched:%var_2_292:  %var_2_292 = bitcast i64 %var_2_289 to double
; %var_2_292 = bitcast i64 %var_2_289 to double
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_290 to double*
; %var_2_293 = inttoptr i64 %var_2_290 to double*
; Matched:%var_2_294:  %var_2_294 = load double, double* %var_2_293, align 8
; %var_2_294 = load double, double* %var_2_293, align 8
; Matched:%var_2_295:  %var_2_295 = fsub double %var_2_292, %var_2_294
; %var_2_295 = fsub double %var_2_292, %var_2_294
; Matched:\<badref\>:  store double %var_2_295, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_295, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_296 = add i64 %var_2_284, -16
; Matched:%var_2_316:  %var_2_316 = add i64 %var_2_305, 17
; %var_2_297 = add i64 %var_2_286, 17
; Matched:\<badref\>:  store i64 %var_2_335, i64* %PC, align 8
; store i64 %var_2_297, i64* %var_2_3, align 8
%var_2_298 = inttoptr i64 %var_2_296 to i64*
%var_2_299 = load i64, i64* %var_2_298, align 8
; Matched:\<badref\>:  store i64 %var_2_1360, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_299, i64* %RDX.i1791, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_299, 40
; %var_2_300 = add i64 %var_2_299, 40
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_305, 22
; %var_2_301 = add i64 %var_2_286, 22
; Matched:\<badref\>:  store i64 %var_2_1724, i64* %PC, align 8
; store i64 %var_2_301, i64* %var_2_3, align 8
; Matched:%var_2_302:  %var_2_302 = inttoptr i64 %var_2_300 to double*
; %var_2_302 = inttoptr i64 %var_2_300 to double*
; Matched:\<badref\>:  store double %var_2_295, double* %var_2_302, align 8
; store double %var_2_295, double* %var_2_302, align 8
%var_2_303 = load i64, i64* %RBP.i, align 8
%var_2_304 = add i64 %var_2_303, -112
%var_2_305 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3224:  %var_2_3224 = add i64 %var_2_3223, 5
; %var_2_306 = add i64 %var_2_305, 5
; Matched:\<badref\>:  store i64 %var_2_306, i64* %PC, align 8
; store i64 %var_2_306, i64* %var_2_3, align 8
%var_2_307 = inttoptr i64 %var_2_304 to i64*
%var_2_308 = load i64, i64* %var_2_307, align 8
; Matched:\<badref\>:  store i64 %var_2_3284, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_308, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_309 = add i64 %var_2_303, -152
; Matched:%var_2_549:  %var_2_549 = add i64 %var_2_541, 13
; %var_2_310 = add i64 %var_2_305, 13
; Matched:\<badref\>:  store i64 %var_2_549, i64* %PC, align 8
; store i64 %var_2_310, i64* %var_2_3, align 8
%var_2_311 = bitcast i64 %var_2_308 to double
%var_2_312 = inttoptr i64 %var_2_309 to double*
%var_2_313 = load double, double* %var_2_312, align 8
%var_2_314 = fsub double %var_2_311, %var_2_313
; Matched:\<badref\>:  store double %var_2_647, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_314, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_315 = add i64 %var_2_303, -16
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_324, 17
; %var_2_316 = add i64 %var_2_305, 17
; Matched:\<badref\>:  store i64 %var_2_354, i64* %PC, align 8
; store i64 %var_2_316, i64* %var_2_3, align 8
%var_2_317 = inttoptr i64 %var_2_315 to i64*
%var_2_318 = load i64, i64* %var_2_317, align 8
; Matched:\<badref\>:  store i64 %var_2_487, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_318, i64* %RDX.i1791, align 8
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_318, 16
; %var_2_319 = add i64 %var_2_318, 16
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_105, 22
; %var_2_320 = add i64 %var_2_305, 22
; Matched:\<badref\>:  store i64 %var_2_615, i64* %PC, align 8
; store i64 %var_2_320, i64* %var_2_3, align 8
; Matched:%var_2_321:  %var_2_321 = inttoptr i64 %var_2_319 to double*
; %var_2_321 = inttoptr i64 %var_2_319 to double*
; Matched:\<badref\>:  store double %var_2_314, double* %var_2_321, align 8
; store double %var_2_314, double* %var_2_321, align 8
%var_2_322 = load i64, i64* %RBP.i, align 8
%var_2_323 = add i64 %var_2_322, -120
%var_2_324 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1729:  %var_2_1729 = add i64 %var_2_1728, 5
; %var_2_325 = add i64 %var_2_324, 5
; Matched:\<badref\>:  store i64 %var_2_654, i64* %PC, align 8
; store i64 %var_2_325, i64* %var_2_3, align 8
%var_2_326 = inttoptr i64 %var_2_323 to i64*
%var_2_327 = load i64, i64* %var_2_326, align 8
; Matched:\<badref\>:  store i64 %var_2_365, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_327, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_328 = add i64 %var_2_322, -144
; Matched:%var_2_658:  %var_2_658 = add i64 %var_2_653, 13
; %var_2_329 = add i64 %var_2_324, 13
; Matched:\<badref\>:  store i64 %var_2_658, i64* %PC, align 8
; store i64 %var_2_329, i64* %var_2_3, align 8
%var_2_330 = bitcast i64 %var_2_327 to double
%var_2_331 = inttoptr i64 %var_2_328 to double*
%var_2_332 = load double, double* %var_2_331, align 8
%var_2_333 = fadd double %var_2_330, %var_2_332
; Matched:\<badref\>:  store double %var_2_662, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_333, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_334 = add i64 %var_2_322, -16
; Matched:%var_2_354:  %var_2_354 = add i64 %var_2_343, 17
; %var_2_335 = add i64 %var_2_324, 17
; Matched:\<badref\>:  store i64 %var_2_373, i64* %PC, align 8
; store i64 %var_2_335, i64* %var_2_3, align 8
%var_2_336 = inttoptr i64 %var_2_334 to i64*
%var_2_337 = load i64, i64* %var_2_336, align 8
; Matched:\<badref\>:  store i64 %var_2_170, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_337, i64* %RDX.i1791, align 8
; Matched:%var_2_338:  %var_2_338 = add i64 %var_2_337, 24
; %var_2_338 = add i64 %var_2_337, 24
; Matched:%var_2_1153:  %var_2_1153 = add i64 %var_2_1116, 22
; %var_2_339 = add i64 %var_2_324, 22
; Matched:\<badref\>:  store i64 %var_2_377, i64* %PC, align 8
; store i64 %var_2_339, i64* %var_2_3, align 8
; Matched:%var_2_340:  %var_2_340 = inttoptr i64 %var_2_338 to double*
; %var_2_340 = inttoptr i64 %var_2_338 to double*
; Matched:\<badref\>:  store double %var_2_333, double* %var_2_340, align 8
; store double %var_2_333, double* %var_2_340, align 8
%var_2_341 = load i64, i64* %RBP.i, align 8
%var_2_342 = add i64 %var_2_341, -112
%var_2_343 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2006:  %var_2_2006 = add i64 %var_2_2005, 5
; %var_2_344 = add i64 %var_2_343, 5
; Matched:\<badref\>:  store i64 %var_2_669, i64* %PC, align 8
; store i64 %var_2_344, i64* %var_2_3, align 8
%var_2_345 = inttoptr i64 %var_2_342 to i64*
%var_2_346 = load i64, i64* %var_2_345, align 8
; Matched:\<badref\>:  store i64 %var_2_3138, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_346, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_347 = add i64 %var_2_341, -152
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_167, 13
; %var_2_348 = add i64 %var_2_343, 13
; Matched:\<badref\>:  store i64 %var_2_507, i64* %PC, align 8
; store i64 %var_2_348, i64* %var_2_3, align 8
%var_2_349 = bitcast i64 %var_2_346 to double
%var_2_350 = inttoptr i64 %var_2_347 to double*
%var_2_351 = load double, double* %var_2_350, align 8
%var_2_352 = fadd double %var_2_349, %var_2_351
; Matched:\<badref\>:  store double %var_2_3290, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_352, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_353 = add i64 %var_2_341, -16
; Matched:%var_2_1077:  %var_2_1077 = add i64 %var_2_1063, 17
; %var_2_354 = add i64 %var_2_343, 17
; Matched:\<badref\>:  store i64 %var_2_1663, i64* %PC, align 8
; store i64 %var_2_354, i64* %var_2_3, align 8
%var_2_355 = inttoptr i64 %var_2_353 to i64*
%var_2_356 = load i64, i64* %var_2_355, align 8
; Matched:\<badref\>:  store i64 %var_2_502, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_356, i64* %RDX.i1791, align 8
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_356, 48
; %var_2_357 = add i64 %var_2_356, 48
; Matched:%var_2_596:  %var_2_596 = add i64 %var_2_581, 22
; %var_2_358 = add i64 %var_2_343, 22
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_358, i64* %var_2_3, align 8
; Matched:%var_2_359:  %var_2_359 = inttoptr i64 %var_2_357 to double*
; %var_2_359 = inttoptr i64 %var_2_357 to double*
; Matched:\<badref\>:  store double %var_2_352, double* %var_2_359, align 8
; store double %var_2_352, double* %var_2_359, align 8
%var_2_360 = load i64, i64* %RBP.i, align 8
%var_2_361 = add i64 %var_2_360, -120
%var_2_362 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1860:  %var_2_1860 = add i64 %var_2_1859, 5
; %var_2_363 = add i64 %var_2_362, 5
; Matched:\<badref\>:  store i64 %var_2_3370, i64* %PC, align 8
; store i64 %var_2_363, i64* %var_2_3, align 8
%var_2_364 = inttoptr i64 %var_2_361 to i64*
%var_2_365 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_3299, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_365, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_366 = add i64 %var_2_360, -144
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_520, 13
; %var_2_367 = add i64 %var_2_362, 13
; Matched:\<badref\>:  store i64 %var_2_528, i64* %PC, align 8
; store i64 %var_2_367, i64* %var_2_3, align 8
%var_2_368 = bitcast i64 %var_2_365 to double
%var_2_369 = inttoptr i64 %var_2_366 to double*
%var_2_370 = load double, double* %var_2_369, align 8
%var_2_371 = fsub double %var_2_368, %var_2_370
; Matched:\<badref\>:  store double %var_2_3305, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_371, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_372 = add i64 %var_2_360, -16
; Matched:%var_2_1663:  %var_2_1663 = add i64 %var_2_1652, 17
; %var_2_373 = add i64 %var_2_362, 17
; Matched:\<badref\>:  store i64 %var_2_1207, i64* %PC, align 8
; store i64 %var_2_373, i64* %var_2_3, align 8
%var_2_374 = inttoptr i64 %var_2_372 to i64*
%var_2_375 = load i64, i64* %var_2_374, align 8
; Matched:\<badref\>:  store i64 %var_2_508, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_375, i64* %RDX.i1791, align 8
; Matched:%var_2_376:  %var_2_376 = add i64 %var_2_375, 56
; %var_2_376 = add i64 %var_2_375, 56
; Matched:%var_2_1359:  %var_2_1359 = add i64 %var_2_1323, 22
; %var_2_377 = add i64 %var_2_362, 22
; Matched:\<badref\>:  store i64 %var_2_358, i64* %PC, align 8
; store i64 %var_2_377, i64* %var_2_3, align 8
; Matched:%var_2_378:  %var_2_378 = inttoptr i64 %var_2_376 to double*
; %var_2_378 = inttoptr i64 %var_2_376 to double*
; Matched:\<badref\>:  store double %var_2_371, double* %var_2_378, align 8
; store double %var_2_371, double* %var_2_378, align 8
; Matched:%var_2_903:  %var_2_903 = load i64, i64* %RBP, align 8
; %var_2_379 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_904:  %var_2_904 = add i64 %var_2_903, -24
; %var_2_380 = add i64 %var_2_379, -24
%var_2_381 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_382:  %var_2_382 = add i64 %var_2_381, 4
; %var_2_382 = add i64 %var_2_381, 4
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_382, i64* %var_2_3, align 8
; Matched:%var_2_2179:  %var_2_2179 = inttoptr i64 %var_2_2176 to i64*
; %var_2_383 = inttoptr i64 %var_2_380 to i64*
; Matched:%var_2_2180:  %var_2_2180 = load i64, i64* %var_2_2179, align 8
; %var_2_384 = load i64, i64* %var_2_383, align 8
; Matched:\<badref\>:  store i64 %var_2_2139, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_384, i64* %RDX.i1791, align 8
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_384, 16
; %var_2_385 = add i64 %var_2_384, 16
%var_2_386 = add i64 %var_2_381, 9
store i64 %var_2_386, i64* %var_2_3, align 8
; Matched:%var_2_387:  %var_2_387 = inttoptr i64 %var_2_385 to i64*
; %var_2_387 = inttoptr i64 %var_2_385 to i64*
; Matched:%var_2_388:  %var_2_388 = load i64, i64* %var_2_387, align 8
; %var_2_388 = load i64, i64* %var_2_387, align 8
; Matched:\<badref\>:  store i64 %var_2_388, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_388, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_389:  %var_2_389 = add i64 %var_2_379, -48
; %var_2_389 = add i64 %var_2_379, -48
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_230, 14
; %var_2_390 = add i64 %var_2_381, 14
; Matched:\<badref\>:  store i64 %var_2_630, i64* %PC, align 8
; store i64 %var_2_390, i64* %var_2_3, align 8
; Matched:%var_2_391:  %var_2_391 = inttoptr i64 %var_2_389 to i64*
; %var_2_391 = inttoptr i64 %var_2_389 to i64*
; Matched:\<badref\>:  store i64 %var_2_388, i64* %var_2_391, align 8
; store i64 %var_2_388, i64* %var_2_391, align 8
%var_2_392 = load i64, i64* %RBP.i, align 8
%var_2_393 = add i64 %var_2_392, -16
%var_2_394 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_147:  %var_2_147 = add i64 %var_2_146, 4
; %var_2_395 = add i64 %var_2_394, 4
; Matched:\<badref\>:  store i64 %var_2_395, i64* %PC, align 8
; store i64 %var_2_395, i64* %var_2_3, align 8
%var_2_396 = inttoptr i64 %var_2_393 to i64*
%var_2_397 = load i64, i64* %var_2_396, align 8
; Matched:\<badref\>:  store i64 %var_2_191, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_397, i64* %RDX.i1791, align 8
; Matched:%var_2_398:  %var_2_398 = add i64 %var_2_397, 64
; %var_2_398 = add i64 %var_2_397, 64
%var_2_399 = add i64 %var_2_394, 9
store i64 %var_2_399, i64* %var_2_3, align 8
; Matched:%var_2_442:  %var_2_442 = inttoptr i64 %var_2_440 to i64*
; %var_2_400 = inttoptr i64 %var_2_398 to i64*
; Matched:%var_2_401:  %var_2_401 = load i64, i64* %var_2_400, align 8
; %var_2_401 = load i64, i64* %var_2_400, align 8
; Matched:\<badref\>:  store i64 %var_2_401, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_401, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_643:  %var_2_643 = add i64 %var_2_638, 13
; %var_2_402 = add i64 %var_2_394, 13
; Matched:\<badref\>:  store i64 %var_2_310, i64* %PC, align 8
; store i64 %var_2_402, i64* %var_2_3, align 8
%var_2_403 = load i64, i64* %var_2_396, align 8
; Matched:\<badref\>:  store i64 %var_2_1588, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_403, i64* %RDX.i1791, align 8
; Matched:%var_2_404:  %var_2_404 = add i64 %var_2_403, 80
; %var_2_404 = add i64 %var_2_403, 80
; Matched:%var_2_734:  %var_2_734 = add i64 %var_2_723, 18
; %var_2_405 = add i64 %var_2_394, 18
; Matched:\<badref\>:  store i64 %var_2_734, i64* %PC, align 8
; store i64 %var_2_405, i64* %var_2_3, align 8
; Matched:%var_2_406:  %var_2_406 = bitcast i64 %var_2_401 to double
; %var_2_406 = bitcast i64 %var_2_401 to double
; Matched:%var_2_407:  %var_2_407 = inttoptr i64 %var_2_404 to double*
; %var_2_407 = inttoptr i64 %var_2_404 to double*
; Matched:%var_2_408:  %var_2_408 = load double, double* %var_2_407, align 8
; %var_2_408 = load double, double* %var_2_407, align 8
; Matched:%var_2_409:  %var_2_409 = fadd double %var_2_406, %var_2_408
; %var_2_409 = fadd double %var_2_406, %var_2_408
; Matched:\<badref\>:  store double %var_2_409, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_409, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_410:  %var_2_410 = add i64 %var_2_392, -96
; %var_2_410 = add i64 %var_2_392, -96
; Matched:%var_2_474:  %var_2_474 = add i64 %var_2_457, 23
; %var_2_411 = add i64 %var_2_394, 23
; Matched:\<badref\>:  store i64 %var_2_474, i64* %PC, align 8
; store i64 %var_2_411, i64* %var_2_3, align 8
; Matched:%var_2_412:  %var_2_412 = inttoptr i64 %var_2_410 to double*
; %var_2_412 = inttoptr i64 %var_2_410 to double*
; Matched:\<badref\>:  store double %var_2_409, double* %var_2_412, align 8
; store double %var_2_409, double* %var_2_412, align 8
%var_2_413 = load i64, i64* %RBP.i, align 8
%var_2_414 = add i64 %var_2_413, -16
%var_2_415 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1194:  %var_2_1194 = add i64 %var_2_1193, 4
; %var_2_416 = add i64 %var_2_415, 4
; Matched:\<badref\>:  store i64 %var_2_85, i64* %PC, align 8
; store i64 %var_2_416, i64* %var_2_3, align 8
%var_2_417 = inttoptr i64 %var_2_414 to i64*
%var_2_418 = load i64, i64* %var_2_417, align 8
; Matched:\<badref\>:  store i64 %var_2_529, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_418, i64* %RDX.i1791, align 8
; Matched:%var_2_419:  %var_2_419 = add i64 %var_2_418, 72
; %var_2_419 = add i64 %var_2_418, 72
%var_2_420 = add i64 %var_2_415, 9
store i64 %var_2_420, i64* %var_2_3, align 8
; Matched:%var_2_421:  %var_2_421 = inttoptr i64 %var_2_419 to i64*
; %var_2_421 = inttoptr i64 %var_2_419 to i64*
; Matched:%var_2_422:  %var_2_422 = load i64, i64* %var_2_421, align 8
; %var_2_422 = load i64, i64* %var_2_421, align 8
; Matched:\<badref\>:  store i64 %var_2_464, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_422, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1019:  %var_2_1019 = add i64 %var_2_1008, 13
; %var_2_423 = add i64 %var_2_415, 13
; Matched:\<badref\>:  store i64 %var_2_1019, i64* %PC, align 8
; store i64 %var_2_423, i64* %var_2_3, align 8
%var_2_424 = load i64, i64* %var_2_417, align 8
; Matched:\<badref\>:  store i64 %var_2_375, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_424, i64* %RDX.i1791, align 8
; Matched:%var_2_425:  %var_2_425 = add i64 %var_2_424, 88
; %var_2_425 = add i64 %var_2_424, 88
; Matched:%var_2_1025:  %var_2_1025 = add i64 %var_2_1008, 18
; %var_2_426 = add i64 %var_2_415, 18
; Matched:\<badref\>:  store i64 %var_2_178, i64* %PC, align 8
; store i64 %var_2_426, i64* %var_2_3, align 8
; Matched:%var_2_427:  %var_2_427 = bitcast i64 %var_2_422 to double
; %var_2_427 = bitcast i64 %var_2_422 to double
; Matched:%var_2_428:  %var_2_428 = inttoptr i64 %var_2_425 to double*
; %var_2_428 = inttoptr i64 %var_2_425 to double*
; Matched:%var_2_429:  %var_2_429 = load double, double* %var_2_428, align 8
; %var_2_429 = load double, double* %var_2_428, align 8
; Matched:%var_2_430:  %var_2_430 = fadd double %var_2_427, %var_2_429
; %var_2_430 = fadd double %var_2_427, %var_2_429
; Matched:\<badref\>:  store double %var_2_430, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_430, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_431:  %var_2_431 = add i64 %var_2_413, -104
; %var_2_431 = add i64 %var_2_413, -104
; Matched:%var_2_3014:  %var_2_3014 = add i64 %var_2_2997, 23
; %var_2_432 = add i64 %var_2_415, 23
; Matched:\<badref\>:  store i64 %var_2_3014, i64* %PC, align 8
; store i64 %var_2_432, i64* %var_2_3, align 8
; Matched:%var_2_433:  %var_2_433 = inttoptr i64 %var_2_431 to double*
; %var_2_433 = inttoptr i64 %var_2_431 to double*
; Matched:\<badref\>:  store double %var_2_430, double* %var_2_433, align 8
; store double %var_2_430, double* %var_2_433, align 8
%var_2_434 = load i64, i64* %RBP.i, align 8
%var_2_435 = add i64 %var_2_434, -16
%var_2_436 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2648:  %var_2_2648 = add i64 %var_2_2647, 4
; %var_2_437 = add i64 %var_2_436, 4
; Matched:\<badref\>:  store i64 %var_2_1117, i64* %PC, align 8
; store i64 %var_2_437, i64* %var_2_3, align 8
%var_2_438 = inttoptr i64 %var_2_435 to i64*
%var_2_439 = load i64, i64* %var_2_438, align 8
; Matched:\<badref\>:  store i64 %var_2_544, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_439, i64* %RDX.i1791, align 8
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_439, 64
; %var_2_440 = add i64 %var_2_439, 64
%var_2_441 = add i64 %var_2_436, 9
store i64 %var_2_441, i64* %var_2_3, align 8
; Matched:%var_2_400:  %var_2_400 = inttoptr i64 %var_2_398 to i64*
; %var_2_442 = inttoptr i64 %var_2_440 to i64*
; Matched:%var_2_443:  %var_2_443 = load i64, i64* %var_2_442, align 8
; %var_2_443 = load i64, i64* %var_2_442, align 8
; Matched:\<badref\>:  store i64 %var_2_443, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_443, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2927:  %var_2_2927 = add i64 %var_2_2922, 13
; %var_2_444 = add i64 %var_2_436, 13
; Matched:\<badref\>:  store i64 %var_2_2927, i64* %PC, align 8
; store i64 %var_2_444, i64* %var_2_3, align 8
%var_2_445 = load i64, i64* %var_2_438, align 8
; Matched:\<badref\>:  store i64 %var_2_1436, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_445, i64* %RDX.i1791, align 8
; Matched:%var_2_446:  %var_2_446 = add i64 %var_2_445, 80
; %var_2_446 = add i64 %var_2_445, 80
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_436, 18
; %var_2_447 = add i64 %var_2_436, 18
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_447, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = bitcast i64 %var_2_443 to double
; %var_2_448 = bitcast i64 %var_2_443 to double
; Matched:%var_2_449:  %var_2_449 = inttoptr i64 %var_2_446 to double*
; %var_2_449 = inttoptr i64 %var_2_446 to double*
; Matched:%var_2_450:  %var_2_450 = load double, double* %var_2_449, align 8
; %var_2_450 = load double, double* %var_2_449, align 8
; Matched:%var_2_451:  %var_2_451 = fsub double %var_2_448, %var_2_450
; %var_2_451 = fsub double %var_2_448, %var_2_450
; Matched:\<badref\>:  store double %var_2_451, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_451, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_434, -112
; %var_2_452 = add i64 %var_2_434, -112
; Matched:%var_2_1004:  %var_2_1004 = add i64 %var_2_966, 23
; %var_2_453 = add i64 %var_2_436, 23
; Matched:\<badref\>:  store i64 %var_2_1004, i64* %PC, align 8
; store i64 %var_2_453, i64* %var_2_3, align 8
; Matched:%var_2_454:  %var_2_454 = inttoptr i64 %var_2_452 to double*
; %var_2_454 = inttoptr i64 %var_2_452 to double*
; Matched:\<badref\>:  store double %var_2_451, double* %var_2_454, align 8
; store double %var_2_451, double* %var_2_454, align 8
%var_2_455 = load i64, i64* %RBP.i, align 8
%var_2_456 = add i64 %var_2_455, -16
%var_2_457 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, 4
; %var_2_458 = add i64 %var_2_457, 4
; Matched:\<badref\>:  store i64 %var_2_458, i64* %PC, align 8
; store i64 %var_2_458, i64* %var_2_3, align 8
%var_2_459 = inttoptr i64 %var_2_456 to i64*
%var_2_460 = load i64, i64* %var_2_459, align 8
; Matched:\<badref\>:  store i64 %var_2_63, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_460, i64* %RDX.i1791, align 8
; Matched:%var_2_461:  %var_2_461 = add i64 %var_2_460, 72
; %var_2_461 = add i64 %var_2_460, 72
%var_2_462 = add i64 %var_2_457, 9
store i64 %var_2_462, i64* %var_2_3, align 8
; Matched:%var_2_463:  %var_2_463 = inttoptr i64 %var_2_461 to i64*
; %var_2_463 = inttoptr i64 %var_2_461 to i64*
; Matched:%var_2_464:  %var_2_464 = load i64, i64* %var_2_463, align 8
; %var_2_464 = load i64, i64* %var_2_463, align 8
; Matched:\<badref\>:  store i64 %var_2_422, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_464, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_3301:  %var_2_3301 = add i64 %var_2_3296, 13
; %var_2_465 = add i64 %var_2_457, 13
; Matched:\<badref\>:  store i64 %var_2_3301, i64* %PC, align 8
; store i64 %var_2_465, i64* %var_2_3, align 8
%var_2_466 = load i64, i64* %var_2_459, align 8
; Matched:\<badref\>:  store i64 %var_2_2888, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_466, i64* %RDX.i1791, align 8
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_466, 88
; %var_2_467 = add i64 %var_2_466, 88
; Matched:%var_2_468:  %var_2_468 = add i64 %var_2_457, 18
; %var_2_468 = add i64 %var_2_457, 18
; Matched:\<badref\>:  store i64 %var_2_468, i64* %PC, align 8
; store i64 %var_2_468, i64* %var_2_3, align 8
; Matched:%var_2_469:  %var_2_469 = bitcast i64 %var_2_464 to double
; %var_2_469 = bitcast i64 %var_2_464 to double
; Matched:%var_2_470:  %var_2_470 = inttoptr i64 %var_2_467 to double*
; %var_2_470 = inttoptr i64 %var_2_467 to double*
; Matched:%var_2_471:  %var_2_471 = load double, double* %var_2_470, align 8
; %var_2_471 = load double, double* %var_2_470, align 8
; Matched:%var_2_472:  %var_2_472 = fsub double %var_2_469, %var_2_471
; %var_2_472 = fsub double %var_2_469, %var_2_471
; Matched:\<badref\>:  store double %var_2_472, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_472, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_473:  %var_2_473 = add i64 %var_2_455, -120
; %var_2_473 = add i64 %var_2_455, -120
; Matched:%var_2_2214:  %var_2_2214 = add i64 %var_2_2177, 23
; %var_2_474 = add i64 %var_2_457, 23
; Matched:\<badref\>:  store i64 %var_2_2214, i64* %PC, align 8
; store i64 %var_2_474, i64* %var_2_3, align 8
; Matched:%var_2_475:  %var_2_475 = inttoptr i64 %var_2_473 to double*
; %var_2_475 = inttoptr i64 %var_2_473 to double*
; Matched:\<badref\>:  store double %var_2_472, double* %var_2_475, align 8
; store double %var_2_472, double* %var_2_475, align 8
%var_2_476 = load i64, i64* %RBP.i, align 8
%var_2_477 = add i64 %var_2_476, -16
%var_2_478 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_906:  %var_2_906 = add i64 %var_2_905, 4
; %var_2_479 = add i64 %var_2_478, 4
; Matched:\<badref\>:  store i64 %var_2_479, i64* %PC, align 8
; store i64 %var_2_479, i64* %var_2_3, align 8
%var_2_480 = inttoptr i64 %var_2_477 to i64*
%var_2_481 = load i64, i64* %var_2_480, align 8
; Matched:\<badref\>:  store i64 %var_2_1640, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_481, i64* %RDX.i1791, align 8
; Matched:%var_2_482:  %var_2_482 = add i64 %var_2_481, 96
; %var_2_482 = add i64 %var_2_481, 96
%var_2_483 = add i64 %var_2_478, 9
store i64 %var_2_483, i64* %var_2_3, align 8
; Matched:%var_2_526:  %var_2_526 = inttoptr i64 %var_2_524 to i64*
; %var_2_484 = inttoptr i64 %var_2_482 to i64*
; Matched:%var_2_485:  %var_2_485 = load i64, i64* %var_2_484, align 8
; %var_2_485 = load i64, i64* %var_2_484, align 8
; Matched:\<badref\>:  store i64 %var_2_485, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_485, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_146, 13
; %var_2_486 = add i64 %var_2_478, 13
; Matched:\<badref\>:  store i64 %var_2_402, i64* %PC, align 8
; store i64 %var_2_486, i64* %var_2_3, align 8
%var_2_487 = load i64, i64* %var_2_480, align 8
; Matched:\<badref\>:  store i64 %var_2_575, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_487, i64* %RDX.i1791, align 8
; Matched:%var_2_488:  %var_2_488 = add i64 %var_2_487, 112
; %var_2_488 = add i64 %var_2_487, 112
; Matched:%var_2_489:  %var_2_489 = add i64 %var_2_478, 18
; %var_2_489 = add i64 %var_2_478, 18
; Matched:\<badref\>:  store i64 %var_2_489, i64* %PC, align 8
; store i64 %var_2_489, i64* %var_2_3, align 8
; Matched:%var_2_490:  %var_2_490 = bitcast i64 %var_2_485 to double
; %var_2_490 = bitcast i64 %var_2_485 to double
; Matched:%var_2_491:  %var_2_491 = inttoptr i64 %var_2_488 to double*
; %var_2_491 = inttoptr i64 %var_2_488 to double*
; Matched:%var_2_492:  %var_2_492 = load double, double* %var_2_491, align 8
; %var_2_492 = load double, double* %var_2_491, align 8
; Matched:%var_2_493:  %var_2_493 = fadd double %var_2_490, %var_2_492
; %var_2_493 = fadd double %var_2_490, %var_2_492
; Matched:\<badref\>:  store double %var_2_493, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_493, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_494:  %var_2_494 = add i64 %var_2_476, -128
; %var_2_494 = add i64 %var_2_476, -128
; Matched:%var_2_411:  %var_2_411 = add i64 %var_2_394, 23
; %var_2_495 = add i64 %var_2_478, 23
; Matched:\<badref\>:  store i64 %var_2_411, i64* %PC, align 8
; store i64 %var_2_495, i64* %var_2_3, align 8
; Matched:%var_2_496:  %var_2_496 = inttoptr i64 %var_2_494 to double*
; %var_2_496 = inttoptr i64 %var_2_494 to double*
; Matched:\<badref\>:  store double %var_2_493, double* %var_2_496, align 8
; store double %var_2_493, double* %var_2_496, align 8
%var_2_497 = load i64, i64* %RBP.i, align 8
%var_2_498 = add i64 %var_2_497, -16
%var_2_499 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_500:  %var_2_500 = add i64 %var_2_499, 4
; %var_2_500 = add i64 %var_2_499, 4
; Matched:\<badref\>:  store i64 %var_2_2724, i64* %PC, align 8
; store i64 %var_2_500, i64* %var_2_3, align 8
%var_2_501 = inttoptr i64 %var_2_498 to i64*
%var_2_502 = load i64, i64* %var_2_501, align 8
; Matched:\<badref\>:  store i64 %var_2_2726, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_502, i64* %RDX.i1791, align 8
; Matched:%var_2_503:  %var_2_503 = add i64 %var_2_502, 104
; %var_2_503 = add i64 %var_2_502, 104
%var_2_504 = add i64 %var_2_499, 9
store i64 %var_2_504, i64* %var_2_3, align 8
; Matched:%var_2_505:  %var_2_505 = inttoptr i64 %var_2_503 to i64*
; %var_2_505 = inttoptr i64 %var_2_503 to i64*
; Matched:%var_2_506:  %var_2_506 = load i64, i64* %var_2_505, align 8
; %var_2_506 = load i64, i64* %var_2_505, align 8
; Matched:\<badref\>:  store i64 %var_2_548, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_506, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_415, 13
; %var_2_507 = add i64 %var_2_499, 13
; Matched:\<badref\>:  store i64 %var_2_423, i64* %PC, align 8
; store i64 %var_2_507, i64* %var_2_3, align 8
%var_2_508 = load i64, i64* %var_2_501, align 8
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_508, i64* %RDX.i1791, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_508, 120
; %var_2_509 = add i64 %var_2_508, 120
; Matched:%var_2_2832:  %var_2_2832 = add i64 %var_2_2799, 18
; %var_2_510 = add i64 %var_2_499, 18
; Matched:\<badref\>:  store i64 %var_2_2832, i64* %PC, align 8
; store i64 %var_2_510, i64* %var_2_3, align 8
; Matched:%var_2_511:  %var_2_511 = bitcast i64 %var_2_506 to double
; %var_2_511 = bitcast i64 %var_2_506 to double
; Matched:%var_2_512:  %var_2_512 = inttoptr i64 %var_2_509 to double*
; %var_2_512 = inttoptr i64 %var_2_509 to double*
; Matched:%var_2_513:  %var_2_513 = load double, double* %var_2_512, align 8
; %var_2_513 = load double, double* %var_2_512, align 8
; Matched:%var_2_514:  %var_2_514 = fadd double %var_2_511, %var_2_513
; %var_2_514 = fadd double %var_2_511, %var_2_513
; Matched:\<badref\>:  store double %var_2_514, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_514, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_515:  %var_2_515 = add i64 %var_2_497, -136
; %var_2_515 = add i64 %var_2_497, -136
; Matched:%var_2_516:  %var_2_516 = add i64 %var_2_499, 26
; %var_2_516 = add i64 %var_2_499, 26
; Matched:\<badref\>:  store i64 %var_2_516, i64* %PC, align 8
; store i64 %var_2_516, i64* %var_2_3, align 8
; Matched:%var_2_517:  %var_2_517 = inttoptr i64 %var_2_515 to double*
; %var_2_517 = inttoptr i64 %var_2_515 to double*
; Matched:\<badref\>:  store double %var_2_514, double* %var_2_517, align 8
; store double %var_2_514, double* %var_2_517, align 8
%var_2_518 = load i64, i64* %RBP.i, align 8
%var_2_519 = add i64 %var_2_518, -16
%var_2_520 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_188, 4
; %var_2_521 = add i64 %var_2_520, 4
; Matched:\<badref\>:  store i64 %var_2_1400, i64* %PC, align 8
; store i64 %var_2_521, i64* %var_2_3, align 8
%var_2_522 = inttoptr i64 %var_2_519 to i64*
%var_2_523 = load i64, i64* %var_2_522, align 8
; Matched:\<badref\>:  store i64 %var_2_594, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_523, i64* %RDX.i1791, align 8
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_523, 96
; %var_2_524 = add i64 %var_2_523, 96
%var_2_525 = add i64 %var_2_520, 9
store i64 %var_2_525, i64* %var_2_3, align 8
; Matched:%var_2_484:  %var_2_484 = inttoptr i64 %var_2_482 to i64*
; %var_2_526 = inttoptr i64 %var_2_524 to i64*
; Matched:%var_2_527:  %var_2_527 = load i64, i64* %var_2_526, align 8
; %var_2_527 = load i64, i64* %var_2_526, align 8
; Matched:\<badref\>:  store i64 %var_2_527, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_527, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_444:  %var_2_444 = add i64 %var_2_436, 13
; %var_2_528 = add i64 %var_2_520, 13
; Matched:\<badref\>:  store i64 %var_2_444, i64* %PC, align 8
; store i64 %var_2_528, i64* %var_2_3, align 8
%var_2_529 = load i64, i64* %var_2_522, align 8
; Matched:\<badref\>:  store i64 %var_2_439, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_529, i64* %RDX.i1791, align 8
; Matched:%var_2_530:  %var_2_530 = add i64 %var_2_529, 112
; %var_2_530 = add i64 %var_2_529, 112
; Matched:%var_2_1508:  %var_2_1508 = add i64 %var_2_1475, 18
; %var_2_531 = add i64 %var_2_520, 18
; Matched:\<badref\>:  store i64 %var_2_1508, i64* %PC, align 8
; store i64 %var_2_531, i64* %var_2_3, align 8
; Matched:%var_2_532:  %var_2_532 = bitcast i64 %var_2_527 to double
; %var_2_532 = bitcast i64 %var_2_527 to double
; Matched:%var_2_533:  %var_2_533 = inttoptr i64 %var_2_530 to double*
; %var_2_533 = inttoptr i64 %var_2_530 to double*
; Matched:%var_2_534:  %var_2_534 = load double, double* %var_2_533, align 8
; %var_2_534 = load double, double* %var_2_533, align 8
; Matched:%var_2_535:  %var_2_535 = fsub double %var_2_532, %var_2_534
; %var_2_535 = fsub double %var_2_532, %var_2_534
; Matched:\<badref\>:  store double %var_2_535, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_535, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_518, -144
; %var_2_536 = add i64 %var_2_518, -144
; Matched:%var_2_537:  %var_2_537 = add i64 %var_2_520, 26
; %var_2_537 = add i64 %var_2_520, 26
; Matched:\<badref\>:  store i64 %var_2_537, i64* %PC, align 8
; store i64 %var_2_537, i64* %var_2_3, align 8
; Matched:%var_2_538:  %var_2_538 = inttoptr i64 %var_2_536 to double*
; %var_2_538 = inttoptr i64 %var_2_536 to double*
; Matched:\<badref\>:  store double %var_2_535, double* %var_2_538, align 8
; store double %var_2_535, double* %var_2_538, align 8
%var_2_539 = load i64, i64* %RBP.i, align 8
%var_2_540 = add i64 %var_2_539, -16
%var_2_541 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1064:  %var_2_1064 = add i64 %var_2_1063, 4
; %var_2_542 = add i64 %var_2_541, 4
; Matched:\<badref\>:  store i64 %var_2_542, i64* %PC, align 8
; store i64 %var_2_542, i64* %var_2_3, align 8
%var_2_543 = inttoptr i64 %var_2_540 to i64*
%var_2_544 = load i64, i64* %var_2_543, align 8
; Matched:\<badref\>:  store i64 %var_2_2935, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_544, i64* %RDX.i1791, align 8
; Matched:%var_2_545:  %var_2_545 = add i64 %var_2_544, 104
; %var_2_545 = add i64 %var_2_544, 104
%var_2_546 = add i64 %var_2_541, 9
store i64 %var_2_546, i64* %var_2_3, align 8
; Matched:%var_2_547:  %var_2_547 = inttoptr i64 %var_2_545 to i64*
; %var_2_547 = inttoptr i64 %var_2_545 to i64*
; Matched:%var_2_548:  %var_2_548 = load i64, i64* %var_2_547, align 8
; %var_2_548 = load i64, i64* %var_2_547, align 8
; Matched:\<badref\>:  store i64 %var_2_506, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_548, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_209, 13
; %var_2_549 = add i64 %var_2_541, 13
; Matched:\<badref\>:  store i64 %var_2_217, i64* %PC, align 8
; store i64 %var_2_549, i64* %var_2_3, align 8
%var_2_550 = load i64, i64* %var_2_543, align 8
; Matched:\<badref\>:  store i64 %var_2_2574, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_550, i64* %RDX.i1791, align 8
; Matched:%var_2_551:  %var_2_551 = add i64 %var_2_550, 120
; %var_2_551 = add i64 %var_2_550, 120
; Matched:%var_2_3307:  %var_2_3307 = add i64 %var_2_3296, 18
; %var_2_552 = add i64 %var_2_541, 18
; Matched:\<badref\>:  store i64 %var_2_552, i64* %PC, align 8
; store i64 %var_2_552, i64* %var_2_3, align 8
; Matched:%var_2_553:  %var_2_553 = bitcast i64 %var_2_548 to double
; %var_2_553 = bitcast i64 %var_2_548 to double
; Matched:%var_2_554:  %var_2_554 = inttoptr i64 %var_2_551 to double*
; %var_2_554 = inttoptr i64 %var_2_551 to double*
; Matched:%var_2_555:  %var_2_555 = load double, double* %var_2_554, align 8
; %var_2_555 = load double, double* %var_2_554, align 8
; Matched:%var_2_556:  %var_2_556 = fsub double %var_2_553, %var_2_555
; %var_2_556 = fsub double %var_2_553, %var_2_555
; Matched:\<badref\>:  store double %var_2_556, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_556, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_557:  %var_2_557 = add i64 %var_2_539, -152
; %var_2_557 = add i64 %var_2_539, -152
; Matched:%var_2_558:  %var_2_558 = add i64 %var_2_541, 26
; %var_2_558 = add i64 %var_2_541, 26
; Matched:\<badref\>:  store i64 %var_2_558, i64* %PC, align 8
; store i64 %var_2_558, i64* %var_2_3, align 8
; Matched:%var_2_559:  %var_2_559 = inttoptr i64 %var_2_557 to double*
; %var_2_559 = inttoptr i64 %var_2_557 to double*
; Matched:\<badref\>:  store double %var_2_556, double* %var_2_559, align 8
; store double %var_2_556, double* %var_2_559, align 8
%var_2_560 = load i64, i64* %RBP.i, align 8
%var_2_561 = add i64 %var_2_560, -96
%var_2_562 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_563:  %var_2_563 = add i64 %var_2_562, 5
; %var_2_563 = add i64 %var_2_562, 5
; Matched:\<badref\>:  store i64 %var_2_231, i64* %PC, align 8
; store i64 %var_2_563, i64* %var_2_3, align 8
%var_2_564 = inttoptr i64 %var_2_561 to i64*
%var_2_565 = load i64, i64* %var_2_564, align 8
; Matched:\<badref\>:  store i64 %var_2_622, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_565, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_228, -128
; %var_2_566 = add i64 %var_2_560, -128
; Matched:%var_2_703:  %var_2_703 = add i64 %var_2_698, 10
; %var_2_567 = add i64 %var_2_562, 10
; Matched:\<badref\>:  store i64 %var_2_703, i64* %PC, align 8
; store i64 %var_2_567, i64* %var_2_3, align 8
; Matched:%var_2_2881:  %var_2_2881 = bitcast i64 %var_2_2878 to double
; %var_2_568 = bitcast i64 %var_2_565 to double
; Matched:%var_2_237:  %var_2_237 = inttoptr i64 %var_2_234 to double*
; %var_2_569 = inttoptr i64 %var_2_566 to double*
; Matched:%var_2_238:  %var_2_238 = load double, double* %var_2_237, align 8
; %var_2_570 = load double, double* %var_2_569, align 8
; Matched:%var_2_571:  %var_2_571 = fadd double %var_2_568, %var_2_570
; %var_2_571 = fadd double %var_2_568, %var_2_570
; Matched:\<badref\>:  store double %var_2_239, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_571, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_572 = add i64 %var_2_560, -16
; Matched:%var_2_1638:  %var_2_1638 = add i64 %var_2_1627, 14
; %var_2_573 = add i64 %var_2_562, 14
; Matched:\<badref\>:  store i64 %var_2_278, i64* %PC, align 8
; store i64 %var_2_573, i64* %var_2_3, align 8
%var_2_574 = inttoptr i64 %var_2_572 to i64*
%var_2_575 = load i64, i64* %var_2_574, align 8
; Matched:\<badref\>:  store i64 %var_2_128, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_575, i64* %RDX.i1791, align 8
; Matched:%var_2_576:  %var_2_576 = add i64 %var_2_575, 64
; %var_2_576 = add i64 %var_2_575, 64
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_619, 19
; %var_2_577 = add i64 %var_2_562, 19
; Matched:\<badref\>:  store i64 %var_2_634, i64* %PC, align 8
; store i64 %var_2_577, i64* %var_2_3, align 8
; Matched:%var_2_578:  %var_2_578 = inttoptr i64 %var_2_576 to double*
; %var_2_578 = inttoptr i64 %var_2_576 to double*
; Matched:\<badref\>:  store double %var_2_571, double* %var_2_578, align 8
; store double %var_2_571, double* %var_2_578, align 8
%var_2_579 = load i64, i64* %RBP.i, align 8
%var_2_580 = add i64 %var_2_579, -104
%var_2_581 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1653:  %var_2_1653 = add i64 %var_2_1652, 5
; %var_2_582 = add i64 %var_2_581, 5
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8
; store i64 %var_2_582, i64* %var_2_3, align 8
%var_2_583 = inttoptr i64 %var_2_580 to i64*
%var_2_584 = load i64, i64* %var_2_583, align 8
; Matched:\<badref\>:  store i64 %var_2_289, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_584, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2926:  %var_2_2926 = add i64 %var_2_2920, -136
; %var_2_585 = add i64 %var_2_579, -136
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_248, 13
; %var_2_586 = add i64 %var_2_581, 13
; Matched:\<badref\>:  store i64 %var_2_253, i64* %PC, align 8
; store i64 %var_2_586, i64* %var_2_3, align 8
; Matched:%var_2_2928:  %var_2_2928 = bitcast i64 %var_2_2925 to double
; %var_2_587 = bitcast i64 %var_2_584 to double
; Matched:%var_2_2929:  %var_2_2929 = inttoptr i64 %var_2_2926 to double*
; %var_2_588 = inttoptr i64 %var_2_585 to double*
; Matched:%var_2_2930:  %var_2_2930 = load double, double* %var_2_2929, align 8
; %var_2_589 = load double, double* %var_2_588, align 8
; Matched:%var_2_2931:  %var_2_2931 = fadd double %var_2_2928, %var_2_2930
; %var_2_590 = fadd double %var_2_587, %var_2_589
; Matched:\<badref\>:  store double %var_2_2931, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_590, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_591 = add i64 %var_2_579, -16
; Matched:%var_2_611:  %var_2_611 = add i64 %var_2_600, 17
; %var_2_592 = add i64 %var_2_581, 17
; Matched:\<badref\>:  store i64 %var_2_259, i64* %PC, align 8
; store i64 %var_2_592, i64* %var_2_3, align 8
%var_2_593 = inttoptr i64 %var_2_591 to i64*
%var_2_594 = load i64, i64* %var_2_593, align 8
; Matched:\<badref\>:  store i64 %var_2_466, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_594, i64* %RDX.i1791, align 8
; Matched:%var_2_595:  %var_2_595 = add i64 %var_2_594, 72
; %var_2_595 = add i64 %var_2_594, 72
; Matched:%var_2_2455:  %var_2_2455 = add i64 %var_2_2419, 22
; %var_2_596 = add i64 %var_2_581, 22
; Matched:\<badref\>:  store i64 %var_2_2683, i64* %PC, align 8
; store i64 %var_2_596, i64* %var_2_3, align 8
; Matched:%var_2_597:  %var_2_597 = inttoptr i64 %var_2_595 to double*
; %var_2_597 = inttoptr i64 %var_2_595 to double*
; Matched:\<badref\>:  store double %var_2_590, double* %var_2_597, align 8
; store double %var_2_590, double* %var_2_597, align 8
%var_2_598 = load i64, i64* %RBP.i, align 8
%var_2_599 = add i64 %var_2_598, -136
%var_2_600 = load i64, i64* %var_2_3, align 8
%var_2_601 = add i64 %var_2_600, 8
store i64 %var_2_601, i64* %var_2_3, align 8
%var_2_602 = inttoptr i64 %var_2_599 to i64*
%var_2_603 = load i64, i64* %var_2_602, align 8
; Matched:\<badref\>:  store i64 %var_2_2986, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_603, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_604:  %var_2_604 = add i64 %var_2_598, -104
; %var_2_604 = add i64 %var_2_598, -104
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_343, 13
; %var_2_605 = add i64 %var_2_600, 13
; Matched:\<badref\>:  store i64 %var_2_348, i64* %PC, align 8
; store i64 %var_2_605, i64* %var_2_3, align 8
; Matched:%var_2_606:  %var_2_606 = bitcast i64 %var_2_603 to double
; %var_2_606 = bitcast i64 %var_2_603 to double
; Matched:%var_2_607:  %var_2_607 = inttoptr i64 %var_2_604 to double*
; %var_2_607 = inttoptr i64 %var_2_604 to double*
; Matched:%var_2_608:  %var_2_608 = load double, double* %var_2_607, align 8
; %var_2_608 = load double, double* %var_2_607, align 8
; Matched:%var_2_609:  %var_2_609 = fsub double %var_2_606, %var_2_608
; %var_2_609 = fsub double %var_2_606, %var_2_608
; Matched:\<badref\>:  store double %var_2_609, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_609, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_610 = add i64 %var_2_598, -16
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_60, 17
; %var_2_611 = add i64 %var_2_600, 17
; Matched:\<badref\>:  store i64 %var_2_2890, i64* %PC, align 8
; store i64 %var_2_611, i64* %var_2_3, align 8
%var_2_612 = inttoptr i64 %var_2_610 to i64*
%var_2_613 = load i64, i64* %var_2_612, align 8
; Matched:\<badref\>:  store i64 %var_2_2608, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_613, i64* %RDX.i1791, align 8
; Matched:%var_2_614:  %var_2_614 = add i64 %var_2_613, 96
; %var_2_614 = add i64 %var_2_613, 96
; Matched:%var_2_2607:  %var_2_2607 = add i64 %var_2_2571, 22
; %var_2_615 = add i64 %var_2_600, 22
; Matched:\<badref\>:  store i64 %var_2_2835, i64* %PC, align 8
; store i64 %var_2_615, i64* %var_2_3, align 8
; Matched:%var_2_616:  %var_2_616 = inttoptr i64 %var_2_614 to double*
; %var_2_616 = inttoptr i64 %var_2_614 to double*
; Matched:\<badref\>:  store double %var_2_609, double* %var_2_616, align 8
; store double %var_2_609, double* %var_2_616, align 8
%var_2_617 = load i64, i64* %RBP.i, align 8
%var_2_618 = add i64 %var_2_617, -96
%var_2_619 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1701:  %var_2_1701 = add i64 %var_2_1700, 5
; %var_2_620 = add i64 %var_2_619, 5
; Matched:\<badref\>:  store i64 %var_2_3297, i64* %PC, align 8
; store i64 %var_2_620, i64* %var_2_3, align 8
%var_2_621 = inttoptr i64 %var_2_618 to i64*
%var_2_622 = load i64, i64* %var_2_621, align 8
; Matched:\<badref\>:  store i64 %var_2_2878, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_622, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_265, -128
; %var_2_623 = add i64 %var_2_617, -128
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_562, 10
; %var_2_624 = add i64 %var_2_619, 10
; Matched:\<badref\>:  store i64 %var_2_567, i64* %PC, align 8
; store i64 %var_2_624, i64* %var_2_3, align 8
; Matched:%var_2_625:  %var_2_625 = bitcast i64 %var_2_622 to double
; %var_2_625 = bitcast i64 %var_2_622 to double
; Matched:%var_2_274:  %var_2_274 = inttoptr i64 %var_2_271 to double*
; %var_2_626 = inttoptr i64 %var_2_623 to double*
; Matched:%var_2_627:  %var_2_627 = load double, double* %var_2_626, align 8
; %var_2_627 = load double, double* %var_2_626, align 8
; Matched:%var_2_628:  %var_2_628 = fsub double %var_2_625, %var_2_627
; %var_2_628 = fsub double %var_2_625, %var_2_627
; Matched:\<badref\>:  store double %var_2_628, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_628, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_629 = add i64 %var_2_617, -16
; Matched:%var_2_278:  %var_2_278 = add i64 %var_2_267, 14
; %var_2_630 = add i64 %var_2_619, 14
; Matched:\<badref\>:  store i64 %var_2_573, i64* %PC, align 8
; store i64 %var_2_630, i64* %var_2_3, align 8
%var_2_631 = inttoptr i64 %var_2_629 to i64*
%var_2_632 = load i64, i64* %var_2_631, align 8
; Matched:\<badref\>:  store i64 %var_2_318, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_632, i64* %RDX.i1791, align 8
; Matched:%var_2_633:  %var_2_633 = add i64 %var_2_632, 104
; %var_2_633 = add i64 %var_2_632, 104
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_267, 19
; %var_2_634 = add i64 %var_2_619, 19
; Matched:\<badref\>:  store i64 %var_2_282, i64* %PC, align 8
; store i64 %var_2_634, i64* %var_2_3, align 8
; Matched:%var_2_635:  %var_2_635 = inttoptr i64 %var_2_633 to double*
; %var_2_635 = inttoptr i64 %var_2_633 to double*
; Matched:\<badref\>:  store double %var_2_628, double* %var_2_635, align 8
; store double %var_2_628, double* %var_2_635, align 8
%var_2_636 = load i64, i64* %RBP.i, align 8
%var_2_637 = add i64 %var_2_636, -112
%var_2_638 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3312:  %var_2_3312 = add i64 %var_2_3311, 5
; %var_2_639 = add i64 %var_2_638, 5
; Matched:\<badref\>:  store i64 %var_2_639, i64* %PC, align 8
; store i64 %var_2_639, i64* %var_2_3, align 8
%var_2_640 = inttoptr i64 %var_2_637 to i64*
%var_2_641 = load i64, i64* %var_2_640, align 8
; Matched:\<badref\>:  store i64 %var_2_346, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_641, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_642 = add i64 %var_2_636, -152
; Matched:%var_2_897:  %var_2_897 = add i64 %var_2_886, 13
; %var_2_643 = add i64 %var_2_638, 13
; Matched:\<badref\>:  store i64 %var_2_897, i64* %PC, align 8
; store i64 %var_2_643, i64* %var_2_3, align 8
%var_2_644 = bitcast i64 %var_2_641 to double
%var_2_645 = inttoptr i64 %var_2_642 to double*
%var_2_646 = load double, double* %var_2_645, align 8
%var_2_647 = fsub double %var_2_644, %var_2_646
; Matched:\<badref\>:  store double %var_2_314, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_647, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3145:  %var_2_3145 = add i64 %var_2_3133, -96
; %var_2_648 = add i64 %var_2_636, -96
; Matched:%var_2_1356:  %var_2_1356 = add i64 %var_2_1323, 18
; %var_2_649 = add i64 %var_2_638, 18
; Matched:\<badref\>:  store i64 %var_2_1356, i64* %PC, align 8
; store i64 %var_2_649, i64* %var_2_3, align 8
; Matched:%var_2_3147:  %var_2_3147 = inttoptr i64 %var_2_3145 to double*
; %var_2_650 = inttoptr i64 %var_2_648 to double*
; Matched:\<badref\>:  store double %var_2_3144, double* %var_2_3147, align 8
; store double %var_2_647, double* %var_2_650, align 8
%var_2_651 = load i64, i64* %RBP.i, align 8
%var_2_652 = add i64 %var_2_651, -120
%var_2_653 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_654:  %var_2_654 = add i64 %var_2_653, 5
; %var_2_654 = add i64 %var_2_653, 5
; Matched:\<badref\>:  store i64 %var_2_3067, i64* %PC, align 8
; store i64 %var_2_654, i64* %var_2_3, align 8
%var_2_655 = inttoptr i64 %var_2_652 to i64*
%var_2_656 = load i64, i64* %var_2_655, align 8
; Matched:\<badref\>:  store i64 %var_2_3153, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_656, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_657 = add i64 %var_2_651, -144
; Matched:%var_2_2988:  %var_2_2988 = add i64 %var_2_2983, 13
; %var_2_658 = add i64 %var_2_653, 13
; Matched:\<badref\>:  store i64 %var_2_2988, i64* %PC, align 8
; store i64 %var_2_658, i64* %var_2_3, align 8
%var_2_659 = bitcast i64 %var_2_656 to double
%var_2_660 = inttoptr i64 %var_2_657 to double*
%var_2_661 = load double, double* %var_2_660, align 8
%var_2_662 = fadd double %var_2_659, %var_2_661
; Matched:\<badref\>:  store double %var_2_3159, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_662, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3160:  %var_2_3160 = add i64 %var_2_3148, -104
; %var_2_663 = add i64 %var_2_651, -104
; Matched:%var_2_749:  %var_2_749 = add i64 %var_2_738, 18
; %var_2_664 = add i64 %var_2_653, 18
; Matched:\<badref\>:  store i64 %var_2_749, i64* %PC, align 8
; store i64 %var_2_664, i64* %var_2_3, align 8
; Matched:%var_2_3162:  %var_2_3162 = inttoptr i64 %var_2_3160 to double*
; %var_2_665 = inttoptr i64 %var_2_663 to double*
; Matched:\<badref\>:  store double %var_2_3159, double* %var_2_3162, align 8
; store double %var_2_662, double* %var_2_665, align 8
%var_2_666 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_697:  %var_2_697 = add i64 %var_2_696, -48
; %var_2_667 = add i64 %var_2_666, -48
%var_2_668 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2998:  %var_2_2998 = add i64 %var_2_2997, 5
; %var_2_669 = add i64 %var_2_668, 5
; Matched:\<badref\>:  store i64 %var_2_3166, i64* %PC, align 8
; store i64 %var_2_669, i64* %var_2_3, align 8
; Matched:%var_2_3167:  %var_2_3167 = inttoptr i64 %var_2_3164 to i64*
; %var_2_670 = inttoptr i64 %var_2_667 to i64*
; Matched:%var_2_3168:  %var_2_3168 = load i64, i64* %var_2_3167, align 8
; %var_2_671 = load i64, i64* %var_2_670, align 8
; Matched:\<badref\>:  store i64 %var_2_781, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_671, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_5:  %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; %var_2_672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_672:  %var_2_672 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_673 = bitcast %union.VectorReg* %var_2_672 to i8*
; Matched:%var_2_1626:  %var_2_1626 = add i64 %var_2_1625, -96
; %var_2_674 = add i64 %var_2_666, -96
; Matched:%var_2_1705:  %var_2_1705 = add i64 %var_2_1700, 10
; %var_2_675 = add i64 %var_2_668, 10
; Matched:\<badref\>:  store i64 %var_2_1705, i64* %PC, align 8
; store i64 %var_2_675, i64* %var_2_3, align 8
; Matched:%var_2_1629:  %var_2_1629 = inttoptr i64 %var_2_1626 to i64*
; %var_2_676 = inttoptr i64 %var_2_674 to i64*
; Matched:%var_2_1630:  %var_2_1630 = load i64, i64* %var_2_1629, align 8
; %var_2_677 = load i64, i64* %var_2_676, align 8
; Matched:%var_2_677:  %var_2_677 = bitcast %union.VectorReg* %var_2_5 to double*
; %var_2_678 = bitcast %union.VectorReg* %var_2_672 to double*
; Matched:%var_2_678:  %var_2_678 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_679 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_672, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_1630, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_677, i64* %var_2_679, align 1
%var_2_680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_681 = bitcast i64* %var_2_680 to double*
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_666, -104
; %var_2_682 = add i64 %var_2_666, -104
; Matched:%var_2_2258:  %var_2_2258 = add i64 %var_2_2246, 15
; %var_2_683 = add i64 %var_2_668, 15
; Matched:\<badref\>:  store i64 %var_2_1797, i64* %PC, align 8
; store i64 %var_2_683, i64* %var_2_3, align 8
; Matched:%var_2_683:  %var_2_683 = bitcast i64 %var_2_676 to double
; %var_2_684 = bitcast i64 %var_2_677 to double
; Matched:%var_2_684:  %var_2_684 = inttoptr i64 %var_2_681 to double*
; %var_2_685 = inttoptr i64 %var_2_682 to double*
; Matched:%var_2_685:  %var_2_685 = load double, double* %var_2_684, align 8
; %var_2_686 = load double, double* %var_2_685, align 8
; Matched:%var_2_686:  %var_2_686 = fsub double %var_2_683, %var_2_685
; %var_2_687 = fsub double %var_2_684, %var_2_686
; Matched:\<badref\>:  store double %var_2_686, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_687, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_687:  %var_2_687 = bitcast i64 %var_2_671 to double
; %var_2_688 = bitcast i64 %var_2_671 to double
; Matched:%var_2_688:  %var_2_688 = fmul double %var_2_687, %var_2_686
; %var_2_689 = fmul double %var_2_688, %var_2_687
; Matched:\<badref\>:  store double %var_2_688, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_689, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_690 = add i64 %var_2_666, -16
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1034, 23
; %var_2_691 = add i64 %var_2_668, 23
; Matched:\<badref\>:  store i64 %var_2_1059, i64* %PC, align 8
; store i64 %var_2_691, i64* %var_2_3, align 8
%var_2_692 = inttoptr i64 %var_2_690 to i64*
%var_2_693 = load i64, i64* %var_2_692, align 8
; Matched:\<badref\>:  store i64 %var_2_176, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_693, i64* %RDX.i1791, align 8
; Matched:%var_2_693:  %var_2_693 = add i64 %var_2_692, 80
; %var_2_694 = add i64 %var_2_693, 80
; Matched:%var_2_719:  %var_2_719 = add i64 %var_2_698, 28
; %var_2_695 = add i64 %var_2_668, 28
; Matched:\<badref\>:  store i64 %var_2_719, i64* %PC, align 8
; store i64 %var_2_695, i64* %var_2_3, align 8
; Matched:%var_2_695:  %var_2_695 = inttoptr i64 %var_2_693 to double*
; %var_2_696 = inttoptr i64 %var_2_694 to double*
; Matched:\<badref\>:  store double %var_2_688, double* %var_2_695, align 8
; store double %var_2_689, double* %var_2_696, align 8
%var_2_697 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_777:  %var_2_777 = add i64 %var_2_776, -48
; %var_2_698 = add i64 %var_2_697, -48
%var_2_699 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2219:  %var_2_2219 = add i64 %var_2_2218, 5
; %var_2_700 = add i64 %var_2_699, 5
; Matched:\<badref\>:  store i64 %var_2_620, i64* %PC, align 8
; store i64 %var_2_700, i64* %var_2_3, align 8
; Matched:%var_2_755:  %var_2_755 = inttoptr i64 %var_2_752 to i64*
; %var_2_701 = inttoptr i64 %var_2_698 to i64*
; Matched:%var_2_756:  %var_2_756 = load i64, i64* %var_2_755, align 8
; %var_2_702 = load i64, i64* %var_2_701, align 8
; Matched:\<badref\>:  store i64 %var_2_3226, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_702, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_673:  %var_2_673 = add i64 %var_2_666, -96
; %var_2_703 = add i64 %var_2_697, -96
; Matched:%var_2_2025:  %var_2_2025 = add i64 %var_2_2020, 10
; %var_2_704 = add i64 %var_2_699, 10
; Matched:\<badref\>:  store i64 %var_2_2025, i64* %PC, align 8
; store i64 %var_2_704, i64* %var_2_3, align 8
; Matched:%var_2_675:  %var_2_675 = inttoptr i64 %var_2_673 to i64*
; %var_2_705 = inttoptr i64 %var_2_703 to i64*
; Matched:%var_2_676:  %var_2_676 = load i64, i64* %var_2_675, align 8
; %var_2_706 = load i64, i64* %var_2_705, align 8
; Matched:\<badref\>:  store i64 %var_2_676, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_706, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_706:  %var_2_706 = add i64 %var_2_696, -104
; %var_2_707 = add i64 %var_2_697, -104
; Matched:%var_2_787:  %var_2_787 = add i64 %var_2_778, 15
; %var_2_708 = add i64 %var_2_699, 15
; Matched:\<badref\>:  store i64 %var_2_787, i64* %PC, align 8
; store i64 %var_2_708, i64* %var_2_3, align 8
; Matched:%var_2_708:  %var_2_708 = bitcast i64 %var_2_705 to double
; %var_2_709 = bitcast i64 %var_2_706 to double
; Matched:%var_2_709:  %var_2_709 = inttoptr i64 %var_2_706 to double*
; %var_2_710 = inttoptr i64 %var_2_707 to double*
; Matched:%var_2_710:  %var_2_710 = load double, double* %var_2_709, align 8
; %var_2_711 = load double, double* %var_2_710, align 8
; Matched:%var_2_711:  %var_2_711 = fadd double %var_2_708, %var_2_710
; %var_2_712 = fadd double %var_2_709, %var_2_711
; Matched:\<badref\>:  store double %var_2_711, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_712, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_712:  %var_2_712 = bitcast i64 %var_2_701 to double
; %var_2_713 = bitcast i64 %var_2_702 to double
; Matched:%var_2_713:  %var_2_713 = fmul double %var_2_712, %var_2_711
; %var_2_714 = fmul double %var_2_713, %var_2_712
; Matched:\<badref\>:  store double %var_2_713, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_714, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_715 = add i64 %var_2_697, -16
; Matched:%var_2_715:  %var_2_715 = add i64 %var_2_698, 23
; %var_2_716 = add i64 %var_2_699, 23
; Matched:\<badref\>:  store i64 %var_2_715, i64* %PC, align 8
; store i64 %var_2_716, i64* %var_2_3, align 8
%var_2_717 = inttoptr i64 %var_2_715 to i64*
%var_2_718 = load i64, i64* %var_2_717, align 8
; Matched:\<badref\>:  store i64 %var_2_2650, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_718, i64* %RDX.i1791, align 8
; Matched:%var_2_718:  %var_2_718 = add i64 %var_2_717, 88
; %var_2_719 = add i64 %var_2_718, 88
; Matched:%var_2_1808:  %var_2_1808 = add i64 %var_2_1786, 28
; %var_2_720 = add i64 %var_2_699, 28
; Matched:\<badref\>:  store i64 %var_2_1808, i64* %PC, align 8
; store i64 %var_2_720, i64* %var_2_3, align 8
; Matched:%var_2_720:  %var_2_720 = inttoptr i64 %var_2_718 to double*
; %var_2_721 = inttoptr i64 %var_2_719 to double*
; Matched:\<badref\>:  store double %var_2_713, double* %var_2_720, align 8
; store double %var_2_714, double* %var_2_721, align 8
; Matched:%var_2_721:  %var_2_721 = load i64, i64* %RBP, align 8
; %var_2_722 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_722:  %var_2_722 = add i64 %var_2_721, -152
; %var_2_723 = add i64 %var_2_722, -152
%var_2_724 = load i64, i64* %var_2_3, align 8
%var_2_725 = add i64 %var_2_724, 8
store i64 %var_2_725, i64* %var_2_3, align 8
; Matched:%var_2_725:  %var_2_725 = inttoptr i64 %var_2_722 to i64*
; %var_2_726 = inttoptr i64 %var_2_723 to i64*
; Matched:%var_2_726:  %var_2_726 = load i64, i64* %var_2_725, align 8
; %var_2_727 = load i64, i64* %var_2_726, align 8
; Matched:\<badref\>:  store i64 %var_2_726, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_727, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_727:  %var_2_727 = add i64 %var_2_721, -112
; %var_2_728 = add i64 %var_2_722, -112
; Matched:%var_2_3140:  %var_2_3140 = add i64 %var_2_3135, 13
; %var_2_729 = add i64 %var_2_724, 13
; Matched:\<badref\>:  store i64 %var_2_3140, i64* %PC, align 8
; store i64 %var_2_729, i64* %var_2_3, align 8
; Matched:%var_2_729:  %var_2_729 = bitcast i64 %var_2_726 to double
; %var_2_730 = bitcast i64 %var_2_727 to double
; Matched:%var_2_730:  %var_2_730 = inttoptr i64 %var_2_727 to double*
; %var_2_731 = inttoptr i64 %var_2_728 to double*
; Matched:%var_2_731:  %var_2_731 = load double, double* %var_2_730, align 8
; %var_2_732 = load double, double* %var_2_731, align 8
; Matched:%var_2_732:  %var_2_732 = fadd double %var_2_729, %var_2_731
; %var_2_733 = fadd double %var_2_730, %var_2_732
; Matched:\<badref\>:  store double %var_2_732, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_733, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_733:  %var_2_733 = add i64 %var_2_721, -96
; %var_2_734 = add i64 %var_2_722, -96
; Matched:%var_2_649:  %var_2_649 = add i64 %var_2_638, 18
; %var_2_735 = add i64 %var_2_724, 18
; Matched:\<badref\>:  store i64 %var_2_649, i64* %PC, align 8
; store i64 %var_2_735, i64* %var_2_3, align 8
; Matched:%var_2_735:  %var_2_735 = inttoptr i64 %var_2_733 to double*
; %var_2_736 = inttoptr i64 %var_2_734 to double*
; Matched:\<badref\>:  store double %var_2_732, double* %var_2_735, align 8
; store double %var_2_733, double* %var_2_736, align 8
; Matched:%var_2_736:  %var_2_736 = load i64, i64* %RBP, align 8
; %var_2_737 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_737:  %var_2_737 = add i64 %var_2_736, -144
; %var_2_738 = add i64 %var_2_737, -144
%var_2_739 = load i64, i64* %var_2_3, align 8
%var_2_740 = add i64 %var_2_739, 8
store i64 %var_2_740, i64* %var_2_3, align 8
; Matched:%var_2_740:  %var_2_740 = inttoptr i64 %var_2_737 to i64*
; %var_2_741 = inttoptr i64 %var_2_738 to i64*
; Matched:%var_2_741:  %var_2_741 = load i64, i64* %var_2_740, align 8
; %var_2_742 = load i64, i64* %var_2_741, align 8
; Matched:\<badref\>:  store i64 %var_2_741, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_742, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_742:  %var_2_742 = add i64 %var_2_736, -120
; %var_2_743 = add i64 %var_2_737, -120
; Matched:%var_2_329:  %var_2_329 = add i64 %var_2_324, 13
; %var_2_744 = add i64 %var_2_739, 13
; Matched:\<badref\>:  store i64 %var_2_329, i64* %PC, align 8
; store i64 %var_2_744, i64* %var_2_3, align 8
; Matched:%var_2_744:  %var_2_744 = bitcast i64 %var_2_741 to double
; %var_2_745 = bitcast i64 %var_2_742 to double
; Matched:%var_2_745:  %var_2_745 = inttoptr i64 %var_2_742 to double*
; %var_2_746 = inttoptr i64 %var_2_743 to double*
; Matched:%var_2_746:  %var_2_746 = load double, double* %var_2_745, align 8
; %var_2_747 = load double, double* %var_2_746, align 8
; Matched:%var_2_747:  %var_2_747 = fsub double %var_2_744, %var_2_746
; %var_2_748 = fsub double %var_2_745, %var_2_747
; Matched:\<badref\>:  store double %var_2_747, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_748, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_748:  %var_2_748 = add i64 %var_2_736, -104
; %var_2_749 = add i64 %var_2_737, -104
; Matched:%var_2_2452:  %var_2_2452 = add i64 %var_2_2419, 18
; %var_2_750 = add i64 %var_2_739, 18
; Matched:\<badref\>:  store i64 %var_2_2452, i64* %PC, align 8
; store i64 %var_2_750, i64* %var_2_3, align 8
; Matched:%var_2_750:  %var_2_750 = inttoptr i64 %var_2_748 to double*
; %var_2_751 = inttoptr i64 %var_2_749 to double*
; Matched:\<badref\>:  store double %var_2_747, double* %var_2_750, align 8
; store double %var_2_748, double* %var_2_751, align 8
%var_2_752 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_667:  %var_2_667 = add i64 %var_2_666, -48
; %var_2_753 = add i64 %var_2_752, -48
%var_2_754 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_669:  %var_2_669 = add i64 %var_2_668, 5
; %var_2_755 = add i64 %var_2_754, 5
; Matched:\<badref\>:  store i64 %var_2_2998, i64* %PC, align 8
; store i64 %var_2_755, i64* %var_2_3, align 8
; Matched:%var_2_700:  %var_2_700 = inttoptr i64 %var_2_697 to i64*
; %var_2_756 = inttoptr i64 %var_2_753 to i64*
; Matched:%var_2_701:  %var_2_701 = load i64, i64* %var_2_700, align 8
; %var_2_757 = load i64, i64* %var_2_756, align 8
; Matched:\<badref\>:  store i64 %var_2_3168, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_757, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_751, -104
; %var_2_758 = add i64 %var_2_752, -104
; Matched:%var_2_1791:  %var_2_1791 = add i64 %var_2_1786, 10
; %var_2_759 = add i64 %var_2_754, 10
; Matched:\<badref\>:  store i64 %var_2_1791, i64* %PC, align 8
; store i64 %var_2_759, i64* %var_2_3, align 8
; Matched:%var_2_1654:  %var_2_1654 = inttoptr i64 %var_2_1651 to i64*
; %var_2_760 = inttoptr i64 %var_2_758 to i64*
; Matched:%var_2_760:  %var_2_760 = load i64, i64* %var_2_759, align 8
; %var_2_761 = load i64, i64* %var_2_760, align 8
; Matched:\<badref\>:  store i64 %var_2_760, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_761, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_761:  %var_2_761 = add i64 %var_2_751, -96
; %var_2_762 = add i64 %var_2_752, -96
; Matched:%var_2_3176:  %var_2_3176 = add i64 %var_2_3165, 15
; %var_2_763 = add i64 %var_2_754, 15
; Matched:\<badref\>:  store i64 %var_2_2031, i64* %PC, align 8
; store i64 %var_2_763, i64* %var_2_3, align 8
; Matched:%var_2_763:  %var_2_763 = bitcast i64 %var_2_760 to double
; %var_2_764 = bitcast i64 %var_2_761 to double
; Matched:%var_2_764:  %var_2_764 = inttoptr i64 %var_2_761 to double*
; %var_2_765 = inttoptr i64 %var_2_762 to double*
; Matched:%var_2_765:  %var_2_765 = load double, double* %var_2_764, align 8
; %var_2_766 = load double, double* %var_2_765, align 8
; Matched:%var_2_766:  %var_2_766 = fsub double %var_2_763, %var_2_765
; %var_2_767 = fsub double %var_2_764, %var_2_766
; Matched:\<badref\>:  store double %var_2_766, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_767, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_767:  %var_2_767 = bitcast i64 %var_2_756 to double
; %var_2_768 = bitcast i64 %var_2_757 to double
; Matched:%var_2_768:  %var_2_768 = fmul double %var_2_767, %var_2_766
; %var_2_769 = fmul double %var_2_768, %var_2_767
; Matched:\<badref\>:  store double %var_2_768, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_769, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_770 = add i64 %var_2_752, -16
; Matched:%var_2_2173:  %var_2_2173 = add i64 %var_2_2136, 23
; %var_2_771 = add i64 %var_2_754, 23
; Matched:\<badref\>:  store i64 %var_2_2173, i64* %PC, align 8
; store i64 %var_2_771, i64* %var_2_3, align 8
%var_2_772 = inttoptr i64 %var_2_770 to i64*
%var_2_773 = load i64, i64* %var_2_772, align 8
; Matched:\<badref\>:  store i64 %var_2_1249, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_773, i64* %RDX.i1791, align 8
; Matched:%var_2_773:  %var_2_773 = add i64 %var_2_772, 112
; %var_2_774 = add i64 %var_2_773, 112
; Matched:%var_2_3391:  %var_2_3391 = add i64 %var_2_3369, 28
; %var_2_775 = add i64 %var_2_754, 28
; Matched:\<badref\>:  store i64 %var_2_799, i64* %PC, align 8
; store i64 %var_2_775, i64* %var_2_3, align 8
; Matched:%var_2_775:  %var_2_775 = inttoptr i64 %var_2_773 to double*
; %var_2_776 = inttoptr i64 %var_2_774 to double*
; Matched:\<badref\>:  store double %var_2_768, double* %var_2_775, align 8
; store double %var_2_769, double* %var_2_776, align 8
%var_2_777 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_752:  %var_2_752 = add i64 %var_2_751, -48
; %var_2_778 = add i64 %var_2_777, -48
%var_2_779 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_620:  %var_2_620 = add i64 %var_2_619, 5
; %var_2_780 = add i64 %var_2_779, 5
; Matched:\<badref\>:  store i64 %var_2_287, i64* %PC, align 8
; store i64 %var_2_780, i64* %var_2_3, align 8
; Matched:%var_2_3225:  %var_2_3225 = inttoptr i64 %var_2_3222 to i64*
; %var_2_781 = inttoptr i64 %var_2_778 to i64*
; Matched:%var_2_3226:  %var_2_3226 = load i64, i64* %var_2_3225, align 8
; %var_2_782 = load i64, i64* %var_2_781, align 8
; Matched:\<badref\>:  store i64 %var_2_671, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_782, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1651:  %var_2_1651 = add i64 %var_2_1650, -104
; %var_2_783 = add i64 %var_2_777, -104
; Matched:%var_2_1937:  %var_2_1937 = add i64 %var_2_1932, 10
; %var_2_784 = add i64 %var_2_779, 10
; Matched:\<badref\>:  store i64 %var_2_1937, i64* %PC, align 8
; store i64 %var_2_784, i64* %var_2_3, align 8
; Matched:%var_2_759:  %var_2_759 = inttoptr i64 %var_2_757 to i64*
; %var_2_785 = inttoptr i64 %var_2_783 to i64*
; Matched:%var_2_785:  %var_2_785 = load i64, i64* %var_2_784, align 8
; %var_2_786 = load i64, i64* %var_2_785, align 8
; Matched:\<badref\>:  store i64 %var_2_1655, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_786, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_786:  %var_2_786 = add i64 %var_2_776, -96
; %var_2_787 = add i64 %var_2_777, -96
; Matched:%var_2_682:  %var_2_682 = add i64 %var_2_668, 15
; %var_2_788 = add i64 %var_2_779, 15
; Matched:\<badref\>:  store i64 %var_2_1885, i64* %PC, align 8
; store i64 %var_2_788, i64* %var_2_3, align 8
; Matched:%var_2_788:  %var_2_788 = bitcast i64 %var_2_785 to double
; %var_2_789 = bitcast i64 %var_2_786 to double
; Matched:%var_2_789:  %var_2_789 = inttoptr i64 %var_2_786 to double*
; %var_2_790 = inttoptr i64 %var_2_787 to double*
; Matched:%var_2_790:  %var_2_790 = load double, double* %var_2_789, align 8
; %var_2_791 = load double, double* %var_2_790, align 8
; Matched:%var_2_791:  %var_2_791 = fadd double %var_2_788, %var_2_790
; %var_2_792 = fadd double %var_2_789, %var_2_791
; Matched:\<badref\>:  store double %var_2_791, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_792, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_792:  %var_2_792 = bitcast i64 %var_2_781 to double
; %var_2_793 = bitcast i64 %var_2_782 to double
; Matched:%var_2_793:  %var_2_793 = fmul double %var_2_792, %var_2_791
; %var_2_794 = fmul double %var_2_793, %var_2_792
; Matched:\<badref\>:  store double %var_2_793, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_794, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_795 = add i64 %var_2_777, -16
; Matched:%var_2_795:  %var_2_795 = add i64 %var_2_778, 23
; %var_2_796 = add i64 %var_2_779, 23
; Matched:\<badref\>:  store i64 %var_2_795, i64* %PC, align 8
; store i64 %var_2_796, i64* %var_2_3, align 8
%var_2_797 = inttoptr i64 %var_2_795 to i64*
%var_2_798 = load i64, i64* %var_2_797, align 8
; Matched:\<badref\>:  store i64 %var_2_403, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_798, i64* %RDX.i1791, align 8
; Matched:%var_2_798:  %var_2_798 = add i64 %var_2_797, 120
; %var_2_799 = add i64 %var_2_798, 120
; Matched:%var_2_3187:  %var_2_3187 = add i64 %var_2_3165, 28
; %var_2_800 = add i64 %var_2_779, 28
; Matched:\<badref\>:  store i64 %var_2_3187, i64* %PC, align 8
; store i64 %var_2_800, i64* %var_2_3, align 8
; Matched:%var_2_800:  %var_2_800 = inttoptr i64 %var_2_798 to double*
; %var_2_801 = inttoptr i64 %var_2_799 to double*
; Matched:\<badref\>:  store double %var_2_793, double* %var_2_800, align 8
; store double %var_2_794, double* %var_2_801, align 8
%var_2_802 = load i64, i64* %RBP.i, align 8
%var_2_803 = add i64 %var_2_802, -32
%var_2_804 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2424:  %var_2_2424 = add i64 %var_2_2419, 7
; %var_2_805 = add i64 %var_2_804, 7
; Matched:\<badref\>:  store i64 %var_2_809, i64* %PC, align 8
; store i64 %var_2_805, i64* %var_2_3, align 8
%var_2_806 = inttoptr i64 %var_2_803 to i32*
store i32 0, i32* %var_2_806, align 4
%var_2_807 = load i64, i64* %RBP.i, align 8
%var_2_808 = add i64 %var_2_807, -28
%var_2_809 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2804:  %var_2_2804 = add i64 %var_2_2799, 7
; %var_2_810 = add i64 %var_2_809, 7
; Matched:\<badref\>:  store i64 %var_2_2576, i64* %PC, align 8
; store i64 %var_2_810, i64* %var_2_3, align 8
%var_2_811 = inttoptr i64 %var_2_808 to i32*
store i32 16, i32* %var_2_811, align 4
  %RAX.i1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; Matched:%var_2_6:  %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_811:  %var_2_811 = bitcast %union.VectorReg* %var_2_6 to i8*
; %var_2_813 = bitcast %union.VectorReg* %var_2_812 to i8*
%var_2_814 = bitcast [32 x %union.VectorReg]* %var_2_63 to <2 x i32>*
%var_2_815 = bitcast i64* %var_2_69 to <2 x i32>*
; Matched:%var_2_814:  %var_2_814 = bitcast %union.VectorReg* %var_2_6 to i32*
; %var_2_816 = bitcast %union.VectorReg* %var_2_812 to i32*
; Matched:%var_2_815:  %var_2_815 = getelementptr inbounds i8, i8* %var_2_811, i64 4
; %var_2_817 = getelementptr inbounds i8, i8* %var_2_813, i64 4
; Matched:%var_2_816:  %var_2_816 = bitcast i8* %var_2_815 to i32*
; %var_2_818 = bitcast i8* %var_2_817 to i32*
%var_2_819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_818:  %var_2_818 = bitcast i64* %var_2_817 to i32*
; %var_2_820 = bitcast i64* %var_2_819 to i32*
; Matched:%var_2_819:  %var_2_819 = getelementptr inbounds i8, i8* %var_2_811, i64 12
; %var_2_821 = getelementptr inbounds i8, i8* %var_2_813, i64 12
; Matched:%var_2_820:  %var_2_820 = bitcast i8* %var_2_819 to i32*
; %var_2_822 = bitcast i8* %var_2_821 to i32*
; Matched:%var_2_821:  %var_2_821 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_823 = bitcast %union.VectorReg* %var_2_812 to double*
; Matched:%var_2_822:  %var_2_822 = bitcast %union.VectorReg* %var_2_5 to i32*
; %var_2_824 = bitcast %union.VectorReg* %var_2_672 to i32*
; Matched:%var_2_823:  %var_2_823 = getelementptr inbounds i8, i8* %var_2_672, i64 4
; %var_2_825 = getelementptr inbounds i8, i8* %var_2_673, i64 4
; Matched:%var_2_824:  %var_2_824 = bitcast i8* %var_2_823 to i32*
; %var_2_826 = bitcast i8* %var_2_825 to i32*
; Matched:%var_2_825:  %var_2_825 = bitcast i64* %var_2_679 to i32*
; %var_2_827 = bitcast i64* %var_2_680 to i32*
; Matched:%var_2_826:  %var_2_826 = getelementptr inbounds i8, i8* %var_2_672, i64 12
; %var_2_828 = getelementptr inbounds i8, i8* %var_2_673, i64 12
; Matched:%var_2_827:  %var_2_827 = bitcast i8* %var_2_826 to i32*
; %var_2_829 = bitcast i8* %var_2_828 to i32*
; Matched:%var_2_828:  %var_2_828 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_830 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_812, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_831 = bitcast i64* %var_2_819 to double*
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_402c02

block_.L_402c02:                                  ; preds = %block_402c0e, %entry
%var_2_832 = phi i64 [ %var_2_3499, %block_402c0e ], [ %.pre, %entry ]
%var_2_833 = load i64, i64* %RBP.i, align 8
%var_2_834 = add i64 %var_2_833, -28
; Matched:%var_2_3492:  %var_2_3492 = add i64 %var_2_3489, 3
; %var_2_835 = add i64 %var_2_832, 3
; Matched:\<badref\>:  store i64 %var_2_3492, i64* %PC, align 8
; store i64 %var_2_835, i64* %var_2_3, align 8
%var_2_836 = inttoptr i64 %var_2_834 to i32*
%var_2_837 = load i32, i32* %var_2_836, align 4
; Matched:%var_2_3495:  %var_2_3495 = zext i32 %var_2_3494 to i64
; %var_2_838 = zext i32 %var_2_837 to i64
; Matched:\<badref\>:  store i64 %var_2_3495, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_838, i64* %RAX.i1283, align 8
%var_2_839 = add i64 %var_2_833, -4
; Matched:%var_2_3497:  %var_2_3497 = add i64 %var_2_3489, 6
; %var_2_840 = add i64 %var_2_832, 6
; Matched:\<badref\>:  store i64 %var_2_3497, i64* %PC, align 8
; store i64 %var_2_840, i64* %var_2_3, align 8
%var_2_841 = inttoptr i64 %var_2_839 to i32*
%var_2_842 = load i32, i32* %var_2_841, align 4
%var_2_843 = sub i32 %var_2_837, %var_2_842
; Matched:%var_2_3501:  %var_2_3501 = icmp ult i32 %var_2_3494, %var_2_3499
; %var_2_844 = icmp ult i32 %var_2_837, %var_2_842
; Matched:%var_2_3502:  %var_2_3502 = zext i1 %var_2_3501 to i8
; %var_2_845 = zext i1 %var_2_844 to i8
; Matched:\<badref\>:  store i8 %var_2_3502, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_845, i8* %var_2_14, align 1
; Matched:%var_2_3503:  %var_2_3503 = and i32 %var_2_3500, 255
; %var_2_846 = and i32 %var_2_843, 255
; Matched:%var_2_3504:  %var_2_3504 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3503) #14
; %var_2_847 = tail call i32 @llvm.ctpop.i32(i32 %var_2_846)
; Matched:%var_2_3505:  %var_2_3505 = trunc i32 %var_2_3504 to i8
; %var_2_848 = trunc i32 %var_2_847 to i8
; Matched:%var_2_3506:  %var_2_3506 = and i8 %var_2_3505, 1
; %var_2_849 = and i8 %var_2_848, 1
; Matched:%var_2_3507:  %var_2_3507 = xor i8 %var_2_3506, 1
; %var_2_850 = xor i8 %var_2_849, 1
; Matched:\<badref\>:  store i8 %var_2_3507, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_850, i8* %var_2_21, align 1
; Matched:%var_2_3508:  %var_2_3508 = xor i32 %var_2_3499, %var_2_3494
; %var_2_851 = xor i32 %var_2_842, %var_2_837
; Matched:%var_2_3509:  %var_2_3509 = xor i32 %var_2_3508, %var_2_3500
; %var_2_852 = xor i32 %var_2_851, %var_2_843
; Matched:%var_2_3510:  %var_2_3510 = lshr i32 %var_2_3509, 4
; %var_2_853 = lshr i32 %var_2_852, 4
; Matched:%var_2_3511:  %var_2_3511 = trunc i32 %var_2_3510 to i8
; %var_2_854 = trunc i32 %var_2_853 to i8
; Matched:%var_2_3512:  %var_2_3512 = and i8 %var_2_3511, 1
; %var_2_855 = and i8 %var_2_854, 1
; Matched:\<badref\>:  store i8 %var_2_3512, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_855, i8* %var_2_27, align 1
; Matched:%var_2_3513:  %var_2_3513 = icmp eq i32 %var_2_3500, 0
; %var_2_856 = icmp eq i32 %var_2_843, 0
; Matched:%var_2_3514:  %var_2_3514 = zext i1 %var_2_3513 to i8
; %var_2_857 = zext i1 %var_2_856 to i8
; Matched:\<badref\>:  store i8 %var_2_3514, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_857, i8* %var_2_30, align 1
%var_2_858 = lshr i32 %var_2_843, 31
%var_2_859 = trunc i32 %var_2_858 to i8
; Matched:\<badref\>:  store i8 %var_2_3516, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_859, i8* %var_2_33, align 1
%var_2_860 = lshr i32 %var_2_837, 31
%var_2_861 = lshr i32 %var_2_842, 31
%var_2_862 = xor i32 %var_2_861, %var_2_860
%var_2_863 = xor i32 %var_2_858, %var_2_860
%var_2_864 = add nuw nsw i32 %var_2_863, %var_2_862
%var_2_865 = icmp eq i32 %var_2_864, 2
; Matched:%var_2_3523:  %var_2_3523 = zext i1 %var_2_3522 to i8
; %var_2_866 = zext i1 %var_2_865 to i8
; Matched:\<badref\>:  store i8 %var_2_3523, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_866, i8* %var_2_39, align 1
%var_2_867 = icmp ne i8 %var_2_859, 0
%var_2_868 = xor i1 %var_2_867, %var_2_865
%.v = select i1 %var_2_868, i64 12, i64 1820
%var_2_869 = add i64 %var_2_832, %.v
; Matched:\<badref\>:  store i64 %var_2_3526, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_869, i64* %var_2_3, align 8
br i1 %var_2_868, label %block_402c0e, label %block_.L_40331e

block_402c0e:                                     ; preds = %block_.L_402c02
  store i64 -9223372036854775808, i64* %RAX.i1283, align 8
%var_2_870 = add i64 %var_2_869, add (i64 ptrtoint (%G_0x14d0__rip__type* @G_0x14d0__rip_ to i64), i64 10)
%var_2_871 = add i64 %var_2_869, 18
store i64 %var_2_871, i64* %var_2_3, align 8
%var_2_872 = inttoptr i64 %var_2_870 to i64*
%var_2_873 = load i64, i64* %var_2_872, align 8
store i64 %var_2_873, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_831:  %var_2_831 = add i64 %var_2_3490, -32
; %var_2_874 = add i64 %var_2_833, -32
; Matched:%var_2_832:  %var_2_832 = add i64 %var_2_3526, 21
; %var_2_875 = add i64 %var_2_869, 21
; Matched:\<badref\>:  store i64 %var_2_832, i64* %PC, align 8
; store i64 %var_2_875, i64* %var_2_3, align 8
; Matched:%var_2_833:  %var_2_833 = inttoptr i64 %var_2_831 to i32*
; %var_2_876 = inttoptr i64 %var_2_874 to i32*
; Matched:%var_2_834:  %var_2_834 = load i32, i32* %var_2_833, align 4
; %var_2_877 = load i32, i32* %var_2_876, align 4
; Matched:%var_2_835:  %var_2_835 = add i32 %var_2_834, 2
; %var_2_878 = add i32 %var_2_877, 2
; Matched:%var_2_836:  %var_2_836 = zext i32 %var_2_835 to i64
; %var_2_879 = zext i32 %var_2_878 to i64
; Matched:\<badref\>:  store i64 %var_2_836, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_879, i64* %RCX.i1272, align 8
; Matched:%var_2_837:  %var_2_837 = icmp ugt i32 %var_2_834, -3
; %var_2_880 = icmp ugt i32 %var_2_877, -3
; Matched:%var_2_838:  %var_2_838 = zext i1 %var_2_837 to i8
; %var_2_881 = zext i1 %var_2_880 to i8
; Matched:\<badref\>:  store i8 %var_2_838, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_881, i8* %var_2_14, align 1
; Matched:%var_2_839:  %var_2_839 = and i32 %var_2_835, 255
; %var_2_882 = and i32 %var_2_878, 255
; Matched:%var_2_840:  %var_2_840 = tail call i32 @llvm.ctpop.i32(i32 %var_2_839) #14
; %var_2_883 = tail call i32 @llvm.ctpop.i32(i32 %var_2_882)
; Matched:%var_2_841:  %var_2_841 = trunc i32 %var_2_840 to i8
; %var_2_884 = trunc i32 %var_2_883 to i8
; Matched:%var_2_842:  %var_2_842 = and i8 %var_2_841, 1
; %var_2_885 = and i8 %var_2_884, 1
; Matched:%var_2_843:  %var_2_843 = xor i8 %var_2_842, 1
; %var_2_886 = xor i8 %var_2_885, 1
; Matched:\<badref\>:  store i8 %var_2_843, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_886, i8* %var_2_21, align 1
; Matched:%var_2_844:  %var_2_844 = xor i32 %var_2_835, %var_2_834
; %var_2_887 = xor i32 %var_2_878, %var_2_877
; Matched:%var_2_845:  %var_2_845 = lshr i32 %var_2_844, 4
; %var_2_888 = lshr i32 %var_2_887, 4
; Matched:%var_2_846:  %var_2_846 = trunc i32 %var_2_845 to i8
; %var_2_889 = trunc i32 %var_2_888 to i8
; Matched:%var_2_847:  %var_2_847 = and i8 %var_2_846, 1
; %var_2_890 = and i8 %var_2_889, 1
; Matched:\<badref\>:  store i8 %var_2_847, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_890, i8* %var_2_27, align 1
; Matched:%var_2_848:  %var_2_848 = icmp eq i32 %var_2_835, 0
; %var_2_891 = icmp eq i32 %var_2_878, 0
; Matched:%var_2_849:  %var_2_849 = zext i1 %var_2_848 to i8
; %var_2_892 = zext i1 %var_2_891 to i8
; Matched:\<badref\>:  store i8 %var_2_849, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_892, i8* %var_2_30, align 1
; Matched:%var_2_850:  %var_2_850 = lshr i32 %var_2_835, 31
; %var_2_893 = lshr i32 %var_2_878, 31
; Matched:%var_2_851:  %var_2_851 = trunc i32 %var_2_850 to i8
; %var_2_894 = trunc i32 %var_2_893 to i8
; Matched:\<badref\>:  store i8 %var_2_851, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_894, i8* %var_2_33, align 1
; Matched:%var_2_852:  %var_2_852 = lshr i32 %var_2_834, 31
; %var_2_895 = lshr i32 %var_2_877, 31
; Matched:%var_2_853:  %var_2_853 = xor i32 %var_2_850, %var_2_852
; %var_2_896 = xor i32 %var_2_893, %var_2_895
; Matched:%var_2_854:  %var_2_854 = add nuw nsw i32 %var_2_853, %var_2_850
; %var_2_897 = add nuw nsw i32 %var_2_896, %var_2_893
; Matched:%var_2_855:  %var_2_855 = icmp eq i32 %var_2_854, 2
; %var_2_898 = icmp eq i32 %var_2_897, 2
; Matched:%var_2_856:  %var_2_856 = zext i1 %var_2_855 to i8
; %var_2_899 = zext i1 %var_2_898 to i8
; Matched:\<badref\>:  store i8 %var_2_856, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_899, i8* %var_2_39, align 1
; Matched:%var_2_857:  %var_2_857 = add i64 %var_2_3526, 27
; %var_2_900 = add i64 %var_2_869, 27
; Matched:\<badref\>:  store i64 %var_2_857, i64* %PC, align 8
; store i64 %var_2_900, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_835, i32* %var_2_833, align 4
; store i32 %var_2_878, i32* %var_2_876, align 4
; Matched:%var_2_858:  %var_2_858 = load i64, i64* %RBP, align 8
; %var_2_901 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_859:  %var_2_859 = add i64 %var_2_858, -32
; %var_2_902 = add i64 %var_2_901, -32
%var_2_903 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3428:  %var_2_3428 = add i64 %var_2_3427, 3
; %var_2_904 = add i64 %var_2_903, 3
; Matched:\<badref\>:  store i64 %var_2_861, i64* %PC, align 8
; store i64 %var_2_904, i64* %var_2_3, align 8
; Matched:%var_2_862:  %var_2_862 = inttoptr i64 %var_2_859 to i32*
; %var_2_905 = inttoptr i64 %var_2_902 to i32*
; Matched:%var_2_863:  %var_2_863 = load i32, i32* %var_2_862, align 4
; %var_2_906 = load i32, i32* %var_2_905, align 4
; Matched:%var_2_864:  %var_2_864 = shl i32 %var_2_863, 1
; %var_2_907 = shl i32 %var_2_906, 1
; Matched:%var_2_865:  %var_2_865 = icmp slt i32 %var_2_863, 0
; %var_2_908 = icmp slt i32 %var_2_906, 0
; Matched:%var_2_866:  %var_2_866 = icmp slt i32 %var_2_864, 0
; %var_2_909 = icmp slt i32 %var_2_907, 0
; Matched:%var_2_867:  %var_2_867 = xor i1 %var_2_865, %var_2_866
; %var_2_910 = xor i1 %var_2_908, %var_2_909
; Matched:%var_2_868:  %var_2_868 = zext i32 %var_2_864 to i64
; %var_2_911 = zext i32 %var_2_907 to i64
; Matched:\<badref\>:  store i64 %var_2_868, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_911, i64* %RCX.i1272, align 8
; Matched:  %.lobit = lshr i32 %var_2_863, 31
; %.lobit = lshr i32 %var_2_906, 31
; Matched:%var_2_869:  %var_2_869 = trunc i32 %.lobit to i8
; %var_2_912 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_869, i8* %var_2_16, align 1, !tbaa !1286
; store i8 %var_2_912, i8* %var_2_14, align 1
; Matched:%var_2_870:  %var_2_870 = and i32 %var_2_864, 254
; %var_2_913 = and i32 %var_2_907, 254
; Matched:%var_2_871:  %var_2_871 = tail call i32 @llvm.ctpop.i32(i32 %var_2_870) #14
; %var_2_914 = tail call i32 @llvm.ctpop.i32(i32 %var_2_913)
; Matched:%var_2_872:  %var_2_872 = trunc i32 %var_2_871 to i8
; %var_2_915 = trunc i32 %var_2_914 to i8
; Matched:%var_2_873:  %var_2_873 = and i8 %var_2_872, 1
; %var_2_916 = and i8 %var_2_915, 1
; Matched:%var_2_874:  %var_2_874 = xor i8 %var_2_873, 1
; %var_2_917 = xor i8 %var_2_916, 1
; Matched:\<badref\>:  store i8 %var_2_874, i8* %var_2_23, align 1, !tbaa !1286
; store i8 %var_2_917, i8* %var_2_21, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_875:  %var_2_875 = icmp eq i32 %var_2_864, 0
; %var_2_918 = icmp eq i32 %var_2_907, 0
; Matched:%var_2_876:  %var_2_876 = zext i1 %var_2_875 to i8
; %var_2_919 = zext i1 %var_2_918 to i8
; Matched:\<badref\>:  store i8 %var_2_876, i8* %var_2_32, align 1, !tbaa !1286
; store i8 %var_2_919, i8* %var_2_30, align 1
; Matched:%var_2_877:  %var_2_877 = lshr i32 %var_2_863, 30
; %var_2_920 = lshr i32 %var_2_906, 30
; Matched:%var_2_878:  %var_2_878 = trunc i32 %var_2_877 to i8
; %var_2_921 = trunc i32 %var_2_920 to i8
; Matched:%var_2_879:  %var_2_879 = and i8 %var_2_878, 1
; %var_2_922 = and i8 %var_2_921, 1
; Matched:\<badref\>:  store i8 %var_2_879, i8* %var_2_35, align 1, !tbaa !1286
; store i8 %var_2_922, i8* %var_2_33, align 1
; Matched:%var_2_880:  %var_2_880 = zext i1 %var_2_867 to i8
; %var_2_923 = zext i1 %var_2_910 to i8
; Matched:\<badref\>:  store i8 %var_2_880, i8* %var_2_41, align 1, !tbaa !1286
; store i8 %var_2_923, i8* %var_2_39, align 1
; Matched:%var_2_881:  %var_2_881 = add i64 %var_2_858, -36
; %var_2_924 = add i64 %var_2_901, -36
%var_2_925 = add i64 %var_2_903, 8
store i64 %var_2_925, i64* %var_2_3, align 8
; Matched:%var_2_883:  %var_2_883 = inttoptr i64 %var_2_881 to i32*
; %var_2_926 = inttoptr i64 %var_2_924 to i32*
; Matched:\<badref\>:  store i32 %var_2_864, i32* %var_2_883, align 4
; store i32 %var_2_907, i32* %var_2_926, align 4
; Matched:%var_2_2175:  %var_2_2175 = load i64, i64* %RBP, align 8
; %var_2_927 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2176:  %var_2_2176 = add i64 %var_2_2175, -24
; %var_2_928 = add i64 %var_2_927, -24
%var_2_929 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2268:  %var_2_2268 = add i64 %var_2_2267, 4
; %var_2_930 = add i64 %var_2_929, 4
; Matched:\<badref\>:  store i64 %var_2_2178, i64* %PC, align 8
; store i64 %var_2_930, i64* %var_2_3, align 8
; Matched:%var_2_949:  %var_2_949 = inttoptr i64 %var_2_946 to i64*
; %var_2_931 = inttoptr i64 %var_2_928 to i64*
; Matched:%var_2_950:  %var_2_950 = load i64, i64* %var_2_949, align 8
; %var_2_932 = load i64, i64* %var_2_931, align 8
; Matched:\<badref\>:  store i64 %var_2_950, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_932, i64* %RDX.i1791, align 8
; Matched:%var_2_890:  %var_2_890 = add i64 %var_2_884, -32
; %var_2_933 = add i64 %var_2_927, -32
%var_2_934 = add i64 %var_2_929, 8
store i64 %var_2_934, i64* %var_2_3, align 8
; Matched:%var_2_892:  %var_2_892 = inttoptr i64 %var_2_890 to i32*
; %var_2_935 = inttoptr i64 %var_2_933 to i32*
; Matched:%var_2_893:  %var_2_893 = load i32, i32* %var_2_892, align 4
; %var_2_936 = load i32, i32* %var_2_935, align 4
; Matched:%var_2_894:  %var_2_894 = sext i32 %var_2_893 to i64
; %var_2_937 = sext i32 %var_2_936 to i64
; Matched:\<badref\>:  store i64 %var_2_894, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_937, i64* %RSI.i1794, align 8
; Matched:%var_2_895:  %var_2_895 = shl nsw i64 %var_2_894, 3
; %var_2_938 = shl nsw i64 %var_2_937, 3
; Matched:%var_2_896:  %var_2_896 = add i64 %var_2_895, %var_2_889
; %var_2_939 = add i64 %var_2_938, %var_2_932
; Matched:%var_2_1204:  %var_2_1204 = add i64 %var_2_1193, 13
; %var_2_940 = add i64 %var_2_929, 13
; Matched:\<badref\>:  store i64 %var_2_175, i64* %PC, align 8
; store i64 %var_2_940, i64* %var_2_3, align 8
; Matched:%var_2_898:  %var_2_898 = inttoptr i64 %var_2_896 to i64*
; %var_2_941 = inttoptr i64 %var_2_939 to i64*
; Matched:%var_2_899:  %var_2_899 = load i64, i64* %var_2_898, align 8
; %var_2_942 = load i64, i64* %var_2_941, align 8
; Matched:\<badref\>:  store i64 %var_2_899, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_942, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_900:  %var_2_900 = add i64 %var_2_884, -64
; %var_2_943 = add i64 %var_2_927, -64
; Matched:%var_2_2376:  %var_2_2376 = add i64 %var_2_2343, 18
; %var_2_944 = add i64 %var_2_929, 18
; Matched:\<badref\>:  store i64 %var_2_2376, i64* %PC, align 8
; store i64 %var_2_944, i64* %var_2_3, align 8
; Matched:%var_2_902:  %var_2_902 = inttoptr i64 %var_2_900 to i64*
; %var_2_945 = inttoptr i64 %var_2_943 to i64*
; Matched:\<badref\>:  store i64 %var_2_899, i64* %var_2_902, align 8
; store i64 %var_2_942, i64* %var_2_945, align 8
; Matched:%var_2_945:  %var_2_945 = load i64, i64* %RBP, align 8
; %var_2_946 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_946:  %var_2_946 = add i64 %var_2_945, -24
; %var_2_947 = add i64 %var_2_946, -24
%var_2_948 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_437:  %var_2_437 = add i64 %var_2_436, 4
; %var_2_949 = add i64 %var_2_948, 4
; Matched:\<badref\>:  store i64 %var_2_106, i64* %PC, align 8
; store i64 %var_2_949, i64* %var_2_3, align 8
; Matched:%var_2_968:  %var_2_968 = inttoptr i64 %var_2_965 to i64*
; %var_2_950 = inttoptr i64 %var_2_947 to i64*
; Matched:%var_2_2139:  %var_2_2139 = load i64, i64* %var_2_2138, align 8
; %var_2_951 = load i64, i64* %var_2_950, align 8
; Matched:\<badref\>:  store i64 %var_2_889, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_951, i64* %RDX.i1791, align 8
; Matched:%var_2_909:  %var_2_909 = add i64 %var_2_903, -32
; %var_2_952 = add i64 %var_2_946, -32
; Matched:%var_2_1328:  %var_2_1328 = add i64 %var_2_1323, 7
; %var_2_953 = add i64 %var_2_948, 7
; Matched:\<badref\>:  store i64 %var_2_971, i64* %PC, align 8
; store i64 %var_2_953, i64* %var_2_3, align 8
; Matched:%var_2_911:  %var_2_911 = inttoptr i64 %var_2_909 to i32*
; %var_2_954 = inttoptr i64 %var_2_952 to i32*
; Matched:%var_2_912:  %var_2_912 = load i32, i32* %var_2_911, align 4
; %var_2_955 = load i32, i32* %var_2_954, align 4
; Matched:%var_2_913:  %var_2_913 = add i32 %var_2_912, 1
; %var_2_956 = add i32 %var_2_955, 1
; Matched:%var_2_914:  %var_2_914 = zext i32 %var_2_913 to i64
; %var_2_957 = zext i32 %var_2_956 to i64
; Matched:\<badref\>:  store i64 %var_2_914, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_957, i64* %RCX.i1272, align 8
; Matched:%var_2_915:  %var_2_915 = icmp eq i32 %var_2_912, -1
; %var_2_958 = icmp eq i32 %var_2_955, -1
; Matched:%var_2_916:  %var_2_916 = icmp eq i32 %var_2_913, 0
; %var_2_959 = icmp eq i32 %var_2_956, 0
; Matched:%var_2_917:  %var_2_917 = or i1 %var_2_915, %var_2_916
; %var_2_960 = or i1 %var_2_958, %var_2_959
; Matched:%var_2_918:  %var_2_918 = zext i1 %var_2_917 to i8
; %var_2_961 = zext i1 %var_2_960 to i8
; Matched:\<badref\>:  store i8 %var_2_918, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_961, i8* %var_2_14, align 1
; Matched:%var_2_919:  %var_2_919 = and i32 %var_2_913, 255
; %var_2_962 = and i32 %var_2_956, 255
; Matched:%var_2_920:  %var_2_920 = tail call i32 @llvm.ctpop.i32(i32 %var_2_919) #14
; %var_2_963 = tail call i32 @llvm.ctpop.i32(i32 %var_2_962)
; Matched:%var_2_921:  %var_2_921 = trunc i32 %var_2_920 to i8
; %var_2_964 = trunc i32 %var_2_963 to i8
; Matched:%var_2_922:  %var_2_922 = and i8 %var_2_921, 1
; %var_2_965 = and i8 %var_2_964, 1
; Matched:%var_2_923:  %var_2_923 = xor i8 %var_2_922, 1
; %var_2_966 = xor i8 %var_2_965, 1
; Matched:\<badref\>:  store i8 %var_2_923, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_966, i8* %var_2_21, align 1
; Matched:%var_2_924:  %var_2_924 = xor i32 %var_2_913, %var_2_912
; %var_2_967 = xor i32 %var_2_956, %var_2_955
; Matched:%var_2_925:  %var_2_925 = lshr i32 %var_2_924, 4
; %var_2_968 = lshr i32 %var_2_967, 4
; Matched:%var_2_926:  %var_2_926 = trunc i32 %var_2_925 to i8
; %var_2_969 = trunc i32 %var_2_968 to i8
; Matched:%var_2_927:  %var_2_927 = and i8 %var_2_926, 1
; %var_2_970 = and i8 %var_2_969, 1
; Matched:\<badref\>:  store i8 %var_2_927, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_970, i8* %var_2_27, align 1
; Matched:%var_2_928:  %var_2_928 = zext i1 %var_2_916 to i8
; %var_2_971 = zext i1 %var_2_959 to i8
; Matched:\<badref\>:  store i8 %var_2_928, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_971, i8* %var_2_30, align 1
; Matched:%var_2_929:  %var_2_929 = lshr i32 %var_2_913, 31
; %var_2_972 = lshr i32 %var_2_956, 31
; Matched:%var_2_930:  %var_2_930 = trunc i32 %var_2_929 to i8
; %var_2_973 = trunc i32 %var_2_972 to i8
; Matched:\<badref\>:  store i8 %var_2_930, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_973, i8* %var_2_33, align 1
; Matched:%var_2_931:  %var_2_931 = lshr i32 %var_2_912, 31
; %var_2_974 = lshr i32 %var_2_955, 31
; Matched:%var_2_932:  %var_2_932 = xor i32 %var_2_929, %var_2_931
; %var_2_975 = xor i32 %var_2_972, %var_2_974
; Matched:%var_2_933:  %var_2_933 = add nuw nsw i32 %var_2_932, %var_2_929
; %var_2_976 = add nuw nsw i32 %var_2_975, %var_2_972
; Matched:%var_2_934:  %var_2_934 = icmp eq i32 %var_2_933, 2
; %var_2_977 = icmp eq i32 %var_2_976, 2
; Matched:%var_2_935:  %var_2_935 = zext i1 %var_2_934 to i8
; %var_2_978 = zext i1 %var_2_977 to i8
; Matched:\<badref\>:  store i8 %var_2_935, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_978, i8* %var_2_39, align 1
; Matched:%var_2_936:  %var_2_936 = sext i32 %var_2_913 to i64
; %var_2_979 = sext i32 %var_2_956 to i64
; Matched:\<badref\>:  store i64 %var_2_936, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_979, i64* %RSI.i1794, align 8
; Matched:%var_2_937:  %var_2_937 = shl nsw i64 %var_2_936, 3
; %var_2_980 = shl nsw i64 %var_2_979, 3
; Matched:%var_2_938:  %var_2_938 = add i64 %var_2_908, %var_2_937
; %var_2_981 = add i64 %var_2_951, %var_2_980
; Matched:%var_2_2680:  %var_2_2680 = add i64 %var_2_2647, 18
; %var_2_982 = add i64 %var_2_948, 18
; Matched:\<badref\>:  store i64 %var_2_1870, i64* %PC, align 8
; store i64 %var_2_982, i64* %var_2_3, align 8
; Matched:%var_2_940:  %var_2_940 = inttoptr i64 %var_2_938 to i64*
; %var_2_983 = inttoptr i64 %var_2_981 to i64*
; Matched:%var_2_941:  %var_2_941 = load i64, i64* %var_2_940, align 8
; %var_2_984 = load i64, i64* %var_2_983, align 8
; Matched:\<badref\>:  store i64 %var_2_941, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_984, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_942:  %var_2_942 = add i64 %var_2_903, -72
; %var_2_985 = add i64 %var_2_946, -72
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_125, 23
; %var_2_986 = add i64 %var_2_948, 23
; Matched:\<badref\>:  store i64 %var_2_142, i64* %PC, align 8
; store i64 %var_2_986, i64* %var_2_3, align 8
; Matched:%var_2_944:  %var_2_944 = inttoptr i64 %var_2_942 to i64*
; %var_2_987 = inttoptr i64 %var_2_985 to i64*
; Matched:\<badref\>:  store i64 %var_2_941, i64* %var_2_944, align 8
; store i64 %var_2_984, i64* %var_2_987, align 8
; Matched:%var_2_2134:  %var_2_2134 = load i64, i64* %RBP, align 8
; %var_2_988 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_885:  %var_2_885 = add i64 %var_2_884, -24
; %var_2_989 = add i64 %var_2_988, -24
%var_2_990 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_395:  %var_2_395 = add i64 %var_2_394, 4
; %var_2_991 = add i64 %var_2_990, 4
; Matched:\<badref\>:  store i64 %var_2_2420, i64* %PC, align 8
; store i64 %var_2_991, i64* %var_2_3, align 8
; Matched:%var_2_383:  %var_2_383 = inttoptr i64 %var_2_380 to i64*
; %var_2_992 = inttoptr i64 %var_2_989 to i64*
; Matched:%var_2_889:  %var_2_889 = load i64, i64* %var_2_888, align 8
; %var_2_993 = load i64, i64* %var_2_992, align 8
; Matched:\<badref\>:  store i64 %var_2_908, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_993, i64* %RDX.i1791, align 8
; Matched:%var_2_951:  %var_2_951 = add i64 %var_2_945, -36
; %var_2_994 = add i64 %var_2_988, -36
%var_2_995 = add i64 %var_2_990, 8
store i64 %var_2_995, i64* %var_2_3, align 8
; Matched:%var_2_953:  %var_2_953 = inttoptr i64 %var_2_951 to i32*
; %var_2_996 = inttoptr i64 %var_2_994 to i32*
; Matched:%var_2_954:  %var_2_954 = load i32, i32* %var_2_953, align 4
; %var_2_997 = load i32, i32* %var_2_996, align 4
; Matched:%var_2_955:  %var_2_955 = sext i32 %var_2_954 to i64
; %var_2_998 = sext i32 %var_2_997 to i64
; Matched:\<badref\>:  store i64 %var_2_955, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_998, i64* %RSI.i1794, align 8
; Matched:%var_2_956:  %var_2_956 = shl nsw i64 %var_2_955, 3
; %var_2_999 = shl nsw i64 %var_2_998, 3
; Matched:%var_2_957:  %var_2_957 = add i64 %var_2_956, %var_2_950
; %var_2_1000 = add i64 %var_2_999, %var_2_993
; Matched:%var_2_728:  %var_2_728 = add i64 %var_2_723, 13
; %var_2_1001 = add i64 %var_2_990, 13
; Matched:\<badref\>:  store i64 %var_2_1719, i64* %PC, align 8
; store i64 %var_2_1001, i64* %var_2_3, align 8
; Matched:%var_2_959:  %var_2_959 = inttoptr i64 %var_2_957 to i64*
; %var_2_1002 = inttoptr i64 %var_2_1000 to i64*
; Matched:%var_2_960:  %var_2_960 = load i64, i64* %var_2_959, align 8
; %var_2_1003 = load i64, i64* %var_2_1002, align 8
; Matched:\<badref\>:  store i64 %var_2_960, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1003, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_961:  %var_2_961 = add i64 %var_2_945, -48
; %var_2_1004 = add i64 %var_2_988, -48
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_394, 18
; %var_2_1005 = add i64 %var_2_990, 18
; Matched:\<badref\>:  store i64 %var_2_405, i64* %PC, align 8
; store i64 %var_2_1005, i64* %var_2_3, align 8
; Matched:%var_2_963:  %var_2_963 = inttoptr i64 %var_2_961 to i64*
; %var_2_1006 = inttoptr i64 %var_2_1004 to i64*
; Matched:\<badref\>:  store i64 %var_2_960, i64* %var_2_963, align 8
; store i64 %var_2_1003, i64* %var_2_1006, align 8
; Matched:%var_2_379:  %var_2_379 = load i64, i64* %RBP, align 8
; %var_2_1007 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2135:  %var_2_2135 = add i64 %var_2_2134, -24
; %var_2_1008 = add i64 %var_2_1007, -24
%var_2_1009 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_415, 4
; %var_2_1010 = add i64 %var_2_1009, 4
; Matched:\<badref\>:  store i64 %var_2_2344, i64* %PC, align 8
; store i64 %var_2_1010, i64* %var_2_3, align 8
; Matched:%var_2_907:  %var_2_907 = inttoptr i64 %var_2_904 to i64*
; %var_2_1011 = inttoptr i64 %var_2_1008 to i64*
; Matched:%var_2_384:  %var_2_384 = load i64, i64* %var_2_383, align 8
; %var_2_1012 = load i64, i64* %var_2_1011, align 8
; Matched:\<badref\>:  store i64 %var_2_2180, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1012, i64* %RDX.i1791, align 8
; Matched:%var_2_970:  %var_2_970 = add i64 %var_2_964, -36
; %var_2_1013 = add i64 %var_2_1007, -36
; Matched:%var_2_809:  %var_2_809 = add i64 %var_2_808, 7
; %var_2_1014 = add i64 %var_2_1009, 7
; Matched:\<badref\>:  store i64 %var_2_1404, i64* %PC, align 8
; store i64 %var_2_1014, i64* %var_2_3, align 8
; Matched:%var_2_972:  %var_2_972 = inttoptr i64 %var_2_970 to i32*
; %var_2_1015 = inttoptr i64 %var_2_1013 to i32*
; Matched:%var_2_973:  %var_2_973 = load i32, i32* %var_2_972, align 4
; %var_2_1016 = load i32, i32* %var_2_1015, align 4
; Matched:%var_2_974:  %var_2_974 = add i32 %var_2_973, 1
; %var_2_1017 = add i32 %var_2_1016, 1
; Matched:%var_2_975:  %var_2_975 = zext i32 %var_2_974 to i64
; %var_2_1018 = zext i32 %var_2_1017 to i64
; Matched:\<badref\>:  store i64 %var_2_975, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1018, i64* %RCX.i1272, align 8
; Matched:%var_2_976:  %var_2_976 = icmp eq i32 %var_2_973, -1
; %var_2_1019 = icmp eq i32 %var_2_1016, -1
; Matched:%var_2_977:  %var_2_977 = icmp eq i32 %var_2_974, 0
; %var_2_1020 = icmp eq i32 %var_2_1017, 0
; Matched:%var_2_978:  %var_2_978 = or i1 %var_2_976, %var_2_977
; %var_2_1021 = or i1 %var_2_1019, %var_2_1020
; Matched:%var_2_979:  %var_2_979 = zext i1 %var_2_978 to i8
; %var_2_1022 = zext i1 %var_2_1021 to i8
; Matched:\<badref\>:  store i8 %var_2_979, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1022, i8* %var_2_14, align 1
; Matched:%var_2_980:  %var_2_980 = and i32 %var_2_974, 255
; %var_2_1023 = and i32 %var_2_1017, 255
; Matched:%var_2_981:  %var_2_981 = tail call i32 @llvm.ctpop.i32(i32 %var_2_980) #14
; %var_2_1024 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1023)
; Matched:%var_2_982:  %var_2_982 = trunc i32 %var_2_981 to i8
; %var_2_1025 = trunc i32 %var_2_1024 to i8
; Matched:%var_2_983:  %var_2_983 = and i8 %var_2_982, 1
; %var_2_1026 = and i8 %var_2_1025, 1
; Matched:%var_2_984:  %var_2_984 = xor i8 %var_2_983, 1
; %var_2_1027 = xor i8 %var_2_1026, 1
; Matched:\<badref\>:  store i8 %var_2_984, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1027, i8* %var_2_21, align 1
; Matched:%var_2_985:  %var_2_985 = xor i32 %var_2_974, %var_2_973
; %var_2_1028 = xor i32 %var_2_1017, %var_2_1016
; Matched:%var_2_986:  %var_2_986 = lshr i32 %var_2_985, 4
; %var_2_1029 = lshr i32 %var_2_1028, 4
; Matched:%var_2_987:  %var_2_987 = trunc i32 %var_2_986 to i8
; %var_2_1030 = trunc i32 %var_2_1029 to i8
; Matched:%var_2_988:  %var_2_988 = and i8 %var_2_987, 1
; %var_2_1031 = and i8 %var_2_1030, 1
; Matched:\<badref\>:  store i8 %var_2_988, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1031, i8* %var_2_27, align 1
; Matched:%var_2_989:  %var_2_989 = zext i1 %var_2_977 to i8
; %var_2_1032 = zext i1 %var_2_1020 to i8
; Matched:\<badref\>:  store i8 %var_2_989, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1032, i8* %var_2_30, align 1
; Matched:%var_2_990:  %var_2_990 = lshr i32 %var_2_974, 31
; %var_2_1033 = lshr i32 %var_2_1017, 31
; Matched:%var_2_991:  %var_2_991 = trunc i32 %var_2_990 to i8
; %var_2_1034 = trunc i32 %var_2_1033 to i8
; Matched:\<badref\>:  store i8 %var_2_991, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1034, i8* %var_2_33, align 1
; Matched:%var_2_992:  %var_2_992 = lshr i32 %var_2_973, 31
; %var_2_1035 = lshr i32 %var_2_1016, 31
; Matched:%var_2_993:  %var_2_993 = xor i32 %var_2_990, %var_2_992
; %var_2_1036 = xor i32 %var_2_1033, %var_2_1035
; Matched:%var_2_994:  %var_2_994 = add nuw nsw i32 %var_2_993, %var_2_990
; %var_2_1037 = add nuw nsw i32 %var_2_1036, %var_2_1033
; Matched:%var_2_995:  %var_2_995 = icmp eq i32 %var_2_994, 2
; %var_2_1038 = icmp eq i32 %var_2_1037, 2
; Matched:%var_2_996:  %var_2_996 = zext i1 %var_2_995 to i8
; %var_2_1039 = zext i1 %var_2_1038 to i8
; Matched:\<badref\>:  store i8 %var_2_996, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1039, i8* %var_2_39, align 1
; Matched:%var_2_997:  %var_2_997 = sext i32 %var_2_974 to i64
; %var_2_1040 = sext i32 %var_2_1017 to i64
; Matched:\<badref\>:  store i64 %var_2_997, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1040, i64* %RSI.i1794, align 8
; Matched:%var_2_998:  %var_2_998 = shl nsw i64 %var_2_997, 3
; %var_2_1041 = shl nsw i64 %var_2_1040, 3
; Matched:%var_2_999:  %var_2_999 = add i64 %var_2_969, %var_2_998
; %var_2_1042 = add i64 %var_2_1012, %var_2_1041
; Matched:%var_2_1855:  %var_2_1855 = add i64 %var_2_1844, 18
; %var_2_1043 = add i64 %var_2_1009, 18
; Matched:\<badref\>:  store i64 %var_2_1855, i64* %PC, align 8
; store i64 %var_2_1043, i64* %var_2_3, align 8
; Matched:%var_2_1001:  %var_2_1001 = inttoptr i64 %var_2_999 to i64*
; %var_2_1044 = inttoptr i64 %var_2_1042 to i64*
; Matched:%var_2_1002:  %var_2_1002 = load i64, i64* %var_2_1001, align 8
; %var_2_1045 = load i64, i64* %var_2_1044, align 8
; Matched:\<badref\>:  store i64 %var_2_1002, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1045, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1003:  %var_2_1003 = add i64 %var_2_964, -56
; %var_2_1046 = add i64 %var_2_1007, -56
; Matched:%var_2_3083:  %var_2_3083 = add i64 %var_2_3066, 23
; %var_2_1047 = add i64 %var_2_1009, 23
; Matched:\<badref\>:  store i64 %var_2_3083, i64* %PC, align 8
; store i64 %var_2_1047, i64* %var_2_3, align 8
; Matched:%var_2_1005:  %var_2_1005 = inttoptr i64 %var_2_1003 to i64*
; %var_2_1048 = inttoptr i64 %var_2_1046 to i64*
; Matched:\<badref\>:  store i64 %var_2_1002, i64* %var_2_1005, align 8
; store i64 %var_2_1045, i64* %var_2_1048, align 8
%var_2_1049 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1931:  %var_2_1931 = add i64 %var_2_1930, -48
; %var_2_1050 = add i64 %var_2_1049, -48
%var_2_1051 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_287:  %var_2_287 = add i64 %var_2_286, 5
; %var_2_1052 = add i64 %var_2_1051, 5
; Matched:\<badref\>:  store i64 %var_2_699, i64* %PC, align 8
; store i64 %var_2_1052, i64* %var_2_3, align 8
; Matched:%var_2_1934:  %var_2_1934 = inttoptr i64 %var_2_1931 to i64*
; %var_2_1053 = inttoptr i64 %var_2_1050 to i64*
; Matched:%var_2_1011:  %var_2_1011 = load i64, i64* %var_2_1010, align 8
; %var_2_1054 = load i64, i64* %var_2_1053, align 8
; Matched:\<badref\>:  store i64 %var_2_1011, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1054, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_1055 = load <2 x i32>, <2 x i32>* %var_2_814, align 1
%var_2_1056 = load <2 x i32>, <2 x i32>* %var_2_815, align 1
%var_2_1057 = extractelement <2 x i32> %var_2_1055, i32 0
; Matched:\<badref\>:  store i32 %var_2_2224, i32* %var_2_814, align 1, !tbaa !1287
; store i32 %var_2_1057, i32* %var_2_816, align 1
%var_2_1058 = extractelement <2 x i32> %var_2_1055, i32 1
; Matched:\<badref\>:  store i32 %var_2_1015, i32* %var_2_816, align 1, !tbaa !1287
; store i32 %var_2_1058, i32* %var_2_818, align 1
%var_2_1059 = extractelement <2 x i32> %var_2_1056, i32 0
; Matched:\<badref\>:  store i32 %var_2_1016, i32* %var_2_818, align 1, !tbaa !1287
; store i32 %var_2_1059, i32* %var_2_820, align 1
%var_2_1060 = extractelement <2 x i32> %var_2_1056, i32 1
; Matched:\<badref\>:  store i32 %var_2_2227, i32* %var_2_820, align 1, !tbaa !1287
; store i32 %var_2_1060, i32* %var_2_822, align 1
; Matched:%var_2_1018:  %var_2_1018 = add i64 %var_2_1006, -72
; %var_2_1061 = add i64 %var_2_1049, -72
; Matched:%var_2_367:  %var_2_367 = add i64 %var_2_362, 13
; %var_2_1062 = add i64 %var_2_1051, 13
; Matched:\<badref\>:  store i64 %var_2_367, i64* %PC, align 8
; store i64 %var_2_1062, i64* %var_2_3, align 8
; Matched:%var_2_1020:  %var_2_1020 = load double, double* %var_2_821, align 1
; %var_2_1063 = load double, double* %var_2_823, align 1
; Matched:%var_2_1021:  %var_2_1021 = inttoptr i64 %var_2_1018 to double*
; %var_2_1064 = inttoptr i64 %var_2_1061 to double*
; Matched:%var_2_1022:  %var_2_1022 = load double, double* %var_2_1021, align 8
; %var_2_1065 = load double, double* %var_2_1064, align 8
; Matched:%var_2_1023:  %var_2_1023 = fmul double %var_2_1020, %var_2_1022
; %var_2_1066 = fmul double %var_2_1063, %var_2_1065
; Matched:\<badref\>:  store double %var_2_1023, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1066, double* %var_2_823, align 1
; Matched:%var_2_1024:  %var_2_1024 = add i64 %var_2_1006, -56
; %var_2_1067 = add i64 %var_2_1049, -56
; Matched:%var_2_1870:  %var_2_1870 = add i64 %var_2_1859, 18
; %var_2_1068 = add i64 %var_2_1051, 18
; Matched:\<badref\>:  store i64 %var_2_2680, i64* %PC, align 8
; store i64 %var_2_1068, i64* %var_2_3, align 8
; Matched:%var_2_1026:  %var_2_1026 = inttoptr i64 %var_2_1024 to double*
; %var_2_1069 = inttoptr i64 %var_2_1067 to double*
; Matched:%var_2_1027:  %var_2_1027 = load double, double* %var_2_1026, align 8
; %var_2_1070 = load double, double* %var_2_1069, align 8
; Matched:%var_2_1028:  %var_2_1028 = fmul double %var_2_1023, %var_2_1027
; %var_2_1071 = fmul double %var_2_1066, %var_2_1070
; Matched:\<badref\>:  store double %var_2_1028, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1071, double* %var_2_823, align 1
; Matched:%var_2_1029:  %var_2_1029 = bitcast i64 %var_2_1011 to double
; %var_2_1072 = bitcast i64 %var_2_1054 to double
; Matched:%var_2_1030:  %var_2_1030 = fsub double %var_2_1029, %var_2_1028
; %var_2_1073 = fsub double %var_2_1072, %var_2_1071
; Matched:%var_2_1031:  %var_2_1031 = add i64 %var_2_1006, -80
; %var_2_1074 = add i64 %var_2_1049, -80
; Matched:%var_2_1032:  %var_2_1032 = add i64 %var_2_1008, 27
; %var_2_1075 = add i64 %var_2_1051, 27
; Matched:\<badref\>:  store i64 %var_2_2242, i64* %PC, align 8
; store i64 %var_2_1075, i64* %var_2_3, align 8
; Matched:%var_2_1033:  %var_2_1033 = inttoptr i64 %var_2_1031 to double*
; %var_2_1076 = inttoptr i64 %var_2_1074 to double*
; Matched:\<badref\>:  store double %var_2_1030, double* %var_2_1033, align 8
; store double %var_2_1073, double* %var_2_1076, align 8
%var_2_1077 = load i64, i64* %var_2_3, align 8
%var_2_1078 = load <2 x i32>, <2 x i32>* %var_2_814, align 1
%var_2_1079 = load <2 x i32>, <2 x i32>* %var_2_815, align 1
%var_2_1080 = extractelement <2 x i32> %var_2_1078, i32 0
; Matched:\<badref\>:  store i32 %var_2_1037, i32* %var_2_822, align 1, !tbaa !1287
; store i32 %var_2_1080, i32* %var_2_824, align 1
%var_2_1081 = extractelement <2 x i32> %var_2_1078, i32 1
; Matched:\<badref\>:  store i32 %var_2_1038, i32* %var_2_824, align 1, !tbaa !1287
; store i32 %var_2_1081, i32* %var_2_826, align 1
%var_2_1082 = extractelement <2 x i32> %var_2_1079, i32 0
; Matched:\<badref\>:  store i32 %var_2_1039, i32* %var_2_825, align 1, !tbaa !1287
; store i32 %var_2_1082, i32* %var_2_827, align 1
%var_2_1083 = extractelement <2 x i32> %var_2_1079, i32 1
; Matched:\<badref\>:  store i32 %var_2_1040, i32* %var_2_827, align 1, !tbaa !1287
; store i32 %var_2_1083, i32* %var_2_829, align 1
; Matched:%var_2_1041:  %var_2_1041 = load i64, i64* %RBP, align 8
; %var_2_1084 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1042:  %var_2_1042 = add i64 %var_2_1041, -72
; %var_2_1085 = add i64 %var_2_1084, -72
%var_2_1086 = add i64 %var_2_1077, 8
store i64 %var_2_1086, i64* %var_2_3, align 8
; Matched:%var_2_1044:  %var_2_1044 = load double, double* %var_2_677, align 1
; %var_2_1087 = load double, double* %var_2_678, align 1
; Matched:%var_2_1045:  %var_2_1045 = inttoptr i64 %var_2_1042 to double*
; %var_2_1088 = inttoptr i64 %var_2_1085 to double*
; Matched:%var_2_1046:  %var_2_1046 = load double, double* %var_2_1045, align 8
; %var_2_1089 = load double, double* %var_2_1088, align 8
; Matched:%var_2_1047:  %var_2_1047 = fmul double %var_2_1044, %var_2_1046
; %var_2_1090 = fmul double %var_2_1087, %var_2_1089
; Matched:\<badref\>:  store double %var_2_1047, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1090, double* %var_2_678, align 1
; Matched:%var_2_1048:  %var_2_1048 = add i64 %var_2_1041, -48
; %var_2_1091 = add i64 %var_2_1084, -48
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_394, 13
; %var_2_1092 = add i64 %var_2_1077, 13
; Matched:\<badref\>:  store i64 %var_2_728, i64* %PC, align 8
; store i64 %var_2_1092, i64* %var_2_3, align 8
; Matched:%var_2_1050:  %var_2_1050 = inttoptr i64 %var_2_1048 to double*
; %var_2_1093 = inttoptr i64 %var_2_1091 to double*
; Matched:%var_2_1051:  %var_2_1051 = load double, double* %var_2_1050, align 8
; %var_2_1094 = load double, double* %var_2_1093, align 8
; Matched:%var_2_1052:  %var_2_1052 = fmul double %var_2_1047, %var_2_1051
; %var_2_1095 = fmul double %var_2_1090, %var_2_1094
; Matched:\<badref\>:  store double %var_2_1052, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1095, double* %var_2_678, align 1
; Matched:%var_2_1053:  %var_2_1053 = add i64 %var_2_1041, -56
; %var_2_1096 = add i64 %var_2_1084, -56
; Matched:%var_2_1642:  %var_2_1642 = add i64 %var_2_1627, 18
; %var_2_1097 = add i64 %var_2_1077, 18
; Matched:\<badref\>:  store i64 %var_2_1642, i64* %PC, align 8
; store i64 %var_2_1097, i64* %var_2_3, align 8
; Matched:%var_2_1055:  %var_2_1055 = inttoptr i64 %var_2_1053 to double*
; %var_2_1098 = inttoptr i64 %var_2_1096 to double*
; Matched:%var_2_1056:  %var_2_1056 = load double, double* %var_2_1055, align 8
; %var_2_1099 = load double, double* %var_2_1098, align 8
; Matched:%var_2_1057:  %var_2_1057 = fsub double %var_2_1052, %var_2_1056
; %var_2_1100 = fsub double %var_2_1095, %var_2_1099
; Matched:\<badref\>:  store double %var_2_1057, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1100, double* %var_2_678, align 1
; Matched:%var_2_1058:  %var_2_1058 = add i64 %var_2_1041, -88
; %var_2_1101 = add i64 %var_2_1084, -88
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_146, 23
; %var_2_1102 = add i64 %var_2_1077, 23
; Matched:\<badref\>:  store i64 %var_2_163, i64* %PC, align 8
; store i64 %var_2_1102, i64* %var_2_3, align 8
; Matched:%var_2_1060:  %var_2_1060 = inttoptr i64 %var_2_1058 to double*
; %var_2_1103 = inttoptr i64 %var_2_1101 to double*
; Matched:\<badref\>:  store double %var_2_1057, double* %var_2_1060, align 8
; store double %var_2_1100, double* %var_2_1103, align 8
%var_2_1104 = load i64, i64* %RBP.i, align 8
%var_2_1105 = add i64 %var_2_1104, -16
%var_2_1106 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2724:  %var_2_2724 = add i64 %var_2_2723, 4
; %var_2_1107 = add i64 %var_2_1106, 4
; Matched:\<badref\>:  store i64 %var_2_168, i64* %PC, align 8
; store i64 %var_2_1107, i64* %var_2_3, align 8
%var_2_1108 = inttoptr i64 %var_2_1105 to i64*
%var_2_1109 = load i64, i64* %var_2_1108, align 8
; Matched:\<badref\>:  store i64 %var_2_2304, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1109, i64* %RDX.i1791, align 8
%var_2_1110 = add i64 %var_2_1104, -28
%var_2_1111 = add i64 %var_2_1106, 8
store i64 %var_2_1111, i64* %var_2_3, align 8
%var_2_1112 = inttoptr i64 %var_2_1110 to i32*
%var_2_1113 = load i32, i32* %var_2_1112, align 4
%var_2_1114 = sext i32 %var_2_1113 to i64
; Matched:\<badref\>:  store i64 %var_2_1071, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1114, i64* %RSI.i1794, align 8
; Matched:%var_2_1072:  %var_2_1072 = shl nsw i64 %var_2_1071, 3
; %var_2_1115 = shl nsw i64 %var_2_1114, 3
; Matched:%var_2_1073:  %var_2_1073 = add i64 %var_2_1072, %var_2_1066
; %var_2_1116 = add i64 %var_2_1115, %var_2_1109
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_581, 13
; %var_2_1117 = add i64 %var_2_1106, 13
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8
; store i64 %var_2_1117, i64* %var_2_3, align 8
; Matched:%var_2_1075:  %var_2_1075 = inttoptr i64 %var_2_1073 to i64*
; %var_2_1118 = inttoptr i64 %var_2_1116 to i64*
; Matched:%var_2_1206:  %var_2_1206 = load i64, i64* %var_2_1205, align 8
; %var_2_1119 = load i64, i64* %var_2_1118, align 8
; Matched:\<badref\>:  store i64 %var_2_1076, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1119, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_592:  %var_2_592 = add i64 %var_2_581, 17
; %var_2_1120 = add i64 %var_2_1106, 17
; Matched:\<badref\>:  store i64 %var_2_611, i64* %PC, align 8
; store i64 %var_2_1120, i64* %var_2_3, align 8
%var_2_1121 = load i64, i64* %var_2_1108, align 8
; Matched:\<badref\>:  store i64 %var_2_1956, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1121, i64* %RDX.i1791, align 8
; Matched:%var_2_1667:  %var_2_1667 = add i64 %var_2_1652, 20
; %var_2_1122 = add i64 %var_2_1106, 20
; Matched:\<badref\>:  store i64 %var_2_2035, i64* %PC, align 8
; store i64 %var_2_1122, i64* %var_2_3, align 8
; Matched:%var_2_1080:  %var_2_1080 = load i32, i32* %var_2_1069, align 4
; %var_2_1123 = load i32, i32* %var_2_1112, align 4
; Matched:%var_2_1211:  %var_2_1211 = add i32 %var_2_1210, 2
; %var_2_1124 = add i32 %var_2_1123, 2
; Matched:%var_2_1212:  %var_2_1212 = zext i32 %var_2_1211 to i64
; %var_2_1125 = zext i32 %var_2_1124 to i64
; Matched:\<badref\>:  store i64 %var_2_1082, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1125, i64* %RCX.i1272, align 8
; Matched:%var_2_1083:  %var_2_1083 = icmp ugt i32 %var_2_1080, -3
; %var_2_1126 = icmp ugt i32 %var_2_1123, -3
; Matched:%var_2_1214:  %var_2_1214 = zext i1 %var_2_1213 to i8
; %var_2_1127 = zext i1 %var_2_1126 to i8
; Matched:\<badref\>:  store i8 %var_2_1906, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1127, i8* %var_2_14, align 1
; Matched:%var_2_1215:  %var_2_1215 = and i32 %var_2_1211, 255
; %var_2_1128 = and i32 %var_2_1124, 255
; Matched:%var_2_1086:  %var_2_1086 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1085) #14
; %var_2_1129 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1128)
; Matched:%var_2_1217:  %var_2_1217 = trunc i32 %var_2_1216 to i8
; %var_2_1130 = trunc i32 %var_2_1129 to i8
; Matched:%var_2_1218:  %var_2_1218 = and i8 %var_2_1217, 1
; %var_2_1131 = and i8 %var_2_1130, 1
; Matched:%var_2_1089:  %var_2_1089 = xor i8 %var_2_1088, 1
; %var_2_1132 = xor i8 %var_2_1131, 1
; Matched:\<badref\>:  store i8 %var_2_1089, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1132, i8* %var_2_21, align 1
; Matched:%var_2_1220:  %var_2_1220 = xor i32 %var_2_1211, %var_2_1210
; %var_2_1133 = xor i32 %var_2_1124, %var_2_1123
; Matched:%var_2_1913:  %var_2_1913 = lshr i32 %var_2_1912, 4
; %var_2_1134 = lshr i32 %var_2_1133, 4
; Matched:%var_2_1222:  %var_2_1222 = trunc i32 %var_2_1221 to i8
; %var_2_1135 = trunc i32 %var_2_1134 to i8
; Matched:%var_2_1093:  %var_2_1093 = and i8 %var_2_1092, 1
; %var_2_1136 = and i8 %var_2_1135, 1
; Matched:\<badref\>:  store i8 %var_2_1223, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1136, i8* %var_2_27, align 1
; Matched:%var_2_1224:  %var_2_1224 = icmp eq i32 %var_2_1211, 0
; %var_2_1137 = icmp eq i32 %var_2_1124, 0
; Matched:%var_2_1095:  %var_2_1095 = zext i1 %var_2_1094 to i8
; %var_2_1138 = zext i1 %var_2_1137 to i8
; Matched:\<badref\>:  store i8 %var_2_1095, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1138, i8* %var_2_30, align 1
; Matched:%var_2_1226:  %var_2_1226 = lshr i32 %var_2_1211, 31
; %var_2_1139 = lshr i32 %var_2_1124, 31
; Matched:%var_2_1919:  %var_2_1919 = trunc i32 %var_2_1918 to i8
; %var_2_1140 = trunc i32 %var_2_1139 to i8
; Matched:\<badref\>:  store i8 %var_2_1227, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1140, i8* %var_2_33, align 1
; Matched:%var_2_1098:  %var_2_1098 = lshr i32 %var_2_1080, 31
; %var_2_1141 = lshr i32 %var_2_1123, 31
; Matched:%var_2_1229:  %var_2_1229 = xor i32 %var_2_1226, %var_2_1228
; %var_2_1142 = xor i32 %var_2_1139, %var_2_1141
; Matched:%var_2_1230:  %var_2_1230 = add nuw nsw i32 %var_2_1229, %var_2_1226
; %var_2_1143 = add nuw nsw i32 %var_2_1142, %var_2_1139
; Matched:%var_2_1101:  %var_2_1101 = icmp eq i32 %var_2_1100, 2
; %var_2_1144 = icmp eq i32 %var_2_1143, 2
; Matched:%var_2_1102:  %var_2_1102 = zext i1 %var_2_1101 to i8
; %var_2_1145 = zext i1 %var_2_1144 to i8
; Matched:\<badref\>:  store i8 %var_2_1232, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1145, i8* %var_2_39, align 1
; Matched:%var_2_1925:  %var_2_1925 = sext i32 %var_2_1903 to i64
; %var_2_1146 = sext i32 %var_2_1124 to i64
; Matched:\<badref\>:  store i64 %var_2_1233, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1146, i64* %RSI.i1794, align 8
; Matched:%var_2_1104:  %var_2_1104 = shl nsw i64 %var_2_1103, 3
; %var_2_1147 = shl nsw i64 %var_2_1146, 3
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_1078, %var_2_1104
; %var_2_1148 = add i64 %var_2_1121, %var_2_1147
; Matched:%var_2_1236:  %var_2_1236 = add i64 %var_2_1193, 31
; %var_2_1149 = add i64 %var_2_1106, 31
; Matched:\<badref\>:  store i64 %var_2_1696, i64* %PC, align 8
; store i64 %var_2_1149, i64* %var_2_3, align 8
; Matched:%var_2_1107:  %var_2_1107 = bitcast i64 %var_2_1076 to double
; %var_2_1150 = bitcast i64 %var_2_1119 to double
; Matched:%var_2_1108:  %var_2_1108 = inttoptr i64 %var_2_1105 to double*
; %var_2_1151 = inttoptr i64 %var_2_1148 to double*
; Matched:%var_2_1109:  %var_2_1109 = load double, double* %var_2_1108, align 8
; %var_2_1152 = load double, double* %var_2_1151, align 8
; Matched:%var_2_1110:  %var_2_1110 = fadd double %var_2_1107, %var_2_1109
; %var_2_1153 = fadd double %var_2_1150, %var_2_1152
; Matched:\<badref\>:  store double %var_2_1110, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1153, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1111:  %var_2_1111 = add i64 %var_2_1061, -96
; %var_2_1154 = add i64 %var_2_1104, -96
; Matched:%var_2_1464:  %var_2_1464 = add i64 %var_2_1399, 36
; %var_2_1155 = add i64 %var_2_1106, 36
; Matched:\<badref\>:  store i64 %var_2_1464, i64* %PC, align 8
; store i64 %var_2_1155, i64* %var_2_3, align 8
; Matched:%var_2_1113:  %var_2_1113 = inttoptr i64 %var_2_1111 to double*
; %var_2_1156 = inttoptr i64 %var_2_1154 to double*
; Matched:\<badref\>:  store double %var_2_1110, double* %var_2_1113, align 8
; store double %var_2_1153, double* %var_2_1156, align 8
%var_2_1157 = load i64, i64* %RBP.i, align 8
%var_2_1158 = add i64 %var_2_1157, -16
%var_2_1159 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2137:  %var_2_2137 = add i64 %var_2_2136, 4
; %var_2_1160 = add i64 %var_2_1159, 4
; Matched:\<badref\>:  store i64 %var_2_382, i64* %PC, align 8
; store i64 %var_2_1160, i64* %var_2_3, align 8
%var_2_1161 = inttoptr i64 %var_2_1158 to i64*
%var_2_1162 = load i64, i64* %var_2_1161, align 8
; Matched:\<badref\>:  store i64 %var_2_72, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1162, i64* %RDX.i1791, align 8
%var_2_1163 = add i64 %var_2_1157, -28
; Matched:%var_2_1251:  %var_2_1251 = add i64 %var_2_1246, 7
; %var_2_1164 = add i64 %var_2_1159, 7
; Matched:\<badref\>:  store i64 %var_2_2141, i64* %PC, align 8
; store i64 %var_2_1164, i64* %var_2_3, align 8
%var_2_1165 = inttoptr i64 %var_2_1163 to i32*
%var_2_1166 = load i32, i32* %var_2_1165, align 4
%var_2_1167 = add i32 %var_2_1166, 1
; Matched:%var_2_1671:  %var_2_1671 = zext i32 %var_2_1670 to i64
; %var_2_1168 = zext i32 %var_2_1167 to i64
; Matched:\<badref\>:  store i64 %var_2_1671, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1168, i64* %RCX.i1272, align 8
; Matched:%var_2_1256:  %var_2_1256 = icmp eq i32 %var_2_1253, -1
; %var_2_1169 = icmp eq i32 %var_2_1166, -1
; Matched:%var_2_1127:  %var_2_1127 = icmp eq i32 %var_2_1124, 0
; %var_2_1170 = icmp eq i32 %var_2_1167, 0
; Matched:%var_2_1128:  %var_2_1128 = or i1 %var_2_1126, %var_2_1127
; %var_2_1171 = or i1 %var_2_1169, %var_2_1170
; Matched:%var_2_1259:  %var_2_1259 = zext i1 %var_2_1258 to i8
; %var_2_1172 = zext i1 %var_2_1171 to i8
; Matched:\<badref\>:  store i8 %var_2_1259, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1172, i8* %var_2_14, align 1
; Matched:%var_2_1130:  %var_2_1130 = and i32 %var_2_1124, 255
; %var_2_1173 = and i32 %var_2_1167, 255
; Matched:%var_2_1677:  %var_2_1677 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1676) #14
; %var_2_1174 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1173)
; Matched:%var_2_1678:  %var_2_1678 = trunc i32 %var_2_1677 to i8
; %var_2_1175 = trunc i32 %var_2_1174 to i8
; Matched:%var_2_1263:  %var_2_1263 = and i8 %var_2_1262, 1
; %var_2_1176 = and i8 %var_2_1175, 1
; Matched:%var_2_1134:  %var_2_1134 = xor i8 %var_2_1133, 1
; %var_2_1177 = xor i8 %var_2_1176, 1
; Matched:\<badref\>:  store i8 %var_2_1134, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1177, i8* %var_2_21, align 1
; Matched:%var_2_1265:  %var_2_1265 = xor i32 %var_2_1254, %var_2_1253
; %var_2_1178 = xor i32 %var_2_1167, %var_2_1166
; Matched:%var_2_1136:  %var_2_1136 = lshr i32 %var_2_1135, 4
; %var_2_1179 = lshr i32 %var_2_1178, 4
; Matched:%var_2_1137:  %var_2_1137 = trunc i32 %var_2_1136 to i8
; %var_2_1180 = trunc i32 %var_2_1179 to i8
; Matched:%var_2_1684:  %var_2_1684 = and i8 %var_2_1683, 1
; %var_2_1181 = and i8 %var_2_1180, 1
; Matched:\<badref\>:  store i8 %var_2_1684, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1181, i8* %var_2_27, align 1
; Matched:%var_2_1269:  %var_2_1269 = zext i1 %var_2_1257 to i8
; %var_2_1182 = zext i1 %var_2_1170 to i8
; Matched:\<badref\>:  store i8 %var_2_1139, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1182, i8* %var_2_30, align 1
; Matched:%var_2_1140:  %var_2_1140 = lshr i32 %var_2_1124, 31
; %var_2_1183 = lshr i32 %var_2_1167, 31
; Matched:%var_2_1687:  %var_2_1687 = trunc i32 %var_2_1686 to i8
; %var_2_1184 = trunc i32 %var_2_1183 to i8
; Matched:\<badref\>:  store i8 %var_2_1141, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1184, i8* %var_2_33, align 1
; Matched:%var_2_1688:  %var_2_1688 = lshr i32 %var_2_1669, 31
; %var_2_1185 = lshr i32 %var_2_1166, 31
; Matched:%var_2_1689:  %var_2_1689 = xor i32 %var_2_1686, %var_2_1688
; %var_2_1186 = xor i32 %var_2_1183, %var_2_1185
; Matched:%var_2_1690:  %var_2_1690 = add nuw nsw i32 %var_2_1689, %var_2_1686
; %var_2_1187 = add nuw nsw i32 %var_2_1186, %var_2_1183
; Matched:%var_2_1275:  %var_2_1275 = icmp eq i32 %var_2_1274, 2
; %var_2_1188 = icmp eq i32 %var_2_1187, 2
; Matched:%var_2_1146:  %var_2_1146 = zext i1 %var_2_1145 to i8
; %var_2_1189 = zext i1 %var_2_1188 to i8
; Matched:\<badref\>:  store i8 %var_2_1146, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1189, i8* %var_2_39, align 1
%var_2_1190 = sext i32 %var_2_1167 to i64
; Matched:\<badref\>:  store i64 %var_2_1147, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1190, i64* %RSI.i1794, align 8
; Matched:%var_2_1148:  %var_2_1148 = shl nsw i64 %var_2_1147, 3
; %var_2_1191 = shl nsw i64 %var_2_1190, 3
; Matched:%var_2_1279:  %var_2_1279 = add i64 %var_2_1249, %var_2_1278
; %var_2_1192 = add i64 %var_2_1162, %var_2_1191
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_230, 18
; %var_2_1193 = add i64 %var_2_1159, 18
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_1193, i64* %var_2_3, align 8
; Matched:%var_2_1151:  %var_2_1151 = inttoptr i64 %var_2_1149 to i64*
; %var_2_1194 = inttoptr i64 %var_2_1192 to i64*
; Matched:%var_2_1152:  %var_2_1152 = load i64, i64* %var_2_1151, align 8
; %var_2_1195 = load i64, i64* %var_2_1194, align 8
; Matched:\<badref\>:  store i64 %var_2_1152, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1195, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2993:  %var_2_2993 = add i64 %var_2_2983, 22
; %var_2_1196 = add i64 %var_2_1159, 22
; Matched:\<badref\>:  store i64 %var_2_1283, i64* %PC, align 8
; store i64 %var_2_1196, i64* %var_2_3, align 8
%var_2_1197 = load i64, i64* %var_2_1161, align 8
; Matched:\<badref\>:  store i64 %var_2_87, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1197, i64* %RDX.i1791, align 8
; Matched:%var_2_1513:  %var_2_1513 = add i64 %var_2_1475, 25
; %var_2_1198 = add i64 %var_2_1159, 25
; Matched:\<badref\>:  store i64 %var_2_1513, i64* %PC, align 8
; store i64 %var_2_1198, i64* %var_2_3, align 8
; Matched:%var_2_1156:  %var_2_1156 = load i32, i32* %var_2_1122, align 4
; %var_2_1199 = load i32, i32* %var_2_1165, align 4
; Matched:%var_2_1157:  %var_2_1157 = add i32 %var_2_1156, 3
; %var_2_1200 = add i32 %var_2_1199, 3
; Matched:%var_2_1158:  %var_2_1158 = zext i32 %var_2_1157 to i64
; %var_2_1201 = zext i32 %var_2_1200 to i64
; Matched:\<badref\>:  store i64 %var_2_1962, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1201, i64* %RCX.i1272, align 8
; Matched:%var_2_1963:  %var_2_1963 = icmp ugt i32 %var_2_1960, -4
; %var_2_1202 = icmp ugt i32 %var_2_1199, -4
; Matched:%var_2_1964:  %var_2_1964 = zext i1 %var_2_1963 to i8
; %var_2_1203 = zext i1 %var_2_1202 to i8
; Matched:\<badref\>:  store i8 %var_2_1160, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1203, i8* %var_2_14, align 1
; Matched:%var_2_1965:  %var_2_1965 = and i32 %var_2_1961, 255
; %var_2_1204 = and i32 %var_2_1200, 255
; Matched:%var_2_1162:  %var_2_1162 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1161) #14
; %var_2_1205 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1204)
; Matched:%var_2_1967:  %var_2_1967 = trunc i32 %var_2_1966 to i8
; %var_2_1206 = trunc i32 %var_2_1205 to i8
; Matched:%var_2_1164:  %var_2_1164 = and i8 %var_2_1163, 1
; %var_2_1207 = and i8 %var_2_1206, 1
; Matched:%var_2_1295:  %var_2_1295 = xor i8 %var_2_1294, 1
; %var_2_1208 = xor i8 %var_2_1207, 1
; Matched:\<badref\>:  store i8 %var_2_1295, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1208, i8* %var_2_21, align 1
; Matched:%var_2_1970:  %var_2_1970 = xor i32 %var_2_1961, %var_2_1960
; %var_2_1209 = xor i32 %var_2_1200, %var_2_1199
; Matched:%var_2_1167:  %var_2_1167 = lshr i32 %var_2_1166, 4
; %var_2_1210 = lshr i32 %var_2_1209, 4
; Matched:%var_2_1168:  %var_2_1168 = trunc i32 %var_2_1167 to i8
; %var_2_1211 = trunc i32 %var_2_1210 to i8
; Matched:%var_2_1169:  %var_2_1169 = and i8 %var_2_1168, 1
; %var_2_1212 = and i8 %var_2_1211, 1
; Matched:\<badref\>:  store i8 %var_2_1973, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1212, i8* %var_2_27, align 1
; Matched:%var_2_1170:  %var_2_1170 = icmp eq i32 %var_2_1157, 0
; %var_2_1213 = icmp eq i32 %var_2_1200, 0
; Matched:%var_2_1975:  %var_2_1975 = zext i1 %var_2_1974 to i8
; %var_2_1214 = zext i1 %var_2_1213 to i8
; Matched:\<badref\>:  store i8 %var_2_1975, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1214, i8* %var_2_30, align 1
; Matched:%var_2_1976:  %var_2_1976 = lshr i32 %var_2_1961, 31
; %var_2_1215 = lshr i32 %var_2_1200, 31
; Matched:%var_2_1173:  %var_2_1173 = trunc i32 %var_2_1172 to i8
; %var_2_1216 = trunc i32 %var_2_1215 to i8
; Matched:\<badref\>:  store i8 %var_2_1173, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1216, i8* %var_2_33, align 1
; Matched:%var_2_1174:  %var_2_1174 = lshr i32 %var_2_1156, 31
; %var_2_1217 = lshr i32 %var_2_1199, 31
; Matched:%var_2_1979:  %var_2_1979 = xor i32 %var_2_1976, %var_2_1978
; %var_2_1218 = xor i32 %var_2_1215, %var_2_1217
; Matched:%var_2_1176:  %var_2_1176 = add nuw nsw i32 %var_2_1175, %var_2_1172
; %var_2_1219 = add nuw nsw i32 %var_2_1218, %var_2_1215
; Matched:%var_2_1307:  %var_2_1307 = icmp eq i32 %var_2_1306, 2
; %var_2_1220 = icmp eq i32 %var_2_1219, 2
; Matched:%var_2_1308:  %var_2_1308 = zext i1 %var_2_1307 to i8
; %var_2_1221 = zext i1 %var_2_1220 to i8
; Matched:\<badref\>:  store i8 %var_2_1982, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1221, i8* %var_2_39, align 1
; Matched:%var_2_1179:  %var_2_1179 = sext i32 %var_2_1157 to i64
; %var_2_1222 = sext i32 %var_2_1200 to i64
; Matched:\<badref\>:  store i64 %var_2_1309, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1222, i64* %RSI.i1794, align 8
; Matched:%var_2_1180:  %var_2_1180 = shl nsw i64 %var_2_1179, 3
; %var_2_1223 = shl nsw i64 %var_2_1222, 3
; Matched:%var_2_1181:  %var_2_1181 = add i64 %var_2_1154, %var_2_1180
; %var_2_1224 = add i64 %var_2_1197, %var_2_1223
; Matched:%var_2_1242:  %var_2_1242 = add i64 %var_2_1193, 36
; %var_2_1225 = add i64 %var_2_1159, 36
; Matched:\<badref\>:  store i64 %var_2_1242, i64* %PC, align 8
; store i64 %var_2_1225, i64* %var_2_3, align 8
; Matched:%var_2_1183:  %var_2_1183 = bitcast i64 %var_2_1152 to double
; %var_2_1226 = bitcast i64 %var_2_1195 to double
; Matched:%var_2_1184:  %var_2_1184 = inttoptr i64 %var_2_1181 to double*
; %var_2_1227 = inttoptr i64 %var_2_1224 to double*
; Matched:%var_2_1185:  %var_2_1185 = load double, double* %var_2_1184, align 8
; %var_2_1228 = load double, double* %var_2_1227, align 8
; Matched:%var_2_1186:  %var_2_1186 = fadd double %var_2_1183, %var_2_1185
; %var_2_1229 = fadd double %var_2_1226, %var_2_1228
; Matched:\<badref\>:  store double %var_2_1186, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1229, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1187:  %var_2_1187 = load i64, i64* %RBP, align 8
; %var_2_1230 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1188:  %var_2_1188 = add i64 %var_2_1187, -104
; %var_2_1231 = add i64 %var_2_1230, -104
; Matched:%var_2_1319:  %var_2_1319 = add i64 %var_2_1246, 41
; %var_2_1232 = add i64 %var_2_1159, 41
; Matched:\<badref\>:  store i64 %var_2_1319, i64* %PC, align 8
; store i64 %var_2_1232, i64* %var_2_3, align 8
; Matched:%var_2_1190:  %var_2_1190 = inttoptr i64 %var_2_1188 to double*
; %var_2_1233 = inttoptr i64 %var_2_1231 to double*
; Matched:\<badref\>:  store double %var_2_1186, double* %var_2_1190, align 8
; store double %var_2_1229, double* %var_2_1233, align 8
%var_2_1234 = load i64, i64* %RBP.i, align 8
%var_2_1235 = add i64 %var_2_1234, -16
%var_2_1236 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2572:  %var_2_2572 = add i64 %var_2_2571, 4
; %var_2_1237 = add i64 %var_2_1236, 4
; Matched:\<badref\>:  store i64 %var_2_521, i64* %PC, align 8
; store i64 %var_2_1237, i64* %var_2_3, align 8
%var_2_1238 = inttoptr i64 %var_2_1235 to i64*
%var_2_1239 = load i64, i64* %var_2_1238, align 8
; Matched:\<badref\>:  store i64 %var_2_2380, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1239, i64* %RDX.i1791, align 8
%var_2_1240 = add i64 %var_2_1234, -28
%var_2_1241 = add i64 %var_2_1236, 8
store i64 %var_2_1241, i64* %var_2_3, align 8
%var_2_1242 = inttoptr i64 %var_2_1240 to i32*
%var_2_1243 = load i32, i32* %var_2_1242, align 4
%var_2_1244 = sext i32 %var_2_1243 to i64
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1244, i64* %RSI.i1794, align 8
; Matched:%var_2_1202:  %var_2_1202 = shl nsw i64 %var_2_1201, 3
; %var_2_1245 = shl nsw i64 %var_2_1244, 3
; Matched:%var_2_1203:  %var_2_1203 = add i64 %var_2_1202, %var_2_1196
; %var_2_1246 = add i64 %var_2_1245, %var_2_1239
; Matched:%var_2_1864:  %var_2_1864 = add i64 %var_2_1859, 13
; %var_2_1247 = add i64 %var_2_1236, 13
; Matched:\<badref\>:  store i64 %var_2_1864, i64* %PC, align 8
; store i64 %var_2_1247, i64* %var_2_3, align 8
; Matched:%var_2_1205:  %var_2_1205 = inttoptr i64 %var_2_1203 to i64*
; %var_2_1248 = inttoptr i64 %var_2_1246 to i64*
; Matched:%var_2_1076:  %var_2_1076 = load i64, i64* %var_2_1075, align 8
; %var_2_1249 = load i64, i64* %var_2_1248, align 8
; Matched:\<badref\>:  store i64 %var_2_1206, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1249, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_115:  %var_2_115 = add i64 %var_2_105, 17
; %var_2_1250 = add i64 %var_2_1236, 17
; Matched:\<badref\>:  store i64 %var_2_74, i64* %PC, align 8
; store i64 %var_2_1250, i64* %var_2_3, align 8
%var_2_1251 = load i64, i64* %var_2_1238, align 8
; Matched:\<badref\>:  store i64 %var_2_445, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1251, i64* %RDX.i1791, align 8
; Matched:%var_2_2093:  %var_2_2093 = add i64 %var_2_2078, 20
; %var_2_1252 = add i64 %var_2_1236, 20
; Matched:\<badref\>:  store i64 %var_2_2937, i64* %PC, align 8
; store i64 %var_2_1252, i64* %var_2_3, align 8
; Matched:%var_2_1210:  %var_2_1210 = load i32, i32* %var_2_1199, align 4
; %var_2_1253 = load i32, i32* %var_2_1242, align 4
; Matched:%var_2_1903:  %var_2_1903 = add i32 %var_2_1902, 2
; %var_2_1254 = add i32 %var_2_1253, 2
; Matched:%var_2_1904:  %var_2_1904 = zext i32 %var_2_1903 to i64
; %var_2_1255 = zext i32 %var_2_1254 to i64
; Matched:\<badref\>:  store i64 %var_2_1212, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1255, i64* %RCX.i1272, align 8
; Matched:%var_2_1213:  %var_2_1213 = icmp ugt i32 %var_2_1210, -3
; %var_2_1256 = icmp ugt i32 %var_2_1253, -3
; Matched:%var_2_1906:  %var_2_1906 = zext i1 %var_2_1905 to i8
; %var_2_1257 = zext i1 %var_2_1256 to i8
; Matched:\<badref\>:  store i8 %var_2_1084, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1257, i8* %var_2_14, align 1
; Matched:%var_2_1907:  %var_2_1907 = and i32 %var_2_1903, 255
; %var_2_1258 = and i32 %var_2_1254, 255
; Matched:%var_2_1216:  %var_2_1216 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1215) #14
; %var_2_1259 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1258)
; Matched:%var_2_1909:  %var_2_1909 = trunc i32 %var_2_1908 to i8
; %var_2_1260 = trunc i32 %var_2_1259 to i8
; Matched:%var_2_1910:  %var_2_1910 = and i8 %var_2_1909, 1
; %var_2_1261 = and i8 %var_2_1260, 1
; Matched:%var_2_1219:  %var_2_1219 = xor i8 %var_2_1218, 1
; %var_2_1262 = xor i8 %var_2_1261, 1
; Matched:\<badref\>:  store i8 %var_2_1219, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1262, i8* %var_2_21, align 1
; Matched:%var_2_1912:  %var_2_1912 = xor i32 %var_2_1903, %var_2_1902
; %var_2_1263 = xor i32 %var_2_1254, %var_2_1253
; Matched:%var_2_1091:  %var_2_1091 = lshr i32 %var_2_1090, 4
; %var_2_1264 = lshr i32 %var_2_1263, 4
; Matched:%var_2_1914:  %var_2_1914 = trunc i32 %var_2_1913 to i8
; %var_2_1265 = trunc i32 %var_2_1264 to i8
; Matched:%var_2_1223:  %var_2_1223 = and i8 %var_2_1222, 1
; %var_2_1266 = and i8 %var_2_1265, 1
; Matched:\<badref\>:  store i8 %var_2_1915, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1266, i8* %var_2_27, align 1
; Matched:%var_2_1916:  %var_2_1916 = icmp eq i32 %var_2_1903, 0
; %var_2_1267 = icmp eq i32 %var_2_1254, 0
; Matched:%var_2_1225:  %var_2_1225 = zext i1 %var_2_1224 to i8
; %var_2_1268 = zext i1 %var_2_1267 to i8
; Matched:\<badref\>:  store i8 %var_2_1225, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1268, i8* %var_2_30, align 1
; Matched:%var_2_1918:  %var_2_1918 = lshr i32 %var_2_1903, 31
; %var_2_1269 = lshr i32 %var_2_1254, 31
; Matched:%var_2_1097:  %var_2_1097 = trunc i32 %var_2_1096 to i8
; %var_2_1270 = trunc i32 %var_2_1269 to i8
; Matched:\<badref\>:  store i8 %var_2_1919, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1270, i8* %var_2_33, align 1
; Matched:%var_2_1228:  %var_2_1228 = lshr i32 %var_2_1210, 31
; %var_2_1271 = lshr i32 %var_2_1253, 31
; Matched:%var_2_1921:  %var_2_1921 = xor i32 %var_2_1918, %var_2_1920
; %var_2_1272 = xor i32 %var_2_1269, %var_2_1271
; Matched:%var_2_1922:  %var_2_1922 = add nuw nsw i32 %var_2_1921, %var_2_1918
; %var_2_1273 = add nuw nsw i32 %var_2_1272, %var_2_1269
; Matched:%var_2_1231:  %var_2_1231 = icmp eq i32 %var_2_1230, 2
; %var_2_1274 = icmp eq i32 %var_2_1273, 2
; Matched:%var_2_1232:  %var_2_1232 = zext i1 %var_2_1231 to i8
; %var_2_1275 = zext i1 %var_2_1274 to i8
; Matched:\<badref\>:  store i8 %var_2_1924, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1275, i8* %var_2_39, align 1
; Matched:%var_2_1103:  %var_2_1103 = sext i32 %var_2_1081 to i64
; %var_2_1276 = sext i32 %var_2_1254 to i64
; Matched:\<badref\>:  store i64 %var_2_1925, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1276, i64* %RSI.i1794, align 8
; Matched:%var_2_1234:  %var_2_1234 = shl nsw i64 %var_2_1233, 3
; %var_2_1277 = shl nsw i64 %var_2_1276, 3
; Matched:%var_2_1235:  %var_2_1235 = add i64 %var_2_1208, %var_2_1234
; %var_2_1278 = add i64 %var_2_1251, %var_2_1277
; Matched:%var_2_1812:  %var_2_1812 = add i64 %var_2_1786, 31
; %var_2_1279 = add i64 %var_2_1236, 31
; Matched:\<badref\>:  store i64 %var_2_2965, i64* %PC, align 8
; store i64 %var_2_1279, i64* %var_2_3, align 8
; Matched:%var_2_1237:  %var_2_1237 = bitcast i64 %var_2_1206 to double
; %var_2_1280 = bitcast i64 %var_2_1249 to double
; Matched:%var_2_1238:  %var_2_1238 = inttoptr i64 %var_2_1235 to double*
; %var_2_1281 = inttoptr i64 %var_2_1278 to double*
; Matched:%var_2_1239:  %var_2_1239 = load double, double* %var_2_1238, align 8
; %var_2_1282 = load double, double* %var_2_1281, align 8
; Matched:%var_2_1240:  %var_2_1240 = fsub double %var_2_1237, %var_2_1239
; %var_2_1283 = fsub double %var_2_1280, %var_2_1282
; Matched:\<badref\>:  store double %var_2_1240, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1283, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1241:  %var_2_1241 = add i64 %var_2_1191, -112
; %var_2_1284 = add i64 %var_2_1234, -112
; Matched:%var_2_1540:  %var_2_1540 = add i64 %var_2_1475, 36
; %var_2_1285 = add i64 %var_2_1236, 36
; Matched:\<badref\>:  store i64 %var_2_2332, i64* %PC, align 8
; store i64 %var_2_1285, i64* %var_2_3, align 8
; Matched:%var_2_1243:  %var_2_1243 = inttoptr i64 %var_2_1241 to double*
; %var_2_1286 = inttoptr i64 %var_2_1284 to double*
; Matched:\<badref\>:  store double %var_2_1240, double* %var_2_1243, align 8
; store double %var_2_1283, double* %var_2_1286, align 8
%var_2_1287 = load i64, i64* %RBP.i, align 8
%var_2_1288 = add i64 %var_2_1287, -16
%var_2_1289 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2178:  %var_2_2178 = add i64 %var_2_2177, 4
; %var_2_1290 = add i64 %var_2_1289, 4
; Matched:\<badref\>:  store i64 %var_2_500, i64* %PC, align 8
; store i64 %var_2_1290, i64* %var_2_3, align 8
%var_2_1291 = inttoptr i64 %var_2_1288 to i64*
%var_2_1292 = load i64, i64* %var_2_1291, align 8
; Matched:\<badref\>:  store i64 %var_2_134, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1292, i64* %RDX.i1791, align 8
%var_2_1293 = add i64 %var_2_1287, -28
; Matched:%var_2_2728:  %var_2_2728 = add i64 %var_2_2723, 7
; %var_2_1294 = add i64 %var_2_1289, 7
; Matched:\<badref\>:  store i64 %var_2_2500, i64* %PC, align 8
; store i64 %var_2_1294, i64* %var_2_3, align 8
%var_2_1295 = inttoptr i64 %var_2_1293 to i32*
%var_2_1296 = load i32, i32* %var_2_1295, align 4
%var_2_1297 = add i32 %var_2_1296, 1
; Matched:%var_2_1255:  %var_2_1255 = zext i32 %var_2_1254 to i64
; %var_2_1298 = zext i32 %var_2_1297 to i64
; Matched:\<badref\>:  store i64 %var_2_1125, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1298, i64* %RCX.i1272, align 8
; Matched:%var_2_1672:  %var_2_1672 = icmp eq i32 %var_2_1669, -1
; %var_2_1299 = icmp eq i32 %var_2_1296, -1
; Matched:%var_2_1257:  %var_2_1257 = icmp eq i32 %var_2_1254, 0
; %var_2_1300 = icmp eq i32 %var_2_1297, 0
; Matched:%var_2_1258:  %var_2_1258 = or i1 %var_2_1256, %var_2_1257
; %var_2_1301 = or i1 %var_2_1299, %var_2_1300
; Matched:%var_2_1129:  %var_2_1129 = zext i1 %var_2_1128 to i8
; %var_2_1302 = zext i1 %var_2_1301 to i8
; Matched:\<badref\>:  store i8 %var_2_1129, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1302, i8* %var_2_14, align 1
; Matched:%var_2_1676:  %var_2_1676 = and i32 %var_2_1670, 255
; %var_2_1303 = and i32 %var_2_1297, 255
; Matched:%var_2_1261:  %var_2_1261 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1260) #14
; %var_2_1304 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1303)
; Matched:%var_2_1132:  %var_2_1132 = trunc i32 %var_2_1131 to i8
; %var_2_1305 = trunc i32 %var_2_1304 to i8
; Matched:%var_2_1679:  %var_2_1679 = and i8 %var_2_1678, 1
; %var_2_1306 = and i8 %var_2_1305, 1
; Matched:%var_2_1680:  %var_2_1680 = xor i8 %var_2_1679, 1
; %var_2_1307 = xor i8 %var_2_1306, 1
; Matched:\<badref\>:  store i8 %var_2_1264, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1307, i8* %var_2_21, align 1
; Matched:%var_2_1135:  %var_2_1135 = xor i32 %var_2_1124, %var_2_1123
; %var_2_1308 = xor i32 %var_2_1297, %var_2_1296
; Matched:%var_2_1266:  %var_2_1266 = lshr i32 %var_2_1265, 4
; %var_2_1309 = lshr i32 %var_2_1308, 4
; Matched:%var_2_1683:  %var_2_1683 = trunc i32 %var_2_1682 to i8
; %var_2_1310 = trunc i32 %var_2_1309 to i8
; Matched:%var_2_1268:  %var_2_1268 = and i8 %var_2_1267, 1
; %var_2_1311 = and i8 %var_2_1310, 1
; Matched:\<badref\>:  store i8 %var_2_1138, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1311, i8* %var_2_27, align 1
; Matched:%var_2_1685:  %var_2_1685 = zext i1 %var_2_1673 to i8
; %var_2_1312 = zext i1 %var_2_1300 to i8
; Matched:\<badref\>:  store i8 %var_2_1685, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1312, i8* %var_2_30, align 1
; Matched:%var_2_1270:  %var_2_1270 = lshr i32 %var_2_1254, 31
; %var_2_1313 = lshr i32 %var_2_1297, 31
; Matched:%var_2_1271:  %var_2_1271 = trunc i32 %var_2_1270 to i8
; %var_2_1314 = trunc i32 %var_2_1313 to i8
; Matched:\<badref\>:  store i8 %var_2_1271, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1314, i8* %var_2_33, align 1
; Matched:%var_2_1272:  %var_2_1272 = lshr i32 %var_2_1253, 31
; %var_2_1315 = lshr i32 %var_2_1296, 31
; Matched:%var_2_1273:  %var_2_1273 = xor i32 %var_2_1270, %var_2_1272
; %var_2_1316 = xor i32 %var_2_1313, %var_2_1315
; Matched:%var_2_1144:  %var_2_1144 = add nuw nsw i32 %var_2_1143, %var_2_1140
; %var_2_1317 = add nuw nsw i32 %var_2_1316, %var_2_1313
; Matched:%var_2_1691:  %var_2_1691 = icmp eq i32 %var_2_1690, 2
; %var_2_1318 = icmp eq i32 %var_2_1317, 2
; Matched:%var_2_1692:  %var_2_1692 = zext i1 %var_2_1691 to i8
; %var_2_1319 = zext i1 %var_2_1318 to i8
; Matched:\<badref\>:  store i8 %var_2_1276, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1319, i8* %var_2_39, align 1
%var_2_1320 = sext i32 %var_2_1297 to i64
; Matched:\<badref\>:  store i64 %var_2_1277, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1320, i64* %RSI.i1794, align 8
; Matched:%var_2_1278:  %var_2_1278 = shl nsw i64 %var_2_1277, 3
; %var_2_1321 = shl nsw i64 %var_2_1320, 3
; Matched:%var_2_1149:  %var_2_1149 = add i64 %var_2_1119, %var_2_1148
; %var_2_1322 = add i64 %var_2_1292, %var_2_1321
; Matched:%var_2_2300:  %var_2_2300 = add i64 %var_2_2267, 18
; %var_2_1323 = add i64 %var_2_1289, 18
; Matched:\<badref\>:  store i64 %var_2_2300, i64* %PC, align 8
; store i64 %var_2_1323, i64* %var_2_3, align 8
; Matched:%var_2_1281:  %var_2_1281 = inttoptr i64 %var_2_1279 to i64*
; %var_2_1324 = inttoptr i64 %var_2_1322 to i64*
; Matched:%var_2_1282:  %var_2_1282 = load i64, i64* %var_2_1281, align 8
; %var_2_1325 = load i64, i64* %var_2_1324, align 8
; Matched:\<badref\>:  store i64 %var_2_1282, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1325, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1587:  %var_2_1587 = add i64 %var_2_1551, 22
; %var_2_1326 = add i64 %var_2_1289, 22
; Matched:\<badref\>:  store i64 %var_2_2379, i64* %PC, align 8
; store i64 %var_2_1326, i64* %var_2_3, align 8
%var_2_1327 = load i64, i64* %var_2_1291, align 8
; Matched:\<badref\>:  store i64 %var_2_149, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1327, i64* %RDX.i1791, align 8
; Matched:%var_2_2457:  %var_2_2457 = add i64 %var_2_2419, 25
; %var_2_1328 = add i64 %var_2_1289, 25
; Matched:\<badref\>:  store i64 %var_2_2457, i64* %PC, align 8
; store i64 %var_2_1328, i64* %var_2_3, align 8
; Matched:%var_2_1286:  %var_2_1286 = load i32, i32* %var_2_1252, align 4
; %var_2_1329 = load i32, i32* %var_2_1295, align 4
; Matched:%var_2_1961:  %var_2_1961 = add i32 %var_2_1960, 3
; %var_2_1330 = add i32 %var_2_1329, 3
; Matched:%var_2_1962:  %var_2_1962 = zext i32 %var_2_1961 to i64
; %var_2_1331 = zext i32 %var_2_1330 to i64
; Matched:\<badref\>:  store i64 %var_2_1288, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1331, i64* %RCX.i1272, align 8
; Matched:%var_2_1159:  %var_2_1159 = icmp ugt i32 %var_2_1156, -4
; %var_2_1332 = icmp ugt i32 %var_2_1329, -4
; Matched:%var_2_1160:  %var_2_1160 = zext i1 %var_2_1159 to i8
; %var_2_1333 = zext i1 %var_2_1332 to i8
; Matched:\<badref\>:  store i8 %var_2_1964, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1333, i8* %var_2_14, align 1
; Matched:%var_2_1161:  %var_2_1161 = and i32 %var_2_1157, 255
; %var_2_1334 = and i32 %var_2_1330, 255
; Matched:%var_2_1292:  %var_2_1292 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1291) #14
; %var_2_1335 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1334)
; Matched:%var_2_1163:  %var_2_1163 = trunc i32 %var_2_1162 to i8
; %var_2_1336 = trunc i32 %var_2_1335 to i8
; Matched:%var_2_1294:  %var_2_1294 = and i8 %var_2_1293, 1
; %var_2_1337 = and i8 %var_2_1336, 1
; Matched:%var_2_1969:  %var_2_1969 = xor i8 %var_2_1968, 1
; %var_2_1338 = xor i8 %var_2_1337, 1
; Matched:\<badref\>:  store i8 %var_2_1165, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1338, i8* %var_2_21, align 1
; Matched:%var_2_1166:  %var_2_1166 = xor i32 %var_2_1157, %var_2_1156
; %var_2_1339 = xor i32 %var_2_1330, %var_2_1329
; Matched:%var_2_1971:  %var_2_1971 = lshr i32 %var_2_1970, 4
; %var_2_1340 = lshr i32 %var_2_1339, 4
; Matched:%var_2_1972:  %var_2_1972 = trunc i32 %var_2_1971 to i8
; %var_2_1341 = trunc i32 %var_2_1340 to i8
; Matched:%var_2_1299:  %var_2_1299 = and i8 %var_2_1298, 1
; %var_2_1342 = and i8 %var_2_1341, 1
; Matched:\<badref\>:  store i8 %var_2_1169, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1342, i8* %var_2_27, align 1
; Matched:%var_2_1974:  %var_2_1974 = icmp eq i32 %var_2_1961, 0
; %var_2_1343 = icmp eq i32 %var_2_1330, 0
; Matched:%var_2_1301:  %var_2_1301 = zext i1 %var_2_1300 to i8
; %var_2_1344 = zext i1 %var_2_1343 to i8
; Matched:\<badref\>:  store i8 %var_2_1171, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1344, i8* %var_2_30, align 1
; Matched:%var_2_1172:  %var_2_1172 = lshr i32 %var_2_1157, 31
; %var_2_1345 = lshr i32 %var_2_1330, 31
; Matched:%var_2_1977:  %var_2_1977 = trunc i32 %var_2_1976 to i8
; %var_2_1346 = trunc i32 %var_2_1345 to i8
; Matched:\<badref\>:  store i8 %var_2_1977, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1346, i8* %var_2_33, align 1
; Matched:%var_2_1304:  %var_2_1304 = lshr i32 %var_2_1286, 31
; %var_2_1347 = lshr i32 %var_2_1329, 31
; Matched:%var_2_1175:  %var_2_1175 = xor i32 %var_2_1172, %var_2_1174
; %var_2_1348 = xor i32 %var_2_1345, %var_2_1347
; Matched:%var_2_1306:  %var_2_1306 = add nuw nsw i32 %var_2_1305, %var_2_1302
; %var_2_1349 = add nuw nsw i32 %var_2_1348, %var_2_1345
; Matched:%var_2_1981:  %var_2_1981 = icmp eq i32 %var_2_1980, 2
; %var_2_1350 = icmp eq i32 %var_2_1349, 2
; Matched:%var_2_1178:  %var_2_1178 = zext i1 %var_2_1177 to i8
; %var_2_1351 = zext i1 %var_2_1350 to i8
; Matched:\<badref\>:  store i8 %var_2_1308, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1351, i8* %var_2_39, align 1
; Matched:%var_2_1309:  %var_2_1309 = sext i32 %var_2_1287 to i64
; %var_2_1352 = sext i32 %var_2_1330 to i64
; Matched:\<badref\>:  store i64 %var_2_1983, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1352, i64* %RSI.i1794, align 8
; Matched:%var_2_1310:  %var_2_1310 = shl nsw i64 %var_2_1309, 3
; %var_2_1353 = shl nsw i64 %var_2_1352, 3
; Matched:%var_2_1311:  %var_2_1311 = add i64 %var_2_1284, %var_2_1310
; %var_2_1354 = add i64 %var_2_1327, %var_2_1353
; Matched:%var_2_1312:  %var_2_1312 = add i64 %var_2_1246, 36
; %var_2_1355 = add i64 %var_2_1289, 36
; Matched:\<badref\>:  store i64 %var_2_1540, i64* %PC, align 8
; store i64 %var_2_1355, i64* %var_2_3, align 8
; Matched:%var_2_1313:  %var_2_1313 = bitcast i64 %var_2_1282 to double
; %var_2_1356 = bitcast i64 %var_2_1325 to double
; Matched:%var_2_1314:  %var_2_1314 = inttoptr i64 %var_2_1311 to double*
; %var_2_1357 = inttoptr i64 %var_2_1354 to double*
; Matched:%var_2_1315:  %var_2_1315 = load double, double* %var_2_1314, align 8
; %var_2_1358 = load double, double* %var_2_1357, align 8
; Matched:%var_2_1316:  %var_2_1316 = fsub double %var_2_1313, %var_2_1315
; %var_2_1359 = fsub double %var_2_1356, %var_2_1358
; Matched:\<badref\>:  store double %var_2_1316, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1359, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1317:  %var_2_1317 = load i64, i64* %RBP, align 8
; %var_2_1360 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1318:  %var_2_1318 = add i64 %var_2_1317, -120
; %var_2_1361 = add i64 %var_2_1360, -120
; Matched:%var_2_3099:  %var_2_3099 = add i64 %var_2_3066, 41
; %var_2_1362 = add i64 %var_2_1289, 41
; Matched:\<badref\>:  store i64 %var_2_3099, i64* %PC, align 8
; store i64 %var_2_1362, i64* %var_2_3, align 8
; Matched:%var_2_1320:  %var_2_1320 = inttoptr i64 %var_2_1318 to double*
; %var_2_1363 = inttoptr i64 %var_2_1361 to double*
; Matched:\<badref\>:  store double %var_2_1316, double* %var_2_1320, align 8
; store double %var_2_1359, double* %var_2_1363, align 8
%var_2_1364 = load i64, i64* %RBP.i, align 8
%var_2_1365 = add i64 %var_2_1364, -16
%var_2_1366 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2344:  %var_2_2344 = add i64 %var_2_2343, 4
; %var_2_1367 = add i64 %var_2_1366, 4
; Matched:\<badref\>:  store i64 %var_2_2800, i64* %PC, align 8
; store i64 %var_2_1367, i64* %var_2_3, align 8
%var_2_1368 = inttoptr i64 %var_2_1365 to i64*
%var_2_1369 = load i64, i64* %var_2_1368, align 8
; Matched:\<badref\>:  store i64 %var_2_1554, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1369, i64* %RDX.i1791, align 8
%var_2_1370 = add i64 %var_2_1364, -28
; Matched:%var_2_1121:  %var_2_1121 = add i64 %var_2_1116, 7
; %var_2_1371 = add i64 %var_2_1366, 7
; Matched:\<badref\>:  store i64 %var_2_804, i64* %PC, align 8
; store i64 %var_2_1371, i64* %var_2_3, align 8
%var_2_1372 = inttoptr i64 %var_2_1370 to i32*
%var_2_1373 = load i32, i32* %var_2_1372, align 4
%var_2_1374 = add i32 %var_2_1373, 4
; Matched:%var_2_1758:  %var_2_1758 = zext i32 %var_2_1757 to i64
; %var_2_1375 = zext i32 %var_2_1374 to i64
; Matched:\<badref\>:  store i64 %var_2_1332, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1375, i64* %RCX.i1272, align 8
; Matched:%var_2_1759:  %var_2_1759 = icmp ugt i32 %var_2_1756, -5
; %var_2_1376 = icmp ugt i32 %var_2_1373, -5
; Matched:%var_2_1760:  %var_2_1760 = zext i1 %var_2_1759 to i8
; %var_2_1377 = zext i1 %var_2_1376 to i8
; Matched:\<badref\>:  store i8 %var_2_1334, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1377, i8* %var_2_14, align 1
; Matched:%var_2_1335:  %var_2_1335 = and i32 %var_2_1331, 255
; %var_2_1378 = and i32 %var_2_1374, 255
; Matched:%var_2_1762:  %var_2_1762 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1761) #14
; %var_2_1379 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1378)
; Matched:%var_2_1489:  %var_2_1489 = trunc i32 %var_2_1488 to i8
; %var_2_1380 = trunc i32 %var_2_1379 to i8
; Matched:%var_2_1764:  %var_2_1764 = and i8 %var_2_1763, 1
; %var_2_1381 = and i8 %var_2_1380, 1
; Matched:%var_2_1339:  %var_2_1339 = xor i8 %var_2_1338, 1
; %var_2_1382 = xor i8 %var_2_1381, 1
; Matched:\<badref\>:  store i8 %var_2_1765, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1382, i8* %var_2_21, align 1
; Matched:%var_2_1766:  %var_2_1766 = xor i32 %var_2_1757, %var_2_1756
; %var_2_1383 = xor i32 %var_2_1374, %var_2_1373
; Matched:%var_2_1341:  %var_2_1341 = lshr i32 %var_2_1340, 4
; %var_2_1384 = lshr i32 %var_2_1383, 4
; Matched:%var_2_1342:  %var_2_1342 = trunc i32 %var_2_1341 to i8
; %var_2_1385 = trunc i32 %var_2_1384 to i8
; Matched:%var_2_1769:  %var_2_1769 = and i8 %var_2_1768, 1
; %var_2_1386 = and i8 %var_2_1385, 1
; Matched:\<badref\>:  store i8 %var_2_1495, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1386, i8* %var_2_27, align 1
; Matched:%var_2_1770:  %var_2_1770 = icmp eq i32 %var_2_1757, 0
; %var_2_1387 = icmp eq i32 %var_2_1374, 0
; Matched:%var_2_1345:  %var_2_1345 = zext i1 %var_2_1344 to i8
; %var_2_1388 = zext i1 %var_2_1387 to i8
; Matched:\<badref\>:  store i8 %var_2_1771, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1388, i8* %var_2_30, align 1
; Matched:%var_2_1772:  %var_2_1772 = lshr i32 %var_2_1757, 31
; %var_2_1389 = lshr i32 %var_2_1374, 31
; Matched:%var_2_1347:  %var_2_1347 = trunc i32 %var_2_1346 to i8
; %var_2_1390 = trunc i32 %var_2_1389 to i8
; Matched:\<badref\>:  store i8 %var_2_1347, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1390, i8* %var_2_33, align 1
; Matched:%var_2_1774:  %var_2_1774 = lshr i32 %var_2_1756, 31
; %var_2_1391 = lshr i32 %var_2_1373, 31
; Matched:%var_2_1501:  %var_2_1501 = xor i32 %var_2_1498, %var_2_1500
; %var_2_1392 = xor i32 %var_2_1389, %var_2_1391
; Matched:%var_2_1776:  %var_2_1776 = add nuw nsw i32 %var_2_1775, %var_2_1772
; %var_2_1393 = add nuw nsw i32 %var_2_1392, %var_2_1389
; Matched:%var_2_1351:  %var_2_1351 = icmp eq i32 %var_2_1350, 2
; %var_2_1394 = icmp eq i32 %var_2_1393, 2
; Matched:%var_2_1778:  %var_2_1778 = zext i1 %var_2_1777 to i8
; %var_2_1395 = zext i1 %var_2_1394 to i8
; Matched:\<badref\>:  store i8 %var_2_1778, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1395, i8* %var_2_39, align 1
%var_2_1396 = sext i32 %var_2_1374 to i64
; Matched:\<badref\>:  store i64 %var_2_1353, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1396, i64* %RSI.i1794, align 8
; Matched:%var_2_1506:  %var_2_1506 = shl nsw i64 %var_2_1505, 3
; %var_2_1397 = shl nsw i64 %var_2_1396, 3
; Matched:%var_2_1507:  %var_2_1507 = add i64 %var_2_1478, %var_2_1506
; %var_2_1398 = add i64 %var_2_1369, %var_2_1397
; Matched:%var_2_2016:  %var_2_2016 = add i64 %var_2_2005, 18
; %var_2_1399 = add i64 %var_2_1366, 18
; Matched:\<badref\>:  store i64 %var_2_2016, i64* %PC, align 8
; store i64 %var_2_1399, i64* %var_2_3, align 8
; Matched:%var_2_1509:  %var_2_1509 = inttoptr i64 %var_2_1507 to i64*
; %var_2_1400 = inttoptr i64 %var_2_1398 to i64*
; Matched:%var_2_1510:  %var_2_1510 = load i64, i64* %var_2_1509, align 8
; %var_2_1401 = load i64, i64* %var_2_1400, align 8
; Matched:\<badref\>:  store i64 %var_2_1358, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1401, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1435:  %var_2_1435 = add i64 %var_2_1399, 22
; %var_2_1402 = add i64 %var_2_1366, 22
; Matched:\<badref\>:  store i64 %var_2_301, i64* %PC, align 8
; store i64 %var_2_1402, i64* %var_2_3, align 8
%var_2_1403 = load i64, i64* %var_2_1368, align 8
; Matched:\<badref\>:  store i64 %var_2_2270, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1403, i64* %RDX.i1791, align 8
; Matched:%var_2_2837:  %var_2_2837 = add i64 %var_2_2799, 25
; %var_2_1404 = add i64 %var_2_1366, 25
; Matched:\<badref\>:  store i64 %var_2_1285, i64* %PC, align 8
; store i64 %var_2_1404, i64* %var_2_3, align 8
; Matched:%var_2_1362:  %var_2_1362 = load i32, i32* %var_2_1329, align 4
; %var_2_1405 = load i32, i32* %var_2_1372, align 4
; Matched:%var_2_1515:  %var_2_1515 = add i32 %var_2_1514, 6
; %var_2_1406 = add i32 %var_2_1405, 6
; Matched:%var_2_2050:  %var_2_2050 = zext i32 %var_2_2049 to i64
; %var_2_1407 = zext i32 %var_2_1406 to i64
; Matched:\<badref\>:  store i64 %var_2_1516, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1407, i64* %RCX.i1272, align 8
; Matched:%var_2_1365:  %var_2_1365 = icmp ugt i32 %var_2_1362, -7
; %var_2_1408 = icmp ugt i32 %var_2_1405, -7
; Matched:%var_2_1366:  %var_2_1366 = zext i1 %var_2_1365 to i8
; %var_2_1409 = zext i1 %var_2_1408 to i8
; Matched:\<badref\>:  store i8 %var_2_1518, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1409, i8* %var_2_14, align 1
; Matched:%var_2_1519:  %var_2_1519 = and i32 %var_2_1515, 255
; %var_2_1410 = and i32 %var_2_1406, 255
; Matched:%var_2_1368:  %var_2_1368 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1367) #14
; %var_2_1411 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1410)
; Matched:%var_2_1521:  %var_2_1521 = trunc i32 %var_2_1520 to i8
; %var_2_1412 = trunc i32 %var_2_1411 to i8
; Matched:%var_2_2056:  %var_2_2056 = and i8 %var_2_2055, 1
; %var_2_1413 = and i8 %var_2_1412, 1
; Matched:%var_2_1523:  %var_2_1523 = xor i8 %var_2_1522, 1
; %var_2_1414 = xor i8 %var_2_1413, 1
; Matched:\<badref\>:  store i8 %var_2_1371, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1414, i8* %var_2_21, align 1
; Matched:%var_2_1372:  %var_2_1372 = xor i32 %var_2_1363, %var_2_1362
; %var_2_1415 = xor i32 %var_2_1406, %var_2_1405
; Matched:%var_2_1525:  %var_2_1525 = lshr i32 %var_2_1524, 4
; %var_2_1416 = lshr i32 %var_2_1415, 4
; Matched:%var_2_1526:  %var_2_1526 = trunc i32 %var_2_1525 to i8
; %var_2_1417 = trunc i32 %var_2_1416 to i8
; Matched:%var_2_1375:  %var_2_1375 = and i8 %var_2_1374, 1
; %var_2_1418 = and i8 %var_2_1417, 1
; Matched:\<badref\>:  store i8 %var_2_1527, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1418, i8* %var_2_27, align 1
; Matched:%var_2_2062:  %var_2_2062 = icmp eq i32 %var_2_2049, 0
; %var_2_1419 = icmp eq i32 %var_2_1406, 0
; Matched:%var_2_1529:  %var_2_1529 = zext i1 %var_2_1528 to i8
; %var_2_1420 = zext i1 %var_2_1419 to i8
; Matched:\<badref\>:  store i8 %var_2_1377, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1420, i8* %var_2_30, align 1
; Matched:%var_2_1378:  %var_2_1378 = lshr i32 %var_2_1363, 31
; %var_2_1421 = lshr i32 %var_2_1406, 31
; Matched:%var_2_1531:  %var_2_1531 = trunc i32 %var_2_1530 to i8
; %var_2_1422 = trunc i32 %var_2_1421 to i8
; Matched:\<badref\>:  store i8 %var_2_1531, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1422, i8* %var_2_33, align 1
; Matched:%var_2_1380:  %var_2_1380 = lshr i32 %var_2_1362, 31
; %var_2_1423 = lshr i32 %var_2_1405, 31
; Matched:%var_2_1533:  %var_2_1533 = xor i32 %var_2_1530, %var_2_1532
; %var_2_1424 = xor i32 %var_2_1421, %var_2_1423
; Matched:%var_2_2068:  %var_2_2068 = add nuw nsw i32 %var_2_2067, %var_2_2064
; %var_2_1425 = add nuw nsw i32 %var_2_1424, %var_2_1421
; Matched:%var_2_1535:  %var_2_1535 = icmp eq i32 %var_2_1534, 2
; %var_2_1426 = icmp eq i32 %var_2_1425, 2
; Matched:%var_2_1384:  %var_2_1384 = zext i1 %var_2_1383 to i8
; %var_2_1427 = zext i1 %var_2_1426 to i8
; Matched:\<badref\>:  store i8 %var_2_1384, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1427, i8* %var_2_39, align 1
; Matched:%var_2_1537:  %var_2_1537 = sext i32 %var_2_1515 to i64
; %var_2_1428 = sext i32 %var_2_1406 to i64
; Matched:\<badref\>:  store i64 %var_2_1537, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1428, i64* %RSI.i1794, align 8
; Matched:%var_2_1386:  %var_2_1386 = shl nsw i64 %var_2_1385, 3
; %var_2_1429 = shl nsw i64 %var_2_1428, 3
; Matched:%var_2_1387:  %var_2_1387 = add i64 %var_2_1360, %var_2_1386
; %var_2_1430 = add i64 %var_2_1403, %var_2_1429
; Matched:%var_2_2864:  %var_2_2864 = add i64 %var_2_2799, 36
; %var_2_1431 = add i64 %var_2_1366, 36
; Matched:\<badref\>:  store i64 %var_2_2864, i64* %PC, align 8
; store i64 %var_2_1431, i64* %var_2_3, align 8
; Matched:%var_2_1389:  %var_2_1389 = bitcast i64 %var_2_1358 to double
; %var_2_1432 = bitcast i64 %var_2_1401 to double
; Matched:%var_2_1390:  %var_2_1390 = inttoptr i64 %var_2_1387 to double*
; %var_2_1433 = inttoptr i64 %var_2_1430 to double*
; Matched:%var_2_1391:  %var_2_1391 = load double, double* %var_2_1390, align 8
; %var_2_1434 = load double, double* %var_2_1433, align 8
; Matched:%var_2_1392:  %var_2_1392 = fadd double %var_2_1389, %var_2_1391
; %var_2_1435 = fadd double %var_2_1432, %var_2_1434
; Matched:\<badref\>:  store double %var_2_1392, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1435, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1393:  %var_2_1393 = load i64, i64* %RBP, align 8
; %var_2_1436 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1394:  %var_2_1394 = add i64 %var_2_1393, -128
; %var_2_1437 = add i64 %var_2_1436, -128
; Matched:%var_2_2643:  %var_2_2643 = add i64 %var_2_2571, 41
; %var_2_1438 = add i64 %var_2_1366, 41
; Matched:\<badref\>:  store i64 %var_2_2643, i64* %PC, align 8
; store i64 %var_2_1438, i64* %var_2_3, align 8
; Matched:%var_2_1396:  %var_2_1396 = inttoptr i64 %var_2_1394 to double*
; %var_2_1439 = inttoptr i64 %var_2_1437 to double*
; Matched:\<badref\>:  store double %var_2_1392, double* %var_2_1396, align 8
; store double %var_2_1435, double* %var_2_1439, align 8
%var_2_1440 = load i64, i64* %RBP.i, align 8
%var_2_1441 = add i64 %var_2_1440, -16
%var_2_1442 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2420:  %var_2_2420 = add i64 %var_2_2419, 4
; %var_2_1443 = add i64 %var_2_1442, 4
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_1443, i64* %var_2_3, align 8
%var_2_1444 = inttoptr i64 %var_2_1441 to i64*
%var_2_1445 = load i64, i64* %var_2_1444, align 8
; Matched:\<badref\>:  store i64 %var_2_356, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1445, i64* %RDX.i1791, align 8
%var_2_1446 = add i64 %var_2_1440, -28
; Matched:%var_2_1404:  %var_2_1404 = add i64 %var_2_1399, 7
; %var_2_1447 = add i64 %var_2_1442, 7
; Matched:\<badref\>:  store i64 %var_2_910, i64* %PC, align 8
; store i64 %var_2_1447, i64* %var_2_3, align 8
%var_2_1448 = inttoptr i64 %var_2_1446 to i32*
%var_2_1449 = load i32, i32* %var_2_1448, align 4
%var_2_1450 = add i32 %var_2_1449, 5
; Matched:%var_2_1560:  %var_2_1560 = zext i32 %var_2_1559 to i64
; %var_2_1451 = zext i32 %var_2_1450 to i64
; Matched:\<badref\>:  store i64 %var_2_1560, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1451, i64* %RCX.i1272, align 8
; Matched:%var_2_1561:  %var_2_1561 = icmp ugt i32 %var_2_1558, -6
; %var_2_1452 = icmp ugt i32 %var_2_1449, -6
; Matched:%var_2_1562:  %var_2_1562 = zext i1 %var_2_1561 to i8
; %var_2_1453 = zext i1 %var_2_1452 to i8
; Matched:\<badref\>:  store i8 %var_2_1562, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1453, i8* %var_2_14, align 1
; Matched:%var_2_1563:  %var_2_1563 = and i32 %var_2_1559, 255
; %var_2_1454 = and i32 %var_2_1450, 255
; Matched:%var_2_1412:  %var_2_1412 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1411) #14
; %var_2_1455 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1454)
; Matched:%var_2_1413:  %var_2_1413 = trunc i32 %var_2_1412 to i8
; %var_2_1456 = trunc i32 %var_2_1455 to i8
; Matched:%var_2_1566:  %var_2_1566 = and i8 %var_2_1565, 1
; %var_2_1457 = and i8 %var_2_1456, 1
; Matched:%var_2_1567:  %var_2_1567 = xor i8 %var_2_1566, 1
; %var_2_1458 = xor i8 %var_2_1457, 1
; Matched:\<badref\>:  store i8 %var_2_1567, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1458, i8* %var_2_21, align 1
; Matched:%var_2_1568:  %var_2_1568 = xor i32 %var_2_1559, %var_2_1558
; %var_2_1459 = xor i32 %var_2_1450, %var_2_1449
; Matched:%var_2_1569:  %var_2_1569 = lshr i32 %var_2_1568, 4
; %var_2_1460 = lshr i32 %var_2_1459, 4
; Matched:%var_2_1570:  %var_2_1570 = trunc i32 %var_2_1569 to i8
; %var_2_1461 = trunc i32 %var_2_1460 to i8
; Matched:%var_2_1419:  %var_2_1419 = and i8 %var_2_1418, 1
; %var_2_1462 = and i8 %var_2_1461, 1
; Matched:\<badref\>:  store i8 %var_2_1419, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1462, i8* %var_2_27, align 1
; Matched:%var_2_1572:  %var_2_1572 = icmp eq i32 %var_2_1559, 0
; %var_2_1463 = icmp eq i32 %var_2_1450, 0
; Matched:%var_2_1573:  %var_2_1573 = zext i1 %var_2_1572 to i8
; %var_2_1464 = zext i1 %var_2_1463 to i8
; Matched:\<badref\>:  store i8 %var_2_1573, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1464, i8* %var_2_30, align 1
; Matched:%var_2_1574:  %var_2_1574 = lshr i32 %var_2_1559, 31
; %var_2_1465 = lshr i32 %var_2_1450, 31
; Matched:%var_2_1575:  %var_2_1575 = trunc i32 %var_2_1574 to i8
; %var_2_1466 = trunc i32 %var_2_1465 to i8
; Matched:\<badref\>:  store i8 %var_2_1575, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1466, i8* %var_2_33, align 1
; Matched:%var_2_1424:  %var_2_1424 = lshr i32 %var_2_1406, 31
; %var_2_1467 = lshr i32 %var_2_1449, 31
; Matched:%var_2_1425:  %var_2_1425 = xor i32 %var_2_1422, %var_2_1424
; %var_2_1468 = xor i32 %var_2_1465, %var_2_1467
; Matched:%var_2_1578:  %var_2_1578 = add nuw nsw i32 %var_2_1577, %var_2_1574
; %var_2_1469 = add nuw nsw i32 %var_2_1468, %var_2_1465
; Matched:%var_2_1579:  %var_2_1579 = icmp eq i32 %var_2_1578, 2
; %var_2_1470 = icmp eq i32 %var_2_1469, 2
; Matched:%var_2_1580:  %var_2_1580 = zext i1 %var_2_1579 to i8
; %var_2_1471 = zext i1 %var_2_1470 to i8
; Matched:\<badref\>:  store i8 %var_2_1580, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1471, i8* %var_2_39, align 1
%var_2_1472 = sext i32 %var_2_1450 to i64
; Matched:\<badref\>:  store i64 %var_2_1581, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1472, i64* %RSI.i1794, align 8
; Matched:%var_2_1430:  %var_2_1430 = shl nsw i64 %var_2_1429, 3
; %var_2_1473 = shl nsw i64 %var_2_1472, 3
; Matched:%var_2_1431:  %var_2_1431 = add i64 %var_2_1402, %var_2_1430
; %var_2_1474 = add i64 %var_2_1445, %var_2_1473
; Matched:%var_2_531:  %var_2_531 = add i64 %var_2_520, 18
; %var_2_1475 = add i64 %var_2_1442, 18
; Matched:\<badref\>:  store i64 %var_2_962, i64* %PC, align 8
; store i64 %var_2_1475, i64* %var_2_3, align 8
; Matched:%var_2_1433:  %var_2_1433 = inttoptr i64 %var_2_1431 to i64*
; %var_2_1476 = inttoptr i64 %var_2_1474 to i64*
; Matched:%var_2_1434:  %var_2_1434 = load i64, i64* %var_2_1433, align 8
; %var_2_1477 = load i64, i64* %var_2_1476, align 8
; Matched:\<badref\>:  store i64 %var_2_1586, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1477, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_324, 22
; %var_2_1478 = add i64 %var_2_1442, 22
; Matched:\<badref\>:  store i64 %var_2_1153, i64* %PC, align 8
; store i64 %var_2_1478, i64* %var_2_3, align 8
%var_2_1479 = load i64, i64* %var_2_1444, align 8
; Matched:\<badref\>:  store i64 %var_2_212, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1479, i64* %RDX.i1791, align 8
; Matched:%var_2_1589:  %var_2_1589 = add i64 %var_2_1551, 25
; %var_2_1480 = add i64 %var_2_1442, 25
; Matched:\<badref\>:  store i64 %var_2_1589, i64* %PC, align 8
; store i64 %var_2_1480, i64* %var_2_3, align 8
; Matched:%var_2_1590:  %var_2_1590 = load i32, i32* %var_2_1557, align 4
; %var_2_1481 = load i32, i32* %var_2_1448, align 4
; Matched:%var_2_1591:  %var_2_1591 = add i32 %var_2_1590, 7
; %var_2_1482 = add i32 %var_2_1481, 7
; Matched:%var_2_1440:  %var_2_1440 = zext i32 %var_2_1439 to i64
; %var_2_1483 = zext i32 %var_2_1482 to i64
; Matched:\<badref\>:  store i64 %var_2_1440, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1483, i64* %RCX.i1272, align 8
; Matched:%var_2_1593:  %var_2_1593 = icmp ugt i32 %var_2_1590, -8
; %var_2_1484 = icmp ugt i32 %var_2_1481, -8
; Matched:%var_2_2110:  %var_2_2110 = zext i1 %var_2_2109 to i8
; %var_2_1485 = zext i1 %var_2_1484 to i8
; Matched:\<badref\>:  store i8 %var_2_1442, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1485, i8* %var_2_14, align 1
; Matched:%var_2_1443:  %var_2_1443 = and i32 %var_2_1439, 255
; %var_2_1486 = and i32 %var_2_1482, 255
; Matched:%var_2_1596:  %var_2_1596 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1595) #14
; %var_2_1487 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1486)
; Matched:%var_2_1597:  %var_2_1597 = trunc i32 %var_2_1596 to i8
; %var_2_1488 = trunc i32 %var_2_1487 to i8
; Matched:%var_2_2114:  %var_2_2114 = and i8 %var_2_2113, 1
; %var_2_1489 = and i8 %var_2_1488, 1
; Matched:%var_2_1447:  %var_2_1447 = xor i8 %var_2_1446, 1
; %var_2_1490 = xor i8 %var_2_1489, 1
; Matched:\<badref\>:  store i8 %var_2_1599, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1490, i8* %var_2_21, align 1
; Matched:%var_2_2116:  %var_2_2116 = xor i32 %var_2_2107, %var_2_2106
; %var_2_1491 = xor i32 %var_2_1482, %var_2_1481
; Matched:%var_2_1449:  %var_2_1449 = lshr i32 %var_2_1448, 4
; %var_2_1492 = lshr i32 %var_2_1491, 4
; Matched:%var_2_1602:  %var_2_1602 = trunc i32 %var_2_1601 to i8
; %var_2_1493 = trunc i32 %var_2_1492 to i8
; Matched:%var_2_1603:  %var_2_1603 = and i8 %var_2_1602, 1
; %var_2_1494 = and i8 %var_2_1493, 1
; Matched:\<badref\>:  store i8 %var_2_1603, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1494, i8* %var_2_27, align 1
; Matched:%var_2_2120:  %var_2_2120 = icmp eq i32 %var_2_2107, 0
; %var_2_1495 = icmp eq i32 %var_2_1482, 0
; Matched:%var_2_1453:  %var_2_1453 = zext i1 %var_2_1452 to i8
; %var_2_1496 = zext i1 %var_2_1495 to i8
; Matched:\<badref\>:  store i8 %var_2_2121, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1496, i8* %var_2_30, align 1
; Matched:%var_2_2122:  %var_2_2122 = lshr i32 %var_2_2107, 31
; %var_2_1497 = lshr i32 %var_2_1482, 31
; Matched:%var_2_1455:  %var_2_1455 = trunc i32 %var_2_1454 to i8
; %var_2_1498 = trunc i32 %var_2_1497 to i8
; Matched:\<badref\>:  store i8 %var_2_1607, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1498, i8* %var_2_33, align 1
; Matched:%var_2_1608:  %var_2_1608 = lshr i32 %var_2_1590, 31
; %var_2_1499 = lshr i32 %var_2_1481, 31
; Matched:%var_2_1609:  %var_2_1609 = xor i32 %var_2_1606, %var_2_1608
; %var_2_1500 = xor i32 %var_2_1497, %var_2_1499
; Matched:%var_2_2126:  %var_2_2126 = add nuw nsw i32 %var_2_2125, %var_2_2122
; %var_2_1501 = add nuw nsw i32 %var_2_1500, %var_2_1497
; Matched:%var_2_1459:  %var_2_1459 = icmp eq i32 %var_2_1458, 2
; %var_2_1502 = icmp eq i32 %var_2_1501, 2
; Matched:%var_2_2128:  %var_2_2128 = zext i1 %var_2_2127 to i8
; %var_2_1503 = zext i1 %var_2_1502 to i8
; Matched:\<badref\>:  store i8 %var_2_1612, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1503, i8* %var_2_39, align 1
; Matched:%var_2_1461:  %var_2_1461 = sext i32 %var_2_1439 to i64
; %var_2_1504 = sext i32 %var_2_1482 to i64
; Matched:\<badref\>:  store i64 %var_2_1613, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1504, i64* %RSI.i1794, align 8
; Matched:%var_2_1462:  %var_2_1462 = shl nsw i64 %var_2_1461, 3
; %var_2_1505 = shl nsw i64 %var_2_1504, 3
; Matched:%var_2_1463:  %var_2_1463 = add i64 %var_2_1436, %var_2_1462
; %var_2_1506 = add i64 %var_2_1479, %var_2_1505
; Matched:%var_2_1112:  %var_2_1112 = add i64 %var_2_1063, 36
; %var_2_1507 = add i64 %var_2_1442, 36
; Matched:\<badref\>:  store i64 %var_2_1112, i64* %PC, align 8
; store i64 %var_2_1507, i64* %var_2_3, align 8
; Matched:%var_2_1465:  %var_2_1465 = bitcast i64 %var_2_1434 to double
; %var_2_1508 = bitcast i64 %var_2_1477 to double
; Matched:%var_2_1466:  %var_2_1466 = inttoptr i64 %var_2_1463 to double*
; %var_2_1509 = inttoptr i64 %var_2_1506 to double*
; Matched:%var_2_1467:  %var_2_1467 = load double, double* %var_2_1466, align 8
; %var_2_1510 = load double, double* %var_2_1509, align 8
; Matched:%var_2_1468:  %var_2_1468 = fadd double %var_2_1465, %var_2_1467
; %var_2_1511 = fadd double %var_2_1508, %var_2_1510
; Matched:\<badref\>:  store double %var_2_1468, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1511, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1469:  %var_2_1469 = load i64, i64* %RBP, align 8
; %var_2_1512 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1470:  %var_2_1470 = add i64 %var_2_1469, -136
; %var_2_1513 = add i64 %var_2_1512, -136
; Matched:%var_2_1623:  %var_2_1623 = add i64 %var_2_1551, 44
; %var_2_1514 = add i64 %var_2_1442, 44
; Matched:\<badref\>:  store i64 %var_2_1623, i64* %PC, align 8
; store i64 %var_2_1514, i64* %var_2_3, align 8
; Matched:%var_2_1472:  %var_2_1472 = inttoptr i64 %var_2_1470 to double*
; %var_2_1515 = inttoptr i64 %var_2_1513 to double*
; Matched:\<badref\>:  store double %var_2_1468, double* %var_2_1472, align 8
; store double %var_2_1511, double* %var_2_1515, align 8
%var_2_1516 = load i64, i64* %RBP.i, align 8
%var_2_1517 = add i64 %var_2_1516, -16
%var_2_1518 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_542:  %var_2_542 = add i64 %var_2_541, 4
; %var_2_1519 = add i64 %var_2_1518, 4
; Matched:\<badref\>:  store i64 %var_2_2496, i64* %PC, align 8
; store i64 %var_2_1519, i64* %var_2_3, align 8
%var_2_1520 = inttoptr i64 %var_2_1517 to i64*
%var_2_1521 = load i64, i64* %var_2_1520, align 8
; Matched:\<badref\>:  store i64 %var_2_1078, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1521, i64* %RDX.i1791, align 8
%var_2_1522 = add i64 %var_2_1516, -28
; Matched:%var_2_971:  %var_2_971 = add i64 %var_2_966, 7
; %var_2_1523 = add i64 %var_2_1518, 7
; Matched:\<badref\>:  store i64 %var_2_2728, i64* %PC, align 8
; store i64 %var_2_1523, i64* %var_2_3, align 8
%var_2_1524 = inttoptr i64 %var_2_1522 to i32*
%var_2_1525 = load i32, i32* %var_2_1524, align 4
%var_2_1526 = add i32 %var_2_1525, 4
; Matched:%var_2_1332:  %var_2_1332 = zext i32 %var_2_1331 to i64
; %var_2_1527 = zext i32 %var_2_1526 to i64
; Matched:\<badref\>:  store i64 %var_2_1484, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1527, i64* %RCX.i1272, align 8
; Matched:%var_2_1333:  %var_2_1333 = icmp ugt i32 %var_2_1330, -5
; %var_2_1528 = icmp ugt i32 %var_2_1525, -5
; Matched:%var_2_1334:  %var_2_1334 = zext i1 %var_2_1333 to i8
; %var_2_1529 = zext i1 %var_2_1528 to i8
; Matched:\<badref\>:  store i8 %var_2_1486, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1529, i8* %var_2_14, align 1
; Matched:%var_2_1487:  %var_2_1487 = and i32 %var_2_1483, 255
; %var_2_1530 = and i32 %var_2_1526, 255
; Matched:%var_2_1336:  %var_2_1336 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1335) #14
; %var_2_1531 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1530)
; Matched:%var_2_1763:  %var_2_1763 = trunc i32 %var_2_1762 to i8
; %var_2_1532 = trunc i32 %var_2_1531 to i8
; Matched:%var_2_1338:  %var_2_1338 = and i8 %var_2_1337, 1
; %var_2_1533 = and i8 %var_2_1532, 1
; Matched:%var_2_1491:  %var_2_1491 = xor i8 %var_2_1490, 1
; %var_2_1534 = xor i8 %var_2_1533, 1
; Matched:\<badref\>:  store i8 %var_2_1339, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1534, i8* %var_2_21, align 1
; Matched:%var_2_1340:  %var_2_1340 = xor i32 %var_2_1331, %var_2_1330
; %var_2_1535 = xor i32 %var_2_1526, %var_2_1525
; Matched:%var_2_1493:  %var_2_1493 = lshr i32 %var_2_1492, 4
; %var_2_1536 = lshr i32 %var_2_1535, 4
; Matched:%var_2_1494:  %var_2_1494 = trunc i32 %var_2_1493 to i8
; %var_2_1537 = trunc i32 %var_2_1536 to i8
; Matched:%var_2_1343:  %var_2_1343 = and i8 %var_2_1342, 1
; %var_2_1538 = and i8 %var_2_1537, 1
; Matched:\<badref\>:  store i8 %var_2_1769, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1538, i8* %var_2_27, align 1
; Matched:%var_2_1344:  %var_2_1344 = icmp eq i32 %var_2_1331, 0
; %var_2_1539 = icmp eq i32 %var_2_1526, 0
; Matched:%var_2_1497:  %var_2_1497 = zext i1 %var_2_1496 to i8
; %var_2_1540 = zext i1 %var_2_1539 to i8
; Matched:\<badref\>:  store i8 %var_2_1345, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1540, i8* %var_2_30, align 1
; Matched:%var_2_1346:  %var_2_1346 = lshr i32 %var_2_1331, 31
; %var_2_1541 = lshr i32 %var_2_1526, 31
; Matched:%var_2_1499:  %var_2_1499 = trunc i32 %var_2_1498 to i8
; %var_2_1542 = trunc i32 %var_2_1541 to i8
; Matched:\<badref\>:  store i8 %var_2_1499, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1542, i8* %var_2_33, align 1
; Matched:%var_2_1348:  %var_2_1348 = lshr i32 %var_2_1330, 31
; %var_2_1543 = lshr i32 %var_2_1525, 31
; Matched:%var_2_1775:  %var_2_1775 = xor i32 %var_2_1772, %var_2_1774
; %var_2_1544 = xor i32 %var_2_1541, %var_2_1543
; Matched:%var_2_1350:  %var_2_1350 = add nuw nsw i32 %var_2_1349, %var_2_1346
; %var_2_1545 = add nuw nsw i32 %var_2_1544, %var_2_1541
; Matched:%var_2_1503:  %var_2_1503 = icmp eq i32 %var_2_1502, 2
; %var_2_1546 = icmp eq i32 %var_2_1545, 2
; Matched:%var_2_1352:  %var_2_1352 = zext i1 %var_2_1351 to i8
; %var_2_1547 = zext i1 %var_2_1546 to i8
; Matched:\<badref\>:  store i8 %var_2_1352, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1547, i8* %var_2_39, align 1
%var_2_1548 = sext i32 %var_2_1526 to i64
; Matched:\<badref\>:  store i64 %var_2_1505, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1548, i64* %RSI.i1794, align 8
; Matched:%var_2_1354:  %var_2_1354 = shl nsw i64 %var_2_1353, 3
; %var_2_1549 = shl nsw i64 %var_2_1548, 3
; Matched:%var_2_1355:  %var_2_1355 = add i64 %var_2_1326, %var_2_1354
; %var_2_1550 = add i64 %var_2_1521, %var_2_1549
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_146, 18
; %var_2_1551 = add i64 %var_2_1518, 18
; Matched:\<badref\>:  store i64 %var_2_157, i64* %PC, align 8
; store i64 %var_2_1551, i64* %var_2_3, align 8
; Matched:%var_2_1357:  %var_2_1357 = inttoptr i64 %var_2_1355 to i64*
; %var_2_1552 = inttoptr i64 %var_2_1550 to i64*
; Matched:%var_2_1358:  %var_2_1358 = load i64, i64* %var_2_1357, align 8
; %var_2_1553 = load i64, i64* %var_2_1552, align 8
; Matched:\<badref\>:  store i64 %var_2_1510, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1553, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1511:  %var_2_1511 = add i64 %var_2_1475, 22
; %var_2_1554 = add i64 %var_2_1518, 22
; Matched:\<badref\>:  store i64 %var_2_80, i64* %PC, align 8
; store i64 %var_2_1554, i64* %var_2_3, align 8
%var_2_1555 = load i64, i64* %var_2_1520, align 8
; Matched:\<badref\>:  store i64 %var_2_1284, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1555, i64* %RDX.i1791, align 8
; Matched:%var_2_2685:  %var_2_2685 = add i64 %var_2_2647, 25
; %var_2_1556 = add i64 %var_2_1518, 25
; Matched:\<badref\>:  store i64 %var_2_2837, i64* %PC, align 8
; store i64 %var_2_1556, i64* %var_2_3, align 8
; Matched:%var_2_1514:  %var_2_1514 = load i32, i32* %var_2_1481, align 4
; %var_2_1557 = load i32, i32* %var_2_1524, align 4
; Matched:%var_2_2049:  %var_2_2049 = add i32 %var_2_2048, 6
; %var_2_1558 = add i32 %var_2_1557, 6
; Matched:%var_2_1364:  %var_2_1364 = zext i32 %var_2_1363 to i64
; %var_2_1559 = zext i32 %var_2_1558 to i64
; Matched:\<badref\>:  store i64 %var_2_2050, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1559, i64* %RCX.i1272, align 8
; Matched:%var_2_1517:  %var_2_1517 = icmp ugt i32 %var_2_1514, -7
; %var_2_1560 = icmp ugt i32 %var_2_1557, -7
; Matched:%var_2_1518:  %var_2_1518 = zext i1 %var_2_1517 to i8
; %var_2_1561 = zext i1 %var_2_1560 to i8
; Matched:\<badref\>:  store i8 %var_2_2052, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1561, i8* %var_2_14, align 1
; Matched:%var_2_2053:  %var_2_2053 = and i32 %var_2_2049, 255
; %var_2_1562 = and i32 %var_2_1558, 255
; Matched:%var_2_1520:  %var_2_1520 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1519) #14
; %var_2_1563 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1562)
; Matched:%var_2_2055:  %var_2_2055 = trunc i32 %var_2_2054 to i8
; %var_2_1564 = trunc i32 %var_2_1563 to i8
; Matched:%var_2_1370:  %var_2_1370 = and i8 %var_2_1369, 1
; %var_2_1565 = and i8 %var_2_1564, 1
; Matched:%var_2_2057:  %var_2_2057 = xor i8 %var_2_2056, 1
; %var_2_1566 = xor i8 %var_2_1565, 1
; Matched:\<badref\>:  store i8 %var_2_1523, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1566, i8* %var_2_21, align 1
; Matched:%var_2_1524:  %var_2_1524 = xor i32 %var_2_1515, %var_2_1514
; %var_2_1567 = xor i32 %var_2_1558, %var_2_1557
; Matched:%var_2_2059:  %var_2_2059 = lshr i32 %var_2_2058, 4
; %var_2_1568 = lshr i32 %var_2_1567, 4
; Matched:%var_2_2060:  %var_2_2060 = trunc i32 %var_2_2059 to i8
; %var_2_1569 = trunc i32 %var_2_1568 to i8
; Matched:%var_2_1527:  %var_2_1527 = and i8 %var_2_1526, 1
; %var_2_1570 = and i8 %var_2_1569, 1
; Matched:\<badref\>:  store i8 %var_2_2061, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1570, i8* %var_2_27, align 1
; Matched:%var_2_1376:  %var_2_1376 = icmp eq i32 %var_2_1363, 0
; %var_2_1571 = icmp eq i32 %var_2_1558, 0
; Matched:%var_2_2063:  %var_2_2063 = zext i1 %var_2_2062 to i8
; %var_2_1572 = zext i1 %var_2_1571 to i8
; Matched:\<badref\>:  store i8 %var_2_1529, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1572, i8* %var_2_30, align 1
; Matched:%var_2_1530:  %var_2_1530 = lshr i32 %var_2_1515, 31
; %var_2_1573 = lshr i32 %var_2_1558, 31
; Matched:%var_2_2065:  %var_2_2065 = trunc i32 %var_2_2064 to i8
; %var_2_1574 = trunc i32 %var_2_1573 to i8
; Matched:\<badref\>:  store i8 %var_2_2065, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1574, i8* %var_2_33, align 1
; Matched:%var_2_1532:  %var_2_1532 = lshr i32 %var_2_1514, 31
; %var_2_1575 = lshr i32 %var_2_1557, 31
; Matched:%var_2_2067:  %var_2_2067 = xor i32 %var_2_2064, %var_2_2066
; %var_2_1576 = xor i32 %var_2_1573, %var_2_1575
; Matched:%var_2_1382:  %var_2_1382 = add nuw nsw i32 %var_2_1381, %var_2_1378
; %var_2_1577 = add nuw nsw i32 %var_2_1576, %var_2_1573
; Matched:%var_2_2069:  %var_2_2069 = icmp eq i32 %var_2_2068, 2
; %var_2_1578 = icmp eq i32 %var_2_1577, 2
; Matched:%var_2_1536:  %var_2_1536 = zext i1 %var_2_1535 to i8
; %var_2_1579 = zext i1 %var_2_1578 to i8
; Matched:\<badref\>:  store i8 %var_2_1536, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1579, i8* %var_2_39, align 1
; Matched:%var_2_2071:  %var_2_2071 = sext i32 %var_2_2049 to i64
; %var_2_1580 = sext i32 %var_2_1558 to i64
; Matched:\<badref\>:  store i64 %var_2_2071, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1580, i64* %RSI.i1794, align 8
; Matched:%var_2_1538:  %var_2_1538 = shl nsw i64 %var_2_1537, 3
; %var_2_1581 = shl nsw i64 %var_2_1580, 3
; Matched:%var_2_1539:  %var_2_1539 = add i64 %var_2_1512, %var_2_1538
; %var_2_1582 = add i64 %var_2_1555, %var_2_1581
; Matched:%var_2_2332:  %var_2_2332 = add i64 %var_2_2267, 36
; %var_2_1583 = add i64 %var_2_1518, 36
; Matched:\<badref\>:  store i64 %var_2_2560, i64* %PC, align 8
; store i64 %var_2_1583, i64* %var_2_3, align 8
; Matched:%var_2_1541:  %var_2_1541 = bitcast i64 %var_2_1510 to double
; %var_2_1584 = bitcast i64 %var_2_1553 to double
; Matched:%var_2_1542:  %var_2_1542 = inttoptr i64 %var_2_1539 to double*
; %var_2_1585 = inttoptr i64 %var_2_1582 to double*
; Matched:%var_2_1543:  %var_2_1543 = load double, double* %var_2_1542, align 8
; %var_2_1586 = load double, double* %var_2_1585, align 8
; Matched:%var_2_1544:  %var_2_1544 = fsub double %var_2_1541, %var_2_1543
; %var_2_1587 = fsub double %var_2_1584, %var_2_1586
; Matched:\<badref\>:  store double %var_2_1544, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1587, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1545:  %var_2_1545 = load i64, i64* %RBP, align 8
; %var_2_1588 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1546:  %var_2_1546 = add i64 %var_2_1545, -144
; %var_2_1589 = add i64 %var_2_1588, -144
; Matched:%var_2_1471:  %var_2_1471 = add i64 %var_2_1399, 44
; %var_2_1590 = add i64 %var_2_1518, 44
; Matched:\<badref\>:  store i64 %var_2_1471, i64* %PC, align 8
; store i64 %var_2_1590, i64* %var_2_3, align 8
; Matched:%var_2_1548:  %var_2_1548 = inttoptr i64 %var_2_1546 to double*
; %var_2_1591 = inttoptr i64 %var_2_1589 to double*
; Matched:\<badref\>:  store double %var_2_1544, double* %var_2_1548, align 8
; store double %var_2_1587, double* %var_2_1591, align 8
%var_2_1592 = load i64, i64* %RBP.i, align 8
%var_2_1593 = add i64 %var_2_1592, -16
%var_2_1594 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_521:  %var_2_521 = add i64 %var_2_520, 4
; %var_2_1595 = add i64 %var_2_1594, 4
; Matched:\<badref\>:  store i64 %var_2_948, i64* %PC, align 8
; store i64 %var_2_1595, i64* %var_2_3, align 8
%var_2_1596 = inttoptr i64 %var_2_1593 to i64*
%var_2_1597 = load i64, i64* %var_2_1596, align 8
; Matched:\<badref\>:  store i64 %var_2_108, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1597, i64* %RDX.i1791, align 8
%var_2_1598 = add i64 %var_2_1592, -28
; Matched:%var_2_2141:  %var_2_2141 = add i64 %var_2_2136, 7
; %var_2_1599 = add i64 %var_2_1594, 7
; Matched:\<badref\>:  store i64 %var_2_1121, i64* %PC, align 8
; store i64 %var_2_1599, i64* %var_2_3, align 8
%var_2_1600 = inttoptr i64 %var_2_1598 to i32*
%var_2_1601 = load i32, i32* %var_2_1600, align 4
%var_2_1602 = add i32 %var_2_1601, 5
; Matched:%var_2_1816:  %var_2_1816 = zext i32 %var_2_1815 to i64
; %var_2_1603 = zext i32 %var_2_1602 to i64
; Matched:\<badref\>:  store i64 %var_2_1816, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1603, i64* %RCX.i1272, align 8
; Matched:%var_2_1817:  %var_2_1817 = icmp ugt i32 %var_2_1814, -6
; %var_2_1604 = icmp ugt i32 %var_2_1601, -6
; Matched:%var_2_1818:  %var_2_1818 = zext i1 %var_2_1817 to i8
; %var_2_1605 = zext i1 %var_2_1604 to i8
; Matched:\<badref\>:  store i8 %var_2_1818, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1605, i8* %var_2_14, align 1
; Matched:%var_2_1819:  %var_2_1819 = and i32 %var_2_1815, 255
; %var_2_1606 = and i32 %var_2_1602, 255
; Matched:%var_2_1564:  %var_2_1564 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1563) #14
; %var_2_1607 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1606)
; Matched:%var_2_1565:  %var_2_1565 = trunc i32 %var_2_1564 to i8
; %var_2_1608 = trunc i32 %var_2_1607 to i8
; Matched:%var_2_1822:  %var_2_1822 = and i8 %var_2_1821, 1
; %var_2_1609 = and i8 %var_2_1608, 1
; Matched:%var_2_1823:  %var_2_1823 = xor i8 %var_2_1822, 1
; %var_2_1610 = xor i8 %var_2_1609, 1
; Matched:\<badref\>:  store i8 %var_2_1823, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1610, i8* %var_2_21, align 1
; Matched:%var_2_1824:  %var_2_1824 = xor i32 %var_2_1815, %var_2_1814
; %var_2_1611 = xor i32 %var_2_1602, %var_2_1601
; Matched:%var_2_1825:  %var_2_1825 = lshr i32 %var_2_1824, 4
; %var_2_1612 = lshr i32 %var_2_1611, 4
; Matched:%var_2_1826:  %var_2_1826 = trunc i32 %var_2_1825 to i8
; %var_2_1613 = trunc i32 %var_2_1612 to i8
; Matched:%var_2_1571:  %var_2_1571 = and i8 %var_2_1570, 1
; %var_2_1614 = and i8 %var_2_1613, 1
; Matched:\<badref\>:  store i8 %var_2_1571, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1614, i8* %var_2_27, align 1
; Matched:%var_2_1828:  %var_2_1828 = icmp eq i32 %var_2_1815, 0
; %var_2_1615 = icmp eq i32 %var_2_1602, 0
; Matched:%var_2_1829:  %var_2_1829 = zext i1 %var_2_1828 to i8
; %var_2_1616 = zext i1 %var_2_1615 to i8
; Matched:\<badref\>:  store i8 %var_2_1829, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1616, i8* %var_2_30, align 1
; Matched:%var_2_1830:  %var_2_1830 = lshr i32 %var_2_1815, 31
; %var_2_1617 = lshr i32 %var_2_1602, 31
; Matched:%var_2_1831:  %var_2_1831 = trunc i32 %var_2_1830 to i8
; %var_2_1618 = trunc i32 %var_2_1617 to i8
; Matched:\<badref\>:  store i8 %var_2_1831, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1618, i8* %var_2_33, align 1
; Matched:%var_2_1576:  %var_2_1576 = lshr i32 %var_2_1558, 31
; %var_2_1619 = lshr i32 %var_2_1601, 31
; Matched:%var_2_1577:  %var_2_1577 = xor i32 %var_2_1574, %var_2_1576
; %var_2_1620 = xor i32 %var_2_1617, %var_2_1619
; Matched:%var_2_1834:  %var_2_1834 = add nuw nsw i32 %var_2_1833, %var_2_1830
; %var_2_1621 = add nuw nsw i32 %var_2_1620, %var_2_1617
; Matched:%var_2_1835:  %var_2_1835 = icmp eq i32 %var_2_1834, 2
; %var_2_1622 = icmp eq i32 %var_2_1621, 2
; Matched:%var_2_1836:  %var_2_1836 = zext i1 %var_2_1835 to i8
; %var_2_1623 = zext i1 %var_2_1622 to i8
; Matched:\<badref\>:  store i8 %var_2_1836, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1623, i8* %var_2_39, align 1
%var_2_1624 = sext i32 %var_2_1602 to i64
; Matched:\<badref\>:  store i64 %var_2_1837, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1624, i64* %RSI.i1794, align 8
; Matched:%var_2_1582:  %var_2_1582 = shl nsw i64 %var_2_1581, 3
; %var_2_1625 = shl nsw i64 %var_2_1624, 3
; Matched:%var_2_1583:  %var_2_1583 = add i64 %var_2_1554, %var_2_1582
; %var_2_1626 = add i64 %var_2_1597, %var_2_1625
; Matched:%var_2_2235:  %var_2_2235 = add i64 %var_2_2218, 18
; %var_2_1627 = add i64 %var_2_1594, 18
; Matched:\<badref\>:  store i64 %var_2_2001, i64* %PC, align 8
; store i64 %var_2_1627, i64* %var_2_3, align 8
; Matched:%var_2_1585:  %var_2_1585 = inttoptr i64 %var_2_1583 to i64*
; %var_2_1628 = inttoptr i64 %var_2_1626 to i64*
; Matched:%var_2_1586:  %var_2_1586 = load i64, i64* %var_2_1585, align 8
; %var_2_1629 = load i64, i64* %var_2_1628, align 8
; Matched:\<badref\>:  store i64 %var_2_1434, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1629, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_615:  %var_2_615 = add i64 %var_2_600, 22
; %var_2_1630 = add i64 %var_2_1594, 22
; Matched:\<badref\>:  store i64 %var_2_2531, i64* %PC, align 8
; store i64 %var_2_1630, i64* %var_2_3, align 8
%var_2_1631 = load i64, i64* %var_2_1596, align 8
; Matched:\<badref\>:  store i64 %var_2_2760, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1631, i64* %RDX.i1791, align 8
; Matched:%var_2_2305:  %var_2_2305 = add i64 %var_2_2267, 25
; %var_2_1632 = add i64 %var_2_1594, 25
; Matched:\<badref\>:  store i64 %var_2_2305, i64* %PC, align 8
; store i64 %var_2_1632, i64* %var_2_3, align 8
; Matched:%var_2_1438:  %var_2_1438 = load i32, i32* %var_2_1405, align 4
; %var_2_1633 = load i32, i32* %var_2_1600, align 4
; Matched:%var_2_2107:  %var_2_2107 = add i32 %var_2_2106, 7
; %var_2_1634 = add i32 %var_2_1633, 7
; Matched:%var_2_1592:  %var_2_1592 = zext i32 %var_2_1591 to i64
; %var_2_1635 = zext i32 %var_2_1634 to i64
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1635, i64* %RCX.i1272, align 8
; Matched:%var_2_1441:  %var_2_1441 = icmp ugt i32 %var_2_1438, -8
; %var_2_1636 = icmp ugt i32 %var_2_1633, -8
; Matched:%var_2_1594:  %var_2_1594 = zext i1 %var_2_1593 to i8
; %var_2_1637 = zext i1 %var_2_1636 to i8
; Matched:\<badref\>:  store i8 %var_2_2110, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1637, i8* %var_2_14, align 1
; Matched:%var_2_1595:  %var_2_1595 = and i32 %var_2_1591, 255
; %var_2_1638 = and i32 %var_2_1634, 255
; Matched:%var_2_1444:  %var_2_1444 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1443) #14
; %var_2_1639 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1638)
; Matched:%var_2_2113:  %var_2_2113 = trunc i32 %var_2_2112 to i8
; %var_2_1640 = trunc i32 %var_2_1639 to i8
; Matched:%var_2_1446:  %var_2_1446 = and i8 %var_2_1445, 1
; %var_2_1641 = and i8 %var_2_1640, 1
; Matched:%var_2_1599:  %var_2_1599 = xor i8 %var_2_1598, 1
; %var_2_1642 = xor i8 %var_2_1641, 1
; Matched:\<badref\>:  store i8 %var_2_1447, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1642, i8* %var_2_21, align 1
; Matched:%var_2_1600:  %var_2_1600 = xor i32 %var_2_1591, %var_2_1590
; %var_2_1643 = xor i32 %var_2_1634, %var_2_1633
; Matched:%var_2_2117:  %var_2_2117 = lshr i32 %var_2_2116, 4
; %var_2_1644 = lshr i32 %var_2_1643, 4
; Matched:%var_2_2118:  %var_2_2118 = trunc i32 %var_2_2117 to i8
; %var_2_1645 = trunc i32 %var_2_1644 to i8
; Matched:%var_2_1451:  %var_2_1451 = and i8 %var_2_1450, 1
; %var_2_1646 = and i8 %var_2_1645, 1
; Matched:\<badref\>:  store i8 %var_2_2119, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1646, i8* %var_2_27, align 1
; Matched:%var_2_1452:  %var_2_1452 = icmp eq i32 %var_2_1439, 0
; %var_2_1647 = icmp eq i32 %var_2_1634, 0
; Matched:%var_2_1605:  %var_2_1605 = zext i1 %var_2_1604 to i8
; %var_2_1648 = zext i1 %var_2_1647 to i8
; Matched:\<badref\>:  store i8 %var_2_1605, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1648, i8* %var_2_30, align 1
; Matched:%var_2_1606:  %var_2_1606 = lshr i32 %var_2_1591, 31
; %var_2_1649 = lshr i32 %var_2_1634, 31
; Matched:%var_2_2123:  %var_2_2123 = trunc i32 %var_2_2122 to i8
; %var_2_1650 = trunc i32 %var_2_1649 to i8
; Matched:\<badref\>:  store i8 %var_2_2123, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1650, i8* %var_2_33, align 1
; Matched:%var_2_1456:  %var_2_1456 = lshr i32 %var_2_1438, 31
; %var_2_1651 = lshr i32 %var_2_1633, 31
; Matched:%var_2_2125:  %var_2_2125 = xor i32 %var_2_2122, %var_2_2124
; %var_2_1652 = xor i32 %var_2_1649, %var_2_1651
; Matched:%var_2_1458:  %var_2_1458 = add nuw nsw i32 %var_2_1457, %var_2_1454
; %var_2_1653 = add nuw nsw i32 %var_2_1652, %var_2_1649
; Matched:%var_2_1611:  %var_2_1611 = icmp eq i32 %var_2_1610, 2
; %var_2_1654 = icmp eq i32 %var_2_1653, 2
; Matched:%var_2_1612:  %var_2_1612 = zext i1 %var_2_1611 to i8
; %var_2_1655 = zext i1 %var_2_1654 to i8
; Matched:\<badref\>:  store i8 %var_2_2128, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1655, i8* %var_2_39, align 1
; Matched:%var_2_2129:  %var_2_2129 = sext i32 %var_2_2107 to i64
; %var_2_1656 = sext i32 %var_2_1634 to i64
; Matched:\<badref\>:  store i64 %var_2_2129, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1656, i64* %RSI.i1794, align 8
; Matched:%var_2_1614:  %var_2_1614 = shl nsw i64 %var_2_1613, 3
; %var_2_1657 = shl nsw i64 %var_2_1656, 3
; Matched:%var_2_1615:  %var_2_1615 = add i64 %var_2_1588, %var_2_1614
; %var_2_1658 = add i64 %var_2_1631, %var_2_1657
; Matched:%var_2_2484:  %var_2_2484 = add i64 %var_2_2419, 36
; %var_2_1659 = add i64 %var_2_1594, 36
; Matched:\<badref\>:  store i64 %var_2_1312, i64* %PC, align 8
; store i64 %var_2_1659, i64* %var_2_3, align 8
; Matched:%var_2_1617:  %var_2_1617 = bitcast i64 %var_2_1586 to double
; %var_2_1660 = bitcast i64 %var_2_1629 to double
; Matched:%var_2_1618:  %var_2_1618 = inttoptr i64 %var_2_1615 to double*
; %var_2_1661 = inttoptr i64 %var_2_1658 to double*
; Matched:%var_2_1619:  %var_2_1619 = load double, double* %var_2_1618, align 8
; %var_2_1662 = load double, double* %var_2_1661, align 8
; Matched:%var_2_1620:  %var_2_1620 = fsub double %var_2_1617, %var_2_1619
; %var_2_1663 = fsub double %var_2_1660, %var_2_1662
; Matched:\<badref\>:  store double %var_2_1620, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1663, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1621:  %var_2_1621 = load i64, i64* %RBP, align 8
; %var_2_1664 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1622:  %var_2_1622 = add i64 %var_2_1621, -152
; %var_2_1665 = add i64 %var_2_1664, -152
; Matched:%var_2_3103:  %var_2_3103 = add i64 %var_2_3066, 44
; %var_2_1666 = add i64 %var_2_1594, 44
; Matched:\<badref\>:  store i64 %var_2_3103, i64* %PC, align 8
; store i64 %var_2_1666, i64* %var_2_3, align 8
; Matched:%var_2_1624:  %var_2_1624 = inttoptr i64 %var_2_1622 to double*
; %var_2_1667 = inttoptr i64 %var_2_1665 to double*
; Matched:\<badref\>:  store double %var_2_1620, double* %var_2_1624, align 8
; store double %var_2_1663, double* %var_2_1667, align 8
%var_2_1668 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_702:  %var_2_702 = add i64 %var_2_696, -96
; %var_2_1669 = add i64 %var_2_1668, -96
%var_2_1670 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, 5
; %var_2_1671 = add i64 %var_2_1670, 5
; Matched:\<badref\>:  store i64 %var_2_1845, i64* %PC, align 8
; store i64 %var_2_1671, i64* %var_2_3, align 8
; Matched:%var_2_704:  %var_2_704 = inttoptr i64 %var_2_702 to i64*
; %var_2_1672 = inttoptr i64 %var_2_1669 to i64*
; Matched:%var_2_705:  %var_2_705 = load i64, i64* %var_2_704, align 8
; %var_2_1673 = load i64, i64* %var_2_1672, align 8
; Matched:\<badref\>:  store i64 %var_2_705, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1673, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1631:  %var_2_1631 = add i64 %var_2_1625, -128
; %var_2_1674 = add i64 %var_2_1668, -128
; Matched:%var_2_3228:  %var_2_3228 = add i64 %var_2_3223, 10
; %var_2_1675 = add i64 %var_2_1670, 10
; Matched:\<badref\>:  store i64 %var_2_3228, i64* %PC, align 8
; store i64 %var_2_1675, i64* %var_2_3, align 8
; Matched:%var_2_1633:  %var_2_1633 = bitcast i64 %var_2_1630 to double
; %var_2_1676 = bitcast i64 %var_2_1673 to double
; Matched:%var_2_1634:  %var_2_1634 = inttoptr i64 %var_2_1631 to double*
; %var_2_1677 = inttoptr i64 %var_2_1674 to double*
; Matched:%var_2_1635:  %var_2_1635 = load double, double* %var_2_1634, align 8
; %var_2_1678 = load double, double* %var_2_1677, align 8
; Matched:%var_2_1636:  %var_2_1636 = fadd double %var_2_1633, %var_2_1635
; %var_2_1679 = fadd double %var_2_1676, %var_2_1678
; Matched:\<badref\>:  store double %var_2_1636, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1679, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1680 = add i64 %var_2_1668, -16
; Matched:%var_2_573:  %var_2_573 = add i64 %var_2_562, 14
; %var_2_1681 = add i64 %var_2_1670, 14
; Matched:\<badref\>:  store i64 %var_2_241, i64* %PC, align 8
; store i64 %var_2_1681, i64* %var_2_3, align 8
%var_2_1682 = inttoptr i64 %var_2_1680 to i64*
%var_2_1683 = load i64, i64* %var_2_1682, align 8
; Matched:\<badref\>:  store i64 %var_2_632, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1683, i64* %RDX.i1791, align 8
%var_2_1684 = add i64 %var_2_1668, -28
; Matched:%var_2_2210:  %var_2_2210 = add i64 %var_2_2177, 18
; %var_2_1685 = add i64 %var_2_1670, 18
; Matched:\<badref\>:  store i64 %var_2_2210, i64* %PC, align 8
; store i64 %var_2_1685, i64* %var_2_3, align 8
%var_2_1686 = inttoptr i64 %var_2_1684 to i32*
%var_2_1687 = load i32, i32* %var_2_1686, align 4
%var_2_1688 = sext i32 %var_2_1687 to i64
; Matched:\<badref\>:  store i64 %var_2_1645, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1688, i64* %RSI.i1794, align 8
; Matched:%var_2_1646:  %var_2_1646 = shl nsw i64 %var_2_1645, 3
; %var_2_1689 = shl nsw i64 %var_2_1688, 3
; Matched:%var_2_1647:  %var_2_1647 = add i64 %var_2_1646, %var_2_1640
; %var_2_1690 = add i64 %var_2_1689, %var_2_1683
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_415, 23
; %var_2_1691 = add i64 %var_2_1670, 23
; Matched:\<badref\>:  store i64 %var_2_432, i64* %PC, align 8
; store i64 %var_2_1691, i64* %var_2_3, align 8
; Matched:%var_2_1649:  %var_2_1649 = inttoptr i64 %var_2_1647 to double*
; %var_2_1692 = inttoptr i64 %var_2_1690 to double*
; Matched:\<badref\>:  store double %var_2_1636, double* %var_2_1649, align 8
; store double %var_2_1679, double* %var_2_1692, align 8
%var_2_1693 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_776, -104
; %var_2_1694 = add i64 %var_2_1693, -104
%var_2_1695 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1787:  %var_2_1787 = add i64 %var_2_1786, 5
; %var_2_1696 = add i64 %var_2_1695, 5
; Matched:\<badref\>:  store i64 %var_2_1701, i64* %PC, align 8
; store i64 %var_2_1696, i64* %var_2_3, align 8
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_782 to i64*
; %var_2_1697 = inttoptr i64 %var_2_1694 to i64*
; Matched:%var_2_1655:  %var_2_1655 = load i64, i64* %var_2_1654, align 8
; %var_2_1698 = load i64, i64* %var_2_1697, align 8
; Matched:\<badref\>:  store i64 %var_2_785, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1698, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1656:  %var_2_1656 = add i64 %var_2_1650, -136
; %var_2_1699 = add i64 %var_2_1693, -136
; Matched:%var_2_3286:  %var_2_3286 = add i64 %var_2_3281, 13
; %var_2_1700 = add i64 %var_2_1695, 13
; Matched:\<badref\>:  store i64 %var_2_3286, i64* %PC, align 8
; store i64 %var_2_1700, i64* %var_2_3, align 8
; Matched:%var_2_1658:  %var_2_1658 = bitcast i64 %var_2_1655 to double
; %var_2_1701 = bitcast i64 %var_2_1698 to double
; Matched:%var_2_1659:  %var_2_1659 = inttoptr i64 %var_2_1656 to double*
; %var_2_1702 = inttoptr i64 %var_2_1699 to double*
; Matched:%var_2_1660:  %var_2_1660 = load double, double* %var_2_1659, align 8
; %var_2_1703 = load double, double* %var_2_1702, align 8
; Matched:%var_2_1661:  %var_2_1661 = fadd double %var_2_1658, %var_2_1660
; %var_2_1704 = fadd double %var_2_1701, %var_2_1703
; Matched:\<badref\>:  store double %var_2_1661, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1704, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1705 = add i64 %var_2_1693, -16
; Matched:%var_2_259:  %var_2_259 = add i64 %var_2_248, 17
; %var_2_1706 = add i64 %var_2_1695, 17
; Matched:\<badref\>:  store i64 %var_2_115, i64* %PC, align 8
; store i64 %var_2_1706, i64* %var_2_3, align 8
%var_2_1707 = inttoptr i64 %var_2_1705 to i64*
%var_2_1708 = load i64, i64* %var_2_1707, align 8
; Matched:\<badref\>:  store i64 %var_2_155, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1708, i64* %RDX.i1791, align 8
%var_2_1709 = add i64 %var_2_1693, -28
; Matched:%var_2_2937:  %var_2_2937 = add i64 %var_2_2922, 20
; %var_2_1710 = add i64 %var_2_1695, 20
; Matched:\<badref\>:  store i64 %var_2_3238, i64* %PC, align 8
; store i64 %var_2_1710, i64* %var_2_3, align 8
%var_2_1711 = inttoptr i64 %var_2_1709 to i32*
%var_2_1712 = load i32, i32* %var_2_1711, align 4
%var_2_1713 = add i32 %var_2_1712, 1
; Matched:%var_2_1125:  %var_2_1125 = zext i32 %var_2_1124 to i64
; %var_2_1714 = zext i32 %var_2_1713 to i64
; Matched:\<badref\>:  store i64 %var_2_1255, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1714, i64* %RCX.i1272, align 8
; Matched:%var_2_1126:  %var_2_1126 = icmp eq i32 %var_2_1123, -1
; %var_2_1715 = icmp eq i32 %var_2_1712, -1
; Matched:%var_2_1673:  %var_2_1673 = icmp eq i32 %var_2_1670, 0
; %var_2_1716 = icmp eq i32 %var_2_1713, 0
; Matched:%var_2_1674:  %var_2_1674 = or i1 %var_2_1672, %var_2_1673
; %var_2_1717 = or i1 %var_2_1715, %var_2_1716
; Matched:%var_2_1675:  %var_2_1675 = zext i1 %var_2_1674 to i8
; %var_2_1718 = zext i1 %var_2_1717 to i8
; Matched:\<badref\>:  store i8 %var_2_1675, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1718, i8* %var_2_14, align 1
; Matched:%var_2_1260:  %var_2_1260 = and i32 %var_2_1254, 255
; %var_2_1719 = and i32 %var_2_1713, 255
; Matched:%var_2_1131:  %var_2_1131 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1130) #14
; %var_2_1720 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1719)
; Matched:%var_2_1262:  %var_2_1262 = trunc i32 %var_2_1261 to i8
; %var_2_1721 = trunc i32 %var_2_1720 to i8
; Matched:%var_2_1133:  %var_2_1133 = and i8 %var_2_1132, 1
; %var_2_1722 = and i8 %var_2_1721, 1
; Matched:%var_2_1264:  %var_2_1264 = xor i8 %var_2_1263, 1
; %var_2_1723 = xor i8 %var_2_1722, 1
; Matched:\<badref\>:  store i8 %var_2_1680, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1723, i8* %var_2_21, align 1
; Matched:%var_2_1681:  %var_2_1681 = xor i32 %var_2_1670, %var_2_1669
; %var_2_1724 = xor i32 %var_2_1713, %var_2_1712
; Matched:%var_2_1682:  %var_2_1682 = lshr i32 %var_2_1681, 4
; %var_2_1725 = lshr i32 %var_2_1724, 4
; Matched:%var_2_1267:  %var_2_1267 = trunc i32 %var_2_1266 to i8
; %var_2_1726 = trunc i32 %var_2_1725 to i8
; Matched:%var_2_1138:  %var_2_1138 = and i8 %var_2_1137, 1
; %var_2_1727 = and i8 %var_2_1726, 1
; Matched:\<badref\>:  store i8 %var_2_1268, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1727, i8* %var_2_27, align 1
; Matched:%var_2_1139:  %var_2_1139 = zext i1 %var_2_1127 to i8
; %var_2_1728 = zext i1 %var_2_1716 to i8
; Matched:\<badref\>:  store i8 %var_2_1269, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1728, i8* %var_2_30, align 1
; Matched:%var_2_1686:  %var_2_1686 = lshr i32 %var_2_1670, 31
; %var_2_1729 = lshr i32 %var_2_1713, 31
; Matched:%var_2_1141:  %var_2_1141 = trunc i32 %var_2_1140 to i8
; %var_2_1730 = trunc i32 %var_2_1729 to i8
; Matched:\<badref\>:  store i8 %var_2_1687, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1730, i8* %var_2_33, align 1
; Matched:%var_2_1142:  %var_2_1142 = lshr i32 %var_2_1123, 31
; %var_2_1731 = lshr i32 %var_2_1712, 31
; Matched:%var_2_1143:  %var_2_1143 = xor i32 %var_2_1140, %var_2_1142
; %var_2_1732 = xor i32 %var_2_1729, %var_2_1731
; Matched:%var_2_1274:  %var_2_1274 = add nuw nsw i32 %var_2_1273, %var_2_1270
; %var_2_1733 = add nuw nsw i32 %var_2_1732, %var_2_1729
; Matched:%var_2_1145:  %var_2_1145 = icmp eq i32 %var_2_1144, 2
; %var_2_1734 = icmp eq i32 %var_2_1733, 2
; Matched:%var_2_1276:  %var_2_1276 = zext i1 %var_2_1275 to i8
; %var_2_1735 = zext i1 %var_2_1734 to i8
; Matched:\<badref\>:  store i8 %var_2_1692, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1735, i8* %var_2_39, align 1
%var_2_1736 = sext i32 %var_2_1713 to i64
; Matched:\<badref\>:  store i64 %var_2_1693, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1736, i64* %RSI.i1794, align 8
; Matched:%var_2_1694:  %var_2_1694 = shl nsw i64 %var_2_1693, 3
; %var_2_1737 = shl nsw i64 %var_2_1736, 3
; Matched:%var_2_1695:  %var_2_1695 = add i64 %var_2_1665, %var_2_1694
; %var_2_1738 = add i64 %var_2_1708, %var_2_1737
; Matched:%var_2_1900:  %var_2_1900 = add i64 %var_2_1874, 31
; %var_2_1739 = add i64 %var_2_1695, 31
; Matched:\<badref\>:  store i64 %var_2_3395, i64* %PC, align 8
; store i64 %var_2_1739, i64* %var_2_3, align 8
; Matched:%var_2_1697:  %var_2_1697 = inttoptr i64 %var_2_1695 to double*
; %var_2_1740 = inttoptr i64 %var_2_1738 to double*
; Matched:\<badref\>:  store double %var_2_1661, double* %var_2_1697, align 8
; store double %var_2_1704, double* %var_2_1740, align 8
; Matched:%var_2_2967:  %var_2_2967 = load i64, i64* %RBP, align 8
; %var_2_1741 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2968:  %var_2_2968 = add i64 %var_2_2967, -128
; %var_2_1742 = add i64 %var_2_1741, -128
%var_2_1743 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2079:  %var_2_2079 = add i64 %var_2_2078, 5
; %var_2_1744 = add i64 %var_2_1743, 5
; Matched:\<badref\>:  store i64 %var_2_1991, i64* %PC, align 8
; store i64 %var_2_1744, i64* %var_2_3, align 8
; Matched:%var_2_2971:  %var_2_2971 = inttoptr i64 %var_2_2968 to i64*
; %var_2_1745 = inttoptr i64 %var_2_1742 to i64*
; Matched:%var_2_1703:  %var_2_1703 = load i64, i64* %var_2_1702, align 8
; %var_2_1746 = load i64, i64* %var_2_1745, align 8
; Matched:\<badref\>:  store i64 %var_2_1703, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1746, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2973:  %var_2_2973 = add i64 %var_2_2967, -96
; %var_2_1747 = add i64 %var_2_1741, -96
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_12, 10
; %var_2_1748 = add i64 %var_2_1743, 10
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_1748, i64* %var_2_3, align 8
; Matched:%var_2_2975:  %var_2_2975 = inttoptr i64 %var_2_2973 to double*
; %var_2_1749 = inttoptr i64 %var_2_1747 to double*
; Matched:%var_2_2976:  %var_2_2976 = load double, double* %var_2_2975, align 8
; %var_2_1750 = load double, double* %var_2_1749, align 8
; Matched:%var_2_1708:  %var_2_1708 = bitcast i64 %var_2_1703 to double
; %var_2_1751 = bitcast i64 %var_2_1746 to double
; Matched:%var_2_1709:  %var_2_1709 = fsub double %var_2_1707, %var_2_1708
; %var_2_1752 = fsub double %var_2_1750, %var_2_1751
; Matched:\<badref\>:  store double %var_2_1709, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1752, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_2979:  %var_2_2979 = add i64 %var_2_2969, 19
; %var_2_1753 = add i64 %var_2_1743, 19
; Matched:\<badref\>:  store i64 %var_2_2979, i64* %PC, align 8
; store i64 %var_2_1753, i64* %var_2_3, align 8
; Matched:%var_2_2980:  %var_2_2980 = inttoptr i64 %var_2_2973 to double*
; %var_2_1754 = inttoptr i64 %var_2_1747 to double*
; Matched:\<badref\>:  store double %var_2_2978, double* %var_2_2980, align 8
; store double %var_2_1752, double* %var_2_1754, align 8
%var_2_1755 = load i64, i64* %RBP.i, align 8
%var_2_1756 = add i64 %var_2_1755, -136
%var_2_1757 = load i64, i64* %var_2_3, align 8
%var_2_1758 = add i64 %var_2_1757, 8
store i64 %var_2_1758, i64* %var_2_3, align 8
%var_2_1759 = inttoptr i64 %var_2_1756 to i64*
%var_2_1760 = load i64, i64* %var_2_1759, align 8
; Matched:\<badref\>:  store i64 %var_2_1717, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1760, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1718:  %var_2_1718 = add i64 %var_2_1712, -104
; %var_2_1761 = add i64 %var_2_1755, -104
; Matched:%var_2_2010:  %var_2_2010 = add i64 %var_2_2005, 13
; %var_2_1762 = add i64 %var_2_1757, 13
; Matched:\<badref\>:  store i64 %var_2_2010, i64* %PC, align 8
; store i64 %var_2_1762, i64* %var_2_3, align 8
; Matched:%var_2_1720:  %var_2_1720 = inttoptr i64 %var_2_1718 to double*
; %var_2_1763 = inttoptr i64 %var_2_1761 to double*
; Matched:%var_2_1721:  %var_2_1721 = load double, double* %var_2_1720, align 8
; %var_2_1764 = load double, double* %var_2_1763, align 8
; Matched:%var_2_2991:  %var_2_2991 = bitcast i64 %var_2_2986 to double
; %var_2_1765 = bitcast i64 %var_2_1760 to double
; Matched:%var_2_2992:  %var_2_2992 = fsub double %var_2_2990, %var_2_2991
; %var_2_1766 = fsub double %var_2_1764, %var_2_1765
; Matched:\<badref\>:  store double %var_2_1723, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1766, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_248, 22
; %var_2_1767 = add i64 %var_2_1757, 22
; Matched:\<badref\>:  store i64 %var_2_1435, i64* %PC, align 8
; store i64 %var_2_1767, i64* %var_2_3, align 8
; Matched:%var_2_1725:  %var_2_1725 = inttoptr i64 %var_2_1718 to double*
; %var_2_1768 = inttoptr i64 %var_2_1761 to double*
; Matched:\<badref\>:  store double %var_2_1723, double* %var_2_1725, align 8
; store double %var_2_1766, double* %var_2_1768, align 8
%var_2_1769 = load i64, i64* %RBP.i, align 8
%var_2_1770 = add i64 %var_2_1769, -64
%var_2_1771 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3370:  %var_2_3370 = add i64 %var_2_3369, 5
; %var_2_1772 = add i64 %var_2_1771, 5
; Matched:\<badref\>:  store i64 %var_2_3282, i64* %PC, align 8
; store i64 %var_2_1772, i64* %var_2_3, align 8
%var_2_1773 = inttoptr i64 %var_2_1770 to i64*
%var_2_1774 = load i64, i64* %var_2_1773, align 8
; Matched:\<badref\>:  store i64 %var_2_1731, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1774, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1732:  %var_2_1732 = add i64 %var_2_1726, -96
; %var_2_1775 = add i64 %var_2_1769, -96
; Matched:%var_2_3316:  %var_2_3316 = add i64 %var_2_3311, 10
; %var_2_1776 = add i64 %var_2_1771, 10
; Matched:\<badref\>:  store i64 %var_2_3316, i64* %PC, align 8
; store i64 %var_2_1776, i64* %var_2_3, align 8
; Matched:%var_2_1734:  %var_2_1734 = bitcast i64 %var_2_1731 to double
; %var_2_1777 = bitcast i64 %var_2_1774 to double
; Matched:%var_2_1735:  %var_2_1735 = inttoptr i64 %var_2_1732 to double*
; %var_2_1778 = inttoptr i64 %var_2_1775 to double*
; Matched:%var_2_1736:  %var_2_1736 = load double, double* %var_2_1735, align 8
; %var_2_1779 = load double, double* %var_2_1778, align 8
; Matched:%var_2_1737:  %var_2_1737 = fmul double %var_2_1734, %var_2_1736
; %var_2_1780 = fmul double %var_2_1777, %var_2_1779
; Matched:\<badref\>:  store double %var_2_3096, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1780, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1738:  %var_2_1738 = add i64 %var_2_1726, -72
; %var_2_1781 = add i64 %var_2_1769, -72
; Matched:%var_2_762:  %var_2_762 = add i64 %var_2_753, 15
; %var_2_1782 = add i64 %var_2_1771, 15
; Matched:\<badref\>:  store i64 %var_2_2258, i64* %PC, align 8
; store i64 %var_2_1782, i64* %var_2_3, align 8
; Matched:%var_2_1740:  %var_2_1740 = inttoptr i64 %var_2_1738 to i64*
; %var_2_1783 = inttoptr i64 %var_2_1781 to i64*
; Matched:%var_2_1741:  %var_2_1741 = load i64, i64* %var_2_1740, align 8
; %var_2_1784 = load i64, i64* %var_2_1783, align 8
; Matched:\<badref\>:  store i64 %var_2_1741, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_1784, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_1742:  %var_2_1742 = add i64 %var_2_1726, -104
; %var_2_1785 = add i64 %var_2_1769, -104
; Matched:%var_2_2263:  %var_2_2263 = add i64 %var_2_2246, 20
; %var_2_1786 = add i64 %var_2_1771, 20
; Matched:\<badref\>:  store i64 %var_2_2263, i64* %PC, align 8
; store i64 %var_2_1786, i64* %var_2_3, align 8
; Matched:%var_2_1744:  %var_2_1744 = bitcast i64 %var_2_1741 to double
; %var_2_1787 = bitcast i64 %var_2_1784 to double
; Matched:%var_2_1745:  %var_2_1745 = inttoptr i64 %var_2_1742 to double*
; %var_2_1788 = inttoptr i64 %var_2_1785 to double*
; Matched:%var_2_1746:  %var_2_1746 = load double, double* %var_2_1745, align 8
; %var_2_1789 = load double, double* %var_2_1788, align 8
; Matched:%var_2_1747:  %var_2_1747 = fmul double %var_2_1744, %var_2_1746
; %var_2_1790 = fmul double %var_2_1787, %var_2_1789
; Matched:\<badref\>:  store double %var_2_1747, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1790, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_1748:  %var_2_1748 = fsub double %var_2_1737, %var_2_1747
; %var_2_1791 = fsub double %var_2_1780, %var_2_1790
; Matched:\<badref\>:  store double %var_2_1748, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1791, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1792 = add i64 %var_2_1769, -16
; Matched:%var_2_1750:  %var_2_1750 = add i64 %var_2_1728, 28
; %var_2_1793 = add i64 %var_2_1771, 28
; Matched:\<badref\>:  store i64 %var_2_1750, i64* %PC, align 8
; store i64 %var_2_1793, i64* %var_2_3, align 8
%var_2_1794 = inttoptr i64 %var_2_1792 to i64*
%var_2_1795 = load i64, i64* %var_2_1794, align 8
; Matched:\<badref\>:  store i64 %var_2_1752, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1795, i64* %RDX.i1791, align 8
%var_2_1796 = add i64 %var_2_1769, -28
; Matched:%var_2_2965:  %var_2_2965 = add i64 %var_2_2922, 31
; %var_2_1797 = add i64 %var_2_1771, 31
; Matched:\<badref\>:  store i64 %var_2_1900, i64* %PC, align 8
; store i64 %var_2_1797, i64* %var_2_3, align 8
%var_2_1798 = inttoptr i64 %var_2_1796 to i32*
%var_2_1799 = load i32, i32* %var_2_1798, align 4
%var_2_1800 = add i32 %var_2_1799, 4
; Matched:%var_2_1484:  %var_2_1484 = zext i32 %var_2_1483 to i64
; %var_2_1801 = zext i32 %var_2_1800 to i64
; Matched:\<badref\>:  store i64 %var_2_1758, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1801, i64* %RCX.i1272, align 8
; Matched:%var_2_1485:  %var_2_1485 = icmp ugt i32 %var_2_1482, -5
; %var_2_1802 = icmp ugt i32 %var_2_1799, -5
; Matched:%var_2_1486:  %var_2_1486 = zext i1 %var_2_1485 to i8
; %var_2_1803 = zext i1 %var_2_1802 to i8
; Matched:\<badref\>:  store i8 %var_2_1760, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1803, i8* %var_2_14, align 1
; Matched:%var_2_1761:  %var_2_1761 = and i32 %var_2_1757, 255
; %var_2_1804 = and i32 %var_2_1800, 255
; Matched:%var_2_1488:  %var_2_1488 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1487) #14
; %var_2_1805 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1804)
; Matched:%var_2_1337:  %var_2_1337 = trunc i32 %var_2_1336 to i8
; %var_2_1806 = trunc i32 %var_2_1805 to i8
; Matched:%var_2_1490:  %var_2_1490 = and i8 %var_2_1489, 1
; %var_2_1807 = and i8 %var_2_1806, 1
; Matched:%var_2_1765:  %var_2_1765 = xor i8 %var_2_1764, 1
; %var_2_1808 = xor i8 %var_2_1807, 1
; Matched:\<badref\>:  store i8 %var_2_1491, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1808, i8* %var_2_21, align 1
; Matched:%var_2_1492:  %var_2_1492 = xor i32 %var_2_1483, %var_2_1482
; %var_2_1809 = xor i32 %var_2_1800, %var_2_1799
; Matched:%var_2_1767:  %var_2_1767 = lshr i32 %var_2_1766, 4
; %var_2_1810 = lshr i32 %var_2_1809, 4
; Matched:%var_2_1768:  %var_2_1768 = trunc i32 %var_2_1767 to i8
; %var_2_1811 = trunc i32 %var_2_1810 to i8
; Matched:%var_2_1495:  %var_2_1495 = and i8 %var_2_1494, 1
; %var_2_1812 = and i8 %var_2_1811, 1
; Matched:\<badref\>:  store i8 %var_2_1343, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1812, i8* %var_2_27, align 1
; Matched:%var_2_1496:  %var_2_1496 = icmp eq i32 %var_2_1483, 0
; %var_2_1813 = icmp eq i32 %var_2_1800, 0
; Matched:%var_2_1771:  %var_2_1771 = zext i1 %var_2_1770 to i8
; %var_2_1814 = zext i1 %var_2_1813 to i8
; Matched:\<badref\>:  store i8 %var_2_1497, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1814, i8* %var_2_30, align 1
; Matched:%var_2_1498:  %var_2_1498 = lshr i32 %var_2_1483, 31
; %var_2_1815 = lshr i32 %var_2_1800, 31
; Matched:%var_2_1773:  %var_2_1773 = trunc i32 %var_2_1772 to i8
; %var_2_1816 = trunc i32 %var_2_1815 to i8
; Matched:\<badref\>:  store i8 %var_2_1773, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1816, i8* %var_2_33, align 1
; Matched:%var_2_1500:  %var_2_1500 = lshr i32 %var_2_1482, 31
; %var_2_1817 = lshr i32 %var_2_1799, 31
; Matched:%var_2_1349:  %var_2_1349 = xor i32 %var_2_1346, %var_2_1348
; %var_2_1818 = xor i32 %var_2_1815, %var_2_1817
; Matched:%var_2_1502:  %var_2_1502 = add nuw nsw i32 %var_2_1501, %var_2_1498
; %var_2_1819 = add nuw nsw i32 %var_2_1818, %var_2_1815
; Matched:%var_2_1777:  %var_2_1777 = icmp eq i32 %var_2_1776, 2
; %var_2_1820 = icmp eq i32 %var_2_1819, 2
; Matched:%var_2_1504:  %var_2_1504 = zext i1 %var_2_1503 to i8
; %var_2_1821 = zext i1 %var_2_1820 to i8
; Matched:\<badref\>:  store i8 %var_2_1504, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1821, i8* %var_2_39, align 1
%var_2_1822 = sext i32 %var_2_1800 to i64
; Matched:\<badref\>:  store i64 %var_2_1779, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1822, i64* %RSI.i1794, align 8
; Matched:%var_2_1780:  %var_2_1780 = shl nsw i64 %var_2_1779, 3
; %var_2_1823 = shl nsw i64 %var_2_1822, 3
; Matched:%var_2_1781:  %var_2_1781 = add i64 %var_2_1752, %var_2_1780
; %var_2_1824 = add i64 %var_2_1795, %var_2_1823
; Matched:%var_2_3219:  %var_2_3219 = add i64 %var_2_3165, 42
; %var_2_1825 = add i64 %var_2_1771, 42
; Matched:\<badref\>:  store i64 %var_2_1840, i64* %PC, align 8
; store i64 %var_2_1825, i64* %var_2_3, align 8
; Matched:%var_2_1783:  %var_2_1783 = inttoptr i64 %var_2_1781 to double*
; %var_2_1826 = inttoptr i64 %var_2_1824 to double*
; Matched:\<badref\>:  store double %var_2_1748, double* %var_2_1783, align 8
; store double %var_2_1791, double* %var_2_1826, align 8
%var_2_1827 = load i64, i64* %RBP.i, align 8
%var_2_1828 = add i64 %var_2_1827, -64
%var_2_1829 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1009:  %var_2_1009 = add i64 %var_2_1008, 5
; %var_2_1830 = add i64 %var_2_1829, 5
; Matched:\<badref\>:  store i64 %var_2_2079, i64* %PC, align 8
; store i64 %var_2_1830, i64* %var_2_3, align 8
%var_2_1831 = inttoptr i64 %var_2_1828 to i64*
%var_2_1832 = load i64, i64* %var_2_1831, align 8
; Matched:\<badref\>:  store i64 %var_2_3021, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1832, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3022:  %var_2_3022 = add i64 %var_2_2995, -104
; %var_2_1833 = add i64 %var_2_1827, -104
; Matched:%var_2_624:  %var_2_624 = add i64 %var_2_619, 10
; %var_2_1834 = add i64 %var_2_1829, 10
; Matched:\<badref\>:  store i64 %var_2_624, i64* %PC, align 8
; store i64 %var_2_1834, i64* %var_2_3, align 8
; Matched:%var_2_3024:  %var_2_3024 = bitcast i64 %var_2_3021 to double
; %var_2_1835 = bitcast i64 %var_2_1832 to double
; Matched:%var_2_1793:  %var_2_1793 = inttoptr i64 %var_2_1790 to double*
; %var_2_1836 = inttoptr i64 %var_2_1833 to double*
; Matched:%var_2_1794:  %var_2_1794 = load double, double* %var_2_1793, align 8
; %var_2_1837 = load double, double* %var_2_1836, align 8
; Matched:%var_2_1795:  %var_2_1795 = fmul double %var_2_1792, %var_2_1794
; %var_2_1838 = fmul double %var_2_1835, %var_2_1837
; Matched:\<badref\>:  store double %var_2_1795, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1838, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1796:  %var_2_1796 = add i64 %var_2_1784, -72
; %var_2_1839 = add i64 %var_2_1827, -72
; Matched:%var_2_3322:  %var_2_3322 = add i64 %var_2_3311, 15
; %var_2_1840 = add i64 %var_2_1829, 15
; Matched:\<badref\>:  store i64 %var_2_3234, i64* %PC, align 8
; store i64 %var_2_1840, i64* %var_2_3, align 8
; Matched:%var_2_1798:  %var_2_1798 = inttoptr i64 %var_2_1796 to i64*
; %var_2_1841 = inttoptr i64 %var_2_1839 to i64*
; Matched:%var_2_1799:  %var_2_1799 = load i64, i64* %var_2_1798, align 8
; %var_2_1842 = load i64, i64* %var_2_1841, align 8
; Matched:\<badref\>:  store i64 %var_2_1799, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_1842, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_1800:  %var_2_1800 = add i64 %var_2_1784, -96
; %var_2_1843 = add i64 %var_2_1827, -96
; Matched:%var_2_1947:  %var_2_1947 = add i64 %var_2_1932, 20
; %var_2_1844 = add i64 %var_2_1829, 20
; Matched:\<badref\>:  store i64 %var_2_1209, i64* %PC, align 8
; store i64 %var_2_1844, i64* %var_2_3, align 8
; Matched:%var_2_1802:  %var_2_1802 = bitcast i64 %var_2_1799 to double
; %var_2_1845 = bitcast i64 %var_2_1842 to double
; Matched:%var_2_1803:  %var_2_1803 = inttoptr i64 %var_2_1800 to double*
; %var_2_1846 = inttoptr i64 %var_2_1843 to double*
; Matched:%var_2_1804:  %var_2_1804 = load double, double* %var_2_1803, align 8
; %var_2_1847 = load double, double* %var_2_1846, align 8
; Matched:%var_2_1805:  %var_2_1805 = fmul double %var_2_1802, %var_2_1804
; %var_2_1848 = fmul double %var_2_1845, %var_2_1847
; Matched:\<badref\>:  store double %var_2_1805, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1848, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_1806:  %var_2_1806 = fadd double %var_2_1795, %var_2_1805
; %var_2_1849 = fadd double %var_2_1838, %var_2_1848
; Matched:\<badref\>:  store double %var_2_1806, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1849, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1850 = add i64 %var_2_1827, -16
; Matched:%var_2_1954:  %var_2_1954 = add i64 %var_2_1932, 28
; %var_2_1851 = add i64 %var_2_1829, 28
; Matched:\<badref\>:  store i64 %var_2_1954, i64* %PC, align 8
; store i64 %var_2_1851, i64* %var_2_3, align 8
%var_2_1852 = inttoptr i64 %var_2_1850 to i64*
%var_2_1853 = load i64, i64* %var_2_1852, align 8
; Matched:\<badref\>:  store i64 %var_2_2684, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1853, i64* %RDX.i1791, align 8
%var_2_1854 = add i64 %var_2_1827, -28
; Matched:%var_2_3337:  %var_2_3337 = add i64 %var_2_3311, 31
; %var_2_1855 = add i64 %var_2_1829, 31
; Matched:\<badref\>:  store i64 %var_2_1958, i64* %PC, align 8
; store i64 %var_2_1855, i64* %var_2_3, align 8
%var_2_1856 = inttoptr i64 %var_2_1854 to i32*
%var_2_1857 = load i32, i32* %var_2_1856, align 4
%var_2_1858 = add i32 %var_2_1857, 5
; Matched:%var_2_1408:  %var_2_1408 = zext i32 %var_2_1407 to i64
; %var_2_1859 = zext i32 %var_2_1858 to i64
; Matched:\<badref\>:  store i64 %var_2_1408, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1859, i64* %RCX.i1272, align 8
; Matched:%var_2_1409:  %var_2_1409 = icmp ugt i32 %var_2_1406, -6
; %var_2_1860 = icmp ugt i32 %var_2_1857, -6
; Matched:%var_2_1410:  %var_2_1410 = zext i1 %var_2_1409 to i8
; %var_2_1861 = zext i1 %var_2_1860 to i8
; Matched:\<badref\>:  store i8 %var_2_1410, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1861, i8* %var_2_14, align 1
; Matched:%var_2_1411:  %var_2_1411 = and i32 %var_2_1407, 255
; %var_2_1862 = and i32 %var_2_1858, 255
; Matched:%var_2_1820:  %var_2_1820 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1819) #14
; %var_2_1863 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1862)
; Matched:%var_2_1821:  %var_2_1821 = trunc i32 %var_2_1820 to i8
; %var_2_1864 = trunc i32 %var_2_1863 to i8
; Matched:%var_2_1414:  %var_2_1414 = and i8 %var_2_1413, 1
; %var_2_1865 = and i8 %var_2_1864, 1
; Matched:%var_2_1415:  %var_2_1415 = xor i8 %var_2_1414, 1
; %var_2_1866 = xor i8 %var_2_1865, 1
; Matched:\<badref\>:  store i8 %var_2_1415, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1866, i8* %var_2_21, align 1
; Matched:%var_2_1416:  %var_2_1416 = xor i32 %var_2_1407, %var_2_1406
; %var_2_1867 = xor i32 %var_2_1858, %var_2_1857
; Matched:%var_2_1417:  %var_2_1417 = lshr i32 %var_2_1416, 4
; %var_2_1868 = lshr i32 %var_2_1867, 4
; Matched:%var_2_1418:  %var_2_1418 = trunc i32 %var_2_1417 to i8
; %var_2_1869 = trunc i32 %var_2_1868 to i8
; Matched:%var_2_1827:  %var_2_1827 = and i8 %var_2_1826, 1
; %var_2_1870 = and i8 %var_2_1869, 1
; Matched:\<badref\>:  store i8 %var_2_1827, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1870, i8* %var_2_27, align 1
; Matched:%var_2_1420:  %var_2_1420 = icmp eq i32 %var_2_1407, 0
; %var_2_1871 = icmp eq i32 %var_2_1858, 0
; Matched:%var_2_1421:  %var_2_1421 = zext i1 %var_2_1420 to i8
; %var_2_1872 = zext i1 %var_2_1871 to i8
; Matched:\<badref\>:  store i8 %var_2_1421, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1872, i8* %var_2_30, align 1
; Matched:%var_2_1422:  %var_2_1422 = lshr i32 %var_2_1407, 31
; %var_2_1873 = lshr i32 %var_2_1858, 31
; Matched:%var_2_1423:  %var_2_1423 = trunc i32 %var_2_1422 to i8
; %var_2_1874 = trunc i32 %var_2_1873 to i8
; Matched:\<badref\>:  store i8 %var_2_1423, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1874, i8* %var_2_33, align 1
; Matched:%var_2_1832:  %var_2_1832 = lshr i32 %var_2_1814, 31
; %var_2_1875 = lshr i32 %var_2_1857, 31
; Matched:%var_2_1833:  %var_2_1833 = xor i32 %var_2_1830, %var_2_1832
; %var_2_1876 = xor i32 %var_2_1873, %var_2_1875
; Matched:%var_2_1426:  %var_2_1426 = add nuw nsw i32 %var_2_1425, %var_2_1422
; %var_2_1877 = add nuw nsw i32 %var_2_1876, %var_2_1873
; Matched:%var_2_1427:  %var_2_1427 = icmp eq i32 %var_2_1426, 2
; %var_2_1878 = icmp eq i32 %var_2_1877, 2
; Matched:%var_2_1428:  %var_2_1428 = zext i1 %var_2_1427 to i8
; %var_2_1879 = zext i1 %var_2_1878 to i8
; Matched:\<badref\>:  store i8 %var_2_1428, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1879, i8* %var_2_39, align 1
%var_2_1880 = sext i32 %var_2_1858 to i64
; Matched:\<badref\>:  store i64 %var_2_1429, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1880, i64* %RSI.i1794, align 8
; Matched:%var_2_1838:  %var_2_1838 = shl nsw i64 %var_2_1837, 3
; %var_2_1881 = shl nsw i64 %var_2_1880, 3
; Matched:%var_2_1839:  %var_2_1839 = add i64 %var_2_1810, %var_2_1838
; %var_2_1882 = add i64 %var_2_1853, %var_2_1881
; Matched:%var_2_3365:  %var_2_3365 = add i64 %var_2_3311, 42
; %var_2_1883 = add i64 %var_2_1829, 42
; Matched:\<badref\>:  store i64 %var_2_1986, i64* %PC, align 8
; store i64 %var_2_1883, i64* %var_2_3, align 8
; Matched:%var_2_1841:  %var_2_1841 = inttoptr i64 %var_2_1839 to double*
; %var_2_1884 = inttoptr i64 %var_2_1882 to double*
; Matched:\<badref\>:  store double %var_2_1806, double* %var_2_1841, align 8
; store double %var_2_1849, double* %var_2_1884, align 8
%var_2_1885 = load i64, i64* %RBP.i, align 8
%var_2_1886 = add i64 %var_2_1885, -112
%var_2_1887 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2970:  %var_2_2970 = add i64 %var_2_2969, 5
; %var_2_1888 = add i64 %var_2_1887, 5
; Matched:\<badref\>:  store i64 %var_2_3224, i64* %PC, align 8
; store i64 %var_2_1888, i64* %var_2_3, align 8
%var_2_1889 = inttoptr i64 %var_2_1886 to i64*
%var_2_1890 = load i64, i64* %var_2_1889, align 8
; Matched:\<badref\>:  store i64 %var_2_1847, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1890, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_1891 = add i64 %var_2_1885, -152
; Matched:%var_2_1074:  %var_2_1074 = add i64 %var_2_1063, 13
; %var_2_1892 = add i64 %var_2_1887, 13
; Matched:\<badref\>:  store i64 %var_2_1074, i64* %PC, align 8
; store i64 %var_2_1892, i64* %var_2_3, align 8
%var_2_1893 = bitcast i64 %var_2_1890 to double
%var_2_1894 = inttoptr i64 %var_2_1891 to double*
%var_2_1895 = load double, double* %var_2_1894, align 8
%var_2_1896 = fsub double %var_2_1893, %var_2_1895
; Matched:\<badref\>:  store double %var_2_1853, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1896, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_648:  %var_2_648 = add i64 %var_2_636, -96
; %var_2_1897 = add i64 %var_2_1885, -96
; Matched:%var_2_2604:  %var_2_2604 = add i64 %var_2_2571, 18
; %var_2_1898 = add i64 %var_2_1887, 18
; Matched:\<badref\>:  store i64 %var_2_2604, i64* %PC, align 8
; store i64 %var_2_1898, i64* %var_2_3, align 8
; Matched:%var_2_650:  %var_2_650 = inttoptr i64 %var_2_648 to double*
; %var_2_1899 = inttoptr i64 %var_2_1897 to double*
; Matched:\<badref\>:  store double %var_2_647, double* %var_2_650, align 8
; store double %var_2_1896, double* %var_2_1899, align 8
%var_2_1900 = load i64, i64* %RBP.i, align 8
%var_2_1901 = add i64 %var_2_1900, -120
%var_2_1902 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3067:  %var_2_3067 = add i64 %var_2_3066, 5
; %var_2_1903 = add i64 %var_2_1902, 5
; Matched:\<badref\>:  store i64 %var_2_3151, i64* %PC, align 8
; store i64 %var_2_1903, i64* %var_2_3, align 8
%var_2_1904 = inttoptr i64 %var_2_1901 to i64*
%var_2_1905 = load i64, i64* %var_2_1904, align 8
; Matched:\<badref\>:  store i64 %var_2_1862, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1905, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_1906 = add i64 %var_2_1900, -144
; Matched:%var_2_3155:  %var_2_3155 = add i64 %var_2_3150, 13
; %var_2_1907 = add i64 %var_2_1902, 13
; Matched:\<badref\>:  store i64 %var_2_3155, i64* %PC, align 8
; store i64 %var_2_1907, i64* %var_2_3, align 8
%var_2_1908 = bitcast i64 %var_2_1905 to double
%var_2_1909 = inttoptr i64 %var_2_1906 to double*
%var_2_1910 = load double, double* %var_2_1909, align 8
%var_2_1911 = fadd double %var_2_1908, %var_2_1910
; Matched:\<badref\>:  store double %var_2_1868, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1911, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_663:  %var_2_663 = add i64 %var_2_651, -104
; %var_2_1912 = add i64 %var_2_1900, -104
; Matched:%var_2_3161:  %var_2_3161 = add i64 %var_2_3150, 18
; %var_2_1913 = add i64 %var_2_1902, 18
; Matched:\<badref\>:  store i64 %var_2_3161, i64* %PC, align 8
; store i64 %var_2_1913, i64* %var_2_3, align 8
; Matched:%var_2_665:  %var_2_665 = inttoptr i64 %var_2_663 to double*
; %var_2_1914 = inttoptr i64 %var_2_1912 to double*
; Matched:\<badref\>:  store double %var_2_662, double* %var_2_665, align 8
; store double %var_2_1911, double* %var_2_1914, align 8
%var_2_1915 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1007:  %var_2_1007 = add i64 %var_2_1006, -48
; %var_2_1916 = add i64 %var_2_1915, -48
%var_2_1917 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3166:  %var_2_3166 = add i64 %var_2_3165, 5
; %var_2_1918 = add i64 %var_2_1917, 5
; Matched:\<badref\>:  store i64 %var_2_1653, i64* %PC, align 8
; store i64 %var_2_1918, i64* %var_2_3, align 8
; Matched:%var_2_1010:  %var_2_1010 = inttoptr i64 %var_2_1007 to i64*
; %var_2_1919 = inttoptr i64 %var_2_1916 to i64*
; Matched:%var_2_1877:  %var_2_1877 = load i64, i64* %var_2_1876, align 8
; %var_2_1920 = load i64, i64* %var_2_1919, align 8
; Matched:\<badref\>:  store i64 %var_2_1877, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1920, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1878:  %var_2_1878 = add i64 %var_2_1872, -96
; %var_2_1921 = add i64 %var_2_1915, -96
; Matched:%var_2_3170:  %var_2_3170 = add i64 %var_2_3165, 10
; %var_2_1922 = add i64 %var_2_1917, 10
; Matched:\<badref\>:  store i64 %var_2_3170, i64* %PC, align 8
; store i64 %var_2_1922, i64* %var_2_3, align 8
; Matched:%var_2_1880:  %var_2_1880 = bitcast i64 %var_2_1877 to double
; %var_2_1923 = bitcast i64 %var_2_1920 to double
; Matched:%var_2_1881:  %var_2_1881 = inttoptr i64 %var_2_1878 to double*
; %var_2_1924 = inttoptr i64 %var_2_1921 to double*
; Matched:%var_2_1882:  %var_2_1882 = load double, double* %var_2_1881, align 8
; %var_2_1925 = load double, double* %var_2_1924, align 8
; Matched:%var_2_1883:  %var_2_1883 = fmul double %var_2_1880, %var_2_1882
; %var_2_1926 = fmul double %var_2_1923, %var_2_1925
; Matched:\<badref\>:  store double %var_2_1883, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1926, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1884:  %var_2_1884 = add i64 %var_2_1872, -56
; %var_2_1927 = add i64 %var_2_1915, -56
; Matched:%var_2_2031:  %var_2_2031 = add i64 %var_2_2020, 15
; %var_2_1928 = add i64 %var_2_1917, 15
; Matched:\<badref\>:  store i64 %var_2_1943, i64* %PC, align 8
; store i64 %var_2_1928, i64* %var_2_3, align 8
; Matched:%var_2_1886:  %var_2_1886 = inttoptr i64 %var_2_1884 to i64*
; %var_2_1929 = inttoptr i64 %var_2_1927 to i64*
; Matched:%var_2_1887:  %var_2_1887 = load i64, i64* %var_2_1886, align 8
; %var_2_1930 = load i64, i64* %var_2_1929, align 8
; Matched:\<badref\>:  store i64 %var_2_1887, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_1930, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_1888:  %var_2_1888 = add i64 %var_2_1872, -104
; %var_2_1931 = add i64 %var_2_1915, -104
; Matched:%var_2_2035:  %var_2_2035 = add i64 %var_2_2020, 20
; %var_2_1932 = add i64 %var_2_1917, 20
; Matched:\<badref\>:  store i64 %var_2_3180, i64* %PC, align 8
; store i64 %var_2_1932, i64* %var_2_3, align 8
; Matched:%var_2_1890:  %var_2_1890 = bitcast i64 %var_2_1887 to double
; %var_2_1933 = bitcast i64 %var_2_1930 to double
; Matched:%var_2_1891:  %var_2_1891 = inttoptr i64 %var_2_1888 to double*
; %var_2_1934 = inttoptr i64 %var_2_1931 to double*
; Matched:%var_2_1892:  %var_2_1892 = load double, double* %var_2_1891, align 8
; %var_2_1935 = load double, double* %var_2_1934, align 8
; Matched:%var_2_1893:  %var_2_1893 = fmul double %var_2_1890, %var_2_1892
; %var_2_1936 = fmul double %var_2_1933, %var_2_1935
; Matched:\<badref\>:  store double %var_2_1893, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1936, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_1894:  %var_2_1894 = fsub double %var_2_1883, %var_2_1893
; %var_2_1937 = fsub double %var_2_1926, %var_2_1936
; Matched:\<badref\>:  store double %var_2_1894, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1937, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1938 = add i64 %var_2_1915, -16
; Matched:%var_2_2042:  %var_2_2042 = add i64 %var_2_2020, 28
; %var_2_1939 = add i64 %var_2_1917, 28
; Matched:\<badref\>:  store i64 %var_2_2042, i64* %PC, align 8
; store i64 %var_2_1939, i64* %var_2_3, align 8
%var_2_1940 = inttoptr i64 %var_2_1938 to i64*
%var_2_1941 = load i64, i64* %var_2_1940, align 8
; Matched:\<badref\>:  store i64 %var_2_1119, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1941, i64* %RDX.i1791, align 8
%var_2_1942 = add i64 %var_2_1915, -28
; Matched:%var_2_1958:  %var_2_1958 = add i64 %var_2_1932, 31
; %var_2_1943 = add i64 %var_2_1917, 31
; Matched:\<badref\>:  store i64 %var_2_2046, i64* %PC, align 8
; store i64 %var_2_1943, i64* %var_2_3, align 8
%var_2_1944 = inttoptr i64 %var_2_1942 to i32*
; Matched:%var_2_1902:  %var_2_1902 = load i32, i32* %var_2_1901, align 4
; %var_2_1945 = load i32, i32* %var_2_1944, align 4
; Matched:%var_2_1081:  %var_2_1081 = add i32 %var_2_1080, 2
; %var_2_1946 = add i32 %var_2_1945, 2
; Matched:%var_2_1082:  %var_2_1082 = zext i32 %var_2_1081 to i64
; %var_2_1947 = zext i32 %var_2_1946 to i64
; Matched:\<badref\>:  store i64 %var_2_1904, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1947, i64* %RCX.i1272, align 8
; Matched:%var_2_1905:  %var_2_1905 = icmp ugt i32 %var_2_1902, -3
; %var_2_1948 = icmp ugt i32 %var_2_1945, -3
; Matched:%var_2_1084:  %var_2_1084 = zext i1 %var_2_1083 to i8
; %var_2_1949 = zext i1 %var_2_1948 to i8
; Matched:\<badref\>:  store i8 %var_2_1214, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_1949, i8* %var_2_14, align 1
; Matched:%var_2_1085:  %var_2_1085 = and i32 %var_2_1081, 255
; %var_2_1950 = and i32 %var_2_1946, 255
; Matched:%var_2_1908:  %var_2_1908 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1907) #14
; %var_2_1951 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1950)
; Matched:%var_2_1087:  %var_2_1087 = trunc i32 %var_2_1086 to i8
; %var_2_1952 = trunc i32 %var_2_1951 to i8
; Matched:%var_2_1088:  %var_2_1088 = and i8 %var_2_1087, 1
; %var_2_1953 = and i8 %var_2_1952, 1
; Matched:%var_2_1911:  %var_2_1911 = xor i8 %var_2_1910, 1
; %var_2_1954 = xor i8 %var_2_1953, 1
; Matched:\<badref\>:  store i8 %var_2_1911, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_1954, i8* %var_2_21, align 1
; Matched:%var_2_1090:  %var_2_1090 = xor i32 %var_2_1081, %var_2_1080
; %var_2_1955 = xor i32 %var_2_1946, %var_2_1945
; Matched:%var_2_1221:  %var_2_1221 = lshr i32 %var_2_1220, 4
; %var_2_1956 = lshr i32 %var_2_1955, 4
; Matched:%var_2_1092:  %var_2_1092 = trunc i32 %var_2_1091 to i8
; %var_2_1957 = trunc i32 %var_2_1956 to i8
; Matched:%var_2_1915:  %var_2_1915 = and i8 %var_2_1914, 1
; %var_2_1958 = and i8 %var_2_1957, 1
; Matched:\<badref\>:  store i8 %var_2_1093, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_1958, i8* %var_2_27, align 1
; Matched:%var_2_1094:  %var_2_1094 = icmp eq i32 %var_2_1081, 0
; %var_2_1959 = icmp eq i32 %var_2_1946, 0
; Matched:%var_2_1917:  %var_2_1917 = zext i1 %var_2_1916 to i8
; %var_2_1960 = zext i1 %var_2_1959 to i8
; Matched:\<badref\>:  store i8 %var_2_1917, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_1960, i8* %var_2_30, align 1
; Matched:%var_2_1096:  %var_2_1096 = lshr i32 %var_2_1081, 31
; %var_2_1961 = lshr i32 %var_2_1946, 31
; Matched:%var_2_1227:  %var_2_1227 = trunc i32 %var_2_1226 to i8
; %var_2_1962 = trunc i32 %var_2_1961 to i8
; Matched:\<badref\>:  store i8 %var_2_1097, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_1962, i8* %var_2_33, align 1
; Matched:%var_2_1920:  %var_2_1920 = lshr i32 %var_2_1902, 31
; %var_2_1963 = lshr i32 %var_2_1945, 31
; Matched:%var_2_1099:  %var_2_1099 = xor i32 %var_2_1096, %var_2_1098
; %var_2_1964 = xor i32 %var_2_1961, %var_2_1963
; Matched:%var_2_1100:  %var_2_1100 = add nuw nsw i32 %var_2_1099, %var_2_1096
; %var_2_1965 = add nuw nsw i32 %var_2_1964, %var_2_1961
; Matched:%var_2_1923:  %var_2_1923 = icmp eq i32 %var_2_1922, 2
; %var_2_1966 = icmp eq i32 %var_2_1965, 2
; Matched:%var_2_1924:  %var_2_1924 = zext i1 %var_2_1923 to i8
; %var_2_1967 = zext i1 %var_2_1966 to i8
; Matched:\<badref\>:  store i8 %var_2_1102, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_1967, i8* %var_2_39, align 1
; Matched:%var_2_1233:  %var_2_1233 = sext i32 %var_2_1211 to i64
; %var_2_1968 = sext i32 %var_2_1946 to i64
; Matched:\<badref\>:  store i64 %var_2_1103, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1968, i64* %RSI.i1794, align 8
; Matched:%var_2_1926:  %var_2_1926 = shl nsw i64 %var_2_1925, 3
; %var_2_1969 = shl nsw i64 %var_2_1968, 3
; Matched:%var_2_1927:  %var_2_1927 = add i64 %var_2_1898, %var_2_1926
; %var_2_1970 = add i64 %var_2_1941, %var_2_1969
; Matched:%var_2_1986:  %var_2_1986 = add i64 %var_2_1932, 42
; %var_2_1971 = add i64 %var_2_1917, 42
; Matched:\<badref\>:  store i64 %var_2_2074, i64* %PC, align 8
; store i64 %var_2_1971, i64* %var_2_3, align 8
; Matched:%var_2_1929:  %var_2_1929 = inttoptr i64 %var_2_1927 to double*
; %var_2_1972 = inttoptr i64 %var_2_1970 to double*
; Matched:\<badref\>:  store double %var_2_1894, double* %var_2_1929, align 8
; store double %var_2_1937, double* %var_2_1972, align 8
%var_2_1973 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2217:  %var_2_2217 = add i64 %var_2_2216, -48
; %var_2_1974 = add i64 %var_2_1973, -48
%var_2_1975 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_639:  %var_2_639 = add i64 %var_2_638, 5
; %var_2_1976 = add i64 %var_2_1975, 5
; Matched:\<badref\>:  store i64 %var_2_2970, i64* %PC, align 8
; store i64 %var_2_1976, i64* %var_2_3, align 8
; Matched:%var_2_2220:  %var_2_2220 = inttoptr i64 %var_2_2217 to i64*
; %var_2_1977 = inttoptr i64 %var_2_1974 to i64*
; Matched:%var_2_1935:  %var_2_1935 = load i64, i64* %var_2_1934, align 8
; %var_2_1978 = load i64, i64* %var_2_1977, align 8
; Matched:\<badref\>:  store i64 %var_2_1935, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1978, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1936:  %var_2_1936 = add i64 %var_2_1930, -104
; %var_2_1979 = add i64 %var_2_1973, -104
; Matched:%var_2_3374:  %var_2_3374 = add i64 %var_2_3369, 10
; %var_2_1980 = add i64 %var_2_1975, 10
; Matched:\<badref\>:  store i64 %var_2_3374, i64* %PC, align 8
; store i64 %var_2_1980, i64* %var_2_3, align 8
; Matched:%var_2_1938:  %var_2_1938 = bitcast i64 %var_2_1935 to double
; %var_2_1981 = bitcast i64 %var_2_1978 to double
; Matched:%var_2_1939:  %var_2_1939 = inttoptr i64 %var_2_1936 to double*
; %var_2_1982 = inttoptr i64 %var_2_1979 to double*
; Matched:%var_2_1940:  %var_2_1940 = load double, double* %var_2_1939, align 8
; %var_2_1983 = load double, double* %var_2_1982, align 8
; Matched:%var_2_1941:  %var_2_1941 = fmul double %var_2_1938, %var_2_1940
; %var_2_1984 = fmul double %var_2_1981, %var_2_1983
; Matched:\<badref\>:  store double %var_2_1941, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1984, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1942:  %var_2_1942 = add i64 %var_2_1930, -56
; %var_2_1985 = add i64 %var_2_1973, -56
; Matched:%var_2_707:  %var_2_707 = add i64 %var_2_698, 15
; %var_2_1986 = add i64 %var_2_1975, 15
; Matched:\<badref\>:  store i64 %var_2_707, i64* %PC, align 8
; store i64 %var_2_1986, i64* %var_2_3, align 8
; Matched:%var_2_1944:  %var_2_1944 = inttoptr i64 %var_2_1942 to i64*
; %var_2_1987 = inttoptr i64 %var_2_1985 to i64*
; Matched:%var_2_1945:  %var_2_1945 = load i64, i64* %var_2_1944, align 8
; %var_2_1988 = load i64, i64* %var_2_1987, align 8
; Matched:\<badref\>:  store i64 %var_2_1945, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_1988, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_1946:  %var_2_1946 = add i64 %var_2_1930, -96
; %var_2_1989 = add i64 %var_2_1973, -96
; Matched:%var_2_1743:  %var_2_1743 = add i64 %var_2_1728, 20
; %var_2_1990 = add i64 %var_2_1975, 20
; Matched:\<badref\>:  store i64 %var_2_2093, i64* %PC, align 8
; store i64 %var_2_1990, i64* %var_2_3, align 8
; Matched:%var_2_1948:  %var_2_1948 = bitcast i64 %var_2_1945 to double
; %var_2_1991 = bitcast i64 %var_2_1988 to double
; Matched:%var_2_1949:  %var_2_1949 = inttoptr i64 %var_2_1946 to double*
; %var_2_1992 = inttoptr i64 %var_2_1989 to double*
; Matched:%var_2_1950:  %var_2_1950 = load double, double* %var_2_1949, align 8
; %var_2_1993 = load double, double* %var_2_1992, align 8
; Matched:%var_2_1951:  %var_2_1951 = fmul double %var_2_1948, %var_2_1950
; %var_2_1994 = fmul double %var_2_1991, %var_2_1993
; Matched:\<badref\>:  store double %var_2_1951, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_1994, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_1952:  %var_2_1952 = fadd double %var_2_1941, %var_2_1951
; %var_2_1995 = fadd double %var_2_1984, %var_2_1994
; Matched:\<badref\>:  store double %var_2_1952, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_1995, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_1996 = add i64 %var_2_1973, -16
; Matched:%var_2_1896:  %var_2_1896 = add i64 %var_2_1874, 28
; %var_2_1997 = add i64 %var_2_1975, 28
; Matched:\<badref\>:  store i64 %var_2_1896, i64* %PC, align 8
; store i64 %var_2_1997, i64* %var_2_3, align 8
%var_2_1998 = inttoptr i64 %var_2_1996 to i64*
%var_2_1999 = load i64, i64* %var_2_1998, align 8
; Matched:\<badref\>:  store i64 %var_2_1154, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1999, i64* %RDX.i1791, align 8
%var_2_2000 = add i64 %var_2_1973, -28
; Matched:%var_2_2104:  %var_2_2104 = add i64 %var_2_2078, 31
; %var_2_2001 = add i64 %var_2_1975, 31
; Matched:\<badref\>:  store i64 %var_2_3249, i64* %PC, align 8
; store i64 %var_2_2001, i64* %var_2_3, align 8
%var_2_2002 = inttoptr i64 %var_2_2000 to i32*
; Matched:%var_2_1960:  %var_2_1960 = load i32, i32* %var_2_1959, align 4
; %var_2_2003 = load i32, i32* %var_2_2002, align 4
; Matched:%var_2_1287:  %var_2_1287 = add i32 %var_2_1286, 3
; %var_2_2004 = add i32 %var_2_2003, 3
; Matched:%var_2_1288:  %var_2_1288 = zext i32 %var_2_1287 to i64
; %var_2_2005 = zext i32 %var_2_2004 to i64
; Matched:\<badref\>:  store i64 %var_2_1158, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2005, i64* %RCX.i1272, align 8
; Matched:%var_2_1289:  %var_2_1289 = icmp ugt i32 %var_2_1286, -4
; %var_2_2006 = icmp ugt i32 %var_2_2003, -4
; Matched:%var_2_1290:  %var_2_1290 = zext i1 %var_2_1289 to i8
; %var_2_2007 = zext i1 %var_2_2006 to i8
; Matched:\<badref\>:  store i8 %var_2_1290, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2007, i8* %var_2_14, align 1
; Matched:%var_2_1291:  %var_2_1291 = and i32 %var_2_1287, 255
; %var_2_2008 = and i32 %var_2_2004, 255
; Matched:%var_2_1966:  %var_2_1966 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1965) #14
; %var_2_2009 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2008)
; Matched:%var_2_1293:  %var_2_1293 = trunc i32 %var_2_1292 to i8
; %var_2_2010 = trunc i32 %var_2_2009 to i8
; Matched:%var_2_1968:  %var_2_1968 = and i8 %var_2_1967, 1
; %var_2_2011 = and i8 %var_2_2010, 1
; Matched:%var_2_1165:  %var_2_1165 = xor i8 %var_2_1164, 1
; %var_2_2012 = xor i8 %var_2_2011, 1
; Matched:\<badref\>:  store i8 %var_2_1969, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2012, i8* %var_2_21, align 1
; Matched:%var_2_1296:  %var_2_1296 = xor i32 %var_2_1287, %var_2_1286
; %var_2_2013 = xor i32 %var_2_2004, %var_2_2003
; Matched:%var_2_1297:  %var_2_1297 = lshr i32 %var_2_1296, 4
; %var_2_2014 = lshr i32 %var_2_2013, 4
; Matched:%var_2_1298:  %var_2_1298 = trunc i32 %var_2_1297 to i8
; %var_2_2015 = trunc i32 %var_2_2014 to i8
; Matched:%var_2_1973:  %var_2_1973 = and i8 %var_2_1972, 1
; %var_2_2016 = and i8 %var_2_2015, 1
; Matched:\<badref\>:  store i8 %var_2_1299, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2016, i8* %var_2_27, align 1
; Matched:%var_2_1300:  %var_2_1300 = icmp eq i32 %var_2_1287, 0
; %var_2_2017 = icmp eq i32 %var_2_2004, 0
; Matched:%var_2_1171:  %var_2_1171 = zext i1 %var_2_1170 to i8
; %var_2_2018 = zext i1 %var_2_2017 to i8
; Matched:\<badref\>:  store i8 %var_2_1301, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2018, i8* %var_2_30, align 1
; Matched:%var_2_1302:  %var_2_1302 = lshr i32 %var_2_1287, 31
; %var_2_2019 = lshr i32 %var_2_2004, 31
; Matched:%var_2_1303:  %var_2_1303 = trunc i32 %var_2_1302 to i8
; %var_2_2020 = trunc i32 %var_2_2019 to i8
; Matched:\<badref\>:  store i8 %var_2_1303, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2020, i8* %var_2_33, align 1
; Matched:%var_2_1978:  %var_2_1978 = lshr i32 %var_2_1960, 31
; %var_2_2021 = lshr i32 %var_2_2003, 31
; Matched:%var_2_1305:  %var_2_1305 = xor i32 %var_2_1302, %var_2_1304
; %var_2_2022 = xor i32 %var_2_2019, %var_2_2021
; Matched:%var_2_1980:  %var_2_1980 = add nuw nsw i32 %var_2_1979, %var_2_1976
; %var_2_2023 = add nuw nsw i32 %var_2_2022, %var_2_2019
; Matched:%var_2_1177:  %var_2_1177 = icmp eq i32 %var_2_1176, 2
; %var_2_2024 = icmp eq i32 %var_2_2023, 2
; Matched:%var_2_1982:  %var_2_1982 = zext i1 %var_2_1981 to i8
; %var_2_2025 = zext i1 %var_2_2024 to i8
; Matched:\<badref\>:  store i8 %var_2_1178, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2025, i8* %var_2_39, align 1
; Matched:%var_2_1983:  %var_2_1983 = sext i32 %var_2_1961 to i64
; %var_2_2026 = sext i32 %var_2_2004 to i64
; Matched:\<badref\>:  store i64 %var_2_1179, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2026, i64* %RSI.i1794, align 8
; Matched:%var_2_1984:  %var_2_1984 = shl nsw i64 %var_2_1983, 3
; %var_2_2027 = shl nsw i64 %var_2_2026, 3
; Matched:%var_2_1985:  %var_2_1985 = add i64 %var_2_1956, %var_2_1984
; %var_2_2028 = add i64 %var_2_1999, %var_2_2027
; Matched:%var_2_1782:  %var_2_1782 = add i64 %var_2_1728, 42
; %var_2_2029 = add i64 %var_2_1975, 42
; Matched:\<badref\>:  store i64 %var_2_2132, i64* %PC, align 8
; store i64 %var_2_2029, i64* %var_2_3, align 8
; Matched:%var_2_1987:  %var_2_1987 = inttoptr i64 %var_2_1985 to double*
; %var_2_2030 = inttoptr i64 %var_2_2028 to double*
; Matched:\<badref\>:  store double %var_2_1952, double* %var_2_1987, align 8
; store double %var_2_1995, double* %var_2_2030, align 8
%var_2_2031 = load i64, i64* %RBP.i, align 8
%var_2_2032 = add i64 %var_2_2031, -112
%var_2_2033 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_779:  %var_2_779 = add i64 %var_2_778, 5
; %var_2_2034 = add i64 %var_2_2033, 5
; Matched:\<badref\>:  store i64 %var_2_1860, i64* %PC, align 8
; store i64 %var_2_2034, i64* %var_2_3, align 8
%var_2_2035 = inttoptr i64 %var_2_2032 to i64*
%var_2_2036 = load i64, i64* %var_2_2035, align 8
; Matched:\<badref\>:  store i64 %var_2_1993, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2036, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_2037 = add i64 %var_2_2031, -152
; Matched:%var_2_958:  %var_2_958 = add i64 %var_2_947, 13
; %var_2_2038 = add i64 %var_2_2033, 13
; Matched:\<badref\>:  store i64 %var_2_958, i64* %PC, align 8
; store i64 %var_2_2038, i64* %var_2_3, align 8
%var_2_2039 = bitcast i64 %var_2_2036 to double
%var_2_2040 = inttoptr i64 %var_2_2037 to double*
%var_2_2041 = load double, double* %var_2_2040, align 8
%var_2_2042 = fadd double %var_2_2039, %var_2_2041
; Matched:\<badref\>:  store double %var_2_1999, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2042, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_2000:  %var_2_2000 = add i64 %var_2_1988, -96
; %var_2_2043 = add i64 %var_2_2031, -96
; Matched:%var_2_3292:  %var_2_3292 = add i64 %var_2_3281, 18
; %var_2_2044 = add i64 %var_2_2033, 18
; Matched:\<badref\>:  store i64 %var_2_3292, i64* %PC, align 8
; store i64 %var_2_2044, i64* %var_2_3, align 8
; Matched:%var_2_3293:  %var_2_3293 = inttoptr i64 %var_2_3291 to double*
; %var_2_2045 = inttoptr i64 %var_2_2043 to double*
; Matched:\<badref\>:  store double %var_2_3290, double* %var_2_3293, align 8
; store double %var_2_2042, double* %var_2_2045, align 8
%var_2_2046 = load i64, i64* %RBP.i, align 8
%var_2_2047 = add i64 %var_2_2046, -120
%var_2_2048 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3136:  %var_2_3136 = add i64 %var_2_3135, 5
; %var_2_2049 = add i64 %var_2_2048, 5
; Matched:\<badref\>:  store i64 %var_2_2876, i64* %PC, align 8
; store i64 %var_2_2049, i64* %var_2_3, align 8
%var_2_2050 = inttoptr i64 %var_2_2047 to i64*
%var_2_2051 = load i64, i64* %var_2_2050, align 8
; Matched:\<badref\>:  store i64 %var_2_2008, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2051, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_2052 = add i64 %var_2_2046, -144
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_125, 13
; %var_2_2053 = add i64 %var_2_2048, 13
; Matched:\<badref\>:  store i64 %var_2_133, i64* %PC, align 8
; store i64 %var_2_2053, i64* %var_2_3, align 8
%var_2_2054 = bitcast i64 %var_2_2051 to double
%var_2_2055 = inttoptr i64 %var_2_2052 to double*
%var_2_2056 = load double, double* %var_2_2055, align 8
%var_2_2057 = fsub double %var_2_2054, %var_2_2056
; Matched:\<badref\>:  store double %var_2_2014, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2057, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_2015:  %var_2_2015 = add i64 %var_2_2003, -104
; %var_2_2058 = add i64 %var_2_2046, -104
; Matched:%var_2_2001:  %var_2_2001 = add i64 %var_2_1990, 18
; %var_2_2059 = add i64 %var_2_2048, 18
; Matched:\<badref\>:  store i64 %var_2_3307, i64* %PC, align 8
; store i64 %var_2_2059, i64* %var_2_3, align 8
; Matched:%var_2_3308:  %var_2_3308 = inttoptr i64 %var_2_3306 to double*
; %var_2_2060 = inttoptr i64 %var_2_2058 to double*
; Matched:\<badref\>:  store double %var_2_3305, double* %var_2_3308, align 8
; store double %var_2_2057, double* %var_2_2060, align 8
%var_2_2061 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2077:  %var_2_2077 = add i64 %var_2_2076, -80
; %var_2_2062 = add i64 %var_2_2061, -80
%var_2_2063 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1628:  %var_2_1628 = add i64 %var_2_1627, 5
; %var_2_2064 = add i64 %var_2_2063, 5
; Matched:\<badref\>:  store i64 %var_2_3312, i64* %PC, align 8
; store i64 %var_2_2064, i64* %var_2_3, align 8
; Matched:%var_2_2022:  %var_2_2022 = inttoptr i64 %var_2_2019 to i64*
; %var_2_2065 = inttoptr i64 %var_2_2062 to i64*
; Matched:%var_2_2023:  %var_2_2023 = load i64, i64* %var_2_2022, align 8
; %var_2_2066 = load i64, i64* %var_2_2065, align 8
; Matched:\<badref\>:  store i64 %var_2_2023, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2066, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2024:  %var_2_2024 = add i64 %var_2_2018, -96
; %var_2_2067 = add i64 %var_2_2061, -96
; Matched:%var_2_1733:  %var_2_1733 = add i64 %var_2_1728, 10
; %var_2_2068 = add i64 %var_2_2063, 10
; Matched:\<badref\>:  store i64 %var_2_1733, i64* %PC, align 8
; store i64 %var_2_2068, i64* %var_2_3, align 8
; Matched:%var_2_2026:  %var_2_2026 = bitcast i64 %var_2_2023 to double
; %var_2_2069 = bitcast i64 %var_2_2066 to double
; Matched:%var_2_2027:  %var_2_2027 = inttoptr i64 %var_2_2024 to double*
; %var_2_2070 = inttoptr i64 %var_2_2067 to double*
; Matched:%var_2_2028:  %var_2_2028 = load double, double* %var_2_2027, align 8
; %var_2_2071 = load double, double* %var_2_2070, align 8
; Matched:%var_2_2029:  %var_2_2029 = fmul double %var_2_2026, %var_2_2028
; %var_2_2072 = fmul double %var_2_2069, %var_2_2071
; Matched:\<badref\>:  store double %var_2_2029, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2072, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_2030:  %var_2_2030 = add i64 %var_2_2018, -88
; %var_2_2073 = add i64 %var_2_2061, -88
; Matched:%var_2_2089:  %var_2_2089 = add i64 %var_2_2078, 15
; %var_2_2074 = add i64 %var_2_2063, 15
; Matched:\<badref\>:  store i64 %var_2_2089, i64* %PC, align 8
; store i64 %var_2_2074, i64* %var_2_3, align 8
; Matched:%var_2_2032:  %var_2_2032 = inttoptr i64 %var_2_2030 to i64*
; %var_2_2075 = inttoptr i64 %var_2_2073 to i64*
; Matched:%var_2_2033:  %var_2_2033 = load i64, i64* %var_2_2032, align 8
; %var_2_2076 = load i64, i64* %var_2_2075, align 8
; Matched:\<badref\>:  store i64 %var_2_2033, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_2076, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_2034:  %var_2_2034 = add i64 %var_2_2018, -104
; %var_2_2077 = add i64 %var_2_2061, -104
; Matched:%var_2_3238:  %var_2_3238 = add i64 %var_2_3223, 20
; %var_2_2078 = add i64 %var_2_2063, 20
; Matched:\<badref\>:  store i64 %var_2_3326, i64* %PC, align 8
; store i64 %var_2_2078, i64* %var_2_3, align 8
; Matched:%var_2_2036:  %var_2_2036 = bitcast i64 %var_2_2033 to double
; %var_2_2079 = bitcast i64 %var_2_2076 to double
; Matched:%var_2_2037:  %var_2_2037 = inttoptr i64 %var_2_2034 to double*
; %var_2_2080 = inttoptr i64 %var_2_2077 to double*
; Matched:%var_2_2038:  %var_2_2038 = load double, double* %var_2_2037, align 8
; %var_2_2081 = load double, double* %var_2_2080, align 8
; Matched:%var_2_2039:  %var_2_2039 = fmul double %var_2_2036, %var_2_2038
; %var_2_2082 = fmul double %var_2_2079, %var_2_2081
; Matched:\<badref\>:  store double %var_2_2039, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_2082, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_2040:  %var_2_2040 = fsub double %var_2_2029, %var_2_2039
; %var_2_2083 = fsub double %var_2_2072, %var_2_2082
; Matched:\<badref\>:  store double %var_2_2040, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2083, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_2084 = add i64 %var_2_2061, -16
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_668, 28
; %var_2_2085 = add i64 %var_2_2063, 28
; Matched:\<badref\>:  store i64 %var_2_694, i64* %PC, align 8
; store i64 %var_2_2085, i64* %var_2_3, align 8
%var_2_2086 = inttoptr i64 %var_2_2084 to i64*
%var_2_2087 = load i64, i64* %var_2_2086, align 8
; Matched:\<badref\>:  store i64 %var_2_1196, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2087, i64* %RDX.i1791, align 8
%var_2_2088 = add i64 %var_2_2061, -28
; Matched:%var_2_3249:  %var_2_3249 = add i64 %var_2_3223, 31
; %var_2_2089 = add i64 %var_2_2063, 31
; Matched:\<badref\>:  store i64 %var_2_1106, i64* %PC, align 8
; store i64 %var_2_2089, i64* %var_2_3, align 8
%var_2_2090 = inttoptr i64 %var_2_2088 to i32*
; Matched:%var_2_2048:  %var_2_2048 = load i32, i32* %var_2_2047, align 4
; %var_2_2091 = load i32, i32* %var_2_2090, align 4
; Matched:%var_2_1363:  %var_2_1363 = add i32 %var_2_1362, 6
; %var_2_2092 = add i32 %var_2_2091, 6
; Matched:%var_2_1516:  %var_2_1516 = zext i32 %var_2_1515 to i64
; %var_2_2093 = zext i32 %var_2_2092 to i64
; Matched:\<badref\>:  store i64 %var_2_1364, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2093, i64* %RCX.i1272, align 8
; Matched:%var_2_2051:  %var_2_2051 = icmp ugt i32 %var_2_2048, -7
; %var_2_2094 = icmp ugt i32 %var_2_2091, -7
; Matched:%var_2_2052:  %var_2_2052 = zext i1 %var_2_2051 to i8
; %var_2_2095 = zext i1 %var_2_2094 to i8
; Matched:\<badref\>:  store i8 %var_2_1366, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2095, i8* %var_2_14, align 1
; Matched:%var_2_1367:  %var_2_1367 = and i32 %var_2_1363, 255
; %var_2_2096 = and i32 %var_2_2092, 255
; Matched:%var_2_2054:  %var_2_2054 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2053) #14
; %var_2_2097 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2096)
; Matched:%var_2_1369:  %var_2_1369 = trunc i32 %var_2_1368 to i8
; %var_2_2098 = trunc i32 %var_2_2097 to i8
; Matched:%var_2_1522:  %var_2_1522 = and i8 %var_2_1521, 1
; %var_2_2099 = and i8 %var_2_2098, 1
; Matched:%var_2_1371:  %var_2_1371 = xor i8 %var_2_1370, 1
; %var_2_2100 = xor i8 %var_2_2099, 1
; Matched:\<badref\>:  store i8 %var_2_2057, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2100, i8* %var_2_21, align 1
; Matched:%var_2_2058:  %var_2_2058 = xor i32 %var_2_2049, %var_2_2048
; %var_2_2101 = xor i32 %var_2_2092, %var_2_2091
; Matched:%var_2_1373:  %var_2_1373 = lshr i32 %var_2_1372, 4
; %var_2_2102 = lshr i32 %var_2_2101, 4
; Matched:%var_2_1374:  %var_2_1374 = trunc i32 %var_2_1373 to i8
; %var_2_2103 = trunc i32 %var_2_2102 to i8
; Matched:%var_2_2061:  %var_2_2061 = and i8 %var_2_2060, 1
; %var_2_2104 = and i8 %var_2_2103, 1
; Matched:\<badref\>:  store i8 %var_2_1375, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2104, i8* %var_2_27, align 1
; Matched:%var_2_1528:  %var_2_1528 = icmp eq i32 %var_2_1515, 0
; %var_2_2105 = icmp eq i32 %var_2_2092, 0
; Matched:%var_2_1377:  %var_2_1377 = zext i1 %var_2_1376 to i8
; %var_2_2106 = zext i1 %var_2_2105 to i8
; Matched:\<badref\>:  store i8 %var_2_2063, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2106, i8* %var_2_30, align 1
; Matched:%var_2_2064:  %var_2_2064 = lshr i32 %var_2_2049, 31
; %var_2_2107 = lshr i32 %var_2_2092, 31
; Matched:%var_2_1379:  %var_2_1379 = trunc i32 %var_2_1378 to i8
; %var_2_2108 = trunc i32 %var_2_2107 to i8
; Matched:\<badref\>:  store i8 %var_2_1379, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2108, i8* %var_2_33, align 1
; Matched:%var_2_2066:  %var_2_2066 = lshr i32 %var_2_2048, 31
; %var_2_2109 = lshr i32 %var_2_2091, 31
; Matched:%var_2_1381:  %var_2_1381 = xor i32 %var_2_1378, %var_2_1380
; %var_2_2110 = xor i32 %var_2_2107, %var_2_2109
; Matched:%var_2_1534:  %var_2_1534 = add nuw nsw i32 %var_2_1533, %var_2_1530
; %var_2_2111 = add nuw nsw i32 %var_2_2110, %var_2_2107
; Matched:%var_2_1383:  %var_2_1383 = icmp eq i32 %var_2_1382, 2
; %var_2_2112 = icmp eq i32 %var_2_2111, 2
; Matched:%var_2_2070:  %var_2_2070 = zext i1 %var_2_2069 to i8
; %var_2_2113 = zext i1 %var_2_2112 to i8
; Matched:\<badref\>:  store i8 %var_2_2070, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2113, i8* %var_2_39, align 1
; Matched:%var_2_1385:  %var_2_1385 = sext i32 %var_2_1363 to i64
; %var_2_2114 = sext i32 %var_2_2092 to i64
; Matched:\<badref\>:  store i64 %var_2_1385, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2114, i64* %RSI.i1794, align 8
; Matched:%var_2_2072:  %var_2_2072 = shl nsw i64 %var_2_2071, 3
; %var_2_2115 = shl nsw i64 %var_2_2114, 3
; Matched:%var_2_2073:  %var_2_2073 = add i64 %var_2_2044, %var_2_2072
; %var_2_2116 = add i64 %var_2_2087, %var_2_2115
; Matched:%var_2_2132:  %var_2_2132 = add i64 %var_2_2078, 42
; %var_2_2117 = add i64 %var_2_2063, 42
; Matched:\<badref\>:  store i64 %var_2_3277, i64* %PC, align 8
; store i64 %var_2_2117, i64* %var_2_3, align 8
; Matched:%var_2_2075:  %var_2_2075 = inttoptr i64 %var_2_2073 to double*
; %var_2_2118 = inttoptr i64 %var_2_2116 to double*
; Matched:\<badref\>:  store double %var_2_2040, double* %var_2_2075, align 8
; store double %var_2_2083, double* %var_2_2118, align 8
%var_2_2119 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2019:  %var_2_2019 = add i64 %var_2_2018, -80
; %var_2_2120 = add i64 %var_2_2119, -80
%var_2_2121 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_699:  %var_2_699 = add i64 %var_2_698, 5
; %var_2_2122 = add i64 %var_2_2121, 5
; Matched:\<badref\>:  store i64 %var_2_779, i64* %PC, align 8
; store i64 %var_2_2122, i64* %var_2_3, align 8
; Matched:%var_2_2080:  %var_2_2080 = inttoptr i64 %var_2_2077 to i64*
; %var_2_2123 = inttoptr i64 %var_2_2120 to i64*
; Matched:%var_2_2081:  %var_2_2081 = load i64, i64* %var_2_2080, align 8
; %var_2_2124 = load i64, i64* %var_2_2123, align 8
; Matched:\<badref\>:  store i64 %var_2_2081, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2124, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2082:  %var_2_2082 = add i64 %var_2_2076, -104
; %var_2_2125 = add i64 %var_2_2119, -104
; Matched:%var_2_1632:  %var_2_1632 = add i64 %var_2_1627, 10
; %var_2_2126 = add i64 %var_2_2121, 10
; Matched:\<badref\>:  store i64 %var_2_1632, i64* %PC, align 8
; store i64 %var_2_2126, i64* %var_2_3, align 8
; Matched:%var_2_2084:  %var_2_2084 = bitcast i64 %var_2_2081 to double
; %var_2_2127 = bitcast i64 %var_2_2124 to double
; Matched:%var_2_2085:  %var_2_2085 = inttoptr i64 %var_2_2082 to double*
; %var_2_2128 = inttoptr i64 %var_2_2125 to double*
; Matched:%var_2_2086:  %var_2_2086 = load double, double* %var_2_2085, align 8
; %var_2_2129 = load double, double* %var_2_2128, align 8
; Matched:%var_2_2087:  %var_2_2087 = fmul double %var_2_2084, %var_2_2086
; %var_2_2130 = fmul double %var_2_2127, %var_2_2129
; Matched:\<badref\>:  store double %var_2_2087, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2130, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_2088:  %var_2_2088 = add i64 %var_2_2076, -88
; %var_2_2131 = add i64 %var_2_2119, -88
; Matched:%var_2_1885:  %var_2_1885 = add i64 %var_2_1874, 15
; %var_2_2132 = add i64 %var_2_2121, 15
; Matched:\<badref\>:  store i64 %var_2_762, i64* %PC, align 8
; store i64 %var_2_2132, i64* %var_2_3, align 8
; Matched:%var_2_2090:  %var_2_2090 = inttoptr i64 %var_2_2088 to i64*
; %var_2_2133 = inttoptr i64 %var_2_2131 to i64*
; Matched:%var_2_2091:  %var_2_2091 = load i64, i64* %var_2_2090, align 8
; %var_2_2134 = load i64, i64* %var_2_2133, align 8
; Matched:\<badref\>:  store i64 %var_2_2091, i64* %var_2_828, align 1, !tbaa !1284
; store i64 %var_2_2134, i64* %var_2_830, align 1
store double 0.000000e+00, double* %var_2_831, align 1
; Matched:%var_2_2092:  %var_2_2092 = add i64 %var_2_2076, -96
; %var_2_2135 = add i64 %var_2_2119, -96
; Matched:%var_2_1079:  %var_2_1079 = add i64 %var_2_1063, 20
; %var_2_2136 = add i64 %var_2_2121, 20
; Matched:\<badref\>:  store i64 %var_2_1889, i64* %PC, align 8
; store i64 %var_2_2136, i64* %var_2_3, align 8
; Matched:%var_2_2094:  %var_2_2094 = bitcast i64 %var_2_2091 to double
; %var_2_2137 = bitcast i64 %var_2_2134 to double
; Matched:%var_2_2095:  %var_2_2095 = inttoptr i64 %var_2_2092 to double*
; %var_2_2138 = inttoptr i64 %var_2_2135 to double*
; Matched:%var_2_2096:  %var_2_2096 = load double, double* %var_2_2095, align 8
; %var_2_2139 = load double, double* %var_2_2138, align 8
; Matched:%var_2_2097:  %var_2_2097 = fmul double %var_2_2094, %var_2_2096
; %var_2_2140 = fmul double %var_2_2137, %var_2_2139
; Matched:\<badref\>:  store double %var_2_2097, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_2140, double* %var_2_823, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_817, align 1, !tbaa !1284
; store i64 0, i64* %var_2_819, align 1
; Matched:%var_2_2098:  %var_2_2098 = fadd double %var_2_2087, %var_2_2097
; %var_2_2141 = fadd double %var_2_2130, %var_2_2140
; Matched:\<badref\>:  store double %var_2_2098, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2141, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
%var_2_2142 = add i64 %var_2_2119, -16
; Matched:%var_2_2100:  %var_2_2100 = add i64 %var_2_2078, 28
; %var_2_2143 = add i64 %var_2_2121, 28
; Matched:\<badref\>:  store i64 %var_2_2100, i64* %PC, align 8
; store i64 %var_2_2143, i64* %var_2_3, align 8
%var_2_2144 = inttoptr i64 %var_2_2142 to i64*
%var_2_2145 = load i64, i64* %var_2_2144, align 8
; Matched:\<badref\>:  store i64 %var_2_2102, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2145, i64* %RDX.i1791, align 8
%var_2_2146 = add i64 %var_2_2119, -28
; Matched:%var_2_3395:  %var_2_3395 = add i64 %var_2_3369, 31
; %var_2_2147 = add i64 %var_2_2121, 31
; Matched:\<badref\>:  store i64 %var_2_1754, i64* %PC, align 8
; store i64 %var_2_2147, i64* %var_2_3, align 8
%var_2_2148 = inttoptr i64 %var_2_2146 to i32*
; Matched:%var_2_2106:  %var_2_2106 = load i32, i32* %var_2_2105, align 4
; %var_2_2149 = load i32, i32* %var_2_2148, align 4
; Matched:%var_2_1439:  %var_2_1439 = add i32 %var_2_1438, 7
; %var_2_2150 = add i32 %var_2_2149, 7
; Matched:%var_2_2108:  %var_2_2108 = zext i32 %var_2_2107 to i64
; %var_2_2151 = zext i32 %var_2_2150 to i64
; Matched:\<badref\>:  store i64 %var_2_1592, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2151, i64* %RCX.i1272, align 8
; Matched:%var_2_2109:  %var_2_2109 = icmp ugt i32 %var_2_2106, -8
; %var_2_2152 = icmp ugt i32 %var_2_2149, -8
; Matched:%var_2_1442:  %var_2_1442 = zext i1 %var_2_1441 to i8
; %var_2_2153 = zext i1 %var_2_2152 to i8
; Matched:\<badref\>:  store i8 %var_2_1594, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2153, i8* %var_2_14, align 1
; Matched:%var_2_2111:  %var_2_2111 = and i32 %var_2_2107, 255
; %var_2_2154 = and i32 %var_2_2150, 255
; Matched:%var_2_2112:  %var_2_2112 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2111) #14
; %var_2_2155 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2154)
; Matched:%var_2_1445:  %var_2_1445 = trunc i32 %var_2_1444 to i8
; %var_2_2156 = trunc i32 %var_2_2155 to i8
; Matched:%var_2_1598:  %var_2_1598 = and i8 %var_2_1597, 1
; %var_2_2157 = and i8 %var_2_2156, 1
; Matched:%var_2_2115:  %var_2_2115 = xor i8 %var_2_2114, 1
; %var_2_2158 = xor i8 %var_2_2157, 1
; Matched:\<badref\>:  store i8 %var_2_2115, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2158, i8* %var_2_21, align 1
; Matched:%var_2_1448:  %var_2_1448 = xor i32 %var_2_1439, %var_2_1438
; %var_2_2159 = xor i32 %var_2_2150, %var_2_2149
; Matched:%var_2_1601:  %var_2_1601 = lshr i32 %var_2_1600, 4
; %var_2_2160 = lshr i32 %var_2_2159, 4
; Matched:%var_2_1450:  %var_2_1450 = trunc i32 %var_2_1449 to i8
; %var_2_2161 = trunc i32 %var_2_2160 to i8
; Matched:%var_2_2119:  %var_2_2119 = and i8 %var_2_2118, 1
; %var_2_2162 = and i8 %var_2_2161, 1
; Matched:\<badref\>:  store i8 %var_2_1451, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2162, i8* %var_2_27, align 1
; Matched:%var_2_1604:  %var_2_1604 = icmp eq i32 %var_2_1591, 0
; %var_2_2163 = icmp eq i32 %var_2_2150, 0
; Matched:%var_2_2121:  %var_2_2121 = zext i1 %var_2_2120 to i8
; %var_2_2164 = zext i1 %var_2_2163 to i8
; Matched:\<badref\>:  store i8 %var_2_1453, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2164, i8* %var_2_30, align 1
; Matched:%var_2_1454:  %var_2_1454 = lshr i32 %var_2_1439, 31
; %var_2_2165 = lshr i32 %var_2_2150, 31
; Matched:%var_2_1607:  %var_2_1607 = trunc i32 %var_2_1606 to i8
; %var_2_2166 = trunc i32 %var_2_2165 to i8
; Matched:\<badref\>:  store i8 %var_2_1455, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2166, i8* %var_2_33, align 1
; Matched:%var_2_2124:  %var_2_2124 = lshr i32 %var_2_2106, 31
; %var_2_2167 = lshr i32 %var_2_2149, 31
; Matched:%var_2_1457:  %var_2_1457 = xor i32 %var_2_1454, %var_2_1456
; %var_2_2168 = xor i32 %var_2_2165, %var_2_2167
; Matched:%var_2_1610:  %var_2_1610 = add nuw nsw i32 %var_2_1609, %var_2_1606
; %var_2_2169 = add nuw nsw i32 %var_2_2168, %var_2_2165
; Matched:%var_2_2127:  %var_2_2127 = icmp eq i32 %var_2_2126, 2
; %var_2_2170 = icmp eq i32 %var_2_2169, 2
; Matched:%var_2_1460:  %var_2_1460 = zext i1 %var_2_1459 to i8
; %var_2_2171 = zext i1 %var_2_2170 to i8
; Matched:\<badref\>:  store i8 %var_2_1460, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2171, i8* %var_2_39, align 1
; Matched:%var_2_1613:  %var_2_1613 = sext i32 %var_2_1591 to i64
; %var_2_2172 = sext i32 %var_2_2150 to i64
; Matched:\<badref\>:  store i64 %var_2_1461, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2172, i64* %RSI.i1794, align 8
; Matched:%var_2_2130:  %var_2_2130 = shl nsw i64 %var_2_2129, 3
; %var_2_2173 = shl nsw i64 %var_2_2172, 3
; Matched:%var_2_2131:  %var_2_2131 = add i64 %var_2_2102, %var_2_2130
; %var_2_2174 = add i64 %var_2_2145, %var_2_2173
; Matched:%var_2_1840:  %var_2_1840 = add i64 %var_2_1786, 42
; %var_2_2175 = add i64 %var_2_2121, 42
; Matched:\<badref\>:  store i64 %var_2_1928, i64* %PC, align 8
; store i64 %var_2_2175, i64* %var_2_3, align 8
; Matched:%var_2_2133:  %var_2_2133 = inttoptr i64 %var_2_2131 to double*
; %var_2_2176 = inttoptr i64 %var_2_2174 to double*
; Matched:\<badref\>:  store double %var_2_2098, double* %var_2_2133, align 8
; store double %var_2_2141, double* %var_2_2176, align 8
; Matched:%var_2_884:  %var_2_884 = load i64, i64* %RBP, align 8
; %var_2_2177 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_380:  %var_2_380 = add i64 %var_2_379, -24
; %var_2_2178 = add i64 %var_2_2177, -24
%var_2_2179 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 4
; %var_2_2180 = add i64 %var_2_2179, 4
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_2180, i64* %var_2_3, align 8
; Matched:%var_2_2138:  %var_2_2138 = inttoptr i64 %var_2_2135 to i64*
; %var_2_2181 = inttoptr i64 %var_2_2178 to i64*
; Matched:%var_2_908:  %var_2_908 = load i64, i64* %var_2_907, align 8
; %var_2_2182 = load i64, i64* %var_2_2181, align 8
; Matched:\<badref\>:  store i64 %var_2_969, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2182, i64* %RDX.i1791, align 8
; Matched:%var_2_2140:  %var_2_2140 = add i64 %var_2_2134, -36
; %var_2_2183 = add i64 %var_2_2177, -36
; Matched:%var_2_2500:  %var_2_2500 = add i64 %var_2_2495, 7
; %var_2_2184 = add i64 %var_2_2179, 7
; Matched:\<badref\>:  store i64 %var_2_2182, i64* %PC, align 8
; store i64 %var_2_2184, i64* %var_2_3, align 8
; Matched:%var_2_2142:  %var_2_2142 = inttoptr i64 %var_2_2140 to i32*
; %var_2_2185 = inttoptr i64 %var_2_2183 to i32*
; Matched:%var_2_2143:  %var_2_2143 = load i32, i32* %var_2_2142, align 4
; %var_2_2186 = load i32, i32* %var_2_2185, align 4
; Matched:%var_2_2144:  %var_2_2144 = add i32 %var_2_2143, 2
; %var_2_2187 = add i32 %var_2_2186, 2
; Matched:%var_2_2145:  %var_2_2145 = zext i32 %var_2_2144 to i64
; %var_2_2188 = zext i32 %var_2_2187 to i64
; Matched:\<badref\>:  store i64 %var_2_2145, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2188, i64* %RCX.i1272, align 8
; Matched:%var_2_2146:  %var_2_2146 = icmp ugt i32 %var_2_2143, -3
; %var_2_2189 = icmp ugt i32 %var_2_2186, -3
; Matched:%var_2_2147:  %var_2_2147 = zext i1 %var_2_2146 to i8
; %var_2_2190 = zext i1 %var_2_2189 to i8
; Matched:\<badref\>:  store i8 %var_2_2147, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2190, i8* %var_2_14, align 1
; Matched:%var_2_2148:  %var_2_2148 = and i32 %var_2_2144, 255
; %var_2_2191 = and i32 %var_2_2187, 255
; Matched:%var_2_2149:  %var_2_2149 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2148) #14
; %var_2_2192 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2191)
; Matched:%var_2_2150:  %var_2_2150 = trunc i32 %var_2_2149 to i8
; %var_2_2193 = trunc i32 %var_2_2192 to i8
; Matched:%var_2_2151:  %var_2_2151 = and i8 %var_2_2150, 1
; %var_2_2194 = and i8 %var_2_2193, 1
; Matched:%var_2_2152:  %var_2_2152 = xor i8 %var_2_2151, 1
; %var_2_2195 = xor i8 %var_2_2194, 1
; Matched:\<badref\>:  store i8 %var_2_2152, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2195, i8* %var_2_21, align 1
; Matched:%var_2_2153:  %var_2_2153 = xor i32 %var_2_2144, %var_2_2143
; %var_2_2196 = xor i32 %var_2_2187, %var_2_2186
; Matched:%var_2_2154:  %var_2_2154 = lshr i32 %var_2_2153, 4
; %var_2_2197 = lshr i32 %var_2_2196, 4
; Matched:%var_2_2155:  %var_2_2155 = trunc i32 %var_2_2154 to i8
; %var_2_2198 = trunc i32 %var_2_2197 to i8
; Matched:%var_2_2156:  %var_2_2156 = and i8 %var_2_2155, 1
; %var_2_2199 = and i8 %var_2_2198, 1
; Matched:\<badref\>:  store i8 %var_2_2156, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2199, i8* %var_2_27, align 1
; Matched:%var_2_2157:  %var_2_2157 = icmp eq i32 %var_2_2144, 0
; %var_2_2200 = icmp eq i32 %var_2_2187, 0
; Matched:%var_2_2158:  %var_2_2158 = zext i1 %var_2_2157 to i8
; %var_2_2201 = zext i1 %var_2_2200 to i8
; Matched:\<badref\>:  store i8 %var_2_2158, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2201, i8* %var_2_30, align 1
; Matched:%var_2_2159:  %var_2_2159 = lshr i32 %var_2_2144, 31
; %var_2_2202 = lshr i32 %var_2_2187, 31
; Matched:%var_2_2160:  %var_2_2160 = trunc i32 %var_2_2159 to i8
; %var_2_2203 = trunc i32 %var_2_2202 to i8
; Matched:\<badref\>:  store i8 %var_2_2160, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2203, i8* %var_2_33, align 1
; Matched:%var_2_2161:  %var_2_2161 = lshr i32 %var_2_2143, 31
; %var_2_2204 = lshr i32 %var_2_2186, 31
; Matched:%var_2_2162:  %var_2_2162 = xor i32 %var_2_2159, %var_2_2161
; %var_2_2205 = xor i32 %var_2_2202, %var_2_2204
; Matched:%var_2_2163:  %var_2_2163 = add nuw nsw i32 %var_2_2162, %var_2_2159
; %var_2_2206 = add nuw nsw i32 %var_2_2205, %var_2_2202
; Matched:%var_2_2164:  %var_2_2164 = icmp eq i32 %var_2_2163, 2
; %var_2_2207 = icmp eq i32 %var_2_2206, 2
; Matched:%var_2_2165:  %var_2_2165 = zext i1 %var_2_2164 to i8
; %var_2_2208 = zext i1 %var_2_2207 to i8
; Matched:\<badref\>:  store i8 %var_2_2165, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2208, i8* %var_2_39, align 1
; Matched:%var_2_2166:  %var_2_2166 = sext i32 %var_2_2144 to i64
; %var_2_2209 = sext i32 %var_2_2187 to i64
; Matched:\<badref\>:  store i64 %var_2_2166, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2209, i64* %RSI.i1794, align 8
; Matched:%var_2_2167:  %var_2_2167 = shl nsw i64 %var_2_2166, 3
; %var_2_2210 = shl nsw i64 %var_2_2209, 3
; Matched:%var_2_2168:  %var_2_2168 = add i64 %var_2_2139, %var_2_2167
; %var_2_2211 = add i64 %var_2_2182, %var_2_2210
; Matched:%var_2_962:  %var_2_962 = add i64 %var_2_947, 18
; %var_2_2212 = add i64 %var_2_2179, 18
; Matched:\<badref\>:  store i64 %var_2_531, i64* %PC, align 8
; store i64 %var_2_2212, i64* %var_2_3, align 8
; Matched:%var_2_2170:  %var_2_2170 = inttoptr i64 %var_2_2168 to i64*
; %var_2_2213 = inttoptr i64 %var_2_2211 to i64*
; Matched:%var_2_2171:  %var_2_2171 = load i64, i64* %var_2_2170, align 8
; %var_2_2214 = load i64, i64* %var_2_2213, align 8
; Matched:\<badref\>:  store i64 %var_2_2171, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2214, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2172:  %var_2_2172 = add i64 %var_2_2134, -48
; %var_2_2215 = add i64 %var_2_2177, -48
; Matched:%var_2_453:  %var_2_453 = add i64 %var_2_436, 23
; %var_2_2216 = add i64 %var_2_2179, 23
; Matched:\<badref\>:  store i64 %var_2_453, i64* %PC, align 8
; store i64 %var_2_2216, i64* %var_2_3, align 8
; Matched:%var_2_2174:  %var_2_2174 = inttoptr i64 %var_2_2172 to i64*
; %var_2_2217 = inttoptr i64 %var_2_2215 to i64*
; Matched:\<badref\>:  store i64 %var_2_2171, i64* %var_2_2174, align 8
; store i64 %var_2_2214, i64* %var_2_2217, align 8
; Matched:%var_2_964:  %var_2_964 = load i64, i64* %RBP, align 8
; %var_2_2218 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_965:  %var_2_965 = add i64 %var_2_964, -24
; %var_2_2219 = add i64 %var_2_2218, -24
%var_2_2220 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, 4
; %var_2_2221 = add i64 %var_2_2220, 4
; Matched:\<badref\>:  store i64 %var_2_967, i64* %PC, align 8
; store i64 %var_2_2221, i64* %var_2_3, align 8
; Matched:%var_2_888:  %var_2_888 = inttoptr i64 %var_2_885 to i64*
; %var_2_2222 = inttoptr i64 %var_2_2219 to i64*
; Matched:%var_2_969:  %var_2_969 = load i64, i64* %var_2_968, align 8
; %var_2_2223 = load i64, i64* %var_2_2222, align 8
; Matched:\<badref\>:  store i64 %var_2_384, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2223, i64* %RDX.i1791, align 8
; Matched:%var_2_2181:  %var_2_2181 = add i64 %var_2_2175, -36
; %var_2_2224 = add i64 %var_2_2218, -36
; Matched:%var_2_2348:  %var_2_2348 = add i64 %var_2_2343, 7
; %var_2_2225 = add i64 %var_2_2220, 7
; Matched:\<badref\>:  store i64 %var_2_1556, i64* %PC, align 8
; store i64 %var_2_2225, i64* %var_2_3, align 8
; Matched:%var_2_2183:  %var_2_2183 = inttoptr i64 %var_2_2181 to i32*
; %var_2_2226 = inttoptr i64 %var_2_2224 to i32*
; Matched:%var_2_2184:  %var_2_2184 = load i32, i32* %var_2_2183, align 4
; %var_2_2227 = load i32, i32* %var_2_2226, align 4
; Matched:%var_2_2185:  %var_2_2185 = add i32 %var_2_2184, 3
; %var_2_2228 = add i32 %var_2_2227, 3
; Matched:%var_2_2186:  %var_2_2186 = zext i32 %var_2_2185 to i64
; %var_2_2229 = zext i32 %var_2_2228 to i64
; Matched:\<badref\>:  store i64 %var_2_2186, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2229, i64* %RCX.i1272, align 8
; Matched:%var_2_2187:  %var_2_2187 = icmp ugt i32 %var_2_2184, -4
; %var_2_2230 = icmp ugt i32 %var_2_2227, -4
; Matched:%var_2_2188:  %var_2_2188 = zext i1 %var_2_2187 to i8
; %var_2_2231 = zext i1 %var_2_2230 to i8
; Matched:\<badref\>:  store i8 %var_2_2188, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2231, i8* %var_2_14, align 1
; Matched:%var_2_2189:  %var_2_2189 = and i32 %var_2_2185, 255
; %var_2_2232 = and i32 %var_2_2228, 255
; Matched:%var_2_2190:  %var_2_2190 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2189) #14
; %var_2_2233 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2232)
; Matched:%var_2_2191:  %var_2_2191 = trunc i32 %var_2_2190 to i8
; %var_2_2234 = trunc i32 %var_2_2233 to i8
; Matched:%var_2_2192:  %var_2_2192 = and i8 %var_2_2191, 1
; %var_2_2235 = and i8 %var_2_2234, 1
; Matched:%var_2_2193:  %var_2_2193 = xor i8 %var_2_2192, 1
; %var_2_2236 = xor i8 %var_2_2235, 1
; Matched:\<badref\>:  store i8 %var_2_2193, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2236, i8* %var_2_21, align 1
; Matched:%var_2_2194:  %var_2_2194 = xor i32 %var_2_2185, %var_2_2184
; %var_2_2237 = xor i32 %var_2_2228, %var_2_2227
; Matched:%var_2_2195:  %var_2_2195 = lshr i32 %var_2_2194, 4
; %var_2_2238 = lshr i32 %var_2_2237, 4
; Matched:%var_2_2196:  %var_2_2196 = trunc i32 %var_2_2195 to i8
; %var_2_2239 = trunc i32 %var_2_2238 to i8
; Matched:%var_2_2197:  %var_2_2197 = and i8 %var_2_2196, 1
; %var_2_2240 = and i8 %var_2_2239, 1
; Matched:\<badref\>:  store i8 %var_2_2197, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2240, i8* %var_2_27, align 1
; Matched:%var_2_2198:  %var_2_2198 = icmp eq i32 %var_2_2185, 0
; %var_2_2241 = icmp eq i32 %var_2_2228, 0
; Matched:%var_2_2199:  %var_2_2199 = zext i1 %var_2_2198 to i8
; %var_2_2242 = zext i1 %var_2_2241 to i8
; Matched:\<badref\>:  store i8 %var_2_2199, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2242, i8* %var_2_30, align 1
; Matched:%var_2_2200:  %var_2_2200 = lshr i32 %var_2_2185, 31
; %var_2_2243 = lshr i32 %var_2_2228, 31
; Matched:%var_2_2201:  %var_2_2201 = trunc i32 %var_2_2200 to i8
; %var_2_2244 = trunc i32 %var_2_2243 to i8
; Matched:\<badref\>:  store i8 %var_2_2201, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2244, i8* %var_2_33, align 1
; Matched:%var_2_2202:  %var_2_2202 = lshr i32 %var_2_2184, 31
; %var_2_2245 = lshr i32 %var_2_2227, 31
; Matched:%var_2_2203:  %var_2_2203 = xor i32 %var_2_2200, %var_2_2202
; %var_2_2246 = xor i32 %var_2_2243, %var_2_2245
; Matched:%var_2_2204:  %var_2_2204 = add nuw nsw i32 %var_2_2203, %var_2_2200
; %var_2_2247 = add nuw nsw i32 %var_2_2246, %var_2_2243
; Matched:%var_2_2205:  %var_2_2205 = icmp eq i32 %var_2_2204, 2
; %var_2_2248 = icmp eq i32 %var_2_2247, 2
; Matched:%var_2_2206:  %var_2_2206 = zext i1 %var_2_2205 to i8
; %var_2_2249 = zext i1 %var_2_2248 to i8
; Matched:\<badref\>:  store i8 %var_2_2206, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2249, i8* %var_2_39, align 1
; Matched:%var_2_2207:  %var_2_2207 = sext i32 %var_2_2185 to i64
; %var_2_2250 = sext i32 %var_2_2228 to i64
; Matched:\<badref\>:  store i64 %var_2_2207, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2250, i64* %RSI.i1794, align 8
; Matched:%var_2_2208:  %var_2_2208 = shl nsw i64 %var_2_2207, 3
; %var_2_2251 = shl nsw i64 %var_2_2250, 3
; Matched:%var_2_2209:  %var_2_2209 = add i64 %var_2_2180, %var_2_2208
; %var_2_2252 = add i64 %var_2_2223, %var_2_2251
; Matched:%var_2_3146:  %var_2_3146 = add i64 %var_2_3135, 18
; %var_2_2253 = add i64 %var_2_2220, 18
; Matched:\<badref\>:  store i64 %var_2_3146, i64* %PC, align 8
; store i64 %var_2_2253, i64* %var_2_3, align 8
; Matched:%var_2_2211:  %var_2_2211 = inttoptr i64 %var_2_2209 to i64*
; %var_2_2254 = inttoptr i64 %var_2_2252 to i64*
; Matched:%var_2_2212:  %var_2_2212 = load i64, i64* %var_2_2211, align 8
; %var_2_2255 = load i64, i64* %var_2_2254, align 8
; Matched:\<badref\>:  store i64 %var_2_2212, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2255, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_2213:  %var_2_2213 = add i64 %var_2_2175, -56
; %var_2_2256 = add i64 %var_2_2218, -56
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_84, 23
; %var_2_2257 = add i64 %var_2_2220, 23
; Matched:\<badref\>:  store i64 %var_2_101, i64* %PC, align 8
; store i64 %var_2_2257, i64* %var_2_3, align 8
; Matched:%var_2_2215:  %var_2_2215 = inttoptr i64 %var_2_2213 to i64*
; %var_2_2258 = inttoptr i64 %var_2_2256 to i64*
; Matched:\<badref\>:  store i64 %var_2_2212, i64* %var_2_2215, align 8
; store i64 %var_2_2255, i64* %var_2_2258, align 8
%var_2_2259 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1873:  %var_2_1873 = add i64 %var_2_1872, -48
; %var_2_2260 = add i64 %var_2_2259, -48
%var_2_2261 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_324, 5
; %var_2_2262 = add i64 %var_2_2261, 5
; Matched:\<badref\>:  store i64 %var_2_1729, i64* %PC, align 8
; store i64 %var_2_2262, i64* %var_2_3, align 8
; Matched:%var_2_1876:  %var_2_1876 = inttoptr i64 %var_2_1873 to i64*
; %var_2_2263 = inttoptr i64 %var_2_2260 to i64*
; Matched:%var_2_2221:  %var_2_2221 = load i64, i64* %var_2_2220, align 8
; %var_2_2264 = load i64, i64* %var_2_2263, align 8
; Matched:\<badref\>:  store i64 %var_2_2221, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_2264, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
%var_2_2265 = load <2 x i32>, <2 x i32>* %var_2_814, align 1
%var_2_2266 = load <2 x i32>, <2 x i32>* %var_2_815, align 1
%var_2_2267 = extractelement <2 x i32> %var_2_2265, i32 0
; Matched:\<badref\>:  store i32 %var_2_1014, i32* %var_2_814, align 1, !tbaa !1287
; store i32 %var_2_2267, i32* %var_2_816, align 1
%var_2_2268 = extractelement <2 x i32> %var_2_2265, i32 1
; Matched:\<badref\>:  store i32 %var_2_2225, i32* %var_2_816, align 1, !tbaa !1287
; store i32 %var_2_2268, i32* %var_2_818, align 1
%var_2_2269 = extractelement <2 x i32> %var_2_2266, i32 0
; Matched:\<badref\>:  store i32 %var_2_2226, i32* %var_2_818, align 1, !tbaa !1287
; store i32 %var_2_2269, i32* %var_2_820, align 1
%var_2_2270 = extractelement <2 x i32> %var_2_2266, i32 1
; Matched:\<badref\>:  store i32 %var_2_1017, i32* %var_2_820, align 1, !tbaa !1287
; store i32 %var_2_2270, i32* %var_2_822, align 1
; Matched:%var_2_2228:  %var_2_2228 = add i64 %var_2_2216, -64
; %var_2_2271 = add i64 %var_2_2259, -64
; Matched:%var_2_310:  %var_2_310 = add i64 %var_2_305, 13
; %var_2_2272 = add i64 %var_2_2261, 13
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8
; store i64 %var_2_2272, i64* %var_2_3, align 8
; Matched:%var_2_2230:  %var_2_2230 = load double, double* %var_2_821, align 1
; %var_2_2273 = load double, double* %var_2_823, align 1
; Matched:%var_2_2231:  %var_2_2231 = inttoptr i64 %var_2_2228 to double*
; %var_2_2274 = inttoptr i64 %var_2_2271 to double*
; Matched:%var_2_2232:  %var_2_2232 = load double, double* %var_2_2231, align 8
; %var_2_2275 = load double, double* %var_2_2274, align 8
; Matched:%var_2_2233:  %var_2_2233 = fmul double %var_2_2230, %var_2_2232
; %var_2_2276 = fmul double %var_2_2273, %var_2_2275
; Matched:\<badref\>:  store double %var_2_2233, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_2276, double* %var_2_823, align 1
; Matched:%var_2_2234:  %var_2_2234 = add i64 %var_2_2216, -56
; %var_2_2277 = add i64 %var_2_2259, -56
; Matched:%var_2_939:  %var_2_939 = add i64 %var_2_905, 18
; %var_2_2278 = add i64 %var_2_2261, 18
; Matched:\<badref\>:  store i64 %var_2_939, i64* %PC, align 8
; store i64 %var_2_2278, i64* %var_2_3, align 8
; Matched:%var_2_2236:  %var_2_2236 = inttoptr i64 %var_2_2234 to double*
; %var_2_2279 = inttoptr i64 %var_2_2277 to double*
; Matched:%var_2_2237:  %var_2_2237 = load double, double* %var_2_2236, align 8
; %var_2_2280 = load double, double* %var_2_2279, align 8
; Matched:%var_2_2238:  %var_2_2238 = fmul double %var_2_2233, %var_2_2237
; %var_2_2281 = fmul double %var_2_2276, %var_2_2280
; Matched:\<badref\>:  store double %var_2_2238, double* %var_2_821, align 1, !tbaa !1284
; store double %var_2_2281, double* %var_2_823, align 1
; Matched:%var_2_2239:  %var_2_2239 = bitcast i64 %var_2_2221 to double
; %var_2_2282 = bitcast i64 %var_2_2264 to double
; Matched:%var_2_2240:  %var_2_2240 = fsub double %var_2_2239, %var_2_2238
; %var_2_2283 = fsub double %var_2_2282, %var_2_2281
; Matched:\<badref\>:  store double %var_2_2240, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_2283, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_2241:  %var_2_2241 = add i64 %var_2_2216, -80
; %var_2_2284 = add i64 %var_2_2259, -80
; Matched:%var_2_2242:  %var_2_2242 = add i64 %var_2_2218, 27
; %var_2_2285 = add i64 %var_2_2261, 27
; Matched:\<badref\>:  store i64 %var_2_1032, i64* %PC, align 8
; store i64 %var_2_2285, i64* %var_2_3, align 8
; Matched:%var_2_2243:  %var_2_2243 = inttoptr i64 %var_2_2241 to double*
; %var_2_2286 = inttoptr i64 %var_2_2284 to double*
; Matched:\<badref\>:  store double %var_2_2240, double* %var_2_2243, align 8
; store double %var_2_2283, double* %var_2_2286, align 8
; Matched:%var_2_2244:  %var_2_2244 = load i64, i64* %RBP, align 8
; %var_2_2287 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2245:  %var_2_2245 = add i64 %var_2_2244, -64
; %var_2_2288 = add i64 %var_2_2287, -64
%var_2_2289 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2021:  %var_2_2021 = add i64 %var_2_2020, 5
; %var_2_2290 = add i64 %var_2_2289, 5
; Matched:\<badref\>:  store i64 %var_2_1933, i64* %PC, align 8
; store i64 %var_2_2290, i64* %var_2_3, align 8
; Matched:%var_2_2248:  %var_2_2248 = load double, double* %var_2_67, align 1
; %var_2_2291 = load double, double* %var_2_67, align 1
; Matched:%var_2_2249:  %var_2_2249 = inttoptr i64 %var_2_2245 to double*
; %var_2_2292 = inttoptr i64 %var_2_2288 to double*
; Matched:%var_2_2250:  %var_2_2250 = load double, double* %var_2_2249, align 8
; %var_2_2293 = load double, double* %var_2_2292, align 8
; Matched:%var_2_2251:  %var_2_2251 = fmul double %var_2_2248, %var_2_2250
; %var_2_2294 = fmul double %var_2_2291, %var_2_2293
; Matched:\<badref\>:  store double %var_2_2251, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2294, double* %var_2_67, align 1
; Matched:%var_2_2252:  %var_2_2252 = add i64 %var_2_2244, -48
; %var_2_2295 = add i64 %var_2_2287, -48
; Matched:%var_2_272:  %var_2_272 = add i64 %var_2_267, 10
; %var_2_2296 = add i64 %var_2_2289, 10
; Matched:\<badref\>:  store i64 %var_2_272, i64* %PC, align 8
; store i64 %var_2_2296, i64* %var_2_3, align 8
; Matched:%var_2_2254:  %var_2_2254 = inttoptr i64 %var_2_2252 to double*
; %var_2_2297 = inttoptr i64 %var_2_2295 to double*
; Matched:%var_2_2255:  %var_2_2255 = load double, double* %var_2_2254, align 8
; %var_2_2298 = load double, double* %var_2_2297, align 8
; Matched:%var_2_2256:  %var_2_2256 = fmul double %var_2_2251, %var_2_2255
; %var_2_2299 = fmul double %var_2_2294, %var_2_2298
; Matched:\<badref\>:  store double %var_2_2256, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2299, double* %var_2_67, align 1
; Matched:%var_2_2257:  %var_2_2257 = add i64 %var_2_2244, -56
; %var_2_2300 = add i64 %var_2_2287, -56
; Matched:%var_2_1943:  %var_2_1943 = add i64 %var_2_1932, 15
; %var_2_2301 = add i64 %var_2_2289, 15
; Matched:\<badref\>:  store i64 %var_2_3322, i64* %PC, align 8
; store i64 %var_2_2301, i64* %var_2_3, align 8
; Matched:%var_2_2259:  %var_2_2259 = inttoptr i64 %var_2_2257 to double*
; %var_2_2302 = inttoptr i64 %var_2_2300 to double*
; Matched:%var_2_2260:  %var_2_2260 = load double, double* %var_2_2259, align 8
; %var_2_2303 = load double, double* %var_2_2302, align 8
; Matched:%var_2_2261:  %var_2_2261 = fsub double %var_2_2256, %var_2_2260
; %var_2_2304 = fsub double %var_2_2299, %var_2_2303
; Matched:\<badref\>:  store double %var_2_2261, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2304, double* %var_2_67, align 1
; Matched:%var_2_2262:  %var_2_2262 = add i64 %var_2_2244, -88
; %var_2_2305 = add i64 %var_2_2287, -88
; Matched:%var_2_1209:  %var_2_1209 = add i64 %var_2_1193, 20
; %var_2_2306 = add i64 %var_2_2289, 20
; Matched:\<badref\>:  store i64 %var_2_1667, i64* %PC, align 8
; store i64 %var_2_2306, i64* %var_2_3, align 8
; Matched:%var_2_2264:  %var_2_2264 = inttoptr i64 %var_2_2262 to double*
; %var_2_2307 = inttoptr i64 %var_2_2305 to double*
; Matched:\<badref\>:  store double %var_2_2261, double* %var_2_2264, align 8
; store double %var_2_2304, double* %var_2_2307, align 8
%var_2_2308 = load i64, i64* %RBP.i, align 8
%var_2_2309 = add i64 %var_2_2308, -16
%var_2_2310 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_458:  %var_2_458 = add i64 %var_2_457, 4
; %var_2_2311 = add i64 %var_2_2310, 4
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_2311, i64* %var_2_3, align 8
%var_2_2312 = inttoptr i64 %var_2_2309 to i64*
%var_2_2313 = load i64, i64* %var_2_2312, align 8
; Matched:\<badref\>:  store i64 %var_2_772, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2313, i64* %RDX.i1791, align 8
%var_2_2314 = add i64 %var_2_2308, -28
; Matched:%var_2_1556:  %var_2_1556 = add i64 %var_2_1551, 7
; %var_2_2315 = add i64 %var_2_2310, 7
; Matched:\<badref\>:  store i64 %var_2_1328, i64* %PC, align 8
; store i64 %var_2_2315, i64* %var_2_3, align 8
%var_2_2316 = inttoptr i64 %var_2_2314 to i32*
%var_2_2317 = load i32, i32* %var_2_2316, align 4
%var_2_2318 = add i32 %var_2_2317, 8
; Matched:%var_2_2276:  %var_2_2276 = zext i32 %var_2_2275 to i64
; %var_2_2319 = zext i32 %var_2_2318 to i64
; Matched:\<badref\>:  store i64 %var_2_2276, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2319, i64* %RCX.i1272, align 8
; Matched:%var_2_2277:  %var_2_2277 = icmp ugt i32 %var_2_2274, -9
; %var_2_2320 = icmp ugt i32 %var_2_2317, -9
; Matched:%var_2_2430:  %var_2_2430 = zext i1 %var_2_2429 to i8
; %var_2_2321 = zext i1 %var_2_2320 to i8
; Matched:\<badref\>:  store i8 %var_2_2896, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2321, i8* %var_2_14, align 1
; Matched:%var_2_2279:  %var_2_2279 = and i32 %var_2_2275, 255
; %var_2_2322 = and i32 %var_2_2318, 255
; Matched:%var_2_2898:  %var_2_2898 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2897) #14
; %var_2_2323 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2322)
; Matched:%var_2_2433:  %var_2_2433 = trunc i32 %var_2_2432 to i8
; %var_2_2324 = trunc i32 %var_2_2323 to i8
; Matched:%var_2_2282:  %var_2_2282 = and i8 %var_2_2281, 1
; %var_2_2325 = and i8 %var_2_2324, 1
; Matched:%var_2_2283:  %var_2_2283 = xor i8 %var_2_2282, 1
; %var_2_2326 = xor i8 %var_2_2325, 1
; Matched:\<badref\>:  store i8 %var_2_2901, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2326, i8* %var_2_21, align 1
; Matched:%var_2_2436:  %var_2_2436 = xor i32 %var_2_2427, %var_2_2426
; %var_2_2327 = xor i32 %var_2_2318, %var_2_2317
; Matched:%var_2_2903:  %var_2_2903 = lshr i32 %var_2_2902, 4
; %var_2_2328 = lshr i32 %var_2_2327, 4
; Matched:%var_2_2286:  %var_2_2286 = trunc i32 %var_2_2285 to i8
; %var_2_2329 = trunc i32 %var_2_2328 to i8
; Matched:%var_2_2905:  %var_2_2905 = and i8 %var_2_2904, 1
; %var_2_2330 = and i8 %var_2_2329, 1
; Matched:\<badref\>:  store i8 %var_2_2439, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2330, i8* %var_2_27, align 1
; Matched:%var_2_2288:  %var_2_2288 = icmp eq i32 %var_2_2275, 0
; %var_2_2331 = icmp eq i32 %var_2_2318, 0
; Matched:%var_2_2289:  %var_2_2289 = zext i1 %var_2_2288 to i8
; %var_2_2332 = zext i1 %var_2_2331 to i8
; Matched:\<badref\>:  store i8 %var_2_2907, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2332, i8* %var_2_30, align 1
; Matched:%var_2_2442:  %var_2_2442 = lshr i32 %var_2_2427, 31
; %var_2_2333 = lshr i32 %var_2_2318, 31
; Matched:%var_2_2909:  %var_2_2909 = trunc i32 %var_2_2908 to i8
; %var_2_2334 = trunc i32 %var_2_2333 to i8
; Matched:\<badref\>:  store i8 %var_2_2291, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2334, i8* %var_2_33, align 1
; Matched:%var_2_2910:  %var_2_2910 = lshr i32 %var_2_2892, 31
; %var_2_2335 = lshr i32 %var_2_2317, 31
; Matched:%var_2_2445:  %var_2_2445 = xor i32 %var_2_2442, %var_2_2444
; %var_2_2336 = xor i32 %var_2_2333, %var_2_2335
; Matched:%var_2_2294:  %var_2_2294 = add nuw nsw i32 %var_2_2293, %var_2_2290
; %var_2_2337 = add nuw nsw i32 %var_2_2336, %var_2_2333
; Matched:%var_2_2295:  %var_2_2295 = icmp eq i32 %var_2_2294, 2
; %var_2_2338 = icmp eq i32 %var_2_2337, 2
; Matched:%var_2_2914:  %var_2_2914 = zext i1 %var_2_2913 to i8
; %var_2_2339 = zext i1 %var_2_2338 to i8
; Matched:\<badref\>:  store i8 %var_2_2448, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2339, i8* %var_2_39, align 1
%var_2_2340 = sext i32 %var_2_2318 to i64
; Matched:\<badref\>:  store i64 %var_2_2297, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2340, i64* %RSI.i1794, align 8
; Matched:%var_2_2450:  %var_2_2450 = shl nsw i64 %var_2_2449, 3
; %var_2_2341 = shl nsw i64 %var_2_2340, 3
; Matched:%var_2_2451:  %var_2_2451 = add i64 %var_2_2422, %var_2_2450
; %var_2_2342 = add i64 %var_2_2313, %var_2_2341
; Matched:%var_2_1000:  %var_2_1000 = add i64 %var_2_966, 18
; %var_2_2343 = add i64 %var_2_2310, 18
; Matched:\<badref\>:  store i64 %var_2_1000, i64* %PC, align 8
; store i64 %var_2_2343, i64* %var_2_3, align 8
; Matched:%var_2_2453:  %var_2_2453 = inttoptr i64 %var_2_2451 to i64*
; %var_2_2344 = inttoptr i64 %var_2_2342 to i64*
; Matched:%var_2_2454:  %var_2_2454 = load i64, i64* %var_2_2453, align 8
; %var_2_2345 = load i64, i64* %var_2_2344, align 8
; Matched:\<badref\>:  store i64 %var_2_2302, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2345, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_80:  %var_2_80 = add i64 %var_2_60, 22
; %var_2_2346 = add i64 %var_2_2310, 22
; Matched:\<badref\>:  store i64 %var_2_2303, i64* %PC, align 8
; store i64 %var_2_2346, i64* %var_2_3, align 8
%var_2_2347 = load i64, i64* %var_2_2312, align 8
; Matched:\<badref\>:  store i64 %var_2_1326, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2347, i64* %RDX.i1791, align 8
; Matched:%var_2_2381:  %var_2_2381 = add i64 %var_2_2343, 25
; %var_2_2348 = add i64 %var_2_2310, 25
; Matched:\<badref\>:  store i64 %var_2_2685, i64* %PC, align 8
; store i64 %var_2_2348, i64* %var_2_3, align 8
%var_2_2349 = load i32, i32* %var_2_2316, align 4
%var_2_2350 = add i32 %var_2_2349, 10
; Matched:%var_2_2460:  %var_2_2460 = zext i32 %var_2_2459 to i64
; %var_2_2351 = zext i32 %var_2_2350 to i64
; Matched:\<badref\>:  store i64 %var_2_2460, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2351, i64* %RCX.i1272, align 8
; Matched:%var_2_2309:  %var_2_2309 = icmp ugt i32 %var_2_2306, -11
; %var_2_2352 = icmp ugt i32 %var_2_2349, -11
; Matched:%var_2_2310:  %var_2_2310 = zext i1 %var_2_2309 to i8
; %var_2_2353 = zext i1 %var_2_2352 to i8
; Matched:\<badref\>:  store i8 %var_2_2462, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2353, i8* %var_2_14, align 1
; Matched:%var_2_3198:  %var_2_3198 = and i32 %var_2_3194, 255
; %var_2_2354 = and i32 %var_2_2350, 255
; Matched:%var_2_2464:  %var_2_2464 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2463) #14
; %var_2_2355 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2354)
; Matched:%var_2_2313:  %var_2_2313 = trunc i32 %var_2_2312 to i8
; %var_2_2356 = trunc i32 %var_2_2355 to i8
; Matched:%var_2_2466:  %var_2_2466 = and i8 %var_2_2465, 1
; %var_2_2357 = and i8 %var_2_2356, 1
; Matched:%var_2_2467:  %var_2_2467 = xor i8 %var_2_2466, 1
; %var_2_2358 = xor i8 %var_2_2357, 1
; Matched:\<badref\>:  store i8 %var_2_2315, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2358, i8* %var_2_21, align 1
; Matched:%var_2_2316:  %var_2_2316 = xor i32 %var_2_2307, %var_2_2306
; %var_2_2359 = xor i32 %var_2_2350, %var_2_2349
; Matched:%var_2_2469:  %var_2_2469 = lshr i32 %var_2_2468, 4
; %var_2_2360 = lshr i32 %var_2_2359, 4
; Matched:%var_2_3205:  %var_2_3205 = trunc i32 %var_2_3204 to i8
; %var_2_2361 = trunc i32 %var_2_2360 to i8
; Matched:%var_2_2471:  %var_2_2471 = and i8 %var_2_2470, 1
; %var_2_2362 = and i8 %var_2_2361, 1
; Matched:\<badref\>:  store i8 %var_2_2319, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2362, i8* %var_2_27, align 1
; Matched:%var_2_2472:  %var_2_2472 = icmp eq i32 %var_2_2459, 0
; %var_2_2363 = icmp eq i32 %var_2_2350, 0
; Matched:%var_2_2473:  %var_2_2473 = zext i1 %var_2_2472 to i8
; %var_2_2364 = zext i1 %var_2_2363 to i8
; Matched:\<badref\>:  store i8 %var_2_2321, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2364, i8* %var_2_30, align 1
; Matched:%var_2_2322:  %var_2_2322 = lshr i32 %var_2_2307, 31
; %var_2_2365 = lshr i32 %var_2_2350, 31
; Matched:%var_2_2475:  %var_2_2475 = trunc i32 %var_2_2474 to i8
; %var_2_2366 = trunc i32 %var_2_2365 to i8
; Matched:\<badref\>:  store i8 %var_2_3210, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2366, i8* %var_2_33, align 1
; Matched:%var_2_2476:  %var_2_2476 = lshr i32 %var_2_2458, 31
; %var_2_2367 = lshr i32 %var_2_2349, 31
; Matched:%var_2_2325:  %var_2_2325 = xor i32 %var_2_2322, %var_2_2324
; %var_2_2368 = xor i32 %var_2_2365, %var_2_2367
; Matched:%var_2_2478:  %var_2_2478 = add nuw nsw i32 %var_2_2477, %var_2_2474
; %var_2_2369 = add nuw nsw i32 %var_2_2368, %var_2_2365
; Matched:%var_2_2479:  %var_2_2479 = icmp eq i32 %var_2_2478, 2
; %var_2_2370 = icmp eq i32 %var_2_2369, 2
; Matched:%var_2_2328:  %var_2_2328 = zext i1 %var_2_2327 to i8
; %var_2_2371 = zext i1 %var_2_2370 to i8
; Matched:\<badref\>:  store i8 %var_2_2328, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2371, i8* %var_2_39, align 1
; Matched:%var_2_2481:  %var_2_2481 = sext i32 %var_2_2459 to i64
; %var_2_2372 = sext i32 %var_2_2350 to i64
; Matched:\<badref\>:  store i64 %var_2_2481, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2372, i64* %RSI.i1794, align 8
; Matched:%var_2_2330:  %var_2_2330 = shl nsw i64 %var_2_2329, 3
; %var_2_2373 = shl nsw i64 %var_2_2372, 3
; Matched:%var_2_2331:  %var_2_2331 = add i64 %var_2_2304, %var_2_2330
; %var_2_2374 = add i64 %var_2_2347, %var_2_2373
; Matched:%var_2_2560:  %var_2_2560 = add i64 %var_2_2495, 36
; %var_2_2375 = add i64 %var_2_2310, 36
; Matched:\<badref\>:  store i64 %var_2_2788, i64* %PC, align 8
; store i64 %var_2_2375, i64* %var_2_3, align 8
; Matched:%var_2_2333:  %var_2_2333 = bitcast i64 %var_2_2302 to double
; %var_2_2376 = bitcast i64 %var_2_2345 to double
; Matched:%var_2_2334:  %var_2_2334 = inttoptr i64 %var_2_2331 to double*
; %var_2_2377 = inttoptr i64 %var_2_2374 to double*
; Matched:%var_2_2335:  %var_2_2335 = load double, double* %var_2_2334, align 8
; %var_2_2378 = load double, double* %var_2_2377, align 8
; Matched:%var_2_2336:  %var_2_2336 = fadd double %var_2_2333, %var_2_2335
; %var_2_2379 = fadd double %var_2_2376, %var_2_2378
; Matched:\<badref\>:  store double %var_2_2336, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2379, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2337:  %var_2_2337 = load i64, i64* %RBP, align 8
; %var_2_2380 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2338:  %var_2_2338 = add i64 %var_2_2337, -96
; %var_2_2381 = add i64 %var_2_2380, -96
; Matched:%var_2_2491:  %var_2_2491 = add i64 %var_2_2419, 41
; %var_2_2382 = add i64 %var_2_2310, 41
; Matched:\<badref\>:  store i64 %var_2_2491, i64* %PC, align 8
; store i64 %var_2_2382, i64* %var_2_3, align 8
; Matched:%var_2_2340:  %var_2_2340 = inttoptr i64 %var_2_2338 to double*
; %var_2_2383 = inttoptr i64 %var_2_2381 to double*
; Matched:\<badref\>:  store double %var_2_2336, double* %var_2_2340, align 8
; store double %var_2_2379, double* %var_2_2383, align 8
%var_2_2384 = load i64, i64* %RBP.i, align 8
%var_2_2385 = add i64 %var_2_2384, -16
%var_2_2386 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1400:  %var_2_1400 = add i64 %var_2_1399, 4
; %var_2_2387 = add i64 %var_2_2386, 4
; Matched:\<badref\>:  store i64 %var_2_189, i64* %PC, align 8
; store i64 %var_2_2387, i64* %var_2_3, align 8
%var_2_2388 = inttoptr i64 %var_2_2385 to i64*
%var_2_2389 = load i64, i64* %var_2_2388, align 8
; Matched:\<badref\>:  store i64 %var_2_797, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2389, i64* %RDX.i1791, align 8
%var_2_2390 = add i64 %var_2_2384, -28
; Matched:%var_2_1480:  %var_2_1480 = add i64 %var_2_1475, 7
; %var_2_2391 = add i64 %var_2_2386, 7
; Matched:\<badref\>:  store i64 %var_2_1251, i64* %PC, align 8
; store i64 %var_2_2391, i64* %var_2_3, align 8
%var_2_2392 = inttoptr i64 %var_2_2390 to i32*
%var_2_2393 = load i32, i32* %var_2_2392, align 4
%var_2_2394 = add i32 %var_2_2393, 9
; Matched:%var_2_2504:  %var_2_2504 = zext i32 %var_2_2503 to i64
; %var_2_2395 = zext i32 %var_2_2394 to i64
; Matched:\<badref\>:  store i64 %var_2_2352, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2395, i64* %RCX.i1272, align 8
; Matched:%var_2_2353:  %var_2_2353 = icmp ugt i32 %var_2_2350, -10
; %var_2_2396 = icmp ugt i32 %var_2_2393, -10
; Matched:%var_2_2354:  %var_2_2354 = zext i1 %var_2_2353 to i8
; %var_2_2397 = zext i1 %var_2_2396 to i8
; Matched:\<badref\>:  store i8 %var_2_2506, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2397, i8* %var_2_14, align 1
; Matched:%var_2_2507:  %var_2_2507 = and i32 %var_2_2503, 255
; %var_2_2398 = and i32 %var_2_2394, 255
; Matched:%var_2_2508:  %var_2_2508 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2507) #14
; %var_2_2399 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2398)
; Matched:%var_2_2357:  %var_2_2357 = trunc i32 %var_2_2356 to i8
; %var_2_2400 = trunc i32 %var_2_2399 to i8
; Matched:%var_2_2510:  %var_2_2510 = and i8 %var_2_2509, 1
; %var_2_2401 = and i8 %var_2_2400, 1
; Matched:%var_2_2359:  %var_2_2359 = xor i8 %var_2_2358, 1
; %var_2_2402 = xor i8 %var_2_2401, 1
; Matched:\<badref\>:  store i8 %var_2_2359, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2402, i8* %var_2_21, align 1
; Matched:%var_2_2949:  %var_2_2949 = xor i32 %var_2_2940, %var_2_2939
; %var_2_2403 = xor i32 %var_2_2394, %var_2_2393
; Matched:%var_2_2950:  %var_2_2950 = lshr i32 %var_2_2949, 4
; %var_2_2404 = lshr i32 %var_2_2403, 4
; Matched:%var_2_2514:  %var_2_2514 = trunc i32 %var_2_2513 to i8
; %var_2_2405 = trunc i32 %var_2_2404 to i8
; Matched:%var_2_2952:  %var_2_2952 = and i8 %var_2_2951, 1
; %var_2_2406 = and i8 %var_2_2405, 1
; Matched:\<badref\>:  store i8 %var_2_2952, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2406, i8* %var_2_27, align 1
; Matched:%var_2_2516:  %var_2_2516 = icmp eq i32 %var_2_2503, 0
; %var_2_2407 = icmp eq i32 %var_2_2394, 0
; Matched:%var_2_2365:  %var_2_2365 = zext i1 %var_2_2364 to i8
; %var_2_2408 = zext i1 %var_2_2407 to i8
; Matched:\<badref\>:  store i8 %var_2_2954, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2408, i8* %var_2_30, align 1
; Matched:%var_2_2955:  %var_2_2955 = lshr i32 %var_2_2940, 31
; %var_2_2409 = lshr i32 %var_2_2394, 31
; Matched:%var_2_2956:  %var_2_2956 = trunc i32 %var_2_2955 to i8
; %var_2_2410 = trunc i32 %var_2_2409 to i8
; Matched:\<badref\>:  store i8 %var_2_2519, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2410, i8* %var_2_33, align 1
; Matched:%var_2_2957:  %var_2_2957 = lshr i32 %var_2_2939, 31
; %var_2_2411 = lshr i32 %var_2_2393, 31
; Matched:%var_2_2958:  %var_2_2958 = xor i32 %var_2_2955, %var_2_2957
; %var_2_2412 = xor i32 %var_2_2409, %var_2_2411
; Matched:%var_2_2522:  %var_2_2522 = add nuw nsw i32 %var_2_2521, %var_2_2518
; %var_2_2413 = add nuw nsw i32 %var_2_2412, %var_2_2409
; Matched:%var_2_2960:  %var_2_2960 = icmp eq i32 %var_2_2959, 2
; %var_2_2414 = icmp eq i32 %var_2_2413, 2
; Matched:%var_2_2372:  %var_2_2372 = zext i1 %var_2_2371 to i8
; %var_2_2415 = zext i1 %var_2_2414 to i8
; Matched:\<badref\>:  store i8 %var_2_2372, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2415, i8* %var_2_39, align 1
%var_2_2416 = sext i32 %var_2_2394 to i64
; Matched:\<badref\>:  store i64 %var_2_2525, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2416, i64* %RSI.i1794, align 8
; Matched:%var_2_2374:  %var_2_2374 = shl nsw i64 %var_2_2373, 3
; %var_2_2417 = shl nsw i64 %var_2_2416, 3
; Matched:%var_2_2375:  %var_2_2375 = add i64 %var_2_2346, %var_2_2374
; %var_2_2418 = add i64 %var_2_2389, %var_2_2417
; Matched:%var_2_552:  %var_2_552 = add i64 %var_2_541, 18
; %var_2_2419 = add i64 %var_2_2386, 18
; Matched:\<badref\>:  store i64 %var_2_2235, i64* %PC, align 8
; store i64 %var_2_2419, i64* %var_2_3, align 8
; Matched:%var_2_2377:  %var_2_2377 = inttoptr i64 %var_2_2375 to i64*
; %var_2_2420 = inttoptr i64 %var_2_2418 to i64*
; Matched:%var_2_2378:  %var_2_2378 = load i64, i64* %var_2_2377, align 8
; %var_2_2421 = load i64, i64* %var_2_2420, align 8
; Matched:\<badref\>:  store i64 %var_2_2530, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2421, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2531:  %var_2_2531 = add i64 %var_2_2495, 22
; %var_2_2422 = add i64 %var_2_2386, 22
; Matched:\<badref\>:  store i64 %var_2_2759, i64* %PC, align 8
; store i64 %var_2_2422, i64* %var_2_3, align 8
%var_2_2423 = load i64, i64* %var_2_2388, align 8
; Matched:\<badref\>:  store i64 %var_2_2802, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2423, i64* %RDX.i1791, align 8
; Matched:%var_2_2533:  %var_2_2533 = add i64 %var_2_2495, 25
; %var_2_2424 = add i64 %var_2_2386, 25
; Matched:\<badref\>:  store i64 %var_2_2533, i64* %PC, align 8
; store i64 %var_2_2424, i64* %var_2_3, align 8
%var_2_2425 = load i32, i32* %var_2_2392, align 4
%var_2_2426 = add i32 %var_2_2425, 11
; Matched:%var_2_3253:  %var_2_3253 = zext i32 %var_2_3252 to i64
; %var_2_2427 = zext i32 %var_2_2426 to i64
; Matched:\<badref\>:  store i64 %var_2_3253, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2427, i64* %RCX.i1272, align 8
; Matched:%var_2_3254:  %var_2_3254 = icmp ugt i32 %var_2_3251, -12
; %var_2_2428 = icmp ugt i32 %var_2_2425, -12
; Matched:%var_2_3255:  %var_2_3255 = zext i1 %var_2_3254 to i8
; %var_2_2429 = zext i1 %var_2_2428 to i8
; Matched:\<badref\>:  store i8 %var_2_2386, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2429, i8* %var_2_14, align 1
; Matched:%var_2_2387:  %var_2_2387 = and i32 %var_2_2383, 255
; %var_2_2430 = and i32 %var_2_2426, 255
; Matched:%var_2_3257:  %var_2_3257 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3256) #14
; %var_2_2431 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2430)
; Matched:%var_2_3258:  %var_2_3258 = trunc i32 %var_2_3257 to i8
; %var_2_2432 = trunc i32 %var_2_2431 to i8
; Matched:%var_2_3259:  %var_2_3259 = and i8 %var_2_3258, 1
; %var_2_2433 = and i8 %var_2_2432, 1
; Matched:%var_2_3260:  %var_2_3260 = xor i8 %var_2_3259, 1
; %var_2_2434 = xor i8 %var_2_2433, 1
; Matched:\<badref\>:  store i8 %var_2_3260, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2434, i8* %var_2_21, align 1
; Matched:%var_2_3261:  %var_2_3261 = xor i32 %var_2_3252, %var_2_3251
; %var_2_2435 = xor i32 %var_2_2426, %var_2_2425
; Matched:%var_2_2393:  %var_2_2393 = lshr i32 %var_2_2392, 4
; %var_2_2436 = lshr i32 %var_2_2435, 4
; Matched:%var_2_2394:  %var_2_2394 = trunc i32 %var_2_2393 to i8
; %var_2_2437 = trunc i32 %var_2_2436 to i8
; Matched:%var_2_3264:  %var_2_3264 = and i8 %var_2_3263, 1
; %var_2_2438 = and i8 %var_2_2437, 1
; Matched:\<badref\>:  store i8 %var_2_3264, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2438, i8* %var_2_27, align 1
; Matched:%var_2_3265:  %var_2_3265 = icmp eq i32 %var_2_3252, 0
; %var_2_2439 = icmp eq i32 %var_2_2426, 0
; Matched:%var_2_3266:  %var_2_3266 = zext i1 %var_2_3265 to i8
; %var_2_2440 = zext i1 %var_2_2439 to i8
; Matched:\<badref\>:  store i8 %var_2_3266, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2440, i8* %var_2_30, align 1
; Matched:%var_2_3267:  %var_2_3267 = lshr i32 %var_2_3252, 31
; %var_2_2441 = lshr i32 %var_2_2426, 31
; Matched:%var_2_2399:  %var_2_2399 = trunc i32 %var_2_2398 to i8
; %var_2_2442 = trunc i32 %var_2_2441 to i8
; Matched:\<badref\>:  store i8 %var_2_2399, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2442, i8* %var_2_33, align 1
; Matched:%var_2_3269:  %var_2_3269 = lshr i32 %var_2_3251, 31
; %var_2_2443 = lshr i32 %var_2_2425, 31
; Matched:%var_2_3270:  %var_2_3270 = xor i32 %var_2_3267, %var_2_3269
; %var_2_2444 = xor i32 %var_2_2441, %var_2_2443
; Matched:%var_2_3271:  %var_2_3271 = add nuw nsw i32 %var_2_3270, %var_2_3267
; %var_2_2445 = add nuw nsw i32 %var_2_2444, %var_2_2441
; Matched:%var_2_3272:  %var_2_3272 = icmp eq i32 %var_2_3271, 2
; %var_2_2446 = icmp eq i32 %var_2_2445, 2
; Matched:%var_2_3273:  %var_2_3273 = zext i1 %var_2_3272 to i8
; %var_2_2447 = zext i1 %var_2_2446 to i8
; Matched:\<badref\>:  store i8 %var_2_3273, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2447, i8* %var_2_39, align 1
; Matched:%var_2_2405:  %var_2_2405 = sext i32 %var_2_2383 to i64
; %var_2_2448 = sext i32 %var_2_2426 to i64
; Matched:\<badref\>:  store i64 %var_2_2405, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2448, i64* %RSI.i1794, align 8
; Matched:%var_2_2406:  %var_2_2406 = shl nsw i64 %var_2_2405, 3
; %var_2_2449 = shl nsw i64 %var_2_2448, 3
; Matched:%var_2_2407:  %var_2_2407 = add i64 %var_2_2380, %var_2_2406
; %var_2_2450 = add i64 %var_2_2423, %var_2_2449
; Matched:%var_2_1616:  %var_2_1616 = add i64 %var_2_1551, 36
; %var_2_2451 = add i64 %var_2_2386, 36
; Matched:\<badref\>:  store i64 %var_2_2484, i64* %PC, align 8
; store i64 %var_2_2451, i64* %var_2_3, align 8
; Matched:%var_2_2409:  %var_2_2409 = bitcast i64 %var_2_2378 to double
; %var_2_2452 = bitcast i64 %var_2_2421 to double
; Matched:%var_2_2410:  %var_2_2410 = inttoptr i64 %var_2_2407 to double*
; %var_2_2453 = inttoptr i64 %var_2_2450 to double*
; Matched:%var_2_2411:  %var_2_2411 = load double, double* %var_2_2410, align 8
; %var_2_2454 = load double, double* %var_2_2453, align 8
; Matched:%var_2_2412:  %var_2_2412 = fadd double %var_2_2409, %var_2_2411
; %var_2_2455 = fadd double %var_2_2452, %var_2_2454
; Matched:\<badref\>:  store double %var_2_2412, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2455, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2413:  %var_2_2413 = load i64, i64* %RBP, align 8
; %var_2_2456 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2414:  %var_2_2414 = add i64 %var_2_2413, -104
; %var_2_2457 = add i64 %var_2_2456, -104
; Matched:%var_2_2339:  %var_2_2339 = add i64 %var_2_2267, 41
; %var_2_2458 = add i64 %var_2_2386, 41
; Matched:\<badref\>:  store i64 %var_2_2339, i64* %PC, align 8
; store i64 %var_2_2458, i64* %var_2_3, align 8
; Matched:%var_2_2416:  %var_2_2416 = inttoptr i64 %var_2_2414 to double*
; %var_2_2459 = inttoptr i64 %var_2_2457 to double*
; Matched:\<badref\>:  store double %var_2_2412, double* %var_2_2416, align 8
; store double %var_2_2455, double* %var_2_2459, align 8
%var_2_2460 = load i64, i64* %RBP.i, align 8
%var_2_2461 = add i64 %var_2_2460, -16
%var_2_2462 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1476:  %var_2_1476 = add i64 %var_2_1475, 4
; %var_2_2463 = add i64 %var_2_2462, 4
; Matched:\<badref\>:  store i64 %var_2_2268, i64* %PC, align 8
; store i64 %var_2_2463, i64* %var_2_3, align 8
%var_2_2464 = inttoptr i64 %var_2_2461 to i64*
%var_2_2465 = load i64, i64* %var_2_2464, align 8
; Matched:\<badref\>:  store i64 %var_2_337, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2465, i64* %RDX.i1791, align 8
%var_2_2466 = add i64 %var_2_2460, -28
; Matched:%var_2_2652:  %var_2_2652 = add i64 %var_2_2647, 7
; %var_2_2467 = add i64 %var_2_2462, 7
; Matched:\<badref\>:  store i64 %var_2_2424, i64* %PC, align 8
; store i64 %var_2_2467, i64* %var_2_3, align 8
%var_2_2468 = inttoptr i64 %var_2_2466 to i32*
%var_2_2469 = load i32, i32* %var_2_2468, align 4
%var_2_2470 = add i32 %var_2_2469, 8
; Matched:%var_2_2894:  %var_2_2894 = zext i32 %var_2_2893 to i64
; %var_2_2471 = zext i32 %var_2_2470 to i64
; Matched:\<badref\>:  store i64 %var_2_2428, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2471, i64* %RCX.i1272, align 8
; Matched:%var_2_2895:  %var_2_2895 = icmp ugt i32 %var_2_2892, -9
; %var_2_2472 = icmp ugt i32 %var_2_2469, -9
; Matched:%var_2_2896:  %var_2_2896 = zext i1 %var_2_2895 to i8
; %var_2_2473 = zext i1 %var_2_2472 to i8
; Matched:\<badref\>:  store i8 %var_2_2430, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2473, i8* %var_2_14, align 1
; Matched:%var_2_2431:  %var_2_2431 = and i32 %var_2_2427, 255
; %var_2_2474 = and i32 %var_2_2470, 255
; Matched:%var_2_2280:  %var_2_2280 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2279) #14
; %var_2_2475 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2474)
; Matched:%var_2_2899:  %var_2_2899 = trunc i32 %var_2_2898 to i8
; %var_2_2476 = trunc i32 %var_2_2475 to i8
; Matched:%var_2_2900:  %var_2_2900 = and i8 %var_2_2899, 1
; %var_2_2477 = and i8 %var_2_2476, 1
; Matched:%var_2_2435:  %var_2_2435 = xor i8 %var_2_2434, 1
; %var_2_2478 = xor i8 %var_2_2477, 1
; Matched:\<badref\>:  store i8 %var_2_2283, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2478, i8* %var_2_21, align 1
; Matched:%var_2_2902:  %var_2_2902 = xor i32 %var_2_2893, %var_2_2892
; %var_2_2479 = xor i32 %var_2_2470, %var_2_2469
; Matched:%var_2_2437:  %var_2_2437 = lshr i32 %var_2_2436, 4
; %var_2_2480 = lshr i32 %var_2_2479, 4
; Matched:%var_2_2438:  %var_2_2438 = trunc i32 %var_2_2437 to i8
; %var_2_2481 = trunc i32 %var_2_2480 to i8
; Matched:%var_2_2287:  %var_2_2287 = and i8 %var_2_2286, 1
; %var_2_2482 = and i8 %var_2_2481, 1
; Matched:\<badref\>:  store i8 %var_2_2905, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2482, i8* %var_2_27, align 1
; Matched:%var_2_2906:  %var_2_2906 = icmp eq i32 %var_2_2893, 0
; %var_2_2483 = icmp eq i32 %var_2_2470, 0
; Matched:%var_2_2441:  %var_2_2441 = zext i1 %var_2_2440 to i8
; %var_2_2484 = zext i1 %var_2_2483 to i8
; Matched:\<badref\>:  store i8 %var_2_2289, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2484, i8* %var_2_30, align 1
; Matched:%var_2_2908:  %var_2_2908 = lshr i32 %var_2_2893, 31
; %var_2_2485 = lshr i32 %var_2_2470, 31
; Matched:%var_2_2443:  %var_2_2443 = trunc i32 %var_2_2442 to i8
; %var_2_2486 = trunc i32 %var_2_2485 to i8
; Matched:\<badref\>:  store i8 %var_2_2443, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2486, i8* %var_2_33, align 1
; Matched:%var_2_2292:  %var_2_2292 = lshr i32 %var_2_2274, 31
; %var_2_2487 = lshr i32 %var_2_2469, 31
; Matched:%var_2_2911:  %var_2_2911 = xor i32 %var_2_2908, %var_2_2910
; %var_2_2488 = xor i32 %var_2_2485, %var_2_2487
; Matched:%var_2_2446:  %var_2_2446 = add nuw nsw i32 %var_2_2445, %var_2_2442
; %var_2_2489 = add nuw nsw i32 %var_2_2488, %var_2_2485
; Matched:%var_2_2447:  %var_2_2447 = icmp eq i32 %var_2_2446, 2
; %var_2_2490 = icmp eq i32 %var_2_2489, 2
; Matched:%var_2_2296:  %var_2_2296 = zext i1 %var_2_2295 to i8
; %var_2_2491 = zext i1 %var_2_2490 to i8
; Matched:\<badref\>:  store i8 %var_2_2914, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2491, i8* %var_2_39, align 1
%var_2_2492 = sext i32 %var_2_2470 to i64
; Matched:\<badref\>:  store i64 %var_2_2449, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2492, i64* %RSI.i1794, align 8
; Matched:%var_2_2298:  %var_2_2298 = shl nsw i64 %var_2_2297, 3
; %var_2_2493 = shl nsw i64 %var_2_2492, 3
; Matched:%var_2_2299:  %var_2_2299 = add i64 %var_2_2270, %var_2_2298
; %var_2_2494 = add i64 %var_2_2465, %var_2_2493
; Matched:%var_2_1150:  %var_2_1150 = add i64 %var_2_1116, 18
; %var_2_2495 = add i64 %var_2_2462, 18
; Matched:\<badref\>:  store i64 %var_2_1150, i64* %PC, align 8
; store i64 %var_2_2495, i64* %var_2_3, align 8
; Matched:%var_2_2301:  %var_2_2301 = inttoptr i64 %var_2_2299 to i64*
; %var_2_2496 = inttoptr i64 %var_2_2494 to i64*
; Matched:%var_2_2302:  %var_2_2302 = load i64, i64* %var_2_2301, align 8
; %var_2_2497 = load i64, i64* %var_2_2496, align 8
; Matched:\<badref\>:  store i64 %var_2_2454, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2497, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1724:  %var_2_1724 = add i64 %var_2_1714, 22
; %var_2_2498 = add i64 %var_2_2462, 22
; Matched:\<badref\>:  store i64 %var_2_1359, i64* %PC, align 8
; store i64 %var_2_2498, i64* %var_2_3, align 8
%var_2_2499 = load i64, i64* %var_2_2464, align 8
; Matched:\<badref\>:  store i64 %var_2_1208, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2499, i64* %RDX.i1791, align 8
; Matched:%var_2_1285:  %var_2_1285 = add i64 %var_2_1246, 25
; %var_2_2500 = add i64 %var_2_2462, 25
; Matched:\<badref\>:  store i64 %var_2_2381, i64* %PC, align 8
; store i64 %var_2_2500, i64* %var_2_3, align 8
%var_2_2501 = load i32, i32* %var_2_2468, align 4
%var_2_2502 = add i32 %var_2_2501, 10
; Matched:%var_2_3195:  %var_2_3195 = zext i32 %var_2_3194 to i64
; %var_2_2503 = zext i32 %var_2_2502 to i64
; Matched:\<badref\>:  store i64 %var_2_3195, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2503, i64* %RCX.i1272, align 8
; Matched:%var_2_2461:  %var_2_2461 = icmp ugt i32 %var_2_2458, -11
; %var_2_2504 = icmp ugt i32 %var_2_2501, -11
; Matched:%var_2_2462:  %var_2_2462 = zext i1 %var_2_2461 to i8
; %var_2_2505 = zext i1 %var_2_2504 to i8
; Matched:\<badref\>:  store i8 %var_2_3197, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2505, i8* %var_2_14, align 1
; Matched:%var_2_2311:  %var_2_2311 = and i32 %var_2_2307, 255
; %var_2_2506 = and i32 %var_2_2502, 255
; Matched:%var_2_3199:  %var_2_3199 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3198) #14
; %var_2_2507 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2506)
; Matched:%var_2_2465:  %var_2_2465 = trunc i32 %var_2_2464 to i8
; %var_2_2508 = trunc i32 %var_2_2507 to i8
; Matched:%var_2_3201:  %var_2_3201 = and i8 %var_2_3200, 1
; %var_2_2509 = and i8 %var_2_2508, 1
; Matched:%var_2_3202:  %var_2_3202 = xor i8 %var_2_3201, 1
; %var_2_2510 = xor i8 %var_2_2509, 1
; Matched:\<badref\>:  store i8 %var_2_2467, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2510, i8* %var_2_21, align 1
; Matched:%var_2_2468:  %var_2_2468 = xor i32 %var_2_2459, %var_2_2458
; %var_2_2511 = xor i32 %var_2_2502, %var_2_2501
; Matched:%var_2_3204:  %var_2_3204 = lshr i32 %var_2_3203, 4
; %var_2_2512 = lshr i32 %var_2_2511, 4
; Matched:%var_2_2318:  %var_2_2318 = trunc i32 %var_2_2317 to i8
; %var_2_2513 = trunc i32 %var_2_2512 to i8
; Matched:%var_2_3206:  %var_2_3206 = and i8 %var_2_3205, 1
; %var_2_2514 = and i8 %var_2_2513, 1
; Matched:\<badref\>:  store i8 %var_2_2471, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2514, i8* %var_2_27, align 1
; Matched:%var_2_3207:  %var_2_3207 = icmp eq i32 %var_2_3194, 0
; %var_2_2515 = icmp eq i32 %var_2_2502, 0
; Matched:%var_2_3208:  %var_2_3208 = zext i1 %var_2_3207 to i8
; %var_2_2516 = zext i1 %var_2_2515 to i8
; Matched:\<badref\>:  store i8 %var_2_2473, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2516, i8* %var_2_30, align 1
; Matched:%var_2_2474:  %var_2_2474 = lshr i32 %var_2_2459, 31
; %var_2_2517 = lshr i32 %var_2_2502, 31
; Matched:%var_2_3210:  %var_2_3210 = trunc i32 %var_2_3209 to i8
; %var_2_2518 = trunc i32 %var_2_2517 to i8
; Matched:\<badref\>:  store i8 %var_2_2323, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2518, i8* %var_2_33, align 1
; Matched:%var_2_3211:  %var_2_3211 = lshr i32 %var_2_3193, 31
; %var_2_2519 = lshr i32 %var_2_2501, 31
; Matched:%var_2_2477:  %var_2_2477 = xor i32 %var_2_2474, %var_2_2476
; %var_2_2520 = xor i32 %var_2_2517, %var_2_2519
; Matched:%var_2_3213:  %var_2_3213 = add nuw nsw i32 %var_2_3212, %var_2_3209
; %var_2_2521 = add nuw nsw i32 %var_2_2520, %var_2_2517
; Matched:%var_2_3214:  %var_2_3214 = icmp eq i32 %var_2_3213, 2
; %var_2_2522 = icmp eq i32 %var_2_2521, 2
; Matched:%var_2_2480:  %var_2_2480 = zext i1 %var_2_2479 to i8
; %var_2_2523 = zext i1 %var_2_2522 to i8
; Matched:\<badref\>:  store i8 %var_2_2480, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2523, i8* %var_2_39, align 1
; Matched:%var_2_2329:  %var_2_2329 = sext i32 %var_2_2307 to i64
; %var_2_2524 = sext i32 %var_2_2502 to i64
; Matched:\<badref\>:  store i64 %var_2_2329, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2524, i64* %RSI.i1794, align 8
; Matched:%var_2_2482:  %var_2_2482 = shl nsw i64 %var_2_2481, 3
; %var_2_2525 = shl nsw i64 %var_2_2524, 3
; Matched:%var_2_2483:  %var_2_2483 = add i64 %var_2_2456, %var_2_2482
; %var_2_2526 = add i64 %var_2_2499, %var_2_2525
; Matched:%var_2_2408:  %var_2_2408 = add i64 %var_2_2343, 36
; %var_2_2527 = add i64 %var_2_2462, 36
; Matched:\<badref\>:  store i64 %var_2_2408, i64* %PC, align 8
; store i64 %var_2_2527, i64* %var_2_3, align 8
; Matched:%var_2_2485:  %var_2_2485 = bitcast i64 %var_2_2454 to double
; %var_2_2528 = bitcast i64 %var_2_2497 to double
; Matched:%var_2_2486:  %var_2_2486 = inttoptr i64 %var_2_2483 to double*
; %var_2_2529 = inttoptr i64 %var_2_2526 to double*
; Matched:%var_2_2487:  %var_2_2487 = load double, double* %var_2_2486, align 8
; %var_2_2530 = load double, double* %var_2_2529, align 8
; Matched:%var_2_2488:  %var_2_2488 = fsub double %var_2_2485, %var_2_2487
; %var_2_2531 = fsub double %var_2_2528, %var_2_2530
; Matched:\<badref\>:  store double %var_2_2488, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2531, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2489:  %var_2_2489 = load i64, i64* %RBP, align 8
; %var_2_2532 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2490:  %var_2_2490 = add i64 %var_2_2489, -112
; %var_2_2533 = add i64 %var_2_2532, -112
; Matched:%var_2_1189:  %var_2_1189 = add i64 %var_2_1116, 41
; %var_2_2534 = add i64 %var_2_2462, 41
; Matched:\<badref\>:  store i64 %var_2_1189, i64* %PC, align 8
; store i64 %var_2_2534, i64* %var_2_3, align 8
; Matched:%var_2_2492:  %var_2_2492 = inttoptr i64 %var_2_2490 to double*
; %var_2_2535 = inttoptr i64 %var_2_2533 to double*
; Matched:\<badref\>:  store double %var_2_2488, double* %var_2_2492, align 8
; store double %var_2_2531, double* %var_2_2535, align 8
%var_2_2536 = load i64, i64* %RBP.i, align 8
%var_2_2537 = add i64 %var_2_2536, -16
%var_2_2538 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_85:  %var_2_85 = add i64 %var_2_84, 4
; %var_2_2539 = add i64 %var_2_2538, 4
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8
; store i64 %var_2_2539, i64* %var_2_3, align 8
%var_2_2540 = inttoptr i64 %var_2_2537 to i64*
%var_2_2541 = load i64, i64* %var_2_2540, align 8
; Matched:\<badref\>:  store i64 %var_2_197, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2541, i64* %RDX.i1791, align 8
%var_2_2542 = add i64 %var_2_2536, -28
; Matched:%var_2_2576:  %var_2_2576 = add i64 %var_2_2571, 7
; %var_2_2543 = add i64 %var_2_2538, 7
; Matched:\<badref\>:  store i64 %var_2_2348, i64* %PC, align 8
; store i64 %var_2_2543, i64* %var_2_3, align 8
%var_2_2544 = inttoptr i64 %var_2_2542 to i32*
%var_2_2545 = load i32, i32* %var_2_2544, align 4
%var_2_2546 = add i32 %var_2_2545, 9
; Matched:%var_2_2941:  %var_2_2941 = zext i32 %var_2_2940 to i64
; %var_2_2547 = zext i32 %var_2_2546 to i64
; Matched:\<badref\>:  store i64 %var_2_2941, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2547, i64* %RCX.i1272, align 8
; Matched:%var_2_2505:  %var_2_2505 = icmp ugt i32 %var_2_2502, -10
; %var_2_2548 = icmp ugt i32 %var_2_2545, -10
; Matched:%var_2_2943:  %var_2_2943 = zext i1 %var_2_2942 to i8
; %var_2_2549 = zext i1 %var_2_2548 to i8
; Matched:\<badref\>:  store i8 %var_2_2943, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2549, i8* %var_2_14, align 1
; Matched:%var_2_2355:  %var_2_2355 = and i32 %var_2_2351, 255
; %var_2_2550 = and i32 %var_2_2546, 255
; Matched:%var_2_2945:  %var_2_2945 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2944) #14
; %var_2_2551 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2550)
; Matched:%var_2_2946:  %var_2_2946 = trunc i32 %var_2_2945 to i8
; %var_2_2552 = trunc i32 %var_2_2551 to i8
; Matched:%var_2_2947:  %var_2_2947 = and i8 %var_2_2946, 1
; %var_2_2553 = and i8 %var_2_2552, 1
; Matched:%var_2_2948:  %var_2_2948 = xor i8 %var_2_2947, 1
; %var_2_2554 = xor i8 %var_2_2553, 1
; Matched:\<badref\>:  store i8 %var_2_2511, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2554, i8* %var_2_21, align 1
; Matched:%var_2_2512:  %var_2_2512 = xor i32 %var_2_2503, %var_2_2502
; %var_2_2555 = xor i32 %var_2_2546, %var_2_2545
; Matched:%var_2_2361:  %var_2_2361 = lshr i32 %var_2_2360, 4
; %var_2_2556 = lshr i32 %var_2_2555, 4
; Matched:%var_2_2362:  %var_2_2362 = trunc i32 %var_2_2361 to i8
; %var_2_2557 = trunc i32 %var_2_2556 to i8
; Matched:%var_2_2515:  %var_2_2515 = and i8 %var_2_2514, 1
; %var_2_2558 = and i8 %var_2_2557, 1
; Matched:\<badref\>:  store i8 %var_2_2363, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2558, i8* %var_2_27, align 1
; Matched:%var_2_2364:  %var_2_2364 = icmp eq i32 %var_2_2351, 0
; %var_2_2559 = icmp eq i32 %var_2_2546, 0
; Matched:%var_2_2954:  %var_2_2954 = zext i1 %var_2_2953 to i8
; %var_2_2560 = zext i1 %var_2_2559 to i8
; Matched:\<badref\>:  store i8 %var_2_2517, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2560, i8* %var_2_30, align 1
; Matched:%var_2_2366:  %var_2_2366 = lshr i32 %var_2_2351, 31
; %var_2_2561 = lshr i32 %var_2_2546, 31
; Matched:%var_2_2367:  %var_2_2367 = trunc i32 %var_2_2366 to i8
; %var_2_2562 = trunc i32 %var_2_2561 to i8
; Matched:\<badref\>:  store i8 %var_2_2367, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2562, i8* %var_2_33, align 1
; Matched:%var_2_2520:  %var_2_2520 = lshr i32 %var_2_2502, 31
; %var_2_2563 = lshr i32 %var_2_2545, 31
; Matched:%var_2_2369:  %var_2_2369 = xor i32 %var_2_2366, %var_2_2368
; %var_2_2564 = xor i32 %var_2_2561, %var_2_2563
; Matched:%var_2_2959:  %var_2_2959 = add nuw nsw i32 %var_2_2958, %var_2_2955
; %var_2_2565 = add nuw nsw i32 %var_2_2564, %var_2_2561
; Matched:%var_2_2371:  %var_2_2371 = icmp eq i32 %var_2_2370, 2
; %var_2_2566 = icmp eq i32 %var_2_2565, 2
; Matched:%var_2_2524:  %var_2_2524 = zext i1 %var_2_2523 to i8
; %var_2_2567 = zext i1 %var_2_2566 to i8
; Matched:\<badref\>:  store i8 %var_2_2961, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2567, i8* %var_2_39, align 1
%var_2_2568 = sext i32 %var_2_2546 to i64
; Matched:\<badref\>:  store i64 %var_2_2373, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2568, i64* %RSI.i1794, align 8
; Matched:%var_2_2526:  %var_2_2526 = shl nsw i64 %var_2_2525, 3
; %var_2_2569 = shl nsw i64 %var_2_2568, 3
; Matched:%var_2_2527:  %var_2_2527 = add i64 %var_2_2498, %var_2_2526
; %var_2_2570 = add i64 %var_2_2541, %var_2_2569
; Matched:%var_2_2756:  %var_2_2756 = add i64 %var_2_2723, 18
; %var_2_2571 = add i64 %var_2_2538, 18
; Matched:\<badref\>:  store i64 %var_2_2756, i64* %PC, align 8
; store i64 %var_2_2571, i64* %var_2_3, align 8
; Matched:%var_2_2529:  %var_2_2529 = inttoptr i64 %var_2_2527 to i64*
; %var_2_2572 = inttoptr i64 %var_2_2570 to i64*
; Matched:%var_2_2530:  %var_2_2530 = load i64, i64* %var_2_2529, align 8
; %var_2_2573 = load i64, i64* %var_2_2572, align 8
; Matched:\<badref\>:  store i64 %var_2_2378, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2573, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2835:  %var_2_2835 = add i64 %var_2_2799, 22
; %var_2_2574 = add i64 %var_2_2538, 22
; Matched:\<badref\>:  store i64 %var_2_596, i64* %PC, align 8
; store i64 %var_2_2574, i64* %var_2_3, align 8
%var_2_2575 = load i64, i64* %var_2_2540, align 8
; Matched:\<badref\>:  store i64 %var_2_717, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2575, i64* %RDX.i1791, align 8
; Matched:%var_2_1361:  %var_2_1361 = add i64 %var_2_1323, 25
; %var_2_2576 = add i64 %var_2_2538, 25
; Matched:\<badref\>:  store i64 %var_2_1361, i64* %PC, align 8
; store i64 %var_2_2576, i64* %var_2_3, align 8
%var_2_2577 = load i32, i32* %var_2_2544, align 4
%var_2_2578 = add i32 %var_2_2577, 11
; Matched:%var_2_2384:  %var_2_2384 = zext i32 %var_2_2383 to i64
; %var_2_2579 = zext i32 %var_2_2578 to i64
; Matched:\<badref\>:  store i64 %var_2_2384, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2579, i64* %RCX.i1272, align 8
; Matched:%var_2_2385:  %var_2_2385 = icmp ugt i32 %var_2_2382, -12
; %var_2_2580 = icmp ugt i32 %var_2_2577, -12
; Matched:%var_2_2386:  %var_2_2386 = zext i1 %var_2_2385 to i8
; %var_2_2581 = zext i1 %var_2_2580 to i8
; Matched:\<badref\>:  store i8 %var_2_2538, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2581, i8* %var_2_14, align 1
; Matched:%var_2_2539:  %var_2_2539 = and i32 %var_2_2535, 255
; %var_2_2582 = and i32 %var_2_2578, 255
; Matched:%var_2_2388:  %var_2_2388 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2387) #14
; %var_2_2583 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2582)
; Matched:%var_2_2389:  %var_2_2389 = trunc i32 %var_2_2388 to i8
; %var_2_2584 = trunc i32 %var_2_2583 to i8
; Matched:%var_2_2390:  %var_2_2390 = and i8 %var_2_2389, 1
; %var_2_2585 = and i8 %var_2_2584, 1
; Matched:%var_2_2391:  %var_2_2391 = xor i8 %var_2_2390, 1
; %var_2_2586 = xor i8 %var_2_2585, 1
; Matched:\<badref\>:  store i8 %var_2_2391, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2586, i8* %var_2_21, align 1
; Matched:%var_2_2392:  %var_2_2392 = xor i32 %var_2_2383, %var_2_2382
; %var_2_2587 = xor i32 %var_2_2578, %var_2_2577
; Matched:%var_2_2545:  %var_2_2545 = lshr i32 %var_2_2544, 4
; %var_2_2588 = lshr i32 %var_2_2587, 4
; Matched:%var_2_2546:  %var_2_2546 = trunc i32 %var_2_2545 to i8
; %var_2_2589 = trunc i32 %var_2_2588 to i8
; Matched:%var_2_2395:  %var_2_2395 = and i8 %var_2_2394, 1
; %var_2_2590 = and i8 %var_2_2589, 1
; Matched:\<badref\>:  store i8 %var_2_2395, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2590, i8* %var_2_27, align 1
; Matched:%var_2_2396:  %var_2_2396 = icmp eq i32 %var_2_2383, 0
; %var_2_2591 = icmp eq i32 %var_2_2578, 0
; Matched:%var_2_2397:  %var_2_2397 = zext i1 %var_2_2396 to i8
; %var_2_2592 = zext i1 %var_2_2591 to i8
; Matched:\<badref\>:  store i8 %var_2_2397, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2592, i8* %var_2_30, align 1
; Matched:%var_2_2398:  %var_2_2398 = lshr i32 %var_2_2383, 31
; %var_2_2593 = lshr i32 %var_2_2578, 31
; Matched:%var_2_2551:  %var_2_2551 = trunc i32 %var_2_2550 to i8
; %var_2_2594 = trunc i32 %var_2_2593 to i8
; Matched:\<badref\>:  store i8 %var_2_2551, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2594, i8* %var_2_33, align 1
; Matched:%var_2_2400:  %var_2_2400 = lshr i32 %var_2_2382, 31
; %var_2_2595 = lshr i32 %var_2_2577, 31
; Matched:%var_2_2401:  %var_2_2401 = xor i32 %var_2_2398, %var_2_2400
; %var_2_2596 = xor i32 %var_2_2593, %var_2_2595
; Matched:%var_2_2402:  %var_2_2402 = add nuw nsw i32 %var_2_2401, %var_2_2398
; %var_2_2597 = add nuw nsw i32 %var_2_2596, %var_2_2593
; Matched:%var_2_2403:  %var_2_2403 = icmp eq i32 %var_2_2402, 2
; %var_2_2598 = icmp eq i32 %var_2_2597, 2
; Matched:%var_2_2404:  %var_2_2404 = zext i1 %var_2_2403 to i8
; %var_2_2599 = zext i1 %var_2_2598 to i8
; Matched:\<badref\>:  store i8 %var_2_2404, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2599, i8* %var_2_39, align 1
; Matched:%var_2_2557:  %var_2_2557 = sext i32 %var_2_2535 to i64
; %var_2_2600 = sext i32 %var_2_2578 to i64
; Matched:\<badref\>:  store i64 %var_2_2557, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2600, i64* %RSI.i1794, align 8
; Matched:%var_2_2558:  %var_2_2558 = shl nsw i64 %var_2_2557, 3
; %var_2_2601 = shl nsw i64 %var_2_2600, 3
; Matched:%var_2_2559:  %var_2_2559 = add i64 %var_2_2532, %var_2_2558
; %var_2_2602 = add i64 %var_2_2575, %var_2_2601
; Matched:%var_2_2788:  %var_2_2788 = add i64 %var_2_2723, 36
; %var_2_2603 = add i64 %var_2_2538, 36
; Matched:\<badref\>:  store i64 %var_2_1388, i64* %PC, align 8
; store i64 %var_2_2603, i64* %var_2_3, align 8
; Matched:%var_2_2561:  %var_2_2561 = bitcast i64 %var_2_2530 to double
; %var_2_2604 = bitcast i64 %var_2_2573 to double
; Matched:%var_2_2562:  %var_2_2562 = inttoptr i64 %var_2_2559 to double*
; %var_2_2605 = inttoptr i64 %var_2_2602 to double*
; Matched:%var_2_2563:  %var_2_2563 = load double, double* %var_2_2562, align 8
; %var_2_2606 = load double, double* %var_2_2605, align 8
; Matched:%var_2_2564:  %var_2_2564 = fsub double %var_2_2561, %var_2_2563
; %var_2_2607 = fsub double %var_2_2604, %var_2_2606
; Matched:\<badref\>:  store double %var_2_2564, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2607, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2565:  %var_2_2565 = load i64, i64* %RBP, align 8
; %var_2_2608 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2566:  %var_2_2566 = add i64 %var_2_2565, -120
; %var_2_2609 = add i64 %var_2_2608, -120
; Matched:%var_2_3030:  %var_2_3030 = add i64 %var_2_2997, 41
; %var_2_2610 = add i64 %var_2_2538, 41
; Matched:\<badref\>:  store i64 %var_2_3030, i64* %PC, align 8
; store i64 %var_2_2610, i64* %var_2_3, align 8
; Matched:%var_2_2568:  %var_2_2568 = inttoptr i64 %var_2_2566 to double*
; %var_2_2611 = inttoptr i64 %var_2_2609 to double*
; Matched:\<badref\>:  store double %var_2_2564, double* %var_2_2568, align 8
; store double %var_2_2607, double* %var_2_2611, align 8
%var_2_2612 = load i64, i64* %RBP.i, align 8
%var_2_2613 = add i64 %var_2_2612, -16
%var_2_2614 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2800:  %var_2_2800 = add i64 %var_2_2799, 4
; %var_2_2615 = add i64 %var_2_2614, 4
; Matched:\<badref\>:  store i64 %var_2_906, i64* %PC, align 8
; store i64 %var_2_2615, i64* %var_2_3, align 8
%var_2_2616 = inttoptr i64 %var_2_2613 to i64*
%var_2_2617 = load i64, i64* %var_2_2616, align 8
; Matched:\<badref\>:  store i64 %var_2_243, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2617, i64* %RDX.i1791, align 8
%var_2_2618 = add i64 %var_2_2612, -28
; Matched:%var_2_2272:  %var_2_2272 = add i64 %var_2_2267, 7
; %var_2_2619 = add i64 %var_2_2614, 7
; Matched:\<badref\>:  store i64 %var_2_1480, i64* %PC, align 8
; store i64 %var_2_2619, i64* %var_2_3, align 8
%var_2_2620 = inttoptr i64 %var_2_2618 to i32*
%var_2_2621 = load i32, i32* %var_2_2620, align 4
%var_2_2622 = add i32 %var_2_2621, 12
; Matched:%var_2_3038:  %var_2_3038 = zext i32 %var_2_3037 to i64
; %var_2_2623 = zext i32 %var_2_2622 to i64
; Matched:\<badref\>:  store i64 %var_2_3038, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2623, i64* %RCX.i1272, align 8
; Matched:%var_2_3039:  %var_2_3039 = icmp ugt i32 %var_2_3036, -13
; %var_2_2624 = icmp ugt i32 %var_2_2621, -13
; Matched:%var_2_3040:  %var_2_3040 = zext i1 %var_2_3039 to i8
; %var_2_2625 = zext i1 %var_2_2624 to i8
; Matched:\<badref\>:  store i8 %var_2_2582, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2625, i8* %var_2_14, align 1
; Matched:%var_2_2583:  %var_2_2583 = and i32 %var_2_2579, 255
; %var_2_2626 = and i32 %var_2_2622, 255
; Matched:%var_2_3042:  %var_2_3042 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3041) #14
; %var_2_2627 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2626)
; Matched:%var_2_3043:  %var_2_3043 = trunc i32 %var_2_3042 to i8
; %var_2_2628 = trunc i32 %var_2_2627 to i8
; Matched:%var_2_3044:  %var_2_3044 = and i8 %var_2_3043, 1
; %var_2_2629 = and i8 %var_2_2628, 1
; Matched:%var_2_3045:  %var_2_3045 = xor i8 %var_2_3044, 1
; %var_2_2630 = xor i8 %var_2_2629, 1
; Matched:\<badref\>:  store i8 %var_2_3045, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2630, i8* %var_2_21, align 1
; Matched:%var_2_3046:  %var_2_3046 = xor i32 %var_2_3037, %var_2_3036
; %var_2_2631 = xor i32 %var_2_2622, %var_2_2621
; Matched:%var_2_2589:  %var_2_2589 = lshr i32 %var_2_2588, 4
; %var_2_2632 = lshr i32 %var_2_2631, 4
; Matched:%var_2_2590:  %var_2_2590 = trunc i32 %var_2_2589 to i8
; %var_2_2633 = trunc i32 %var_2_2632 to i8
; Matched:%var_2_3049:  %var_2_3049 = and i8 %var_2_3048, 1
; %var_2_2634 = and i8 %var_2_2633, 1
; Matched:\<badref\>:  store i8 %var_2_3049, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2634, i8* %var_2_27, align 1
; Matched:%var_2_3050:  %var_2_3050 = icmp eq i32 %var_2_3037, 0
; %var_2_2635 = icmp eq i32 %var_2_2622, 0
; Matched:%var_2_3051:  %var_2_3051 = zext i1 %var_2_3050 to i8
; %var_2_2636 = zext i1 %var_2_2635 to i8
; Matched:\<badref\>:  store i8 %var_2_3051, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2636, i8* %var_2_30, align 1
; Matched:%var_2_3052:  %var_2_3052 = lshr i32 %var_2_3037, 31
; %var_2_2637 = lshr i32 %var_2_2622, 31
; Matched:%var_2_2595:  %var_2_2595 = trunc i32 %var_2_2594 to i8
; %var_2_2638 = trunc i32 %var_2_2637 to i8
; Matched:\<badref\>:  store i8 %var_2_2595, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2638, i8* %var_2_33, align 1
; Matched:%var_2_3054:  %var_2_3054 = lshr i32 %var_2_3036, 31
; %var_2_2639 = lshr i32 %var_2_2621, 31
; Matched:%var_2_3055:  %var_2_3055 = xor i32 %var_2_3052, %var_2_3054
; %var_2_2640 = xor i32 %var_2_2637, %var_2_2639
; Matched:%var_2_3056:  %var_2_3056 = add nuw nsw i32 %var_2_3055, %var_2_3052
; %var_2_2641 = add nuw nsw i32 %var_2_2640, %var_2_2637
; Matched:%var_2_3057:  %var_2_3057 = icmp eq i32 %var_2_3056, 2
; %var_2_2642 = icmp eq i32 %var_2_2641, 2
; Matched:%var_2_3058:  %var_2_3058 = zext i1 %var_2_3057 to i8
; %var_2_2643 = zext i1 %var_2_2642 to i8
; Matched:\<badref\>:  store i8 %var_2_3058, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2643, i8* %var_2_39, align 1
%var_2_2644 = sext i32 %var_2_2622 to i64
; Matched:\<badref\>:  store i64 %var_2_2601, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2644, i64* %RSI.i1794, align 8
; Matched:%var_2_2754:  %var_2_2754 = shl nsw i64 %var_2_2753, 3
; %var_2_2645 = shl nsw i64 %var_2_2644, 3
; Matched:%var_2_2755:  %var_2_2755 = add i64 %var_2_2726, %var_2_2754
; %var_2_2646 = add i64 %var_2_2617, %var_2_2645
; Matched:%var_2_510:  %var_2_510 = add i64 %var_2_499, 18
; %var_2_2647 = add i64 %var_2_2614, 18
; Matched:\<badref\>:  store i64 %var_2_510, i64* %PC, align 8
; store i64 %var_2_2647, i64* %var_2_3, align 8
; Matched:%var_2_2757:  %var_2_2757 = inttoptr i64 %var_2_2755 to i64*
; %var_2_2648 = inttoptr i64 %var_2_2646 to i64*
; Matched:%var_2_2758:  %var_2_2758 = load i64, i64* %var_2_2757, align 8
; %var_2_2649 = load i64, i64* %var_2_2648, align 8
; Matched:\<badref\>:  store i64 %var_2_2606, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2649, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_286, 22
; %var_2_2650 = add i64 %var_2_2614, 22
; Matched:\<badref\>:  store i64 %var_2_2455, i64* %PC, align 8
; store i64 %var_2_2650, i64* %var_2_3, align 8
%var_2_2651 = load i64, i64* %var_2_2616, align 8
; Matched:\<badref\>:  store i64 %var_2_424, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2651, i64* %RDX.i1791, align 8
; Matched:%var_2_2761:  %var_2_2761 = add i64 %var_2_2723, 25
; %var_2_2652 = add i64 %var_2_2614, 25
; Matched:\<badref\>:  store i64 %var_2_2761, i64* %PC, align 8
; store i64 %var_2_2652, i64* %var_2_3, align 8
%var_2_2653 = load i32, i32* %var_2_2620, align 4
%var_2_2654 = add i32 %var_2_2653, 14
; Matched:%var_2_2764:  %var_2_2764 = zext i32 %var_2_2763 to i64
; %var_2_2655 = zext i32 %var_2_2654 to i64
; Matched:\<badref\>:  store i64 %var_2_2764, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2655, i64* %RCX.i1272, align 8
; Matched:%var_2_2613:  %var_2_2613 = icmp ugt i32 %var_2_2610, -15
; %var_2_2656 = icmp ugt i32 %var_2_2653, -15
; Matched:%var_2_2614:  %var_2_2614 = zext i1 %var_2_2613 to i8
; %var_2_2657 = zext i1 %var_2_2656 to i8
; Matched:\<badref\>:  store i8 %var_2_2766, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2657, i8* %var_2_14, align 1
; Matched:%var_2_3344:  %var_2_3344 = and i32 %var_2_3340, 255
; %var_2_2658 = and i32 %var_2_2654, 255
; Matched:%var_2_2768:  %var_2_2768 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2767) #14
; %var_2_2659 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2658)
; Matched:%var_2_2617:  %var_2_2617 = trunc i32 %var_2_2616 to i8
; %var_2_2660 = trunc i32 %var_2_2659 to i8
; Matched:%var_2_2770:  %var_2_2770 = and i8 %var_2_2769, 1
; %var_2_2661 = and i8 %var_2_2660, 1
; Matched:%var_2_2771:  %var_2_2771 = xor i8 %var_2_2770, 1
; %var_2_2662 = xor i8 %var_2_2661, 1
; Matched:\<badref\>:  store i8 %var_2_2619, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2662, i8* %var_2_21, align 1
; Matched:%var_2_2620:  %var_2_2620 = xor i32 %var_2_2611, %var_2_2610
; %var_2_2663 = xor i32 %var_2_2654, %var_2_2653
; Matched:%var_2_2773:  %var_2_2773 = lshr i32 %var_2_2772, 4
; %var_2_2664 = lshr i32 %var_2_2663, 4
; Matched:%var_2_3351:  %var_2_3351 = trunc i32 %var_2_3350 to i8
; %var_2_2665 = trunc i32 %var_2_2664 to i8
; Matched:%var_2_2775:  %var_2_2775 = and i8 %var_2_2774, 1
; %var_2_2666 = and i8 %var_2_2665, 1
; Matched:\<badref\>:  store i8 %var_2_2623, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2666, i8* %var_2_27, align 1
; Matched:%var_2_2776:  %var_2_2776 = icmp eq i32 %var_2_2763, 0
; %var_2_2667 = icmp eq i32 %var_2_2654, 0
; Matched:%var_2_2777:  %var_2_2777 = zext i1 %var_2_2776 to i8
; %var_2_2668 = zext i1 %var_2_2667 to i8
; Matched:\<badref\>:  store i8 %var_2_2625, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2668, i8* %var_2_30, align 1
; Matched:%var_2_2626:  %var_2_2626 = lshr i32 %var_2_2611, 31
; %var_2_2669 = lshr i32 %var_2_2654, 31
; Matched:%var_2_2779:  %var_2_2779 = trunc i32 %var_2_2778 to i8
; %var_2_2670 = trunc i32 %var_2_2669 to i8
; Matched:\<badref\>:  store i8 %var_2_3356, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2670, i8* %var_2_33, align 1
; Matched:%var_2_2780:  %var_2_2780 = lshr i32 %var_2_2762, 31
; %var_2_2671 = lshr i32 %var_2_2653, 31
; Matched:%var_2_2629:  %var_2_2629 = xor i32 %var_2_2626, %var_2_2628
; %var_2_2672 = xor i32 %var_2_2669, %var_2_2671
; Matched:%var_2_2782:  %var_2_2782 = add nuw nsw i32 %var_2_2781, %var_2_2778
; %var_2_2673 = add nuw nsw i32 %var_2_2672, %var_2_2669
; Matched:%var_2_2783:  %var_2_2783 = icmp eq i32 %var_2_2782, 2
; %var_2_2674 = icmp eq i32 %var_2_2673, 2
; Matched:%var_2_2632:  %var_2_2632 = zext i1 %var_2_2631 to i8
; %var_2_2675 = zext i1 %var_2_2674 to i8
; Matched:\<badref\>:  store i8 %var_2_2632, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2675, i8* %var_2_39, align 1
; Matched:%var_2_2785:  %var_2_2785 = sext i32 %var_2_2763 to i64
; %var_2_2676 = sext i32 %var_2_2654 to i64
; Matched:\<badref\>:  store i64 %var_2_2785, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2676, i64* %RSI.i1794, align 8
; Matched:%var_2_2634:  %var_2_2634 = shl nsw i64 %var_2_2633, 3
; %var_2_2677 = shl nsw i64 %var_2_2676, 3
; Matched:%var_2_2635:  %var_2_2635 = add i64 %var_2_2608, %var_2_2634
; %var_2_2678 = add i64 %var_2_2651, %var_2_2677
; Matched:%var_2_2712:  %var_2_2712 = add i64 %var_2_2647, 36
; %var_2_2679 = add i64 %var_2_2614, 36
; Matched:\<badref\>:  store i64 %var_2_1182, i64* %PC, align 8
; store i64 %var_2_2679, i64* %var_2_3, align 8
; Matched:%var_2_2637:  %var_2_2637 = bitcast i64 %var_2_2606 to double
; %var_2_2680 = bitcast i64 %var_2_2649 to double
; Matched:%var_2_2638:  %var_2_2638 = inttoptr i64 %var_2_2635 to double*
; %var_2_2681 = inttoptr i64 %var_2_2678 to double*
; Matched:%var_2_2639:  %var_2_2639 = load double, double* %var_2_2638, align 8
; %var_2_2682 = load double, double* %var_2_2681, align 8
; Matched:%var_2_2640:  %var_2_2640 = fadd double %var_2_2637, %var_2_2639
; %var_2_2683 = fadd double %var_2_2680, %var_2_2682
; Matched:\<badref\>:  store double %var_2_2640, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2683, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2641:  %var_2_2641 = load i64, i64* %RBP, align 8
; %var_2_2684 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2642:  %var_2_2642 = add i64 %var_2_2641, -128
; %var_2_2685 = add i64 %var_2_2684, -128
; Matched:%var_2_2567:  %var_2_2567 = add i64 %var_2_2495, 41
; %var_2_2686 = add i64 %var_2_2614, 41
; Matched:\<badref\>:  store i64 %var_2_2567, i64* %PC, align 8
; store i64 %var_2_2686, i64* %var_2_3, align 8
; Matched:%var_2_2644:  %var_2_2644 = inttoptr i64 %var_2_2642 to double*
; %var_2_2687 = inttoptr i64 %var_2_2685 to double*
; Matched:\<badref\>:  store double %var_2_2640, double* %var_2_2644, align 8
; store double %var_2_2683, double* %var_2_2687, align 8
%var_2_2688 = load i64, i64* %RBP.i, align 8
%var_2_2689 = add i64 %var_2_2688, -16
%var_2_2690 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_887:  %var_2_887 = add i64 %var_2_886, 4
; %var_2_2691 = add i64 %var_2_2690, 4
; Matched:\<badref\>:  store i64 %var_2_1247, i64* %PC, align 8
; store i64 %var_2_2691, i64* %var_2_3, align 8
%var_2_2692 = inttoptr i64 %var_2_2689 to i64*
%var_2_2693 = load i64, i64* %var_2_2692, align 8
; Matched:\<badref\>:  store i64 %var_2_613, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2693, i64* %RDX.i1791, align 8
%var_2_2694 = add i64 %var_2_2688, -28
; Matched:%var_2_804:  %var_2_804 = add i64 %var_2_803, 7
; %var_2_2695 = add i64 %var_2_2690, 7
; Matched:\<badref\>:  store i64 %var_2_2652, i64* %PC, align 8
; store i64 %var_2_2695, i64* %var_2_3, align 8
%var_2_2696 = inttoptr i64 %var_2_2694 to i32*
%var_2_2697 = load i32, i32* %var_2_2696, align 4
%var_2_2698 = add i32 %var_2_2697, 13
; Matched:%var_2_2808:  %var_2_2808 = zext i32 %var_2_2807 to i64
; %var_2_2699 = zext i32 %var_2_2698 to i64
; Matched:\<badref\>:  store i64 %var_2_3107, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2699, i64* %RCX.i1272, align 8
; Matched:%var_2_2809:  %var_2_2809 = icmp ugt i32 %var_2_2806, -14
; %var_2_2700 = icmp ugt i32 %var_2_2697, -14
; Matched:%var_2_2810:  %var_2_2810 = zext i1 %var_2_2809 to i8
; %var_2_2701 = zext i1 %var_2_2700 to i8
; Matched:\<badref\>:  store i8 %var_2_3109, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2701, i8* %var_2_14, align 1
; Matched:%var_2_3110:  %var_2_3110 = and i32 %var_2_3106, 255
; %var_2_2702 = and i32 %var_2_2698, 255
; Matched:%var_2_2660:  %var_2_2660 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2659) #14
; %var_2_2703 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2702)
; Matched:%var_2_2813:  %var_2_2813 = trunc i32 %var_2_2812 to i8
; %var_2_2704 = trunc i32 %var_2_2703 to i8
; Matched:%var_2_2814:  %var_2_2814 = and i8 %var_2_2813, 1
; %var_2_2705 = and i8 %var_2_2704, 1
; Matched:%var_2_2815:  %var_2_2815 = xor i8 %var_2_2814, 1
; %var_2_2706 = xor i8 %var_2_2705, 1
; Matched:\<badref\>:  store i8 %var_2_3114, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2706, i8* %var_2_21, align 1
; Matched:%var_2_3115:  %var_2_3115 = xor i32 %var_2_3106, %var_2_3105
; %var_2_2707 = xor i32 %var_2_2698, %var_2_2697
; Matched:%var_2_2817:  %var_2_2817 = lshr i32 %var_2_2816, 4
; %var_2_2708 = lshr i32 %var_2_2707, 4
; Matched:%var_2_3117:  %var_2_3117 = trunc i32 %var_2_3116 to i8
; %var_2_2709 = trunc i32 %var_2_2708 to i8
; Matched:%var_2_2667:  %var_2_2667 = and i8 %var_2_2666, 1
; %var_2_2710 = and i8 %var_2_2709, 1
; Matched:\<badref\>:  store i8 %var_2_2819, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2710, i8* %var_2_27, align 1
; Matched:%var_2_2820:  %var_2_2820 = icmp eq i32 %var_2_2807, 0
; %var_2_2711 = icmp eq i32 %var_2_2698, 0
; Matched:%var_2_2821:  %var_2_2821 = zext i1 %var_2_2820 to i8
; %var_2_2712 = zext i1 %var_2_2711 to i8
; Matched:\<badref\>:  store i8 %var_2_2821, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2712, i8* %var_2_30, align 1
; Matched:%var_2_3121:  %var_2_3121 = lshr i32 %var_2_3106, 31
; %var_2_2713 = lshr i32 %var_2_2698, 31
; Matched:%var_2_3122:  %var_2_3122 = trunc i32 %var_2_3121 to i8
; %var_2_2714 = trunc i32 %var_2_2713 to i8
; Matched:\<badref\>:  store i8 %var_2_3122, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2714, i8* %var_2_33, align 1
; Matched:%var_2_2672:  %var_2_2672 = lshr i32 %var_2_2654, 31
; %var_2_2715 = lshr i32 %var_2_2697, 31
; Matched:%var_2_3124:  %var_2_3124 = xor i32 %var_2_3121, %var_2_3123
; %var_2_2716 = xor i32 %var_2_2713, %var_2_2715
; Matched:%var_2_3125:  %var_2_3125 = add nuw nsw i32 %var_2_3124, %var_2_3121
; %var_2_2717 = add nuw nsw i32 %var_2_2716, %var_2_2713
; Matched:%var_2_3126:  %var_2_3126 = icmp eq i32 %var_2_3125, 2
; %var_2_2718 = icmp eq i32 %var_2_2717, 2
; Matched:%var_2_2828:  %var_2_2828 = zext i1 %var_2_2827 to i8
; %var_2_2719 = zext i1 %var_2_2718 to i8
; Matched:\<badref\>:  store i8 %var_2_3127, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2719, i8* %var_2_39, align 1
; Matched:%var_2_2829:  %var_2_2829 = sext i32 %var_2_2807 to i64
; %var_2_2720 = sext i32 %var_2_2698 to i64
; Matched:\<badref\>:  store i64 %var_2_2829, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2720, i64* %RSI.i1794, align 8
; Matched:%var_2_2678:  %var_2_2678 = shl nsw i64 %var_2_2677, 3
; %var_2_2721 = shl nsw i64 %var_2_2720, 3
; Matched:%var_2_2679:  %var_2_2679 = add i64 %var_2_2650, %var_2_2678
; %var_2_2722 = add i64 %var_2_2693, %var_2_2721
; Matched:%var_2_664:  %var_2_664 = add i64 %var_2_653, 18
; %var_2_2723 = add i64 %var_2_2690, 18
; Matched:\<badref\>:  store i64 %var_2_664, i64* %PC, align 8
; store i64 %var_2_2723, i64* %var_2_3, align 8
; Matched:%var_2_2681:  %var_2_2681 = inttoptr i64 %var_2_2679 to i64*
; %var_2_2724 = inttoptr i64 %var_2_2722 to i64*
; Matched:%var_2_2682:  %var_2_2682 = load i64, i64* %var_2_2681, align 8
; %var_2_2725 = load i64, i64* %var_2_2724, align 8
; Matched:\<badref\>:  store i64 %var_2_2834, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2725, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_362, 22
; %var_2_2726 = add i64 %var_2_2690, 22
; Matched:\<badref\>:  store i64 %var_2_2993, i64* %PC, align 8
; store i64 %var_2_2726, i64* %var_2_3, align 8
%var_2_2727 = load i64, i64* %var_2_2692, align 8
; Matched:\<badref\>:  store i64 %var_2_2044, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2727, i64* %RDX.i1791, align 8
; Matched:%var_2_2609:  %var_2_2609 = add i64 %var_2_2571, 25
; %var_2_2728 = add i64 %var_2_2690, 25
; Matched:\<badref\>:  store i64 %var_2_2609, i64* %PC, align 8
; store i64 %var_2_2728, i64* %var_2_3, align 8
%var_2_2729 = load i32, i32* %var_2_2696, align 4
%var_2_2730 = add i32 %var_2_2729, 15
; Matched:%var_2_3399:  %var_2_3399 = zext i32 %var_2_3398 to i64
; %var_2_2731 = zext i32 %var_2_2730 to i64
; Matched:\<badref\>:  store i64 %var_2_3399, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2731, i64* %RCX.i1272, align 8
; Matched:%var_2_3400:  %var_2_3400 = icmp ugt i32 %var_2_3397, -16
; %var_2_2732 = icmp ugt i32 %var_2_2729, -16
; Matched:%var_2_3401:  %var_2_3401 = zext i1 %var_2_3400 to i8
; %var_2_2733 = zext i1 %var_2_2732 to i8
; Matched:\<badref\>:  store i8 %var_2_2690, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2733, i8* %var_2_14, align 1
; Matched:%var_2_2691:  %var_2_2691 = and i32 %var_2_2687, 255
; %var_2_2734 = and i32 %var_2_2730, 255
; Matched:%var_2_3403:  %var_2_3403 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3402) #14
; %var_2_2735 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2734)
; Matched:%var_2_3404:  %var_2_3404 = trunc i32 %var_2_3403 to i8
; %var_2_2736 = trunc i32 %var_2_2735 to i8
; Matched:%var_2_3405:  %var_2_3405 = and i8 %var_2_3404, 1
; %var_2_2737 = and i8 %var_2_2736, 1
; Matched:%var_2_3406:  %var_2_3406 = xor i8 %var_2_3405, 1
; %var_2_2738 = xor i8 %var_2_2737, 1
; Matched:\<badref\>:  store i8 %var_2_3406, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2738, i8* %var_2_21, align 1
; Matched:%var_2_3407:  %var_2_3407 = xor i32 %var_2_3398, %var_2_3397
; %var_2_2739 = xor i32 %var_2_2730, %var_2_2729
; Matched:%var_2_2697:  %var_2_2697 = lshr i32 %var_2_2696, 4
; %var_2_2740 = lshr i32 %var_2_2739, 4
; Matched:%var_2_2698:  %var_2_2698 = trunc i32 %var_2_2697 to i8
; %var_2_2741 = trunc i32 %var_2_2740 to i8
; Matched:%var_2_3410:  %var_2_3410 = and i8 %var_2_3409, 1
; %var_2_2742 = and i8 %var_2_2741, 1
; Matched:\<badref\>:  store i8 %var_2_3410, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2742, i8* %var_2_27, align 1
; Matched:%var_2_3411:  %var_2_3411 = icmp eq i32 %var_2_3398, 0
; %var_2_2743 = icmp eq i32 %var_2_2730, 0
; Matched:%var_2_3412:  %var_2_3412 = zext i1 %var_2_3411 to i8
; %var_2_2744 = zext i1 %var_2_2743 to i8
; Matched:\<badref\>:  store i8 %var_2_3412, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2744, i8* %var_2_30, align 1
; Matched:%var_2_3413:  %var_2_3413 = lshr i32 %var_2_3398, 31
; %var_2_2745 = lshr i32 %var_2_2730, 31
; Matched:%var_2_2703:  %var_2_2703 = trunc i32 %var_2_2702 to i8
; %var_2_2746 = trunc i32 %var_2_2745 to i8
; Matched:\<badref\>:  store i8 %var_2_2703, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2746, i8* %var_2_33, align 1
; Matched:%var_2_3415:  %var_2_3415 = lshr i32 %var_2_3397, 31
; %var_2_2747 = lshr i32 %var_2_2729, 31
; Matched:%var_2_3416:  %var_2_3416 = xor i32 %var_2_3413, %var_2_3415
; %var_2_2748 = xor i32 %var_2_2745, %var_2_2747
; Matched:%var_2_3417:  %var_2_3417 = add nuw nsw i32 %var_2_3416, %var_2_3413
; %var_2_2749 = add nuw nsw i32 %var_2_2748, %var_2_2745
; Matched:%var_2_3418:  %var_2_3418 = icmp eq i32 %var_2_3417, 2
; %var_2_2750 = icmp eq i32 %var_2_2749, 2
; Matched:%var_2_3419:  %var_2_3419 = zext i1 %var_2_3418 to i8
; %var_2_2751 = zext i1 %var_2_2750 to i8
; Matched:\<badref\>:  store i8 %var_2_3419, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2751, i8* %var_2_39, align 1
; Matched:%var_2_2709:  %var_2_2709 = sext i32 %var_2_2687 to i64
; %var_2_2752 = sext i32 %var_2_2730 to i64
; Matched:\<badref\>:  store i64 %var_2_2709, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2752, i64* %RSI.i1794, align 8
; Matched:%var_2_2710:  %var_2_2710 = shl nsw i64 %var_2_2709, 3
; %var_2_2753 = shl nsw i64 %var_2_2752, 3
; Matched:%var_2_2711:  %var_2_2711 = add i64 %var_2_2684, %var_2_2710
; %var_2_2754 = add i64 %var_2_2727, %var_2_2753
; Matched:%var_2_2636:  %var_2_2636 = add i64 %var_2_2571, 36
; %var_2_2755 = add i64 %var_2_2690, 36
; Matched:\<badref\>:  store i64 %var_2_2636, i64* %PC, align 8
; store i64 %var_2_2755, i64* %var_2_3, align 8
; Matched:%var_2_2713:  %var_2_2713 = bitcast i64 %var_2_2682 to double
; %var_2_2756 = bitcast i64 %var_2_2725 to double
; Matched:%var_2_2714:  %var_2_2714 = inttoptr i64 %var_2_2711 to double*
; %var_2_2757 = inttoptr i64 %var_2_2754 to double*
; Matched:%var_2_2715:  %var_2_2715 = load double, double* %var_2_2714, align 8
; %var_2_2758 = load double, double* %var_2_2757, align 8
; Matched:%var_2_2716:  %var_2_2716 = fadd double %var_2_2713, %var_2_2715
; %var_2_2759 = fadd double %var_2_2756, %var_2_2758
; Matched:\<badref\>:  store double %var_2_2716, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2759, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2717:  %var_2_2717 = load i64, i64* %RBP, align 8
; %var_2_2760 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2718:  %var_2_2718 = add i64 %var_2_2717, -136
; %var_2_2761 = add i64 %var_2_2760, -136
; Matched:%var_2_1547:  %var_2_1547 = add i64 %var_2_1475, 44
; %var_2_2762 = add i64 %var_2_2690, 44
; Matched:\<badref\>:  store i64 %var_2_1547, i64* %PC, align 8
; store i64 %var_2_2762, i64* %var_2_3, align 8
; Matched:%var_2_2720:  %var_2_2720 = inttoptr i64 %var_2_2718 to double*
; %var_2_2763 = inttoptr i64 %var_2_2761 to double*
; Matched:\<badref\>:  store double %var_2_2716, double* %var_2_2720, align 8
; store double %var_2_2759, double* %var_2_2763, align 8
%var_2_2764 = load i64, i64* %RBP.i, align 8
%var_2_2765 = add i64 %var_2_2764, -16
%var_2_2766 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1324:  %var_2_1324 = add i64 %var_2_1323, 4
; %var_2_2767 = add i64 %var_2_2766, 4
; Matched:\<badref\>:  store i64 %var_2_2572, i64* %PC, align 8
; store i64 %var_2_2767, i64* %var_2_3, align 8
%var_2_2768 = inttoptr i64 %var_2_2765 to i64*
%var_2_2769 = load i64, i64* %var_2_2768, align 8
; Matched:\<badref\>:  store i64 %var_2_481, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2769, i64* %RDX.i1791, align 8
%var_2_2770 = add i64 %var_2_2764, -28
; Matched:%var_2_910:  %var_2_910 = add i64 %var_2_905, 7
; %var_2_2771 = add i64 %var_2_2766, 7
; Matched:\<badref\>:  store i64 %var_2_2804, i64* %PC, align 8
; store i64 %var_2_2771, i64* %var_2_3, align 8
%var_2_2772 = inttoptr i64 %var_2_2770 to i32*
%var_2_2773 = load i32, i32* %var_2_2772, align 4
%var_2_2774 = add i32 %var_2_2773, 12
; Matched:%var_2_2580:  %var_2_2580 = zext i32 %var_2_2579 to i64
; %var_2_2775 = zext i32 %var_2_2774 to i64
; Matched:\<badref\>:  store i64 %var_2_2580, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2775, i64* %RCX.i1272, align 8
; Matched:%var_2_2581:  %var_2_2581 = icmp ugt i32 %var_2_2578, -13
; %var_2_2776 = icmp ugt i32 %var_2_2773, -13
; Matched:%var_2_2582:  %var_2_2582 = zext i1 %var_2_2581 to i8
; %var_2_2777 = zext i1 %var_2_2776 to i8
; Matched:\<badref\>:  store i8 %var_2_2734, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2777, i8* %var_2_14, align 1
; Matched:%var_2_2735:  %var_2_2735 = and i32 %var_2_2731, 255
; %var_2_2778 = and i32 %var_2_2774, 255
; Matched:%var_2_2584:  %var_2_2584 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2583) #14
; %var_2_2779 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2778)
; Matched:%var_2_2585:  %var_2_2585 = trunc i32 %var_2_2584 to i8
; %var_2_2780 = trunc i32 %var_2_2779 to i8
; Matched:%var_2_2586:  %var_2_2586 = and i8 %var_2_2585, 1
; %var_2_2781 = and i8 %var_2_2780, 1
; Matched:%var_2_2587:  %var_2_2587 = xor i8 %var_2_2586, 1
; %var_2_2782 = xor i8 %var_2_2781, 1
; Matched:\<badref\>:  store i8 %var_2_2587, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2782, i8* %var_2_21, align 1
; Matched:%var_2_2588:  %var_2_2588 = xor i32 %var_2_2579, %var_2_2578
; %var_2_2783 = xor i32 %var_2_2774, %var_2_2773
; Matched:%var_2_2741:  %var_2_2741 = lshr i32 %var_2_2740, 4
; %var_2_2784 = lshr i32 %var_2_2783, 4
; Matched:%var_2_2742:  %var_2_2742 = trunc i32 %var_2_2741 to i8
; %var_2_2785 = trunc i32 %var_2_2784 to i8
; Matched:%var_2_2591:  %var_2_2591 = and i8 %var_2_2590, 1
; %var_2_2786 = and i8 %var_2_2785, 1
; Matched:\<badref\>:  store i8 %var_2_2591, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2786, i8* %var_2_27, align 1
; Matched:%var_2_2592:  %var_2_2592 = icmp eq i32 %var_2_2579, 0
; %var_2_2787 = icmp eq i32 %var_2_2774, 0
; Matched:%var_2_2593:  %var_2_2593 = zext i1 %var_2_2592 to i8
; %var_2_2788 = zext i1 %var_2_2787 to i8
; Matched:\<badref\>:  store i8 %var_2_2593, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2788, i8* %var_2_30, align 1
; Matched:%var_2_2594:  %var_2_2594 = lshr i32 %var_2_2579, 31
; %var_2_2789 = lshr i32 %var_2_2774, 31
; Matched:%var_2_2747:  %var_2_2747 = trunc i32 %var_2_2746 to i8
; %var_2_2790 = trunc i32 %var_2_2789 to i8
; Matched:\<badref\>:  store i8 %var_2_2747, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2790, i8* %var_2_33, align 1
; Matched:%var_2_2596:  %var_2_2596 = lshr i32 %var_2_2578, 31
; %var_2_2791 = lshr i32 %var_2_2773, 31
; Matched:%var_2_2597:  %var_2_2597 = xor i32 %var_2_2594, %var_2_2596
; %var_2_2792 = xor i32 %var_2_2789, %var_2_2791
; Matched:%var_2_2598:  %var_2_2598 = add nuw nsw i32 %var_2_2597, %var_2_2594
; %var_2_2793 = add nuw nsw i32 %var_2_2792, %var_2_2789
; Matched:%var_2_2599:  %var_2_2599 = icmp eq i32 %var_2_2598, 2
; %var_2_2794 = icmp eq i32 %var_2_2793, 2
; Matched:%var_2_2600:  %var_2_2600 = zext i1 %var_2_2599 to i8
; %var_2_2795 = zext i1 %var_2_2794 to i8
; Matched:\<badref\>:  store i8 %var_2_2600, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2795, i8* %var_2_39, align 1
%var_2_2796 = sext i32 %var_2_2774 to i64
; Matched:\<badref\>:  store i64 %var_2_2753, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2796, i64* %RSI.i1794, align 8
; Matched:%var_2_2602:  %var_2_2602 = shl nsw i64 %var_2_2601, 3
; %var_2_2797 = shl nsw i64 %var_2_2796, 3
; Matched:%var_2_2603:  %var_2_2603 = add i64 %var_2_2574, %var_2_2602
; %var_2_2798 = add i64 %var_2_2769, %var_2_2797
; Matched:%var_2_901:  %var_2_901 = add i64 %var_2_886, 18
; %var_2_2799 = add i64 %var_2_2766, 18
; Matched:\<badref\>:  store i64 %var_2_901, i64* %PC, align 8
; store i64 %var_2_2799, i64* %var_2_3, align 8
; Matched:%var_2_2605:  %var_2_2605 = inttoptr i64 %var_2_2603 to i64*
; %var_2_2800 = inttoptr i64 %var_2_2798 to i64*
; Matched:%var_2_2606:  %var_2_2606 = load i64, i64* %var_2_2605, align 8
; %var_2_2801 = load i64, i64* %var_2_2800, align 8
; Matched:\<badref\>:  store i64 %var_2_2758, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2801, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2303:  %var_2_2303 = add i64 %var_2_2267, 22
; %var_2_2802 = add i64 %var_2_2766, 22
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_2802, i64* %var_2_3, align 8
%var_2_2803 = load i64, i64* %var_2_2768, align 8
; Matched:\<badref\>:  store i64 %var_2_1898, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2803, i64* %RDX.i1791, align 8
; Matched:%var_2_1155:  %var_2_1155 = add i64 %var_2_1116, 25
; %var_2_2804 = add i64 %var_2_2766, 25
; Matched:\<badref\>:  store i64 %var_2_1155, i64* %PC, align 8
; store i64 %var_2_2804, i64* %var_2_3, align 8
%var_2_2805 = load i32, i32* %var_2_2772, align 4
%var_2_2806 = add i32 %var_2_2805, 14
; Matched:%var_2_3341:  %var_2_3341 = zext i32 %var_2_3340 to i64
; %var_2_2807 = zext i32 %var_2_2806 to i64
; Matched:\<badref\>:  store i64 %var_2_3341, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2807, i64* %RCX.i1272, align 8
; Matched:%var_2_2765:  %var_2_2765 = icmp ugt i32 %var_2_2762, -15
; %var_2_2808 = icmp ugt i32 %var_2_2805, -15
; Matched:%var_2_2766:  %var_2_2766 = zext i1 %var_2_2765 to i8
; %var_2_2809 = zext i1 %var_2_2808 to i8
; Matched:\<badref\>:  store i8 %var_2_3343, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2809, i8* %var_2_14, align 1
; Matched:%var_2_2615:  %var_2_2615 = and i32 %var_2_2611, 255
; %var_2_2810 = and i32 %var_2_2806, 255
; Matched:%var_2_3345:  %var_2_3345 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3344) #14
; %var_2_2811 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2810)
; Matched:%var_2_2769:  %var_2_2769 = trunc i32 %var_2_2768 to i8
; %var_2_2812 = trunc i32 %var_2_2811 to i8
; Matched:%var_2_3347:  %var_2_3347 = and i8 %var_2_3346, 1
; %var_2_2813 = and i8 %var_2_2812, 1
; Matched:%var_2_3348:  %var_2_3348 = xor i8 %var_2_3347, 1
; %var_2_2814 = xor i8 %var_2_2813, 1
; Matched:\<badref\>:  store i8 %var_2_2771, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2814, i8* %var_2_21, align 1
; Matched:%var_2_2772:  %var_2_2772 = xor i32 %var_2_2763, %var_2_2762
; %var_2_2815 = xor i32 %var_2_2806, %var_2_2805
; Matched:%var_2_3350:  %var_2_3350 = lshr i32 %var_2_3349, 4
; %var_2_2816 = lshr i32 %var_2_2815, 4
; Matched:%var_2_2622:  %var_2_2622 = trunc i32 %var_2_2621 to i8
; %var_2_2817 = trunc i32 %var_2_2816 to i8
; Matched:%var_2_3352:  %var_2_3352 = and i8 %var_2_3351, 1
; %var_2_2818 = and i8 %var_2_2817, 1
; Matched:\<badref\>:  store i8 %var_2_2775, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2818, i8* %var_2_27, align 1
; Matched:%var_2_3353:  %var_2_3353 = icmp eq i32 %var_2_3340, 0
; %var_2_2819 = icmp eq i32 %var_2_2806, 0
; Matched:%var_2_3354:  %var_2_3354 = zext i1 %var_2_3353 to i8
; %var_2_2820 = zext i1 %var_2_2819 to i8
; Matched:\<badref\>:  store i8 %var_2_2777, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2820, i8* %var_2_30, align 1
; Matched:%var_2_2778:  %var_2_2778 = lshr i32 %var_2_2763, 31
; %var_2_2821 = lshr i32 %var_2_2806, 31
; Matched:%var_2_3356:  %var_2_3356 = trunc i32 %var_2_3355 to i8
; %var_2_2822 = trunc i32 %var_2_2821 to i8
; Matched:\<badref\>:  store i8 %var_2_2627, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2822, i8* %var_2_33, align 1
; Matched:%var_2_3357:  %var_2_3357 = lshr i32 %var_2_3339, 31
; %var_2_2823 = lshr i32 %var_2_2805, 31
; Matched:%var_2_2781:  %var_2_2781 = xor i32 %var_2_2778, %var_2_2780
; %var_2_2824 = xor i32 %var_2_2821, %var_2_2823
; Matched:%var_2_3359:  %var_2_3359 = add nuw nsw i32 %var_2_3358, %var_2_3355
; %var_2_2825 = add nuw nsw i32 %var_2_2824, %var_2_2821
; Matched:%var_2_3360:  %var_2_3360 = icmp eq i32 %var_2_3359, 2
; %var_2_2826 = icmp eq i32 %var_2_2825, 2
; Matched:%var_2_2784:  %var_2_2784 = zext i1 %var_2_2783 to i8
; %var_2_2827 = zext i1 %var_2_2826 to i8
; Matched:\<badref\>:  store i8 %var_2_2784, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2827, i8* %var_2_39, align 1
; Matched:%var_2_2633:  %var_2_2633 = sext i32 %var_2_2611 to i64
; %var_2_2828 = sext i32 %var_2_2806 to i64
; Matched:\<badref\>:  store i64 %var_2_2633, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2828, i64* %RSI.i1794, align 8
; Matched:%var_2_2786:  %var_2_2786 = shl nsw i64 %var_2_2785, 3
; %var_2_2829 = shl nsw i64 %var_2_2828, 3
; Matched:%var_2_2787:  %var_2_2787 = add i64 %var_2_2760, %var_2_2786
; %var_2_2830 = add i64 %var_2_2803, %var_2_2829
; Matched:%var_2_1388:  %var_2_1388 = add i64 %var_2_1323, 36
; %var_2_2831 = add i64 %var_2_2766, 36
; Matched:\<badref\>:  store i64 %var_2_1616, i64* %PC, align 8
; store i64 %var_2_2831, i64* %var_2_3, align 8
; Matched:%var_2_2789:  %var_2_2789 = bitcast i64 %var_2_2758 to double
; %var_2_2832 = bitcast i64 %var_2_2801 to double
; Matched:%var_2_2790:  %var_2_2790 = inttoptr i64 %var_2_2787 to double*
; %var_2_2833 = inttoptr i64 %var_2_2830 to double*
; Matched:%var_2_2791:  %var_2_2791 = load double, double* %var_2_2790, align 8
; %var_2_2834 = load double, double* %var_2_2833, align 8
; Matched:%var_2_2792:  %var_2_2792 = fsub double %var_2_2789, %var_2_2791
; %var_2_2835 = fsub double %var_2_2832, %var_2_2834
; Matched:\<badref\>:  store double %var_2_2792, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2835, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2793:  %var_2_2793 = load i64, i64* %RBP, align 8
; %var_2_2836 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2794:  %var_2_2794 = add i64 %var_2_2793, -144
; %var_2_2837 = add i64 %var_2_2836, -144
; Matched:%var_2_2719:  %var_2_2719 = add i64 %var_2_2647, 44
; %var_2_2838 = add i64 %var_2_2766, 44
; Matched:\<badref\>:  store i64 %var_2_2719, i64* %PC, align 8
; store i64 %var_2_2838, i64* %var_2_3, align 8
; Matched:%var_2_2796:  %var_2_2796 = inttoptr i64 %var_2_2794 to double*
; %var_2_2839 = inttoptr i64 %var_2_2837 to double*
; Matched:\<badref\>:  store double %var_2_2792, double* %var_2_2796, align 8
; store double %var_2_2835, double* %var_2_2839, align 8
%var_2_2840 = load i64, i64* %RBP.i, align 8
%var_2_2841 = add i64 %var_2_2840, -16
%var_2_2842 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_948:  %var_2_948 = add i64 %var_2_947, 4
; %var_2_2843 = add i64 %var_2_2842, 4
; Matched:\<badref\>:  store i64 %var_2_437, i64* %PC, align 8
; store i64 %var_2_2843, i64* %var_2_3, align 8
%var_2_2844 = inttoptr i64 %var_2_2841 to i64*
%var_2_2845 = load i64, i64* %var_2_2844, align 8
; Matched:\<badref\>:  store i64 %var_2_2456, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2845, i64* %RDX.i1791, align 8
%var_2_2846 = add i64 %var_2_2840, -28
; Matched:%var_2_2182:  %var_2_2182 = add i64 %var_2_2177, 7
; %var_2_2847 = add i64 %var_2_2842, 7
; Matched:\<badref\>:  store i64 %var_2_2272, i64* %PC, align 8
; store i64 %var_2_2847, i64* %var_2_3, align 8
%var_2_2848 = inttoptr i64 %var_2_2846 to i32*
%var_2_2849 = load i32, i32* %var_2_2848, align 4
%var_2_2850 = add i32 %var_2_2849, 13
; Matched:%var_2_3107:  %var_2_3107 = zext i32 %var_2_3106 to i64
; %var_2_2851 = zext i32 %var_2_2850 to i64
; Matched:\<badref\>:  store i64 %var_2_2656, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2851, i64* %RCX.i1272, align 8
; Matched:%var_2_3108:  %var_2_3108 = icmp ugt i32 %var_2_3105, -14
; %var_2_2852 = icmp ugt i32 %var_2_2849, -14
; Matched:%var_2_3109:  %var_2_3109 = zext i1 %var_2_3108 to i8
; %var_2_2853 = zext i1 %var_2_2852 to i8
; Matched:\<badref\>:  store i8 %var_2_2658, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2853, i8* %var_2_14, align 1
; Matched:%var_2_2811:  %var_2_2811 = and i32 %var_2_2807, 255
; %var_2_2854 = and i32 %var_2_2850, 255
; Matched:%var_2_3111:  %var_2_3111 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3110) #14
; %var_2_2855 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2854)
; Matched:%var_2_3112:  %var_2_3112 = trunc i32 %var_2_3111 to i8
; %var_2_2856 = trunc i32 %var_2_2855 to i8
; Matched:%var_2_3113:  %var_2_3113 = and i8 %var_2_3112, 1
; %var_2_2857 = and i8 %var_2_2856, 1
; Matched:%var_2_2663:  %var_2_2663 = xor i8 %var_2_2662, 1
; %var_2_2858 = xor i8 %var_2_2857, 1
; Matched:\<badref\>:  store i8 %var_2_2663, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2858, i8* %var_2_21, align 1
; Matched:%var_2_2816:  %var_2_2816 = xor i32 %var_2_2807, %var_2_2806
; %var_2_2859 = xor i32 %var_2_2850, %var_2_2849
; Matched:%var_2_2665:  %var_2_2665 = lshr i32 %var_2_2664, 4
; %var_2_2860 = lshr i32 %var_2_2859, 4
; Matched:%var_2_2818:  %var_2_2818 = trunc i32 %var_2_2817 to i8
; %var_2_2861 = trunc i32 %var_2_2860 to i8
; Matched:%var_2_3118:  %var_2_3118 = and i8 %var_2_3117, 1
; %var_2_2862 = and i8 %var_2_2861, 1
; Matched:\<badref\>:  store i8 %var_2_3118, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2862, i8* %var_2_27, align 1
; Matched:%var_2_3119:  %var_2_3119 = icmp eq i32 %var_2_3106, 0
; %var_2_2863 = icmp eq i32 %var_2_2850, 0
; Matched:%var_2_2669:  %var_2_2669 = zext i1 %var_2_2668 to i8
; %var_2_2864 = zext i1 %var_2_2863 to i8
; Matched:\<badref\>:  store i8 %var_2_3120, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2864, i8* %var_2_30, align 1
; Matched:%var_2_2822:  %var_2_2822 = lshr i32 %var_2_2807, 31
; %var_2_2865 = lshr i32 %var_2_2850, 31
; Matched:%var_2_2671:  %var_2_2671 = trunc i32 %var_2_2670 to i8
; %var_2_2866 = trunc i32 %var_2_2865 to i8
; Matched:\<badref\>:  store i8 %var_2_2823, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2866, i8* %var_2_33, align 1
; Matched:%var_2_2824:  %var_2_2824 = lshr i32 %var_2_2806, 31
; %var_2_2867 = lshr i32 %var_2_2849, 31
; Matched:%var_2_2825:  %var_2_2825 = xor i32 %var_2_2822, %var_2_2824
; %var_2_2868 = xor i32 %var_2_2865, %var_2_2867
; Matched:%var_2_2674:  %var_2_2674 = add nuw nsw i32 %var_2_2673, %var_2_2670
; %var_2_2869 = add nuw nsw i32 %var_2_2868, %var_2_2865
; Matched:%var_2_2827:  %var_2_2827 = icmp eq i32 %var_2_2826, 2
; %var_2_2870 = icmp eq i32 %var_2_2869, 2
; Matched:%var_2_3127:  %var_2_3127 = zext i1 %var_2_3126 to i8
; %var_2_2871 = zext i1 %var_2_2870 to i8
; Matched:\<badref\>:  store i8 %var_2_2828, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2871, i8* %var_2_39, align 1
; Matched:%var_2_2677:  %var_2_2677 = sext i32 %var_2_2655 to i64
; %var_2_2872 = sext i32 %var_2_2850 to i64
; Matched:\<badref\>:  store i64 %var_2_2677, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2872, i64* %RSI.i1794, align 8
; Matched:%var_2_2830:  %var_2_2830 = shl nsw i64 %var_2_2829, 3
; %var_2_2873 = shl nsw i64 %var_2_2872, 3
; Matched:%var_2_2831:  %var_2_2831 = add i64 %var_2_2802, %var_2_2830
; %var_2_2874 = add i64 %var_2_2845, %var_2_2873
; Matched:%var_2_136:  %var_2_136 = add i64 %var_2_125, 18
; %var_2_2875 = add i64 %var_2_2842, 18
; Matched:\<badref\>:  store i64 %var_2_136, i64* %PC, align 8
; store i64 %var_2_2875, i64* %var_2_3, align 8
; Matched:%var_2_2833:  %var_2_2833 = inttoptr i64 %var_2_2831 to i64*
; %var_2_2876 = inttoptr i64 %var_2_2874 to i64*
; Matched:%var_2_2834:  %var_2_2834 = load i64, i64* %var_2_2833, align 8
; %var_2_2877 = load i64, i64* %var_2_2876, align 8
; Matched:\<badref\>:  store i64 %var_2_2682, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2877, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2759:  %var_2_2759 = add i64 %var_2_2723, 22
; %var_2_2878 = add i64 %var_2_2842, 22
; Matched:\<badref\>:  store i64 %var_2_320, i64* %PC, align 8
; store i64 %var_2_2878, i64* %var_2_3, align 8
%var_2_2879 = load i64, i64* %var_2_2844, align 8
; Matched:\<badref\>:  store i64 %var_2_2836, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2879, i64* %RDX.i1791, align 8
; Matched:%var_2_1437:  %var_2_1437 = add i64 %var_2_1399, 25
; %var_2_2880 = add i64 %var_2_2842, 25
; Matched:\<badref\>:  store i64 %var_2_1437, i64* %PC, align 8
; store i64 %var_2_2880, i64* %var_2_3, align 8
%var_2_2881 = load i32, i32* %var_2_2848, align 4
%var_2_2882 = add i32 %var_2_2881, 15
; Matched:%var_2_2688:  %var_2_2688 = zext i32 %var_2_2687 to i64
; %var_2_2883 = zext i32 %var_2_2882 to i64
; Matched:\<badref\>:  store i64 %var_2_2688, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2883, i64* %RCX.i1272, align 8
; Matched:%var_2_2689:  %var_2_2689 = icmp ugt i32 %var_2_2686, -16
; %var_2_2884 = icmp ugt i32 %var_2_2881, -16
; Matched:%var_2_2690:  %var_2_2690 = zext i1 %var_2_2689 to i8
; %var_2_2885 = zext i1 %var_2_2884 to i8
; Matched:\<badref\>:  store i8 %var_2_2842, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2885, i8* %var_2_14, align 1
; Matched:%var_2_2843:  %var_2_2843 = and i32 %var_2_2839, 255
; %var_2_2886 = and i32 %var_2_2882, 255
; Matched:%var_2_2692:  %var_2_2692 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2691) #14
; %var_2_2887 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2886)
; Matched:%var_2_2693:  %var_2_2693 = trunc i32 %var_2_2692 to i8
; %var_2_2888 = trunc i32 %var_2_2887 to i8
; Matched:%var_2_2694:  %var_2_2694 = and i8 %var_2_2693, 1
; %var_2_2889 = and i8 %var_2_2888, 1
; Matched:%var_2_2695:  %var_2_2695 = xor i8 %var_2_2694, 1
; %var_2_2890 = xor i8 %var_2_2889, 1
; Matched:\<badref\>:  store i8 %var_2_2695, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2890, i8* %var_2_21, align 1
; Matched:%var_2_2696:  %var_2_2696 = xor i32 %var_2_2687, %var_2_2686
; %var_2_2891 = xor i32 %var_2_2882, %var_2_2881
; Matched:%var_2_2849:  %var_2_2849 = lshr i32 %var_2_2848, 4
; %var_2_2892 = lshr i32 %var_2_2891, 4
; Matched:%var_2_2850:  %var_2_2850 = trunc i32 %var_2_2849 to i8
; %var_2_2893 = trunc i32 %var_2_2892 to i8
; Matched:%var_2_2699:  %var_2_2699 = and i8 %var_2_2698, 1
; %var_2_2894 = and i8 %var_2_2893, 1
; Matched:\<badref\>:  store i8 %var_2_2699, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2894, i8* %var_2_27, align 1
; Matched:%var_2_2700:  %var_2_2700 = icmp eq i32 %var_2_2687, 0
; %var_2_2895 = icmp eq i32 %var_2_2882, 0
; Matched:%var_2_2701:  %var_2_2701 = zext i1 %var_2_2700 to i8
; %var_2_2896 = zext i1 %var_2_2895 to i8
; Matched:\<badref\>:  store i8 %var_2_2701, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2896, i8* %var_2_30, align 1
; Matched:%var_2_2702:  %var_2_2702 = lshr i32 %var_2_2687, 31
; %var_2_2897 = lshr i32 %var_2_2882, 31
; Matched:%var_2_2855:  %var_2_2855 = trunc i32 %var_2_2854 to i8
; %var_2_2898 = trunc i32 %var_2_2897 to i8
; Matched:\<badref\>:  store i8 %var_2_2855, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2898, i8* %var_2_33, align 1
; Matched:%var_2_2704:  %var_2_2704 = lshr i32 %var_2_2686, 31
; %var_2_2899 = lshr i32 %var_2_2881, 31
; Matched:%var_2_2705:  %var_2_2705 = xor i32 %var_2_2702, %var_2_2704
; %var_2_2900 = xor i32 %var_2_2897, %var_2_2899
; Matched:%var_2_2706:  %var_2_2706 = add nuw nsw i32 %var_2_2705, %var_2_2702
; %var_2_2901 = add nuw nsw i32 %var_2_2900, %var_2_2897
; Matched:%var_2_2707:  %var_2_2707 = icmp eq i32 %var_2_2706, 2
; %var_2_2902 = icmp eq i32 %var_2_2901, 2
; Matched:%var_2_2708:  %var_2_2708 = zext i1 %var_2_2707 to i8
; %var_2_2903 = zext i1 %var_2_2902 to i8
; Matched:\<badref\>:  store i8 %var_2_2708, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2903, i8* %var_2_39, align 1
; Matched:%var_2_2861:  %var_2_2861 = sext i32 %var_2_2839 to i64
; %var_2_2904 = sext i32 %var_2_2882 to i64
; Matched:\<badref\>:  store i64 %var_2_2861, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2904, i64* %RSI.i1794, align 8
; Matched:%var_2_2862:  %var_2_2862 = shl nsw i64 %var_2_2861, 3
; %var_2_2905 = shl nsw i64 %var_2_2904, 3
; Matched:%var_2_2863:  %var_2_2863 = add i64 %var_2_2836, %var_2_2862
; %var_2_2906 = add i64 %var_2_2879, %var_2_2905
; Matched:%var_2_1182:  %var_2_1182 = add i64 %var_2_1116, 36
; %var_2_2907 = add i64 %var_2_2842, 36
; Matched:\<badref\>:  store i64 %var_2_2712, i64* %PC, align 8
; store i64 %var_2_2907, i64* %var_2_3, align 8
; Matched:%var_2_2865:  %var_2_2865 = bitcast i64 %var_2_2834 to double
; %var_2_2908 = bitcast i64 %var_2_2877 to double
; Matched:%var_2_2866:  %var_2_2866 = inttoptr i64 %var_2_2863 to double*
; %var_2_2909 = inttoptr i64 %var_2_2906 to double*
; Matched:%var_2_2867:  %var_2_2867 = load double, double* %var_2_2866, align 8
; %var_2_2910 = load double, double* %var_2_2909, align 8
; Matched:%var_2_2868:  %var_2_2868 = fsub double %var_2_2865, %var_2_2867
; %var_2_2911 = fsub double %var_2_2908, %var_2_2910
; Matched:\<badref\>:  store double %var_2_2868, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2911, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_2869:  %var_2_2869 = load i64, i64* %RBP, align 8
; %var_2_2912 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2870:  %var_2_2870 = add i64 %var_2_2869, -152
; %var_2_2913 = add i64 %var_2_2912, -152
; Matched:%var_2_2795:  %var_2_2795 = add i64 %var_2_2723, 44
; %var_2_2914 = add i64 %var_2_2842, 44
; Matched:\<badref\>:  store i64 %var_2_2795, i64* %PC, align 8
; store i64 %var_2_2914, i64* %var_2_3, align 8
; Matched:%var_2_2872:  %var_2_2872 = inttoptr i64 %var_2_2870 to double*
; %var_2_2915 = inttoptr i64 %var_2_2913 to double*
; Matched:\<badref\>:  store double %var_2_2868, double* %var_2_2872, align 8
; store double %var_2_2911, double* %var_2_2915, align 8
%var_2_2916 = load i64, i64* %RBP.i, align 8
%var_2_2917 = add i64 %var_2_2916, -96
%var_2_2918 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_754:  %var_2_754 = add i64 %var_2_753, 5
; %var_2_2919 = add i64 %var_2_2918, 5
; Matched:\<badref\>:  store i64 %var_2_2006, i64* %PC, align 8
; store i64 %var_2_2919, i64* %var_2_3, align 8
%var_2_2920 = inttoptr i64 %var_2_2917 to i64*
%var_2_2921 = load i64, i64* %var_2_2920, align 8
; Matched:\<badref\>:  store i64 %var_2_233, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2921, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2879:  %var_2_2879 = add i64 %var_2_2873, -128
; %var_2_2922 = add i64 %var_2_2916, -128
; Matched:%var_2_674:  %var_2_674 = add i64 %var_2_668, 10
; %var_2_2923 = add i64 %var_2_2918, 10
; Matched:\<badref\>:  store i64 %var_2_674, i64* %PC, align 8
; store i64 %var_2_2923, i64* %var_2_3, align 8
; Matched:%var_2_236:  %var_2_236 = bitcast i64 %var_2_233 to double
; %var_2_2924 = bitcast i64 %var_2_2921 to double
; Matched:%var_2_569:  %var_2_569 = inttoptr i64 %var_2_566 to double*
; %var_2_2925 = inttoptr i64 %var_2_2922 to double*
; Matched:%var_2_2883:  %var_2_2883 = load double, double* %var_2_2882, align 8
; %var_2_2926 = load double, double* %var_2_2925, align 8
; Matched:%var_2_239:  %var_2_239 = fadd double %var_2_236, %var_2_238
; %var_2_2927 = fadd double %var_2_2924, %var_2_2926
; Matched:\<badref\>:  store double %var_2_571, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2927, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_2928 = add i64 %var_2_2916, -16
; Matched:%var_2_2886:  %var_2_2886 = add i64 %var_2_2875, 14
; %var_2_2929 = add i64 %var_2_2918, 14
; Matched:\<badref\>:  store i64 %var_2_1638, i64* %PC, align 8
; store i64 %var_2_2929, i64* %var_2_3, align 8
%var_2_2930 = inttoptr i64 %var_2_2928 to i64*
%var_2_2931 = load i64, i64* %var_2_2930, align 8
; Matched:\<badref\>:  store i64 %var_2_1066, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2931, i64* %RDX.i1791, align 8
%var_2_2932 = add i64 %var_2_2916, -28
; Matched:%var_2_1207:  %var_2_1207 = add i64 %var_2_1193, 17
; %var_2_2933 = add i64 %var_2_2918, 17
; Matched:\<badref\>:  store i64 %var_2_592, i64* %PC, align 8
; store i64 %var_2_2933, i64* %var_2_3, align 8
%var_2_2934 = inttoptr i64 %var_2_2932 to i32*
%var_2_2935 = load i32, i32* %var_2_2934, align 4
%var_2_2936 = add i32 %var_2_2935, 8
; Matched:%var_2_2428:  %var_2_2428 = zext i32 %var_2_2427 to i64
; %var_2_2937 = zext i32 %var_2_2936 to i64
; Matched:\<badref\>:  store i64 %var_2_2894, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2937, i64* %RCX.i1272, align 8
; Matched:%var_2_2429:  %var_2_2429 = icmp ugt i32 %var_2_2426, -9
; %var_2_2938 = icmp ugt i32 %var_2_2935, -9
; Matched:%var_2_2278:  %var_2_2278 = zext i1 %var_2_2277 to i8
; %var_2_2939 = zext i1 %var_2_2938 to i8
; Matched:\<badref\>:  store i8 %var_2_2278, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2939, i8* %var_2_14, align 1
; Matched:%var_2_2897:  %var_2_2897 = and i32 %var_2_2893, 255
; %var_2_2940 = and i32 %var_2_2936, 255
; Matched:%var_2_2432:  %var_2_2432 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2431) #14
; %var_2_2941 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2940)
; Matched:%var_2_2281:  %var_2_2281 = trunc i32 %var_2_2280 to i8
; %var_2_2942 = trunc i32 %var_2_2941 to i8
; Matched:%var_2_2434:  %var_2_2434 = and i8 %var_2_2433, 1
; %var_2_2943 = and i8 %var_2_2942, 1
; Matched:%var_2_2901:  %var_2_2901 = xor i8 %var_2_2900, 1
; %var_2_2944 = xor i8 %var_2_2943, 1
; Matched:\<badref\>:  store i8 %var_2_2435, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2944, i8* %var_2_21, align 1
; Matched:%var_2_2284:  %var_2_2284 = xor i32 %var_2_2275, %var_2_2274
; %var_2_2945 = xor i32 %var_2_2936, %var_2_2935
; Matched:%var_2_2285:  %var_2_2285 = lshr i32 %var_2_2284, 4
; %var_2_2946 = lshr i32 %var_2_2945, 4
; Matched:%var_2_2904:  %var_2_2904 = trunc i32 %var_2_2903 to i8
; %var_2_2947 = trunc i32 %var_2_2946 to i8
; Matched:%var_2_2439:  %var_2_2439 = and i8 %var_2_2438, 1
; %var_2_2948 = and i8 %var_2_2947, 1
; Matched:\<badref\>:  store i8 %var_2_2287, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2948, i8* %var_2_27, align 1
; Matched:%var_2_2440:  %var_2_2440 = icmp eq i32 %var_2_2427, 0
; %var_2_2949 = icmp eq i32 %var_2_2936, 0
; Matched:%var_2_2907:  %var_2_2907 = zext i1 %var_2_2906 to i8
; %var_2_2950 = zext i1 %var_2_2949 to i8
; Matched:\<badref\>:  store i8 %var_2_2441, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2950, i8* %var_2_30, align 1
; Matched:%var_2_2290:  %var_2_2290 = lshr i32 %var_2_2275, 31
; %var_2_2951 = lshr i32 %var_2_2936, 31
; Matched:%var_2_2291:  %var_2_2291 = trunc i32 %var_2_2290 to i8
; %var_2_2952 = trunc i32 %var_2_2951 to i8
; Matched:\<badref\>:  store i8 %var_2_2909, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2952, i8* %var_2_33, align 1
; Matched:%var_2_2444:  %var_2_2444 = lshr i32 %var_2_2426, 31
; %var_2_2953 = lshr i32 %var_2_2935, 31
; Matched:%var_2_2293:  %var_2_2293 = xor i32 %var_2_2290, %var_2_2292
; %var_2_2954 = xor i32 %var_2_2951, %var_2_2953
; Matched:%var_2_2912:  %var_2_2912 = add nuw nsw i32 %var_2_2911, %var_2_2908
; %var_2_2955 = add nuw nsw i32 %var_2_2954, %var_2_2951
; Matched:%var_2_2913:  %var_2_2913 = icmp eq i32 %var_2_2912, 2
; %var_2_2956 = icmp eq i32 %var_2_2955, 2
; Matched:%var_2_2448:  %var_2_2448 = zext i1 %var_2_2447 to i8
; %var_2_2957 = zext i1 %var_2_2956 to i8
; Matched:\<badref\>:  store i8 %var_2_2296, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_2957, i8* %var_2_39, align 1
%var_2_2958 = sext i32 %var_2_2936 to i64
; Matched:\<badref\>:  store i64 %var_2_2915, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_2958, i64* %RSI.i1794, align 8
; Matched:%var_2_2916:  %var_2_2916 = shl nsw i64 %var_2_2915, 3
; %var_2_2959 = shl nsw i64 %var_2_2958, 3
; Matched:%var_2_2917:  %var_2_2917 = add i64 %var_2_2888, %var_2_2916
; %var_2_2960 = add i64 %var_2_2931, %var_2_2959
; Matched:%var_2_2918:  %var_2_2918 = add i64 %var_2_2875, 28
; %var_2_2961 = add i64 %var_2_2918, 28
; Matched:\<badref\>:  store i64 %var_2_3088, i64* %PC, align 8
; store i64 %var_2_2961, i64* %var_2_3, align 8
; Matched:%var_2_2919:  %var_2_2919 = inttoptr i64 %var_2_2917 to double*
; %var_2_2962 = inttoptr i64 %var_2_2960 to double*
; Matched:\<badref\>:  store double %var_2_2884, double* %var_2_2919, align 8
; store double %var_2_2927, double* %var_2_2962, align 8
%var_2_2963 = load i64, i64* %RBP.i, align 8
%var_2_2964 = add i64 %var_2_2963, -104
%var_2_2965 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_305, 5
; %var_2_2966 = add i64 %var_2_2965, 5
; Matched:\<badref\>:  store i64 %var_2_3136, i64* %PC, align 8
; store i64 %var_2_2966, i64* %var_2_3, align 8
%var_2_2967 = inttoptr i64 %var_2_2964 to i64*
%var_2_2968 = load i64, i64* %var_2_2967, align 8
; Matched:\<badref\>:  store i64 %var_2_2925, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_2968, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_246, -136
; %var_2_2969 = add i64 %var_2_2963, -136
; Matched:%var_2_2229:  %var_2_2229 = add i64 %var_2_2218, 13
; %var_2_2970 = add i64 %var_2_2965, 13
; Matched:\<badref\>:  store i64 %var_2_2229, i64* %PC, align 8
; store i64 %var_2_2970, i64* %var_2_3, align 8
; Matched:%var_2_254:  %var_2_254 = bitcast i64 %var_2_251 to double
; %var_2_2971 = bitcast i64 %var_2_2968 to double
; Matched:%var_2_255:  %var_2_255 = inttoptr i64 %var_2_252 to double*
; %var_2_2972 = inttoptr i64 %var_2_2969 to double*
; Matched:%var_2_256:  %var_2_256 = load double, double* %var_2_255, align 8
; %var_2_2973 = load double, double* %var_2_2972, align 8
; Matched:%var_2_257:  %var_2_257 = fadd double %var_2_254, %var_2_256
; %var_2_2974 = fadd double %var_2_2971, %var_2_2973
; Matched:\<badref\>:  store double %var_2_257, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_2974, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_2975 = add i64 %var_2_2963, -16
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_362, 17
; %var_2_2976 = add i64 %var_2_2965, 17
; Matched:\<badref\>:  store i64 %var_2_1077, i64* %PC, align 8
; store i64 %var_2_2976, i64* %var_2_3, align 8
%var_2_2977 = inttoptr i64 %var_2_2975 to i64*
%var_2_2978 = load i64, i64* %var_2_2977, align 8
; Matched:\<badref\>:  store i64 %var_2_2346, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_2978, i64* %RDX.i1791, align 8
%var_2_2979 = add i64 %var_2_2963, -28
; Matched:%var_2_3180:  %var_2_3180 = add i64 %var_2_3165, 20
; %var_2_2980 = add i64 %var_2_2965, 20
; Matched:\<badref\>:  store i64 %var_2_1079, i64* %PC, align 8
; store i64 %var_2_2980, i64* %var_2_3, align 8
%var_2_2981 = inttoptr i64 %var_2_2979 to i32*
%var_2_2982 = load i32, i32* %var_2_2981, align 4
%var_2_2983 = add i32 %var_2_2982, 9
; Matched:%var_2_2352:  %var_2_2352 = zext i32 %var_2_2351 to i64
; %var_2_2984 = zext i32 %var_2_2983 to i64
; Matched:\<badref\>:  store i64 %var_2_2504, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_2984, i64* %RCX.i1272, align 8
; Matched:%var_2_2942:  %var_2_2942 = icmp ugt i32 %var_2_2939, -10
; %var_2_2985 = icmp ugt i32 %var_2_2982, -10
; Matched:%var_2_2506:  %var_2_2506 = zext i1 %var_2_2505 to i8
; %var_2_2986 = zext i1 %var_2_2985 to i8
; Matched:\<badref\>:  store i8 %var_2_2354, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_2986, i8* %var_2_14, align 1
; Matched:%var_2_2944:  %var_2_2944 = and i32 %var_2_2940, 255
; %var_2_2987 = and i32 %var_2_2983, 255
; Matched:%var_2_2356:  %var_2_2356 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2355) #14
; %var_2_2988 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2987)
; Matched:%var_2_2509:  %var_2_2509 = trunc i32 %var_2_2508 to i8
; %var_2_2989 = trunc i32 %var_2_2988 to i8
; Matched:%var_2_2358:  %var_2_2358 = and i8 %var_2_2357, 1
; %var_2_2990 = and i8 %var_2_2989, 1
; Matched:%var_2_2511:  %var_2_2511 = xor i8 %var_2_2510, 1
; %var_2_2991 = xor i8 %var_2_2990, 1
; Matched:\<badref\>:  store i8 %var_2_2948, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_2991, i8* %var_2_21, align 1
; Matched:%var_2_2360:  %var_2_2360 = xor i32 %var_2_2351, %var_2_2350
; %var_2_2992 = xor i32 %var_2_2983, %var_2_2982
; Matched:%var_2_2513:  %var_2_2513 = lshr i32 %var_2_2512, 4
; %var_2_2993 = lshr i32 %var_2_2992, 4
; Matched:%var_2_2951:  %var_2_2951 = trunc i32 %var_2_2950 to i8
; %var_2_2994 = trunc i32 %var_2_2993 to i8
; Matched:%var_2_2363:  %var_2_2363 = and i8 %var_2_2362, 1
; %var_2_2995 = and i8 %var_2_2994, 1
; Matched:\<badref\>:  store i8 %var_2_2515, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_2995, i8* %var_2_27, align 1
; Matched:%var_2_2953:  %var_2_2953 = icmp eq i32 %var_2_2940, 0
; %var_2_2996 = icmp eq i32 %var_2_2983, 0
; Matched:%var_2_2517:  %var_2_2517 = zext i1 %var_2_2516 to i8
; %var_2_2997 = zext i1 %var_2_2996 to i8
; Matched:\<badref\>:  store i8 %var_2_2365, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_2997, i8* %var_2_30, align 1
; Matched:%var_2_2518:  %var_2_2518 = lshr i32 %var_2_2503, 31
; %var_2_2998 = lshr i32 %var_2_2983, 31
; Matched:%var_2_2519:  %var_2_2519 = trunc i32 %var_2_2518 to i8
; %var_2_2999 = trunc i32 %var_2_2998 to i8
; Matched:\<badref\>:  store i8 %var_2_2956, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_2999, i8* %var_2_33, align 1
; Matched:%var_2_2368:  %var_2_2368 = lshr i32 %var_2_2350, 31
; %var_2_3000 = lshr i32 %var_2_2982, 31
; Matched:%var_2_2521:  %var_2_2521 = xor i32 %var_2_2518, %var_2_2520
; %var_2_3001 = xor i32 %var_2_2998, %var_2_3000
; Matched:%var_2_2370:  %var_2_2370 = add nuw nsw i32 %var_2_2369, %var_2_2366
; %var_2_3002 = add nuw nsw i32 %var_2_3001, %var_2_2998
; Matched:%var_2_2523:  %var_2_2523 = icmp eq i32 %var_2_2522, 2
; %var_2_3003 = icmp eq i32 %var_2_3002, 2
; Matched:%var_2_2961:  %var_2_2961 = zext i1 %var_2_2960 to i8
; %var_2_3004 = zext i1 %var_2_3003 to i8
; Matched:\<badref\>:  store i8 %var_2_2524, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3004, i8* %var_2_39, align 1
%var_2_3005 = sext i32 %var_2_2983 to i64
; Matched:\<badref\>:  store i64 %var_2_2962, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3005, i64* %RSI.i1794, align 8
; Matched:%var_2_2963:  %var_2_2963 = shl nsw i64 %var_2_2962, 3
; %var_2_3006 = shl nsw i64 %var_2_3005, 3
; Matched:%var_2_2964:  %var_2_2964 = add i64 %var_2_2935, %var_2_2963
; %var_2_3007 = add i64 %var_2_2978, %var_2_3006
; Matched:%var_2_2046:  %var_2_2046 = add i64 %var_2_2020, 31
; %var_2_3008 = add i64 %var_2_2965, 31
; Matched:\<badref\>:  store i64 %var_2_3191, i64* %PC, align 8
; store i64 %var_2_3008, i64* %var_2_3, align 8
; Matched:%var_2_2966:  %var_2_2966 = inttoptr i64 %var_2_2964 to double*
; %var_2_3009 = inttoptr i64 %var_2_3007 to double*
; Matched:\<badref\>:  store double %var_2_2931, double* %var_2_2966, align 8
; store double %var_2_2974, double* %var_2_3009, align 8
; Matched:%var_2_1698:  %var_2_1698 = load i64, i64* %RBP, align 8
; %var_2_3010 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1699:  %var_2_1699 = add i64 %var_2_1698, -128
; %var_2_3011 = add i64 %var_2_3010, -128
%var_2_3012 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2923:  %var_2_2923 = add i64 %var_2_2922, 5
; %var_2_3013 = add i64 %var_2_3012, 5
; Matched:\<badref\>:  store i64 %var_2_582, i64* %PC, align 8
; store i64 %var_2_3013, i64* %var_2_3, align 8
; Matched:%var_2_1702:  %var_2_1702 = inttoptr i64 %var_2_1699 to i64*
; %var_2_3014 = inttoptr i64 %var_2_3011 to i64*
; Matched:%var_2_2972:  %var_2_2972 = load i64, i64* %var_2_2971, align 8
; %var_2_3015 = load i64, i64* %var_2_3014, align 8
; Matched:\<badref\>:  store i64 %var_2_2972, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3015, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_1704:  %var_2_1704 = add i64 %var_2_1698, -96
; %var_2_3016 = add i64 %var_2_3010, -96
; Matched:%var_2_758:  %var_2_758 = add i64 %var_2_753, 10
; %var_2_3017 = add i64 %var_2_3012, 10
; Matched:\<badref\>:  store i64 %var_2_758, i64* %PC, align 8
; store i64 %var_2_3017, i64* %var_2_3, align 8
; Matched:%var_2_1706:  %var_2_1706 = inttoptr i64 %var_2_1704 to double*
; %var_2_3018 = inttoptr i64 %var_2_3016 to double*
; Matched:%var_2_1707:  %var_2_1707 = load double, double* %var_2_1706, align 8
; %var_2_3019 = load double, double* %var_2_3018, align 8
; Matched:%var_2_2977:  %var_2_2977 = bitcast i64 %var_2_2972 to double
; %var_2_3020 = bitcast i64 %var_2_3015 to double
; Matched:%var_2_2978:  %var_2_2978 = fsub double %var_2_2976, %var_2_2977
; %var_2_3021 = fsub double %var_2_3019, %var_2_3020
; Matched:\<badref\>:  store double %var_2_2978, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3021, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_1710:  %var_2_1710 = add i64 %var_2_1700, 19
; %var_2_3022 = add i64 %var_2_3012, 19
; Matched:\<badref\>:  store i64 %var_2_1710, i64* %PC, align 8
; store i64 %var_2_3022, i64* %var_2_3, align 8
; Matched:%var_2_1711:  %var_2_1711 = inttoptr i64 %var_2_1704 to double*
; %var_2_3023 = inttoptr i64 %var_2_3016 to double*
; Matched:\<badref\>:  store double %var_2_1709, double* %var_2_1711, align 8
; store double %var_2_3021, double* %var_2_3023, align 8
%var_2_3024 = load i64, i64* %RBP.i, align 8
%var_2_3025 = add i64 %var_2_3024, -136
%var_2_3026 = load i64, i64* %var_2_3, align 8
%var_2_3027 = add i64 %var_2_3026, 8
store i64 %var_2_3027, i64* %var_2_3, align 8
%var_2_3028 = inttoptr i64 %var_2_3025 to i64*
%var_2_3029 = load i64, i64* %var_2_3028, align 8
; Matched:\<badref\>:  store i64 %var_2_603, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3029, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_2987:  %var_2_2987 = add i64 %var_2_2981, -104
; %var_2_3030 = add i64 %var_2_3024, -104
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_188, 13
; %var_2_3031 = add i64 %var_2_3026, 13
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8
; store i64 %var_2_3031, i64* %var_2_3, align 8
; Matched:%var_2_2989:  %var_2_2989 = inttoptr i64 %var_2_2987 to double*
; %var_2_3032 = inttoptr i64 %var_2_3030 to double*
; Matched:%var_2_2990:  %var_2_2990 = load double, double* %var_2_2989, align 8
; %var_2_3033 = load double, double* %var_2_3032, align 8
; Matched:%var_2_1722:  %var_2_1722 = bitcast i64 %var_2_1717 to double
; %var_2_3034 = bitcast i64 %var_2_3029 to double
; Matched:%var_2_1723:  %var_2_1723 = fsub double %var_2_1721, %var_2_1722
; %var_2_3035 = fsub double %var_2_3033, %var_2_3034
; Matched:\<badref\>:  store double %var_2_2992, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3035, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_358:  %var_2_358 = add i64 %var_2_343, 22
; %var_2_3036 = add i64 %var_2_3026, 22
; Matched:\<badref\>:  store i64 %var_2_1587, i64* %PC, align 8
; store i64 %var_2_3036, i64* %var_2_3, align 8
; Matched:%var_2_2994:  %var_2_2994 = inttoptr i64 %var_2_2987 to double*
; %var_2_3037 = inttoptr i64 %var_2_3030 to double*
; Matched:\<badref\>:  store double %var_2_2992, double* %var_2_2994, align 8
; store double %var_2_3035, double* %var_2_3037, align 8
%var_2_3038 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2996:  %var_2_2996 = add i64 %var_2_2995, -72
; %var_2_3039 = add i64 %var_2_3038, -72
%var_2_3040 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2876:  %var_2_2876 = add i64 %var_2_2875, 5
; %var_2_3041 = add i64 %var_2_3040, 5
; Matched:\<badref\>:  store i64 %var_2_1875, i64* %PC, align 8
; store i64 %var_2_3041, i64* %var_2_3, align 8
; Matched:%var_2_3068:  %var_2_3068 = inttoptr i64 %var_2_3065 to i64*
; %var_2_3042 = inttoptr i64 %var_2_3039 to i64*
; Matched:%var_2_3000:  %var_2_3000 = load i64, i64* %var_2_2999, align 8
; %var_2_3043 = load i64, i64* %var_2_3042, align 8
; Matched:%var_2_3001:  %var_2_3001 = load i64, i64* %RAX, align 8
; %var_2_3044 = load i64, i64* %RAX.i1283, align 8
; Matched:%var_2_3002:  %var_2_3002 = xor i64 %var_2_3001, %var_2_3000
; %var_2_3045 = xor i64 %var_2_3044, %var_2_3043
; Matched:\<badref\>:  store i64 %var_2_3002, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3045, i64* %RDX.i1791, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_3072:  %var_2_3072 = trunc i64 %var_2_3071 to i32
; %var_2_3046 = trunc i64 %var_2_3045 to i32
; Matched:%var_2_3004:  %var_2_3004 = and i32 %var_2_3003, 255
; %var_2_3047 = and i32 %var_2_3046, 255
; Matched:%var_2_3005:  %var_2_3005 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3004) #14
; %var_2_3048 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3047)
; Matched:%var_2_3075:  %var_2_3075 = trunc i32 %var_2_3074 to i8
; %var_2_3049 = trunc i32 %var_2_3048 to i8
; Matched:%var_2_3007:  %var_2_3007 = and i8 %var_2_3006, 1
; %var_2_3050 = and i8 %var_2_3049, 1
; Matched:%var_2_3008:  %var_2_3008 = xor i8 %var_2_3007, 1
; %var_2_3051 = xor i8 %var_2_3050, 1
; Matched:\<badref\>:  store i8 %var_2_3008, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3051, i8* %var_2_21, align 1
; Matched:%var_2_3009:  %var_2_3009 = icmp eq i64 %var_2_3002, 0
; %var_2_3052 = icmp eq i64 %var_2_3045, 0
; Matched:%var_2_3079:  %var_2_3079 = zext i1 %var_2_3078 to i8
; %var_2_3053 = zext i1 %var_2_3052 to i8
; Matched:\<badref\>:  store i8 %var_2_3010, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3053, i8* %var_2_30, align 1
; Matched:%var_2_3011:  %var_2_3011 = lshr i64 %var_2_3002, 63
; %var_2_3054 = lshr i64 %var_2_3045, 63
; Matched:%var_2_3081:  %var_2_3081 = trunc i64 %var_2_3080 to i8
; %var_2_3055 = trunc i64 %var_2_3054 to i8
; Matched:\<badref\>:  store i8 %var_2_3012, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3055, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:\<badref\>:  store i64 %var_2_3002, i64* %var_2_68, align 1, !tbaa !1261
; store i64 %var_2_3045, i64* %var_2_68, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3013:  %var_2_3013 = add i64 %var_2_2995, -96
; %var_2_3056 = add i64 %var_2_3038, -96
; Matched:%var_2_1648:  %var_2_1648 = add i64 %var_2_1627, 23
; %var_2_3057 = add i64 %var_2_3040, 23
; Matched:\<badref\>:  store i64 %var_2_1648, i64* %PC, align 8
; store i64 %var_2_3057, i64* %var_2_3, align 8
; Matched:  %.cast4 = bitcast i64 %var_2_3002 to double
; %.cast4 = bitcast i64 %var_2_3045 to double
; Matched:%var_2_3015:  %var_2_3015 = inttoptr i64 %var_2_3013 to double*
; %var_2_3058 = inttoptr i64 %var_2_3056 to double*
; Matched:%var_2_3016:  %var_2_3016 = load double, double* %var_2_3015, align 8
; %var_2_3059 = load double, double* %var_2_3058, align 8
; Matched:%var_2_3017:  %var_2_3017 = fmul double %.cast4, %var_2_3016
; %var_2_3060 = fmul double %.cast4, %var_2_3059
; Matched:\<badref\>:  store double %var_2_3017, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3060, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_3061 = add i64 %var_2_3038, -64
; Matched:%var_2_3333:  %var_2_3333 = add i64 %var_2_3311, 28
; %var_2_3062 = add i64 %var_2_3040, 28
; Matched:\<badref\>:  store i64 %var_2_3333, i64* %PC, align 8
; store i64 %var_2_3062, i64* %var_2_3, align 8
%var_2_3063 = inttoptr i64 %var_2_3061 to i64*
%var_2_3064 = load i64, i64* %var_2_3063, align 8
; Matched:\<badref\>:  store i64 %var_2_3090, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3064, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_1790:  %var_2_1790 = add i64 %var_2_1784, -104
; %var_2_3065 = add i64 %var_2_3038, -104
; Matched:%var_2_3023:  %var_2_3023 = add i64 %var_2_2997, 33
; %var_2_3066 = add i64 %var_2_3040, 33
; Matched:\<badref\>:  store i64 %var_2_3092, i64* %PC, align 8
; store i64 %var_2_3066, i64* %var_2_3, align 8
; Matched:%var_2_1792:  %var_2_1792 = bitcast i64 %var_2_1789 to double
; %var_2_3067 = bitcast i64 %var_2_3064 to double
; Matched:%var_2_3025:  %var_2_3025 = inttoptr i64 %var_2_3022 to double*
; %var_2_3068 = inttoptr i64 %var_2_3065 to double*
; Matched:%var_2_3026:  %var_2_3026 = load double, double* %var_2_3025, align 8
; %var_2_3069 = load double, double* %var_2_3068, align 8
; Matched:%var_2_3027:  %var_2_3027 = fmul double %var_2_3024, %var_2_3026
; %var_2_3070 = fmul double %var_2_3067, %var_2_3069
; Matched:\<badref\>:  store double %var_2_3027, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3070, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3028:  %var_2_3028 = fsub double %var_2_3017, %var_2_3027
; %var_2_3071 = fsub double %var_2_3060, %var_2_3070
; Matched:\<badref\>:  store double %var_2_3028, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3071, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_3072 = add i64 %var_2_3038, -16
; Matched:%var_2_2415:  %var_2_2415 = add i64 %var_2_2343, 41
; %var_2_3073 = add i64 %var_2_3040, 41
; Matched:\<badref\>:  store i64 %var_2_2415, i64* %PC, align 8
; store i64 %var_2_3073, i64* %var_2_3, align 8
%var_2_3074 = inttoptr i64 %var_2_3072 to i64*
%var_2_3075 = load i64, i64* %var_2_3074, align 8
; Matched:\<badref\>:  store i64 %var_2_460, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3075, i64* %RDX.i1791, align 8
%var_2_3076 = add i64 %var_2_3038, -28
; Matched:%var_2_2871:  %var_2_2871 = add i64 %var_2_2799, 44
; %var_2_3077 = add i64 %var_2_3040, 44
; Matched:\<badref\>:  store i64 %var_2_2871, i64* %PC, align 8
; store i64 %var_2_3077, i64* %var_2_3, align 8
%var_2_3078 = inttoptr i64 %var_2_3076 to i32*
%var_2_3079 = load i32, i32* %var_2_3078, align 4
%var_2_3080 = add i32 %var_2_3079, 12
; Matched:%var_2_2732:  %var_2_2732 = zext i32 %var_2_2731 to i64
; %var_2_3081 = zext i32 %var_2_3080 to i64
; Matched:\<badref\>:  store i64 %var_2_2732, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3081, i64* %RCX.i1272, align 8
; Matched:%var_2_2733:  %var_2_2733 = icmp ugt i32 %var_2_2730, -13
; %var_2_3082 = icmp ugt i32 %var_2_3079, -13
; Matched:%var_2_2734:  %var_2_2734 = zext i1 %var_2_2733 to i8
; %var_2_3083 = zext i1 %var_2_3082 to i8
; Matched:\<badref\>:  store i8 %var_2_3040, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3083, i8* %var_2_14, align 1
; Matched:%var_2_3041:  %var_2_3041 = and i32 %var_2_3037, 255
; %var_2_3084 = and i32 %var_2_3080, 255
; Matched:%var_2_2736:  %var_2_2736 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2735) #14
; %var_2_3085 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3084)
; Matched:%var_2_2737:  %var_2_2737 = trunc i32 %var_2_2736 to i8
; %var_2_3086 = trunc i32 %var_2_3085 to i8
; Matched:%var_2_2738:  %var_2_2738 = and i8 %var_2_2737, 1
; %var_2_3087 = and i8 %var_2_3086, 1
; Matched:%var_2_2739:  %var_2_2739 = xor i8 %var_2_2738, 1
; %var_2_3088 = xor i8 %var_2_3087, 1
; Matched:\<badref\>:  store i8 %var_2_2739, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3088, i8* %var_2_21, align 1
; Matched:%var_2_2740:  %var_2_2740 = xor i32 %var_2_2731, %var_2_2730
; %var_2_3089 = xor i32 %var_2_3080, %var_2_3079
; Matched:%var_2_3047:  %var_2_3047 = lshr i32 %var_2_3046, 4
; %var_2_3090 = lshr i32 %var_2_3089, 4
; Matched:%var_2_3048:  %var_2_3048 = trunc i32 %var_2_3047 to i8
; %var_2_3091 = trunc i32 %var_2_3090 to i8
; Matched:%var_2_2743:  %var_2_2743 = and i8 %var_2_2742, 1
; %var_2_3092 = and i8 %var_2_3091, 1
; Matched:\<badref\>:  store i8 %var_2_2743, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3092, i8* %var_2_27, align 1
; Matched:%var_2_2744:  %var_2_2744 = icmp eq i32 %var_2_2731, 0
; %var_2_3093 = icmp eq i32 %var_2_3080, 0
; Matched:%var_2_2745:  %var_2_2745 = zext i1 %var_2_2744 to i8
; %var_2_3094 = zext i1 %var_2_3093 to i8
; Matched:\<badref\>:  store i8 %var_2_2745, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3094, i8* %var_2_30, align 1
; Matched:%var_2_2746:  %var_2_2746 = lshr i32 %var_2_2731, 31
; %var_2_3095 = lshr i32 %var_2_3080, 31
; Matched:%var_2_3053:  %var_2_3053 = trunc i32 %var_2_3052 to i8
; %var_2_3096 = trunc i32 %var_2_3095 to i8
; Matched:\<badref\>:  store i8 %var_2_3053, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3096, i8* %var_2_33, align 1
; Matched:%var_2_2748:  %var_2_2748 = lshr i32 %var_2_2730, 31
; %var_2_3097 = lshr i32 %var_2_3079, 31
; Matched:%var_2_2749:  %var_2_2749 = xor i32 %var_2_2746, %var_2_2748
; %var_2_3098 = xor i32 %var_2_3095, %var_2_3097
; Matched:%var_2_2750:  %var_2_2750 = add nuw nsw i32 %var_2_2749, %var_2_2746
; %var_2_3099 = add nuw nsw i32 %var_2_3098, %var_2_3095
; Matched:%var_2_2751:  %var_2_2751 = icmp eq i32 %var_2_2750, 2
; %var_2_3100 = icmp eq i32 %var_2_3099, 2
; Matched:%var_2_2752:  %var_2_2752 = zext i1 %var_2_2751 to i8
; %var_2_3101 = zext i1 %var_2_3100 to i8
; Matched:\<badref\>:  store i8 %var_2_2752, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3101, i8* %var_2_39, align 1
%var_2_3102 = sext i32 %var_2_3080 to i64
; Matched:\<badref\>:  store i64 %var_2_3059, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_3102, i64* %RSI.i1794, align 8
; Matched:%var_2_3060:  %var_2_3060 = shl nsw i64 %var_2_3059, 3
; %var_2_3103 = shl nsw i64 %var_2_3102, 3
; Matched:%var_2_3061:  %var_2_3061 = add i64 %var_2_3032, %var_2_3060
; %var_2_3104 = add i64 %var_2_3075, %var_2_3103
; Matched:%var_2_3062:  %var_2_3062 = add i64 %var_2_2997, 55
; %var_2_3105 = add i64 %var_2_3040, 55
; Matched:\<badref\>:  store i64 %var_2_3062, i64* %PC, align 8
; store i64 %var_2_3105, i64* %var_2_3, align 8
; Matched:%var_2_3063:  %var_2_3063 = inttoptr i64 %var_2_3061 to double*
; %var_2_3106 = inttoptr i64 %var_2_3104 to double*
; Matched:\<badref\>:  store double %var_2_3028, double* %var_2_3063, align 8
; store double %var_2_3071, double* %var_2_3106, align 8
%var_2_3107 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3065:  %var_2_3065 = add i64 %var_2_3064, -72
; %var_2_3108 = add i64 %var_2_3107, -72
%var_2_3109 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3282:  %var_2_3282 = add i64 %var_2_3281, 5
; %var_2_3110 = add i64 %var_2_3109, 5
; Matched:\<badref\>:  store i64 %var_2_363, i64* %PC, align 8
; store i64 %var_2_3110, i64* %var_2_3, align 8
; Matched:%var_2_2999:  %var_2_2999 = inttoptr i64 %var_2_2996 to i64*
; %var_2_3111 = inttoptr i64 %var_2_3108 to i64*
; Matched:%var_2_3069:  %var_2_3069 = load i64, i64* %var_2_3068, align 8
; %var_2_3112 = load i64, i64* %var_2_3111, align 8
; Matched:%var_2_3070:  %var_2_3070 = load i64, i64* %RAX, align 8
; %var_2_3113 = load i64, i64* %RAX.i1283, align 8
; Matched:%var_2_3071:  %var_2_3071 = xor i64 %var_2_3070, %var_2_3069
; %var_2_3114 = xor i64 %var_2_3113, %var_2_3112
; Matched:\<badref\>:  store i64 %var_2_3071, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3114, i64* %RDX.i1791, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_3003:  %var_2_3003 = trunc i64 %var_2_3002 to i32
; %var_2_3115 = trunc i64 %var_2_3114 to i32
; Matched:%var_2_3073:  %var_2_3073 = and i32 %var_2_3072, 255
; %var_2_3116 = and i32 %var_2_3115, 255
; Matched:%var_2_3074:  %var_2_3074 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3073) #14
; %var_2_3117 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3116)
; Matched:%var_2_3006:  %var_2_3006 = trunc i32 %var_2_3005 to i8
; %var_2_3118 = trunc i32 %var_2_3117 to i8
; Matched:%var_2_3076:  %var_2_3076 = and i8 %var_2_3075, 1
; %var_2_3119 = and i8 %var_2_3118, 1
; Matched:%var_2_3077:  %var_2_3077 = xor i8 %var_2_3076, 1
; %var_2_3120 = xor i8 %var_2_3119, 1
; Matched:\<badref\>:  store i8 %var_2_3077, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3120, i8* %var_2_21, align 1
; Matched:%var_2_3078:  %var_2_3078 = icmp eq i64 %var_2_3071, 0
; %var_2_3121 = icmp eq i64 %var_2_3114, 0
; Matched:%var_2_3010:  %var_2_3010 = zext i1 %var_2_3009 to i8
; %var_2_3122 = zext i1 %var_2_3121 to i8
; Matched:\<badref\>:  store i8 %var_2_3079, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3122, i8* %var_2_30, align 1
; Matched:%var_2_3080:  %var_2_3080 = lshr i64 %var_2_3071, 63
; %var_2_3123 = lshr i64 %var_2_3114, 63
; Matched:%var_2_3012:  %var_2_3012 = trunc i64 %var_2_3011 to i8
; %var_2_3124 = trunc i64 %var_2_3123 to i8
; Matched:\<badref\>:  store i8 %var_2_3081, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3124, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:\<badref\>:  store i64 %var_2_3071, i64* %var_2_68, align 1, !tbaa !1261
; store i64 %var_2_3114, i64* %var_2_68, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3082:  %var_2_3082 = add i64 %var_2_3064, -104
; %var_2_3125 = add i64 %var_2_3107, -104
; Matched:%var_2_495:  %var_2_495 = add i64 %var_2_478, 23
; %var_2_3126 = add i64 %var_2_3109, 23
; Matched:\<badref\>:  store i64 %var_2_495, i64* %PC, align 8
; store i64 %var_2_3126, i64* %var_2_3, align 8
; Matched:  %.cast5 = bitcast i64 %var_2_3071 to double
; %.cast5 = bitcast i64 %var_2_3114 to double
; Matched:%var_2_3084:  %var_2_3084 = inttoptr i64 %var_2_3082 to double*
; %var_2_3127 = inttoptr i64 %var_2_3125 to double*
; Matched:%var_2_3085:  %var_2_3085 = load double, double* %var_2_3084, align 8
; %var_2_3128 = load double, double* %var_2_3127, align 8
; Matched:%var_2_3086:  %var_2_3086 = fmul double %.cast5, %var_2_3085
; %var_2_3129 = fmul double %.cast5, %var_2_3128
; Matched:\<badref\>:  store double %var_2_3086, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3129, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
%var_2_3130 = add i64 %var_2_3107, -64
; Matched:%var_2_3088:  %var_2_3088 = add i64 %var_2_3066, 28
; %var_2_3131 = add i64 %var_2_3109, 28
; Matched:\<badref\>:  store i64 %var_2_2918, i64* %PC, align 8
; store i64 %var_2_3131, i64* %var_2_3, align 8
%var_2_3132 = inttoptr i64 %var_2_3130 to i64*
%var_2_3133 = load i64, i64* %var_2_3132, align 8
; Matched:\<badref\>:  store i64 %var_2_1789, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3133, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3091:  %var_2_3091 = add i64 %var_2_3064, -96
; %var_2_3134 = add i64 %var_2_3107, -96
; Matched:%var_2_3092:  %var_2_3092 = add i64 %var_2_3066, 33
; %var_2_3135 = add i64 %var_2_3109, 33
; Matched:\<badref\>:  store i64 %var_2_3023, i64* %PC, align 8
; store i64 %var_2_3135, i64* %var_2_3, align 8
; Matched:%var_2_3093:  %var_2_3093 = bitcast i64 %var_2_3090 to double
; %var_2_3136 = bitcast i64 %var_2_3133 to double
; Matched:%var_2_3094:  %var_2_3094 = inttoptr i64 %var_2_3091 to double*
; %var_2_3137 = inttoptr i64 %var_2_3134 to double*
; Matched:%var_2_3095:  %var_2_3095 = load double, double* %var_2_3094, align 8
; %var_2_3138 = load double, double* %var_2_3137, align 8
; Matched:%var_2_3096:  %var_2_3096 = fmul double %var_2_3093, %var_2_3095
; %var_2_3139 = fmul double %var_2_3136, %var_2_3138
; Matched:\<badref\>:  store double %var_2_1737, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3139, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3097:  %var_2_3097 = fadd double %var_2_3086, %var_2_3096
; %var_2_3140 = fadd double %var_2_3129, %var_2_3139
; Matched:\<badref\>:  store double %var_2_3097, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3140, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3390:  %var_2_3390 = add i64 %var_2_3367, -16
; %var_2_3141 = add i64 %var_2_3107, -16
; Matched:%var_2_1395:  %var_2_1395 = add i64 %var_2_1323, 41
; %var_2_3142 = add i64 %var_2_3109, 41
; Matched:\<badref\>:  store i64 %var_2_1395, i64* %PC, align 8
; store i64 %var_2_3142, i64* %var_2_3, align 8
; Matched:%var_2_3334:  %var_2_3334 = inttoptr i64 %var_2_3332 to i64*
; %var_2_3143 = inttoptr i64 %var_2_3141 to i64*
; Matched:%var_2_3247:  %var_2_3247 = load i64, i64* %var_2_3246, align 8
; %var_2_3144 = load i64, i64* %var_2_3143, align 8
; Matched:\<badref\>:  store i64 %var_2_3247, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3144, i64* %RAX.i1283, align 8
%var_2_3145 = add i64 %var_2_3107, -28
; Matched:%var_2_3034:  %var_2_3034 = add i64 %var_2_2997, 44
; %var_2_3146 = add i64 %var_2_3109, 44
; Matched:\<badref\>:  store i64 %var_2_3034, i64* %PC, align 8
; store i64 %var_2_3146, i64* %var_2_3, align 8
%var_2_3147 = inttoptr i64 %var_2_3145 to i32*
%var_2_3148 = load i32, i32* %var_2_3147, align 4
%var_2_3149 = add i32 %var_2_3148, 13
; Matched:%var_2_2656:  %var_2_2656 = zext i32 %var_2_2655 to i64
; %var_2_3150 = zext i32 %var_2_3149 to i64
; Matched:\<badref\>:  store i64 %var_2_2808, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3150, i64* %RCX.i1272, align 8
; Matched:%var_2_2657:  %var_2_2657 = icmp ugt i32 %var_2_2654, -14
; %var_2_3151 = icmp ugt i32 %var_2_3148, -14
; Matched:%var_2_2658:  %var_2_2658 = zext i1 %var_2_2657 to i8
; %var_2_3152 = zext i1 %var_2_3151 to i8
; Matched:\<badref\>:  store i8 %var_2_2810, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3152, i8* %var_2_14, align 1
; Matched:%var_2_2659:  %var_2_2659 = and i32 %var_2_2655, 255
; %var_2_3153 = and i32 %var_2_3149, 255
; Matched:%var_2_2812:  %var_2_2812 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2811) #14
; %var_2_3154 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3153)
; Matched:%var_2_2661:  %var_2_2661 = trunc i32 %var_2_2660 to i8
; %var_2_3155 = trunc i32 %var_2_3154 to i8
; Matched:%var_2_2662:  %var_2_2662 = and i8 %var_2_2661, 1
; %var_2_3156 = and i8 %var_2_3155, 1
; Matched:%var_2_3114:  %var_2_3114 = xor i8 %var_2_3113, 1
; %var_2_3157 = xor i8 %var_2_3156, 1
; Matched:\<badref\>:  store i8 %var_2_2815, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3157, i8* %var_2_21, align 1
; Matched:%var_2_2664:  %var_2_2664 = xor i32 %var_2_2655, %var_2_2654
; %var_2_3158 = xor i32 %var_2_3149, %var_2_3148
; Matched:%var_2_3116:  %var_2_3116 = lshr i32 %var_2_3115, 4
; %var_2_3159 = lshr i32 %var_2_3158, 4
; Matched:%var_2_2666:  %var_2_2666 = trunc i32 %var_2_2665 to i8
; %var_2_3160 = trunc i32 %var_2_3159 to i8
; Matched:%var_2_2819:  %var_2_2819 = and i8 %var_2_2818, 1
; %var_2_3161 = and i8 %var_2_3160, 1
; Matched:\<badref\>:  store i8 %var_2_2667, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3161, i8* %var_2_27, align 1
; Matched:%var_2_2668:  %var_2_2668 = icmp eq i32 %var_2_2655, 0
; %var_2_3162 = icmp eq i32 %var_2_3149, 0
; Matched:%var_2_3120:  %var_2_3120 = zext i1 %var_2_3119 to i8
; %var_2_3163 = zext i1 %var_2_3162 to i8
; Matched:\<badref\>:  store i8 %var_2_2669, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3163, i8* %var_2_30, align 1
; Matched:%var_2_2670:  %var_2_2670 = lshr i32 %var_2_2655, 31
; %var_2_3164 = lshr i32 %var_2_3149, 31
; Matched:%var_2_2823:  %var_2_2823 = trunc i32 %var_2_2822 to i8
; %var_2_3165 = trunc i32 %var_2_3164 to i8
; Matched:\<badref\>:  store i8 %var_2_2671, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3165, i8* %var_2_33, align 1
; Matched:%var_2_3123:  %var_2_3123 = lshr i32 %var_2_3105, 31
; %var_2_3166 = lshr i32 %var_2_3148, 31
; Matched:%var_2_2673:  %var_2_2673 = xor i32 %var_2_2670, %var_2_2672
; %var_2_3167 = xor i32 %var_2_3164, %var_2_3166
; Matched:%var_2_2826:  %var_2_2826 = add nuw nsw i32 %var_2_2825, %var_2_2822
; %var_2_3168 = add nuw nsw i32 %var_2_3167, %var_2_3164
; Matched:%var_2_2675:  %var_2_2675 = icmp eq i32 %var_2_2674, 2
; %var_2_3169 = icmp eq i32 %var_2_3168, 2
; Matched:%var_2_2676:  %var_2_2676 = zext i1 %var_2_2675 to i8
; %var_2_3170 = zext i1 %var_2_3169 to i8
; Matched:\<badref\>:  store i8 %var_2_2676, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3170, i8* %var_2_39, align 1
; Matched:%var_2_3128:  %var_2_3128 = sext i32 %var_2_3106 to i64
; %var_2_3171 = sext i32 %var_2_3149 to i64
; Matched:\<badref\>:  store i64 %var_2_3128, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3171, i64* %RDX.i1791, align 8
; Matched:%var_2_3129:  %var_2_3129 = shl nsw i64 %var_2_3128, 3
; %var_2_3172 = shl nsw i64 %var_2_3171, 3
; Matched:%var_2_3130:  %var_2_3130 = add i64 %var_2_3101, %var_2_3129
; %var_2_3173 = add i64 %var_2_3144, %var_2_3172
; Matched:%var_2_3131:  %var_2_3131 = add i64 %var_2_3066, 55
; %var_2_3174 = add i64 %var_2_3109, 55
; Matched:\<badref\>:  store i64 %var_2_3131, i64* %PC, align 8
; store i64 %var_2_3174, i64* %var_2_3, align 8
; Matched:%var_2_3132:  %var_2_3132 = inttoptr i64 %var_2_3130 to double*
; %var_2_3175 = inttoptr i64 %var_2_3173 to double*
; Matched:\<badref\>:  store double %var_2_3097, double* %var_2_3132, align 8
; store double %var_2_3140, double* %var_2_3175, align 8
%var_2_3176 = load i64, i64* %RBP.i, align 8
%var_2_3177 = add i64 %var_2_3176, -112
%var_2_3178 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_582:  %var_2_582 = add i64 %var_2_581, 5
; %var_2_3179 = add i64 %var_2_3178, 5
; Matched:\<badref\>:  store i64 %var_2_754, i64* %PC, align 8
; store i64 %var_2_3179, i64* %var_2_3, align 8
%var_2_3180 = inttoptr i64 %var_2_3177 to i64*
%var_2_3181 = load i64, i64* %var_2_3180, align 8
; Matched:\<badref\>:  store i64 %var_2_641, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3181, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_3182 = add i64 %var_2_3176, -152
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_499, 13
; %var_2_3183 = add i64 %var_2_3178, 13
; Matched:\<badref\>:  store i64 %var_2_1204, i64* %PC, align 8
; store i64 %var_2_3183, i64* %var_2_3, align 8
%var_2_3184 = bitcast i64 %var_2_3181 to double
%var_2_3185 = inttoptr i64 %var_2_3182 to double*
%var_2_3186 = load double, double* %var_2_3185, align 8
%var_2_3187 = fsub double %var_2_3184, %var_2_3186
; Matched:\<badref\>:  store double %var_2_3144, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3187, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_1854:  %var_2_1854 = add i64 %var_2_1842, -96
; %var_2_3188 = add i64 %var_2_3176, -96
; Matched:%var_2_1584:  %var_2_1584 = add i64 %var_2_1551, 18
; %var_2_3189 = add i64 %var_2_3178, 18
; Matched:\<badref\>:  store i64 %var_2_1584, i64* %PC, align 8
; store i64 %var_2_3189, i64* %var_2_3, align 8
; Matched:%var_2_1856:  %var_2_1856 = inttoptr i64 %var_2_1854 to double*
; %var_2_3190 = inttoptr i64 %var_2_3188 to double*
; Matched:\<badref\>:  store double %var_2_1853, double* %var_2_1856, align 8
; store double %var_2_3187, double* %var_2_3190, align 8
%var_2_3191 = load i64, i64* %RBP.i, align 8
%var_2_3192 = add i64 %var_2_3191, -120
%var_2_3193 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_363:  %var_2_363 = add i64 %var_2_362, 5
; %var_2_3194 = add i64 %var_2_3193, 5
; Matched:\<badref\>:  store i64 %var_2_2021, i64* %PC, align 8
; store i64 %var_2_3194, i64* %var_2_3, align 8
%var_2_3195 = inttoptr i64 %var_2_3192 to i64*
%var_2_3196 = load i64, i64* %var_2_3195, align 8
; Matched:\<badref\>:  store i64 %var_2_327, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3196, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_3197 = add i64 %var_2_3191, -144
; Matched:%var_2_605:  %var_2_605 = add i64 %var_2_600, 13
; %var_2_3198 = add i64 %var_2_3193, 13
; Matched:\<badref\>:  store i64 %var_2_605, i64* %PC, align 8
; store i64 %var_2_3198, i64* %var_2_3, align 8
%var_2_3199 = bitcast i64 %var_2_3196 to double
%var_2_3200 = inttoptr i64 %var_2_3197 to double*
%var_2_3201 = load double, double* %var_2_3200, align 8
%var_2_3202 = fadd double %var_2_3199, %var_2_3201
; Matched:\<badref\>:  store double %var_2_333, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3202, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_1869:  %var_2_1869 = add i64 %var_2_1857, -104
; %var_2_3203 = add i64 %var_2_3191, -104
; Matched:%var_2_1054:  %var_2_1054 = add i64 %var_2_1034, 18
; %var_2_3204 = add i64 %var_2_3193, 18
; Matched:\<badref\>:  store i64 %var_2_1054, i64* %PC, align 8
; store i64 %var_2_3204, i64* %var_2_3, align 8
; Matched:%var_2_1871:  %var_2_1871 = inttoptr i64 %var_2_1869 to double*
; %var_2_3205 = inttoptr i64 %var_2_3203 to double*
; Matched:\<badref\>:  store double %var_2_1868, double* %var_2_1871, align 8
; store double %var_2_3202, double* %var_2_3205, align 8
%var_2_3206 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3164:  %var_2_3164 = add i64 %var_2_3163, -48
; %var_2_3207 = add i64 %var_2_3206, -48
%var_2_3208 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1875:  %var_2_1875 = add i64 %var_2_1874, 5
; %var_2_3209 = add i64 %var_2_3208, 5
; Matched:\<badref\>:  store i64 %var_2_1787, i64* %PC, align 8
; store i64 %var_2_3209, i64* %var_2_3, align 8
; Matched:%var_2_780:  %var_2_780 = inttoptr i64 %var_2_777 to i64*
; %var_2_3210 = inttoptr i64 %var_2_3207 to i64*
; Matched:%var_2_781:  %var_2_781 = load i64, i64* %var_2_780, align 8
; %var_2_3211 = load i64, i64* %var_2_3210, align 8
; Matched:\<badref\>:  store i64 %var_2_756, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3211, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_3169:  %var_2_3169 = add i64 %var_2_3163, -96
; %var_2_3212 = add i64 %var_2_3206, -96
; Matched:%var_2_2253:  %var_2_2253 = add i64 %var_2_2246, 10
; %var_2_3213 = add i64 %var_2_3208, 10
; Matched:\<badref\>:  store i64 %var_2_2253, i64* %PC, align 8
; store i64 %var_2_3213, i64* %var_2_3, align 8
; Matched:%var_2_3171:  %var_2_3171 = bitcast i64 %var_2_3168 to double
; %var_2_3214 = bitcast i64 %var_2_3211 to double
; Matched:%var_2_3172:  %var_2_3172 = inttoptr i64 %var_2_3169 to double*
; %var_2_3215 = inttoptr i64 %var_2_3212 to double*
; Matched:%var_2_3173:  %var_2_3173 = load double, double* %var_2_3172, align 8
; %var_2_3216 = load double, double* %var_2_3215, align 8
; Matched:%var_2_3174:  %var_2_3174 = fmul double %var_2_3171, %var_2_3173
; %var_2_3217 = fmul double %var_2_3214, %var_2_3216
; Matched:\<badref\>:  store double %var_2_3174, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3217, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3233:  %var_2_3233 = add i64 %var_2_3221, -56
; %var_2_3218 = add i64 %var_2_3206, -56
; Matched:%var_2_3234:  %var_2_3234 = add i64 %var_2_3223, 15
; %var_2_3219 = add i64 %var_2_3208, 15
; Matched:\<badref\>:  store i64 %var_2_3380, i64* %PC, align 8
; store i64 %var_2_3219, i64* %var_2_3, align 8
; Matched:%var_2_3177:  %var_2_3177 = inttoptr i64 %var_2_3175 to i64*
; %var_2_3220 = inttoptr i64 %var_2_3218 to i64*
; Matched:%var_2_3236:  %var_2_3236 = load i64, i64* %var_2_3235, align 8
; %var_2_3221 = load i64, i64* %var_2_3220, align 8
; Matched:\<badref\>:  store i64 %var_2_3236, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3221, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3179:  %var_2_3179 = add i64 %var_2_3163, -104
; %var_2_3222 = add i64 %var_2_3206, -104
; Matched:%var_2_3326:  %var_2_3326 = add i64 %var_2_3311, 20
; %var_2_3223 = add i64 %var_2_3208, 20
; Matched:\<badref\>:  store i64 %var_2_1947, i64* %PC, align 8
; store i64 %var_2_3223, i64* %var_2_3, align 8
; Matched:%var_2_3181:  %var_2_3181 = bitcast i64 %var_2_3178 to double
; %var_2_3224 = bitcast i64 %var_2_3221 to double
; Matched:%var_2_3182:  %var_2_3182 = inttoptr i64 %var_2_3179 to double*
; %var_2_3225 = inttoptr i64 %var_2_3222 to double*
; Matched:%var_2_3183:  %var_2_3183 = load double, double* %var_2_3182, align 8
; %var_2_3226 = load double, double* %var_2_3225, align 8
; Matched:%var_2_3184:  %var_2_3184 = fmul double %var_2_3181, %var_2_3183
; %var_2_3227 = fmul double %var_2_3224, %var_2_3226
; Matched:\<badref\>:  store double %var_2_3184, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3227, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3185:  %var_2_3185 = fsub double %var_2_3174, %var_2_3184
; %var_2_3228 = fsub double %var_2_3217, %var_2_3227
; Matched:\<badref\>:  store double %var_2_3185, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3228, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3186:  %var_2_3186 = add i64 %var_2_3163, -16
; %var_2_3229 = add i64 %var_2_3206, -16
; Matched:%var_2_3245:  %var_2_3245 = add i64 %var_2_3223, 28
; %var_2_3230 = add i64 %var_2_3208, 28
; Matched:\<badref\>:  store i64 %var_2_3245, i64* %PC, align 8
; store i64 %var_2_3230, i64* %var_2_3, align 8
; Matched:%var_2_3392:  %var_2_3392 = inttoptr i64 %var_2_3390 to i64*
; %var_2_3231 = inttoptr i64 %var_2_3229 to i64*
; Matched:%var_2_3335:  %var_2_3335 = load i64, i64* %var_2_3334, align 8
; %var_2_3232 = load i64, i64* %var_2_3231, align 8
; Matched:\<badref\>:  store i64 %var_2_3335, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3232, i64* %RAX.i1283, align 8
%var_2_3233 = add i64 %var_2_3206, -28
; Matched:%var_2_1106:  %var_2_1106 = add i64 %var_2_1063, 31
; %var_2_3234 = add i64 %var_2_3208, 31
; Matched:\<badref\>:  store i64 %var_2_3337, i64* %PC, align 8
; store i64 %var_2_3234, i64* %var_2_3, align 8
%var_2_3235 = inttoptr i64 %var_2_3233 to i32*
%var_2_3236 = load i32, i32* %var_2_3235, align 4
%var_2_3237 = add i32 %var_2_3236, 10
; Matched:%var_2_2308:  %var_2_2308 = zext i32 %var_2_2307 to i64
; %var_2_3238 = zext i32 %var_2_3237 to i64
; Matched:\<badref\>:  store i64 %var_2_2308, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3238, i64* %RCX.i1272, align 8
; Matched:%var_2_3196:  %var_2_3196 = icmp ugt i32 %var_2_3193, -11
; %var_2_3239 = icmp ugt i32 %var_2_3236, -11
; Matched:%var_2_3197:  %var_2_3197 = zext i1 %var_2_3196 to i8
; %var_2_3240 = zext i1 %var_2_3239 to i8
; Matched:\<badref\>:  store i8 %var_2_2310, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3240, i8* %var_2_14, align 1
; Matched:%var_2_2463:  %var_2_2463 = and i32 %var_2_2459, 255
; %var_2_3241 = and i32 %var_2_3237, 255
; Matched:%var_2_2312:  %var_2_2312 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2311) #14
; %var_2_3242 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3241)
; Matched:%var_2_3200:  %var_2_3200 = trunc i32 %var_2_3199 to i8
; %var_2_3243 = trunc i32 %var_2_3242 to i8
; Matched:%var_2_2314:  %var_2_2314 = and i8 %var_2_2313, 1
; %var_2_3244 = and i8 %var_2_3243, 1
; Matched:%var_2_2315:  %var_2_2315 = xor i8 %var_2_2314, 1
; %var_2_3245 = xor i8 %var_2_3244, 1
; Matched:\<badref\>:  store i8 %var_2_3202, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3245, i8* %var_2_21, align 1
; Matched:%var_2_3203:  %var_2_3203 = xor i32 %var_2_3194, %var_2_3193
; %var_2_3246 = xor i32 %var_2_3237, %var_2_3236
; Matched:%var_2_2317:  %var_2_2317 = lshr i32 %var_2_2316, 4
; %var_2_3247 = lshr i32 %var_2_3246, 4
; Matched:%var_2_2470:  %var_2_2470 = trunc i32 %var_2_2469 to i8
; %var_2_3248 = trunc i32 %var_2_3247 to i8
; Matched:%var_2_2319:  %var_2_2319 = and i8 %var_2_2318, 1
; %var_2_3249 = and i8 %var_2_3248, 1
; Matched:\<badref\>:  store i8 %var_2_3206, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3249, i8* %var_2_27, align 1
; Matched:%var_2_2320:  %var_2_2320 = icmp eq i32 %var_2_2307, 0
; %var_2_3250 = icmp eq i32 %var_2_3237, 0
; Matched:%var_2_2321:  %var_2_2321 = zext i1 %var_2_2320 to i8
; %var_2_3251 = zext i1 %var_2_3250 to i8
; Matched:\<badref\>:  store i8 %var_2_3208, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3251, i8* %var_2_30, align 1
; Matched:%var_2_3209:  %var_2_3209 = lshr i32 %var_2_3194, 31
; %var_2_3252 = lshr i32 %var_2_3237, 31
; Matched:%var_2_2323:  %var_2_2323 = trunc i32 %var_2_2322 to i8
; %var_2_3253 = trunc i32 %var_2_3252 to i8
; Matched:\<badref\>:  store i8 %var_2_2475, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3253, i8* %var_2_33, align 1
; Matched:%var_2_2324:  %var_2_2324 = lshr i32 %var_2_2306, 31
; %var_2_3254 = lshr i32 %var_2_3236, 31
; Matched:%var_2_3212:  %var_2_3212 = xor i32 %var_2_3209, %var_2_3211
; %var_2_3255 = xor i32 %var_2_3252, %var_2_3254
; Matched:%var_2_2326:  %var_2_2326 = add nuw nsw i32 %var_2_2325, %var_2_2322
; %var_2_3256 = add nuw nsw i32 %var_2_3255, %var_2_3252
; Matched:%var_2_2327:  %var_2_2327 = icmp eq i32 %var_2_2326, 2
; %var_2_3257 = icmp eq i32 %var_2_3256, 2
; Matched:%var_2_3215:  %var_2_3215 = zext i1 %var_2_3214 to i8
; %var_2_3258 = zext i1 %var_2_3257 to i8
; Matched:\<badref\>:  store i8 %var_2_3215, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3258, i8* %var_2_39, align 1
; Matched:%var_2_3216:  %var_2_3216 = sext i32 %var_2_3194 to i64
; %var_2_3259 = sext i32 %var_2_3237 to i64
; Matched:\<badref\>:  store i64 %var_2_3216, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3259, i64* %RDX.i1791, align 8
; Matched:%var_2_3217:  %var_2_3217 = shl nsw i64 %var_2_3216, 3
; %var_2_3260 = shl nsw i64 %var_2_3259, 3
; Matched:%var_2_3218:  %var_2_3218 = add i64 %var_2_3189, %var_2_3217
; %var_2_3261 = add i64 %var_2_3232, %var_2_3260
; Matched:%var_2_3277:  %var_2_3277 = add i64 %var_2_3223, 42
; %var_2_3262 = add i64 %var_2_3208, 42
; Matched:\<badref\>:  store i64 %var_2_3365, i64* %PC, align 8
; store i64 %var_2_3262, i64* %var_2_3, align 8
; Matched:%var_2_3220:  %var_2_3220 = inttoptr i64 %var_2_3218 to double*
; %var_2_3263 = inttoptr i64 %var_2_3261 to double*
; Matched:\<badref\>:  store double %var_2_3185, double* %var_2_3220, align 8
; store double %var_2_3228, double* %var_2_3263, align 8
%var_2_3264 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3222:  %var_2_3222 = add i64 %var_2_3221, -48
; %var_2_3265 = add i64 %var_2_3264, -48
%var_2_3266 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_343, 5
; %var_2_3267 = add i64 %var_2_3266, 5
; Matched:\<badref\>:  store i64 %var_2_344, i64* %PC, align 8
; store i64 %var_2_3267, i64* %var_2_3, align 8
; Matched:%var_2_670:  %var_2_670 = inttoptr i64 %var_2_667 to i64*
; %var_2_3268 = inttoptr i64 %var_2_3265 to i64*
; Matched:%var_2_671:  %var_2_671 = load i64, i64* %var_2_670, align 8
; %var_2_3269 = load i64, i64* %var_2_3268, align 8
; Matched:\<badref\>:  store i64 %var_2_701, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3269, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_3227:  %var_2_3227 = add i64 %var_2_3221, -104
; %var_2_3270 = add i64 %var_2_3264, -104
; Matched:%var_2_1879:  %var_2_1879 = add i64 %var_2_1874, 10
; %var_2_3271 = add i64 %var_2_3266, 10
; Matched:\<badref\>:  store i64 %var_2_1879, i64* %PC, align 8
; store i64 %var_2_3271, i64* %var_2_3, align 8
; Matched:%var_2_3229:  %var_2_3229 = bitcast i64 %var_2_3226 to double
; %var_2_3272 = bitcast i64 %var_2_3269 to double
; Matched:%var_2_3230:  %var_2_3230 = inttoptr i64 %var_2_3227 to double*
; %var_2_3273 = inttoptr i64 %var_2_3270 to double*
; Matched:%var_2_3231:  %var_2_3231 = load double, double* %var_2_3230, align 8
; %var_2_3274 = load double, double* %var_2_3273, align 8
; Matched:%var_2_3232:  %var_2_3232 = fmul double %var_2_3229, %var_2_3231
; %var_2_3275 = fmul double %var_2_3272, %var_2_3274
; Matched:\<badref\>:  store double %var_2_3232, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3275, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3175:  %var_2_3175 = add i64 %var_2_3163, -56
; %var_2_3276 = add i64 %var_2_3264, -56
; Matched:%var_2_3380:  %var_2_3380 = add i64 %var_2_3369, 15
; %var_2_3277 = add i64 %var_2_3266, 15
; Matched:\<badref\>:  store i64 %var_2_682, i64* %PC, align 8
; store i64 %var_2_3277, i64* %var_2_3, align 8
; Matched:%var_2_3235:  %var_2_3235 = inttoptr i64 %var_2_3233 to i64*
; %var_2_3278 = inttoptr i64 %var_2_3276 to i64*
; Matched:%var_2_3178:  %var_2_3178 = load i64, i64* %var_2_3177, align 8
; %var_2_3279 = load i64, i64* %var_2_3278, align 8
; Matched:\<badref\>:  store i64 %var_2_3178, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3279, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3237:  %var_2_3237 = add i64 %var_2_3221, -96
; %var_2_3280 = add i64 %var_2_3264, -96
; Matched:%var_2_1889:  %var_2_1889 = add i64 %var_2_1874, 20
; %var_2_3281 = add i64 %var_2_3266, 20
; Matched:\<badref\>:  store i64 %var_2_3384, i64* %PC, align 8
; store i64 %var_2_3281, i64* %var_2_3, align 8
; Matched:%var_2_3239:  %var_2_3239 = bitcast i64 %var_2_3236 to double
; %var_2_3282 = bitcast i64 %var_2_3279 to double
; Matched:%var_2_3240:  %var_2_3240 = inttoptr i64 %var_2_3237 to double*
; %var_2_3283 = inttoptr i64 %var_2_3280 to double*
; Matched:%var_2_3241:  %var_2_3241 = load double, double* %var_2_3240, align 8
; %var_2_3284 = load double, double* %var_2_3283, align 8
; Matched:%var_2_3242:  %var_2_3242 = fmul double %var_2_3239, %var_2_3241
; %var_2_3285 = fmul double %var_2_3282, %var_2_3284
; Matched:\<badref\>:  store double %var_2_3242, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3285, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3243:  %var_2_3243 = fadd double %var_2_3232, %var_2_3242
; %var_2_3286 = fadd double %var_2_3275, %var_2_3285
; Matched:\<badref\>:  store double %var_2_3243, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3286, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3332:  %var_2_3332 = add i64 %var_2_3309, -16
; %var_2_3287 = add i64 %var_2_3264, -16
; Matched:%var_2_3019:  %var_2_3019 = add i64 %var_2_2997, 28
; %var_2_3288 = add i64 %var_2_3266, 28
; Matched:\<badref\>:  store i64 %var_2_3019, i64* %PC, align 8
; store i64 %var_2_3288, i64* %var_2_3, align 8
; Matched:%var_2_3246:  %var_2_3246 = inttoptr i64 %var_2_3244 to i64*
; %var_2_3289 = inttoptr i64 %var_2_3287 to i64*
; Matched:%var_2_3393:  %var_2_3393 = load i64, i64* %var_2_3392, align 8
; %var_2_3290 = load i64, i64* %var_2_3289, align 8
; Matched:\<badref\>:  store i64 %var_2_3393, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3290, i64* %RAX.i1283, align 8
%var_2_3291 = add i64 %var_2_3264, -28
; Matched:%var_2_1754:  %var_2_1754 = add i64 %var_2_1728, 31
; %var_2_3292 = add i64 %var_2_3266, 31
; Matched:\<badref\>:  store i64 %var_2_1236, i64* %PC, align 8
; store i64 %var_2_3292, i64* %var_2_3, align 8
%var_2_3293 = inttoptr i64 %var_2_3291 to i32*
%var_2_3294 = load i32, i32* %var_2_3293, align 4
%var_2_3295 = add i32 %var_2_3294, 11
; Matched:%var_2_2536:  %var_2_2536 = zext i32 %var_2_2535 to i64
; %var_2_3296 = zext i32 %var_2_3295 to i64
; Matched:\<badref\>:  store i64 %var_2_2536, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3296, i64* %RCX.i1272, align 8
; Matched:%var_2_2537:  %var_2_2537 = icmp ugt i32 %var_2_2534, -12
; %var_2_3297 = icmp ugt i32 %var_2_3294, -12
; Matched:%var_2_2538:  %var_2_2538 = zext i1 %var_2_2537 to i8
; %var_2_3298 = zext i1 %var_2_3297 to i8
; Matched:\<badref\>:  store i8 %var_2_3255, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3298, i8* %var_2_14, align 1
; Matched:%var_2_3256:  %var_2_3256 = and i32 %var_2_3252, 255
; %var_2_3299 = and i32 %var_2_3295, 255
; Matched:%var_2_2540:  %var_2_2540 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2539) #14
; %var_2_3300 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3299)
; Matched:%var_2_2541:  %var_2_2541 = trunc i32 %var_2_2540 to i8
; %var_2_3301 = trunc i32 %var_2_3300 to i8
; Matched:%var_2_2542:  %var_2_2542 = and i8 %var_2_2541, 1
; %var_2_3302 = and i8 %var_2_3301, 1
; Matched:%var_2_2543:  %var_2_2543 = xor i8 %var_2_2542, 1
; %var_2_3303 = xor i8 %var_2_3302, 1
; Matched:\<badref\>:  store i8 %var_2_2543, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3303, i8* %var_2_21, align 1
; Matched:%var_2_2544:  %var_2_2544 = xor i32 %var_2_2535, %var_2_2534
; %var_2_3304 = xor i32 %var_2_3295, %var_2_3294
; Matched:%var_2_3262:  %var_2_3262 = lshr i32 %var_2_3261, 4
; %var_2_3305 = lshr i32 %var_2_3304, 4
; Matched:%var_2_3263:  %var_2_3263 = trunc i32 %var_2_3262 to i8
; %var_2_3306 = trunc i32 %var_2_3305 to i8
; Matched:%var_2_2547:  %var_2_2547 = and i8 %var_2_2546, 1
; %var_2_3307 = and i8 %var_2_3306, 1
; Matched:\<badref\>:  store i8 %var_2_2547, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3307, i8* %var_2_27, align 1
; Matched:%var_2_2548:  %var_2_2548 = icmp eq i32 %var_2_2535, 0
; %var_2_3308 = icmp eq i32 %var_2_3295, 0
; Matched:%var_2_2549:  %var_2_2549 = zext i1 %var_2_2548 to i8
; %var_2_3309 = zext i1 %var_2_3308 to i8
; Matched:\<badref\>:  store i8 %var_2_2549, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3309, i8* %var_2_30, align 1
; Matched:%var_2_2550:  %var_2_2550 = lshr i32 %var_2_2535, 31
; %var_2_3310 = lshr i32 %var_2_3295, 31
; Matched:%var_2_3268:  %var_2_3268 = trunc i32 %var_2_3267 to i8
; %var_2_3311 = trunc i32 %var_2_3310 to i8
; Matched:\<badref\>:  store i8 %var_2_3268, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3311, i8* %var_2_33, align 1
; Matched:%var_2_2552:  %var_2_2552 = lshr i32 %var_2_2534, 31
; %var_2_3312 = lshr i32 %var_2_3294, 31
; Matched:%var_2_2553:  %var_2_2553 = xor i32 %var_2_2550, %var_2_2552
; %var_2_3313 = xor i32 %var_2_3310, %var_2_3312
; Matched:%var_2_2554:  %var_2_2554 = add nuw nsw i32 %var_2_2553, %var_2_2550
; %var_2_3314 = add nuw nsw i32 %var_2_3313, %var_2_3310
; Matched:%var_2_2555:  %var_2_2555 = icmp eq i32 %var_2_2554, 2
; %var_2_3315 = icmp eq i32 %var_2_3314, 2
; Matched:%var_2_2556:  %var_2_2556 = zext i1 %var_2_2555 to i8
; %var_2_3316 = zext i1 %var_2_3315 to i8
; Matched:\<badref\>:  store i8 %var_2_2556, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3316, i8* %var_2_39, align 1
; Matched:%var_2_3274:  %var_2_3274 = sext i32 %var_2_3252 to i64
; %var_2_3317 = sext i32 %var_2_3295 to i64
; Matched:\<badref\>:  store i64 %var_2_3274, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3317, i64* %RDX.i1791, align 8
; Matched:%var_2_3275:  %var_2_3275 = shl nsw i64 %var_2_3274, 3
; %var_2_3318 = shl nsw i64 %var_2_3317, 3
; Matched:%var_2_3276:  %var_2_3276 = add i64 %var_2_3247, %var_2_3275
; %var_2_3319 = add i64 %var_2_3290, %var_2_3318
; Matched:%var_2_1928:  %var_2_1928 = add i64 %var_2_1874, 42
; %var_2_3320 = add i64 %var_2_3266, 42
; Matched:\<badref\>:  store i64 %var_2_3423, i64* %PC, align 8
; store i64 %var_2_3320, i64* %var_2_3, align 8
; Matched:%var_2_3278:  %var_2_3278 = inttoptr i64 %var_2_3276 to double*
; %var_2_3321 = inttoptr i64 %var_2_3319 to double*
; Matched:\<badref\>:  store double %var_2_3243, double* %var_2_3278, align 8
; store double %var_2_3286, double* %var_2_3321, align 8
%var_2_3322 = load i64, i64* %RBP.i, align 8
%var_2_3323 = add i64 %var_2_3322, -112
%var_2_3324 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2247:  %var_2_2247 = add i64 %var_2_2246, 5
; %var_2_3325 = add i64 %var_2_3324, 5
; Matched:\<badref\>:  store i64 %var_2_563, i64* %PC, align 8
; store i64 %var_2_3325, i64* %var_2_3, align 8
%var_2_3326 = inttoptr i64 %var_2_3323 to i64*
%var_2_3327 = load i64, i64* %var_2_3326, align 8
; Matched:\<badref\>:  store i64 %var_2_308, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3327, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_3328 = add i64 %var_2_3322, -152
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_478, 13
; %var_2_3329 = add i64 %var_2_3324, 13
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_3329, i64* %var_2_3, align 8
%var_2_3330 = bitcast i64 %var_2_3327 to double
%var_2_3331 = inttoptr i64 %var_2_3328 to double*
%var_2_3332 = load double, double* %var_2_3331, align 8
%var_2_3333 = fadd double %var_2_3330, %var_2_3332
; Matched:\<badref\>:  store double %var_2_352, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3333, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3291:  %var_2_3291 = add i64 %var_2_3279, -96
; %var_2_3334 = add i64 %var_2_3322, -96
; Matched:%var_2_1280:  %var_2_1280 = add i64 %var_2_1246, 18
; %var_2_3335 = add i64 %var_2_3324, 18
; Matched:\<badref\>:  store i64 %var_2_1280, i64* %PC, align 8
; store i64 %var_2_3335, i64* %var_2_3, align 8
; Matched:%var_2_2002:  %var_2_2002 = inttoptr i64 %var_2_2000 to double*
; %var_2_3336 = inttoptr i64 %var_2_3334 to double*
; Matched:\<badref\>:  store double %var_2_1999, double* %var_2_2002, align 8
; store double %var_2_3333, double* %var_2_3336, align 8
%var_2_3337 = load i64, i64* %RBP.i, align 8
%var_2_3338 = add i64 %var_2_3337, -120
%var_2_3339 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, 5
; %var_2_3340 = add i64 %var_2_3339, 5
; Matched:\<badref\>:  store i64 %var_2_1009, i64* %PC, align 8
; store i64 %var_2_3340, i64* %var_2_3, align 8
%var_2_3341 = inttoptr i64 %var_2_3338 to i64*
%var_2_3342 = load i64, i64* %var_2_3341, align 8
; Matched:\<badref\>:  store i64 %var_2_656, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3342, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
%var_2_3343 = add i64 %var_2_3337, -144
; Matched:%var_2_1657:  %var_2_1657 = add i64 %var_2_1652, 13
; %var_2_3344 = add i64 %var_2_3339, 13
; Matched:\<badref\>:  store i64 %var_2_92, i64* %PC, align 8
; store i64 %var_2_3344, i64* %var_2_3, align 8
%var_2_3345 = bitcast i64 %var_2_3342 to double
%var_2_3346 = inttoptr i64 %var_2_3343 to double*
%var_2_3347 = load double, double* %var_2_3346, align 8
%var_2_3348 = fsub double %var_2_3345, %var_2_3347
; Matched:\<badref\>:  store double %var_2_371, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3348, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3306:  %var_2_3306 = add i64 %var_2_3294, -104
; %var_2_3349 = add i64 %var_2_3337, -104
; Matched:%var_2_426:  %var_2_426 = add i64 %var_2_415, 18
; %var_2_3350 = add i64 %var_2_3339, 18
; Matched:\<badref\>:  store i64 %var_2_426, i64* %PC, align 8
; store i64 %var_2_3350, i64* %var_2_3, align 8
; Matched:%var_2_2017:  %var_2_2017 = inttoptr i64 %var_2_2015 to double*
; %var_2_3351 = inttoptr i64 %var_2_3349 to double*
; Matched:\<badref\>:  store double %var_2_2014, double* %var_2_2017, align 8
; store double %var_2_3348, double* %var_2_3351, align 8
%var_2_3352 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3368:  %var_2_3368 = add i64 %var_2_3367, -80
; %var_2_3353 = add i64 %var_2_3352, -80
%var_2_3354 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1845:  %var_2_1845 = add i64 %var_2_1844, 5
; %var_2_3355 = add i64 %var_2_3354, 5
; Matched:\<badref\>:  store i64 %var_2_2923, i64* %PC, align 8
; store i64 %var_2_3355, i64* %var_2_3, align 8
; Matched:%var_2_3313:  %var_2_3313 = inttoptr i64 %var_2_3310 to i64*
; %var_2_3356 = inttoptr i64 %var_2_3353 to i64*
; Matched:%var_2_3372:  %var_2_3372 = load i64, i64* %var_2_3371, align 8
; %var_2_3357 = load i64, i64* %var_2_3356, align 8
; Matched:\<badref\>:  store i64 %var_2_3372, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3357, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_3315:  %var_2_3315 = add i64 %var_2_3309, -96
; %var_2_3358 = add i64 %var_2_3352, -96
; Matched:%var_2_2880:  %var_2_2880 = add i64 %var_2_2875, 10
; %var_2_3359 = add i64 %var_2_3354, 10
; Matched:\<badref\>:  store i64 %var_2_2880, i64* %PC, align 8
; store i64 %var_2_3359, i64* %var_2_3, align 8
; Matched:%var_2_3317:  %var_2_3317 = bitcast i64 %var_2_3314 to double
; %var_2_3360 = bitcast i64 %var_2_3357 to double
; Matched:%var_2_3318:  %var_2_3318 = inttoptr i64 %var_2_3315 to double*
; %var_2_3361 = inttoptr i64 %var_2_3358 to double*
; Matched:%var_2_3319:  %var_2_3319 = load double, double* %var_2_3318, align 8
; %var_2_3362 = load double, double* %var_2_3361, align 8
; Matched:%var_2_3320:  %var_2_3320 = fmul double %var_2_3317, %var_2_3319
; %var_2_3363 = fmul double %var_2_3360, %var_2_3362
; Matched:\<badref\>:  store double %var_2_3320, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3363, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3379:  %var_2_3379 = add i64 %var_2_3367, -88
; %var_2_3364 = add i64 %var_2_3352, -88
; Matched:%var_2_1739:  %var_2_1739 = add i64 %var_2_1728, 15
; %var_2_3365 = add i64 %var_2_3354, 15
; Matched:\<badref\>:  store i64 %var_2_1739, i64* %PC, align 8
; store i64 %var_2_3365, i64* %var_2_3, align 8
; Matched:%var_2_3323:  %var_2_3323 = inttoptr i64 %var_2_3321 to i64*
; %var_2_3366 = inttoptr i64 %var_2_3364 to i64*
; Matched:%var_2_3382:  %var_2_3382 = load i64, i64* %var_2_3381, align 8
; %var_2_3367 = load i64, i64* %var_2_3366, align 8
; Matched:\<badref\>:  store i64 %var_2_3382, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3367, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3325:  %var_2_3325 = add i64 %var_2_3309, -104
; %var_2_3368 = add i64 %var_2_3352, -104
; Matched:%var_2_3384:  %var_2_3384 = add i64 %var_2_3369, 20
; %var_2_3369 = add i64 %var_2_3354, 20
; Matched:\<badref\>:  store i64 %var_2_1743, i64* %PC, align 8
; store i64 %var_2_3369, i64* %var_2_3, align 8
; Matched:%var_2_3327:  %var_2_3327 = bitcast i64 %var_2_3324 to double
; %var_2_3370 = bitcast i64 %var_2_3367 to double
; Matched:%var_2_3328:  %var_2_3328 = inttoptr i64 %var_2_3325 to double*
; %var_2_3371 = inttoptr i64 %var_2_3368 to double*
; Matched:%var_2_3329:  %var_2_3329 = load double, double* %var_2_3328, align 8
; %var_2_3372 = load double, double* %var_2_3371, align 8
; Matched:%var_2_3330:  %var_2_3330 = fmul double %var_2_3327, %var_2_3329
; %var_2_3373 = fmul double %var_2_3370, %var_2_3372
; Matched:\<badref\>:  store double %var_2_3330, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3373, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3331:  %var_2_3331 = fsub double %var_2_3320, %var_2_3330
; %var_2_3374 = fsub double %var_2_3363, %var_2_3373
; Matched:\<badref\>:  store double %var_2_3331, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3374, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3098:  %var_2_3098 = add i64 %var_2_3064, -16
; %var_2_3375 = add i64 %var_2_3352, -16
; Matched:%var_2_774:  %var_2_774 = add i64 %var_2_753, 28
; %var_2_3376 = add i64 %var_2_3354, 28
; Matched:\<badref\>:  store i64 %var_2_774, i64* %PC, align 8
; store i64 %var_2_3376, i64* %var_2_3, align 8
; Matched:%var_2_3100:  %var_2_3100 = inttoptr i64 %var_2_3098 to i64*
; %var_2_3377 = inttoptr i64 %var_2_3375 to i64*
; Matched:%var_2_3189:  %var_2_3189 = load i64, i64* %var_2_3188, align 8
; %var_2_3378 = load i64, i64* %var_2_3377, align 8
; Matched:\<badref\>:  store i64 %var_2_3189, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3378, i64* %RAX.i1283, align 8
%var_2_3379 = add i64 %var_2_3352, -28
; Matched:%var_2_1696:  %var_2_1696 = add i64 %var_2_1652, 31
; %var_2_3380 = add i64 %var_2_3354, 31
; Matched:\<badref\>:  store i64 %var_2_2104, i64* %PC, align 8
; store i64 %var_2_3380, i64* %var_2_3, align 8
%var_2_3381 = inttoptr i64 %var_2_3379 to i32*
%var_2_3382 = load i32, i32* %var_2_3381, align 4
%var_2_3383 = add i32 %var_2_3382, 14
; Matched:%var_2_2612:  %var_2_2612 = zext i32 %var_2_2611 to i64
; %var_2_3384 = zext i32 %var_2_3383 to i64
; Matched:\<badref\>:  store i64 %var_2_2612, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3384, i64* %RCX.i1272, align 8
; Matched:%var_2_3342:  %var_2_3342 = icmp ugt i32 %var_2_3339, -15
; %var_2_3385 = icmp ugt i32 %var_2_3382, -15
; Matched:%var_2_3343:  %var_2_3343 = zext i1 %var_2_3342 to i8
; %var_2_3386 = zext i1 %var_2_3385 to i8
; Matched:\<badref\>:  store i8 %var_2_2614, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3386, i8* %var_2_14, align 1
; Matched:%var_2_2767:  %var_2_2767 = and i32 %var_2_2763, 255
; %var_2_3387 = and i32 %var_2_3383, 255
; Matched:%var_2_2616:  %var_2_2616 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2615) #14
; %var_2_3388 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3387)
; Matched:%var_2_3346:  %var_2_3346 = trunc i32 %var_2_3345 to i8
; %var_2_3389 = trunc i32 %var_2_3388 to i8
; Matched:%var_2_2618:  %var_2_2618 = and i8 %var_2_2617, 1
; %var_2_3390 = and i8 %var_2_3389, 1
; Matched:%var_2_2619:  %var_2_2619 = xor i8 %var_2_2618, 1
; %var_2_3391 = xor i8 %var_2_3390, 1
; Matched:\<badref\>:  store i8 %var_2_3348, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3391, i8* %var_2_21, align 1
; Matched:%var_2_3349:  %var_2_3349 = xor i32 %var_2_3340, %var_2_3339
; %var_2_3392 = xor i32 %var_2_3383, %var_2_3382
; Matched:%var_2_2621:  %var_2_2621 = lshr i32 %var_2_2620, 4
; %var_2_3393 = lshr i32 %var_2_3392, 4
; Matched:%var_2_2774:  %var_2_2774 = trunc i32 %var_2_2773 to i8
; %var_2_3394 = trunc i32 %var_2_3393 to i8
; Matched:%var_2_2623:  %var_2_2623 = and i8 %var_2_2622, 1
; %var_2_3395 = and i8 %var_2_3394, 1
; Matched:\<badref\>:  store i8 %var_2_3352, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3395, i8* %var_2_27, align 1
; Matched:%var_2_2624:  %var_2_2624 = icmp eq i32 %var_2_2611, 0
; %var_2_3396 = icmp eq i32 %var_2_3383, 0
; Matched:%var_2_2625:  %var_2_2625 = zext i1 %var_2_2624 to i8
; %var_2_3397 = zext i1 %var_2_3396 to i8
; Matched:\<badref\>:  store i8 %var_2_3354, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3397, i8* %var_2_30, align 1
; Matched:%var_2_3355:  %var_2_3355 = lshr i32 %var_2_3340, 31
; %var_2_3398 = lshr i32 %var_2_3383, 31
; Matched:%var_2_2627:  %var_2_2627 = trunc i32 %var_2_2626 to i8
; %var_2_3399 = trunc i32 %var_2_3398 to i8
; Matched:\<badref\>:  store i8 %var_2_2779, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3399, i8* %var_2_33, align 1
; Matched:%var_2_2628:  %var_2_2628 = lshr i32 %var_2_2610, 31
; %var_2_3400 = lshr i32 %var_2_3382, 31
; Matched:%var_2_3358:  %var_2_3358 = xor i32 %var_2_3355, %var_2_3357
; %var_2_3401 = xor i32 %var_2_3398, %var_2_3400
; Matched:%var_2_2630:  %var_2_2630 = add nuw nsw i32 %var_2_2629, %var_2_2626
; %var_2_3402 = add nuw nsw i32 %var_2_3401, %var_2_3398
; Matched:%var_2_2631:  %var_2_2631 = icmp eq i32 %var_2_2630, 2
; %var_2_3403 = icmp eq i32 %var_2_3402, 2
; Matched:%var_2_3361:  %var_2_3361 = zext i1 %var_2_3360 to i8
; %var_2_3404 = zext i1 %var_2_3403 to i8
; Matched:\<badref\>:  store i8 %var_2_3361, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3404, i8* %var_2_39, align 1
; Matched:%var_2_3362:  %var_2_3362 = sext i32 %var_2_3340 to i64
; %var_2_3405 = sext i32 %var_2_3383 to i64
; Matched:\<badref\>:  store i64 %var_2_3362, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3405, i64* %RDX.i1791, align 8
; Matched:%var_2_3363:  %var_2_3363 = shl nsw i64 %var_2_3362, 3
; %var_2_3406 = shl nsw i64 %var_2_3405, 3
; Matched:%var_2_3364:  %var_2_3364 = add i64 %var_2_3335, %var_2_3363
; %var_2_3407 = add i64 %var_2_3378, %var_2_3406
; Matched:%var_2_3423:  %var_2_3423 = add i64 %var_2_3369, 42
; %var_2_3408 = add i64 %var_2_3354, 42
; Matched:\<badref\>:  store i64 %var_2_1782, i64* %PC, align 8
; store i64 %var_2_3408, i64* %var_2_3, align 8
; Matched:%var_2_3366:  %var_2_3366 = inttoptr i64 %var_2_3364 to double*
; %var_2_3409 = inttoptr i64 %var_2_3407 to double*
; Matched:\<badref\>:  store double %var_2_3331, double* %var_2_3366, align 8
; store double %var_2_3374, double* %var_2_3409, align 8
%var_2_3410 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3310:  %var_2_3310 = add i64 %var_2_3309, -80
; %var_2_3411 = add i64 %var_2_3410, -80
%var_2_3412 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_3151:  %var_2_3151 = add i64 %var_2_3150, 5
; %var_2_3413 = add i64 %var_2_3412, 5
; Matched:\<badref\>:  store i64 %var_2_2247, i64* %PC, align 8
; store i64 %var_2_3413, i64* %var_2_3, align 8
; Matched:%var_2_3371:  %var_2_3371 = inttoptr i64 %var_2_3368 to i64*
; %var_2_3414 = inttoptr i64 %var_2_3411 to i64*
; Matched:%var_2_3314:  %var_2_3314 = load i64, i64* %var_2_3313, align 8
; %var_2_3415 = load i64, i64* %var_2_3414, align 8
; Matched:\<badref\>:  store i64 %var_2_3314, i64* %var_2_68, align 1, !tbaa !1284
; store i64 %var_2_3415, i64* %var_2_68, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_70, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_70, align 1
; Matched:%var_2_3373:  %var_2_3373 = add i64 %var_2_3367, -104
; %var_2_3416 = add i64 %var_2_3410, -104
; Matched:%var_2_2083:  %var_2_2083 = add i64 %var_2_2078, 10
; %var_2_3417 = add i64 %var_2_3412, 10
; Matched:\<badref\>:  store i64 %var_2_2083, i64* %PC, align 8
; store i64 %var_2_3417, i64* %var_2_3, align 8
; Matched:%var_2_3375:  %var_2_3375 = bitcast i64 %var_2_3372 to double
; %var_2_3418 = bitcast i64 %var_2_3415 to double
; Matched:%var_2_3376:  %var_2_3376 = inttoptr i64 %var_2_3373 to double*
; %var_2_3419 = inttoptr i64 %var_2_3416 to double*
; Matched:%var_2_3377:  %var_2_3377 = load double, double* %var_2_3376, align 8
; %var_2_3420 = load double, double* %var_2_3419, align 8
; Matched:%var_2_3378:  %var_2_3378 = fmul double %var_2_3375, %var_2_3377
; %var_2_3421 = fmul double %var_2_3418, %var_2_3420
; Matched:\<badref\>:  store double %var_2_3378, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3421, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3321:  %var_2_3321 = add i64 %var_2_3309, -88
; %var_2_3422 = add i64 %var_2_3410, -88
; Matched:%var_2_1797:  %var_2_1797 = add i64 %var_2_1786, 15
; %var_2_3423 = add i64 %var_2_3412, 15
; Matched:\<badref\>:  store i64 %var_2_3176, i64* %PC, align 8
; store i64 %var_2_3423, i64* %var_2_3, align 8
; Matched:%var_2_3381:  %var_2_3381 = inttoptr i64 %var_2_3379 to i64*
; %var_2_3424 = inttoptr i64 %var_2_3422 to i64*
; Matched:%var_2_3324:  %var_2_3324 = load i64, i64* %var_2_3323, align 8
; %var_2_3425 = load i64, i64* %var_2_3424, align 8
; Matched:\<badref\>:  store i64 %var_2_3324, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_3425, i64* %var_2_679, align 1
store double 0.000000e+00, double* %var_2_681, align 1
; Matched:%var_2_3383:  %var_2_3383 = add i64 %var_2_3367, -96
; %var_2_3426 = add i64 %var_2_3410, -96
; Matched:%var_2_1801:  %var_2_1801 = add i64 %var_2_1786, 20
; %var_2_3427 = add i64 %var_2_3412, 20
; Matched:\<badref\>:  store i64 %var_2_1801, i64* %PC, align 8
; store i64 %var_2_3427, i64* %var_2_3, align 8
; Matched:%var_2_3385:  %var_2_3385 = bitcast i64 %var_2_3382 to double
; %var_2_3428 = bitcast i64 %var_2_3425 to double
; Matched:%var_2_3386:  %var_2_3386 = inttoptr i64 %var_2_3383 to double*
; %var_2_3429 = inttoptr i64 %var_2_3426 to double*
; Matched:%var_2_3387:  %var_2_3387 = load double, double* %var_2_3386, align 8
; %var_2_3430 = load double, double* %var_2_3429, align 8
; Matched:%var_2_3388:  %var_2_3388 = fmul double %var_2_3385, %var_2_3387
; %var_2_3431 = fmul double %var_2_3428, %var_2_3430
; Matched:\<badref\>:  store double %var_2_3388, double* %var_2_677, align 1, !tbaa !1284
; store double %var_2_3431, double* %var_2_678, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_680, align 1
; Matched:%var_2_3389:  %var_2_3389 = fadd double %var_2_3378, %var_2_3388
; %var_2_3432 = fadd double %var_2_3421, %var_2_3431
; Matched:\<badref\>:  store double %var_2_3389, double* %var_2_67, align 1, !tbaa !1284
; store double %var_2_3432, double* %var_2_67, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_69, align 1, !tbaa !1284
; store i64 0, i64* %var_2_69, align 1
; Matched:%var_2_3244:  %var_2_3244 = add i64 %var_2_3221, -16
; %var_2_3433 = add i64 %var_2_3410, -16
; Matched:%var_2_799:  %var_2_799 = add i64 %var_2_778, 28
; %var_2_3434 = add i64 %var_2_3412, 28
; Matched:\<badref\>:  store i64 %var_2_3391, i64* %PC, align 8
; store i64 %var_2_3434, i64* %var_2_3, align 8
; Matched:%var_2_3188:  %var_2_3188 = inttoptr i64 %var_2_3186 to i64*
; %var_2_3435 = inttoptr i64 %var_2_3433 to i64*
; Matched:%var_2_3101:  %var_2_3101 = load i64, i64* %var_2_3100, align 8
; %var_2_3436 = load i64, i64* %var_2_3435, align 8
; Matched:\<badref\>:  store i64 %var_2_3101, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3436, i64* %RAX.i1283, align 8
%var_2_3437 = add i64 %var_2_3410, -28
; Matched:%var_2_3191:  %var_2_3191 = add i64 %var_2_3165, 31
; %var_2_3438 = add i64 %var_2_3412, 31
; Matched:\<badref\>:  store i64 %var_2_1812, i64* %PC, align 8
; store i64 %var_2_3438, i64* %var_2_3, align 8
%var_2_3439 = inttoptr i64 %var_2_3437 to i32*
%var_2_3440 = load i32, i32* %var_2_3439, align 4
%var_2_3441 = add i32 %var_2_3440, 15
; Matched:%var_2_2840:  %var_2_2840 = zext i32 %var_2_2839 to i64
; %var_2_3442 = zext i32 %var_2_3441 to i64
; Matched:\<badref\>:  store i64 %var_2_2840, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_3442, i64* %RCX.i1272, align 8
; Matched:%var_2_2841:  %var_2_2841 = icmp ugt i32 %var_2_2838, -16
; %var_2_3443 = icmp ugt i32 %var_2_3440, -16
; Matched:%var_2_2842:  %var_2_2842 = zext i1 %var_2_2841 to i8
; %var_2_3444 = zext i1 %var_2_3443 to i8
; Matched:\<badref\>:  store i8 %var_2_3401, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3444, i8* %var_2_14, align 1
; Matched:%var_2_3402:  %var_2_3402 = and i32 %var_2_3398, 255
; %var_2_3445 = and i32 %var_2_3441, 255
; Matched:%var_2_2844:  %var_2_2844 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2843) #14
; %var_2_3446 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3445)
; Matched:%var_2_2845:  %var_2_2845 = trunc i32 %var_2_2844 to i8
; %var_2_3447 = trunc i32 %var_2_3446 to i8
; Matched:%var_2_2846:  %var_2_2846 = and i8 %var_2_2845, 1
; %var_2_3448 = and i8 %var_2_3447, 1
; Matched:%var_2_2847:  %var_2_2847 = xor i8 %var_2_2846, 1
; %var_2_3449 = xor i8 %var_2_3448, 1
; Matched:\<badref\>:  store i8 %var_2_2847, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3449, i8* %var_2_21, align 1
; Matched:%var_2_2848:  %var_2_2848 = xor i32 %var_2_2839, %var_2_2838
; %var_2_3450 = xor i32 %var_2_3441, %var_2_3440
; Matched:%var_2_3408:  %var_2_3408 = lshr i32 %var_2_3407, 4
; %var_2_3451 = lshr i32 %var_2_3450, 4
; Matched:%var_2_3409:  %var_2_3409 = trunc i32 %var_2_3408 to i8
; %var_2_3452 = trunc i32 %var_2_3451 to i8
; Matched:%var_2_2851:  %var_2_2851 = and i8 %var_2_2850, 1
; %var_2_3453 = and i8 %var_2_3452, 1
; Matched:\<badref\>:  store i8 %var_2_2851, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3453, i8* %var_2_27, align 1
; Matched:%var_2_2852:  %var_2_2852 = icmp eq i32 %var_2_2839, 0
; %var_2_3454 = icmp eq i32 %var_2_3441, 0
; Matched:%var_2_2853:  %var_2_2853 = zext i1 %var_2_2852 to i8
; %var_2_3455 = zext i1 %var_2_3454 to i8
; Matched:\<badref\>:  store i8 %var_2_2853, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3455, i8* %var_2_30, align 1
; Matched:%var_2_2854:  %var_2_2854 = lshr i32 %var_2_2839, 31
; %var_2_3456 = lshr i32 %var_2_3441, 31
; Matched:%var_2_3414:  %var_2_3414 = trunc i32 %var_2_3413 to i8
; %var_2_3457 = trunc i32 %var_2_3456 to i8
; Matched:\<badref\>:  store i8 %var_2_3414, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3457, i8* %var_2_33, align 1
; Matched:%var_2_2856:  %var_2_2856 = lshr i32 %var_2_2838, 31
; %var_2_3458 = lshr i32 %var_2_3440, 31
; Matched:%var_2_2857:  %var_2_2857 = xor i32 %var_2_2854, %var_2_2856
; %var_2_3459 = xor i32 %var_2_3456, %var_2_3458
; Matched:%var_2_2858:  %var_2_2858 = add nuw nsw i32 %var_2_2857, %var_2_2854
; %var_2_3460 = add nuw nsw i32 %var_2_3459, %var_2_3456
; Matched:%var_2_2859:  %var_2_2859 = icmp eq i32 %var_2_2858, 2
; %var_2_3461 = icmp eq i32 %var_2_3460, 2
; Matched:%var_2_2860:  %var_2_2860 = zext i1 %var_2_2859 to i8
; %var_2_3462 = zext i1 %var_2_3461 to i8
; Matched:\<badref\>:  store i8 %var_2_2860, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3462, i8* %var_2_39, align 1
; Matched:%var_2_3420:  %var_2_3420 = sext i32 %var_2_3398 to i64
; %var_2_3463 = sext i32 %var_2_3441 to i64
; Matched:\<badref\>:  store i64 %var_2_3420, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_3463, i64* %RDX.i1791, align 8
; Matched:%var_2_3421:  %var_2_3421 = shl nsw i64 %var_2_3420, 3
; %var_2_3464 = shl nsw i64 %var_2_3463, 3
; Matched:%var_2_3422:  %var_2_3422 = add i64 %var_2_3393, %var_2_3421
; %var_2_3465 = add i64 %var_2_3436, %var_2_3464
; Matched:%var_2_2074:  %var_2_2074 = add i64 %var_2_2020, 42
; %var_2_3466 = add i64 %var_2_3412, 42
; Matched:\<badref\>:  store i64 %var_2_3219, i64* %PC, align 8
; store i64 %var_2_3466, i64* %var_2_3, align 8
; Matched:%var_2_3424:  %var_2_3424 = inttoptr i64 %var_2_3422 to double*
; %var_2_3467 = inttoptr i64 %var_2_3465 to double*
; Matched:\<badref\>:  store double %var_2_3389, double* %var_2_3424, align 8
; store double %var_2_3432, double* %var_2_3467, align 8
; Matched:%var_2_3425:  %var_2_3425 = load i64, i64* %RBP, align 8
; %var_2_3468 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_3426:  %var_2_3426 = add i64 %var_2_3425, -28
; %var_2_3469 = add i64 %var_2_3468, -28
%var_2_3470 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_861:  %var_2_861 = add i64 %var_2_860, 3
; %var_2_3471 = add i64 %var_2_3470, 3
; Matched:\<badref\>:  store i64 %var_2_3428, i64* %PC, align 8
; store i64 %var_2_3471, i64* %var_2_3, align 8
; Matched:%var_2_3429:  %var_2_3429 = inttoptr i64 %var_2_3426 to i32*
; %var_2_3472 = inttoptr i64 %var_2_3469 to i32*
; Matched:%var_2_3430:  %var_2_3430 = load i32, i32* %var_2_3429, align 4
; %var_2_3473 = load i32, i32* %var_2_3472, align 4
; Matched:%var_2_3431:  %var_2_3431 = add i32 %var_2_3430, 16
; %var_2_3474 = add i32 %var_2_3473, 16
; Matched:%var_2_3432:  %var_2_3432 = zext i32 %var_2_3431 to i64
; %var_2_3475 = zext i32 %var_2_3474 to i64
; Matched:\<badref\>:  store i64 %var_2_3432, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_3475, i64* %RAX.i1283, align 8
; Matched:%var_2_3433:  %var_2_3433 = icmp ugt i32 %var_2_3430, -17
; %var_2_3476 = icmp ugt i32 %var_2_3473, -17
; Matched:%var_2_3434:  %var_2_3434 = zext i1 %var_2_3433 to i8
; %var_2_3477 = zext i1 %var_2_3476 to i8
; Matched:\<badref\>:  store i8 %var_2_3434, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3477, i8* %var_2_14, align 1
; Matched:%var_2_3435:  %var_2_3435 = and i32 %var_2_3431, 255
; %var_2_3478 = and i32 %var_2_3474, 255
; Matched:%var_2_3436:  %var_2_3436 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3435) #14
; %var_2_3479 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3478)
; Matched:%var_2_3437:  %var_2_3437 = trunc i32 %var_2_3436 to i8
; %var_2_3480 = trunc i32 %var_2_3479 to i8
; Matched:%var_2_3438:  %var_2_3438 = and i8 %var_2_3437, 1
; %var_2_3481 = and i8 %var_2_3480, 1
; Matched:%var_2_3439:  %var_2_3439 = xor i8 %var_2_3438, 1
; %var_2_3482 = xor i8 %var_2_3481, 1
; Matched:\<badref\>:  store i8 %var_2_3439, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3482, i8* %var_2_21, align 1
; Matched:%var_2_3440:  %var_2_3440 = xor i32 %var_2_3430, 16
; %var_2_3483 = xor i32 %var_2_3473, 16
; Matched:%var_2_3441:  %var_2_3441 = xor i32 %var_2_3440, %var_2_3431
; %var_2_3484 = xor i32 %var_2_3483, %var_2_3474
; Matched:%var_2_3442:  %var_2_3442 = lshr i32 %var_2_3441, 4
; %var_2_3485 = lshr i32 %var_2_3484, 4
; Matched:%var_2_3443:  %var_2_3443 = trunc i32 %var_2_3442 to i8
; %var_2_3486 = trunc i32 %var_2_3485 to i8
; Matched:%var_2_3444:  %var_2_3444 = and i8 %var_2_3443, 1
; %var_2_3487 = and i8 %var_2_3486, 1
; Matched:\<badref\>:  store i8 %var_2_3444, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3487, i8* %var_2_27, align 1
; Matched:%var_2_3445:  %var_2_3445 = icmp eq i32 %var_2_3431, 0
; %var_2_3488 = icmp eq i32 %var_2_3474, 0
; Matched:%var_2_3446:  %var_2_3446 = zext i1 %var_2_3445 to i8
; %var_2_3489 = zext i1 %var_2_3488 to i8
; Matched:\<badref\>:  store i8 %var_2_3446, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3489, i8* %var_2_30, align 1
; Matched:%var_2_3447:  %var_2_3447 = lshr i32 %var_2_3431, 31
; %var_2_3490 = lshr i32 %var_2_3474, 31
; Matched:%var_2_3448:  %var_2_3448 = trunc i32 %var_2_3447 to i8
; %var_2_3491 = trunc i32 %var_2_3490 to i8
; Matched:\<badref\>:  store i8 %var_2_3448, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3491, i8* %var_2_33, align 1
; Matched:%var_2_3449:  %var_2_3449 = lshr i32 %var_2_3430, 31
; %var_2_3492 = lshr i32 %var_2_3473, 31
; Matched:%var_2_3450:  %var_2_3450 = xor i32 %var_2_3447, %var_2_3449
; %var_2_3493 = xor i32 %var_2_3490, %var_2_3492
; Matched:%var_2_3451:  %var_2_3451 = add nuw nsw i32 %var_2_3450, %var_2_3447
; %var_2_3494 = add nuw nsw i32 %var_2_3493, %var_2_3490
; Matched:%var_2_3452:  %var_2_3452 = icmp eq i32 %var_2_3451, 2
; %var_2_3495 = icmp eq i32 %var_2_3494, 2
; Matched:%var_2_3453:  %var_2_3453 = zext i1 %var_2_3452 to i8
; %var_2_3496 = zext i1 %var_2_3495 to i8
; Matched:\<badref\>:  store i8 %var_2_3453, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3496, i8* %var_2_39, align 1
%var_2_3497 = add i64 %var_2_3470, 9
store i64 %var_2_3497, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_3431, i32* %var_2_3429, align 4
; store i32 %var_2_3474, i32* %var_2_3472, align 4
%var_2_3498 = load i64, i64* %var_2_3, align 8
%var_2_3499 = add i64 %var_2_3498, -1815
; Matched:\<badref\>:  store i64 %var_2_3456, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3499, i64* %var_2_3, align 8
  br label %block_.L_402c02

block_.L_40331e:                                  ; preds = %block_.L_402c02
; Matched:%var_2_3457:  %var_2_3457 = load i64, i64* %RSP, align 8
; %var_2_3500 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_3458:  %var_2_3458 = add i64 %var_2_3457, 24
; %var_2_3501 = add i64 %var_2_3500, 24
; Matched:\<badref\>:  store i64 %var_2_3458, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3501, i64* %var_2_6, align 8
; Matched:%var_2_3459:  %var_2_3459 = icmp ugt i64 %var_2_3457, -25
; %var_2_3502 = icmp ugt i64 %var_2_3500, -25
; Matched:%var_2_3460:  %var_2_3460 = zext i1 %var_2_3459 to i8
; %var_2_3503 = zext i1 %var_2_3502 to i8
; Matched:\<badref\>:  store i8 %var_2_3460, i8* %var_2_16, align 1, !tbaa !1265
; store i8 %var_2_3503, i8* %var_2_14, align 1
; Matched:%var_2_3461:  %var_2_3461 = trunc i64 %var_2_3458 to i32
; %var_2_3504 = trunc i64 %var_2_3501 to i32
; Matched:%var_2_3462:  %var_2_3462 = and i32 %var_2_3461, 255
; %var_2_3505 = and i32 %var_2_3504, 255
; Matched:%var_2_3463:  %var_2_3463 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3462) #14
; %var_2_3506 = tail call i32 @llvm.ctpop.i32(i32 %var_2_3505)
; Matched:%var_2_3464:  %var_2_3464 = trunc i32 %var_2_3463 to i8
; %var_2_3507 = trunc i32 %var_2_3506 to i8
; Matched:%var_2_3465:  %var_2_3465 = and i8 %var_2_3464, 1
; %var_2_3508 = and i8 %var_2_3507, 1
; Matched:%var_2_3466:  %var_2_3466 = xor i8 %var_2_3465, 1
; %var_2_3509 = xor i8 %var_2_3508, 1
; Matched:\<badref\>:  store i8 %var_2_3466, i8* %var_2_23, align 1, !tbaa !1279
; store i8 %var_2_3509, i8* %var_2_21, align 1
; Matched:%var_2_3467:  %var_2_3467 = xor i64 %var_2_3457, 16
; %var_2_3510 = xor i64 %var_2_3500, 16
; Matched:%var_2_3468:  %var_2_3468 = xor i64 %var_2_3467, %var_2_3458
; %var_2_3511 = xor i64 %var_2_3510, %var_2_3501
; Matched:%var_2_3469:  %var_2_3469 = lshr i64 %var_2_3468, 4
; %var_2_3512 = lshr i64 %var_2_3511, 4
; Matched:%var_2_3470:  %var_2_3470 = trunc i64 %var_2_3469 to i8
; %var_2_3513 = trunc i64 %var_2_3512 to i8
; Matched:%var_2_3471:  %var_2_3471 = and i8 %var_2_3470, 1
; %var_2_3514 = and i8 %var_2_3513, 1
; Matched:\<badref\>:  store i8 %var_2_3471, i8* %var_2_29, align 1, !tbaa !1280
; store i8 %var_2_3514, i8* %var_2_27, align 1
; Matched:%var_2_3472:  %var_2_3472 = icmp eq i64 %var_2_3458, 0
; %var_2_3515 = icmp eq i64 %var_2_3501, 0
; Matched:%var_2_3473:  %var_2_3473 = zext i1 %var_2_3472 to i8
; %var_2_3516 = zext i1 %var_2_3515 to i8
; Matched:\<badref\>:  store i8 %var_2_3473, i8* %var_2_32, align 1, !tbaa !1281
; store i8 %var_2_3516, i8* %var_2_30, align 1
; Matched:%var_2_3474:  %var_2_3474 = lshr i64 %var_2_3458, 63
; %var_2_3517 = lshr i64 %var_2_3501, 63
; Matched:%var_2_3475:  %var_2_3475 = trunc i64 %var_2_3474 to i8
; %var_2_3518 = trunc i64 %var_2_3517 to i8
; Matched:\<badref\>:  store i8 %var_2_3475, i8* %var_2_35, align 1, !tbaa !1282
; store i8 %var_2_3518, i8* %var_2_33, align 1
; Matched:%var_2_3476:  %var_2_3476 = lshr i64 %var_2_3457, 63
; %var_2_3519 = lshr i64 %var_2_3500, 63
; Matched:%var_2_3477:  %var_2_3477 = xor i64 %var_2_3474, %var_2_3476
; %var_2_3520 = xor i64 %var_2_3517, %var_2_3519
; Matched:%var_2_3478:  %var_2_3478 = add nuw nsw i64 %var_2_3477, %var_2_3474
; %var_2_3521 = add nuw nsw i64 %var_2_3520, %var_2_3517
; Matched:%var_2_3479:  %var_2_3479 = icmp eq i64 %var_2_3478, 2
; %var_2_3522 = icmp eq i64 %var_2_3521, 2
; Matched:%var_2_3480:  %var_2_3480 = zext i1 %var_2_3479 to i8
; %var_2_3523 = zext i1 %var_2_3522 to i8
; Matched:\<badref\>:  store i8 %var_2_3480, i8* %var_2_41, align 1, !tbaa !1283
; store i8 %var_2_3523, i8* %var_2_39, align 1
; Matched:%var_2_3481:  %var_2_3481 = add i64 %var_2_3526, 5
; %var_2_3524 = add i64 %var_2_869, 5
; Matched:\<badref\>:  store i64 %var_2_3481, i64* %PC, align 8
; store i64 %var_2_3524, i64* %var_2_3, align 8
; Matched:%var_2_3482:  %var_2_3482 = add i64 %var_2_3457, 32
; %var_2_3525 = add i64 %var_2_3500, 32
; Matched:%var_2_3483:  %var_2_3483 = inttoptr i64 %var_2_3458 to i64*
; %var_2_3526 = inttoptr i64 %var_2_3501 to i64*
; Matched:%var_2_3484:  %var_2_3484 = load i64, i64* %var_2_3483, align 8
; %var_2_3527 = load i64, i64* %var_2_3526, align 8
; Matched:\<badref\>:  store i64 %var_2_3484, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_3527, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_3482, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3525, i64* %var_2_6, align 8
; Matched:%var_2_3485:  %var_2_3485 = add i64 %var_2_3526, 6
; %var_2_3528 = add i64 %var_2_869, 6
; Matched:\<badref\>:  store i64 %var_2_3485, i64* %PC, align 8
; store i64 %var_2_3528, i64* %var_2_3, align 8
; Matched:%var_2_3486:  %var_2_3486 = inttoptr i64 %var_2_3482 to i64*
; %var_2_3529 = inttoptr i64 %var_2_3525 to i64*
; Matched:%var_2_3487:  %var_2_3487 = load i64, i64* %var_2_3486, align 8
; %var_2_3530 = load i64, i64* %var_2_3529, align 8
; Matched:\<badref\>:  store i64 %var_2_3487, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_3530, i64* %var_2_3, align 8
; Matched:%var_2_3488:  %var_2_3488 = add i64 %var_2_3457, 40
; %var_2_3531 = add i64 %var_2_3500, 40
; Matched:\<badref\>:  store i64 %var_2_3488, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_3531, i64* %var_2_6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x18___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -24
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 24
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addsd_0x18__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_subsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subsd_0x18__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_addsd_0x30__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addsd_0x38__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x30__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x38__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x20__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x30__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x38__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x10__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_addsd_0x50__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_addsd_0x58__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x50__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x58__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_addsd_0x70__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_addsd_0x78__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x70__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x78__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movsd__xmm0__0x48__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x60__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movsd__xmm0__0x68__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd__xmm0__0x50__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x58__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x70__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x78__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_40331e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x14d0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x14d0__rip__type* @G_0x14d0__rip_ to i64)
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -4
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -7
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -6
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -8
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -9
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -11
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 9
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -10
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xb___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -12
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -13
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xe___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 14
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -15
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xd___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -14
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xf___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -16
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RDX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
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
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -17
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_jmpq_.L_402c02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -25
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
