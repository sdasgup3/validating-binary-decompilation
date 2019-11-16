; ModuleID = '/tmp/tmpq6jkwr_t-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x37d__rip__type = type <{ [8 x i8] }>
%G_0x3cf__rip__type = type <{ [8 x i8] }>
%G_0x43c__rip__type = type <{ [8 x i8] }>
%G_0x497__rip__type = type <{ [8 x i8] }>
%G_0x531__rip__type = type <{ [8 x i8] }>
%G_0x58a__rip__type = type <{ [8 x i8] }>
%G_0x5dc__rip__type = type <{ [8 x i8] }>
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
@G_0x37d__rip_ = global %G_0x37d__rip__type zeroinitializer
@G_0x3cf__rip_ = global %G_0x3cf__rip__type zeroinitializer
@G_0x43c__rip_ = global %G_0x43c__rip__type zeroinitializer
@G_0x497__rip_ = global %G_0x497__rip__type zeroinitializer
@G_0x531__rip_ = global %G_0x531__rip__type zeroinitializer
@G_0x58a__rip_ = global %G_0x58a__rip__type zeroinitializer
@G_0x5dc__rip_ = global %G_0x5dc__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400bb0.fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c00.grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400d50.lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @noise(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_11, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %var_2_12, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_14:  %var_2_14 = inttoptr i64 %var_2_13 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_10, i64* %var_2_14, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
%var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_13, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_12, -280
; %var_2_11 = add i64 %var_2_7, -280
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_17:  %var_2_17 = icmp ult i64 %var_2_13, 272
; %var_2_12 = icmp ult i64 %var_2_8, 272
; Matched:%var_2_18:  %var_2_18 = zext i1 %var_2_17 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_20:  %var_2_20 = trunc i64 %var_2_16 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_21:  %var_2_21 = and i32 %var_2_20, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #12
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_23:  %var_2_23 = trunc i32 %var_2_22 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_25:  %var_2_25 = xor i8 %var_2_24, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_27:  %var_2_27 = xor i64 %var_2_13, 16
; %var_2_22 = xor i64 %var_2_8, 16
; Matched:%var_2_28:  %var_2_28 = xor i64 %var_2_27, %var_2_16
; %var_2_23 = xor i64 %var_2_22, %var_2_11
; Matched:%var_2_29:  %var_2_29 = lshr i64 %var_2_28, 4
; %var_2_24 = lshr i64 %var_2_23, 4
; Matched:%var_2_30:  %var_2_30 = trunc i64 %var_2_29 to i8
; %var_2_25 = trunc i64 %var_2_24 to i8
; Matched:%var_2_31:  %var_2_31 = and i8 %var_2_30, 1
; %var_2_26 = and i8 %var_2_25, 1
%var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_26, i8* %var_2_27, align 1
; Matched:%var_2_33:  %var_2_33 = icmp eq i64 %var_2_16, 0
; %var_2_28 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_34:  %var_2_34 = zext i1 %var_2_33 to i8
; %var_2_29 = zext i1 %var_2_28 to i8
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_16, 63
; %var_2_31 = lshr i64 %var_2_11, 63
; Matched:%var_2_37:  %var_2_37 = trunc i64 %var_2_36 to i8
; %var_2_32 = trunc i64 %var_2_31 to i8
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_39:  %var_2_39 = lshr i64 %var_2_13, 63
; %var_2_34 = lshr i64 %var_2_8, 63
; Matched:%var_2_40:  %var_2_40 = xor i64 %var_2_36, %var_2_39
; %var_2_35 = xor i64 %var_2_31, %var_2_34
; Matched:%var_2_41:  %var_2_41 = add nuw nsw i64 %var_2_40, %var_2_39
; %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; Matched:%var_2_42:  %var_2_42 = icmp eq i64 %var_2_41, 2
; %var_2_37 = icmp eq i64 %var_2_36, 2
; Matched:%var_2_43:  %var_2_43 = zext i1 %var_2_42 to i8
; %var_2_38 = zext i1 %var_2_37 to i8
%var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_43, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_38, i8* %var_2_39, align 1
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_12, -16
; %var_2_41 = add i64 %var_2_7, -16
; Matched:%var_2_648:  %var_2_648 = add i64 %var_2_638, 15
; %var_2_42 = add i64 %var_2_10, 15
; Matched:\<badref\>:  store i64 %var_2_648, i64* %PC, align 8
; store i64 %var_2_42, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_3 to double*
; %var_2_43 = bitcast [32 x %union.VectorReg]* %var_2_40 to double*
; Matched:%var_2_48:  %var_2_48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %var_2_48, align 1
; %var_2_45 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_50:  %var_2_50 = inttoptr i64 %var_2_45 to i64*
; %var_2_46 = inttoptr i64 %var_2_41 to i64*
; Matched:\<badref\>:  store i64 %var_2_49, i64* %var_2_50, align 8
; store i64 %var_2_45, i64* %var_2_46, align 8
%var_2_47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_51:  %var_2_51 = load i64, i64* %RBP, align 8
; %var_2_48 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_51, -16
; %var_2_49 = add i64 %var_2_48, -16
%var_2_50 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_70:  %var_2_70 = add i64 %var_2_69, 5
; %var_2_51 = add i64 %var_2_50, 5
; Matched:\<badref\>:  store i64 %var_2_809, i64* %PC, align 8
; store i64 %var_2_51, i64* %var_2_3, align 8
; Matched:%var_2_55:  %var_2_55 = bitcast %union.VectorReg* %var_2_4 to double*
; %var_2_52 = bitcast %union.VectorReg* %var_2_47 to double*
%var_2_53 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_47, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %var_2_56, align 1
; %var_2_54 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_58:  %var_2_58 = inttoptr i64 %var_2_52 to i64*
; %var_2_55 = inttoptr i64 %var_2_49 to i64*
; Matched:\<badref\>:  store i64 %var_2_57, i64* %var_2_58, align 8
; store i64 %var_2_54, i64* %var_2_55, align 8
%var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_59:  %var_2_59 = load i64, i64* %RBP, align 8
; %var_2_57 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_59, -24
; %var_2_58 = add i64 %var_2_57, -24
%var_2_59 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_201, 5
; %var_2_60 = add i64 %var_2_59, 5
; Matched:\<badref\>:  store i64 %var_2_70, i64* %PC, align 8
; store i64 %var_2_60, i64* %var_2_3, align 8
; Matched:%var_2_63:  %var_2_63 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_61 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_56, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_64:  %var_2_64 = load i64, i64* %var_2_63, align 1
; %var_2_62 = load i64, i64* %var_2_61, align 1
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_60 to i64*
; %var_2_63 = inttoptr i64 %var_2_58 to i64*
; Matched:\<badref\>:  store i64 %var_2_64, i64* %var_2_65, align 8
; store i64 %var_2_62, i64* %var_2_63, align 8
; Matched:%var_2_66:  %var_2_66 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; %var_2_64 = bitcast [32 x %union.VectorReg]* %var_2_40 to i8*
; Matched:%var_2_67:  %var_2_67 = load i64, i64* %RBP, align 8
; %var_2_65 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, -8
; %var_2_66 = add i64 %var_2_65, -8
%var_2_67 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_639:  %var_2_639 = add i64 %var_2_638, 5
; %var_2_68 = add i64 %var_2_67, 5
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8
; store i64 %var_2_68, i64* %var_2_3, align 8
; Matched:%var_2_166:  %var_2_166 = inttoptr i64 %var_2_163 to i64*
; %var_2_69 = inttoptr i64 %var_2_66 to i64*
; Matched:%var_2_72:  %var_2_72 = load i64, i64* %var_2_71, align 8
; %var_2_70 = load i64, i64* %var_2_69, align 8
; Matched:\<badref\>:  store i64 %var_2_167, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_70, i64* %var_2_44, align 1
%var_2_71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_72 = bitcast i64* %var_2_71 to double*
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_75:  %var_2_75 = add i64 %var_2_69, -650
; %var_2_73 = add i64 %var_2_67, -650
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_233, 10
; %var_2_74 = add i64 %var_2_67, 10
%var_2_75 = load i64, i64* %var_2_6, align 8
%var_2_76 = add i64 %var_2_75, -8
; Matched:%var_2_241:  %var_2_241 = inttoptr i64 %var_2_240 to i64*
; %var_2_77 = inttoptr i64 %var_2_76 to i64*
; Matched:\<badref\>:  store i64 %var_2_238, i64* %var_2_241, align 8
; store i64 %var_2_74, i64* %var_2_77, align 8
; Matched:\<badref\>:  store i64 %var_2_258, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_76, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_75, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_73, i64* %var_2_3, align 8
%var_2_78 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2)
  %RAX.i629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
%var_2_79 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_82:  %var_2_82 = load double, double* %var_2_47, align 1
; %var_2_80 = load double, double* %var_2_43, align 1
; Matched:%var_2_83:  %var_2_83 = tail call double @llvm.trunc.f64(double %var_2_82) #12
; %var_2_81 = tail call double @llvm.trunc.f64(double %var_2_80)
; Matched:%var_2_84:  %var_2_84 = tail call double @llvm.fabs.f64(double %var_2_83) #12
; %var_2_82 = tail call double @llvm.fabs.f64(double %var_2_81)
; Matched:%var_2_147:  %var_2_147 = fcmp ogt double %var_2_146, 0x41DFFFFFFFC00000
; %var_2_83 = fcmp ogt double %var_2_82, 0x41DFFFFFFFC00000
; Matched:%var_2_117:  %var_2_117 = fptosi double %var_2_114 to i32
; %var_2_84 = fptosi double %var_2_81 to i32
; Matched:%var_2_118:  %var_2_118 = and i32 %var_2_117, 255
; %var_2_85 = and i32 %var_2_84, 255
; Matched:  %.op14 = zext i32 %var_2_149 to i64
; %.op = zext i32 %var_2_85 to i64
; Matched:%var_2_88:  %var_2_88 = select i1 %var_2_85, i64 0, i64 %.op
; %var_2_86 = select i1 %var_2_83, i64 0, i64 %.op
; Matched:%var_2_89:  %var_2_89 = trunc i64 %var_2_88 to i32
; %var_2_87 = trunc i64 %var_2_86 to i32
; Matched:\<badref\>:  store i64 %var_2_88, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_86, i64* %RAX.i629, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_152:  %var_2_152 = tail call i32 @llvm.ctpop.i32(i32 %var_2_151) #12
; %var_2_88 = tail call i32 @llvm.ctpop.i32(i32 %var_2_87)
; Matched:%var_2_122:  %var_2_122 = trunc i32 %var_2_121 to i8
; %var_2_89 = trunc i32 %var_2_88 to i8
; Matched:%var_2_123:  %var_2_123 = and i8 %var_2_122, 1
; %var_2_90 = and i8 %var_2_89, 1
; Matched:%var_2_155:  %var_2_155 = xor i8 %var_2_154, 1
; %var_2_91 = xor i8 %var_2_90, 1
; Matched:\<badref\>:  store i8 %var_2_93, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_91, i8* %var_2_21, align 1
; Matched:%var_2_94:  %var_2_94 = icmp eq i32 %var_2_89, 0
; %var_2_92 = icmp eq i32 %var_2_87, 0
; Matched:%var_2_95:  %var_2_95 = zext i1 %var_2_94 to i8
; %var_2_93 = zext i1 %var_2_92 to i8
; Matched:\<badref\>:  store i8 %var_2_95, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_93, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_96:  %var_2_96 = load i64, i64* %RBP, align 8
; %var_2_94 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_97:  %var_2_97 = add i64 %var_2_96, -28
; %var_2_95 = add i64 %var_2_94, -28
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_753, 12
; %var_2_96 = add i64 %var_2_79, 12
; Matched:\<badref\>:  store i64 %var_2_757, i64* %PC, align 8
; store i64 %var_2_96, i64* %var_2_3, align 8
; Matched:%var_2_99:  %var_2_99 = inttoptr i64 %var_2_97 to i32*
; %var_2_97 = inttoptr i64 %var_2_95 to i32*
; Matched:\<badref\>:  store i32 %var_2_89, i32* %var_2_99, align 4
; store i32 %var_2_87, i32* %var_2_97, align 4
; Matched:%var_2_187:  %var_2_187 = load i64, i64* %RBP, align 8
; %var_2_98 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_187, -16
; %var_2_99 = add i64 %var_2_98, -16
%var_2_100 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_269, 5
; %var_2_101 = add i64 %var_2_100, 5
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_101, i64* %var_2_3, align 8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_188 to i64*
; %var_2_102 = inttoptr i64 %var_2_99 to i64*
; Matched:%var_2_192:  %var_2_192 = load i64, i64* %var_2_191, align 8
; %var_2_103 = load i64, i64* %var_2_102, align 8
; Matched:\<badref\>:  store i64 %var_2_192, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_103, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_102, -672
; %var_2_104 = add i64 %var_2_100, -672
; Matched:%var_2_256:  %var_2_256 = add i64 %var_2_251, 10
; %var_2_105 = add i64 %var_2_100, 10
%var_2_106 = load i64, i64* %var_2_6, align 8
%var_2_107 = add i64 %var_2_106, -8
; Matched:%var_2_172:  %var_2_172 = inttoptr i64 %var_2_171 to i64*
; %var_2_108 = inttoptr i64 %var_2_107 to i64*
; Matched:\<badref\>:  store i64 %var_2_256, i64* %var_2_259, align 8
; store i64 %var_2_105, i64* %var_2_108, align 8
; Matched:\<badref\>:  store i64 %var_2_1009, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_107, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_106, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_104, i64* %var_2_3, align 8
%var_2_109 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %var_2_78)
%var_2_110 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_113:  %var_2_113 = load double, double* %var_2_47, align 1
; %var_2_111 = load double, double* %var_2_43, align 1
; Matched:%var_2_114:  %var_2_114 = tail call double @llvm.trunc.f64(double %var_2_113) #12
; %var_2_112 = tail call double @llvm.trunc.f64(double %var_2_111)
; Matched:%var_2_115:  %var_2_115 = tail call double @llvm.fabs.f64(double %var_2_114) #12
; %var_2_113 = tail call double @llvm.fabs.f64(double %var_2_112)
; Matched:%var_2_85:  %var_2_85 = fcmp ogt double %var_2_84, 0x41DFFFFFFFC00000
; %var_2_114 = fcmp ogt double %var_2_113, 0x41DFFFFFFFC00000
; Matched:%var_2_148:  %var_2_148 = fptosi double %var_2_145 to i32
; %var_2_115 = fptosi double %var_2_112 to i32
; Matched:%var_2_149:  %var_2_149 = and i32 %var_2_148, 255
; %var_2_116 = and i32 %var_2_115, 255
; Matched:  %.op = zext i32 %var_2_87 to i64
; %.op13 = zext i32 %var_2_116 to i64
; Matched:%var_2_119:  %var_2_119 = select i1 %var_2_116, i64 0, i64 %.op13
; %var_2_117 = select i1 %var_2_114, i64 0, i64 %.op13
; Matched:%var_2_120:  %var_2_120 = trunc i64 %var_2_119 to i32
; %var_2_118 = trunc i64 %var_2_117 to i32
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_117, i64* %RAX.i629, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_90:  %var_2_90 = tail call i32 @llvm.ctpop.i32(i32 %var_2_89) #12
; %var_2_119 = tail call i32 @llvm.ctpop.i32(i32 %var_2_118)
; Matched:%var_2_153:  %var_2_153 = trunc i32 %var_2_152 to i8
; %var_2_120 = trunc i32 %var_2_119 to i8
; Matched:%var_2_154:  %var_2_154 = and i8 %var_2_153, 1
; %var_2_121 = and i8 %var_2_120, 1
; Matched:%var_2_93:  %var_2_93 = xor i8 %var_2_92, 1
; %var_2_122 = xor i8 %var_2_121, 1
; Matched:\<badref\>:  store i8 %var_2_124, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_122, i8* %var_2_21, align 1
; Matched:%var_2_125:  %var_2_125 = icmp eq i32 %var_2_120, 0
; %var_2_123 = icmp eq i32 %var_2_118, 0
; Matched:%var_2_126:  %var_2_126 = zext i1 %var_2_125 to i8
; %var_2_124 = zext i1 %var_2_123 to i8
; Matched:\<badref\>:  store i8 %var_2_126, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_124, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_127:  %var_2_127 = load i64, i64* %RBP, align 8
; %var_2_125 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_128:  %var_2_128 = add i64 %var_2_127, -32
; %var_2_126 = add i64 %var_2_125, -32
; Matched:%var_2_921:  %var_2_921 = add i64 %var_2_917, 12
; %var_2_127 = add i64 %var_2_110, 12
; Matched:\<badref\>:  store i64 %var_2_921, i64* %PC, align 8
; store i64 %var_2_127, i64* %var_2_3, align 8
; Matched:%var_2_130:  %var_2_130 = inttoptr i64 %var_2_128 to i32*
; %var_2_128 = inttoptr i64 %var_2_126 to i32*
; Matched:\<badref\>:  store i32 %var_2_120, i32* %var_2_130, align 4
; store i32 %var_2_118, i32* %var_2_128, align 4
; Matched:%var_2_209:  %var_2_209 = load i64, i64* %RBP, align 8
; %var_2_129 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, -24
; %var_2_130 = add i64 %var_2_129, -24
%var_2_131 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_281, 5
; %var_2_132 = add i64 %var_2_131, 5
; Matched:\<badref\>:  store i64 %var_2_1015, i64* %PC, align 8
; store i64 %var_2_132, i64* %var_2_3, align 8
; Matched:%var_2_271:  %var_2_271 = inttoptr i64 %var_2_268 to i64*
; %var_2_133 = inttoptr i64 %var_2_130 to i64*
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %var_2_135, align 8
; %var_2_134 = load i64, i64* %var_2_133, align 8
; Matched:\<badref\>:  store i64 %var_2_272, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_134, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_133, -694
; %var_2_135 = add i64 %var_2_131, -694
; Matched:%var_2_216:  %var_2_216 = add i64 %var_2_211, 10
; %var_2_136 = add i64 %var_2_131, 10
%var_2_137 = load i64, i64* %var_2_6, align 8
%var_2_138 = add i64 %var_2_137, -8
; Matched:%var_2_219:  %var_2_219 = inttoptr i64 %var_2_218 to i64*
; %var_2_139 = inttoptr i64 %var_2_138 to i64*
; Matched:\<badref\>:  store i64 %var_2_216, i64* %var_2_219, align 8
; store i64 %var_2_136, i64* %var_2_139, align 8
; Matched:\<badref\>:  store i64 %var_2_977, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_138, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_137, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_135, i64* %var_2_3, align 8
%var_2_140 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %var_2_109)
%var_2_141 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_144:  %var_2_144 = load double, double* %var_2_47, align 1
; %var_2_142 = load double, double* %var_2_43, align 1
; Matched:%var_2_145:  %var_2_145 = tail call double @llvm.trunc.f64(double %var_2_144) #12
; %var_2_143 = tail call double @llvm.trunc.f64(double %var_2_142)
; Matched:%var_2_146:  %var_2_146 = tail call double @llvm.fabs.f64(double %var_2_145) #12
; %var_2_144 = tail call double @llvm.fabs.f64(double %var_2_143)
; Matched:%var_2_116:  %var_2_116 = fcmp ogt double %var_2_115, 0x41DFFFFFFFC00000
; %var_2_145 = fcmp ogt double %var_2_144, 0x41DFFFFFFFC00000
; Matched:%var_2_86:  %var_2_86 = fptosi double %var_2_83 to i32
; %var_2_146 = fptosi double %var_2_143 to i32
; Matched:%var_2_87:  %var_2_87 = and i32 %var_2_86, 255
; %var_2_147 = and i32 %var_2_146, 255
; Matched:  %.op13 = zext i32 %var_2_118 to i64
; %.op14 = zext i32 %var_2_147 to i64
; Matched:%var_2_150:  %var_2_150 = select i1 %var_2_147, i64 0, i64 %.op14
; %var_2_148 = select i1 %var_2_145, i64 0, i64 %.op14
; Matched:%var_2_151:  %var_2_151 = trunc i64 %var_2_150 to i32
; %var_2_149 = trunc i64 %var_2_148 to i32
; Matched:\<badref\>:  store i64 %var_2_150, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_148, i64* %RAX.i629, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_121:  %var_2_121 = tail call i32 @llvm.ctpop.i32(i32 %var_2_120) #12
; %var_2_150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_149)
; Matched:%var_2_91:  %var_2_91 = trunc i32 %var_2_90 to i8
; %var_2_151 = trunc i32 %var_2_150 to i8
; Matched:%var_2_92:  %var_2_92 = and i8 %var_2_91, 1
; %var_2_152 = and i8 %var_2_151, 1
; Matched:%var_2_124:  %var_2_124 = xor i8 %var_2_123, 1
; %var_2_153 = xor i8 %var_2_152, 1
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_153, i8* %var_2_21, align 1
; Matched:%var_2_156:  %var_2_156 = icmp eq i32 %var_2_151, 0
; %var_2_154 = icmp eq i32 %var_2_149, 0
; Matched:%var_2_157:  %var_2_157 = zext i1 %var_2_156 to i8
; %var_2_155 = zext i1 %var_2_154 to i8
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_155, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
store i8 0, i8* %var_2_39, align 1
store i8 0, i8* %var_2_27, align 1
; Matched:%var_2_158:  %var_2_158 = load i64, i64* %RBP, align 8
; %var_2_156 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_159:  %var_2_159 = add i64 %var_2_158, -36
; %var_2_157 = add i64 %var_2_156, -36
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_112, 12
; %var_2_158 = add i64 %var_2_141, 12
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8
; store i64 %var_2_158, i64* %var_2_3, align 8
; Matched:%var_2_161:  %var_2_161 = inttoptr i64 %var_2_159 to i32*
; %var_2_159 = inttoptr i64 %var_2_157 to i32*
; Matched:\<badref\>:  store i32 %var_2_151, i32* %var_2_161, align 4
; store i32 %var_2_149, i32* %var_2_159, align 4
; Matched:%var_2_231:  %var_2_231 = load i64, i64* %RBP, align 8
; %var_2_160 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_162, -8
; %var_2_161 = add i64 %var_2_160, -8
%var_2_162 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, 5
; %var_2_163 = add i64 %var_2_162, 5
; Matched:\<badref\>:  store i64 %var_2_165, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_71:  %var_2_71 = inttoptr i64 %var_2_68 to i64*
; %var_2_164 = inttoptr i64 %var_2_161 to i64*
; Matched:%var_2_236:  %var_2_236 = load i64, i64* %var_2_235, align 8
; %var_2_165 = load i64, i64* %var_2_164, align 8
; Matched:\<badref\>:  store i64 %var_2_72, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_165, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_168:  %var_2_168 = add i64 %var_2_164, -716
; %var_2_166 = add i64 %var_2_162, -716
; Matched:%var_2_76:  %var_2_76 = add i64 %var_2_69, 10
; %var_2_167 = add i64 %var_2_162, 10
%var_2_168 = load i64, i64* %var_2_6, align 8
%var_2_169 = add i64 %var_2_168, -8
; Matched:%var_2_79:  %var_2_79 = inttoptr i64 %var_2_78 to i64*
; %var_2_170 = inttoptr i64 %var_2_169 to i64*
; Matched:\<badref\>:  store i64 %var_2_76, i64* %var_2_79, align 8
; store i64 %var_2_167, i64* %var_2_170, align 8
; Matched:\<badref\>:  store i64 %var_2_1041, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_169, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_168, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_166, i64* %var_2_3, align 8
%var_2_171 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %var_2_140)
; Matched:%var_2_174:  %var_2_174 = bitcast %union.VectorReg* %var_2_4 to i8*
; %var_2_172 = bitcast %union.VectorReg* %var_2_47 to i8*
; Matched:%var_2_175:  %var_2_175 = load i64, i64* %RBP, align 8
; %var_2_173 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_175, -8
; %var_2_174 = add i64 %var_2_173, -8
%var_2_175 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_177, 5
; %var_2_176 = add i64 %var_2_175, 5
; Matched:\<badref\>:  store i64 %var_2_264, i64* %PC, align 8
; store i64 %var_2_176, i64* %var_2_3, align 8
; Matched:%var_2_179:  %var_2_179 = inttoptr i64 %var_2_176 to double*
; %var_2_177 = inttoptr i64 %var_2_174 to double*
; Matched:%var_2_180:  %var_2_180 = load double, double* %var_2_179, align 8
; %var_2_178 = load double, double* %var_2_177, align 8
%var_2_179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_180 = bitcast i64* %var_2_179 to double*
; Matched:%var_2_183:  %var_2_183 = load double, double* %var_2_47, align 1
; %var_2_181 = load double, double* %var_2_43, align 1
; Matched:%var_2_184:  %var_2_184 = fsub double %var_2_180, %var_2_183
; %var_2_182 = fsub double %var_2_178, %var_2_181
; Matched:\<badref\>:  store double %var_2_184, double* %var_2_55, align 1, !tbaa !1284
; store double %var_2_182, double* %var_2_52, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_181, align 1, !tbaa !1284
; store i64 0, i64* %var_2_179, align 1
; Matched:%var_2_533:  %var_2_533 = add i64 %var_2_521, 14
; %var_2_183 = add i64 %var_2_175, 14
; Matched:\<badref\>:  store i64 %var_2_185, i64* %PC, align 8
; store i64 %var_2_183, i64* %var_2_3, align 8
; Matched:%var_2_186:  %var_2_186 = inttoptr i64 %var_2_176 to double*
; %var_2_184 = inttoptr i64 %var_2_174 to double*
; Matched:\<badref\>:  store double %var_2_184, double* %var_2_186, align 8
; store double %var_2_182, double* %var_2_184, align 8
; Matched:%var_2_249:  %var_2_249 = load i64, i64* %RBP, align 8
; %var_2_185 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_249, -16
; %var_2_186 = add i64 %var_2_185, -16
%var_2_187 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, 5
; %var_2_188 = add i64 %var_2_187, 5
; Matched:\<badref\>:  store i64 %var_2_270, i64* %PC, align 8
; store i64 %var_2_188, i64* %var_2_3, align 8
; Matched:%var_2_253:  %var_2_253 = inttoptr i64 %var_2_250 to i64*
; %var_2_189 = inttoptr i64 %var_2_186 to i64*
; Matched:%var_2_254:  %var_2_254 = load i64, i64* %var_2_253, align 8
; %var_2_190 = load i64, i64* %var_2_189, align 8
; Matched:\<badref\>:  store i64 %var_2_254, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_190, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_189, -740
; %var_2_191 = add i64 %var_2_187, -740
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_164, 10
; %var_2_192 = add i64 %var_2_187, 10
%var_2_193 = load i64, i64* %var_2_6, align 8
%var_2_194 = add i64 %var_2_193, -8
; Matched:%var_2_259:  %var_2_259 = inttoptr i64 %var_2_258 to i64*
; %var_2_195 = inttoptr i64 %var_2_194 to i64*
; Matched:\<badref\>:  store i64 %var_2_169, i64* %var_2_172, align 8
; store i64 %var_2_192, i64* %var_2_195, align 8
; Matched:\<badref\>:  store i64 %var_2_1226, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_194, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_193, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_191, i64* %var_2_3, align 8
%var_2_196 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %var_2_171)
; Matched:%var_2_199:  %var_2_199 = load i64, i64* %RBP, align 8
; %var_2_197 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_199, -16
; %var_2_198 = add i64 %var_2_197, -16
%var_2_199 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_233, 5
; %var_2_200 = add i64 %var_2_199, 5
; Matched:\<badref\>:  store i64 %var_2_190, i64* %PC, align 8
; store i64 %var_2_200, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = inttoptr i64 %var_2_200 to double*
; %var_2_201 = inttoptr i64 %var_2_198 to double*
; Matched:%var_2_204:  %var_2_204 = load double, double* %var_2_203, align 8
; %var_2_202 = load double, double* %var_2_201, align 8
; Matched:%var_2_205:  %var_2_205 = load double, double* %var_2_47, align 1
; %var_2_203 = load double, double* %var_2_43, align 1
; Matched:%var_2_206:  %var_2_206 = fsub double %var_2_204, %var_2_205
; %var_2_204 = fsub double %var_2_202, %var_2_203
; Matched:\<badref\>:  store double %var_2_206, double* %var_2_55, align 1, !tbaa !1284
; store double %var_2_204, double* %var_2_52, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_181, align 1, !tbaa !1284
; store i64 0, i64* %var_2_179, align 1
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_177, 14
; %var_2_205 = add i64 %var_2_199, 14
; Matched:\<badref\>:  store i64 %var_2_207, i64* %PC, align 8
; store i64 %var_2_205, i64* %var_2_3, align 8
; Matched:%var_2_208:  %var_2_208 = inttoptr i64 %var_2_200 to double*
; %var_2_206 = inttoptr i64 %var_2_198 to double*
; Matched:\<badref\>:  store double %var_2_206, double* %var_2_208, align 8
; store double %var_2_204, double* %var_2_206, align 8
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %RBP, align 8
; %var_2_207 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, -24
; %var_2_208 = add i64 %var_2_207, -24
%var_2_209 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1015:  %var_2_1015 = add i64 %var_2_1014, 5
; %var_2_210 = add i64 %var_2_209, 5
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8
; store i64 %var_2_210, i64* %var_2_3, align 8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_132 to i64*
; %var_2_211 = inttoptr i64 %var_2_208 to i64*
; Matched:%var_2_214:  %var_2_214 = load i64, i64* %var_2_213, align 8
; %var_2_212 = load i64, i64* %var_2_211, align 8
; Matched:\<badref\>:  store i64 %var_2_136, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_212, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_215:  %var_2_215 = add i64 %var_2_211, -764
; %var_2_213 = add i64 %var_2_209, -764
; Matched:%var_2_107:  %var_2_107 = add i64 %var_2_102, 10
; %var_2_214 = add i64 %var_2_209, 10
%var_2_215 = load i64, i64* %var_2_6, align 8
%var_2_216 = add i64 %var_2_215, -8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_109 to i64*
; %var_2_217 = inttoptr i64 %var_2_216 to i64*
; Matched:\<badref\>:  store i64 %var_2_107, i64* %var_2_110, align 8
; store i64 %var_2_214, i64* %var_2_217, align 8
; Matched:\<badref\>:  store i64 %var_2_196, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_216, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_215, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_213, i64* %var_2_3, align 8
%var_2_218 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %var_2_196)
; Matched:%var_2_221:  %var_2_221 = load i64, i64* %RBP, align 8
; %var_2_219 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_221, -24
; %var_2_220 = add i64 %var_2_219, -24
%var_2_221 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_809:  %var_2_809 = add i64 %var_2_808, 5
; %var_2_222 = add i64 %var_2_221, 5
; Matched:\<badref\>:  store i64 %var_2_282, i64* %PC, align 8
; store i64 %var_2_222, i64* %var_2_3, align 8
; Matched:%var_2_225:  %var_2_225 = inttoptr i64 %var_2_222 to double*
; %var_2_223 = inttoptr i64 %var_2_220 to double*
; Matched:%var_2_226:  %var_2_226 = load double, double* %var_2_225, align 8
; %var_2_224 = load double, double* %var_2_223, align 8
; Matched:%var_2_227:  %var_2_227 = load double, double* %var_2_47, align 1
; %var_2_225 = load double, double* %var_2_43, align 1
; Matched:%var_2_228:  %var_2_228 = fsub double %var_2_226, %var_2_227
; %var_2_226 = fsub double %var_2_224, %var_2_225
; Matched:\<badref\>:  store double %var_2_228, double* %var_2_55, align 1, !tbaa !1284
; store double %var_2_226, double* %var_2_52, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_181, align 1, !tbaa !1284
; store i64 0, i64* %var_2_179, align 1
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_201, 14
; %var_2_227 = add i64 %var_2_221, 14
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8
; store i64 %var_2_227, i64* %var_2_3, align 8
; Matched:%var_2_230:  %var_2_230 = inttoptr i64 %var_2_222 to double*
; %var_2_228 = inttoptr i64 %var_2_220 to double*
; Matched:\<badref\>:  store double %var_2_228, double* %var_2_230, align 8
; store double %var_2_226, double* %var_2_228, align 8
; Matched:%var_2_162:  %var_2_162 = load i64, i64* %RBP, align 8
; %var_2_229 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, -8
; %var_2_230 = add i64 %var_2_229, -8
%var_2_231 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_245, 5
; %var_2_232 = add i64 %var_2_231, 5
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_232, i64* %var_2_3, align 8
; Matched:%var_2_235:  %var_2_235 = inttoptr i64 %var_2_232 to i64*
; %var_2_233 = inttoptr i64 %var_2_230 to i64*
; Matched:%var_2_167:  %var_2_167 = load i64, i64* %var_2_166, align 8
; %var_2_234 = load i64, i64* %var_2_233, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_234, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
%var_2_235 = add i64 %var_2_231, 1052
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_189, 10
; %var_2_236 = add i64 %var_2_231, 10
%var_2_237 = load i64, i64* %var_2_6, align 8
%var_2_238 = add i64 %var_2_237, -8
; Matched:%var_2_197:  %var_2_197 = inttoptr i64 %var_2_196 to i64*
; %var_2_239 = inttoptr i64 %var_2_238 to i64*
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_197, align 8
; store i64 %var_2_236, i64* %var_2_239, align 8
; Matched:\<badref\>:  store i64 %var_2_1463, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_238, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_237, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_235, i64* %var_2_3, align 8
%call2_400799 = tail call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %var_2_235, %struct.Memory* %var_2_218)
; Matched:%var_2_243:  %var_2_243 = load i64, i64* %RBP, align 8
; %var_2_240 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_243, -48
; %var_2_241 = add i64 %var_2_240, -48
%var_2_242 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1501:  %var_2_1501 = add i64 %var_2_1500, 5
; %var_2_243 = add i64 %var_2_242, 5
; Matched:\<badref\>:  store i64 %var_2_252, i64* %PC, align 8
; store i64 %var_2_243, i64* %var_2_3, align 8
; Matched:%var_2_247:  %var_2_247 = load i64, i64* %var_2_48, align 1
; %var_2_244 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_248:  %var_2_248 = inttoptr i64 %var_2_244 to i64*
; %var_2_245 = inttoptr i64 %var_2_241 to i64*
; Matched:\<badref\>:  store i64 %var_2_247, i64* %var_2_248, align 8
; store i64 %var_2_244, i64* %var_2_245, align 8
; Matched:%var_2_100:  %var_2_100 = load i64, i64* %RBP, align 8
; %var_2_246 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_100, -16
; %var_2_247 = add i64 %var_2_246, -16
%var_2_248 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, 5
; %var_2_249 = add i64 %var_2_248, 5
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_249, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = inttoptr i64 %var_2_101 to i64*
; %var_2_250 = inttoptr i64 %var_2_247 to i64*
; Matched:%var_2_105:  %var_2_105 = load i64, i64* %var_2_104, align 8
; %var_2_251 = load i64, i64* %var_2_250, align 8
; Matched:\<badref\>:  store i64 %var_2_105, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_251, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
%var_2_252 = add i64 %var_2_248, 1037
; Matched:%var_2_274:  %var_2_274 = add i64 %var_2_269, 10
; %var_2_253 = add i64 %var_2_248, 10
%var_2_254 = load i64, i64* %var_2_6, align 8
%var_2_255 = add i64 %var_2_254, -8
; Matched:%var_2_277:  %var_2_277 = inttoptr i64 %var_2_276 to i64*
; %var_2_256 = inttoptr i64 %var_2_255 to i64*
; Matched:\<badref\>:  store i64 %var_2_274, i64* %var_2_277, align 8
; store i64 %var_2_253, i64* %var_2_256, align 8
; Matched:\<badref\>:  store i64 %var_2_750, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_255, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_252, i64* %var_2_3, align 8
%call2_4007a8 = tail call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %var_2_252, %struct.Memory* %call2_400799)
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %RBP, align 8
; %var_2_257 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_261, -56
; %var_2_258 = add i64 %var_2_257, -56
%var_2_259 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_263, 5
; %var_2_260 = add i64 %var_2_259, 5
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_260, i64* %var_2_3, align 8
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %var_2_48, align 1
; %var_2_261 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_266:  %var_2_266 = inttoptr i64 %var_2_262 to i64*
; %var_2_262 = inttoptr i64 %var_2_258 to i64*
; Matched:\<badref\>:  store i64 %var_2_265, i64* %var_2_266, align 8
; store i64 %var_2_261, i64* %var_2_262, align 8
; Matched:%var_2_131:  %var_2_131 = load i64, i64* %RBP, align 8
; %var_2_263 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, -24
; %var_2_264 = add i64 %var_2_263, -24
%var_2_265 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_223, 5
; %var_2_266 = add i64 %var_2_265, 5
; Matched:\<badref\>:  store i64 %var_2_178, i64* %PC, align 8
; store i64 %var_2_266, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = inttoptr i64 %var_2_210 to i64*
; %var_2_267 = inttoptr i64 %var_2_264 to i64*
; Matched:%var_2_272:  %var_2_272 = load i64, i64* %var_2_271, align 8
; %var_2_268 = load i64, i64* %var_2_267, align 8
; Matched:\<badref\>:  store i64 %var_2_214, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_268, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
%var_2_269 = add i64 %var_2_265, 1022
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_133, 10
; %var_2_270 = add i64 %var_2_265, 10
%var_2_271 = load i64, i64* %var_2_6, align 8
%var_2_272 = add i64 %var_2_271, -8
; Matched:%var_2_141:  %var_2_141 = inttoptr i64 %var_2_140 to i64*
; %var_2_273 = inttoptr i64 %var_2_272 to i64*
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_141, align 8
; store i64 %var_2_270, i64* %var_2_273, align 8
; Matched:\<badref\>:  store i64 %var_2_914, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_272, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_273, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_269, i64* %var_2_3, align 8
%call2_4007b7 = tail call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %var_2_269, %struct.Memory* %call2_4007a8)
; Matched:%var_2_279:  %var_2_279 = load i64, i64* %RBP, align 8
; %var_2_274 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_280:  %var_2_280 = add i64 %var_2_279, -64
; %var_2_275 = add i64 %var_2_274, -64
%var_2_276 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, 5
; %var_2_277 = add i64 %var_2_276, 5
; Matched:\<badref\>:  store i64 %var_2_103, i64* %PC, align 8
; store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_283:  %var_2_283 = load i64, i64* %var_2_48, align 1
; %var_2_278 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_284:  %var_2_284 = inttoptr i64 %var_2_280 to i64*
; %var_2_279 = inttoptr i64 %var_2_275 to i64*
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_284, align 8
; store i64 %var_2_278, i64* %var_2_279, align 8
; Matched:  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%var_2_280 = load i64, i64* %RBP.i, align 8
%var_2_281 = add i64 %var_2_280, -28
%var_2_282 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_287, 4
; %var_2_283 = add i64 %var_2_282, 4
; Matched:\<badref\>:  store i64 %var_2_335, i64* %PC, align 8
; store i64 %var_2_283, i64* %var_2_3, align 8
%var_2_284 = inttoptr i64 %var_2_281 to i32*
%var_2_285 = load i32, i32* %var_2_284, align 4
%var_2_286 = sext i32 %var_2_285 to i64
; Matched:\<badref\>:  store i64 %var_2_291, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_286, i64* %RCX.i523, align 8
%var_2_287 = shl nsw i64 %var_2_286, 2
%var_2_288 = add nsw i64 %var_2_287, 6300752
; Matched:%var_2_959:  %var_2_959 = add i64 %var_2_950, 11
; %var_2_289 = add i64 %var_2_282, 11
; Matched:\<badref\>:  store i64 %var_2_1517, i64* %PC, align 8
; store i64 %var_2_289, i64* %var_2_3, align 8
%var_2_290 = inttoptr i64 %var_2_288 to i32*
%var_2_291 = load i32, i32* %var_2_290, align 4
%var_2_292 = zext i32 %var_2_291 to i64
store i64 %var_2_292, i64* %RAX.i629, align 8
%var_2_293 = add i64 %var_2_280, -32
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_334, 14
; %var_2_294 = add i64 %var_2_282, 14
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8
; store i64 %var_2_294, i64* %var_2_3, align 8
%var_2_295 = inttoptr i64 %var_2_293 to i32*
%var_2_296 = load i32, i32* %var_2_295, align 4
%var_2_297 = add i32 %var_2_296, %var_2_291
%var_2_298 = zext i32 %var_2_297 to i64
store i64 %var_2_298, i64* %RAX.i629, align 8
%var_2_299 = icmp ult i32 %var_2_297, %var_2_291
%var_2_300 = icmp ult i32 %var_2_297, %var_2_296
%var_2_301 = or i1 %var_2_299, %var_2_300
%var_2_302 = zext i1 %var_2_301 to i8
store i8 %var_2_302, i8* %var_2_14, align 1
%var_2_303 = and i32 %var_2_297, 255
%var_2_304 = tail call i32 @llvm.ctpop.i32(i32 %var_2_303)
%var_2_305 = trunc i32 %var_2_304 to i8
%var_2_306 = and i8 %var_2_305, 1
%var_2_307 = xor i8 %var_2_306, 1
store i8 %var_2_307, i8* %var_2_21, align 1
%var_2_308 = xor i32 %var_2_296, %var_2_291
%var_2_309 = xor i32 %var_2_308, %var_2_297
%var_2_310 = lshr i32 %var_2_309, 4
%var_2_311 = trunc i32 %var_2_310 to i8
%var_2_312 = and i8 %var_2_311, 1
store i8 %var_2_312, i8* %var_2_27, align 1
%var_2_313 = icmp eq i32 %var_2_297, 0
%var_2_314 = zext i1 %var_2_313 to i8
store i8 %var_2_314, i8* %var_2_30, align 1
%var_2_315 = lshr i32 %var_2_297, 31
%var_2_316 = trunc i32 %var_2_315 to i8
store i8 %var_2_316, i8* %var_2_33, align 1
%var_2_317 = lshr i32 %var_2_291, 31
%var_2_318 = lshr i32 %var_2_296, 31
%var_2_319 = xor i32 %var_2_315, %var_2_317
%var_2_320 = xor i32 %var_2_315, %var_2_318
%var_2_321 = add nuw nsw i32 %var_2_319, %var_2_320
%var_2_322 = icmp eq i32 %var_2_321, 2
%var_2_323 = zext i1 %var_2_322 to i8
store i8 %var_2_323, i8* %var_2_39, align 1
%var_2_324 = add i64 %var_2_280, -68
; Matched:%var_2_848:  %var_2_848 = add i64 %var_2_840, 17
; %var_2_325 = add i64 %var_2_282, 17
; Matched:\<badref\>:  store i64 %var_2_848, i64* %PC, align 8
; store i64 %var_2_325, i64* %var_2_3, align 8
%var_2_326 = inttoptr i64 %var_2_324 to i32*
store i32 %var_2_297, i32* %var_2_326, align 4
%var_2_327 = load i64, i64* %RBP.i, align 8
%var_2_328 = add i64 %var_2_327, -68
%var_2_329 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_522:  %var_2_522 = add i64 %var_2_521, 4
; %var_2_330 = add i64 %var_2_329, 4
; Matched:\<badref\>:  store i64 %var_2_522, i64* %PC, align 8
; store i64 %var_2_330, i64* %var_2_3, align 8
%var_2_331 = inttoptr i64 %var_2_328 to i32*
%var_2_332 = load i32, i32* %var_2_331, align 4
%var_2_333 = sext i32 %var_2_332 to i64
; Matched:\<badref\>:  store i64 %var_2_338, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_333, i64* %RCX.i523, align 8
%var_2_334 = shl nsw i64 %var_2_333, 2
%var_2_335 = add nsw i64 %var_2_334, 6300752
; Matched:%var_2_999:  %var_2_999 = add i64 %var_2_990, 11
; %var_2_336 = add i64 %var_2_329, 11
; Matched:\<badref\>:  store i64 %var_2_959, i64* %PC, align 8
; store i64 %var_2_336, i64* %var_2_3, align 8
%var_2_337 = inttoptr i64 %var_2_335 to i32*
%var_2_338 = load i32, i32* %var_2_337, align 4
%var_2_339 = zext i32 %var_2_338 to i64
store i64 %var_2_339, i64* %RAX.i629, align 8
%var_2_340 = add i64 %var_2_327, -36
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_223, 14
; %var_2_341 = add i64 %var_2_329, 14
; Matched:\<badref\>:  store i64 %var_2_346, i64* %PC, align 8
; store i64 %var_2_341, i64* %var_2_3, align 8
%var_2_342 = inttoptr i64 %var_2_340 to i32*
%var_2_343 = load i32, i32* %var_2_342, align 4
%var_2_344 = add i32 %var_2_343, %var_2_338
%var_2_345 = zext i32 %var_2_344 to i64
store i64 %var_2_345, i64* %RAX.i629, align 8
%var_2_346 = icmp ult i32 %var_2_344, %var_2_338
%var_2_347 = icmp ult i32 %var_2_344, %var_2_343
%var_2_348 = or i1 %var_2_346, %var_2_347
%var_2_349 = zext i1 %var_2_348 to i8
store i8 %var_2_349, i8* %var_2_14, align 1
%var_2_350 = and i32 %var_2_344, 255
%var_2_351 = tail call i32 @llvm.ctpop.i32(i32 %var_2_350)
%var_2_352 = trunc i32 %var_2_351 to i8
%var_2_353 = and i8 %var_2_352, 1
%var_2_354 = xor i8 %var_2_353, 1
store i8 %var_2_354, i8* %var_2_21, align 1
%var_2_355 = xor i32 %var_2_343, %var_2_338
%var_2_356 = xor i32 %var_2_355, %var_2_344
%var_2_357 = lshr i32 %var_2_356, 4
%var_2_358 = trunc i32 %var_2_357 to i8
%var_2_359 = and i8 %var_2_358, 1
store i8 %var_2_359, i8* %var_2_27, align 1
%var_2_360 = icmp eq i32 %var_2_344, 0
%var_2_361 = zext i1 %var_2_360 to i8
store i8 %var_2_361, i8* %var_2_30, align 1
%var_2_362 = lshr i32 %var_2_344, 31
%var_2_363 = trunc i32 %var_2_362 to i8
store i8 %var_2_363, i8* %var_2_33, align 1
%var_2_364 = lshr i32 %var_2_338, 31
%var_2_365 = lshr i32 %var_2_343, 31
%var_2_366 = xor i32 %var_2_362, %var_2_364
%var_2_367 = xor i32 %var_2_362, %var_2_365
%var_2_368 = add nuw nsw i32 %var_2_366, %var_2_367
%var_2_369 = icmp eq i32 %var_2_368, 2
%var_2_370 = zext i1 %var_2_369 to i8
store i8 %var_2_370, i8* %var_2_39, align 1
%var_2_371 = add i64 %var_2_327, -72
; Matched:%var_2_564:  %var_2_564 = add i64 %var_2_521, 17
; %var_2_372 = add i64 %var_2_329, 17
; Matched:\<badref\>:  store i64 %var_2_377, i64* %PC, align 8
; store i64 %var_2_372, i64* %var_2_3, align 8
%var_2_373 = inttoptr i64 %var_2_371 to i32*
store i32 %var_2_344, i32* %var_2_373, align 4
%var_2_374 = load i64, i64* %RBP.i, align 8
%var_2_375 = add i64 %var_2_374, -68
%var_2_376 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_569:  %var_2_569 = add i64 %var_2_568, 3
; %var_2_377 = add i64 %var_2_376, 3
; Matched:\<badref\>:  store i64 %var_2_569, i64* %PC, align 8
; store i64 %var_2_377, i64* %var_2_3, align 8
%var_2_378 = inttoptr i64 %var_2_375 to i32*
%var_2_379 = load i32, i32* %var_2_378, align 4
%var_2_380 = add i32 %var_2_379, 1
; Matched:%var_2_386:  %var_2_386 = zext i32 %var_2_385 to i64
; %var_2_381 = zext i32 %var_2_380 to i64
; Matched:\<badref\>:  store i64 %var_2_386, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_381, i64* %RAX.i629, align 8
; Matched:%var_2_387:  %var_2_387 = icmp eq i32 %var_2_384, -1
; %var_2_382 = icmp eq i32 %var_2_379, -1
; Matched:%var_2_388:  %var_2_388 = icmp eq i32 %var_2_385, 0
; %var_2_383 = icmp eq i32 %var_2_380, 0
; Matched:%var_2_389:  %var_2_389 = or i1 %var_2_387, %var_2_388
; %var_2_384 = or i1 %var_2_382, %var_2_383
; Matched:%var_2_390:  %var_2_390 = zext i1 %var_2_389 to i8
; %var_2_385 = zext i1 %var_2_384 to i8
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_385, i8* %var_2_14, align 1
; Matched:%var_2_391:  %var_2_391 = and i32 %var_2_385, 255
; %var_2_386 = and i32 %var_2_380, 255
; Matched:%var_2_392:  %var_2_392 = tail call i32 @llvm.ctpop.i32(i32 %var_2_391) #12
; %var_2_387 = tail call i32 @llvm.ctpop.i32(i32 %var_2_386)
; Matched:%var_2_393:  %var_2_393 = trunc i32 %var_2_392 to i8
; %var_2_388 = trunc i32 %var_2_387 to i8
; Matched:%var_2_394:  %var_2_394 = and i8 %var_2_393, 1
; %var_2_389 = and i8 %var_2_388, 1
; Matched:%var_2_395:  %var_2_395 = xor i8 %var_2_394, 1
; %var_2_390 = xor i8 %var_2_389, 1
; Matched:\<badref\>:  store i8 %var_2_395, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_390, i8* %var_2_21, align 1
; Matched:%var_2_396:  %var_2_396 = xor i32 %var_2_385, %var_2_384
; %var_2_391 = xor i32 %var_2_380, %var_2_379
; Matched:%var_2_397:  %var_2_397 = lshr i32 %var_2_396, 4
; %var_2_392 = lshr i32 %var_2_391, 4
; Matched:%var_2_398:  %var_2_398 = trunc i32 %var_2_397 to i8
; %var_2_393 = trunc i32 %var_2_392 to i8
; Matched:%var_2_399:  %var_2_399 = and i8 %var_2_398, 1
; %var_2_394 = and i8 %var_2_393, 1
; Matched:\<badref\>:  store i8 %var_2_399, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_394, i8* %var_2_27, align 1
; Matched:%var_2_400:  %var_2_400 = zext i1 %var_2_388 to i8
; %var_2_395 = zext i1 %var_2_383 to i8
; Matched:\<badref\>:  store i8 %var_2_400, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_395, i8* %var_2_30, align 1
; Matched:%var_2_401:  %var_2_401 = lshr i32 %var_2_385, 31
; %var_2_396 = lshr i32 %var_2_380, 31
; Matched:%var_2_402:  %var_2_402 = trunc i32 %var_2_401 to i8
; %var_2_397 = trunc i32 %var_2_396 to i8
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_397, i8* %var_2_33, align 1
; Matched:%var_2_403:  %var_2_403 = lshr i32 %var_2_384, 31
; %var_2_398 = lshr i32 %var_2_379, 31
; Matched:%var_2_404:  %var_2_404 = xor i32 %var_2_401, %var_2_403
; %var_2_399 = xor i32 %var_2_396, %var_2_398
; Matched:%var_2_405:  %var_2_405 = add nuw nsw i32 %var_2_404, %var_2_401
; %var_2_400 = add nuw nsw i32 %var_2_399, %var_2_396
; Matched:%var_2_406:  %var_2_406 = icmp eq i32 %var_2_405, 2
; %var_2_401 = icmp eq i32 %var_2_400, 2
; Matched:%var_2_407:  %var_2_407 = zext i1 %var_2_406 to i8
; %var_2_402 = zext i1 %var_2_401 to i8
; Matched:\<badref\>:  store i8 %var_2_407, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_402, i8* %var_2_39, align 1
%var_2_403 = sext i32 %var_2_380 to i64
; Matched:\<badref\>:  store i64 %var_2_408, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_403, i64* %RCX.i523, align 8
%var_2_404 = shl nsw i64 %var_2_403, 2
%var_2_405 = add nsw i64 %var_2_404, 6300752
; Matched:%var_2_411:  %var_2_411 = add i64 %var_2_381, 16
; %var_2_406 = add i64 %var_2_376, 16
; Matched:\<badref\>:  store i64 %var_2_411, i64* %PC, align 8
; store i64 %var_2_406, i64* %var_2_3, align 8
%var_2_407 = inttoptr i64 %var_2_405 to i32*
%var_2_408 = load i32, i32* %var_2_407, align 4
%var_2_409 = zext i32 %var_2_408 to i64
store i64 %var_2_409, i64* %RAX.i629, align 8
%var_2_410 = add i64 %var_2_374, -36
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_451, 19
; %var_2_411 = add i64 %var_2_376, 19
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_411, i64* %var_2_3, align 8
%var_2_412 = inttoptr i64 %var_2_410 to i32*
%var_2_413 = load i32, i32* %var_2_412, align 4
%var_2_414 = add i32 %var_2_413, %var_2_408
%var_2_415 = zext i32 %var_2_414 to i64
store i64 %var_2_415, i64* %RAX.i629, align 8
%var_2_416 = icmp ult i32 %var_2_414, %var_2_408
%var_2_417 = icmp ult i32 %var_2_414, %var_2_413
%var_2_418 = or i1 %var_2_416, %var_2_417
%var_2_419 = zext i1 %var_2_418 to i8
store i8 %var_2_419, i8* %var_2_14, align 1
%var_2_420 = and i32 %var_2_414, 255
%var_2_421 = tail call i32 @llvm.ctpop.i32(i32 %var_2_420)
%var_2_422 = trunc i32 %var_2_421 to i8
%var_2_423 = and i8 %var_2_422, 1
%var_2_424 = xor i8 %var_2_423, 1
store i8 %var_2_424, i8* %var_2_21, align 1
%var_2_425 = xor i32 %var_2_413, %var_2_408
%var_2_426 = xor i32 %var_2_425, %var_2_414
%var_2_427 = lshr i32 %var_2_426, 4
%var_2_428 = trunc i32 %var_2_427 to i8
%var_2_429 = and i8 %var_2_428, 1
store i8 %var_2_429, i8* %var_2_27, align 1
%var_2_430 = icmp eq i32 %var_2_414, 0
%var_2_431 = zext i1 %var_2_430 to i8
store i8 %var_2_431, i8* %var_2_30, align 1
%var_2_432 = lshr i32 %var_2_414, 31
%var_2_433 = trunc i32 %var_2_432 to i8
store i8 %var_2_433, i8* %var_2_33, align 1
%var_2_434 = lshr i32 %var_2_408, 31
%var_2_435 = lshr i32 %var_2_413, 31
%var_2_436 = xor i32 %var_2_432, %var_2_434
%var_2_437 = xor i32 %var_2_432, %var_2_435
%var_2_438 = add nuw nsw i32 %var_2_436, %var_2_437
%var_2_439 = icmp eq i32 %var_2_438, 2
%var_2_440 = zext i1 %var_2_439 to i8
store i8 %var_2_440, i8* %var_2_39, align 1
%var_2_441 = add i64 %var_2_374, -76
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_451, 22
; %var_2_442 = add i64 %var_2_376, 22
; Matched:\<badref\>:  store i64 %var_2_517, i64* %PC, align 8
; store i64 %var_2_442, i64* %var_2_3, align 8
%var_2_443 = inttoptr i64 %var_2_441 to i32*
store i32 %var_2_414, i32* %var_2_443, align 4
%var_2_444 = load i64, i64* %RBP.i, align 8
%var_2_445 = add i64 %var_2_444, -28
%var_2_446 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_382:  %var_2_382 = add i64 %var_2_381, 3
; %var_2_447 = add i64 %var_2_446, 3
; Matched:\<badref\>:  store i64 %var_2_382, i64* %PC, align 8
; store i64 %var_2_447, i64* %var_2_3, align 8
%var_2_448 = inttoptr i64 %var_2_445 to i32*
%var_2_449 = load i32, i32* %var_2_448, align 4
%var_2_450 = add i32 %var_2_449, 1
; Matched:%var_2_456:  %var_2_456 = zext i32 %var_2_455 to i64
; %var_2_451 = zext i32 %var_2_450 to i64
; Matched:\<badref\>:  store i64 %var_2_456, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_451, i64* %RAX.i629, align 8
; Matched:%var_2_457:  %var_2_457 = icmp eq i32 %var_2_454, -1
; %var_2_452 = icmp eq i32 %var_2_449, -1
; Matched:%var_2_458:  %var_2_458 = icmp eq i32 %var_2_455, 0
; %var_2_453 = icmp eq i32 %var_2_450, 0
; Matched:%var_2_459:  %var_2_459 = or i1 %var_2_457, %var_2_458
; %var_2_454 = or i1 %var_2_452, %var_2_453
; Matched:%var_2_460:  %var_2_460 = zext i1 %var_2_459 to i8
; %var_2_455 = zext i1 %var_2_454 to i8
; Matched:\<badref\>:  store i8 %var_2_460, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_455, i8* %var_2_14, align 1
; Matched:%var_2_461:  %var_2_461 = and i32 %var_2_455, 255
; %var_2_456 = and i32 %var_2_450, 255
; Matched:%var_2_462:  %var_2_462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_461) #12
; %var_2_457 = tail call i32 @llvm.ctpop.i32(i32 %var_2_456)
; Matched:%var_2_463:  %var_2_463 = trunc i32 %var_2_462 to i8
; %var_2_458 = trunc i32 %var_2_457 to i8
; Matched:%var_2_464:  %var_2_464 = and i8 %var_2_463, 1
; %var_2_459 = and i8 %var_2_458, 1
; Matched:%var_2_465:  %var_2_465 = xor i8 %var_2_464, 1
; %var_2_460 = xor i8 %var_2_459, 1
; Matched:\<badref\>:  store i8 %var_2_465, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_460, i8* %var_2_21, align 1
; Matched:%var_2_466:  %var_2_466 = xor i32 %var_2_455, %var_2_454
; %var_2_461 = xor i32 %var_2_450, %var_2_449
; Matched:%var_2_467:  %var_2_467 = lshr i32 %var_2_466, 4
; %var_2_462 = lshr i32 %var_2_461, 4
; Matched:%var_2_468:  %var_2_468 = trunc i32 %var_2_467 to i8
; %var_2_463 = trunc i32 %var_2_462 to i8
; Matched:%var_2_469:  %var_2_469 = and i8 %var_2_468, 1
; %var_2_464 = and i8 %var_2_463, 1
; Matched:\<badref\>:  store i8 %var_2_469, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_464, i8* %var_2_27, align 1
; Matched:%var_2_470:  %var_2_470 = zext i1 %var_2_458 to i8
; %var_2_465 = zext i1 %var_2_453 to i8
; Matched:\<badref\>:  store i8 %var_2_470, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_465, i8* %var_2_30, align 1
; Matched:%var_2_471:  %var_2_471 = lshr i32 %var_2_455, 31
; %var_2_466 = lshr i32 %var_2_450, 31
; Matched:%var_2_472:  %var_2_472 = trunc i32 %var_2_471 to i8
; %var_2_467 = trunc i32 %var_2_466 to i8
; Matched:\<badref\>:  store i8 %var_2_472, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_467, i8* %var_2_33, align 1
; Matched:%var_2_473:  %var_2_473 = lshr i32 %var_2_454, 31
; %var_2_468 = lshr i32 %var_2_449, 31
; Matched:%var_2_474:  %var_2_474 = xor i32 %var_2_471, %var_2_473
; %var_2_469 = xor i32 %var_2_466, %var_2_468
; Matched:%var_2_475:  %var_2_475 = add nuw nsw i32 %var_2_474, %var_2_471
; %var_2_470 = add nuw nsw i32 %var_2_469, %var_2_466
; Matched:%var_2_476:  %var_2_476 = icmp eq i32 %var_2_475, 2
; %var_2_471 = icmp eq i32 %var_2_470, 2
; Matched:%var_2_477:  %var_2_477 = zext i1 %var_2_476 to i8
; %var_2_472 = zext i1 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_477, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_472, i8* %var_2_39, align 1
%var_2_473 = sext i32 %var_2_450 to i64
; Matched:\<badref\>:  store i64 %var_2_478, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_473, i64* %RCX.i523, align 8
%var_2_474 = shl nsw i64 %var_2_473, 2
%var_2_475 = add nsw i64 %var_2_474, 6300752
; Matched:%var_2_1236:  %var_2_1236 = add i64 %var_2_1231, 16
; %var_2_476 = add i64 %var_2_446, 16
; Matched:\<badref\>:  store i64 %var_2_1236, i64* %PC, align 8
; store i64 %var_2_476, i64* %var_2_3, align 8
%var_2_477 = inttoptr i64 %var_2_475 to i32*
%var_2_478 = load i32, i32* %var_2_477, align 4
%var_2_479 = zext i32 %var_2_478 to i64
store i64 %var_2_479, i64* %RAX.i629, align 8
%var_2_480 = add i64 %var_2_444, -32
; Matched:%var_2_1489:  %var_2_1489 = add i64 %var_2_1476, 19
; %var_2_481 = add i64 %var_2_446, 19
; Matched:\<badref\>:  store i64 %var_2_1489, i64* %PC, align 8
; store i64 %var_2_481, i64* %var_2_3, align 8
%var_2_482 = inttoptr i64 %var_2_480 to i32*
%var_2_483 = load i32, i32* %var_2_482, align 4
%var_2_484 = add i32 %var_2_483, %var_2_478
%var_2_485 = zext i32 %var_2_484 to i64
store i64 %var_2_485, i64* %RAX.i629, align 8
%var_2_486 = icmp ult i32 %var_2_484, %var_2_478
%var_2_487 = icmp ult i32 %var_2_484, %var_2_483
%var_2_488 = or i1 %var_2_486, %var_2_487
%var_2_489 = zext i1 %var_2_488 to i8
store i8 %var_2_489, i8* %var_2_14, align 1
%var_2_490 = and i32 %var_2_484, 255
%var_2_491 = tail call i32 @llvm.ctpop.i32(i32 %var_2_490)
%var_2_492 = trunc i32 %var_2_491 to i8
%var_2_493 = and i8 %var_2_492, 1
%var_2_494 = xor i8 %var_2_493, 1
store i8 %var_2_494, i8* %var_2_21, align 1
%var_2_495 = xor i32 %var_2_483, %var_2_478
%var_2_496 = xor i32 %var_2_495, %var_2_484
%var_2_497 = lshr i32 %var_2_496, 4
%var_2_498 = trunc i32 %var_2_497 to i8
%var_2_499 = and i8 %var_2_498, 1
store i8 %var_2_499, i8* %var_2_27, align 1
%var_2_500 = icmp eq i32 %var_2_484, 0
%var_2_501 = zext i1 %var_2_500 to i8
store i8 %var_2_501, i8* %var_2_30, align 1
%var_2_502 = lshr i32 %var_2_484, 31
%var_2_503 = trunc i32 %var_2_502 to i8
store i8 %var_2_503, i8* %var_2_33, align 1
%var_2_504 = lshr i32 %var_2_478, 31
%var_2_505 = lshr i32 %var_2_483, 31
%var_2_506 = xor i32 %var_2_502, %var_2_504
%var_2_507 = xor i32 %var_2_502, %var_2_505
%var_2_508 = add nuw nsw i32 %var_2_506, %var_2_507
%var_2_509 = icmp eq i32 %var_2_508, 2
%var_2_510 = zext i1 %var_2_509 to i8
store i8 %var_2_510, i8* %var_2_39, align 1
%var_2_511 = add i64 %var_2_444, -80
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_381, 22
; %var_2_512 = add i64 %var_2_446, 22
; Matched:\<badref\>:  store i64 %var_2_447, i64* %PC, align 8
; store i64 %var_2_512, i64* %var_2_3, align 8
%var_2_513 = inttoptr i64 %var_2_511 to i32*
store i32 %var_2_484, i32* %var_2_513, align 4
%var_2_514 = load i64, i64* %RBP.i, align 8
%var_2_515 = add i64 %var_2_514, -80
%var_2_516 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_334, 4
; %var_2_517 = add i64 %var_2_516, 4
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_517, i64* %var_2_3, align 8
%var_2_518 = inttoptr i64 %var_2_515 to i32*
%var_2_519 = load i32, i32* %var_2_518, align 4
%var_2_520 = sext i32 %var_2_519 to i64
; Matched:\<badref\>:  store i64 %var_2_525, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_520, i64* %RCX.i523, align 8
%var_2_521 = shl nsw i64 %var_2_520, 2
%var_2_522 = add nsw i64 %var_2_521, 6300752
; Matched:%var_2_897:  %var_2_897 = add i64 %var_2_888, 11
; %var_2_523 = add i64 %var_2_516, 11
; Matched:\<badref\>:  store i64 %var_2_1152, i64* %PC, align 8
; store i64 %var_2_523, i64* %var_2_3, align 8
%var_2_524 = inttoptr i64 %var_2_522 to i32*
%var_2_525 = load i32, i32* %var_2_524, align 4
%var_2_526 = zext i32 %var_2_525 to i64
store i64 %var_2_526, i64* %RAX.i629, align 8
%var_2_527 = add i64 %var_2_514, -36
; Matched:%var_2_1124:  %var_2_1124 = add i64 %var_2_1109, 14
; %var_2_528 = add i64 %var_2_516, 14
; Matched:\<badref\>:  store i64 %var_2_533, i64* %PC, align 8
; store i64 %var_2_528, i64* %var_2_3, align 8
%var_2_529 = inttoptr i64 %var_2_527 to i32*
%var_2_530 = load i32, i32* %var_2_529, align 4
%var_2_531 = add i32 %var_2_530, %var_2_525
%var_2_532 = zext i32 %var_2_531 to i64
store i64 %var_2_532, i64* %RAX.i629, align 8
%var_2_533 = icmp ult i32 %var_2_531, %var_2_525
%var_2_534 = icmp ult i32 %var_2_531, %var_2_530
%var_2_535 = or i1 %var_2_533, %var_2_534
%var_2_536 = zext i1 %var_2_535 to i8
store i8 %var_2_536, i8* %var_2_14, align 1
%var_2_537 = and i32 %var_2_531, 255
%var_2_538 = tail call i32 @llvm.ctpop.i32(i32 %var_2_537)
%var_2_539 = trunc i32 %var_2_538 to i8
%var_2_540 = and i8 %var_2_539, 1
%var_2_541 = xor i8 %var_2_540, 1
store i8 %var_2_541, i8* %var_2_21, align 1
%var_2_542 = xor i32 %var_2_530, %var_2_525
%var_2_543 = xor i32 %var_2_542, %var_2_531
%var_2_544 = lshr i32 %var_2_543, 4
%var_2_545 = trunc i32 %var_2_544 to i8
%var_2_546 = and i8 %var_2_545, 1
store i8 %var_2_546, i8* %var_2_27, align 1
%var_2_547 = icmp eq i32 %var_2_531, 0
%var_2_548 = zext i1 %var_2_547 to i8
store i8 %var_2_548, i8* %var_2_30, align 1
%var_2_549 = lshr i32 %var_2_531, 31
%var_2_550 = trunc i32 %var_2_549 to i8
store i8 %var_2_550, i8* %var_2_33, align 1
%var_2_551 = lshr i32 %var_2_525, 31
%var_2_552 = lshr i32 %var_2_530, 31
%var_2_553 = xor i32 %var_2_549, %var_2_551
%var_2_554 = xor i32 %var_2_549, %var_2_552
%var_2_555 = add nuw nsw i32 %var_2_553, %var_2_554
%var_2_556 = icmp eq i32 %var_2_555, 2
%var_2_557 = zext i1 %var_2_556 to i8
store i8 %var_2_557, i8* %var_2_39, align 1
%var_2_558 = add i64 %var_2_514, -84
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_287, 17
; %var_2_559 = add i64 %var_2_516, 17
; Matched:\<badref\>:  store i64 %var_2_330, i64* %PC, align 8
; store i64 %var_2_559, i64* %var_2_3, align 8
%var_2_560 = inttoptr i64 %var_2_558 to i32*
store i32 %var_2_531, i32* %var_2_560, align 4
%var_2_561 = load i64, i64* %RBP.i, align 8
%var_2_562 = add i64 %var_2_561, -80
%var_2_563 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_451, 3
; %var_2_564 = add i64 %var_2_563, 3
; Matched:\<badref\>:  store i64 %var_2_452, i64* %PC, align 8
; store i64 %var_2_564, i64* %var_2_3, align 8
%var_2_565 = inttoptr i64 %var_2_562 to i32*
%var_2_566 = load i32, i32* %var_2_565, align 4
%var_2_567 = add i32 %var_2_566, 1
; Matched:%var_2_573:  %var_2_573 = zext i32 %var_2_572 to i64
; %var_2_568 = zext i32 %var_2_567 to i64
; Matched:\<badref\>:  store i64 %var_2_573, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_568, i64* %RAX.i629, align 8
; Matched:%var_2_574:  %var_2_574 = icmp eq i32 %var_2_571, -1
; %var_2_569 = icmp eq i32 %var_2_566, -1
; Matched:%var_2_575:  %var_2_575 = icmp eq i32 %var_2_572, 0
; %var_2_570 = icmp eq i32 %var_2_567, 0
; Matched:%var_2_576:  %var_2_576 = or i1 %var_2_574, %var_2_575
; %var_2_571 = or i1 %var_2_569, %var_2_570
; Matched:%var_2_577:  %var_2_577 = zext i1 %var_2_576 to i8
; %var_2_572 = zext i1 %var_2_571 to i8
; Matched:\<badref\>:  store i8 %var_2_577, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_572, i8* %var_2_14, align 1
; Matched:%var_2_578:  %var_2_578 = and i32 %var_2_572, 255
; %var_2_573 = and i32 %var_2_567, 255
; Matched:%var_2_579:  %var_2_579 = tail call i32 @llvm.ctpop.i32(i32 %var_2_578) #12
; %var_2_574 = tail call i32 @llvm.ctpop.i32(i32 %var_2_573)
; Matched:%var_2_580:  %var_2_580 = trunc i32 %var_2_579 to i8
; %var_2_575 = trunc i32 %var_2_574 to i8
; Matched:%var_2_581:  %var_2_581 = and i8 %var_2_580, 1
; %var_2_576 = and i8 %var_2_575, 1
; Matched:%var_2_582:  %var_2_582 = xor i8 %var_2_581, 1
; %var_2_577 = xor i8 %var_2_576, 1
; Matched:\<badref\>:  store i8 %var_2_582, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_577, i8* %var_2_21, align 1
; Matched:%var_2_583:  %var_2_583 = xor i32 %var_2_572, %var_2_571
; %var_2_578 = xor i32 %var_2_567, %var_2_566
; Matched:%var_2_584:  %var_2_584 = lshr i32 %var_2_583, 4
; %var_2_579 = lshr i32 %var_2_578, 4
; Matched:%var_2_585:  %var_2_585 = trunc i32 %var_2_584 to i8
; %var_2_580 = trunc i32 %var_2_579 to i8
; Matched:%var_2_586:  %var_2_586 = and i8 %var_2_585, 1
; %var_2_581 = and i8 %var_2_580, 1
; Matched:\<badref\>:  store i8 %var_2_586, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_581, i8* %var_2_27, align 1
; Matched:%var_2_587:  %var_2_587 = zext i1 %var_2_575 to i8
; %var_2_582 = zext i1 %var_2_570 to i8
; Matched:\<badref\>:  store i8 %var_2_587, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_582, i8* %var_2_30, align 1
; Matched:%var_2_588:  %var_2_588 = lshr i32 %var_2_572, 31
; %var_2_583 = lshr i32 %var_2_567, 31
; Matched:%var_2_589:  %var_2_589 = trunc i32 %var_2_588 to i8
; %var_2_584 = trunc i32 %var_2_583 to i8
; Matched:\<badref\>:  store i8 %var_2_589, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_584, i8* %var_2_33, align 1
; Matched:%var_2_590:  %var_2_590 = lshr i32 %var_2_571, 31
; %var_2_585 = lshr i32 %var_2_566, 31
; Matched:%var_2_591:  %var_2_591 = xor i32 %var_2_588, %var_2_590
; %var_2_586 = xor i32 %var_2_583, %var_2_585
; Matched:%var_2_592:  %var_2_592 = add nuw nsw i32 %var_2_591, %var_2_588
; %var_2_587 = add nuw nsw i32 %var_2_586, %var_2_583
; Matched:%var_2_593:  %var_2_593 = icmp eq i32 %var_2_592, 2
; %var_2_588 = icmp eq i32 %var_2_587, 2
; Matched:%var_2_594:  %var_2_594 = zext i1 %var_2_593 to i8
; %var_2_589 = zext i1 %var_2_588 to i8
; Matched:\<badref\>:  store i8 %var_2_594, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_589, i8* %var_2_39, align 1
%var_2_590 = sext i32 %var_2_567 to i64
; Matched:\<badref\>:  store i64 %var_2_595, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_590, i64* %RCX.i523, align 8
%var_2_591 = shl nsw i64 %var_2_590, 2
%var_2_592 = add nsw i64 %var_2_591, 6300752
; Matched:%var_2_598:  %var_2_598 = add i64 %var_2_568, 16
; %var_2_593 = add i64 %var_2_563, 16
; Matched:\<badref\>:  store i64 %var_2_598, i64* %PC, align 8
; store i64 %var_2_593, i64* %var_2_3, align 8
%var_2_594 = inttoptr i64 %var_2_592 to i32*
%var_2_595 = load i32, i32* %var_2_594, align 4
%var_2_596 = zext i32 %var_2_595 to i64
store i64 %var_2_596, i64* %RAX.i629, align 8
%var_2_597 = add i64 %var_2_561, -36
; Matched:%var_2_927:  %var_2_927 = add i64 %var_2_917, 19
; %var_2_598 = add i64 %var_2_563, 19
; Matched:\<badref\>:  store i64 %var_2_927, i64* %PC, align 8
; store i64 %var_2_598, i64* %var_2_3, align 8
%var_2_599 = inttoptr i64 %var_2_597 to i32*
%var_2_600 = load i32, i32* %var_2_599, align 4
%var_2_601 = add i32 %var_2_600, %var_2_595
%var_2_602 = zext i32 %var_2_601 to i64
store i64 %var_2_602, i64* %RAX.i629, align 8
%var_2_603 = icmp ult i32 %var_2_601, %var_2_595
%var_2_604 = icmp ult i32 %var_2_601, %var_2_600
%var_2_605 = or i1 %var_2_603, %var_2_604
%var_2_606 = zext i1 %var_2_605 to i8
store i8 %var_2_606, i8* %var_2_14, align 1
%var_2_607 = and i32 %var_2_601, 255
%var_2_608 = tail call i32 @llvm.ctpop.i32(i32 %var_2_607)
%var_2_609 = trunc i32 %var_2_608 to i8
%var_2_610 = and i8 %var_2_609, 1
%var_2_611 = xor i8 %var_2_610, 1
store i8 %var_2_611, i8* %var_2_21, align 1
%var_2_612 = xor i32 %var_2_600, %var_2_595
%var_2_613 = xor i32 %var_2_612, %var_2_601
%var_2_614 = lshr i32 %var_2_613, 4
%var_2_615 = trunc i32 %var_2_614 to i8
%var_2_616 = and i8 %var_2_615, 1
store i8 %var_2_616, i8* %var_2_27, align 1
%var_2_617 = icmp eq i32 %var_2_601, 0
%var_2_618 = zext i1 %var_2_617 to i8
store i8 %var_2_618, i8* %var_2_30, align 1
%var_2_619 = lshr i32 %var_2_601, 31
%var_2_620 = trunc i32 %var_2_619 to i8
store i8 %var_2_620, i8* %var_2_33, align 1
%var_2_621 = lshr i32 %var_2_595, 31
%var_2_622 = lshr i32 %var_2_600, 31
%var_2_623 = xor i32 %var_2_619, %var_2_621
%var_2_624 = xor i32 %var_2_619, %var_2_622
%var_2_625 = add nuw nsw i32 %var_2_623, %var_2_624
%var_2_626 = icmp eq i32 %var_2_625, 2
%var_2_627 = zext i1 %var_2_626 to i8
store i8 %var_2_627, i8* %var_2_39, align 1
%var_2_628 = add i64 %var_2_561, -88
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_568, 22
; %var_2_629 = add i64 %var_2_563, 22
; Matched:\<badref\>:  store i64 %var_2_634, i64* %PC, align 8
; store i64 %var_2_629, i64* %var_2_3, align 8
%var_2_630 = inttoptr i64 %var_2_628 to i32*
store i32 %var_2_601, i32* %var_2_630, align 4
%var_2_631 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_637:  %var_2_637 = add i64 %var_2_636, -64
; %var_2_632 = add i64 %var_2_631, -64
%var_2_633 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_165:  %var_2_165 = add i64 %var_2_164, 5
; %var_2_634 = add i64 %var_2_633, 5
; Matched:\<badref\>:  store i64 %var_2_1501, i64* %PC, align 8
; store i64 %var_2_634, i64* %var_2_3, align 8
; Matched:%var_2_640:  %var_2_640 = inttoptr i64 %var_2_637 to i64*
; %var_2_635 = inttoptr i64 %var_2_632 to i64*
; Matched:%var_2_641:  %var_2_641 = load i64, i64* %var_2_640, align 8
; %var_2_636 = load i64, i64* %var_2_635, align 8
; Matched:\<badref\>:  store i64 %var_2_641, i64* %var_2_48, align 1, !tbaa !1284
; store i64 %var_2_636, i64* %var_2_44, align 1
store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_642:  %var_2_642 = add i64 %var_2_636, -56
; %var_2_637 = add i64 %var_2_631, -56
; Matched:%var_2_643:  %var_2_643 = add i64 %var_2_638, 10
; %var_2_638 = add i64 %var_2_633, 10
; Matched:\<badref\>:  store i64 %var_2_813, i64* %PC, align 8
; store i64 %var_2_638, i64* %var_2_3, align 8
; Matched:%var_2_644:  %var_2_644 = inttoptr i64 %var_2_642 to i64*
; %var_2_639 = inttoptr i64 %var_2_637 to i64*
; Matched:%var_2_645:  %var_2_645 = load i64, i64* %var_2_644, align 8
; %var_2_640 = load i64, i64* %var_2_639, align 8
; Matched:\<badref\>:  store i64 %var_2_645, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_640, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_646:  %var_2_646 = bitcast %union.VectorReg* %var_2_5 to i8*
; %var_2_641 = bitcast %union.VectorReg* %var_2_56 to i8*
; Matched:%var_2_1264:  %var_2_1264 = add i64 %var_2_1263, -48
; %var_2_642 = add i64 %var_2_631, -48
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_15, 15
; %var_2_643 = add i64 %var_2_633, 15
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_643, i64* %var_2_3, align 8
; Matched:%var_2_1266:  %var_2_1266 = inttoptr i64 %var_2_1264 to i64*
; %var_2_644 = inttoptr i64 %var_2_642 to i64*
; Matched:%var_2_1267:  %var_2_1267 = load i64, i64* %var_2_1266, align 8
; %var_2_645 = load i64, i64* %var_2_644, align 8
%var_2_646 = bitcast %union.VectorReg* %var_2_56 to double*
; Matched:\<badref\>:  store i64 %var_2_650, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_645, i64* %var_2_61, align 1
%var_2_647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_648 = bitcast i64* %var_2_647 to double*
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_649 = add i64 %var_2_631, -72
; Matched:%var_2_603:  %var_2_603 = add i64 %var_2_568, 19
; %var_2_650 = add i64 %var_2_633, 19
; Matched:\<badref\>:  store i64 %var_2_603, i64* %PC, align 8
; store i64 %var_2_650, i64* %var_2_3, align 8
%var_2_651 = inttoptr i64 %var_2_649 to i32*
%var_2_652 = load i32, i32* %var_2_651, align 4
%var_2_653 = sext i32 %var_2_652 to i64
; Matched:\<badref\>:  store i64 %var_2_658, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_653, i64* %RCX.i523, align 8
  %RDI.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
%var_2_654 = shl nsw i64 %var_2_653, 2
%var_2_655 = add nsw i64 %var_2_654, 6300752
; Matched:%var_2_661:  %var_2_661 = add i64 %var_2_638, 26
; %var_2_656 = add i64 %var_2_633, 26
; Matched:\<badref\>:  store i64 %var_2_661, i64* %PC, align 8
; store i64 %var_2_656, i64* %var_2_3, align 8
%var_2_657 = inttoptr i64 %var_2_655 to i32*
%var_2_658 = load i32, i32* %var_2_657, align 4
%var_2_659 = zext i32 %var_2_658 to i64
store i64 %var_2_659, i64* %RDI.i425, align 8
%var_2_660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_858:  %var_2_858 = add i64 %var_2_842, -8
; %var_2_661 = add i64 %var_2_631, -8
; Matched:%var_2_666:  %var_2_666 = add i64 %var_2_638, 31
; %var_2_662 = add i64 %var_2_633, 31
; Matched:\<badref\>:  store i64 %var_2_666, i64* %PC, align 8
; store i64 %var_2_662, i64* %var_2_3, align 8
; Matched:%var_2_667:  %var_2_667 = inttoptr i64 %var_2_665 to i64*
; %var_2_663 = inttoptr i64 %var_2_661 to i64*
; Matched:%var_2_1305:  %var_2_1305 = load i64, i64* %var_2_1304, align 8
; %var_2_664 = load i64, i64* %var_2_663, align 8
%var_2_665 = bitcast %union.VectorReg* %var_2_660 to double*
; Matched:%var_2_670:  %var_2_670 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_666 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_660, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_861, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_664, i64* %var_2_666, align 1
; Matched:%var_2_671:  %var_2_671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_672:  %var_2_672 = bitcast i64* %var_2_671 to double*
; %var_2_668 = bitcast i64* %var_2_667 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
%var_2_669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_673:  %var_2_673 = add i64 %var_2_636, -16
; %var_2_670 = add i64 %var_2_631, -16
; Matched:%var_2_674:  %var_2_674 = add i64 %var_2_638, 36
; %var_2_671 = add i64 %var_2_633, 36
; Matched:\<badref\>:  store i64 %var_2_674, i64* %PC, align 8
; store i64 %var_2_671, i64* %var_2_3, align 8
; Matched:%var_2_675:  %var_2_675 = inttoptr i64 %var_2_673 to i64*
; %var_2_672 = inttoptr i64 %var_2_670 to i64*
; Matched:%var_2_676:  %var_2_676 = load i64, i64* %var_2_675, align 8
; %var_2_673 = load i64, i64* %var_2_672, align 8
%var_2_674 = bitcast %union.VectorReg* %var_2_669 to double*
; Matched:%var_2_678:  %var_2_678 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_7, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_675 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_669, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_676, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_673, i64* %var_2_675, align 1
; Matched:%var_2_679:  %var_2_679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_680:  %var_2_680 = bitcast i64* %var_2_679 to double*
; %var_2_677 = bitcast i64* %var_2_676 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_680, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_677, align 1
%var_2_678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_636, -24
; %var_2_679 = add i64 %var_2_631, -24
; Matched:%var_2_682:  %var_2_682 = add i64 %var_2_638, 41
; %var_2_680 = add i64 %var_2_633, 41
; Matched:\<badref\>:  store i64 %var_2_682, i64* %PC, align 8
; store i64 %var_2_680, i64* %var_2_3, align 8
; Matched:%var_2_683:  %var_2_683 = inttoptr i64 %var_2_681 to i64*
; %var_2_681 = inttoptr i64 %var_2_679 to i64*
; Matched:%var_2_684:  %var_2_684 = load i64, i64* %var_2_683, align 8
; %var_2_682 = load i64, i64* %var_2_681, align 8
%var_2_683 = bitcast %union.VectorReg* %var_2_678 to double*
; Matched:%var_2_686:  %var_2_686 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_8, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_684 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_678, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_684, i64* %var_2_686, align 1, !tbaa !1284
; store i64 %var_2_682, i64* %var_2_684, align 1
; Matched:%var_2_687:  %var_2_687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_688:  %var_2_688 = bitcast i64* %var_2_687 to double*
; %var_2_686 = bitcast i64* %var_2_685 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_688, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_686, align 1
; Matched:%var_2_689:  %var_2_689 = add i64 %var_2_636, -96
; %var_2_687 = add i64 %var_2_631, -96
; Matched:%var_2_690:  %var_2_690 = add i64 %var_2_638, 46
; %var_2_688 = add i64 %var_2_633, 46
; Matched:\<badref\>:  store i64 %var_2_690, i64* %PC, align 8
; store i64 %var_2_688, i64* %var_2_3, align 8
; Matched:%var_2_691:  %var_2_691 = inttoptr i64 %var_2_689 to i64*
; %var_2_689 = inttoptr i64 %var_2_687 to i64*
; Matched:\<badref\>:  store i64 %var_2_641, i64* %var_2_691, align 8
; store i64 %var_2_636, i64* %var_2_689, align 8
%var_2_690 = load i64, i64* %var_2_3, align 8
%var_2_691 = bitcast %union.VectorReg* %var_2_660 to <2 x i32>*
%var_2_692 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_693 = bitcast i64* %var_2_667 to <2 x i32>*
%var_2_694 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_695 = extractelement <2 x i32> %var_2_692, i32 0
; Matched:%var_2_698:  %var_2_698 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; %var_2_696 = bitcast [32 x %union.VectorReg]* %var_2_40 to i32*
; Matched:\<badref\>:  store i32 %var_2_1324, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_695, i32* %var_2_696, align 1
%var_2_697 = extractelement <2 x i32> %var_2_692, i32 1
; Matched:%var_2_700:  %var_2_700 = getelementptr inbounds i8, i8* %var_2_66, i64 4
; %var_2_698 = getelementptr inbounds i8, i8* %var_2_64, i64 4
; Matched:%var_2_701:  %var_2_701 = bitcast i8* %var_2_700 to i32*
; %var_2_699 = bitcast i8* %var_2_698 to i32*
; Matched:\<badref\>:  store i32 %var_2_1325, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_697, i32* %var_2_699, align 1
%var_2_700 = extractelement <2 x i32> %var_2_694, i32 0
; Matched:%var_2_703:  %var_2_703 = bitcast i64* %var_2_73 to i32*
; %var_2_701 = bitcast i64* %var_2_71 to i32*
; Matched:\<badref\>:  store i32 %var_2_702, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_700, i32* %var_2_701, align 1
%var_2_702 = extractelement <2 x i32> %var_2_694, i32 1
; Matched:%var_2_705:  %var_2_705 = getelementptr inbounds i8, i8* %var_2_66, i64 12
; %var_2_703 = getelementptr inbounds i8, i8* %var_2_64, i64 12
; Matched:%var_2_706:  %var_2_706 = bitcast i8* %var_2_705 to i32*
; %var_2_704 = bitcast i8* %var_2_703 to i32*
; Matched:\<badref\>:  store i32 %var_2_1327, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_702, i32* %var_2_704, align 1
; Matched:%var_2_707:  %var_2_707 = load i64, i64* %RBP, align 8
; %var_2_705 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_708:  %var_2_708 = add i64 %var_2_707, -104
; %var_2_706 = add i64 %var_2_705, -104
%var_2_707 = add i64 %var_2_690, 8
store i64 %var_2_707, i64* %var_2_3, align 8
; Matched:%var_2_710:  %var_2_710 = load i64, i64* %var_2_56, align 1
; %var_2_708 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_711:  %var_2_711 = inttoptr i64 %var_2_708 to i64*
; %var_2_709 = inttoptr i64 %var_2_706 to i64*
; Matched:\<badref\>:  store i64 %var_2_710, i64* %var_2_711, align 8
; store i64 %var_2_708, i64* %var_2_709, align 8
%var_2_710 = load i64, i64* %var_2_3, align 8
%var_2_711 = bitcast %union.VectorReg* %var_2_669 to <2 x i32>*
%var_2_712 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_713 = bitcast i64* %var_2_676 to <2 x i32>*
%var_2_714 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_715 = extractelement <2 x i32> %var_2_712, i32 0
; Matched:%var_2_718:  %var_2_718 = bitcast %union.VectorReg* %var_2_4 to i32*
; %var_2_716 = bitcast %union.VectorReg* %var_2_47 to i32*
; Matched:\<badref\>:  store i32 %var_2_891, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_715, i32* %var_2_716, align 1
%var_2_717 = extractelement <2 x i32> %var_2_712, i32 1
; Matched:%var_2_720:  %var_2_720 = getelementptr inbounds i8, i8* %var_2_174, i64 4
; %var_2_718 = getelementptr inbounds i8, i8* %var_2_172, i64 4
; Matched:%var_2_721:  %var_2_721 = bitcast i8* %var_2_720 to i32*
; %var_2_719 = bitcast i8* %var_2_718 to i32*
; Matched:\<badref\>:  store i32 %var_2_719, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_717, i32* %var_2_719, align 1
%var_2_720 = extractelement <2 x i32> %var_2_714, i32 0
; Matched:%var_2_723:  %var_2_723 = bitcast i64* %var_2_181 to i32*
; %var_2_721 = bitcast i64* %var_2_179 to i32*
; Matched:\<badref\>:  store i32 %var_2_722, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_720, i32* %var_2_721, align 1
%var_2_722 = extractelement <2 x i32> %var_2_714, i32 1
; Matched:%var_2_725:  %var_2_725 = getelementptr inbounds i8, i8* %var_2_174, i64 12
; %var_2_723 = getelementptr inbounds i8, i8* %var_2_172, i64 12
; Matched:%var_2_726:  %var_2_726 = bitcast i8* %var_2_725 to i32*
; %var_2_724 = bitcast i8* %var_2_723 to i32*
; Matched:\<badref\>:  store i32 %var_2_894, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_722, i32* %var_2_724, align 1
; Matched:%var_2_727:  %var_2_727 = load i64, i64* %RBP, align 8
; %var_2_725 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_728:  %var_2_728 = add i64 %var_2_727, -112
; %var_2_726 = add i64 %var_2_725, -112
%var_2_727 = add i64 %var_2_710, 8
store i64 %var_2_727, i64* %var_2_3, align 8
; Matched:%var_2_730:  %var_2_730 = load i64, i64* %var_2_63, align 1
; %var_2_728 = load i64, i64* %var_2_61, align 1
; Matched:%var_2_731:  %var_2_731 = inttoptr i64 %var_2_728 to i64*
; %var_2_729 = inttoptr i64 %var_2_726 to i64*
; Matched:\<badref\>:  store i64 %var_2_730, i64* %var_2_731, align 8
; store i64 %var_2_728, i64* %var_2_729, align 8
%var_2_730 = load i64, i64* %var_2_3, align 8
%var_2_731 = bitcast %union.VectorReg* %var_2_678 to <2 x i32>*
%var_2_732 = load <2 x i32>, <2 x i32>* %var_2_731, align 1
%var_2_733 = bitcast i64* %var_2_685 to <2 x i32>*
%var_2_734 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_735 = extractelement <2 x i32> %var_2_732, i32 0
; Matched:%var_2_738:  %var_2_738 = bitcast %union.VectorReg* %var_2_5 to i32*
; %var_2_736 = bitcast %union.VectorReg* %var_2_56 to i32*
; Matched:\<badref\>:  store i32 %var_2_737, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_735, i32* %var_2_736, align 1
%var_2_737 = extractelement <2 x i32> %var_2_732, i32 1
; Matched:%var_2_740:  %var_2_740 = getelementptr inbounds i8, i8* %var_2_646, i64 4
; %var_2_738 = getelementptr inbounds i8, i8* %var_2_641, i64 4
; Matched:%var_2_741:  %var_2_741 = bitcast i8* %var_2_740 to i32*
; %var_2_739 = bitcast i8* %var_2_738 to i32*
; Matched:\<badref\>:  store i32 %var_2_1343, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_737, i32* %var_2_739, align 1
%var_2_740 = extractelement <2 x i32> %var_2_734, i32 0
; Matched:%var_2_743:  %var_2_743 = bitcast i64* %var_2_652 to i32*
; %var_2_741 = bitcast i64* %var_2_647 to i32*
; Matched:\<badref\>:  store i32 %var_2_742, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_740, i32* %var_2_741, align 1
%var_2_742 = extractelement <2 x i32> %var_2_734, i32 1
; Matched:%var_2_745:  %var_2_745 = getelementptr inbounds i8, i8* %var_2_646, i64 12
; %var_2_743 = getelementptr inbounds i8, i8* %var_2_641, i64 12
; Matched:%var_2_746:  %var_2_746 = bitcast i8* %var_2_745 to i32*
; %var_2_744 = bitcast i8* %var_2_743 to i32*
; Matched:\<badref\>:  store i32 %var_2_1345, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_742, i32* %var_2_744, align 1
%var_2_745 = add i64 %var_2_730, 908
; Matched:%var_2_748:  %var_2_748 = add i64 %var_2_732, 8
; %var_2_746 = add i64 %var_2_730, 8
%var_2_747 = load i64, i64* %var_2_6, align 8
%var_2_748 = add i64 %var_2_747, -8
; Matched:%var_2_1350:  %var_2_1350 = inttoptr i64 %var_2_1349 to i64*
; %var_2_749 = inttoptr i64 %var_2_748 to i64*
; Matched:\<badref\>:  store i64 %var_2_912, i64* %var_2_915, align 8
; store i64 %var_2_746, i64* %var_2_749, align 8
; Matched:\<badref\>:  store i64 %var_2_1258, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_748, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_747, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_745, i64* %var_2_3, align 8
%call2_400877 = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_745, %struct.Memory* %call2_4007b7)
%var_2_750 = load i64, i64* %var_2_3, align 8
%var_2_751 = add i64 %var_2_750, ptrtoint (%G_0x5dc__rip__type* @G_0x5dc__rip_ to i64)
%var_2_752 = add i64 %var_2_750, 8
store i64 %var_2_752, i64* %var_2_3, align 8
%var_2_753 = inttoptr i64 %var_2_751 to i64*
%var_2_754 = load i64, i64* %var_2_753, align 8
store i64 %var_2_754, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_755 = load i64, i64* %RBP.i, align 8
%var_2_756 = add i64 %var_2_755, -84
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_143, 12
; %var_2_757 = add i64 %var_2_750, 12
; Matched:\<badref\>:  store i64 %var_2_160, i64* %PC, align 8
; store i64 %var_2_757, i64* %var_2_3, align 8
%var_2_758 = inttoptr i64 %var_2_756 to i32*
%var_2_759 = load i32, i32* %var_2_758, align 4
%var_2_760 = sext i32 %var_2_759 to i64
; Matched:\<badref\>:  store i64 %var_2_760, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_760, i64* %RCX.i523, align 8
%var_2_761 = shl nsw i64 %var_2_760, 2
%var_2_762 = add nsw i64 %var_2_761, 6300752
; Matched:%var_2_763:  %var_2_763 = add i64 %var_2_753, 19
; %var_2_763 = add i64 %var_2_750, 19
; Matched:\<badref\>:  store i64 %var_2_763, i64* %PC, align 8
; store i64 %var_2_763, i64* %var_2_3, align 8
%var_2_764 = inttoptr i64 %var_2_762 to i32*
%var_2_765 = load i32, i32* %var_2_764, align 4
%var_2_766 = zext i32 %var_2_765 to i64
store i64 %var_2_766, i64* %RDI.i425, align 8
%var_2_767 = add i64 %var_2_755, -8
; Matched:%var_2_768:  %var_2_768 = add i64 %var_2_753, 24
; %var_2_768 = add i64 %var_2_750, 24
; Matched:\<badref\>:  store i64 %var_2_768, i64* %PC, align 8
; store i64 %var_2_768, i64* %var_2_3, align 8
%var_2_769 = inttoptr i64 %var_2_767 to double*
%var_2_770 = load double, double* %var_2_769, align 8
%var_2_771 = bitcast i64 %var_2_754 to double
%var_2_772 = fsub double %var_2_770, %var_2_771
store double %var_2_772, double* %var_2_646, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_652, align 1, !tbaa !1284
; store i64 0, i64* %var_2_647, align 1
; Matched:%var_2_773:  %var_2_773 = add i64 %var_2_755, -16
; %var_2_773 = add i64 %var_2_755, -16
; Matched:%var_2_938:  %var_2_938 = add i64 %var_2_917, 33
; %var_2_774 = add i64 %var_2_750, 33
; Matched:\<badref\>:  store i64 %var_2_774, i64* %PC, align 8
; store i64 %var_2_774, i64* %var_2_3, align 8
; Matched:%var_2_775:  %var_2_775 = inttoptr i64 %var_2_773 to i64*
; %var_2_775 = inttoptr i64 %var_2_773 to i64*
; Matched:%var_2_776:  %var_2_776 = load i64, i64* %var_2_775, align 8
; %var_2_776 = load i64, i64* %var_2_775, align 8
; Matched:\<badref\>:  store i64 %var_2_776, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_776, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_777:  %var_2_777 = add i64 %var_2_755, -24
; %var_2_777 = add i64 %var_2_755, -24
; Matched:%var_2_1192:  %var_2_1192 = add i64 %var_2_1148, 38
; %var_2_778 = add i64 %var_2_750, 38
; Matched:\<badref\>:  store i64 %var_2_1396, i64* %PC, align 8
; store i64 %var_2_778, i64* %var_2_3, align 8
; Matched:%var_2_779:  %var_2_779 = inttoptr i64 %var_2_777 to i64*
; %var_2_779 = inttoptr i64 %var_2_777 to i64*
; Matched:%var_2_780:  %var_2_780 = load i64, i64* %var_2_779, align 8
; %var_2_780 = load i64, i64* %var_2_779, align 8
; Matched:\<badref\>:  store i64 %var_2_780, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_780, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
; Matched:%var_2_781:  %var_2_781 = add i64 %var_2_755, -120
; %var_2_781 = add i64 %var_2_755, -120
; Matched:%var_2_869:  %var_2_869 = add i64 %var_2_840, 43
; %var_2_782 = add i64 %var_2_750, 43
; Matched:\<badref\>:  store i64 %var_2_869, i64* %PC, align 8
; store i64 %var_2_782, i64* %var_2_3, align 8
; Matched:%var_2_783:  %var_2_783 = load i64, i64* %var_2_48, align 1
; %var_2_783 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_781 to i64*
; %var_2_784 = inttoptr i64 %var_2_781 to i64*
; Matched:\<badref\>:  store i64 %var_2_783, i64* %var_2_784, align 8
; store i64 %var_2_783, i64* %var_2_784, align 8
%var_2_785 = load i64, i64* %var_2_3, align 8
%var_2_786 = bitcast %union.VectorReg* %var_2_56 to <2 x i32>*
%var_2_787 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_788 = bitcast i64* %var_2_647 to <2 x i32>*
%var_2_789 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_790 = extractelement <2 x i32> %var_2_787, i32 0
; Matched:\<badref\>:  store i32 %var_2_953, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_790, i32* %var_2_696, align 1
%var_2_791 = extractelement <2 x i32> %var_2_787, i32 1
; Matched:\<badref\>:  store i32 %var_2_954, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_791, i32* %var_2_699, align 1
%var_2_792 = extractelement <2 x i32> %var_2_789, i32 0
; Matched:\<badref\>:  store i32 %var_2_955, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_792, i32* %var_2_701, align 1
%var_2_793 = extractelement <2 x i32> %var_2_789, i32 1
; Matched:\<badref\>:  store i32 %var_2_1210, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_793, i32* %var_2_704, align 1
%var_2_794 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_795 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_796 = extractelement <2 x i32> %var_2_794, i32 0
; Matched:\<badref\>:  store i32 %var_2_907, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_796, i32* %var_2_736, align 1
%var_2_797 = extractelement <2 x i32> %var_2_794, i32 1
; Matched:\<badref\>:  store i32 %var_2_908, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_797, i32* %var_2_739, align 1
%var_2_798 = extractelement <2 x i32> %var_2_795, i32 0
; Matched:\<badref\>:  store i32 %var_2_909, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_798, i32* %var_2_741, align 1
%var_2_799 = extractelement <2 x i32> %var_2_795, i32 1
; Matched:\<badref\>:  store i32 %var_2_910, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_799, i32* %var_2_744, align 1
%var_2_800 = add i64 %var_2_785, 857
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_785, 11
; %var_2_801 = add i64 %var_2_785, 11
%var_2_802 = load i64, i64* %var_2_6, align 8
%var_2_803 = add i64 %var_2_802, -8
; Matched:%var_2_804:  %var_2_804 = inttoptr i64 %var_2_803 to i64*
; %var_2_804 = inttoptr i64 %var_2_803 to i64*
; Matched:\<badref\>:  store i64 %var_2_801, i64* %var_2_804, align 8
; store i64 %var_2_801, i64* %var_2_804, align 8
; Matched:\<badref\>:  store i64 %var_2_78, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_803, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_800, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_800, i64* %var_2_3, align 8
%call2_4008ad = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_800, %struct.Memory* %call2_400877)
; Matched:%var_2_806:  %var_2_806 = load i64, i64* %RBP, align 8
; %var_2_805 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_807:  %var_2_807 = add i64 %var_2_806, -112
; %var_2_806 = add i64 %var_2_805, -112
%var_2_807 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_251, 5
; %var_2_808 = add i64 %var_2_807, 5
; Matched:\<badref\>:  store i64 %var_2_639, i64* %PC, align 8
; store i64 %var_2_808, i64* %var_2_3, align 8
; Matched:%var_2_810:  %var_2_810 = inttoptr i64 %var_2_807 to i64*
; %var_2_809 = inttoptr i64 %var_2_806 to i64*
; Matched:%var_2_811:  %var_2_811 = load i64, i64* %var_2_810, align 8
; %var_2_810 = load i64, i64* %var_2_809, align 8
; Matched:\<badref\>:  store i64 %var_2_811, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_810, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_812:  %var_2_812 = add i64 %var_2_806, -128
; %var_2_811 = add i64 %var_2_805, -128
; Matched:%var_2_813:  %var_2_813 = add i64 %var_2_808, 10
; %var_2_812 = add i64 %var_2_807, 10
; Matched:\<badref\>:  store i64 %var_2_643, i64* %PC, align 8
; store i64 %var_2_812, i64* %var_2_3, align 8
; Matched:%var_2_814:  %var_2_814 = load i64, i64* %var_2_48, align 1
; %var_2_813 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_815:  %var_2_815 = inttoptr i64 %var_2_812 to i64*
; %var_2_814 = inttoptr i64 %var_2_811 to i64*
; Matched:\<badref\>:  store i64 %var_2_814, i64* %var_2_815, align 8
; store i64 %var_2_813, i64* %var_2_814, align 8
%var_2_815 = load i64, i64* %var_2_3, align 8
%var_2_816 = bitcast %union.VectorReg* %var_2_47 to <2 x i32>*
%var_2_817 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_818 = bitcast i64* %var_2_179 to <2 x i32>*
%var_2_819 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_820 = extractelement <2 x i32> %var_2_817, i32 0
; Matched:\<badref\>:  store i32 %var_2_1242, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_820, i32* %var_2_696, align 1
%var_2_821 = extractelement <2 x i32> %var_2_817, i32 1
; Matched:\<badref\>:  store i32 %var_2_822, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_821, i32* %var_2_699, align 1
%var_2_822 = extractelement <2 x i32> %var_2_819, i32 0
; Matched:\<badref\>:  store i32 %var_2_1027, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_822, i32* %var_2_701, align 1
%var_2_823 = extractelement <2 x i32> %var_2_819, i32 1
; Matched:\<badref\>:  store i32 %var_2_824, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_823, i32* %var_2_704, align 1
; Matched:%var_2_825:  %var_2_825 = load i64, i64* %RBP, align 8
; %var_2_824 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_826:  %var_2_826 = add i64 %var_2_825, -120
; %var_2_825 = add i64 %var_2_824, -120
%var_2_826 = add i64 %var_2_815, 8
store i64 %var_2_826, i64* %var_2_3, align 8
; Matched:%var_2_828:  %var_2_828 = inttoptr i64 %var_2_826 to i64*
; %var_2_827 = inttoptr i64 %var_2_825 to i64*
; Matched:%var_2_829:  %var_2_829 = load i64, i64* %var_2_828, align 8
; %var_2_828 = load i64, i64* %var_2_827, align 8
; Matched:\<badref\>:  store i64 %var_2_829, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_828, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_830:  %var_2_830 = add i64 %var_2_825, -128
; %var_2_829 = add i64 %var_2_824, -128
; Matched:%var_2_844:  %var_2_844 = add i64 %var_2_840, 13
; %var_2_830 = add i64 %var_2_815, 13
; Matched:\<badref\>:  store i64 %var_2_844, i64* %PC, align 8
; store i64 %var_2_830, i64* %var_2_3, align 8
; Matched:%var_2_832:  %var_2_832 = inttoptr i64 %var_2_830 to i64*
; %var_2_831 = inttoptr i64 %var_2_829 to i64*
; Matched:%var_2_833:  %var_2_833 = load i64, i64* %var_2_832, align 8
; %var_2_832 = load i64, i64* %var_2_831, align 8
; Matched:\<badref\>:  store i64 %var_2_833, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_832, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_833 = add i64 %var_2_815, 1172
; Matched:%var_2_835:  %var_2_835 = add i64 %var_2_816, 18
; %var_2_834 = add i64 %var_2_815, 18
%var_2_835 = load i64, i64* %var_2_6, align 8
%var_2_836 = add i64 %var_2_835, -8
; Matched:%var_2_838:  %var_2_838 = inttoptr i64 %var_2_837 to i64*
; %var_2_837 = inttoptr i64 %var_2_836 to i64*
; Matched:\<badref\>:  store i64 %var_2_835, i64* %var_2_838, align 8
; store i64 %var_2_834, i64* %var_2_837, align 8
; Matched:\<badref\>:  store i64 %var_2_1349, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_836, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_834, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_833, i64* %var_2_3, align 8
%call2_4008c9 = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_833, %struct.Memory* %call2_4008ad)
%var_2_838 = load i64, i64* %var_2_3, align 8
%var_2_839 = add i64 %var_2_838, ptrtoint (%G_0x58a__rip__type* @G_0x58a__rip_ to i64)
%var_2_840 = add i64 %var_2_838, 8
store i64 %var_2_840, i64* %var_2_3, align 8
%var_2_841 = inttoptr i64 %var_2_839 to i64*
%var_2_842 = load i64, i64* %var_2_841, align 8
store i64 %var_2_842, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_843 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_843:  %var_2_843 = add i64 %var_2_842, -48
; %var_2_844 = add i64 %var_2_843, -48
; Matched:%var_2_1019:  %var_2_1019 = add i64 %var_2_1014, 13
; %var_2_845 = add i64 %var_2_838, 13
; Matched:\<badref\>:  store i64 %var_2_1265, i64* %PC, align 8
; store i64 %var_2_845, i64* %var_2_3, align 8
; Matched:%var_2_845:  %var_2_845 = inttoptr i64 %var_2_843 to i64*
; %var_2_846 = inttoptr i64 %var_2_844 to i64*
; Matched:%var_2_846:  %var_2_846 = load i64, i64* %var_2_845, align 8
; %var_2_847 = load i64, i64* %var_2_846, align 8
; Matched:\<badref\>:  store i64 %var_2_846, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_847, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_848 = add i64 %var_2_843, -76
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_334, 17
; %var_2_849 = add i64 %var_2_838, 17
; Matched:\<badref\>:  store i64 %var_2_564, i64* %PC, align 8
; store i64 %var_2_849, i64* %var_2_3, align 8
%var_2_850 = inttoptr i64 %var_2_848 to i32*
%var_2_851 = load i32, i32* %var_2_850, align 4
%var_2_852 = sext i32 %var_2_851 to i64
; Matched:\<badref\>:  store i64 %var_2_851, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_852, i64* %RCX.i523, align 8
%var_2_853 = shl nsw i64 %var_2_852, 2
%var_2_854 = add nsw i64 %var_2_853, 6300752
; Matched:%var_2_932:  %var_2_932 = add i64 %var_2_917, 24
; %var_2_855 = add i64 %var_2_838, 24
; Matched:\<badref\>:  store i64 %var_2_932, i64* %PC, align 8
; store i64 %var_2_855, i64* %var_2_3, align 8
%var_2_856 = inttoptr i64 %var_2_854 to i32*
%var_2_857 = load i32, i32* %var_2_856, align 4
%var_2_858 = zext i32 %var_2_857 to i64
store i64 %var_2_858, i64* %RDI.i425, align 8
; Matched:%var_2_1302:  %var_2_1302 = add i64 %var_2_1263, -8
; %var_2_859 = add i64 %var_2_843, -8
; Matched:%var_2_1186:  %var_2_1186 = add i64 %var_2_1148, 29
; %var_2_860 = add i64 %var_2_838, 29
; Matched:\<badref\>:  store i64 %var_2_1186, i64* %PC, align 8
; store i64 %var_2_860, i64* %var_2_3, align 8
; Matched:%var_2_860:  %var_2_860 = inttoptr i64 %var_2_858 to i64*
; %var_2_861 = inttoptr i64 %var_2_859 to i64*
; Matched:%var_2_861:  %var_2_861 = load i64, i64* %var_2_860, align 8
; %var_2_862 = load i64, i64* %var_2_861, align 8
; Matched:\<badref\>:  store i64 %var_2_668, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_862, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
%var_2_863 = add i64 %var_2_843, -16
; Matched:%var_2_863:  %var_2_863 = add i64 %var_2_840, 34
; %var_2_864 = add i64 %var_2_838, 34
; Matched:\<badref\>:  store i64 %var_2_863, i64* %PC, align 8
; store i64 %var_2_864, i64* %var_2_3, align 8
%var_2_865 = inttoptr i64 %var_2_863 to double*
%var_2_866 = load double, double* %var_2_865, align 8
%var_2_867 = bitcast i64 %var_2_842 to double
%var_2_868 = fsub double %var_2_866, %var_2_867
store double %var_2_868, double* %var_2_674, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_676, align 1
; Matched:%var_2_942:  %var_2_942 = add i64 %var_2_919, -24
; %var_2_869 = add i64 %var_2_843, -24
; Matched:%var_2_1196:  %var_2_1196 = add i64 %var_2_1148, 43
; %var_2_870 = add i64 %var_2_838, 43
; Matched:\<badref\>:  store i64 %var_2_1196, i64* %PC, align 8
; store i64 %var_2_870, i64* %var_2_3, align 8
; Matched:%var_2_870:  %var_2_870 = inttoptr i64 %var_2_868 to i64*
; %var_2_871 = inttoptr i64 %var_2_869 to i64*
; Matched:%var_2_871:  %var_2_871 = load i64, i64* %var_2_870, align 8
; %var_2_872 = load i64, i64* %var_2_871, align 8
; Matched:\<badref\>:  store i64 %var_2_871, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_872, i64* %var_2_53, align 1
; Matched:%var_2_872:  %var_2_872 = add i64 %var_2_842, -136
; %var_2_873 = add i64 %var_2_843, -136
; Matched:%var_2_873:  %var_2_873 = add i64 %var_2_840, 51
; %var_2_874 = add i64 %var_2_838, 51
; Matched:\<badref\>:  store i64 %var_2_873, i64* %PC, align 8
; store i64 %var_2_874, i64* %var_2_3, align 8
; Matched:%var_2_874:  %var_2_874 = load i64, i64* %var_2_48, align 1
; %var_2_875 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_875:  %var_2_875 = inttoptr i64 %var_2_872 to i64*
; %var_2_876 = inttoptr i64 %var_2_873 to i64*
; Matched:\<badref\>:  store i64 %var_2_874, i64* %var_2_875, align 8
; store i64 %var_2_875, i64* %var_2_876, align 8
%var_2_877 = load i64, i64* %var_2_3, align 8
%var_2_878 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_879 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_880 = extractelement <2 x i32> %var_2_878, i32 0
; Matched:\<badref\>:  store i32 %var_2_697, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_880, i32* %var_2_696, align 1
%var_2_881 = extractelement <2 x i32> %var_2_878, i32 1
; Matched:\<badref\>:  store i32 %var_2_699, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_881, i32* %var_2_699, align 1
%var_2_882 = extractelement <2 x i32> %var_2_879, i32 0
; Matched:\<badref\>:  store i32 %var_2_881, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_882, i32* %var_2_701, align 1
%var_2_883 = extractelement <2 x i32> %var_2_879, i32 1
; Matched:\<badref\>:  store i32 %var_2_882, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_883, i32* %var_2_704, align 1
; Matched:%var_2_883:  %var_2_883 = load i64, i64* %RBP, align 8
; %var_2_884 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_884:  %var_2_884 = add i64 %var_2_883, -144
; %var_2_885 = add i64 %var_2_884, -144
; Matched:%var_2_1152:  %var_2_1152 = add i64 %var_2_1148, 11
; %var_2_886 = add i64 %var_2_877, 11
; Matched:\<badref\>:  store i64 %var_2_1453, i64* %PC, align 8
; store i64 %var_2_886, i64* %var_2_3, align 8
; Matched:%var_2_886:  %var_2_886 = load i64, i64* %var_2_56, align 1
; %var_2_887 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_887:  %var_2_887 = inttoptr i64 %var_2_884 to i64*
; %var_2_888 = inttoptr i64 %var_2_885 to i64*
; Matched:\<badref\>:  store i64 %var_2_886, i64* %var_2_887, align 8
; store i64 %var_2_887, i64* %var_2_888, align 8
%var_2_889 = load i64, i64* %var_2_3, align 8
%var_2_890 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_891 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_892 = extractelement <2 x i32> %var_2_890, i32 0
; Matched:\<badref\>:  store i32 %var_2_1330, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_892, i32* %var_2_716, align 1
%var_2_893 = extractelement <2 x i32> %var_2_890, i32 1
; Matched:\<badref\>:  store i32 %var_2_892, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_893, i32* %var_2_719, align 1
%var_2_894 = extractelement <2 x i32> %var_2_891, i32 0
; Matched:\<badref\>:  store i32 %var_2_893, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_894, i32* %var_2_721, align 1
%var_2_895 = extractelement <2 x i32> %var_2_891, i32 1
; Matched:\<badref\>:  store i32 %var_2_724, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_895, i32* %var_2_724, align 1
; Matched:%var_2_895:  %var_2_895 = load i64, i64* %RBP, align 8
; %var_2_896 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_896:  %var_2_896 = add i64 %var_2_895, -144
; %var_2_897 = add i64 %var_2_896, -144
; Matched:%var_2_971:  %var_2_971 = add i64 %var_2_962, 11
; %var_2_898 = add i64 %var_2_889, 11
; Matched:\<badref\>:  store i64 %var_2_1356, i64* %PC, align 8
; store i64 %var_2_898, i64* %var_2_3, align 8
; Matched:%var_2_898:  %var_2_898 = inttoptr i64 %var_2_896 to i64*
; %var_2_899 = inttoptr i64 %var_2_897 to i64*
; Matched:%var_2_899:  %var_2_899 = load i64, i64* %var_2_898, align 8
; %var_2_900 = load i64, i64* %var_2_899, align 8
; Matched:\<badref\>:  store i64 %var_2_899, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_900, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
; Matched:%var_2_900:  %var_2_900 = add i64 %var_2_895, -152
; %var_2_901 = add i64 %var_2_896, -152
; Matched:%var_2_1521:  %var_2_1521 = add i64 %var_2_1508, 19
; %var_2_902 = add i64 %var_2_889, 19
; Matched:\<badref\>:  store i64 %var_2_1521, i64* %PC, align 8
; store i64 %var_2_902, i64* %var_2_3, align 8
; Matched:%var_2_902:  %var_2_902 = load i64, i64* %var_2_63, align 1
; %var_2_903 = load i64, i64* %var_2_61, align 1
; Matched:%var_2_903:  %var_2_903 = inttoptr i64 %var_2_900 to i64*
; %var_2_904 = inttoptr i64 %var_2_901 to i64*
; Matched:\<badref\>:  store i64 %var_2_902, i64* %var_2_903, align 8
; store i64 %var_2_903, i64* %var_2_904, align 8
%var_2_905 = load i64, i64* %var_2_3, align 8
%var_2_906 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_907 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_908 = extractelement <2 x i32> %var_2_906, i32 0
; Matched:\<badref\>:  store i32 %var_2_796, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_908, i32* %var_2_736, align 1
%var_2_909 = extractelement <2 x i32> %var_2_906, i32 1
; Matched:\<badref\>:  store i32 %var_2_797, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_909, i32* %var_2_739, align 1
%var_2_910 = extractelement <2 x i32> %var_2_907, i32 0
; Matched:\<badref\>:  store i32 %var_2_798, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_910, i32* %var_2_741, align 1
%var_2_911 = extractelement <2 x i32> %var_2_907, i32 1
; Matched:\<badref\>:  store i32 %var_2_799, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_911, i32* %var_2_744, align 1
%var_2_912 = add i64 %var_2_905, 737
; Matched:%var_2_912:  %var_2_912 = add i64 %var_2_904, 8
; %var_2_913 = add i64 %var_2_905, 8
%var_2_914 = load i64, i64* %var_2_6, align 8
%var_2_915 = add i64 %var_2_914, -8
; Matched:%var_2_915:  %var_2_915 = inttoptr i64 %var_2_914 to i64*
; %var_2_916 = inttoptr i64 %var_2_915 to i64*
; Matched:\<badref\>:  store i64 %var_2_1347, i64* %var_2_1350, align 8
; store i64 %var_2_913, i64* %var_2_916, align 8
; Matched:\<badref\>:  store i64 %var_2_837, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_915, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_911, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_912, i64* %var_2_3, align 8
%call2_400922 = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_912, %struct.Memory* %call2_4008c9)
%var_2_917 = load i64, i64* %var_2_3, align 8
%var_2_918 = add i64 %var_2_917, ptrtoint (%G_0x531__rip__type* @G_0x531__rip_ to i64)
%var_2_919 = add i64 %var_2_917, 8
store i64 %var_2_919, i64* %var_2_3, align 8
%var_2_920 = inttoptr i64 %var_2_918 to i64*
%var_2_921 = load i64, i64* %var_2_920, align 8
store i64 %var_2_921, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_922 = load i64, i64* %RBP.i, align 8
%var_2_923 = add i64 %var_2_922, -88
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_81, 12
; %var_2_924 = add i64 %var_2_917, 12
; Matched:\<badref\>:  store i64 %var_2_98, i64* %PC, align 8
; store i64 %var_2_924, i64* %var_2_3, align 8
%var_2_925 = inttoptr i64 %var_2_923 to i32*
%var_2_926 = load i32, i32* %var_2_925, align 4
%var_2_927 = sext i32 %var_2_926 to i64
; Matched:\<badref\>:  store i64 %var_2_924, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_927, i64* %RCX.i523, align 8
%var_2_928 = shl nsw i64 %var_2_927, 2
%var_2_929 = add nsw i64 %var_2_928, 6300752
; Matched:%var_2_1252:  %var_2_1252 = add i64 %var_2_1239, 19
; %var_2_930 = add i64 %var_2_917, 19
; Matched:\<badref\>:  store i64 %var_2_1252, i64* %PC, align 8
; store i64 %var_2_930, i64* %var_2_3, align 8
%var_2_931 = inttoptr i64 %var_2_929 to i32*
%var_2_932 = load i32, i32* %var_2_931, align 4
%var_2_933 = zext i32 %var_2_932 to i64
store i64 %var_2_933, i64* %RDI.i425, align 8
%var_2_934 = add i64 %var_2_922, -8
; Matched:%var_2_854:  %var_2_854 = add i64 %var_2_840, 24
; %var_2_935 = add i64 %var_2_917, 24
; Matched:\<badref\>:  store i64 %var_2_854, i64* %PC, align 8
; store i64 %var_2_935, i64* %var_2_3, align 8
%var_2_936 = inttoptr i64 %var_2_934 to double*
%var_2_937 = load double, double* %var_2_936, align 8
%var_2_938 = bitcast i64 %var_2_921 to double
%var_2_939 = fsub double %var_2_937, %var_2_938
store double %var_2_939, double* %var_2_646, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_652, align 1, !tbaa !1284
; store i64 0, i64* %var_2_647, align 1
%var_2_940 = add i64 %var_2_922, -16
; Matched:%var_2_774:  %var_2_774 = add i64 %var_2_753, 33
; %var_2_941 = add i64 %var_2_917, 33
; Matched:\<badref\>:  store i64 %var_2_938, i64* %PC, align 8
; store i64 %var_2_941, i64* %var_2_3, align 8
%var_2_942 = inttoptr i64 %var_2_940 to double*
%var_2_943 = load double, double* %var_2_942, align 8
%var_2_944 = fsub double %var_2_943, %var_2_938
store double %var_2_944, double* %var_2_665, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_671, align 1, !tbaa !1284
; store i64 0, i64* %var_2_667, align 1
; Matched:%var_2_868:  %var_2_868 = add i64 %var_2_842, -24
; %var_2_945 = add i64 %var_2_922, -24
; Matched:%var_2_943:  %var_2_943 = add i64 %var_2_917, 42
; %var_2_946 = add i64 %var_2_917, 42
; Matched:\<badref\>:  store i64 %var_2_943, i64* %PC, align 8
; store i64 %var_2_946, i64* %var_2_3, align 8
; Matched:%var_2_944:  %var_2_944 = inttoptr i64 %var_2_942 to i64*
; %var_2_947 = inttoptr i64 %var_2_945 to i64*
; Matched:%var_2_945:  %var_2_945 = load i64, i64* %var_2_944, align 8
; %var_2_948 = load i64, i64* %var_2_947, align 8
; Matched:\<badref\>:  store i64 %var_2_945, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_948, i64* %var_2_53, align 1
; Matched:%var_2_946:  %var_2_946 = add i64 %var_2_919, -160
; %var_2_949 = add i64 %var_2_922, -160
; Matched:%var_2_947:  %var_2_947 = add i64 %var_2_917, 50
; %var_2_950 = add i64 %var_2_917, 50
; Matched:\<badref\>:  store i64 %var_2_947, i64* %PC, align 8
; store i64 %var_2_950, i64* %var_2_3, align 8
; Matched:%var_2_948:  %var_2_948 = load i64, i64* %var_2_48, align 1
; %var_2_951 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_949:  %var_2_949 = inttoptr i64 %var_2_946 to i64*
; %var_2_952 = inttoptr i64 %var_2_949 to i64*
; Matched:\<badref\>:  store i64 %var_2_948, i64* %var_2_949, align 8
; store i64 %var_2_951, i64* %var_2_952, align 8
%var_2_953 = load i64, i64* %var_2_3, align 8
%var_2_954 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_955 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_956 = extractelement <2 x i32> %var_2_954, i32 0
; Matched:\<badref\>:  store i32 %var_2_1207, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_956, i32* %var_2_696, align 1
%var_2_957 = extractelement <2 x i32> %var_2_954, i32 1
; Matched:\<badref\>:  store i32 %var_2_1208, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_957, i32* %var_2_699, align 1
%var_2_958 = extractelement <2 x i32> %var_2_955, i32 0
; Matched:\<badref\>:  store i32 %var_2_1209, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_958, i32* %var_2_701, align 1
%var_2_959 = extractelement <2 x i32> %var_2_955, i32 1
; Matched:\<badref\>:  store i32 %var_2_1415, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_959, i32* %var_2_704, align 1
; Matched:%var_2_957:  %var_2_957 = load i64, i64* %RBP, align 8
; %var_2_960 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_958:  %var_2_958 = add i64 %var_2_957, -168
; %var_2_961 = add i64 %var_2_960, -168
; Matched:%var_2_1356:  %var_2_1356 = add i64 %var_2_1352, 11
; %var_2_962 = add i64 %var_2_953, 11
; Matched:\<badref\>:  store i64 %var_2_1485, i64* %PC, align 8
; store i64 %var_2_962, i64* %var_2_3, align 8
; Matched:%var_2_960:  %var_2_960 = load i64, i64* %var_2_56, align 1
; %var_2_963 = load i64, i64* %var_2_53, align 1
; Matched:%var_2_961:  %var_2_961 = inttoptr i64 %var_2_958 to i64*
; %var_2_964 = inttoptr i64 %var_2_961 to i64*
; Matched:\<badref\>:  store i64 %var_2_960, i64* %var_2_961, align 8
; store i64 %var_2_963, i64* %var_2_964, align 8
%var_2_965 = load i64, i64* %var_2_3, align 8
%var_2_966 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_967 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_968 = extractelement <2 x i32> %var_2_966, i32 0
; Matched:\<badref\>:  store i32 %var_2_1213, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_968, i32* %var_2_716, align 1
%var_2_969 = extractelement <2 x i32> %var_2_966, i32 1
; Matched:\<badref\>:  store i32 %var_2_1214, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_969, i32* %var_2_719, align 1
%var_2_970 = extractelement <2 x i32> %var_2_967, i32 0
; Matched:\<badref\>:  store i32 %var_2_1420, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_970, i32* %var_2_721, align 1
%var_2_971 = extractelement <2 x i32> %var_2_967, i32 1
; Matched:\<badref\>:  store i32 %var_2_1421, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_971, i32* %var_2_724, align 1
; Matched:%var_2_969:  %var_2_969 = load i64, i64* %RBP, align 8
; %var_2_972 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_970:  %var_2_970 = add i64 %var_2_969, -168
; %var_2_973 = add i64 %var_2_972, -168
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_287, 11
; %var_2_974 = add i64 %var_2_965, 11
; Matched:\<badref\>:  store i64 %var_2_1031, i64* %PC, align 8
; store i64 %var_2_974, i64* %var_2_3, align 8
; Matched:%var_2_972:  %var_2_972 = inttoptr i64 %var_2_970 to i64*
; %var_2_975 = inttoptr i64 %var_2_973 to i64*
; Matched:%var_2_973:  %var_2_973 = load i64, i64* %var_2_972, align 8
; %var_2_976 = load i64, i64* %var_2_975, align 8
; Matched:\<badref\>:  store i64 %var_2_973, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_976, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_977 = add i64 %var_2_965, 668
; Matched:%var_2_975:  %var_2_975 = add i64 %var_2_962, 16
; %var_2_978 = add i64 %var_2_965, 16
%var_2_979 = load i64, i64* %var_2_6, align 8
%var_2_980 = add i64 %var_2_979, -8
; Matched:%var_2_978:  %var_2_978 = inttoptr i64 %var_2_977 to i64*
; %var_2_981 = inttoptr i64 %var_2_980 to i64*
; Matched:\<badref\>:  store i64 %var_2_975, i64* %var_2_978, align 8
; store i64 %var_2_978, i64* %var_2_981, align 8
; Matched:\<badref\>:  store i64 %var_2_218, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_980, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_974, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_977, i64* %var_2_3, align 8
%call2_40096f = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_977, %struct.Memory* %call2_400922)
; Matched:%var_2_980:  %var_2_980 = load i64, i64* %RBP, align 8
; %var_2_982 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_981:  %var_2_981 = add i64 %var_2_980, -152
; %var_2_983 = add i64 %var_2_982, -152
%var_2_984 = load i64, i64* %var_2_3, align 8
%var_2_985 = add i64 %var_2_984, 8
store i64 %var_2_985, i64* %var_2_3, align 8
; Matched:%var_2_984:  %var_2_984 = inttoptr i64 %var_2_981 to i64*
; %var_2_986 = inttoptr i64 %var_2_983 to i64*
; Matched:%var_2_985:  %var_2_985 = load i64, i64* %var_2_984, align 8
; %var_2_987 = load i64, i64* %var_2_986, align 8
; Matched:\<badref\>:  store i64 %var_2_985, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_987, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_986:  %var_2_986 = add i64 %var_2_980, -176
; %var_2_988 = add i64 %var_2_982, -176
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_451, 16
; %var_2_989 = add i64 %var_2_984, 16
; Matched:\<badref\>:  store i64 %var_2_481, i64* %PC, align 8
; store i64 %var_2_989, i64* %var_2_3, align 8
; Matched:%var_2_988:  %var_2_988 = load i64, i64* %var_2_48, align 1
; %var_2_990 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_989:  %var_2_989 = inttoptr i64 %var_2_986 to i64*
; %var_2_991 = inttoptr i64 %var_2_988 to i64*
; Matched:\<badref\>:  store i64 %var_2_988, i64* %var_2_989, align 8
; store i64 %var_2_990, i64* %var_2_991, align 8
%var_2_992 = load i64, i64* %var_2_3, align 8
%var_2_993 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_994 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_995 = extractelement <2 x i32> %var_2_993, i32 0
; Matched:\<badref\>:  store i32 %var_2_993, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_995, i32* %var_2_696, align 1
%var_2_996 = extractelement <2 x i32> %var_2_993, i32 1
; Matched:\<badref\>:  store i32 %var_2_1512, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_996, i32* %var_2_699, align 1
%var_2_997 = extractelement <2 x i32> %var_2_994, i32 0
; Matched:\<badref\>:  store i32 %var_2_1449, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_997, i32* %var_2_701, align 1
%var_2_998 = extractelement <2 x i32> %var_2_994, i32 1
; Matched:\<badref\>:  store i32 %var_2_1514, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_998, i32* %var_2_704, align 1
; Matched:%var_2_997:  %var_2_997 = load i64, i64* %RBP, align 8
; %var_2_999 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_998:  %var_2_998 = add i64 %var_2_997, -160
; %var_2_1000 = add i64 %var_2_999, -160
; Matched:%var_2_885:  %var_2_885 = add i64 %var_2_876, 11
; %var_2_1001 = add i64 %var_2_992, 11
; Matched:\<badref\>:  store i64 %var_2_971, i64* %PC, align 8
; store i64 %var_2_1001, i64* %var_2_3, align 8
; Matched:%var_2_1000:  %var_2_1000 = inttoptr i64 %var_2_998 to i64*
; %var_2_1002 = inttoptr i64 %var_2_1000 to i64*
; Matched:%var_2_1001:  %var_2_1001 = load i64, i64* %var_2_1000, align 8
; %var_2_1003 = load i64, i64* %var_2_1002, align 8
; Matched:\<badref\>:  store i64 %var_2_1001, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1003, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1002:  %var_2_1002 = add i64 %var_2_997, -176
; %var_2_1004 = add i64 %var_2_999, -176
; Matched:%var_2_1457:  %var_2_1457 = add i64 %var_2_1444, 19
; %var_2_1005 = add i64 %var_2_992, 19
; Matched:\<badref\>:  store i64 %var_2_1003, i64* %PC, align 8
; store i64 %var_2_1005, i64* %var_2_3, align 8
; Matched:%var_2_1004:  %var_2_1004 = inttoptr i64 %var_2_1002 to i64*
; %var_2_1006 = inttoptr i64 %var_2_1004 to i64*
; Matched:%var_2_1005:  %var_2_1005 = load i64, i64* %var_2_1004, align 8
; %var_2_1007 = load i64, i64* %var_2_1006, align 8
; Matched:\<badref\>:  store i64 %var_2_1005, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1007, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1008 = add i64 %var_2_992, 972
; Matched:%var_2_1461:  %var_2_1461 = add i64 %var_2_1444, 24
; %var_2_1009 = add i64 %var_2_992, 24
%var_2_1010 = load i64, i64* %var_2_6, align 8
%var_2_1011 = add i64 %var_2_1010, -8
; Matched:%var_2_1259:  %var_2_1259 = inttoptr i64 %var_2_1258 to i64*
; %var_2_1012 = inttoptr i64 %var_2_1011 to i64*
; Matched:\<badref\>:  store i64 %var_2_1039, i64* %var_2_1042, align 8
; store i64 %var_2_1009, i64* %var_2_1012, align 8
; Matched:\<badref\>:  store i64 %var_2_803, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1011, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1006, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1008, i64* %var_2_3, align 8
%call2_400997 = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1008, %struct.Memory* %call2_40096f)
; Matched:%var_2_1012:  %var_2_1012 = load i64, i64* %RBP, align 8
; %var_2_1013 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1013:  %var_2_1013 = add i64 %var_2_1012, -104
; %var_2_1014 = add i64 %var_2_1013, -104
%var_2_1015 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, 5
; %var_2_1016 = add i64 %var_2_1015, 5
; Matched:\<badref\>:  store i64 %var_2_234, i64* %PC, align 8
; store i64 %var_2_1016, i64* %var_2_3, align 8
; Matched:%var_2_1016:  %var_2_1016 = inttoptr i64 %var_2_1013 to i64*
; %var_2_1017 = inttoptr i64 %var_2_1014 to i64*
; Matched:%var_2_1017:  %var_2_1017 = load i64, i64* %var_2_1016, align 8
; %var_2_1018 = load i64, i64* %var_2_1017, align 8
; Matched:\<badref\>:  store i64 %var_2_1017, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1018, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1018:  %var_2_1018 = add i64 %var_2_1012, -184
; %var_2_1019 = add i64 %var_2_1013, -184
; Matched:%var_2_1048:  %var_2_1048 = add i64 %var_2_1044, 13
; %var_2_1020 = add i64 %var_2_1015, 13
; Matched:\<badref\>:  store i64 %var_2_1048, i64* %PC, align 8
; store i64 %var_2_1020, i64* %var_2_3, align 8
; Matched:%var_2_1020:  %var_2_1020 = load i64, i64* %var_2_48, align 1
; %var_2_1021 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1021:  %var_2_1021 = inttoptr i64 %var_2_1018 to i64*
; %var_2_1022 = inttoptr i64 %var_2_1019 to i64*
; Matched:\<badref\>:  store i64 %var_2_1020, i64* %var_2_1021, align 8
; store i64 %var_2_1021, i64* %var_2_1022, align 8
%var_2_1023 = load i64, i64* %var_2_3, align 8
%var_2_1024 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_1025 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_1026 = extractelement <2 x i32> %var_2_1024, i32 0
; Matched:\<badref\>:  store i32 %var_2_821, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1026, i32* %var_2_696, align 1
%var_2_1027 = extractelement <2 x i32> %var_2_1024, i32 1
; Matched:\<badref\>:  store i32 %var_2_1026, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1027, i32* %var_2_699, align 1
%var_2_1028 = extractelement <2 x i32> %var_2_1025, i32 0
; Matched:\<badref\>:  store i32 %var_2_1244, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1028, i32* %var_2_701, align 1
%var_2_1029 = extractelement <2 x i32> %var_2_1025, i32 1
; Matched:\<badref\>:  store i32 %var_2_1028, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1029, i32* %var_2_704, align 1
; Matched:%var_2_1029:  %var_2_1029 = load i64, i64* %RBP, align 8
; %var_2_1030 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1030:  %var_2_1030 = add i64 %var_2_1029, -136
; %var_2_1031 = add i64 %var_2_1030, -136
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_334, 11
; %var_2_1032 = add i64 %var_2_1023, 11
; Matched:\<badref\>:  store i64 %var_2_294, i64* %PC, align 8
; store i64 %var_2_1032, i64* %var_2_3, align 8
; Matched:%var_2_1032:  %var_2_1032 = inttoptr i64 %var_2_1030 to i64*
; %var_2_1033 = inttoptr i64 %var_2_1031 to i64*
; Matched:%var_2_1033:  %var_2_1033 = load i64, i64* %var_2_1032, align 8
; %var_2_1034 = load i64, i64* %var_2_1033, align 8
; Matched:\<badref\>:  store i64 %var_2_1033, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1034, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1034:  %var_2_1034 = add i64 %var_2_1029, -184
; %var_2_1035 = add i64 %var_2_1030, -184
; Matched:%var_2_655:  %var_2_655 = add i64 %var_2_638, 19
; %var_2_1036 = add i64 %var_2_1023, 19
; Matched:\<badref\>:  store i64 %var_2_655, i64* %PC, align 8
; store i64 %var_2_1036, i64* %var_2_3, align 8
; Matched:%var_2_1036:  %var_2_1036 = inttoptr i64 %var_2_1034 to i64*
; %var_2_1037 = inttoptr i64 %var_2_1035 to i64*
; Matched:%var_2_1037:  %var_2_1037 = load i64, i64* %var_2_1036, align 8
; %var_2_1038 = load i64, i64* %var_2_1037, align 8
; Matched:\<badref\>:  store i64 %var_2_1037, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1038, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1039 = add i64 %var_2_1023, 935
; Matched:%var_2_1525:  %var_2_1525 = add i64 %var_2_1508, 24
; %var_2_1040 = add i64 %var_2_1023, 24
%var_2_1041 = load i64, i64* %var_2_6, align 8
%var_2_1042 = add i64 %var_2_1041, -8
; Matched:%var_2_1496:  %var_2_1496 = inttoptr i64 %var_2_1495 to i64*
; %var_2_1043 = inttoptr i64 %var_2_1042 to i64*
; Matched:\<badref\>:  store i64 %var_2_1461, i64* %var_2_1464, align 8
; store i64 %var_2_1040, i64* %var_2_1043, align 8
; Matched:\<badref\>:  store i64 %var_2_240, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1042, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1038, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1039, i64* %var_2_3, align 8
%call2_4009bc = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1039, %struct.Memory* %call2_400997)
%var_2_1044 = load i64, i64* %var_2_3, align 8
%var_2_1045 = add i64 %var_2_1044, ptrtoint (%G_0x497__rip__type* @G_0x497__rip_ to i64)
%var_2_1046 = add i64 %var_2_1044, 8
store i64 %var_2_1046, i64* %var_2_3, align 8
%var_2_1047 = inttoptr i64 %var_2_1045 to i64*
%var_2_1048 = load i64, i64* %var_2_1047, align 8
store i64 %var_2_1048, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_1049 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1047:  %var_2_1047 = add i64 %var_2_1046, -56
; %var_2_1050 = add i64 %var_2_1049, -56
; Matched:%var_2_1265:  %var_2_1265 = add i64 %var_2_1261, 13
; %var_2_1051 = add i64 %var_2_1044, 13
; Matched:\<badref\>:  store i64 %var_2_831, i64* %PC, align 8
; store i64 %var_2_1051, i64* %var_2_3, align 8
; Matched:%var_2_1049:  %var_2_1049 = inttoptr i64 %var_2_1047 to i64*
; %var_2_1052 = inttoptr i64 %var_2_1050 to i64*
; Matched:%var_2_1050:  %var_2_1050 = load i64, i64* %var_2_1049, align 8
; %var_2_1053 = load i64, i64* %var_2_1052, align 8
; Matched:\<badref\>:  store i64 %var_2_1050, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1053, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
; Matched:%var_2_1051:  %var_2_1051 = add i64 %var_2_1046, -48
; %var_2_1054 = add i64 %var_2_1049, -48
; Matched:%var_2_1052:  %var_2_1052 = add i64 %var_2_1044, 18
; %var_2_1055 = add i64 %var_2_1044, 18
; Matched:\<badref\>:  store i64 %var_2_1052, i64* %PC, align 8
; store i64 %var_2_1055, i64* %var_2_3, align 8
; Matched:%var_2_1053:  %var_2_1053 = inttoptr i64 %var_2_1051 to i64*
; %var_2_1056 = inttoptr i64 %var_2_1054 to i64*
; Matched:%var_2_1054:  %var_2_1054 = load i64, i64* %var_2_1053, align 8
; %var_2_1057 = load i64, i64* %var_2_1056, align 8
; Matched:\<badref\>:  store i64 %var_2_1054, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_1057, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
%var_2_1058 = add i64 %var_2_1049, -72
; Matched:%var_2_1056:  %var_2_1056 = add i64 %var_2_1044, 21
; %var_2_1059 = add i64 %var_2_1044, 21
; Matched:\<badref\>:  store i64 %var_2_1056, i64* %PC, align 8
; store i64 %var_2_1059, i64* %var_2_3, align 8
%var_2_1060 = inttoptr i64 %var_2_1058 to i32*
%var_2_1061 = load i32, i32* %var_2_1060, align 4
%var_2_1062 = add i32 %var_2_1061, 1
; Matched:%var_2_1060:  %var_2_1060 = zext i32 %var_2_1059 to i64
; %var_2_1063 = zext i32 %var_2_1062 to i64
; Matched:\<badref\>:  store i64 %var_2_1060, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1063, i64* %RAX.i629, align 8
; Matched:%var_2_1061:  %var_2_1061 = icmp eq i32 %var_2_1058, -1
; %var_2_1064 = icmp eq i32 %var_2_1061, -1
; Matched:%var_2_1062:  %var_2_1062 = icmp eq i32 %var_2_1059, 0
; %var_2_1065 = icmp eq i32 %var_2_1062, 0
; Matched:%var_2_1063:  %var_2_1063 = or i1 %var_2_1061, %var_2_1062
; %var_2_1066 = or i1 %var_2_1064, %var_2_1065
; Matched:%var_2_1064:  %var_2_1064 = zext i1 %var_2_1063 to i8
; %var_2_1067 = zext i1 %var_2_1066 to i8
; Matched:\<badref\>:  store i8 %var_2_1064, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1067, i8* %var_2_14, align 1
; Matched:%var_2_1065:  %var_2_1065 = and i32 %var_2_1059, 255
; %var_2_1068 = and i32 %var_2_1062, 255
; Matched:%var_2_1066:  %var_2_1066 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1065) #12
; %var_2_1069 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1068)
; Matched:%var_2_1067:  %var_2_1067 = trunc i32 %var_2_1066 to i8
; %var_2_1070 = trunc i32 %var_2_1069 to i8
; Matched:%var_2_1068:  %var_2_1068 = and i8 %var_2_1067, 1
; %var_2_1071 = and i8 %var_2_1070, 1
; Matched:%var_2_1069:  %var_2_1069 = xor i8 %var_2_1068, 1
; %var_2_1072 = xor i8 %var_2_1071, 1
; Matched:\<badref\>:  store i8 %var_2_1069, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1072, i8* %var_2_21, align 1
; Matched:%var_2_1070:  %var_2_1070 = xor i32 %var_2_1059, %var_2_1058
; %var_2_1073 = xor i32 %var_2_1062, %var_2_1061
; Matched:%var_2_1071:  %var_2_1071 = lshr i32 %var_2_1070, 4
; %var_2_1074 = lshr i32 %var_2_1073, 4
; Matched:%var_2_1072:  %var_2_1072 = trunc i32 %var_2_1071 to i8
; %var_2_1075 = trunc i32 %var_2_1074 to i8
; Matched:%var_2_1073:  %var_2_1073 = and i8 %var_2_1072, 1
; %var_2_1076 = and i8 %var_2_1075, 1
; Matched:\<badref\>:  store i8 %var_2_1073, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_1076, i8* %var_2_27, align 1
; Matched:%var_2_1074:  %var_2_1074 = zext i1 %var_2_1062 to i8
; %var_2_1077 = zext i1 %var_2_1065 to i8
; Matched:\<badref\>:  store i8 %var_2_1074, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_1077, i8* %var_2_30, align 1
; Matched:%var_2_1075:  %var_2_1075 = lshr i32 %var_2_1059, 31
; %var_2_1078 = lshr i32 %var_2_1062, 31
; Matched:%var_2_1076:  %var_2_1076 = trunc i32 %var_2_1075 to i8
; %var_2_1079 = trunc i32 %var_2_1078 to i8
; Matched:\<badref\>:  store i8 %var_2_1076, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_1079, i8* %var_2_33, align 1
; Matched:%var_2_1077:  %var_2_1077 = lshr i32 %var_2_1058, 31
; %var_2_1080 = lshr i32 %var_2_1061, 31
; Matched:%var_2_1078:  %var_2_1078 = xor i32 %var_2_1075, %var_2_1077
; %var_2_1081 = xor i32 %var_2_1078, %var_2_1080
; Matched:%var_2_1079:  %var_2_1079 = add nuw nsw i32 %var_2_1078, %var_2_1075
; %var_2_1082 = add nuw nsw i32 %var_2_1081, %var_2_1078
; Matched:%var_2_1080:  %var_2_1080 = icmp eq i32 %var_2_1079, 2
; %var_2_1083 = icmp eq i32 %var_2_1082, 2
; Matched:%var_2_1081:  %var_2_1081 = zext i1 %var_2_1080 to i8
; %var_2_1084 = zext i1 %var_2_1083 to i8
; Matched:\<badref\>:  store i8 %var_2_1081, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_1084, i8* %var_2_39, align 1
%var_2_1085 = sext i32 %var_2_1062 to i64
; Matched:\<badref\>:  store i64 %var_2_1082, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1085, i64* %RCX.i523, align 8
%var_2_1086 = shl nsw i64 %var_2_1085, 2
%var_2_1087 = add nsw i64 %var_2_1086, 6300752
; Matched:%var_2_1303:  %var_2_1303 = add i64 %var_2_1261, 34
; %var_2_1088 = add i64 %var_2_1044, 34
; Matched:\<badref\>:  store i64 %var_2_1085, i64* %PC, align 8
; store i64 %var_2_1088, i64* %var_2_3, align 8
%var_2_1089 = inttoptr i64 %var_2_1087 to i32*
%var_2_1090 = load i32, i32* %var_2_1089, align 4
%var_2_1091 = zext i32 %var_2_1090 to i64
store i64 %var_2_1091, i64* %RDI.i425, align 8
; Matched:%var_2_1089:  %var_2_1089 = add i64 %var_2_1046, -8
; %var_2_1092 = add i64 %var_2_1049, -8
; Matched:%var_2_1307:  %var_2_1307 = add i64 %var_2_1261, 39
; %var_2_1093 = add i64 %var_2_1044, 39
; Matched:\<badref\>:  store i64 %var_2_1090, i64* %PC, align 8
; store i64 %var_2_1093, i64* %var_2_3, align 8
; Matched:%var_2_1091:  %var_2_1091 = inttoptr i64 %var_2_1089 to i64*
; %var_2_1094 = inttoptr i64 %var_2_1092 to i64*
; Matched:%var_2_1092:  %var_2_1092 = load i64, i64* %var_2_1091, align 8
; %var_2_1095 = load i64, i64* %var_2_1094, align 8
; Matched:\<badref\>:  store i64 %var_2_1092, i64* %var_2_678, align 1, !tbaa !1284
; store i64 %var_2_1095, i64* %var_2_675, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_680, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_677, align 1
; Matched:%var_2_1093:  %var_2_1093 = add i64 %var_2_1046, -16
; %var_2_1096 = add i64 %var_2_1049, -16
; Matched:%var_2_1094:  %var_2_1094 = add i64 %var_2_1044, 44
; %var_2_1097 = add i64 %var_2_1044, 44
; Matched:\<badref\>:  store i64 %var_2_1094, i64* %PC, align 8
; store i64 %var_2_1097, i64* %var_2_3, align 8
; Matched:%var_2_1095:  %var_2_1095 = inttoptr i64 %var_2_1093 to i64*
; %var_2_1098 = inttoptr i64 %var_2_1096 to i64*
; Matched:%var_2_1096:  %var_2_1096 = load i64, i64* %var_2_1095, align 8
; %var_2_1099 = load i64, i64* %var_2_1098, align 8
; Matched:\<badref\>:  store i64 %var_2_1096, i64* %var_2_686, align 1, !tbaa !1284
; store i64 %var_2_1099, i64* %var_2_684, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_688, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_686, align 1
%var_2_1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
%var_2_1101 = add i64 %var_2_1049, -24
; Matched:%var_2_1098:  %var_2_1098 = add i64 %var_2_1044, 49
; %var_2_1102 = add i64 %var_2_1044, 49
; Matched:\<badref\>:  store i64 %var_2_1098, i64* %PC, align 8
; store i64 %var_2_1102, i64* %var_2_3, align 8
%var_2_1103 = inttoptr i64 %var_2_1101 to double*
%var_2_1104 = load double, double* %var_2_1103, align 8
%var_2_1105 = bitcast %union.VectorReg* %var_2_1100 to double*
; Matched:%var_2_1102:  %var_2_1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
%var_2_1107 = bitcast i64 %var_2_1048 to double
%var_2_1108 = fsub double %var_2_1104, %var_2_1107
store double %var_2_1108, double* %var_2_1105, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1102, align 1, !tbaa !1284
; store i64 0, i64* %var_2_1106, align 1
; Matched:%var_2_1046:  %var_2_1046 = load i64, i64* %RBP, align 8
; %var_2_1109 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_1046, -192
; %var_2_1110 = add i64 %var_2_1109, -192
; Matched:%var_2_1106:  %var_2_1106 = add i64 %var_2_1044, 61
; %var_2_1111 = add i64 %var_2_1044, 61
; Matched:\<badref\>:  store i64 %var_2_1106, i64* %PC, align 8
; store i64 %var_2_1111, i64* %var_2_3, align 8
; Matched:%var_2_1107:  %var_2_1107 = load i64, i64* %var_2_48, align 1
; %var_2_1112 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1108:  %var_2_1108 = inttoptr i64 %var_2_1105 to i64*
; %var_2_1113 = inttoptr i64 %var_2_1110 to i64*
; Matched:\<badref\>:  store i64 %var_2_1107, i64* %var_2_1108, align 8
; store i64 %var_2_1112, i64* %var_2_1113, align 8
%var_2_1114 = load i64, i64* %var_2_3, align 8
%var_2_1115 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_1116 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1117 = extractelement <2 x i32> %var_2_1115, i32 0
; Matched:\<badref\>:  store i32 %var_2_1112, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1117, i32* %var_2_696, align 1
%var_2_1118 = extractelement <2 x i32> %var_2_1115, i32 1
; Matched:\<badref\>:  store i32 %var_2_1113, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1118, i32* %var_2_699, align 1
%var_2_1119 = extractelement <2 x i32> %var_2_1116, i32 0
; Matched:\<badref\>:  store i32 %var_2_1114, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1119, i32* %var_2_701, align 1
%var_2_1120 = extractelement <2 x i32> %var_2_1116, i32 1
; Matched:\<badref\>:  store i32 %var_2_1115, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1120, i32* %var_2_704, align 1
%var_2_1121 = load <2 x i32>, <2 x i32>* %var_2_731, align 1
%var_2_1122 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_1123 = extractelement <2 x i32> %var_2_1121, i32 0
; Matched:\<badref\>:  store i32 %var_2_1118, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_1123, i32* %var_2_716, align 1
%var_2_1124 = extractelement <2 x i32> %var_2_1121, i32 1
; Matched:\<badref\>:  store i32 %var_2_1119, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_1124, i32* %var_2_719, align 1
%var_2_1125 = extractelement <2 x i32> %var_2_1122, i32 0
; Matched:\<badref\>:  store i32 %var_2_1120, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_1125, i32* %var_2_721, align 1
%var_2_1126 = extractelement <2 x i32> %var_2_1122, i32 1
; Matched:\<badref\>:  store i32 %var_2_1121, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_1126, i32* %var_2_724, align 1
; Matched:%var_2_1122:  %var_2_1122 = load i64, i64* %RBP, align 8
; %var_2_1127 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1123:  %var_2_1123 = add i64 %var_2_1122, -200
; %var_2_1128 = add i64 %var_2_1127, -200
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_287, 14
; %var_2_1129 = add i64 %var_2_1114, 14
; Matched:\<badref\>:  store i64 %var_2_1336, i64* %PC, align 8
; store i64 %var_2_1129, i64* %var_2_3, align 8
; Matched:%var_2_1125:  %var_2_1125 = load i64, i64* %var_2_63, align 1
; %var_2_1130 = load i64, i64* %var_2_61, align 1
; Matched:%var_2_1126:  %var_2_1126 = inttoptr i64 %var_2_1123 to i64*
; %var_2_1131 = inttoptr i64 %var_2_1128 to i64*
; Matched:\<badref\>:  store i64 %var_2_1125, i64* %var_2_1126, align 8
; store i64 %var_2_1130, i64* %var_2_1131, align 8
%var_2_1132 = load i64, i64* %var_2_3, align 8
%var_2_1133 = bitcast %union.VectorReg* %var_2_1100 to <2 x i32>*
%var_2_1134 = load <2 x i32>, <2 x i32>* %var_2_1133, align 1
%var_2_1135 = bitcast i64* %var_2_1106 to <2 x i32>*
%var_2_1136 = load <2 x i32>, <2 x i32>* %var_2_1135, align 1
%var_2_1137 = extractelement <2 x i32> %var_2_1134, i32 0
; Matched:\<badref\>:  store i32 %var_2_1132, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_1137, i32* %var_2_736, align 1
%var_2_1138 = extractelement <2 x i32> %var_2_1134, i32 1
; Matched:\<badref\>:  store i32 %var_2_1133, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_1138, i32* %var_2_739, align 1
%var_2_1139 = extractelement <2 x i32> %var_2_1136, i32 0
; Matched:\<badref\>:  store i32 %var_2_1134, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_1139, i32* %var_2_741, align 1
%var_2_1140 = extractelement <2 x i32> %var_2_1136, i32 1
; Matched:\<badref\>:  store i32 %var_2_1135, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_1140, i32* %var_2_744, align 1
; Matched:%var_2_1136:  %var_2_1136 = load i64, i64* %RBP, align 8
; %var_2_1141 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1137:  %var_2_1137 = add i64 %var_2_1136, -208
; %var_2_1142 = add i64 %var_2_1141, -208
; Matched:%var_2_1031:  %var_2_1031 = add i64 %var_2_1022, 11
; %var_2_1143 = add i64 %var_2_1132, 11
; Matched:\<badref\>:  store i64 %var_2_1248, i64* %PC, align 8
; store i64 %var_2_1143, i64* %var_2_3, align 8
; Matched:%var_2_1139:  %var_2_1139 = load i64, i64* %var_2_670, align 1
; %var_2_1144 = load i64, i64* %var_2_666, align 1
; Matched:%var_2_1140:  %var_2_1140 = inttoptr i64 %var_2_1137 to i64*
; %var_2_1145 = inttoptr i64 %var_2_1142 to i64*
; Matched:\<badref\>:  store i64 %var_2_1139, i64* %var_2_1140, align 8
; store i64 %var_2_1144, i64* %var_2_1145, align 8
%var_2_1146 = load i64, i64* %var_2_3, align 8
%var_2_1147 = add i64 %var_2_1146, 489
; Matched:%var_2_1143:  %var_2_1143 = add i64 %var_2_1141, 5
; %var_2_1148 = add i64 %var_2_1146, 5
%var_2_1149 = load i64, i64* %var_2_6, align 8
%var_2_1150 = add i64 %var_2_1149, -8
; Matched:%var_2_1146:  %var_2_1146 = inttoptr i64 %var_2_1145 to i64*
; %var_2_1151 = inttoptr i64 %var_2_1150 to i64*
; Matched:\<badref\>:  store i64 %var_2_1143, i64* %var_2_1146, align 8
; store i64 %var_2_1148, i64* %var_2_1151, align 8
; Matched:\<badref\>:  store i64 %var_2_1431, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1150, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1142, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1147, i64* %var_2_3, align 8
%call2_400a17 = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_1147, %struct.Memory* %call2_4009bc)
%var_2_1152 = load i64, i64* %var_2_3, align 8
%var_2_1153 = add i64 %var_2_1152, ptrtoint (%G_0x43c__rip__type* @G_0x43c__rip_ to i64)
%var_2_1154 = add i64 %var_2_1152, 8
store i64 %var_2_1154, i64* %var_2_3, align 8
%var_2_1155 = inttoptr i64 %var_2_1153 to i64*
%var_2_1156 = load i64, i64* %var_2_1155, align 8
store i64 %var_2_1156, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_1157 = load i64, i64* %RBP.i, align 8
%var_2_1158 = add i64 %var_2_1157, -84
; Matched:%var_2_1453:  %var_2_1453 = add i64 %var_2_1444, 11
; %var_2_1159 = add i64 %var_2_1152, 11
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_1159, i64* %var_2_3, align 8
%var_2_1160 = inttoptr i64 %var_2_1158 to i32*
%var_2_1161 = load i32, i32* %var_2_1160, align 4
%var_2_1162 = add i32 %var_2_1161, 1
; Matched:%var_2_1156:  %var_2_1156 = zext i32 %var_2_1155 to i64
; %var_2_1163 = zext i32 %var_2_1162 to i64
; Matched:\<badref\>:  store i64 %var_2_1156, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1163, i64* %RAX.i629, align 8
; Matched:%var_2_1157:  %var_2_1157 = icmp eq i32 %var_2_1154, -1
; %var_2_1164 = icmp eq i32 %var_2_1161, -1
; Matched:%var_2_1158:  %var_2_1158 = icmp eq i32 %var_2_1155, 0
; %var_2_1165 = icmp eq i32 %var_2_1162, 0
; Matched:%var_2_1159:  %var_2_1159 = or i1 %var_2_1157, %var_2_1158
; %var_2_1166 = or i1 %var_2_1164, %var_2_1165
; Matched:%var_2_1160:  %var_2_1160 = zext i1 %var_2_1159 to i8
; %var_2_1167 = zext i1 %var_2_1166 to i8
; Matched:\<badref\>:  store i8 %var_2_1160, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1167, i8* %var_2_14, align 1
; Matched:%var_2_1161:  %var_2_1161 = and i32 %var_2_1155, 255
; %var_2_1168 = and i32 %var_2_1162, 255
; Matched:%var_2_1162:  %var_2_1162 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1161) #12
; %var_2_1169 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1168)
; Matched:%var_2_1163:  %var_2_1163 = trunc i32 %var_2_1162 to i8
; %var_2_1170 = trunc i32 %var_2_1169 to i8
; Matched:%var_2_1164:  %var_2_1164 = and i8 %var_2_1163, 1
; %var_2_1171 = and i8 %var_2_1170, 1
; Matched:%var_2_1165:  %var_2_1165 = xor i8 %var_2_1164, 1
; %var_2_1172 = xor i8 %var_2_1171, 1
; Matched:\<badref\>:  store i8 %var_2_1165, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1172, i8* %var_2_21, align 1
; Matched:%var_2_1166:  %var_2_1166 = xor i32 %var_2_1155, %var_2_1154
; %var_2_1173 = xor i32 %var_2_1162, %var_2_1161
; Matched:%var_2_1167:  %var_2_1167 = lshr i32 %var_2_1166, 4
; %var_2_1174 = lshr i32 %var_2_1173, 4
; Matched:%var_2_1168:  %var_2_1168 = trunc i32 %var_2_1167 to i8
; %var_2_1175 = trunc i32 %var_2_1174 to i8
; Matched:%var_2_1169:  %var_2_1169 = and i8 %var_2_1168, 1
; %var_2_1176 = and i8 %var_2_1175, 1
; Matched:\<badref\>:  store i8 %var_2_1169, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_1176, i8* %var_2_27, align 1
; Matched:%var_2_1170:  %var_2_1170 = zext i1 %var_2_1158 to i8
; %var_2_1177 = zext i1 %var_2_1165 to i8
; Matched:\<badref\>:  store i8 %var_2_1170, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_1177, i8* %var_2_30, align 1
; Matched:%var_2_1171:  %var_2_1171 = lshr i32 %var_2_1155, 31
; %var_2_1178 = lshr i32 %var_2_1162, 31
; Matched:%var_2_1172:  %var_2_1172 = trunc i32 %var_2_1171 to i8
; %var_2_1179 = trunc i32 %var_2_1178 to i8
; Matched:\<badref\>:  store i8 %var_2_1172, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_1179, i8* %var_2_33, align 1
; Matched:%var_2_1173:  %var_2_1173 = lshr i32 %var_2_1154, 31
; %var_2_1180 = lshr i32 %var_2_1161, 31
; Matched:%var_2_1174:  %var_2_1174 = xor i32 %var_2_1171, %var_2_1173
; %var_2_1181 = xor i32 %var_2_1178, %var_2_1180
; Matched:%var_2_1175:  %var_2_1175 = add nuw nsw i32 %var_2_1174, %var_2_1171
; %var_2_1182 = add nuw nsw i32 %var_2_1181, %var_2_1178
; Matched:%var_2_1176:  %var_2_1176 = icmp eq i32 %var_2_1175, 2
; %var_2_1183 = icmp eq i32 %var_2_1182, 2
; Matched:%var_2_1177:  %var_2_1177 = zext i1 %var_2_1176 to i8
; %var_2_1184 = zext i1 %var_2_1183 to i8
; Matched:\<badref\>:  store i8 %var_2_1177, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_1184, i8* %var_2_39, align 1
%var_2_1185 = sext i32 %var_2_1162 to i64
; Matched:\<badref\>:  store i64 %var_2_1178, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1185, i64* %RCX.i523, align 8
%var_2_1186 = shl nsw i64 %var_2_1185, 2
%var_2_1187 = add nsw i64 %var_2_1186, 6300752
; Matched:%var_2_1181:  %var_2_1181 = add i64 %var_2_1148, 24
; %var_2_1188 = add i64 %var_2_1152, 24
; Matched:\<badref\>:  store i64 %var_2_1385, i64* %PC, align 8
; store i64 %var_2_1188, i64* %var_2_3, align 8
%var_2_1189 = inttoptr i64 %var_2_1187 to i32*
%var_2_1190 = load i32, i32* %var_2_1189, align 4
%var_2_1191 = zext i32 %var_2_1190 to i64
store i64 %var_2_1191, i64* %RDI.i425, align 8
%var_2_1192 = add i64 %var_2_1157, -8
; Matched:%var_2_859:  %var_2_859 = add i64 %var_2_840, 29
; %var_2_1193 = add i64 %var_2_1152, 29
; Matched:\<badref\>:  store i64 %var_2_859, i64* %PC, align 8
; store i64 %var_2_1193, i64* %var_2_3, align 8
%var_2_1194 = inttoptr i64 %var_2_1192 to double*
%var_2_1195 = load double, double* %var_2_1194, align 8
%var_2_1196 = bitcast i64 %var_2_1156 to double
%var_2_1197 = fsub double %var_2_1195, %var_2_1196
store double %var_2_1197, double* %var_2_646, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_652, align 1, !tbaa !1284
; store i64 0, i64* %var_2_647, align 1
; Matched:%var_2_1191:  %var_2_1191 = add i64 %var_2_1150, -16
; %var_2_1198 = add i64 %var_2_1157, -16
; Matched:%var_2_778:  %var_2_778 = add i64 %var_2_753, 38
; %var_2_1199 = add i64 %var_2_1152, 38
; Matched:\<badref\>:  store i64 %var_2_1192, i64* %PC, align 8
; store i64 %var_2_1199, i64* %var_2_3, align 8
; Matched:%var_2_1193:  %var_2_1193 = inttoptr i64 %var_2_1191 to i64*
; %var_2_1200 = inttoptr i64 %var_2_1198 to i64*
; Matched:%var_2_1194:  %var_2_1194 = load i64, i64* %var_2_1193, align 8
; %var_2_1201 = load i64, i64* %var_2_1200, align 8
; Matched:\<badref\>:  store i64 %var_2_1194, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_1201, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
%var_2_1202 = add i64 %var_2_1157, -24
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_753, 43
; %var_2_1203 = add i64 %var_2_1152, 43
; Matched:\<badref\>:  store i64 %var_2_782, i64* %PC, align 8
; store i64 %var_2_1203, i64* %var_2_3, align 8
%var_2_1204 = inttoptr i64 %var_2_1202 to double*
%var_2_1205 = load double, double* %var_2_1204, align 8
%var_2_1206 = fsub double %var_2_1205, %var_2_1196
store double %var_2_1206, double* %var_2_674, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_676, align 1
; Matched:%var_2_1200:  %var_2_1200 = add i64 %var_2_1150, -216
; %var_2_1207 = add i64 %var_2_1157, -216
; Matched:%var_2_1201:  %var_2_1201 = add i64 %var_2_1148, 55
; %var_2_1208 = add i64 %var_2_1152, 55
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %PC, align 8
; store i64 %var_2_1208, i64* %var_2_3, align 8
; Matched:%var_2_1202:  %var_2_1202 = load i64, i64* %var_2_48, align 1
; %var_2_1209 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1203:  %var_2_1203 = inttoptr i64 %var_2_1200 to i64*
; %var_2_1210 = inttoptr i64 %var_2_1207 to i64*
; Matched:\<badref\>:  store i64 %var_2_1202, i64* %var_2_1203, align 8
; store i64 %var_2_1209, i64* %var_2_1210, align 8
%var_2_1211 = load i64, i64* %var_2_3, align 8
%var_2_1212 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_1213 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_1214 = extractelement <2 x i32> %var_2_1212, i32 0
; Matched:\<badref\>:  store i32 %var_2_790, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1214, i32* %var_2_696, align 1
%var_2_1215 = extractelement <2 x i32> %var_2_1212, i32 1
; Matched:\<badref\>:  store i32 %var_2_791, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1215, i32* %var_2_699, align 1
%var_2_1216 = extractelement <2 x i32> %var_2_1213, i32 0
; Matched:\<badref\>:  store i32 %var_2_792, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1216, i32* %var_2_701, align 1
%var_2_1217 = extractelement <2 x i32> %var_2_1213, i32 1
; Matched:\<badref\>:  store i32 %var_2_956, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1217, i32* %var_2_704, align 1
%var_2_1218 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_1219 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1220 = extractelement <2 x i32> %var_2_1218, i32 0
; Matched:\<badref\>:  store i32 %var_2_1418, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_1220, i32* %var_2_716, align 1
%var_2_1221 = extractelement <2 x i32> %var_2_1218, i32 1
; Matched:\<badref\>:  store i32 %var_2_1419, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_1221, i32* %var_2_719, align 1
%var_2_1222 = extractelement <2 x i32> %var_2_1219, i32 0
; Matched:\<badref\>:  store i32 %var_2_967, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_1222, i32* %var_2_721, align 1
%var_2_1223 = extractelement <2 x i32> %var_2_1219, i32 1
; Matched:\<badref\>:  store i32 %var_2_968, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_1223, i32* %var_2_724, align 1
%var_2_1224 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_1225 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1226 = extractelement <2 x i32> %var_2_1224, i32 0
; Matched:\<badref\>:  store i32 %var_2_1219, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_1226, i32* %var_2_736, align 1
%var_2_1227 = extractelement <2 x i32> %var_2_1224, i32 1
; Matched:\<badref\>:  store i32 %var_2_1425, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_1227, i32* %var_2_739, align 1
%var_2_1228 = extractelement <2 x i32> %var_2_1225, i32 0
; Matched:\<badref\>:  store i32 %var_2_1221, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_1228, i32* %var_2_741, align 1
%var_2_1229 = extractelement <2 x i32> %var_2_1225, i32 1
; Matched:\<badref\>:  store i32 %var_2_1427, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_1229, i32* %var_2_744, align 1
%var_2_1230 = add i64 %var_2_1211, 429
; Matched:%var_2_1224:  %var_2_1224 = add i64 %var_2_1204, 14
; %var_2_1231 = add i64 %var_2_1211, 14
%var_2_1232 = load i64, i64* %var_2_6, align 8
%var_2_1233 = add i64 %var_2_1232, -8
; Matched:%var_2_1227:  %var_2_1227 = inttoptr i64 %var_2_1226 to i64*
; %var_2_1234 = inttoptr i64 %var_2_1233 to i64*
; Matched:\<badref\>:  store i64 %var_2_1224, i64* %var_2_1227, align 8
; store i64 %var_2_1231, i64* %var_2_1234, align 8
; Matched:\<badref\>:  store i64 %var_2_171, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1233, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1223, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1230, i64* %var_2_3, align 8
%call2_400a5c = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_1230, %struct.Memory* %call2_400a17)
; Matched:%var_2_1229:  %var_2_1229 = load i64, i64* %RBP, align 8
; %var_2_1235 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1230:  %var_2_1230 = add i64 %var_2_1229, -208
; %var_2_1236 = add i64 %var_2_1235, -208
%var_2_1237 = load i64, i64* %var_2_3, align 8
%var_2_1238 = add i64 %var_2_1237, 8
store i64 %var_2_1238, i64* %var_2_3, align 8
; Matched:%var_2_1233:  %var_2_1233 = inttoptr i64 %var_2_1230 to i64*
; %var_2_1239 = inttoptr i64 %var_2_1236 to i64*
; Matched:%var_2_1234:  %var_2_1234 = load i64, i64* %var_2_1233, align 8
; %var_2_1240 = load i64, i64* %var_2_1239, align 8
; Matched:\<badref\>:  store i64 %var_2_1234, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1240, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1235:  %var_2_1235 = add i64 %var_2_1229, -224
; %var_2_1241 = add i64 %var_2_1235, -224
; Matched:%var_2_1269:  %var_2_1269 = add i64 %var_2_1261, 16
; %var_2_1242 = add i64 %var_2_1237, 16
; Matched:\<badref\>:  store i64 %var_2_1269, i64* %PC, align 8
; store i64 %var_2_1242, i64* %var_2_3, align 8
; Matched:%var_2_1237:  %var_2_1237 = load i64, i64* %var_2_48, align 1
; %var_2_1243 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1238:  %var_2_1238 = inttoptr i64 %var_2_1235 to i64*
; %var_2_1244 = inttoptr i64 %var_2_1241 to i64*
; Matched:\<badref\>:  store i64 %var_2_1237, i64* %var_2_1238, align 8
; store i64 %var_2_1243, i64* %var_2_1244, align 8
%var_2_1245 = load i64, i64* %var_2_3, align 8
%var_2_1246 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_1247 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_1248 = extractelement <2 x i32> %var_2_1246, i32 0
; Matched:\<badref\>:  store i32 %var_2_1511, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1248, i32* %var_2_696, align 1
%var_2_1249 = extractelement <2 x i32> %var_2_1246, i32 1
; Matched:\<badref\>:  store i32 %var_2_1480, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1249, i32* %var_2_699, align 1
%var_2_1250 = extractelement <2 x i32> %var_2_1247, i32 0
; Matched:\<badref\>:  store i32 %var_2_1513, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1250, i32* %var_2_701, align 1
%var_2_1251 = extractelement <2 x i32> %var_2_1247, i32 1
; Matched:\<badref\>:  store i32 %var_2_1482, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1251, i32* %var_2_704, align 1
; Matched:%var_2_1246:  %var_2_1246 = load i64, i64* %RBP, align 8
; %var_2_1252 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1247:  %var_2_1247 = add i64 %var_2_1246, -216
; %var_2_1253 = add i64 %var_2_1252, -216
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1127, 11
; %var_2_1254 = add i64 %var_2_1245, 11
; Matched:\<badref\>:  store i64 %var_2_885, i64* %PC, align 8
; store i64 %var_2_1254, i64* %var_2_3, align 8
; Matched:%var_2_1249:  %var_2_1249 = inttoptr i64 %var_2_1247 to i64*
; %var_2_1255 = inttoptr i64 %var_2_1253 to i64*
; Matched:%var_2_1250:  %var_2_1250 = load i64, i64* %var_2_1249, align 8
; %var_2_1256 = load i64, i64* %var_2_1255, align 8
; Matched:\<badref\>:  store i64 %var_2_1250, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1256, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1251:  %var_2_1251 = add i64 %var_2_1246, -224
; %var_2_1257 = add i64 %var_2_1252, -224
; Matched:%var_2_901:  %var_2_901 = add i64 %var_2_888, 19
; %var_2_1258 = add i64 %var_2_1245, 19
; Matched:\<badref\>:  store i64 %var_2_1457, i64* %PC, align 8
; store i64 %var_2_1258, i64* %var_2_3, align 8
; Matched:%var_2_1253:  %var_2_1253 = inttoptr i64 %var_2_1251 to i64*
; %var_2_1259 = inttoptr i64 %var_2_1257 to i64*
; Matched:%var_2_1254:  %var_2_1254 = load i64, i64* %var_2_1253, align 8
; %var_2_1260 = load i64, i64* %var_2_1259, align 8
; Matched:\<badref\>:  store i64 %var_2_1254, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1260, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1261 = add i64 %var_2_1245, 735
; Matched:%var_2_1256:  %var_2_1256 = add i64 %var_2_1239, 24
; %var_2_1262 = add i64 %var_2_1245, 24
%var_2_1263 = load i64, i64* %var_2_6, align 8
%var_2_1264 = add i64 %var_2_1263, -8
; Matched:%var_2_1042:  %var_2_1042 = inttoptr i64 %var_2_1041 to i64*
; %var_2_1265 = inttoptr i64 %var_2_1264 to i64*
; Matched:\<badref\>:  store i64 %var_2_1007, i64* %var_2_1010, align 8
; store i64 %var_2_1262, i64* %var_2_1265, align 8
; Matched:\<badref\>:  store i64 %var_2_276, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1264, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1255, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1261, i64* %var_2_3, align 8
%call2_400a84 = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1261, %struct.Memory* %call2_400a5c)
%var_2_1266 = load i64, i64* %var_2_3, align 8
%var_2_1267 = add i64 %var_2_1266, ptrtoint (%G_0x3cf__rip__type* @G_0x3cf__rip_ to i64)
%var_2_1268 = add i64 %var_2_1266, 8
store i64 %var_2_1268, i64* %var_2_3, align 8
%var_2_1269 = inttoptr i64 %var_2_1267 to i64*
%var_2_1270 = load i64, i64* %var_2_1269, align 8
store i64 %var_2_1270, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_1271 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_636, -48
; %var_2_1272 = add i64 %var_2_1271, -48
; Matched:%var_2_1505:  %var_2_1505 = add i64 %var_2_1500, 13
; %var_2_1273 = add i64 %var_2_1266, 13
; Matched:\<badref\>:  store i64 %var_2_1505, i64* %PC, align 8
; store i64 %var_2_1273, i64* %var_2_3, align 8
; Matched:%var_2_649:  %var_2_649 = inttoptr i64 %var_2_647 to i64*
; %var_2_1274 = inttoptr i64 %var_2_1272 to i64*
; Matched:%var_2_650:  %var_2_650 = load i64, i64* %var_2_649, align 8
; %var_2_1275 = load i64, i64* %var_2_1274, align 8
; Matched:\<badref\>:  store i64 %var_2_1267, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1275, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1276 = add i64 %var_2_1271, -76
; Matched:%var_2_987:  %var_2_987 = add i64 %var_2_982, 16
; %var_2_1277 = add i64 %var_2_1266, 16
; Matched:\<badref\>:  store i64 %var_2_987, i64* %PC, align 8
; store i64 %var_2_1277, i64* %var_2_3, align 8
%var_2_1278 = inttoptr i64 %var_2_1276 to i32*
%var_2_1279 = load i32, i32* %var_2_1278, align 4
%var_2_1280 = add i32 %var_2_1279, 1
; Matched:%var_2_1273:  %var_2_1273 = zext i32 %var_2_1272 to i64
; %var_2_1281 = zext i32 %var_2_1280 to i64
; Matched:\<badref\>:  store i64 %var_2_1273, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1281, i64* %RAX.i629, align 8
; Matched:%var_2_1274:  %var_2_1274 = icmp eq i32 %var_2_1271, -1
; %var_2_1282 = icmp eq i32 %var_2_1279, -1
; Matched:%var_2_1275:  %var_2_1275 = icmp eq i32 %var_2_1272, 0
; %var_2_1283 = icmp eq i32 %var_2_1280, 0
; Matched:%var_2_1276:  %var_2_1276 = or i1 %var_2_1274, %var_2_1275
; %var_2_1284 = or i1 %var_2_1282, %var_2_1283
; Matched:%var_2_1277:  %var_2_1277 = zext i1 %var_2_1276 to i8
; %var_2_1285 = zext i1 %var_2_1284 to i8
; Matched:\<badref\>:  store i8 %var_2_1277, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1285, i8* %var_2_14, align 1
; Matched:%var_2_1278:  %var_2_1278 = and i32 %var_2_1272, 255
; %var_2_1286 = and i32 %var_2_1280, 255
; Matched:%var_2_1279:  %var_2_1279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1278) #12
; %var_2_1287 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1286)
; Matched:%var_2_1280:  %var_2_1280 = trunc i32 %var_2_1279 to i8
; %var_2_1288 = trunc i32 %var_2_1287 to i8
; Matched:%var_2_1281:  %var_2_1281 = and i8 %var_2_1280, 1
; %var_2_1289 = and i8 %var_2_1288, 1
; Matched:%var_2_1282:  %var_2_1282 = xor i8 %var_2_1281, 1
; %var_2_1290 = xor i8 %var_2_1289, 1
; Matched:\<badref\>:  store i8 %var_2_1282, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1290, i8* %var_2_21, align 1
; Matched:%var_2_1283:  %var_2_1283 = xor i32 %var_2_1272, %var_2_1271
; %var_2_1291 = xor i32 %var_2_1280, %var_2_1279
; Matched:%var_2_1284:  %var_2_1284 = lshr i32 %var_2_1283, 4
; %var_2_1292 = lshr i32 %var_2_1291, 4
; Matched:%var_2_1285:  %var_2_1285 = trunc i32 %var_2_1284 to i8
; %var_2_1293 = trunc i32 %var_2_1292 to i8
; Matched:%var_2_1286:  %var_2_1286 = and i8 %var_2_1285, 1
; %var_2_1294 = and i8 %var_2_1293, 1
; Matched:\<badref\>:  store i8 %var_2_1286, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_1294, i8* %var_2_27, align 1
; Matched:%var_2_1287:  %var_2_1287 = zext i1 %var_2_1275 to i8
; %var_2_1295 = zext i1 %var_2_1283 to i8
; Matched:\<badref\>:  store i8 %var_2_1287, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_1295, i8* %var_2_30, align 1
; Matched:%var_2_1288:  %var_2_1288 = lshr i32 %var_2_1272, 31
; %var_2_1296 = lshr i32 %var_2_1280, 31
; Matched:%var_2_1289:  %var_2_1289 = trunc i32 %var_2_1288 to i8
; %var_2_1297 = trunc i32 %var_2_1296 to i8
; Matched:\<badref\>:  store i8 %var_2_1289, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_1297, i8* %var_2_33, align 1
; Matched:%var_2_1290:  %var_2_1290 = lshr i32 %var_2_1271, 31
; %var_2_1298 = lshr i32 %var_2_1279, 31
; Matched:%var_2_1291:  %var_2_1291 = xor i32 %var_2_1288, %var_2_1290
; %var_2_1299 = xor i32 %var_2_1296, %var_2_1298
; Matched:%var_2_1292:  %var_2_1292 = add nuw nsw i32 %var_2_1291, %var_2_1288
; %var_2_1300 = add nuw nsw i32 %var_2_1299, %var_2_1296
; Matched:%var_2_1293:  %var_2_1293 = icmp eq i32 %var_2_1292, 2
; %var_2_1301 = icmp eq i32 %var_2_1300, 2
; Matched:%var_2_1294:  %var_2_1294 = zext i1 %var_2_1293 to i8
; %var_2_1302 = zext i1 %var_2_1301 to i8
; Matched:\<badref\>:  store i8 %var_2_1294, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_1302, i8* %var_2_39, align 1
%var_2_1303 = sext i32 %var_2_1280 to i64
; Matched:\<badref\>:  store i64 %var_2_1295, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1303, i64* %RCX.i523, align 8
%var_2_1304 = shl nsw i64 %var_2_1303, 2
%var_2_1305 = add nsw i64 %var_2_1304, 6300752
; Matched:%var_2_1298:  %var_2_1298 = add i64 %var_2_1261, 29
; %var_2_1306 = add i64 %var_2_1266, 29
; Matched:\<badref\>:  store i64 %var_2_1298, i64* %PC, align 8
; store i64 %var_2_1306, i64* %var_2_3, align 8
%var_2_1307 = inttoptr i64 %var_2_1305 to i32*
%var_2_1308 = load i32, i32* %var_2_1307, align 4
%var_2_1309 = zext i32 %var_2_1308 to i64
store i64 %var_2_1309, i64* %RDI.i425, align 8
; Matched:%var_2_665:  %var_2_665 = add i64 %var_2_636, -8
; %var_2_1310 = add i64 %var_2_1271, -8
; Matched:%var_2_1085:  %var_2_1085 = add i64 %var_2_1044, 34
; %var_2_1311 = add i64 %var_2_1266, 34
; Matched:\<badref\>:  store i64 %var_2_1303, i64* %PC, align 8
; store i64 %var_2_1311, i64* %var_2_3, align 8
; Matched:%var_2_1304:  %var_2_1304 = inttoptr i64 %var_2_1302 to i64*
; %var_2_1312 = inttoptr i64 %var_2_1310 to i64*
; Matched:%var_2_668:  %var_2_668 = load i64, i64* %var_2_667, align 8
; %var_2_1313 = load i64, i64* %var_2_1312, align 8
; Matched:\<badref\>:  store i64 %var_2_1305, i64* %var_2_670, align 1, !tbaa !1284
; store i64 %var_2_1313, i64* %var_2_666, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_672, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_668, align 1
%var_2_1314 = add i64 %var_2_1271, -16
; Matched:%var_2_1090:  %var_2_1090 = add i64 %var_2_1044, 39
; %var_2_1315 = add i64 %var_2_1266, 39
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %PC, align 8
; store i64 %var_2_1315, i64* %var_2_3, align 8
%var_2_1316 = inttoptr i64 %var_2_1314 to double*
%var_2_1317 = load double, double* %var_2_1316, align 8
%var_2_1318 = bitcast i64 %var_2_1270 to double
%var_2_1319 = fsub double %var_2_1317, %var_2_1318
store double %var_2_1319, double* %var_2_674, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_676, align 1
%var_2_1320 = add i64 %var_2_1271, -24
; Matched:%var_2_1313:  %var_2_1313 = add i64 %var_2_1261, 48
; %var_2_1321 = add i64 %var_2_1266, 48
; Matched:\<badref\>:  store i64 %var_2_1313, i64* %PC, align 8
; store i64 %var_2_1321, i64* %var_2_3, align 8
%var_2_1322 = inttoptr i64 %var_2_1320 to double*
%var_2_1323 = load double, double* %var_2_1322, align 8
%var_2_1324 = fsub double %var_2_1323, %var_2_1318
store double %var_2_1324, double* %var_2_683, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_687, align 1, !tbaa !1284
; store i64 0, i64* %var_2_685, align 1
; Matched:%var_2_1317:  %var_2_1317 = add i64 %var_2_1263, -232
; %var_2_1325 = add i64 %var_2_1271, -232
; Matched:%var_2_1318:  %var_2_1318 = add i64 %var_2_1261, 60
; %var_2_1326 = add i64 %var_2_1266, 60
; Matched:\<badref\>:  store i64 %var_2_1318, i64* %PC, align 8
; store i64 %var_2_1326, i64* %var_2_3, align 8
; Matched:%var_2_1319:  %var_2_1319 = load i64, i64* %var_2_48, align 1
; %var_2_1327 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1320:  %var_2_1320 = inttoptr i64 %var_2_1317 to i64*
; %var_2_1328 = inttoptr i64 %var_2_1325 to i64*
; Matched:\<badref\>:  store i64 %var_2_1319, i64* %var_2_1320, align 8
; store i64 %var_2_1327, i64* %var_2_1328, align 8
%var_2_1329 = load i64, i64* %var_2_3, align 8
%var_2_1330 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_1331 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1332 = extractelement <2 x i32> %var_2_1330, i32 0
; Matched:\<badref\>:  store i32 %var_2_879, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1332, i32* %var_2_696, align 1
%var_2_1333 = extractelement <2 x i32> %var_2_1330, i32 1
; Matched:\<badref\>:  store i32 %var_2_880, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1333, i32* %var_2_699, align 1
%var_2_1334 = extractelement <2 x i32> %var_2_1331, i32 0
; Matched:\<badref\>:  store i32 %var_2_1326, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1334, i32* %var_2_701, align 1
%var_2_1335 = extractelement <2 x i32> %var_2_1331, i32 1
; Matched:\<badref\>:  store i32 %var_2_704, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1335, i32* %var_2_704, align 1
%var_2_1336 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_1337 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1338 = extractelement <2 x i32> %var_2_1336, i32 0
; Matched:\<badref\>:  store i32 %var_2_717, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_1338, i32* %var_2_716, align 1
%var_2_1339 = extractelement <2 x i32> %var_2_1336, i32 1
; Matched:\<badref\>:  store i32 %var_2_1331, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_1339, i32* %var_2_719, align 1
%var_2_1340 = extractelement <2 x i32> %var_2_1337, i32 0
; Matched:\<badref\>:  store i32 %var_2_1332, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_1340, i32* %var_2_721, align 1
%var_2_1341 = extractelement <2 x i32> %var_2_1337, i32 1
; Matched:\<badref\>:  store i32 %var_2_1333, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_1341, i32* %var_2_724, align 1
; Matched:%var_2_1334:  %var_2_1334 = load i64, i64* %RBP, align 8
; %var_2_1342 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1335:  %var_2_1335 = add i64 %var_2_1334, -240
; %var_2_1343 = add i64 %var_2_1342, -240
; Matched:%var_2_1336:  %var_2_1336 = add i64 %var_2_1321, 14
; %var_2_1344 = add i64 %var_2_1329, 14
; Matched:\<badref\>:  store i64 %var_2_1124, i64* %PC, align 8
; store i64 %var_2_1344, i64* %var_2_3, align 8
; Matched:%var_2_1337:  %var_2_1337 = load i64, i64* %var_2_63, align 1
; %var_2_1345 = load i64, i64* %var_2_61, align 1
; Matched:%var_2_1338:  %var_2_1338 = inttoptr i64 %var_2_1335 to i64*
; %var_2_1346 = inttoptr i64 %var_2_1343 to i64*
; Matched:\<badref\>:  store i64 %var_2_1337, i64* %var_2_1338, align 8
; store i64 %var_2_1345, i64* %var_2_1346, align 8
%var_2_1347 = load i64, i64* %var_2_3, align 8
%var_2_1348 = load <2 x i32>, <2 x i32>* %var_2_731, align 1
%var_2_1349 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_1350 = extractelement <2 x i32> %var_2_1348, i32 0
; Matched:\<badref\>:  store i32 %var_2_1342, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_1350, i32* %var_2_736, align 1
%var_2_1351 = extractelement <2 x i32> %var_2_1348, i32 1
; Matched:\<badref\>:  store i32 %var_2_739, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_1351, i32* %var_2_739, align 1
%var_2_1352 = extractelement <2 x i32> %var_2_1349, i32 0
; Matched:\<badref\>:  store i32 %var_2_1344, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_1352, i32* %var_2_741, align 1
%var_2_1353 = extractelement <2 x i32> %var_2_1349, i32 1
; Matched:\<badref\>:  store i32 %var_2_744, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_1353, i32* %var_2_744, align 1
%var_2_1354 = add i64 %var_2_1347, 301
; Matched:%var_2_1347:  %var_2_1347 = add i64 %var_2_1339, 8
; %var_2_1355 = add i64 %var_2_1347, 8
%var_2_1356 = load i64, i64* %var_2_6, align 8
%var_2_1357 = add i64 %var_2_1356, -8
; Matched:%var_2_751:  %var_2_751 = inttoptr i64 %var_2_750 to i64*
; %var_2_1358 = inttoptr i64 %var_2_1357 to i64*
; Matched:\<badref\>:  store i64 %var_2_748, i64* %var_2_751, align 8
; store i64 %var_2_1355, i64* %var_2_1358, align 8
; Matched:\<badref\>:  store i64 %var_2_109, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1357, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1346, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1354, i64* %var_2_3, align 8
%call2_400ad6 = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_1354, %struct.Memory* %call2_400a84)
%var_2_1359 = load i64, i64* %var_2_3, align 8
%var_2_1360 = add i64 %var_2_1359, ptrtoint (%G_0x37d__rip__type* @G_0x37d__rip_ to i64)
%var_2_1361 = add i64 %var_2_1359, 8
store i64 %var_2_1361, i64* %var_2_3, align 8
%var_2_1362 = inttoptr i64 %var_2_1360 to i64*
%var_2_1363 = load i64, i64* %var_2_1362, align 8
store i64 %var_2_1363, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
%var_2_1364 = load i64, i64* %RBP.i, align 8
%var_2_1365 = add i64 %var_2_1364, -88
; Matched:%var_2_1485:  %var_2_1485 = add i64 %var_2_1476, 11
; %var_2_1366 = add i64 %var_2_1359, 11
; Matched:\<badref\>:  store i64 %var_2_528, i64* %PC, align 8
; store i64 %var_2_1366, i64* %var_2_3, align 8
%var_2_1367 = inttoptr i64 %var_2_1365 to i32*
%var_2_1368 = load i32, i32* %var_2_1367, align 4
%var_2_1369 = add i32 %var_2_1368, 1
; Matched:%var_2_1360:  %var_2_1360 = zext i32 %var_2_1359 to i64
; %var_2_1370 = zext i32 %var_2_1369 to i64
; Matched:\<badref\>:  store i64 %var_2_1360, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1370, i64* %RAX.i629, align 8
; Matched:%var_2_1361:  %var_2_1361 = icmp eq i32 %var_2_1358, -1
; %var_2_1371 = icmp eq i32 %var_2_1368, -1
; Matched:%var_2_1362:  %var_2_1362 = icmp eq i32 %var_2_1359, 0
; %var_2_1372 = icmp eq i32 %var_2_1369, 0
; Matched:%var_2_1363:  %var_2_1363 = or i1 %var_2_1361, %var_2_1362
; %var_2_1373 = or i1 %var_2_1371, %var_2_1372
; Matched:%var_2_1364:  %var_2_1364 = zext i1 %var_2_1363 to i8
; %var_2_1374 = zext i1 %var_2_1373 to i8
; Matched:\<badref\>:  store i8 %var_2_1364, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1374, i8* %var_2_14, align 1
; Matched:%var_2_1365:  %var_2_1365 = and i32 %var_2_1359, 255
; %var_2_1375 = and i32 %var_2_1369, 255
; Matched:%var_2_1366:  %var_2_1366 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1365) #12
; %var_2_1376 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1375)
; Matched:%var_2_1367:  %var_2_1367 = trunc i32 %var_2_1366 to i8
; %var_2_1377 = trunc i32 %var_2_1376 to i8
; Matched:%var_2_1368:  %var_2_1368 = and i8 %var_2_1367, 1
; %var_2_1378 = and i8 %var_2_1377, 1
; Matched:%var_2_1369:  %var_2_1369 = xor i8 %var_2_1368, 1
; %var_2_1379 = xor i8 %var_2_1378, 1
; Matched:\<badref\>:  store i8 %var_2_1369, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1379, i8* %var_2_21, align 1
; Matched:%var_2_1370:  %var_2_1370 = xor i32 %var_2_1359, %var_2_1358
; %var_2_1380 = xor i32 %var_2_1369, %var_2_1368
; Matched:%var_2_1371:  %var_2_1371 = lshr i32 %var_2_1370, 4
; %var_2_1381 = lshr i32 %var_2_1380, 4
; Matched:%var_2_1372:  %var_2_1372 = trunc i32 %var_2_1371 to i8
; %var_2_1382 = trunc i32 %var_2_1381 to i8
; Matched:%var_2_1373:  %var_2_1373 = and i8 %var_2_1372, 1
; %var_2_1383 = and i8 %var_2_1382, 1
; Matched:\<badref\>:  store i8 %var_2_1373, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_1383, i8* %var_2_27, align 1
; Matched:%var_2_1374:  %var_2_1374 = zext i1 %var_2_1362 to i8
; %var_2_1384 = zext i1 %var_2_1372 to i8
; Matched:\<badref\>:  store i8 %var_2_1374, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_1384, i8* %var_2_30, align 1
; Matched:%var_2_1375:  %var_2_1375 = lshr i32 %var_2_1359, 31
; %var_2_1385 = lshr i32 %var_2_1369, 31
; Matched:%var_2_1376:  %var_2_1376 = trunc i32 %var_2_1375 to i8
; %var_2_1386 = trunc i32 %var_2_1385 to i8
; Matched:\<badref\>:  store i8 %var_2_1376, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_1386, i8* %var_2_33, align 1
; Matched:%var_2_1377:  %var_2_1377 = lshr i32 %var_2_1358, 31
; %var_2_1387 = lshr i32 %var_2_1368, 31
; Matched:%var_2_1378:  %var_2_1378 = xor i32 %var_2_1375, %var_2_1377
; %var_2_1388 = xor i32 %var_2_1385, %var_2_1387
; Matched:%var_2_1379:  %var_2_1379 = add nuw nsw i32 %var_2_1378, %var_2_1375
; %var_2_1389 = add nuw nsw i32 %var_2_1388, %var_2_1385
; Matched:%var_2_1380:  %var_2_1380 = icmp eq i32 %var_2_1379, 2
; %var_2_1390 = icmp eq i32 %var_2_1389, 2
; Matched:%var_2_1381:  %var_2_1381 = zext i1 %var_2_1380 to i8
; %var_2_1391 = zext i1 %var_2_1390 to i8
; Matched:\<badref\>:  store i8 %var_2_1381, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_1391, i8* %var_2_39, align 1
%var_2_1392 = sext i32 %var_2_1369 to i64
; Matched:\<badref\>:  store i64 %var_2_1382, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_1392, i64* %RCX.i523, align 8
%var_2_1393 = shl nsw i64 %var_2_1392, 2
%var_2_1394 = add nsw i64 %var_2_1393, 6300752
; Matched:%var_2_1385:  %var_2_1385 = add i64 %var_2_1352, 24
; %var_2_1395 = add i64 %var_2_1359, 24
; Matched:\<badref\>:  store i64 %var_2_1181, i64* %PC, align 8
; store i64 %var_2_1395, i64* %var_2_3, align 8
%var_2_1396 = inttoptr i64 %var_2_1394 to i32*
%var_2_1397 = load i32, i32* %var_2_1396, align 4
%var_2_1398 = zext i32 %var_2_1397 to i64
store i64 %var_2_1398, i64* %RDI.i425, align 8
%var_2_1399 = add i64 %var_2_1364, -8
; Matched:%var_2_1390:  %var_2_1390 = add i64 %var_2_1352, 29
; %var_2_1400 = add i64 %var_2_1359, 29
; Matched:\<badref\>:  store i64 %var_2_1390, i64* %PC, align 8
; store i64 %var_2_1400, i64* %var_2_3, align 8
%var_2_1401 = inttoptr i64 %var_2_1399 to double*
%var_2_1402 = load double, double* %var_2_1401, align 8
%var_2_1403 = bitcast i64 %var_2_1363 to double
%var_2_1404 = fsub double %var_2_1402, %var_2_1403
store double %var_2_1404, double* %var_2_646, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_652, align 1, !tbaa !1284
; store i64 0, i64* %var_2_647, align 1
%var_2_1405 = add i64 %var_2_1364, -16
; Matched:%var_2_1396:  %var_2_1396 = add i64 %var_2_1352, 38
; %var_2_1406 = add i64 %var_2_1359, 38
; Matched:\<badref\>:  store i64 %var_2_778, i64* %PC, align 8
; store i64 %var_2_1406, i64* %var_2_3, align 8
%var_2_1407 = inttoptr i64 %var_2_1405 to double*
%var_2_1408 = load double, double* %var_2_1407, align 8
%var_2_1409 = fsub double %var_2_1408, %var_2_1403
store double %var_2_1409, double* %var_2_665, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_671, align 1, !tbaa !1284
; store i64 0, i64* %var_2_667, align 1
%var_2_1410 = add i64 %var_2_1364, -24
; Matched:%var_2_1401:  %var_2_1401 = add i64 %var_2_1352, 47
; %var_2_1411 = add i64 %var_2_1359, 47
; Matched:\<badref\>:  store i64 %var_2_1401, i64* %PC, align 8
; store i64 %var_2_1411, i64* %var_2_3, align 8
%var_2_1412 = inttoptr i64 %var_2_1410 to double*
%var_2_1413 = load double, double* %var_2_1412, align 8
%var_2_1414 = fsub double %var_2_1413, %var_2_1403
store double %var_2_1414, double* %var_2_674, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_679, align 1, !tbaa !1284
; store i64 0, i64* %var_2_676, align 1
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1354, -248
; %var_2_1415 = add i64 %var_2_1364, -248
; Matched:%var_2_1406:  %var_2_1406 = add i64 %var_2_1352, 59
; %var_2_1416 = add i64 %var_2_1359, 59
; Matched:\<badref\>:  store i64 %var_2_1406, i64* %PC, align 8
; store i64 %var_2_1416, i64* %var_2_3, align 8
; Matched:%var_2_1407:  %var_2_1407 = load i64, i64* %var_2_48, align 1
; %var_2_1417 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1408:  %var_2_1408 = inttoptr i64 %var_2_1405 to i64*
; %var_2_1418 = inttoptr i64 %var_2_1415 to i64*
; Matched:\<badref\>:  store i64 %var_2_1407, i64* %var_2_1408, align 8
; store i64 %var_2_1417, i64* %var_2_1418, align 8
%var_2_1419 = load i64, i64* %var_2_3, align 8
%var_2_1420 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_1421 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_1422 = extractelement <2 x i32> %var_2_1420, i32 0
; Matched:\<badref\>:  store i32 %var_2_1412, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1422, i32* %var_2_696, align 1
%var_2_1423 = extractelement <2 x i32> %var_2_1420, i32 1
; Matched:\<badref\>:  store i32 %var_2_1413, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1423, i32* %var_2_699, align 1
%var_2_1424 = extractelement <2 x i32> %var_2_1421, i32 0
; Matched:\<badref\>:  store i32 %var_2_1414, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1424, i32* %var_2_701, align 1
%var_2_1425 = extractelement <2 x i32> %var_2_1421, i32 1
; Matched:\<badref\>:  store i32 %var_2_793, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1425, i32* %var_2_704, align 1
%var_2_1426 = load <2 x i32>, <2 x i32>* %var_2_691, align 1
%var_2_1427 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1428 = extractelement <2 x i32> %var_2_1426, i32 0
; Matched:\<badref\>:  store i32 %var_2_965, i32* %var_2_718, align 1, !tbaa !1286
; store i32 %var_2_1428, i32* %var_2_716, align 1
%var_2_1429 = extractelement <2 x i32> %var_2_1426, i32 1
; Matched:\<badref\>:  store i32 %var_2_966, i32* %var_2_721, align 1, !tbaa !1286
; store i32 %var_2_1429, i32* %var_2_719, align 1
%var_2_1430 = extractelement <2 x i32> %var_2_1427, i32 0
; Matched:\<badref\>:  store i32 %var_2_1215, i32* %var_2_723, align 1, !tbaa !1286
; store i32 %var_2_1430, i32* %var_2_721, align 1
%var_2_1431 = extractelement <2 x i32> %var_2_1427, i32 1
; Matched:\<badref\>:  store i32 %var_2_1216, i32* %var_2_726, align 1, !tbaa !1286
; store i32 %var_2_1431, i32* %var_2_724, align 1
%var_2_1432 = load <2 x i32>, <2 x i32>* %var_2_711, align 1
%var_2_1433 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1434 = extractelement <2 x i32> %var_2_1432, i32 0
; Matched:\<badref\>:  store i32 %var_2_1424, i32* %var_2_738, align 1, !tbaa !1286
; store i32 %var_2_1434, i32* %var_2_736, align 1
%var_2_1435 = extractelement <2 x i32> %var_2_1432, i32 1
; Matched:\<badref\>:  store i32 %var_2_1220, i32* %var_2_741, align 1, !tbaa !1286
; store i32 %var_2_1435, i32* %var_2_739, align 1
%var_2_1436 = extractelement <2 x i32> %var_2_1433, i32 0
; Matched:\<badref\>:  store i32 %var_2_1426, i32* %var_2_743, align 1, !tbaa !1286
; store i32 %var_2_1436, i32* %var_2_741, align 1
%var_2_1437 = extractelement <2 x i32> %var_2_1433, i32 1
; Matched:\<badref\>:  store i32 %var_2_1222, i32* %var_2_746, align 1, !tbaa !1286
; store i32 %var_2_1437, i32* %var_2_744, align 1
%var_2_1438 = add i64 %var_2_1419, 234
; Matched:%var_2_1429:  %var_2_1429 = add i64 %var_2_1409, 14
; %var_2_1439 = add i64 %var_2_1419, 14
%var_2_1440 = load i64, i64* %var_2_6, align 8
%var_2_1441 = add i64 %var_2_1440, -8
; Matched:%var_2_1432:  %var_2_1432 = inttoptr i64 %var_2_1431 to i64*
; %var_2_1442 = inttoptr i64 %var_2_1441 to i64*
; Matched:\<badref\>:  store i64 %var_2_1429, i64* %var_2_1432, align 8
; store i64 %var_2_1439, i64* %var_2_1442, align 8
; Matched:\<badref\>:  store i64 %var_2_1527, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1441, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1428, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1438, i64* %var_2_3, align 8
%call2_400b1f = tail call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %var_2_1438, %struct.Memory* %call2_400ad6)
; Matched:%var_2_1434:  %var_2_1434 = load i64, i64* %RBP, align 8
; %var_2_1443 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1435:  %var_2_1435 = add i64 %var_2_1434, -240
; %var_2_1444 = add i64 %var_2_1443, -240
%var_2_1445 = load i64, i64* %var_2_3, align 8
%var_2_1446 = add i64 %var_2_1445, 8
store i64 %var_2_1446, i64* %var_2_3, align 8
; Matched:%var_2_1438:  %var_2_1438 = inttoptr i64 %var_2_1435 to i64*
; %var_2_1447 = inttoptr i64 %var_2_1444 to i64*
; Matched:%var_2_1439:  %var_2_1439 = load i64, i64* %var_2_1438, align 8
; %var_2_1448 = load i64, i64* %var_2_1447, align 8
; Matched:\<badref\>:  store i64 %var_2_1439, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1448, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1440:  %var_2_1440 = add i64 %var_2_1434, -256
; %var_2_1449 = add i64 %var_2_1443, -256
; Matched:%var_2_1441:  %var_2_1441 = add i64 %var_2_1436, 16
; %var_2_1450 = add i64 %var_2_1445, 16
; Matched:\<badref\>:  store i64 %var_2_1441, i64* %PC, align 8
; store i64 %var_2_1450, i64* %var_2_3, align 8
; Matched:%var_2_1442:  %var_2_1442 = load i64, i64* %var_2_48, align 1
; %var_2_1451 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1443:  %var_2_1443 = inttoptr i64 %var_2_1440 to i64*
; %var_2_1452 = inttoptr i64 %var_2_1449 to i64*
; Matched:\<badref\>:  store i64 %var_2_1442, i64* %var_2_1443, align 8
; store i64 %var_2_1451, i64* %var_2_1452, align 8
%var_2_1453 = load i64, i64* %var_2_3, align 8
%var_2_1454 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_1455 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_1456 = extractelement <2 x i32> %var_2_1454, i32 0
; Matched:\<badref\>:  store i32 %var_2_1447, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1456, i32* %var_2_696, align 1
%var_2_1457 = extractelement <2 x i32> %var_2_1454, i32 1
; Matched:\<badref\>:  store i32 %var_2_1243, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1457, i32* %var_2_699, align 1
%var_2_1458 = extractelement <2 x i32> %var_2_1455, i32 0
; Matched:\<badref\>:  store i32 %var_2_823, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1458, i32* %var_2_701, align 1
%var_2_1459 = extractelement <2 x i32> %var_2_1455, i32 1
; Matched:\<badref\>:  store i32 %var_2_1245, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1459, i32* %var_2_704, align 1
; Matched:%var_2_1451:  %var_2_1451 = load i64, i64* %RBP, align 8
; %var_2_1460 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1452:  %var_2_1452 = add i64 %var_2_1451, -248
; %var_2_1461 = add i64 %var_2_1460, -248
; Matched:%var_2_1248:  %var_2_1248 = add i64 %var_2_1239, 11
; %var_2_1462 = add i64 %var_2_1453, 11
; Matched:\<badref\>:  store i64 %var_2_999, i64* %PC, align 8
; store i64 %var_2_1462, i64* %var_2_3, align 8
; Matched:%var_2_1454:  %var_2_1454 = inttoptr i64 %var_2_1452 to i64*
; %var_2_1463 = inttoptr i64 %var_2_1461 to i64*
; Matched:%var_2_1455:  %var_2_1455 = load i64, i64* %var_2_1454, align 8
; %var_2_1464 = load i64, i64* %var_2_1463, align 8
; Matched:\<badref\>:  store i64 %var_2_1455, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1464, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1456:  %var_2_1456 = add i64 %var_2_1451, -256
; %var_2_1465 = add i64 %var_2_1460, -256
; Matched:%var_2_1003:  %var_2_1003 = add i64 %var_2_990, 19
; %var_2_1466 = add i64 %var_2_1453, 19
; Matched:\<badref\>:  store i64 %var_2_416, i64* %PC, align 8
; store i64 %var_2_1466, i64* %var_2_3, align 8
; Matched:%var_2_1458:  %var_2_1458 = inttoptr i64 %var_2_1456 to i64*
; %var_2_1467 = inttoptr i64 %var_2_1465 to i64*
; Matched:%var_2_1459:  %var_2_1459 = load i64, i64* %var_2_1458, align 8
; %var_2_1468 = load i64, i64* %var_2_1467, align 8
; Matched:\<badref\>:  store i64 %var_2_1459, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1468, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1469 = add i64 %var_2_1453, 540
; Matched:%var_2_1007:  %var_2_1007 = add i64 %var_2_990, 24
; %var_2_1470 = add i64 %var_2_1453, 24
%var_2_1471 = load i64, i64* %var_2_6, align 8
%var_2_1472 = add i64 %var_2_1471, -8
; Matched:%var_2_1528:  %var_2_1528 = inttoptr i64 %var_2_1527 to i64*
; %var_2_1473 = inttoptr i64 %var_2_1472 to i64*
; Matched:\<badref\>:  store i64 %var_2_1493, i64* %var_2_1496, align 8
; store i64 %var_2_1470, i64* %var_2_1473, align 8
; Matched:\<badref\>:  store i64 %var_2_1495, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1472, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1460, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1469, i64* %var_2_3, align 8
%call2_400b47 = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1469, %struct.Memory* %call2_400b1f)
; Matched:%var_2_1466:  %var_2_1466 = load i64, i64* %RBP, align 8
; %var_2_1474 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1467:  %var_2_1467 = add i64 %var_2_1466, -200
; %var_2_1475 = add i64 %var_2_1474, -200
%var_2_1476 = load i64, i64* %var_2_3, align 8
%var_2_1477 = add i64 %var_2_1476, 8
store i64 %var_2_1477, i64* %var_2_3, align 8
; Matched:%var_2_1470:  %var_2_1470 = inttoptr i64 %var_2_1467 to i64*
; %var_2_1478 = inttoptr i64 %var_2_1475 to i64*
; Matched:%var_2_1471:  %var_2_1471 = load i64, i64* %var_2_1470, align 8
; %var_2_1479 = load i64, i64* %var_2_1478, align 8
; Matched:\<badref\>:  store i64 %var_2_1471, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1479, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1472:  %var_2_1472 = add i64 %var_2_1466, -264
; %var_2_1480 = add i64 %var_2_1474, -264
; Matched:%var_2_1473:  %var_2_1473 = add i64 %var_2_1468, 16
; %var_2_1481 = add i64 %var_2_1476, 16
; Matched:\<badref\>:  store i64 %var_2_1473, i64* %PC, align 8
; store i64 %var_2_1481, i64* %var_2_3, align 8
; Matched:%var_2_1474:  %var_2_1474 = load i64, i64* %var_2_48, align 1
; %var_2_1482 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1475:  %var_2_1475 = inttoptr i64 %var_2_1472 to i64*
; %var_2_1483 = inttoptr i64 %var_2_1480 to i64*
; Matched:\<badref\>:  store i64 %var_2_1474, i64* %var_2_1475, align 8
; store i64 %var_2_1482, i64* %var_2_1483, align 8
%var_2_1484 = load i64, i64* %var_2_3, align 8
%var_2_1485 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_1486 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_1487 = extractelement <2 x i32> %var_2_1485, i32 0
; Matched:\<badref\>:  store i32 %var_2_1025, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1487, i32* %var_2_696, align 1
%var_2_1488 = extractelement <2 x i32> %var_2_1485, i32 1
; Matched:\<badref\>:  store i32 %var_2_994, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1488, i32* %var_2_699, align 1
%var_2_1489 = extractelement <2 x i32> %var_2_1486, i32 0
; Matched:\<badref\>:  store i32 %var_2_995, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1489, i32* %var_2_701, align 1
%var_2_1490 = extractelement <2 x i32> %var_2_1486, i32 1
; Matched:\<badref\>:  store i32 %var_2_996, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1490, i32* %var_2_704, align 1
; Matched:%var_2_1483:  %var_2_1483 = load i64, i64* %RBP, align 8
; %var_2_1491 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1484:  %var_2_1484 = add i64 %var_2_1483, -232
; %var_2_1492 = add i64 %var_2_1491, -232
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_521, 11
; %var_2_1493 = add i64 %var_2_1484, 11
; Matched:\<badref\>:  store i64 %var_2_897, i64* %PC, align 8
; store i64 %var_2_1493, i64* %var_2_3, align 8
; Matched:%var_2_1486:  %var_2_1486 = inttoptr i64 %var_2_1484 to i64*
; %var_2_1494 = inttoptr i64 %var_2_1492 to i64*
; Matched:%var_2_1487:  %var_2_1487 = load i64, i64* %var_2_1486, align 8
; %var_2_1495 = load i64, i64* %var_2_1494, align 8
; Matched:\<badref\>:  store i64 %var_2_1487, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1495, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1488:  %var_2_1488 = add i64 %var_2_1483, -264
; %var_2_1496 = add i64 %var_2_1491, -264
; Matched:%var_2_1035:  %var_2_1035 = add i64 %var_2_1022, 19
; %var_2_1497 = add i64 %var_2_1484, 19
; Matched:\<badref\>:  store i64 %var_2_1035, i64* %PC, align 8
; store i64 %var_2_1497, i64* %var_2_3, align 8
; Matched:%var_2_1490:  %var_2_1490 = inttoptr i64 %var_2_1488 to i64*
; %var_2_1498 = inttoptr i64 %var_2_1496 to i64*
; Matched:%var_2_1491:  %var_2_1491 = load i64, i64* %var_2_1490, align 8
; %var_2_1499 = load i64, i64* %var_2_1498, align 8
; Matched:\<badref\>:  store i64 %var_2_1491, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1499, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1500 = add i64 %var_2_1484, 500
; Matched:%var_2_1493:  %var_2_1493 = add i64 %var_2_1476, 24
; %var_2_1501 = add i64 %var_2_1484, 24
%var_2_1502 = load i64, i64* %var_2_6, align 8
%var_2_1503 = add i64 %var_2_1502, -8
; Matched:%var_2_1464:  %var_2_1464 = inttoptr i64 %var_2_1463 to i64*
; %var_2_1504 = inttoptr i64 %var_2_1503 to i64*
; Matched:\<badref\>:  store i64 %var_2_1256, i64* %var_2_1259, align 8
; store i64 %var_2_1501, i64* %var_2_1504, align 8
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1503, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1492, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1500, i64* %var_2_3, align 8
%call2_400b6f = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1500, %struct.Memory* %call2_400b47)
; Matched:%var_2_1498:  %var_2_1498 = load i64, i64* %RBP, align 8
; %var_2_1505 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1499:  %var_2_1499 = add i64 %var_2_1498, -96
; %var_2_1506 = add i64 %var_2_1505, -96
%var_2_1507 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_102, 5
; %var_2_1508 = add i64 %var_2_1507, 5
; Matched:\<badref\>:  store i64 %var_2_54, i64* %PC, align 8
; store i64 %var_2_1508, i64* %var_2_3, align 8
; Matched:%var_2_1502:  %var_2_1502 = inttoptr i64 %var_2_1499 to i64*
; %var_2_1509 = inttoptr i64 %var_2_1506 to i64*
; Matched:%var_2_1503:  %var_2_1503 = load i64, i64* %var_2_1502, align 8
; %var_2_1510 = load i64, i64* %var_2_1509, align 8
; Matched:\<badref\>:  store i64 %var_2_1503, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1510, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1504:  %var_2_1504 = add i64 %var_2_1498, -272
; %var_2_1511 = add i64 %var_2_1505, -272
; Matched:%var_2_831:  %var_2_831 = add i64 %var_2_816, 13
; %var_2_1512 = add i64 %var_2_1507, 13
; Matched:\<badref\>:  store i64 %var_2_1019, i64* %PC, align 8
; store i64 %var_2_1512, i64* %var_2_3, align 8
; Matched:%var_2_1506:  %var_2_1506 = load i64, i64* %var_2_48, align 1
; %var_2_1513 = load i64, i64* %var_2_44, align 1
; Matched:%var_2_1507:  %var_2_1507 = inttoptr i64 %var_2_1504 to i64*
; %var_2_1514 = inttoptr i64 %var_2_1511 to i64*
; Matched:\<badref\>:  store i64 %var_2_1506, i64* %var_2_1507, align 8
; store i64 %var_2_1513, i64* %var_2_1514, align 8
%var_2_1515 = load i64, i64* %var_2_3, align 8
%var_2_1516 = load <2 x i32>, <2 x i32>* %var_2_816, align 1
%var_2_1517 = load <2 x i32>, <2 x i32>* %var_2_818, align 1
%var_2_1518 = extractelement <2 x i32> %var_2_1516, i32 0
; Matched:\<badref\>:  store i32 %var_2_1479, i32* %var_2_698, align 1, !tbaa !1286
; store i32 %var_2_1518, i32* %var_2_696, align 1
%var_2_1519 = extractelement <2 x i32> %var_2_1516, i32 1
; Matched:\<badref\>:  store i32 %var_2_1448, i32* %var_2_701, align 1, !tbaa !1286
; store i32 %var_2_1519, i32* %var_2_699, align 1
%var_2_1520 = extractelement <2 x i32> %var_2_1517, i32 0
; Matched:\<badref\>:  store i32 %var_2_1481, i32* %var_2_703, align 1, !tbaa !1286
; store i32 %var_2_1520, i32* %var_2_701, align 1
%var_2_1521 = extractelement <2 x i32> %var_2_1517, i32 1
; Matched:\<badref\>:  store i32 %var_2_1450, i32* %var_2_706, align 1, !tbaa !1286
; store i32 %var_2_1521, i32* %var_2_704, align 1
; Matched:%var_2_1515:  %var_2_1515 = load i64, i64* %RBP, align 8
; %var_2_1522 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1516:  %var_2_1516 = add i64 %var_2_1515, -192
; %var_2_1523 = add i64 %var_2_1522, -192
; Matched:%var_2_1517:  %var_2_1517 = add i64 %var_2_1508, 11
; %var_2_1524 = add i64 %var_2_1515, 11
; Matched:\<badref\>:  store i64 %var_2_1138, i64* %PC, align 8
; store i64 %var_2_1524, i64* %var_2_3, align 8
; Matched:%var_2_1518:  %var_2_1518 = inttoptr i64 %var_2_1516 to i64*
; %var_2_1525 = inttoptr i64 %var_2_1523 to i64*
; Matched:%var_2_1519:  %var_2_1519 = load i64, i64* %var_2_1518, align 8
; %var_2_1526 = load i64, i64* %var_2_1525, align 8
; Matched:\<badref\>:  store i64 %var_2_1519, i64* %var_2_56, align 1, !tbaa !1284
; store i64 %var_2_1526, i64* %var_2_53, align 1
store double 0.000000e+00, double* %var_2_180, align 1
; Matched:%var_2_1520:  %var_2_1520 = add i64 %var_2_1515, -272
; %var_2_1527 = add i64 %var_2_1522, -272
; Matched:%var_2_416:  %var_2_416 = add i64 %var_2_381, 19
; %var_2_1528 = add i64 %var_2_1515, 19
; Matched:\<badref\>:  store i64 %var_2_901, i64* %PC, align 8
; store i64 %var_2_1528, i64* %var_2_3, align 8
; Matched:%var_2_1522:  %var_2_1522 = inttoptr i64 %var_2_1520 to i64*
; %var_2_1529 = inttoptr i64 %var_2_1527 to i64*
; Matched:%var_2_1523:  %var_2_1523 = load i64, i64* %var_2_1522, align 8
; %var_2_1530 = load i64, i64* %var_2_1529, align 8
; Matched:\<badref\>:  store i64 %var_2_1523, i64* %var_2_63, align 1, !tbaa !1284
; store i64 %var_2_1530, i64* %var_2_61, align 1
store double 0.000000e+00, double* %var_2_648, align 1
%var_2_1531 = add i64 %var_2_1515, 463
; Matched:%var_2_1039:  %var_2_1039 = add i64 %var_2_1022, 24
; %var_2_1532 = add i64 %var_2_1515, 24
%var_2_1533 = load i64, i64* %var_2_6, align 8
%var_2_1534 = add i64 %var_2_1533, -8
; Matched:%var_2_1010:  %var_2_1010 = inttoptr i64 %var_2_1009 to i64*
; %var_2_1535 = inttoptr i64 %var_2_1534 to i64*
; Matched:\<badref\>:  store i64 %var_2_1525, i64* %var_2_1528, align 8
; store i64 %var_2_1532, i64* %var_2_1535, align 8
; Matched:\<badref\>:  store i64 %var_2_1145, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1534, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1524, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1531, i64* %var_2_3, align 8
%call2_400b94 = tail call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %var_2_1531, %struct.Memory* %call2_400b6f)
; Matched:%var_2_1530:  %var_2_1530 = load i64, i64* %RSP, align 8
; %var_2_1536 = load i64, i64* %var_2_6, align 8
%var_2_1537 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1532:  %var_2_1532 = add i64 %var_2_1530, 272
; %var_2_1538 = add i64 %var_2_1536, 272
; Matched:\<badref\>:  store i64 %var_2_1532, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1538, i64* %var_2_6, align 8
; Matched:%var_2_1533:  %var_2_1533 = icmp ugt i64 %var_2_1530, -273
; %var_2_1539 = icmp ugt i64 %var_2_1536, -273
; Matched:%var_2_1534:  %var_2_1534 = zext i1 %var_2_1533 to i8
; %var_2_1540 = zext i1 %var_2_1539 to i8
; Matched:\<badref\>:  store i8 %var_2_1534, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_1540, i8* %var_2_14, align 1
; Matched:%var_2_1535:  %var_2_1535 = trunc i64 %var_2_1532 to i32
; %var_2_1541 = trunc i64 %var_2_1538 to i32
; Matched:%var_2_1536:  %var_2_1536 = and i32 %var_2_1535, 255
; %var_2_1542 = and i32 %var_2_1541, 255
; Matched:%var_2_1537:  %var_2_1537 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1536) #12
; %var_2_1543 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1542)
; Matched:%var_2_1538:  %var_2_1538 = trunc i32 %var_2_1537 to i8
; %var_2_1544 = trunc i32 %var_2_1543 to i8
; Matched:%var_2_1539:  %var_2_1539 = and i8 %var_2_1538, 1
; %var_2_1545 = and i8 %var_2_1544, 1
; Matched:%var_2_1540:  %var_2_1540 = xor i8 %var_2_1539, 1
; %var_2_1546 = xor i8 %var_2_1545, 1
; Matched:\<badref\>:  store i8 %var_2_1540, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_1546, i8* %var_2_21, align 1
; Matched:%var_2_1541:  %var_2_1541 = xor i64 %var_2_1530, 16
; %var_2_1547 = xor i64 %var_2_1536, 16
; Matched:%var_2_1542:  %var_2_1542 = xor i64 %var_2_1541, %var_2_1532
; %var_2_1548 = xor i64 %var_2_1547, %var_2_1538
; Matched:%var_2_1543:  %var_2_1543 = lshr i64 %var_2_1542, 4
; %var_2_1549 = lshr i64 %var_2_1548, 4
; Matched:%var_2_1544:  %var_2_1544 = trunc i64 %var_2_1543 to i8
; %var_2_1550 = trunc i64 %var_2_1549 to i8
; Matched:%var_2_1545:  %var_2_1545 = and i8 %var_2_1544, 1
; %var_2_1551 = and i8 %var_2_1550, 1
; Matched:\<badref\>:  store i8 %var_2_1545, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_1551, i8* %var_2_27, align 1
; Matched:%var_2_1546:  %var_2_1546 = icmp eq i64 %var_2_1532, 0
; %var_2_1552 = icmp eq i64 %var_2_1538, 0
; Matched:%var_2_1547:  %var_2_1547 = zext i1 %var_2_1546 to i8
; %var_2_1553 = zext i1 %var_2_1552 to i8
; Matched:\<badref\>:  store i8 %var_2_1547, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_1553, i8* %var_2_30, align 1
; Matched:%var_2_1548:  %var_2_1548 = lshr i64 %var_2_1532, 63
; %var_2_1554 = lshr i64 %var_2_1538, 63
; Matched:%var_2_1549:  %var_2_1549 = trunc i64 %var_2_1548 to i8
; %var_2_1555 = trunc i64 %var_2_1554 to i8
; Matched:\<badref\>:  store i8 %var_2_1549, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_1555, i8* %var_2_33, align 1
; Matched:%var_2_1550:  %var_2_1550 = lshr i64 %var_2_1530, 63
; %var_2_1556 = lshr i64 %var_2_1536, 63
; Matched:%var_2_1551:  %var_2_1551 = xor i64 %var_2_1548, %var_2_1550
; %var_2_1557 = xor i64 %var_2_1554, %var_2_1556
; Matched:%var_2_1552:  %var_2_1552 = add nuw nsw i64 %var_2_1551, %var_2_1548
; %var_2_1558 = add nuw nsw i64 %var_2_1557, %var_2_1554
; Matched:%var_2_1553:  %var_2_1553 = icmp eq i64 %var_2_1552, 2
; %var_2_1559 = icmp eq i64 %var_2_1558, 2
; Matched:%var_2_1554:  %var_2_1554 = zext i1 %var_2_1553 to i8
; %var_2_1560 = zext i1 %var_2_1559 to i8
; Matched:\<badref\>:  store i8 %var_2_1554, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_1560, i8* %var_2_39, align 1
%var_2_1561 = add i64 %var_2_1537, 8
store i64 %var_2_1561, i64* %var_2_3, align 8
; Matched:%var_2_1556:  %var_2_1556 = add i64 %var_2_1530, 280
; %var_2_1562 = add i64 %var_2_1536, 280
; Matched:%var_2_1557:  %var_2_1557 = inttoptr i64 %var_2_1532 to i64*
; %var_2_1563 = inttoptr i64 %var_2_1538 to i64*
; Matched:%var_2_1558:  %var_2_1558 = load i64, i64* %var_2_1557, align 8
; %var_2_1564 = load i64, i64* %var_2_1563, align 8
; Matched:\<badref\>:  store i64 %var_2_1558, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_1564, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_1556, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1562, i64* %var_2_6, align 8
; Matched:%var_2_1559:  %var_2_1559 = add i64 %var_2_1531, 9
; %var_2_1565 = add i64 %var_2_1537, 9
; Matched:\<badref\>:  store i64 %var_2_1559, i64* %PC, align 8
; store i64 %var_2_1565, i64* %var_2_3, align 8
; Matched:%var_2_1560:  %var_2_1560 = inttoptr i64 %var_2_1556 to i64*
; %var_2_1566 = inttoptr i64 %var_2_1562 to i64*
; Matched:%var_2_1561:  %var_2_1561 = load i64, i64* %var_2_1560, align 8
; %var_2_1567 = load i64, i64* %var_2_1566, align 8
; Matched:\<badref\>:  store i64 %var_2_1561, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1567, i64* %var_2_3, align 8
; Matched:%var_2_1562:  %var_2_1562 = add i64 %var_2_1530, 288
; %var_2_1568 = add i64 %var_2_1536, 288
; Matched:\<badref\>:  store i64 %var_2_1562, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1568, i64* %var_2_6, align 8
  ret %struct.Memory* %call2_400b94
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
define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 272
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_callq_.floor_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_callq_.fade(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6300752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_0x602450___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6300752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps__xmm4___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movaps__xmm5___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_callq_.grad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5dc__rip__type* @G_0x5dc__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.lerp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x58a__rip__type* @G_0x58a__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_subsd__xmm1___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x531__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x531__rip__type* @G_0x531__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_0x497__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x497__rip__type* @G_0x497__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movaps__xmm5___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm6___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x43c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x43c__rip__type* @G_0x43c__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movaps__xmm4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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
define %struct.Memory* @routine_movsd_MINUS0xd8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_0x3cf__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3cf__rip__type* @G_0x3cf__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_subsd__xmm1___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x37d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x37d__rip__type* @G_0x37d__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
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
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 272
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -273
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
