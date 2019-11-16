; ModuleID = '/tmp/tmp86fei7hd-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1f7__rip__type = type <{ [8 x i8] }>
%G_0x3bf__rip__type = type <{ [8 x i8] }>
%G_0x6010e8_type = type <{ [8 x i8] }>
%G_0x6010f0_type = type <{ [8 x i8] }>
%G_0x6010f8_type = type <{ [8 x i8] }>
%G_0x601100_type = type <{ [8 x i8] }>
%G_0x601108_type = type <{ [8 x i8] }>
%G_0x601120_type = type <{ [16 x i8] }>
%G_0x601128_type = type <{ [16 x i8] }>
%G_0x601138_type = type <{ [16 x i8] }>
%G_0x601258_type = type <{ [16 x i8] }>
%G_0x601260_type = type <{ [16 x i8] }>
%G_0x601278_type = type <{ [16 x i8] }>
%G_0x601280_type = type <{ [16 x i8] }>
%G_0x601288_type = type <{ [16 x i8] }>
%G_0x601290_type = type <{ [16 x i8] }>
%G_0x601298_type = type <{ [16 x i8] }>
%G_0x6012a0_type = type <{ [16 x i8] }>
%G_0x6012d0_type = type <{ [16 x i8] }>
%G__0x400970_type = type <{ [8 x i8] }>
%G__0x4009a8_type = type <{ [8 x i8] }>
%G__0x4009aa_type = type <{ [8 x i8] }>
%G__0x4009da_type = type <{ [8 x i8] }>
%G__0x4009fe_type = type <{ [8 x i8] }>
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
@G_0x1f7__rip_ = global %G_0x1f7__rip__type zeroinitializer
@G_0x3bf__rip_ = global %G_0x3bf__rip__type zeroinitializer
@G_0x6010e8 = local_unnamed_addr global %G_0x6010e8_type zeroinitializer
@G_0x6010f0 = local_unnamed_addr global %G_0x6010f0_type zeroinitializer
@G_0x6010f8 = local_unnamed_addr global %G_0x6010f8_type zeroinitializer
@G_0x601100 = local_unnamed_addr global %G_0x601100_type zeroinitializer
@G_0x601108 = local_unnamed_addr global %G_0x601108_type zeroinitializer
@G_0x601120 = local_unnamed_addr global %G_0x601120_type zeroinitializer
@G_0x601128 = local_unnamed_addr global %G_0x601128_type zeroinitializer
@G_0x601138 = local_unnamed_addr global %G_0x601138_type zeroinitializer
@G_0x601258 = local_unnamed_addr global %G_0x601258_type zeroinitializer
@G_0x601260 = local_unnamed_addr global %G_0x601260_type zeroinitializer
@G_0x601278 = local_unnamed_addr global %G_0x601278_type zeroinitializer
@G_0x601280 = local_unnamed_addr global %G_0x601280_type zeroinitializer
@G_0x601288 = local_unnamed_addr global %G_0x601288_type zeroinitializer
@G_0x601290 = local_unnamed_addr global %G_0x601290_type zeroinitializer
@G_0x601298 = local_unnamed_addr global %G_0x601298_type zeroinitializer
@G_0x6012a0 = local_unnamed_addr global %G_0x6012a0_type zeroinitializer
@G_0x6012d0 = local_unnamed_addr global %G_0x6012d0_type zeroinitializer
@G__0x400970 = global %G__0x400970_type zeroinitializer
@G__0x4009a8 = global %G__0x4009a8_type zeroinitializer
@G__0x4009aa = global %G__0x4009aa_type zeroinitializer
@G__0x4009da = global %G__0x4009da_type zeroinitializer
@G__0x4009fe = global %G__0x4009fe_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_14, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_15:  %var_2_15 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_15, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_17:  %var_2_17 = inttoptr i64 %var_2_16 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_13, i64* %var_2_17, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_18:  %var_2_18 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_19:  %var_2_19 = add i64 %var_2_15, -136
; %var_2_11 = add i64 %var_2_7, -136
; Matched:\<badref\>:  store i64 %var_2_19, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_20:  %var_2_20 = icmp ult i64 %var_2_16, 128
; %var_2_12 = icmp ult i64 %var_2_8, 128
; Matched:%var_2_21:  %var_2_21 = zext i1 %var_2_20 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_22:  %var_2_22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_21, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_23:  %var_2_23 = trunc i64 %var_2_19 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_24:  %var_2_24 = and i32 %var_2_23, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_25:  %var_2_25 = tail call i32 @llvm.ctpop.i32(i32 %var_2_24) #11
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_26:  %var_2_26 = trunc i32 %var_2_25 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_27:  %var_2_27 = and i8 %var_2_26, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_28:  %var_2_28 = xor i8 %var_2_27, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_29:  %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_30:  %var_2_30 = xor i64 %var_2_16, %var_2_19
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_31:  %var_2_31 = lshr i64 %var_2_30, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_32:  %var_2_32 = trunc i64 %var_2_31 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_33:  %var_2_33 = and i8 %var_2_32, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_35:  %var_2_35 = icmp eq i64 %var_2_19, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_36:  %var_2_36 = zext i1 %var_2_35 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_38:  %var_2_38 = lshr i64 %var_2_19, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_39:  %var_2_39 = trunc i64 %var_2_38 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_40:  %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_39, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_41:  %var_2_41 = lshr i64 %var_2_16, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_42:  %var_2_42 = xor i64 %var_2_38, %var_2_41
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_43:  %var_2_43 = add nuw nsw i64 %var_2_42, %var_2_41
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_44:  %var_2_44 = icmp eq i64 %var_2_43, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_45:  %var_2_45 = zext i1 %var_2_44 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
; Matched:%var_2_46:  %var_2_46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_45, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x4009a8_type* @G__0x4009a8 to i64), i64* %RDI.i256, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_15, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_18, 27
; %var_2_40 = add i64 %var_2_10, 27
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_49:  %var_2_49 = inttoptr i64 %var_2_47 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_49, align 4
; store i32 0, i32* %var_2_41, align 4
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i320 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i320, align 1
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, -284
; %var_2_44 = add i64 %var_2_43, -284
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_137, 7
; %var_2_45 = add i64 %var_2_43, 7
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_142:  %var_2_142 = inttoptr i64 %var_2_141 to i64*
; %var_2_48 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_65, i64* %var_2_68, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:\<badref\>:  store i64 %var_2_67, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_47, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_49 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_50 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400970_type* @G__0x400970 to i64), i64* %RDI.i256, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i315 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_60:  %var_2_60 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i315, align 4
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_190, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_194, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = inttoptr i64 %var_2_59 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_60, i32* %var_2_62, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i320, align 1
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -304
; %var_2_57 = add i64 %var_2_56, -304
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_150, 7
; %var_2_58 = add i64 %var_2_56, 7
%var_2_59 = load i64, i64* %var_2_6, align 8
%var_2_60 = add i64 %var_2_59, -8
; Matched:%var_2_155:  %var_2_155 = inttoptr i64 %var_2_154 to i64*
; %var_2_61 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_52, i64* %var_2_55, align 8
; store i64 %var_2_58, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_504, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %var_2_3, align 8
%var_2_62 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_49)
%var_2_63 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4009aa_type* @G__0x4009aa to i64), i64* %RDI.i256, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_71:  %var_2_71 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 10)
%var_2_67 = add i64 %var_2_63, 18
store i64 %var_2_67, i64* %var_2_3, align 8
%var_2_68 = inttoptr i64 %var_2_66 to i64*
%var_2_69 = load i64, i64* %var_2_68, align 8
; Matched:%var_2_73:  %var_2_73 = bitcast [32 x %union.VectorReg]* %var_2_5 to double*
; %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_64 to double*
%var_2_71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_64, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_69, i64* %var_2_71, align 1
%var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_73 = bitcast i64* %var_2_72 to double*
store double 0.000000e+00, double* %var_2_73, align 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 18)
%var_2_76 = add i64 %var_2_63, 26
store i64 %var_2_76, i64* %var_2_3, align 8
%var_2_77 = inttoptr i64 %var_2_75 to i64*
%var_2_78 = load i64, i64* %var_2_77, align 8
; Matched:%var_2_78:  %var_2_78 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_79 = bitcast %union.VectorReg* %var_2_74 to double*
%var_2_80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_74, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_78, i64* %var_2_80, align 1
; Matched:%var_2_80:  %var_2_80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_81:  %var_2_81 = bitcast i64* %var_2_80 to double*
; %var_2_82 = bitcast i64* %var_2_81 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_84 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 26)
%var_2_85 = add i64 %var_2_63, 34
store i64 %var_2_85, i64* %var_2_3, align 8
%var_2_86 = inttoptr i64 %var_2_84 to i64*
%var_2_87 = load i64, i64* %var_2_86, align 8
%var_2_88 = bitcast %union.VectorReg* %var_2_83 to double*
%var_2_89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_83, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_87, i64* %var_2_89, align 1
; Matched:%var_2_85:  %var_2_85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_86:  %var_2_86 = bitcast i64* %var_2_85 to double*
; %var_2_91 = bitcast i64* %var_2_90 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_93 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 34)
%var_2_94 = add i64 %var_2_63, 42
store i64 %var_2_94, i64* %var_2_3, align 8
%var_2_95 = inttoptr i64 %var_2_93 to i64*
%var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:%var_2_88:  %var_2_88 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_97 = bitcast %union.VectorReg* %var_2_92 to double*
%var_2_98 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_92, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_96, i64* %var_2_98, align 1
; Matched:%var_2_90:  %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_91:  %var_2_91 = bitcast i64* %var_2_90 to double*
; %var_2_100 = bitcast i64* %var_2_99 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_102 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 42)
%var_2_103 = add i64 %var_2_63, 50
store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i64*
%var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:%var_2_93:  %var_2_93 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_106 = bitcast %union.VectorReg* %var_2_101 to double*
%var_2_107 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_101, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_105, i64* %var_2_107, align 1
; Matched:%var_2_95:  %var_2_95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_96:  %var_2_96 = bitcast i64* %var_2_95 to double*
; %var_2_109 = bitcast i64* %var_2_108 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
%var_2_111 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 50)
%var_2_112 = add i64 %var_2_63, 58
store i64 %var_2_112, i64* %var_2_3, align 8
%var_2_113 = inttoptr i64 %var_2_111 to i64*
%var_2_114 = load i64, i64* %var_2_113, align 8
; Matched:%var_2_98:  %var_2_98 = bitcast %union.VectorReg* %var_2_10 to double*
; %var_2_115 = bitcast %union.VectorReg* %var_2_110 to double*
%var_2_116 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_110, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_114, i64* %var_2_116, align 1
; Matched:%var_2_100:  %var_2_100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_101:  %var_2_101 = bitcast i64* %var_2_100 to double*
; %var_2_118 = bitcast i64* %var_2_117 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
%var_2_119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
%var_2_120 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64), i64 58)
%var_2_121 = add i64 %var_2_63, 66
store i64 %var_2_121, i64* %var_2_3, align 8
%var_2_122 = inttoptr i64 %var_2_120 to i64*
%var_2_123 = load i64, i64* %var_2_122, align 8
%var_2_124 = bitcast %union.VectorReg* %var_2_119 to double*
%var_2_125 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_119, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_123, i64* %var_2_125, align 1
; Matched:%var_2_105:  %var_2_105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_106:  %var_2_106 = bitcast i64* %var_2_105 to double*
; %var_2_127 = bitcast i64* %var_2_126 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_106, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_127, align 1
; Matched:%var_2_107:  %var_2_107 = load i64, i64* %RBP, align 8
; %var_2_128 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_107, -56
; %var_2_129 = add i64 %var_2_128, -56
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_70, 74
; %var_2_130 = add i64 %var_2_63, 74
; Matched:\<badref\>:  store i64 %var_2_109, i64* %PC, align 8
; store i64 %var_2_130, i64* %var_2_3, align 8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_108 to i64*
; %var_2_131 = inttoptr i64 %var_2_129 to i64*
; Matched:\<badref\>:  store i64 15625, i64* %var_2_110, align 8
; store i64 15625, i64* %var_2_131, align 8
; Matched:%var_2_12:  %var_2_12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
; %var_2_132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
%var_2_133 = load i64, i64* %RBP.i, align 8
%var_2_134 = add i64 %var_2_133, -56
; Matched:%var_2_474:  %var_2_474 = load i64, i64* %PC, align 8
; %var_2_135 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_114:  %var_2_114 = add i64 %var_2_113, 6
; %var_2_136 = add i64 %var_2_135, 6
; Matched:\<badref\>:  store i64 %var_2_114, i64* %PC, align 8
; store i64 %var_2_136, i64* %var_2_3, align 8
%var_2_137 = inttoptr i64 %var_2_134 to i64*
%var_2_138 = load i64, i64* %var_2_137, align 8
%var_2_139 = sitofp i64 %var_2_138 to double
; Matched:%var_2_118:  %var_2_118 = bitcast %union.VectorReg* %var_2_12 to double*
; %var_2_140 = bitcast %union.VectorReg* %var_2_132 to double*
; Matched:\<badref\>:  store double %var_2_117, double* %var_2_118, align 1, !tbaa !1285
; store double %var_2_139, double* %var_2_140, align 1
%var_2_141 = load double, double* %var_2_124, align 1
%var_2_142 = fdiv double %var_2_141, %var_2_139
; Matched:\<badref\>:  store double %var_2_120, double* %var_2_103, align 1, !tbaa !1285
; store double %var_2_142, double* %var_2_124, align 1
store double %var_2_142, double* bitcast (%G_0x601138_type* @G_0x601138 to double*), align 8
%var_2_143 = load i64, i64* %var_2_107, align 1
store i64 %var_2_143, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_111, -64
; %var_2_144 = add i64 %var_2_133, -64
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_113, 36
; %var_2_145 = add i64 %var_2_135, 36
; Matched:\<badref\>:  store i64 %var_2_482, i64* %PC, align 8
; store i64 %var_2_145, i64* %var_2_3, align 8
; Matched:%var_2_124:  %var_2_124 = inttoptr i64 %var_2_122 to i64*
; %var_2_146 = inttoptr i64 %var_2_144 to i64*
; Matched:\<badref\>:  store i64 512000000, i64* %var_2_124, align 8
; store i64 512000000, i64* %var_2_146, align 8
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %PC, align 8
; %var_2_147 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_126:  %var_2_126 = load i64, i64* %var_2_99, align 1
; %var_2_148 = load i64, i64* %var_2_116, align 1
; Matched:\<badref\>:  store i64 %var_2_126, i64* bitcast (%piref_type* @piref to i64*), align 8
; store i64 %var_2_148, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
%var_2_149 = load i64, i64* %var_2_107, align 1
store i64 %var_2_149, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %var_2_89, align 1
; %var_2_150 = load i64, i64* %var_2_98, align 1
; Matched:\<badref\>:  store i64 %var_2_128, i64* bitcast (%two_type* @two to i64*), align 8
; store i64 %var_2_150, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
; Matched:%var_2_129:  %var_2_129 = load i64, i64* %var_2_84, align 1
; %var_2_151 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_129, i64* bitcast (%three_type* @three to i64*), align 8
; store i64 %var_2_151, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
; Matched:%var_2_130:  %var_2_130 = load i64, i64* %var_2_79, align 1
; %var_2_152 = load i64, i64* %var_2_80, align 1
; Matched:\<badref\>:  store i64 %var_2_130, i64* bitcast (%four_type* @four to i64*), align 8
; store i64 %var_2_152, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
%var_2_153 = load i64, i64* %var_2_71, align 1
store i64 %var_2_153, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_127, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_149, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_73, align 1
store i64 %var_2_149, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_132:  %var_2_132 = load i64, i64* %RBP, align 8
; %var_2_154 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_132, -96
; %var_2_155 = add i64 %var_2_154, -96
; Matched:%var_2_134:  %var_2_134 = load i32, i32* %EAX, align 4
; %var_2_156 = load i32, i32* %EAX.i315, align 4
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_125, 75
; %var_2_157 = add i64 %var_2_147, 75
; Matched:\<badref\>:  store i64 %var_2_135, i64* %PC, align 8
; store i64 %var_2_157, i64* %var_2_3, align 8
; Matched:%var_2_136:  %var_2_136 = inttoptr i64 %var_2_133 to i32*
; %var_2_158 = inttoptr i64 %var_2_155 to i32*
; Matched:\<badref\>:  store i32 %var_2_134, i32* %var_2_136, align 4
; store i32 %var_2_156, i32* %var_2_158, align 4
; Matched:%var_2_137:  %var_2_137 = load i64, i64* %PC, align 8
; %var_2_159 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i320, align 1
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_137, -496
; %var_2_160 = add i64 %var_2_159, -496
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_50, 7
; %var_2_161 = add i64 %var_2_159, 7
%var_2_162 = load i64, i64* %var_2_6, align 8
%var_2_163 = add i64 %var_2_162, -8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_54 to i64*
; %var_2_164 = inttoptr i64 %var_2_163 to i64*
; Matched:\<badref\>:  store i64 %var_2_139, i64* %var_2_142, align 8
; store i64 %var_2_161, i64* %var_2_164, align 8
; Matched:\<badref\>:  store i64 %var_2_154, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_163, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_160, i64* %var_2_3, align 8
%var_2_165 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_62)
%var_2_166 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4009da_type* @G__0x4009da to i64), i64* %RDI.i256, align 8
; Matched:%var_2_145:  %var_2_145 = load i64, i64* %RBP, align 8
; %var_2_167 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_145, -100
; %var_2_168 = add i64 %var_2_167, -100
; Matched:%var_2_147:  %var_2_147 = load i32, i32* %EAX, align 4
; %var_2_169 = load i32, i32* %EAX.i315, align 4
; Matched:%var_2_499:  %var_2_499 = add i64 %var_2_485, 13
; %var_2_170 = add i64 %var_2_166, 13
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_170, i64* %var_2_3, align 8
; Matched:%var_2_149:  %var_2_149 = inttoptr i64 %var_2_146 to i32*
; %var_2_171 = inttoptr i64 %var_2_168 to i32*
; Matched:\<badref\>:  store i32 %var_2_147, i32* %var_2_149, align 4
; store i32 %var_2_169, i32* %var_2_171, align 4
; Matched:%var_2_150:  %var_2_150 = load i64, i64* %PC, align 8
; %var_2_172 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i320, align 1
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_150, -516
; %var_2_173 = add i64 %var_2_172, -516
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_63, 7
; %var_2_174 = add i64 %var_2_172, 7
%var_2_175 = load i64, i64* %var_2_6, align 8
%var_2_176 = add i64 %var_2_175, -8
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_67 to i64*
; %var_2_177 = inttoptr i64 %var_2_176 to i64*
; Matched:\<badref\>:  store i64 %var_2_152, i64* %var_2_155, align 8
; store i64 %var_2_174, i64* %var_2_177, align 8
; Matched:\<badref\>:  store i64 %var_2_54, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_176, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_151, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_173, i64* %var_2_3, align 8
%var_2_178 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_165)
%var_2_179 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_158:  %var_2_158 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
; %var_2_180 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
; Matched:%var_2_159:  %var_2_159 = getelementptr inbounds i8, i8* %var_2_71, i64 4
; %var_2_181 = getelementptr inbounds i8, i8* %var_2_65, i64 4
; Matched:%var_2_160:  %var_2_160 = bitcast i8* %var_2_159 to i32*
; %var_2_182 = bitcast i8* %var_2_181 to i32*
; Matched:%var_2_161:  %var_2_161 = bitcast i64* %var_2_75 to i32*
; %var_2_183 = bitcast i64* %var_2_72 to i32*
; Matched:%var_2_162:  %var_2_162 = getelementptr inbounds i8, i8* %var_2_71, i64 12
; %var_2_184 = getelementptr inbounds i8, i8* %var_2_65, i64 12
; Matched:%var_2_163:  %var_2_163 = bitcast i8* %var_2_162 to i32*
; %var_2_185 = bitcast i8* %var_2_184 to i32*
%var_2_186 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_186, align 1
; Matched:%var_2_165:  %var_2_165 = load i64, i64* %RBP, align 8
; %var_2_187 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_165, -56
; %var_2_188 = add i64 %var_2_187, -56
; Matched:%var_2_543:  %var_2_543 = add i64 %var_2_515, 11
; %var_2_189 = add i64 %var_2_179, 11
; Matched:\<badref\>:  store i64 %var_2_167, i64* %PC, align 8
; store i64 %var_2_189, i64* %var_2_3, align 8
; Matched:%var_2_168:  %var_2_168 = inttoptr i64 %var_2_166 to i64*
; %var_2_190 = inttoptr i64 %var_2_188 to i64*
; Matched:%var_2_169:  %var_2_169 = load i64, i64* %var_2_168, align 8
; %var_2_191 = load i64, i64* %var_2_190, align 8
; Matched:%var_2_170:  %var_2_170 = sext i64 %var_2_169 to i128
; %var_2_192 = sext i64 %var_2_191 to i128
; Matched:%var_2_171:  %var_2_171 = and i128 %var_2_170, -18446744073709551616
; %var_2_193 = and i128 %var_2_192, -18446744073709551616
; Matched:%var_2_172:  %var_2_172 = zext i64 %var_2_169 to i128
; %var_2_194 = zext i64 %var_2_191 to i128
; Matched:%var_2_173:  %var_2_173 = or i128 %var_2_171, %var_2_172
; %var_2_195 = or i128 %var_2_193, %var_2_194
; Matched:%var_2_174:  %var_2_174 = mul nsw i128 %var_2_173, 10000
; %var_2_196 = mul nsw i128 %var_2_195, 10000
; Matched:%var_2_175:  %var_2_175 = trunc i128 %var_2_174 to i64
; %var_2_197 = trunc i128 %var_2_196 to i64
; Matched:\<badref\>:  store i64 %var_2_175, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_197, i64* %RDI.i256, align 8
; Matched:%var_2_176:  %var_2_176 = sext i64 %var_2_175 to i128
; %var_2_198 = sext i64 %var_2_197 to i128
; Matched:%var_2_177:  %var_2_177 = icmp ne i128 %var_2_176, %var_2_174
; %var_2_199 = icmp ne i128 %var_2_198, %var_2_196
; Matched:%var_2_178:  %var_2_178 = zext i1 %var_2_177 to i8
; %var_2_200 = zext i1 %var_2_199 to i8
; Matched:\<badref\>:  store i8 %var_2_178, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_200, i8* %var_2_14, align 1
; Matched:%var_2_179:  %var_2_179 = trunc i128 %var_2_174 to i32
; %var_2_201 = trunc i128 %var_2_196 to i32
; Matched:%var_2_180:  %var_2_180 = and i32 %var_2_179, 240
; %var_2_202 = and i32 %var_2_201, 240
; Matched:%var_2_181:  %var_2_181 = tail call i32 @llvm.ctpop.i32(i32 %var_2_180) #11
; %var_2_203 = tail call i32 @llvm.ctpop.i32(i32 %var_2_202)
; Matched:%var_2_182:  %var_2_182 = trunc i32 %var_2_181 to i8
; %var_2_204 = trunc i32 %var_2_203 to i8
; Matched:%var_2_183:  %var_2_183 = and i8 %var_2_182, 1
; %var_2_205 = and i8 %var_2_204, 1
; Matched:%var_2_184:  %var_2_184 = xor i8 %var_2_183, 1
; %var_2_206 = xor i8 %var_2_205, 1
; Matched:\<badref\>:  store i8 %var_2_184, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_206, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_185:  %var_2_185 = lshr i64 %var_2_175, 63
; %var_2_207 = lshr i64 %var_2_197, 63
; Matched:%var_2_186:  %var_2_186 = trunc i64 %var_2_185 to i8
; %var_2_208 = trunc i64 %var_2_207 to i8
; Matched:\<badref\>:  store i8 %var_2_186, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_208, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_178, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_200, i8* %var_2_38, align 1
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_165, -88
; %var_2_209 = add i64 %var_2_187, -88
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_272, 15
; %var_2_210 = add i64 %var_2_179, 15
; Matched:\<badref\>:  store i64 %var_2_188, i64* %PC, align 8
; store i64 %var_2_210, i64* %var_2_3, align 8
; Matched:%var_2_189:  %var_2_189 = inttoptr i64 %var_2_187 to i64*
; %var_2_211 = inttoptr i64 %var_2_209 to i64*
; Matched:\<badref\>:  store i64 %var_2_175, i64* %var_2_189, align 8
; store i64 %var_2_197, i64* %var_2_211, align 8
%var_2_212 = load i64, i64* %var_2_3, align 8
%var_2_213 = load i64, i64* %var_2_71, align 1
store i64 %var_2_213, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
; Matched:%var_2_192:  %var_2_192 = load i64, i64* %RBP, align 8
; %var_2_214 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_192, -88
; %var_2_215 = add i64 %var_2_214, -88
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_144, 13
; %var_2_216 = add i64 %var_2_212, 13
; Matched:\<badref\>:  store i64 %var_2_148, i64* %PC, align 8
; store i64 %var_2_216, i64* %var_2_3, align 8
; Matched:%var_2_195:  %var_2_195 = inttoptr i64 %var_2_193 to i64*
; %var_2_217 = inttoptr i64 %var_2_215 to i64*
; Matched:%var_2_196:  %var_2_196 = load i64, i64* %var_2_195, align 8
; %var_2_218 = load i64, i64* %var_2_217, align 8
; Matched:%var_2_197:  %var_2_197 = shl i64 %var_2_196, 1
; %var_2_219 = shl i64 %var_2_218, 1
; Matched:%var_2_198:  %var_2_198 = icmp slt i64 %var_2_196, 0
; %var_2_220 = icmp slt i64 %var_2_218, 0
; Matched:%var_2_199:  %var_2_199 = icmp slt i64 %var_2_197, 0
; %var_2_221 = icmp slt i64 %var_2_219, 0
; Matched:%var_2_200:  %var_2_200 = xor i1 %var_2_198, %var_2_199
; %var_2_222 = xor i1 %var_2_220, %var_2_221
; Matched:\<badref\>:  store i64 %var_2_197, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_219, i64* %RDI.i256, align 8
; Matched:  %.lobit = lshr i64 %var_2_196, 63
; %.lobit = lshr i64 %var_2_218, 63
; Matched:%var_2_201:  %var_2_201 = trunc i64 %.lobit to i8
; %var_2_223 = trunc i64 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_201, i8* %var_2_22, align 1, !tbaa !1284
; store i8 %var_2_223, i8* %var_2_14, align 1
; Matched:%var_2_202:  %var_2_202 = trunc i64 %var_2_197 to i32
; %var_2_224 = trunc i64 %var_2_219 to i32
; Matched:%var_2_203:  %var_2_203 = and i32 %var_2_202, 254
; %var_2_225 = and i32 %var_2_224, 254
; Matched:%var_2_204:  %var_2_204 = tail call i32 @llvm.ctpop.i32(i32 %var_2_203) #11
; %var_2_226 = tail call i32 @llvm.ctpop.i32(i32 %var_2_225)
; Matched:%var_2_205:  %var_2_205 = trunc i32 %var_2_204 to i8
; %var_2_227 = trunc i32 %var_2_226 to i8
; Matched:%var_2_206:  %var_2_206 = and i8 %var_2_205, 1
; %var_2_228 = and i8 %var_2_227, 1
; Matched:%var_2_207:  %var_2_207 = xor i8 %var_2_206, 1
; %var_2_229 = xor i8 %var_2_228, 1
; Matched:\<badref\>:  store i8 %var_2_207, i8* %var_2_29, align 1, !tbaa !1284
; store i8 %var_2_229, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_208:  %var_2_208 = icmp eq i64 %var_2_197, 0
; %var_2_230 = icmp eq i64 %var_2_219, 0
; Matched:%var_2_209:  %var_2_209 = zext i1 %var_2_208 to i8
; %var_2_231 = zext i1 %var_2_230 to i8
; Matched:\<badref\>:  store i8 %var_2_209, i8* %var_2_37, align 1, !tbaa !1284
; store i8 %var_2_231, i8* %var_2_29, align 1
; Matched:%var_2_210:  %var_2_210 = lshr i64 %var_2_196, 62
; %var_2_232 = lshr i64 %var_2_218, 62
; Matched:%var_2_211:  %var_2_211 = trunc i64 %var_2_210 to i8
; %var_2_233 = trunc i64 %var_2_232 to i8
; Matched:%var_2_212:  %var_2_212 = and i8 %var_2_211, 1
; %var_2_234 = and i8 %var_2_233, 1
; Matched:\<badref\>:  store i8 %var_2_212, i8* %var_2_40, align 1, !tbaa !1284
; store i8 %var_2_234, i8* %var_2_32, align 1
; Matched:%var_2_213:  %var_2_213 = zext i1 %var_2_200 to i8
; %var_2_235 = zext i1 %var_2_222 to i8
; Matched:\<badref\>:  store i8 %var_2_213, i8* %var_2_46, align 1, !tbaa !1284
; store i8 %var_2_235, i8* %var_2_38, align 1
%var_2_236 = add i64 %var_2_212, 20
store i64 %var_2_236, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_195, align 8
; store i64 %var_2_219, i64* %var_2_217, align 8
%var_2_237 = load i64, i64* %var_2_3, align 8
%var_2_238 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
store i64 %var_2_238, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_217:  %var_2_217 = load i64, i64* %RBP, align 8
; %var_2_239 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_217, -88
; %var_2_240 = add i64 %var_2_239, -88
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_157, 15
; %var_2_241 = add i64 %var_2_237, 15
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8
; store i64 %var_2_241, i64* %var_2_3, align 8
; Matched:%var_2_220:  %var_2_220 = inttoptr i64 %var_2_218 to i64*
; %var_2_242 = inttoptr i64 %var_2_240 to i64*
; Matched:%var_2_221:  %var_2_221 = load i64, i64* %var_2_220, align 8
; %var_2_243 = load i64, i64* %var_2_242, align 8
; Matched:%var_2_222:  %var_2_222 = sitofp i64 %var_2_221 to double
; %var_2_244 = sitofp i64 %var_2_243 to double
; Matched:\<badref\>:  store double %var_2_222, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_244, double* %var_2_88, align 1
; Matched:%var_2_223:  %var_2_223 = bitcast i64 %var_2_216 to double
; %var_2_245 = bitcast i64 %var_2_238 to double
; Matched:%var_2_224:  %var_2_224 = fdiv double %var_2_223, %var_2_222
; %var_2_246 = fdiv double %var_2_245, %var_2_244
; Matched:\<badref\>:  store double %var_2_224, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_246, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_225:  %var_2_225 = add i64 %var_2_217, -48
; %var_2_247 = add i64 %var_2_239, -48
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_215, 24
; %var_2_248 = add i64 %var_2_237, 24
; Matched:\<badref\>:  store i64 %var_2_226, i64* %PC, align 8
; store i64 %var_2_248, i64* %var_2_3, align 8
; Matched:%var_2_227:  %var_2_227 = inttoptr i64 %var_2_225 to double*
; %var_2_249 = inttoptr i64 %var_2_247 to double*
; Matched:\<badref\>:  store double %var_2_224, double* %var_2_227, align 8
; store double %var_2_246, double* %var_2_249, align 8
; Matched:%var_2_228:  %var_2_228 = load i64, i64* %RBP, align 8
; %var_2_250 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_228, -16
; %var_2_251 = add i64 %var_2_250, -16
%var_2_252 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_272, 5
; %var_2_253 = add i64 %var_2_252, 5
; Matched:\<badref\>:  store i64 %var_2_273, i64* %PC, align 8
; store i64 %var_2_253, i64* %var_2_3, align 8
; Matched:%var_2_232:  %var_2_232 = load i64, i64* %var_2_74, align 1
; %var_2_254 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_233:  %var_2_233 = inttoptr i64 %var_2_229 to i64*
; %var_2_255 = inttoptr i64 %var_2_251 to i64*
; Matched:\<badref\>:  store i64 %var_2_232, i64* %var_2_233, align 8
; store i64 %var_2_254, i64* %var_2_255, align 8
; Matched:%var_2_234:  %var_2_234 = load i64, i64* %RBP, align 8
; %var_2_256 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_234, -32
; %var_2_257 = add i64 %var_2_256, -32
%var_2_258 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_236, 5
; %var_2_259 = add i64 %var_2_258, 5
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_259, i64* %var_2_3, align 8
; Matched:%var_2_238:  %var_2_238 = load i64, i64* %var_2_74, align 1
; %var_2_260 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_235 to i64*
; %var_2_261 = inttoptr i64 %var_2_257 to i64*
; Matched:\<badref\>:  store i64 %var_2_238, i64* %var_2_239, align 8
; store i64 %var_2_260, i64* %var_2_261, align 8
; Matched:%var_2_240:  %var_2_240 = load i64, i64* %PC, align 8
; %var_2_262 = load i64, i64* %var_2_3, align 8
%var_2_263 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
store i64 %var_2_263, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_242:  %var_2_242 = load i64, i64* %RBP, align 8
; %var_2_264 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_242, -40
; %var_2_265 = add i64 %var_2_264, -40
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_240, 14
; %var_2_266 = add i64 %var_2_262, 14
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_266, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_243 to i64*
; %var_2_267 = inttoptr i64 %var_2_265 to i64*
; Matched:\<badref\>:  store i64 %var_2_241, i64* %var_2_245, align 8
; store i64 %var_2_263, i64* %var_2_267, align 8
%var_2_268 = load i64, i64* %RBP.i, align 8
%var_2_269 = add i64 %var_2_268, -72
%var_2_270 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, 8
; %var_2_271 = add i64 %var_2_270, 8
; Matched:\<badref\>:  store i64 %var_2_496, i64* %PC, align 8
; store i64 %var_2_271, i64* %var_2_3, align 8
%var_2_272 = inttoptr i64 %var_2_269 to i64*
store i64 1, i64* %var_2_272, align 8
; Matched:%var_2_251:  %var_2_251 = load i64, i64* %RBP, align 8
; %var_2_273 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_251, -104
; %var_2_274 = add i64 %var_2_273, -104
; Matched:%var_2_253:  %var_2_253 = load i32, i32* %EAX, align 4
; %var_2_275 = load i32, i32* %EAX.i315, align 4
; Matched:%var_2_254:  %var_2_254 = load i64, i64* %PC, align 8
; %var_2_276 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_254, 3
; %var_2_277 = add i64 %var_2_276, 3
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8
; store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_252 to i32*
; %var_2_278 = inttoptr i64 %var_2_274 to i32*
; Matched:\<badref\>:  store i32 %var_2_253, i32* %var_2_256, align 4
; store i32 %var_2_275, i32* %var_2_278, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i197 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
%var_2_279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i194 = getelementptr inbounds %union.anon, %union.anon* %var_2_279, i64 0, i32 0
; Matched:%var_2_257:  %var_2_257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; %var_2_280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40068a

block_.L_40068a:                                  ; preds = %block_40069f, %entry
%var_2_281 = phi i64 [ %var_2_431, %block_40069f ], [ %.pre, %entry ]
%var_2_282 = load i64, i64* %RBP.i, align 8
%var_2_283 = add i64 %var_2_282, -72
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_370, 4
; %var_2_284 = add i64 %var_2_281, 4
; Matched:\<badref\>:  store i64 %var_2_373, i64* %PC, align 8
; store i64 %var_2_284, i64* %var_2_3, align 8
%var_2_285 = inttoptr i64 %var_2_283 to i64*
%var_2_286 = load i64, i64* %var_2_285, align 8
; Matched:\<badref\>:  store i64 %var_2_375, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_286, i64* %RAX.i197, align 8
%var_2_287 = add i64 %var_2_282, -88
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_370, 8
; %var_2_288 = add i64 %var_2_281, 8
; Matched:\<badref\>:  store i64 %var_2_377, i64* %PC, align 8
; store i64 %var_2_288, i64* %var_2_3, align 8
%var_2_289 = inttoptr i64 %var_2_287 to i64*
%var_2_290 = load i64, i64* %var_2_289, align 8
%var_2_291 = add i64 %var_2_290, -1
; Matched:\<badref\>:  store i64 %var_2_380, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_291, i64* %RCX.i194, align 8
%var_2_292 = lshr i64 %var_2_291, 63
%var_2_293 = sub i64 %var_2_286, %var_2_291
; Matched:%var_2_383:  %var_2_383 = icmp ult i64 %var_2_375, %var_2_380
; %var_2_294 = icmp ult i64 %var_2_286, %var_2_291
; Matched:%var_2_384:  %var_2_384 = zext i1 %var_2_383 to i8
; %var_2_295 = zext i1 %var_2_294 to i8
; Matched:\<badref\>:  store i8 %var_2_384, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_295, i8* %var_2_14, align 1
; Matched:%var_2_385:  %var_2_385 = trunc i64 %var_2_382 to i32
; %var_2_296 = trunc i64 %var_2_293 to i32
; Matched:%var_2_386:  %var_2_386 = and i32 %var_2_385, 255
; %var_2_297 = and i32 %var_2_296, 255
; Matched:%var_2_387:  %var_2_387 = tail call i32 @llvm.ctpop.i32(i32 %var_2_386) #11
; %var_2_298 = tail call i32 @llvm.ctpop.i32(i32 %var_2_297)
; Matched:%var_2_388:  %var_2_388 = trunc i32 %var_2_387 to i8
; %var_2_299 = trunc i32 %var_2_298 to i8
; Matched:%var_2_389:  %var_2_389 = and i8 %var_2_388, 1
; %var_2_300 = and i8 %var_2_299, 1
; Matched:%var_2_390:  %var_2_390 = xor i8 %var_2_389, 1
; %var_2_301 = xor i8 %var_2_300, 1
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_301, i8* %var_2_21, align 1
; Matched:%var_2_391:  %var_2_391 = xor i64 %var_2_380, %var_2_375
; %var_2_302 = xor i64 %var_2_291, %var_2_286
; Matched:%var_2_392:  %var_2_392 = xor i64 %var_2_391, %var_2_382
; %var_2_303 = xor i64 %var_2_302, %var_2_293
; Matched:%var_2_393:  %var_2_393 = lshr i64 %var_2_392, 4
; %var_2_304 = lshr i64 %var_2_303, 4
; Matched:%var_2_394:  %var_2_394 = trunc i64 %var_2_393 to i8
; %var_2_305 = trunc i64 %var_2_304 to i8
; Matched:%var_2_395:  %var_2_395 = and i8 %var_2_394, 1
; %var_2_306 = and i8 %var_2_305, 1
; Matched:\<badref\>:  store i8 %var_2_395, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_306, i8* %var_2_26, align 1
%var_2_307 = icmp eq i64 %var_2_293, 0
; Matched:%var_2_397:  %var_2_397 = zext i1 %var_2_396 to i8
; %var_2_308 = zext i1 %var_2_307 to i8
; Matched:\<badref\>:  store i8 %var_2_397, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_308, i8* %var_2_29, align 1
%var_2_309 = lshr i64 %var_2_293, 63
%var_2_310 = trunc i64 %var_2_309 to i8
; Matched:\<badref\>:  store i8 %var_2_399, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_310, i8* %var_2_32, align 1
%var_2_311 = lshr i64 %var_2_286, 63
%var_2_312 = xor i64 %var_2_292, %var_2_311
%var_2_313 = xor i64 %var_2_309, %var_2_311
%var_2_314 = add nuw nsw i64 %var_2_313, %var_2_312
%var_2_315 = icmp eq i64 %var_2_314, 2
; Matched:%var_2_405:  %var_2_405 = zext i1 %var_2_404 to i8
; %var_2_316 = zext i1 %var_2_315 to i8
; Matched:\<badref\>:  store i8 %var_2_405, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_316, i8* %var_2_38, align 1
%var_2_317 = icmp ne i8 %var_2_310, 0
%var_2_318 = xor i1 %var_2_317, %var_2_315
%.demorgan = or i1 %var_2_307, %var_2_318
  %.v = select i1 %.demorgan, i64 21, i64 202
%var_2_319 = add i64 %var_2_281, %.v
; Matched:\<badref\>:  store i64 %var_2_408, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_319, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_40069f, label %block_.L_400754

block_40069f:                                     ; preds = %block_.L_40068a
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_270, -32
; %var_2_320 = add i64 %var_2_282, -32
; Matched:%var_2_259:  %var_2_259 = add i64 %var_2_408, 5
; %var_2_321 = add i64 %var_2_319, 5
; Matched:\<badref\>:  store i64 %var_2_259, i64* %PC, align 8
; store i64 %var_2_321, i64* %var_2_3, align 8
; Matched:%var_2_260:  %var_2_260 = inttoptr i64 %var_2_258 to i64*
; %var_2_322 = inttoptr i64 %var_2_320 to i64*
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %var_2_260, align 8
; %var_2_323 = load i64, i64* %var_2_322, align 8
; Matched:\<badref\>:  store i64 %var_2_275, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_323, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_371, -40
; %var_2_324 = add i64 %var_2_282, -40
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_408, 10
; %var_2_325 = add i64 %var_2_319, 10
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_325, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = bitcast i64 %var_2_261 to double
; %var_2_326 = bitcast i64 %var_2_323 to double
; Matched:%var_2_265:  %var_2_265 = inttoptr i64 %var_2_262 to double*
; %var_2_327 = inttoptr i64 %var_2_324 to double*
; Matched:%var_2_266:  %var_2_266 = load double, double* %var_2_265, align 8
; %var_2_328 = load double, double* %var_2_327, align 8
; Matched:%var_2_267:  %var_2_267 = fadd double %var_2_264, %var_2_266
; %var_2_329 = fadd double %var_2_326, %var_2_328
; Matched:\<badref\>:  store double %var_2_267, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_329, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_408, 15
; %var_2_330 = add i64 %var_2_319, 15
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8
; store i64 %var_2_330, i64* %var_2_3, align 8
; Matched:%var_2_269:  %var_2_269 = inttoptr i64 %var_2_258 to double*
; %var_2_331 = inttoptr i64 %var_2_320 to double*
; Matched:\<badref\>:  store double %var_2_267, double* %var_2_269, align 8
; store double %var_2_329, double* %var_2_331, align 8
; Matched:%var_2_371:  %var_2_371 = load i64, i64* %RBP, align 8
; %var_2_332 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_258:  %var_2_258 = add i64 %var_2_371, -32
; %var_2_333 = add i64 %var_2_332, -32
%var_2_334 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_231:  %var_2_231 = add i64 %var_2_230, 5
; %var_2_335 = add i64 %var_2_334, 5
; Matched:\<badref\>:  store i64 %var_2_231, i64* %PC, align 8
; store i64 %var_2_335, i64* %var_2_3, align 8
; Matched:%var_2_274:  %var_2_274 = inttoptr i64 %var_2_271 to i64*
; %var_2_336 = inttoptr i64 %var_2_333 to i64*
; Matched:%var_2_275:  %var_2_275 = load i64, i64* %var_2_274, align 8
; %var_2_337 = load i64, i64* %var_2_336, align 8
; Matched:\<badref\>:  store i64 %var_2_261, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_337, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_276:  %var_2_276 = add i64 %var_2_270, -48
; %var_2_338 = add i64 %var_2_332, -48
; Matched:%var_2_539:  %var_2_539 = add i64 %var_2_515, 10
; %var_2_339 = add i64 %var_2_334, 10
; Matched:\<badref\>:  store i64 %var_2_539, i64* %PC, align 8
; store i64 %var_2_339, i64* %var_2_3, align 8
; Matched:%var_2_278:  %var_2_278 = bitcast i64 %var_2_275 to double
; %var_2_340 = bitcast i64 %var_2_337 to double
; Matched:%var_2_279:  %var_2_279 = inttoptr i64 %var_2_276 to double*
; %var_2_341 = inttoptr i64 %var_2_338 to double*
; Matched:%var_2_280:  %var_2_280 = load double, double* %var_2_279, align 8
; %var_2_342 = load double, double* %var_2_341, align 8
; Matched:%var_2_281:  %var_2_281 = fmul double %var_2_278, %var_2_280
; %var_2_343 = fmul double %var_2_340, %var_2_342
; Matched:\<badref\>:  store double %var_2_281, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_343, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_270, -24
; %var_2_344 = add i64 %var_2_332, -24
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_215, 15
; %var_2_345 = add i64 %var_2_334, 15
; Matched:\<badref\>:  store i64 %var_2_283, i64* %PC, align 8
; store i64 %var_2_345, i64* %var_2_3, align 8
; Matched:%var_2_284:  %var_2_284 = inttoptr i64 %var_2_282 to double*
; %var_2_346 = inttoptr i64 %var_2_344 to double*
; Matched:\<badref\>:  store double %var_2_281, double* %var_2_284, align 8
; store double %var_2_343, double* %var_2_346, align 8
; Matched:%var_2_285:  %var_2_285 = load i64, i64* %RBP, align 8
; %var_2_347 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_285, -16
; %var_2_348 = add i64 %var_2_347, -16
%var_2_349 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_511:  %var_2_511 = add i64 %var_2_507, 5
; %var_2_350 = add i64 %var_2_349, 5
; Matched:\<badref\>:  store i64 %var_2_511, i64* %PC, align 8
; store i64 %var_2_350, i64* %var_2_3, align 8
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_286 to i64*
; %var_2_351 = inttoptr i64 %var_2_348 to i64*
; Matched:%var_2_290:  %var_2_290 = load i64, i64* %var_2_289, align 8
; %var_2_352 = load i64, i64* %var_2_351, align 8
; Matched:\<badref\>:  store i64 %var_2_290, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_352, i64* %var_2_71, align 1
store double 0.000000e+00, double* %var_2_73, align 1
%var_2_353 = load i64, i64* bitcast (%G_0x6010e8_type* @G_0x6010e8 to i64*), align 8
store i64 %var_2_353, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_285, -24
; %var_2_354 = add i64 %var_2_347, -24
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_287, 19
; %var_2_355 = add i64 %var_2_349, 19
; Matched:\<badref\>:  store i64 %var_2_293, i64* %PC, align 8
; store i64 %var_2_355, i64* %var_2_3, align 8
; Matched:%var_2_294:  %var_2_294 = inttoptr i64 %var_2_292 to i64*
; %var_2_356 = inttoptr i64 %var_2_354 to i64*
; Matched:%var_2_295:  %var_2_295 = load i64, i64* %var_2_294, align 8
; %var_2_357 = load i64, i64* %var_2_356, align 8
; Matched:\<badref\>:  store i64 %var_2_295, i64* %var_2_84, align 1, !tbaa !1285
; store i64 %var_2_357, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_358 = load i64, i64* bitcast (%G_0x6010f0_type* @G_0x6010f0 to i64*), align 8
store i64 %var_2_358, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_287, 33
; %var_2_359 = add i64 %var_2_349, 33
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_359, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_292 to double*
; %var_2_360 = inttoptr i64 %var_2_354 to double*
; Matched:%var_2_299:  %var_2_299 = load double, double* %var_2_298, align 8
; %var_2_361 = load double, double* %var_2_360, align 8
%var_2_362 = load double, double* bitcast (%G_0x6010f8_type* @G_0x6010f8 to double*), align 8
; Matched:%var_2_301:  %var_2_301 = fmul double %var_2_299, %var_2_300
; %var_2_363 = fmul double %var_2_361, %var_2_362
; Matched:\<badref\>:  store double %var_2_301, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_363, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_302:  %var_2_302 = bitcast i64 %var_2_296 to double
; %var_2_364 = bitcast i64 %var_2_358 to double
; Matched:%var_2_303:  %var_2_303 = fadd double %var_2_301, %var_2_302
; %var_2_365 = fadd double %var_2_363, %var_2_364
; Matched:\<badref\>:  store double %var_2_303, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_365, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_304:  %var_2_304 = bitcast i64 %var_2_295 to double
; %var_2_366 = bitcast i64 %var_2_357 to double
; Matched:%var_2_305:  %var_2_305 = fmul double %var_2_303, %var_2_304
; %var_2_367 = fmul double %var_2_365, %var_2_366
; Matched:\<badref\>:  store double %var_2_305, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_367, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_85, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_306:  %var_2_306 = bitcast i64 %var_2_291 to double
; %var_2_368 = bitcast i64 %var_2_353 to double
; Matched:%var_2_307:  %var_2_307 = fadd double %var_2_305, %var_2_306
; %var_2_369 = fadd double %var_2_367, %var_2_368
; Matched:\<badref\>:  store double %var_2_307, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_369, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_285, -40
; %var_2_370 = add i64 %var_2_347, -40
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_287, 59
; %var_2_371 = add i64 %var_2_349, 59
; Matched:\<badref\>:  store i64 %var_2_309, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
; Matched:%var_2_310:  %var_2_310 = inttoptr i64 %var_2_308 to i64*
; %var_2_372 = inttoptr i64 %var_2_370 to i64*
; Matched:%var_2_311:  %var_2_311 = load i64, i64* %var_2_310, align 8
; %var_2_373 = load i64, i64* %var_2_372, align 8
; Matched:\<badref\>:  store i64 %var_2_311, i64* %var_2_84, align 1, !tbaa !1285
; store i64 %var_2_373, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_312:  %var_2_312 = add i64 %var_2_287, 64
; %var_2_374 = add i64 %var_2_349, 64
; Matched:\<badref\>:  store i64 %var_2_312, i64* %PC, align 8
; store i64 %var_2_374, i64* %var_2_3, align 8
; Matched:%var_2_313:  %var_2_313 = load i64, i64* %var_2_294, align 8
; %var_2_375 = load i64, i64* %var_2_356, align 8
; Matched:\<badref\>:  store i64 %var_2_313, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_375, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
store i64 %var_2_353, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_314:  %var_2_314 = add i64 %var_2_287, 78
; %var_2_376 = add i64 %var_2_349, 78
; Matched:\<badref\>:  store i64 %var_2_314, i64* %PC, align 8
; store i64 %var_2_376, i64* %var_2_3, align 8
; Matched:%var_2_315:  %var_2_315 = load i64, i64* %var_2_294, align 8
; %var_2_377 = load i64, i64* %var_2_356, align 8
; Matched:\<badref\>:  store i64 %var_2_315, i64* %var_2_99, align 1, !tbaa !1285
; store i64 %var_2_377, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
%var_2_378 = load i64, i64* bitcast (%G_0x601100_type* @G_0x601100 to i64*), align 8
store i64 %var_2_378, i64* %var_2_125, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_106, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_127, align 1
; Matched:%var_2_317:  %var_2_317 = add i64 %var_2_287, 92
; %var_2_379 = add i64 %var_2_349, 92
; Matched:\<badref\>:  store i64 %var_2_317, i64* %PC, align 8
; store i64 %var_2_379, i64* %var_2_3, align 8
; Matched:%var_2_318:  %var_2_318 = inttoptr i64 %var_2_292 to double*
; %var_2_380 = inttoptr i64 %var_2_354 to double*
; Matched:%var_2_319:  %var_2_319 = load double, double* %var_2_318, align 8
; %var_2_381 = load double, double* %var_2_380, align 8
%var_2_382 = load double, double* bitcast (%G_0x601108_type* @G_0x601108 to double*), align 8
; Matched:%var_2_321:  %var_2_321 = fmul double %var_2_319, %var_2_320
; %var_2_383 = fmul double %var_2_381, %var_2_382
; Matched:\<badref\>:  store double %var_2_321, double* %var_2_118, align 1, !tbaa !1285
; store double %var_2_383, double* %var_2_140, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_257, align 1, !tbaa !1285
; store i64 0, i64* %var_2_280, align 1
; Matched:%var_2_322:  %var_2_322 = bitcast i64 %var_2_316 to double
; %var_2_384 = bitcast i64 %var_2_378 to double
; Matched:%var_2_323:  %var_2_323 = fadd double %var_2_321, %var_2_322
; %var_2_385 = fadd double %var_2_383, %var_2_384
; Matched:\<badref\>:  store double %var_2_323, double* %var_2_103, align 1, !tbaa !1285
; store double %var_2_385, double* %var_2_124, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_105, align 1, !tbaa !1285
; store i64 0, i64* %var_2_126, align 1
; Matched:%var_2_324:  %var_2_324 = bitcast i64 %var_2_315 to double
; %var_2_386 = bitcast i64 %var_2_377 to double
; Matched:%var_2_325:  %var_2_325 = fmul double %var_2_323, %var_2_324
; %var_2_387 = fmul double %var_2_385, %var_2_386
; Matched:\<badref\>:  store double %var_2_325, double* %var_2_98, align 1, !tbaa !1285
; store double %var_2_387, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_100, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
; Matched:%var_2_326:  %var_2_326 = fadd double %var_2_325, %var_2_306
; %var_2_388 = fadd double %var_2_387, %var_2_368
; Matched:\<badref\>:  store double %var_2_326, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_388, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_327:  %var_2_327 = bitcast i64 %var_2_313 to double
; %var_2_389 = bitcast i64 %var_2_375 to double
; Matched:%var_2_328:  %var_2_328 = fmul double %var_2_326, %var_2_327
; %var_2_390 = fmul double %var_2_388, %var_2_389
; Matched:\<badref\>:  store double %var_2_328, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_390, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_329:  %var_2_329 = bitcast i64 %var_2_311 to double
; %var_2_391 = bitcast i64 %var_2_373 to double
; Matched:%var_2_330:  %var_2_330 = fadd double %var_2_328, %var_2_329
; %var_2_392 = fadd double %var_2_390, %var_2_391
; Matched:\<badref\>:  store double %var_2_330, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_392, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_85, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_331:  %var_2_331 = fdiv double %var_2_307, %var_2_330
; %var_2_393 = fdiv double %var_2_369, %var_2_392
; Matched:\<badref\>:  store double %var_2_331, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_393, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_332:  %var_2_332 = load double, double* %var_2_73, align 1
; %var_2_394 = load double, double* %var_2_70, align 1
; Matched:%var_2_333:  %var_2_333 = fadd double %var_2_331, %var_2_332
; %var_2_395 = fadd double %var_2_393, %var_2_394
; Matched:\<badref\>:  store double %var_2_333, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_395, double* %var_2_70, align 1
; Matched:%var_2_334:  %var_2_334 = load i64, i64* %RBP, align 8
; %var_2_396 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_334, -16
; %var_2_397 = add i64 %var_2_396, -16
; Matched:%var_2_336:  %var_2_336 = add i64 %var_2_287, 134
; %var_2_398 = add i64 %var_2_349, 134
; Matched:\<badref\>:  store i64 %var_2_336, i64* %PC, align 8
; store i64 %var_2_398, i64* %var_2_3, align 8
; Matched:%var_2_337:  %var_2_337 = inttoptr i64 %var_2_335 to double*
; %var_2_399 = inttoptr i64 %var_2_397 to double*
; Matched:\<badref\>:  store double %var_2_333, double* %var_2_337, align 8
; store double %var_2_395, double* %var_2_399, align 8
; Matched:%var_2_338:  %var_2_338 = load i64, i64* %RBP, align 8
; %var_2_400 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_338, -72
; %var_2_401 = add i64 %var_2_400, -72
; Matched:%var_2_340:  %var_2_340 = load i64, i64* %PC, align 8
; %var_2_402 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_340, 4
; %var_2_403 = add i64 %var_2_402, 4
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_403, i64* %var_2_3, align 8
; Matched:%var_2_342:  %var_2_342 = inttoptr i64 %var_2_339 to i64*
; %var_2_404 = inttoptr i64 %var_2_401 to i64*
; Matched:%var_2_343:  %var_2_343 = load i64, i64* %var_2_342, align 8
; %var_2_405 = load i64, i64* %var_2_404, align 8
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_343, 1
; %var_2_406 = add i64 %var_2_405, 1
; Matched:\<badref\>:  store i64 %var_2_344, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_406, i64* %RAX.i197, align 8
; Matched:%var_2_345:  %var_2_345 = icmp eq i64 %var_2_343, -1
; %var_2_407 = icmp eq i64 %var_2_405, -1
; Matched:%var_2_346:  %var_2_346 = icmp eq i64 %var_2_344, 0
; %var_2_408 = icmp eq i64 %var_2_406, 0
; Matched:%var_2_347:  %var_2_347 = or i1 %var_2_345, %var_2_346
; %var_2_409 = or i1 %var_2_407, %var_2_408
; Matched:%var_2_348:  %var_2_348 = zext i1 %var_2_347 to i8
; %var_2_410 = zext i1 %var_2_409 to i8
; Matched:\<badref\>:  store i8 %var_2_348, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_410, i8* %var_2_14, align 1
; Matched:%var_2_349:  %var_2_349 = trunc i64 %var_2_344 to i32
; %var_2_411 = trunc i64 %var_2_406 to i32
; Matched:%var_2_350:  %var_2_350 = and i32 %var_2_349, 255
; %var_2_412 = and i32 %var_2_411, 255
; Matched:%var_2_351:  %var_2_351 = tail call i32 @llvm.ctpop.i32(i32 %var_2_350) #11
; %var_2_413 = tail call i32 @llvm.ctpop.i32(i32 %var_2_412)
; Matched:%var_2_352:  %var_2_352 = trunc i32 %var_2_351 to i8
; %var_2_414 = trunc i32 %var_2_413 to i8
; Matched:%var_2_353:  %var_2_353 = and i8 %var_2_352, 1
; %var_2_415 = and i8 %var_2_414, 1
; Matched:%var_2_354:  %var_2_354 = xor i8 %var_2_353, 1
; %var_2_416 = xor i8 %var_2_415, 1
; Matched:\<badref\>:  store i8 %var_2_354, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_416, i8* %var_2_21, align 1
; Matched:%var_2_355:  %var_2_355 = xor i64 %var_2_344, %var_2_343
; %var_2_417 = xor i64 %var_2_406, %var_2_405
; Matched:%var_2_356:  %var_2_356 = lshr i64 %var_2_355, 4
; %var_2_418 = lshr i64 %var_2_417, 4
; Matched:%var_2_357:  %var_2_357 = trunc i64 %var_2_356 to i8
; %var_2_419 = trunc i64 %var_2_418 to i8
; Matched:%var_2_358:  %var_2_358 = and i8 %var_2_357, 1
; %var_2_420 = and i8 %var_2_419, 1
; Matched:\<badref\>:  store i8 %var_2_358, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_420, i8* %var_2_26, align 1
; Matched:%var_2_359:  %var_2_359 = zext i1 %var_2_346 to i8
; %var_2_421 = zext i1 %var_2_408 to i8
; Matched:\<badref\>:  store i8 %var_2_359, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_421, i8* %var_2_29, align 1
; Matched:%var_2_360:  %var_2_360 = lshr i64 %var_2_344, 63
; %var_2_422 = lshr i64 %var_2_406, 63
; Matched:%var_2_361:  %var_2_361 = trunc i64 %var_2_360 to i8
; %var_2_423 = trunc i64 %var_2_422 to i8
; Matched:\<badref\>:  store i8 %var_2_361, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_423, i8* %var_2_32, align 1
; Matched:%var_2_362:  %var_2_362 = lshr i64 %var_2_343, 63
; %var_2_424 = lshr i64 %var_2_405, 63
; Matched:%var_2_363:  %var_2_363 = xor i64 %var_2_360, %var_2_362
; %var_2_425 = xor i64 %var_2_422, %var_2_424
; Matched:%var_2_364:  %var_2_364 = add nuw nsw i64 %var_2_363, %var_2_360
; %var_2_426 = add nuw nsw i64 %var_2_425, %var_2_422
; Matched:%var_2_365:  %var_2_365 = icmp eq i64 %var_2_364, 2
; %var_2_427 = icmp eq i64 %var_2_426, 2
; Matched:%var_2_366:  %var_2_366 = zext i1 %var_2_365 to i8
; %var_2_428 = zext i1 %var_2_427 to i8
; Matched:\<badref\>:  store i8 %var_2_366, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_428, i8* %var_2_38, align 1
; Matched:%var_2_367:  %var_2_367 = add i64 %var_2_340, 12
; %var_2_429 = add i64 %var_2_402, 12
; Matched:\<badref\>:  store i64 %var_2_367, i64* %PC, align 8
; store i64 %var_2_429, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_344, i64* %var_2_342, align 8
; store i64 %var_2_406, i64* %var_2_404, align 8
%var_2_430 = load i64, i64* %var_2_3, align 8
%var_2_431 = add i64 %var_2_430, -197
; Matched:\<badref\>:  store i64 %var_2_369, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_431, i64* %var_2_3, align 8
  br label %block_.L_40068a

block_.L_400754:                                  ; preds = %block_.L_40068a
  store i64 ptrtoint (%G__0x4009fe_type* @G__0x4009fe to i64), i64* %RDI.i256, align 8
%var_2_432 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_432, align 1
%var_2_433 = add i64 %var_2_319, add (i64 ptrtoint (%G_0x1f7__rip__type* @G_0x1f7__rip_ to i64), i64 13)
%var_2_434 = add i64 %var_2_319, 21
store i64 %var_2_434, i64* %var_2_3, align 8
%var_2_435 = inttoptr i64 %var_2_433 to i64*
%var_2_436 = load i64, i64* %var_2_435, align 8
store i64 %var_2_436, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_437 = add i64 %var_2_319, add (i64 ptrtoint (%G_0x1f7__rip__type* @G_0x1f7__rip_ to i64), i64 21)
%var_2_438 = add i64 %var_2_319, 29
store i64 %var_2_438, i64* %var_2_3, align 8
%var_2_439 = inttoptr i64 %var_2_437 to i64*
%var_2_440 = load i64, i64* %var_2_439, align 8
store i64 %var_2_440, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_441 = load i64, i64* bitcast (%G_0x6010e8_type* @G_0x6010e8 to i64*), align 8
; Matched:  %.cast1 = bitcast i64 %var_2_412 to double
; %.cast1 = bitcast i64 %var_2_441 to double
; Matched:%var_2_413:  %var_2_413 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
; %var_2_442 = load double, double* bitcast (%G_0x6010f0_type* @G_0x6010f0 to double*), align 8
; Matched:%var_2_414:  %var_2_414 = fadd double %.cast1, %var_2_413
; %var_2_443 = fadd double %.cast1, %var_2_442
; Matched:%var_2_415:  %var_2_415 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
; %var_2_444 = load double, double* bitcast (%G_0x6010f8_type* @G_0x6010f8 to double*), align 8
; Matched:%var_2_416:  %var_2_416 = fadd double %var_2_414, %var_2_415
; %var_2_445 = fadd double %var_2_443, %var_2_444
; Matched:%var_2_417:  %var_2_417 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_446 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_418:  %var_2_418 = fadd double %var_2_417, %.cast1
; %var_2_447 = fadd double %var_2_446, %.cast1
; Matched:%var_2_419:  %var_2_419 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
; %var_2_448 = load double, double* bitcast (%G_0x601100_type* @G_0x601100 to double*), align 8
; Matched:%var_2_420:  %var_2_420 = fadd double %var_2_418, %var_2_419
; %var_2_449 = fadd double %var_2_447, %var_2_448
; Matched:%var_2_421:  %var_2_421 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
; %var_2_450 = load double, double* bitcast (%G_0x601108_type* @G_0x601108 to double*), align 8
; Matched:%var_2_422:  %var_2_422 = fadd double %var_2_420, %var_2_421
; %var_2_451 = fadd double %var_2_449, %var_2_450
; Matched:\<badref\>:  store double %var_2_422, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_451, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_423:  %var_2_423 = fdiv double %var_2_416, %var_2_422
; %var_2_452 = fdiv double %var_2_445, %var_2_451
; Matched:\<badref\>:  store double %var_2_423, double* bitcast (%sa_type* @sa to double*), align 8
; store double %var_2_452, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
store i64 %var_2_441, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
store i64 %var_2_441, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
; Matched:%var_2_424:  %var_2_424 = add i64 %var_2_371, -48
; %var_2_453 = add i64 %var_2_282, -48
; Matched:%var_2_425:  %var_2_425 = add i64 %var_2_408, 128
; %var_2_454 = add i64 %var_2_319, 128
; Matched:\<badref\>:  store i64 %var_2_425, i64* %PC, align 8
; store i64 %var_2_454, i64* %var_2_3, align 8
; Matched:%var_2_426:  %var_2_426 = inttoptr i64 %var_2_424 to i64*
; %var_2_455 = inttoptr i64 %var_2_453 to i64*
; Matched:%var_2_427:  %var_2_427 = load i64, i64* %var_2_426, align 8
; %var_2_456 = load i64, i64* %var_2_455, align 8
; Matched:\<badref\>:  store i64 %var_2_427, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_456, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_428:  %var_2_428 = fadd double %var_2_423, %.cast1
; %var_2_457 = fadd double %var_2_452, %.cast1
; Matched:\<badref\>:  store double %var_2_428, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_457, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_458 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
store i64 %var_2_458, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_430:  %var_2_430 = load i64, i64* %RBP, align 8
; %var_2_459 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_431:  %var_2_431 = add i64 %var_2_430, -16
; %var_2_460 = add i64 %var_2_459, -16
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_408, 160
; %var_2_461 = add i64 %var_2_319, 160
; Matched:\<badref\>:  store i64 %var_2_432, i64* %PC, align 8
; store i64 %var_2_461, i64* %var_2_3, align 8
; Matched:  %.cast11 = bitcast i64 %var_2_429 to double
; %.cast11 = bitcast i64 %var_2_458 to double
; Matched:%var_2_433:  %var_2_433 = inttoptr i64 %var_2_431 to double*
; %var_2_462 = inttoptr i64 %var_2_460 to double*
; Matched:%var_2_434:  %var_2_434 = load double, double* %var_2_433, align 8
; %var_2_463 = load double, double* %var_2_462, align 8
; Matched:%var_2_435:  %var_2_435 = fmul double %.cast11, %var_2_434
; %var_2_464 = fmul double %.cast11, %var_2_463
; Matched:\<badref\>:  store double %var_2_435, double* %var_2_98, align 1, !tbaa !1285
; store double %var_2_464, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_100, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
; Matched:%var_2_436:  %var_2_436 = fadd double %var_2_428, %var_2_435
; %var_2_465 = fadd double %var_2_457, %var_2_464
; Matched:\<badref\>:  store double %var_2_436, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_465, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_437:  %var_2_437 = bitcast i64 %var_2_427 to double
; %var_2_466 = bitcast i64 %var_2_456 to double
; Matched:%var_2_438:  %var_2_438 = fmul double %var_2_437, %var_2_436
; %var_2_467 = fmul double %var_2_466, %var_2_465
; Matched:%var_2_439:  %var_2_439 = fdiv double %var_2_438, %.cast11
; %var_2_468 = fdiv double %var_2_467, %.cast11
; Matched:\<badref\>:  store double %var_2_439, double* bitcast (%sa_type* @sa to double*), align 8
; store double %var_2_468, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_440:  %var_2_440 = fdiv double %var_2_417, %var_2_439
; %var_2_469 = fdiv double %var_2_446, %var_2_468
; Matched:\<badref\>:  store double %var_2_440, double* bitcast (%sb_type* @sb to double*), align 8
; store double %var_2_469, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
; Matched:%var_2_441:  %var_2_441 = tail call double @llvm.trunc.f64(double %var_2_440) #11
; %var_2_470 = tail call double @llvm.trunc.f64(double %var_2_469)
; Matched:%var_2_442:  %var_2_442 = tail call double @llvm.fabs.f64(double %var_2_441) #11
; %var_2_471 = tail call double @llvm.fabs.f64(double %var_2_470)
; Matched:%var_2_443:  %var_2_443 = fcmp ogt double %var_2_442, 0x43E0000000000000
; %var_2_472 = fcmp ogt double %var_2_471, 0x43E0000000000000
; Matched:%var_2_444:  %var_2_444 = fptosi double %var_2_441 to i64
; %var_2_473 = fptosi double %var_2_470 to i64
; Matched:%var_2_445:  %var_2_445 = select i1 %var_2_443, i64 -9223372036854775808, i64 %var_2_444
; %var_2_474 = select i1 %var_2_472, i64 -9223372036854775808, i64 %var_2_473
; Matched:%var_2_446:  %var_2_446 = sext i64 %var_2_445 to i128
; %var_2_475 = sext i64 %var_2_474 to i128
; Matched:%var_2_447:  %var_2_447 = and i128 %var_2_446, -18446744073709551616
; %var_2_476 = and i128 %var_2_475, -18446744073709551616
; Matched:%var_2_448:  %var_2_448 = zext i64 %var_2_445 to i128
; %var_2_477 = zext i64 %var_2_474 to i128
; Matched:%var_2_449:  %var_2_449 = or i128 %var_2_447, %var_2_448
; %var_2_478 = or i128 %var_2_476, %var_2_477
; Matched:%var_2_450:  %var_2_450 = mul nsw i128 %var_2_449, 40000
; %var_2_479 = mul nsw i128 %var_2_478, 40000
; Matched:%var_2_451:  %var_2_451 = trunc i128 %var_2_450 to i64
; %var_2_480 = trunc i128 %var_2_479 to i64
; Matched:%var_2_452:  %var_2_452 = sext i64 %var_2_451 to i128
; %var_2_481 = sext i64 %var_2_480 to i128
; Matched:%var_2_453:  %var_2_453 = icmp ne i128 %var_2_452, %var_2_450
; %var_2_482 = icmp ne i128 %var_2_481, %var_2_479
; Matched:%var_2_454:  %var_2_454 = zext i1 %var_2_453 to i8
; %var_2_483 = zext i1 %var_2_482 to i8
; Matched:\<badref\>:  store i8 %var_2_454, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_483, i8* %var_2_14, align 1
; Matched:%var_2_455:  %var_2_455 = trunc i128 %var_2_450 to i32
; %var_2_484 = trunc i128 %var_2_479 to i32
; Matched:%var_2_456:  %var_2_456 = and i32 %var_2_455, 192
; %var_2_485 = and i32 %var_2_484, 192
; Matched:%var_2_457:  %var_2_457 = tail call i32 @llvm.ctpop.i32(i32 %var_2_456) #11
; %var_2_486 = tail call i32 @llvm.ctpop.i32(i32 %var_2_485)
; Matched:%var_2_458:  %var_2_458 = trunc i32 %var_2_457 to i8
; %var_2_487 = trunc i32 %var_2_486 to i8
; Matched:%var_2_459:  %var_2_459 = and i8 %var_2_458, 1
; %var_2_488 = and i8 %var_2_487, 1
; Matched:%var_2_460:  %var_2_460 = xor i8 %var_2_459, 1
; %var_2_489 = xor i8 %var_2_488, 1
; Matched:\<badref\>:  store i8 %var_2_460, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_489, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_461:  %var_2_461 = lshr i64 %var_2_451, 63
; %var_2_490 = lshr i64 %var_2_480, 63
; Matched:%var_2_462:  %var_2_462 = trunc i64 %var_2_461 to i8
; %var_2_491 = trunc i64 %var_2_490 to i8
; Matched:\<badref\>:  store i8 %var_2_462, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_491, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_454, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_483, i8* %var_2_38, align 1
; Matched:%var_2_463:  %var_2_463 = sitofp i64 %var_2_451 to double
; %var_2_492 = sitofp i64 %var_2_480 to double
; Matched:%var_2_464:  %var_2_464 = load double, double* bitcast (%scale_type* @scale to double*), align 8
; %var_2_493 = load double, double* bitcast (%G_0x601280_type* @G_0x601280 to double*), align 8
; Matched:%var_2_465:  %var_2_465 = fdiv double %var_2_463, %var_2_464
; %var_2_494 = fdiv double %var_2_492, %var_2_493
; Matched:%var_2_466:  %var_2_466 = tail call double @llvm.trunc.f64(double %var_2_465) #11
; %var_2_495 = tail call double @llvm.trunc.f64(double %var_2_494)
; Matched:%var_2_467:  %var_2_467 = tail call double @llvm.fabs.f64(double %var_2_466) #11
; %var_2_496 = tail call double @llvm.fabs.f64(double %var_2_495)
; Matched:%var_2_468:  %var_2_468 = fcmp ogt double %var_2_467, 0x43E0000000000000
; %var_2_497 = fcmp ogt double %var_2_496, 0x43E0000000000000
; Matched:%var_2_469:  %var_2_469 = fptosi double %var_2_466 to i64
; %var_2_498 = fptosi double %var_2_495 to i64
; Matched:%var_2_470:  %var_2_470 = select i1 %var_2_468, i64 -9223372036854775808, i64 %var_2_469
; %var_2_499 = select i1 %var_2_497, i64 -9223372036854775808, i64 %var_2_498
; Matched:\<badref\>:  store i64 %var_2_470, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_499, i64* %RAX.i197, align 8
; Matched:%var_2_471:  %var_2_471 = add i64 %var_2_430, -88
; %var_2_500 = add i64 %var_2_459, -88
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_408, 253
; %var_2_501 = add i64 %var_2_319, 253
; Matched:\<badref\>:  store i64 %var_2_472, i64* %PC, align 8
; store i64 %var_2_501, i64* %var_2_3, align 8
; Matched:%var_2_473:  %var_2_473 = inttoptr i64 %var_2_471 to i64*
; %var_2_502 = inttoptr i64 %var_2_500 to i64*
; Matched:\<badref\>:  store i64 %var_2_470, i64* %var_2_473, align 8
; store i64 %var_2_499, i64* %var_2_502, align 8
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %PC, align 8
; %var_2_503 = load i64, i64* %var_2_3, align 8
%var_2_504 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
%var_2_505 = load double, double* %var_2_88, align 1
%var_2_506 = fsub double %var_2_504, %var_2_505
; Matched:\<badref\>:  store double %var_2_477, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_506, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_506, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_478:  %var_2_478 = load double, double* %var_2_78, align 1
; %var_2_507 = load double, double* %var_2_79, align 1
; Matched:%var_2_479:  %var_2_479 = fmul double %var_2_477, %var_2_478
; %var_2_508 = fmul double %var_2_506, %var_2_507
; Matched:\<badref\>:  store double %var_2_479, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_508, double* %var_2_79, align 1
; Matched:%var_2_480:  %var_2_480 = load i64, i64* %RBP, align 8
; %var_2_509 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_480, -112
; %var_2_510 = add i64 %var_2_509, -112
; Matched:%var_2_482:  %var_2_482 = add i64 %var_2_474, 36
; %var_2_511 = add i64 %var_2_503, 36
; Matched:\<badref\>:  store i64 %var_2_123, i64* %PC, align 8
; store i64 %var_2_511, i64* %var_2_3, align 8
; Matched:%var_2_483:  %var_2_483 = load i64, i64* %var_2_74, align 1
; %var_2_512 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_484:  %var_2_484 = inttoptr i64 %var_2_481 to i64*
; %var_2_513 = inttoptr i64 %var_2_510 to i64*
; Matched:\<badref\>:  store i64 %var_2_483, i64* %var_2_484, align 8
; store i64 %var_2_512, i64* %var_2_513, align 8
%var_2_514 = load i64, i64* %var_2_3, align 8
%var_2_515 = bitcast %union.VectorReg* %var_2_74 to <2 x i32>*
%var_2_516 = load <2 x i32>, <2 x i32>* %var_2_515, align 1
%var_2_517 = bitcast i64* %var_2_81 to <2 x i32>*
%var_2_518 = load <2 x i32>, <2 x i32>* %var_2_517, align 1
%var_2_519 = extractelement <2 x i32> %var_2_516, i32 0
; Matched:\<badref\>:  store i32 %var_2_490, i32* %var_2_158, align 1, !tbaa !1288
; store i32 %var_2_519, i32* %var_2_180, align 1
%var_2_520 = extractelement <2 x i32> %var_2_516, i32 1
; Matched:\<badref\>:  store i32 %var_2_491, i32* %var_2_160, align 1, !tbaa !1288
; store i32 %var_2_520, i32* %var_2_182, align 1
%var_2_521 = extractelement <2 x i32> %var_2_518, i32 0
; Matched:\<badref\>:  store i32 %var_2_492, i32* %var_2_161, align 1, !tbaa !1288
; store i32 %var_2_521, i32* %var_2_183, align 1
%var_2_522 = extractelement <2 x i32> %var_2_518, i32 1
; Matched:\<badref\>:  store i32 %var_2_493, i32* %var_2_163, align 1, !tbaa !1288
; store i32 %var_2_522, i32* %var_2_185, align 1
; Matched:%var_2_494:  %var_2_494 = load i64, i64* %RBP, align 8
; %var_2_523 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_495:  %var_2_495 = add i64 %var_2_494, -112
; %var_2_524 = add i64 %var_2_523, -112
; Matched:%var_2_496:  %var_2_496 = add i64 %var_2_485, 8
; %var_2_525 = add i64 %var_2_514, 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %PC, align 8
; store i64 %var_2_525, i64* %var_2_3, align 8
; Matched:%var_2_497:  %var_2_497 = inttoptr i64 %var_2_495 to i64*
; %var_2_526 = inttoptr i64 %var_2_524 to i64*
; Matched:%var_2_498:  %var_2_498 = load i64, i64* %var_2_497, align 8
; %var_2_527 = load i64, i64* %var_2_526, align 8
; Matched:\<badref\>:  store i64 %var_2_498, i64* %var_2_79, align 1, !tbaa !1285
; store i64 %var_2_527, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_57, 13
; %var_2_528 = add i64 %var_2_514, 13
; Matched:\<badref\>:  store i64 %var_2_499, i64* %PC, align 8
; store i64 %var_2_528, i64* %var_2_3, align 8
; Matched:%var_2_500:  %var_2_500 = load i64, i64* %var_2_497, align 8
; %var_2_529 = load i64, i64* %var_2_526, align 8
; Matched:\<badref\>:  store i64 %var_2_500, i64* %var_2_84, align 1, !tbaa !1285
; store i64 %var_2_529, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i320, align 1
; Matched:%var_2_501:  %var_2_501 = add i64 %var_2_485, -1109
; %var_2_530 = add i64 %var_2_514, -1109
; Matched:%var_2_502:  %var_2_502 = add i64 %var_2_485, 20
; %var_2_531 = add i64 %var_2_514, 20
%var_2_532 = load i64, i64* %var_2_6, align 8
%var_2_533 = add i64 %var_2_532, -8
; Matched:%var_2_505:  %var_2_505 = inttoptr i64 %var_2_504 to i64*
; %var_2_534 = inttoptr i64 %var_2_533 to i64*
; Matched:\<badref\>:  store i64 %var_2_502, i64* %var_2_505, align 8
; store i64 %var_2_531, i64* %var_2_534, align 8
; Matched:\<badref\>:  store i64 %var_2_141, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_533, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_501, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_530, i64* %var_2_3, align 8
%var_2_535 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_178)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_279 to i32*
%var_2_536 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i194, align 8
; Matched:%var_2_508:  %var_2_508 = load i64, i64* %RBP, align 8
; %var_2_537 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_508, -116
; %var_2_538 = add i64 %var_2_537, -116
; Matched:%var_2_510:  %var_2_510 = load i32, i32* %EAX, align 4
; %var_2_539 = load i32, i32* %EAX.i315, align 4
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_287, 5
; %var_2_540 = add i64 %var_2_536, 5
; Matched:\<badref\>:  store i64 %var_2_237, i64* %PC, align 8
; store i64 %var_2_540, i64* %var_2_3, align 8
; Matched:%var_2_512:  %var_2_512 = inttoptr i64 %var_2_509 to i32*
; %var_2_541 = inttoptr i64 %var_2_538 to i32*
; Matched:\<badref\>:  store i32 %var_2_510, i32* %var_2_512, align 4
; store i32 %var_2_539, i32* %var_2_541, align 4
; Matched:%var_2_513:  %var_2_513 = load i32, i32* %ECX, align 4
; %var_2_542 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_514:  %var_2_514 = zext i32 %var_2_513 to i64
; %var_2_543 = zext i32 %var_2_542 to i64
%var_2_544 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_514, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_543, i64* %RAX.i197, align 8
; Matched:%var_2_516:  %var_2_516 = load i64, i64* %RSP, align 8
; %var_2_545 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_516, 128
; %var_2_546 = add i64 %var_2_545, 128
; Matched:\<badref\>:  store i64 %var_2_517, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_546, i64* %var_2_6, align 8
; Matched:%var_2_518:  %var_2_518 = icmp ugt i64 %var_2_516, -129
; %var_2_547 = icmp ugt i64 %var_2_545, -129
; Matched:%var_2_519:  %var_2_519 = zext i1 %var_2_518 to i8
; %var_2_548 = zext i1 %var_2_547 to i8
; Matched:\<badref\>:  store i8 %var_2_519, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_548, i8* %var_2_14, align 1
; Matched:%var_2_520:  %var_2_520 = trunc i64 %var_2_517 to i32
; %var_2_549 = trunc i64 %var_2_546 to i32
; Matched:%var_2_521:  %var_2_521 = and i32 %var_2_520, 255
; %var_2_550 = and i32 %var_2_549, 255
; Matched:%var_2_522:  %var_2_522 = tail call i32 @llvm.ctpop.i32(i32 %var_2_521) #11
; %var_2_551 = tail call i32 @llvm.ctpop.i32(i32 %var_2_550)
; Matched:%var_2_523:  %var_2_523 = trunc i32 %var_2_522 to i8
; %var_2_552 = trunc i32 %var_2_551 to i8
; Matched:%var_2_524:  %var_2_524 = and i8 %var_2_523, 1
; %var_2_553 = and i8 %var_2_552, 1
; Matched:%var_2_525:  %var_2_525 = xor i8 %var_2_524, 1
; %var_2_554 = xor i8 %var_2_553, 1
; Matched:\<badref\>:  store i8 %var_2_525, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_554, i8* %var_2_21, align 1
; Matched:%var_2_526:  %var_2_526 = xor i64 %var_2_517, %var_2_516
; %var_2_555 = xor i64 %var_2_546, %var_2_545
; Matched:%var_2_527:  %var_2_527 = lshr i64 %var_2_526, 4
; %var_2_556 = lshr i64 %var_2_555, 4
; Matched:%var_2_528:  %var_2_528 = trunc i64 %var_2_527 to i8
; %var_2_557 = trunc i64 %var_2_556 to i8
; Matched:%var_2_529:  %var_2_529 = and i8 %var_2_528, 1
; %var_2_558 = and i8 %var_2_557, 1
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_558, i8* %var_2_26, align 1
; Matched:%var_2_530:  %var_2_530 = icmp eq i64 %var_2_517, 0
; %var_2_559 = icmp eq i64 %var_2_546, 0
; Matched:%var_2_531:  %var_2_531 = zext i1 %var_2_530 to i8
; %var_2_560 = zext i1 %var_2_559 to i8
; Matched:\<badref\>:  store i8 %var_2_531, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_560, i8* %var_2_29, align 1
; Matched:%var_2_532:  %var_2_532 = lshr i64 %var_2_517, 63
; %var_2_561 = lshr i64 %var_2_546, 63
; Matched:%var_2_533:  %var_2_533 = trunc i64 %var_2_532 to i8
; %var_2_562 = trunc i64 %var_2_561 to i8
; Matched:\<badref\>:  store i8 %var_2_533, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_562, i8* %var_2_32, align 1
; Matched:%var_2_534:  %var_2_534 = lshr i64 %var_2_516, 63
; %var_2_563 = lshr i64 %var_2_545, 63
; Matched:%var_2_535:  %var_2_535 = xor i64 %var_2_532, %var_2_534
; %var_2_564 = xor i64 %var_2_561, %var_2_563
; Matched:%var_2_536:  %var_2_536 = add nuw nsw i64 %var_2_535, %var_2_532
; %var_2_565 = add nuw nsw i64 %var_2_564, %var_2_561
; Matched:%var_2_537:  %var_2_537 = icmp eq i64 %var_2_536, 2
; %var_2_566 = icmp eq i64 %var_2_565, 2
; Matched:%var_2_538:  %var_2_538 = zext i1 %var_2_537 to i8
; %var_2_567 = zext i1 %var_2_566 to i8
; Matched:\<badref\>:  store i8 %var_2_538, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_567, i8* %var_2_38, align 1
; Matched:%var_2_277:  %var_2_277 = add i64 %var_2_272, 10
; %var_2_568 = add i64 %var_2_544, 10
; Matched:\<badref\>:  store i64 %var_2_277, i64* %PC, align 8
; store i64 %var_2_568, i64* %var_2_3, align 8
; Matched:%var_2_540:  %var_2_540 = add i64 %var_2_516, 136
; %var_2_569 = add i64 %var_2_545, 136
; Matched:%var_2_541:  %var_2_541 = inttoptr i64 %var_2_517 to i64*
; %var_2_570 = inttoptr i64 %var_2_546 to i64*
; Matched:%var_2_542:  %var_2_542 = load i64, i64* %var_2_541, align 8
; %var_2_571 = load i64, i64* %var_2_570, align 8
; Matched:\<badref\>:  store i64 %var_2_542, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_571, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_540, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_569, i64* %var_2_6, align 8
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_157, 11
; %var_2_572 = add i64 %var_2_544, 11
; Matched:\<badref\>:  store i64 %var_2_543, i64* %PC, align 8
; store i64 %var_2_572, i64* %var_2_3, align 8
; Matched:%var_2_544:  %var_2_544 = inttoptr i64 %var_2_540 to i64*
; %var_2_573 = inttoptr i64 %var_2_569 to i64*
; Matched:%var_2_545:  %var_2_545 = load i64, i64* %var_2_544, align 8
; %var_2_574 = load i64, i64* %var_2_573, align 8
; Matched:\<badref\>:  store i64 %var_2_545, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_574, i64* %var_2_3, align 8
; Matched:%var_2_546:  %var_2_546 = add i64 %var_2_516, 144
; %var_2_575 = add i64 %var_2_545, 144
; Matched:\<badref\>:  store i64 %var_2_546, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_575, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_535
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__0x4009a8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009a8_type* @G__0x4009a8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq__0x400970___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400970_type* @G__0x400970 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4009aa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009aa_type* @G__0x4009aa to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3bf__rip____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3bf__rip__type* @G_0x3bf__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x3d09__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 15625, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x38__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm7___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
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
define %struct.Memory* @routine_movsd__xmm6__0x601138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601138_type* @G_0x601138 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm4__0x6012d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x1e848000__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 512000000, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm5__0x601260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm4__0x601288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__0x601120(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x6012a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x601278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x601128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601288___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x601280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4009da___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009da_type* @G__0x4009da to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 10000
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 240
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x601298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RDI, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601288___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400754(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd_0x6010e8___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6010e8_type* @G_0x6010e8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6010f0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6010f0_type* @G_0x6010f0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_mulsd_0x6010f8___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6010f8_type* @G_0x6010f8 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd_0x6010e8___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6010e8_type* @G_0x6010e8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x601100___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601100_type* @G_0x601100 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x601108___xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601108_type* @G_0x601108 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm7___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
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
define %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
define %struct.Memory* @routine_addsd__xmm5___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40068a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4009fe___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009fe_type* @G__0x4009fe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1f7__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1f7__rip__type* @G_0x1f7__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1f7__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1f7__rip__type* @G_0x1f7__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6010e8___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6010e8_type* @G_0x6010e8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6010f0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6010f0_type* @G_0x6010f0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6010f8___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6010f8_type* @G_0x6010f8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601288___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6010e8___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6010e8_type* @G_0x6010e8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601100___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601100_type* @G_0x601100 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601108___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601108_type* @G_0x601108 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_movsd__xmm3__0x601298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__0x601258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
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
define %struct.Memory* @routine_movsd_0x601298___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601258___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601120___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_divsd_0x601120___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601288___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x601298___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x601258___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x43E0000000000000
  %9 = fptosi double %6 to i64
  %10 = select i1 %8, i64 -9223372036854775808, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x9c40___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq__rax___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x601280___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601280_type* @G_0x601280 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm3___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601258___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd__xmm3__0x601290(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601290_type* @G_0x601290 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x601290___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 3, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
