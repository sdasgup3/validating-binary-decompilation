; ModuleID = '/tmp/tmpczv9nml5-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x291__rip__type = type <{ [8 x i8] }>
%G_0x49f__rip__type = type <{ [8 x i8] }>
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
%G_0x601048_type = type <{ [8 x i8] }>
%G_0x601050_type = type <{ [8 x i8] }>
%G_0x601058_type = type <{ [8 x i8] }>
%G_0x601060_type = type <{ [8 x i8] }>
%G_0x601070_type = type <{ [8 x i8] }>
%G_0x601078_type = type <{ [8 x i8] }>
%G_0x601080_type = type <{ [8 x i8] }>
%G_0x601088_type = type <{ [8 x i8] }>
%G_0x601090_type = type <{ [8 x i8] }>
%G_0x601098_type = type <{ [8 x i8] }>
%G_0x601120_type = type <{ [16 x i8] }>
%G_0x601128_type = type <{ [16 x i8] }>
%G_0x601258_type = type <{ [16 x i8] }>
%G_0x601260_type = type <{ [16 x i8] }>
%G_0x601278_type = type <{ [16 x i8] }>
%G_0x601280_type = type <{ [16 x i8] }>
%G_0x601288_type = type <{ [16 x i8] }>
%G_0x601290_type = type <{ [16 x i8] }>
%G_0x601298_type = type <{ [16 x i8] }>
%G_0x6012a0_type = type <{ [16 x i8] }>
%G_0x6012d0_type = type <{ [16 x i8] }>
%G__0x400a48_type = type <{ [8 x i8] }>
%G__0x400a80_type = type <{ [8 x i8] }>
%G__0x400a82_type = type <{ [8 x i8] }>
%G__0x400ab2_type = type <{ [8 x i8] }>
%G__0x400ad6_type = type <{ [8 x i8] }>
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
@G_0x291__rip_ = global %G_0x291__rip__type zeroinitializer
@G_0x49f__rip_ = global %G_0x49f__rip__type zeroinitializer
@G_0x601038 = local_unnamed_addr global %G_0x601038_type zeroinitializer
@G_0x601040 = local_unnamed_addr global %G_0x601040_type zeroinitializer
@G_0x601048 = local_unnamed_addr global %G_0x601048_type zeroinitializer
@G_0x601050 = local_unnamed_addr global %G_0x601050_type zeroinitializer
@G_0x601058 = local_unnamed_addr global %G_0x601058_type zeroinitializer
@G_0x601060 = local_unnamed_addr global %G_0x601060_type zeroinitializer
@G_0x601070 = local_unnamed_addr global %G_0x601070_type zeroinitializer
@G_0x601078 = local_unnamed_addr global %G_0x601078_type zeroinitializer
@G_0x601080 = local_unnamed_addr global %G_0x601080_type zeroinitializer
@G_0x601088 = local_unnamed_addr global %G_0x601088_type zeroinitializer
@G_0x601090 = local_unnamed_addr global %G_0x601090_type zeroinitializer
@G_0x601098 = local_unnamed_addr global %G_0x601098_type zeroinitializer
@G_0x601120 = local_unnamed_addr global %G_0x601120_type zeroinitializer
@G_0x601128 = local_unnamed_addr global %G_0x601128_type zeroinitializer
@G_0x601258 = local_unnamed_addr global %G_0x601258_type zeroinitializer
@G_0x601260 = local_unnamed_addr global %G_0x601260_type zeroinitializer
@G_0x601278 = local_unnamed_addr global %G_0x601278_type zeroinitializer
@G_0x601280 = local_unnamed_addr global %G_0x601280_type zeroinitializer
@G_0x601288 = local_unnamed_addr global %G_0x601288_type zeroinitializer
@G_0x601290 = local_unnamed_addr global %G_0x601290_type zeroinitializer
@G_0x601298 = local_unnamed_addr global %G_0x601298_type zeroinitializer
@G_0x6012a0 = local_unnamed_addr global %G_0x6012a0_type zeroinitializer
@G_0x6012d0 = local_unnamed_addr global %G_0x6012d0_type zeroinitializer
@G__0x400a48 = global %G__0x400a48_type zeroinitializer
@G__0x400a80 = global %G__0x400a80_type zeroinitializer
@G__0x400a82 = global %G__0x400a82_type zeroinitializer
@G__0x400ab2 = global %G__0x400ab2_type zeroinitializer
@G__0x400ad6 = global %G__0x400ad6_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_12:  %var_2_12 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_13:  %var_2_13 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_13, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_14:  %var_2_14 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_14, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_16:  %var_2_16 = inttoptr i64 %var_2_15 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_12, i64* %var_2_16, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_17:  %var_2_17 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_18:  %var_2_18 = add i64 %var_2_14, -136
; %var_2_11 = add i64 %var_2_7, -136
; Matched:\<badref\>:  store i64 %var_2_18, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_19:  %var_2_19 = icmp ult i64 %var_2_15, 128
; %var_2_12 = icmp ult i64 %var_2_8, 128
; Matched:%var_2_20:  %var_2_20 = zext i1 %var_2_19 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_21:  %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_22:  %var_2_22 = trunc i64 %var_2_18 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_23:  %var_2_23 = and i32 %var_2_22, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_24:  %var_2_24 = tail call i32 @llvm.ctpop.i32(i32 %var_2_23) #11
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_25:  %var_2_25 = trunc i32 %var_2_24 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_26:  %var_2_26 = and i8 %var_2_25, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_27:  %var_2_27 = xor i8 %var_2_26, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_28:  %var_2_28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_27, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_29:  %var_2_29 = xor i64 %var_2_15, %var_2_18
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_30:  %var_2_30 = lshr i64 %var_2_29, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_31:  %var_2_31 = trunc i64 %var_2_30 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_32:  %var_2_32 = and i8 %var_2_31, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_34:  %var_2_34 = icmp eq i64 %var_2_18, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_35:  %var_2_35 = zext i1 %var_2_34 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_35, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_37:  %var_2_37 = lshr i64 %var_2_18, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_38:  %var_2_38 = trunc i64 %var_2_37 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_39:  %var_2_39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_40:  %var_2_40 = lshr i64 %var_2_15, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_41:  %var_2_41 = xor i64 %var_2_37, %var_2_40
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_42:  %var_2_42 = add nuw nsw i64 %var_2_41, %var_2_40
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_43:  %var_2_43 = icmp eq i64 %var_2_42, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_44:  %var_2_44 = zext i1 %var_2_43 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
; Matched:%var_2_45:  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_44, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x400a80_type* @G__0x400a80 to i64), i64* %RDI.i349, align 8
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_14, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_17, 27
; %var_2_40 = add i64 %var_2_10, 27
; Matched:\<badref\>:  store i64 %var_2_47, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_46 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_48, align 4
; store i32 0, i32* %var_2_41, align 4
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i403 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i403, align 1
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -284
; %var_2_44 = add i64 %var_2_43, -284
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_49, 7
; %var_2_45 = add i64 %var_2_43, 7
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_67:  %var_2_67 = inttoptr i64 %var_2_66 to i64*
; %var_2_48 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_141, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_47, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_49 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_50 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a48_type* @G__0x400a48 to i64), i64* %RDI.i349, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i398 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_59:  %var_2_59 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i398, align 4
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_56, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_60, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = inttoptr i64 %var_2_58 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_59, i32* %var_2_61, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i403, align 1
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_62, -304
; %var_2_57 = add i64 %var_2_56, -304
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_62, 7
; %var_2_58 = add i64 %var_2_56, 7
%var_2_59 = load i64, i64* %var_2_6, align 8
%var_2_60 = add i64 %var_2_59, -8
; Matched:%var_2_54:  %var_2_54 = inttoptr i64 %var_2_53 to i64*
; %var_2_61 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_125, i64* %var_2_128, align 8
; store i64 %var_2_58, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_66, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_63, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %var_2_3, align 8
%var_2_62 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_49)
%var_2_63 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a82_type* @G__0x400a82 to i64), i64* %RDI.i349, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_70:  %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 10)
%var_2_67 = add i64 %var_2_63, 18
store i64 %var_2_67, i64* %var_2_3, align 8
%var_2_68 = inttoptr i64 %var_2_66 to i64*
%var_2_69 = load i64, i64* %var_2_68, align 8
; Matched:%var_2_72:  %var_2_72 = bitcast [32 x %union.VectorReg]* %var_2_5 to double*
; %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_64 to double*
%var_2_71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_64, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_69, i64* %var_2_71, align 1
%var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_73 = bitcast i64* %var_2_72 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 18)
%var_2_76 = add i64 %var_2_63, 26
store i64 %var_2_76, i64* %var_2_3, align 8
%var_2_77 = inttoptr i64 %var_2_75 to i64*
%var_2_78 = load i64, i64* %var_2_77, align 8
; Matched:%var_2_77:  %var_2_77 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_79 = bitcast %union.VectorReg* %var_2_74 to double*
%var_2_80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_74, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_78, i64* %var_2_80, align 1
; Matched:%var_2_79:  %var_2_79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_80:  %var_2_80 = bitcast i64* %var_2_79 to double*
; %var_2_82 = bitcast i64* %var_2_81 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_84 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 26)
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_287, 34
; %var_2_85 = add i64 %var_2_63, 34
; Matched:\<badref\>:  store i64 %var_2_307, i64* %PC, align 8
; store i64 %var_2_85, i64* %var_2_3, align 8
%var_2_86 = inttoptr i64 %var_2_84 to i64*
%var_2_87 = load i64, i64* %var_2_86, align 8
; Matched:%var_2_82:  %var_2_82 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_88 = bitcast %union.VectorReg* %var_2_83 to double*
%var_2_89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_83, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_87, i64* %var_2_89, align 1
; Matched:%var_2_84:  %var_2_84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_85:  %var_2_85 = bitcast i64* %var_2_84 to double*
; %var_2_91 = bitcast i64* %var_2_90 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_93 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 34)
%var_2_94 = add i64 %var_2_63, 42
store i64 %var_2_94, i64* %var_2_3, align 8
%var_2_95 = inttoptr i64 %var_2_93 to i64*
%var_2_96 = load i64, i64* %var_2_95, align 8
%var_2_97 = bitcast %union.VectorReg* %var_2_92 to double*
%var_2_98 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_92, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_96, i64* %var_2_98, align 1
; Matched:%var_2_89:  %var_2_89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_90:  %var_2_90 = bitcast i64* %var_2_89 to double*
; %var_2_100 = bitcast i64* %var_2_99 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_102 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 42)
%var_2_103 = add i64 %var_2_63, 50
store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i64*
%var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:%var_2_92:  %var_2_92 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_106 = bitcast %union.VectorReg* %var_2_101 to double*
%var_2_107 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_101, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_105, i64* %var_2_107, align 1
; Matched:%var_2_94:  %var_2_94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_95:  %var_2_95 = bitcast i64* %var_2_94 to double*
; %var_2_109 = bitcast i64* %var_2_108 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
%var_2_111 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64), i64 50)
%var_2_112 = add i64 %var_2_63, 58
store i64 %var_2_112, i64* %var_2_3, align 8
%var_2_113 = inttoptr i64 %var_2_111 to i64*
%var_2_114 = load i64, i64* %var_2_113, align 8
; Matched:%var_2_97:  %var_2_97 = bitcast %union.VectorReg* %var_2_10 to double*
; %var_2_115 = bitcast %union.VectorReg* %var_2_110 to double*
%var_2_116 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_110, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_114, i64* %var_2_116, align 1
; Matched:%var_2_99:  %var_2_99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_100:  %var_2_100 = bitcast i64* %var_2_99 to double*
; %var_2_118 = bitcast i64* %var_2_117 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_101:  %var_2_101 = load i64, i64* %RBP, align 8
; %var_2_119 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_102:  %var_2_102 = add i64 %var_2_101, -56
; %var_2_120 = add i64 %var_2_119, -56
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_69, 66
; %var_2_121 = add i64 %var_2_63, 66
; Matched:\<badref\>:  store i64 %var_2_103, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = inttoptr i64 %var_2_102 to i64*
; %var_2_122 = inttoptr i64 %var_2_120 to i64*
; Matched:\<badref\>:  store i64 15625, i64* %var_2_104, align 8
; store i64 15625, i64* %var_2_122, align 8
; Matched:%var_2_105:  %var_2_105 = load i64, i64* %PC, align 8
; %var_2_123 = load i64, i64* %var_2_3, align 8
%var_2_124 = load i64, i64* %var_2_107, align 1
store i64 %var_2_124, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
; Matched:%var_2_107:  %var_2_107 = load i64, i64* %RBP, align 8
; %var_2_125 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_107, -64
; %var_2_126 = add i64 %var_2_125, -64
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_105, 17
; %var_2_127 = add i64 %var_2_123, 17
; Matched:\<badref\>:  store i64 %var_2_109, i64* %PC, align 8
; store i64 %var_2_127, i64* %var_2_3, align 8
; Matched:%var_2_110:  %var_2_110 = inttoptr i64 %var_2_108 to i64*
; %var_2_128 = inttoptr i64 %var_2_126 to i64*
; Matched:\<badref\>:  store i64 512000000, i64* %var_2_110, align 8
; store i64 512000000, i64* %var_2_128, align 8
%var_2_129 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_112:  %var_2_112 = load i64, i64* %var_2_98, align 1
; %var_2_130 = load i64, i64* %var_2_116, align 1
; Matched:\<badref\>:  store i64 %var_2_112, i64* bitcast (%piref_type* @piref to i64*), align 8
; store i64 %var_2_130, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
%var_2_131 = load i64, i64* %var_2_107, align 1
store i64 %var_2_131, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
; Matched:%var_2_114:  %var_2_114 = load i64, i64* %var_2_88, align 1
; %var_2_132 = load i64, i64* %var_2_98, align 1
; Matched:\<badref\>:  store i64 %var_2_114, i64* bitcast (%two_type* @two to i64*), align 8
; store i64 %var_2_132, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
; Matched:%var_2_518:  %var_2_518 = load i64, i64* %var_2_83, align 1
; %var_2_133 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_115, i64* bitcast (%three_type* @three to i64*), align 8
; store i64 %var_2_133, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
; Matched:%var_2_116:  %var_2_116 = load i64, i64* %var_2_78, align 1
; %var_2_134 = load i64, i64* %var_2_80, align 1
; Matched:\<badref\>:  store i64 %var_2_116, i64* bitcast (%four_type* @four to i64*), align 8
; store i64 %var_2_134, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
%var_2_135 = load i64, i64* %var_2_71, align 1
store i64 %var_2_135, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_113, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_131, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
store i64 %var_2_131, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_118:  %var_2_118 = load i64, i64* %RBP, align 8
; %var_2_136 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_118, -96
; %var_2_137 = add i64 %var_2_136, -96
; Matched:%var_2_120:  %var_2_120 = load i32, i32* %EAX, align 4
; %var_2_138 = load i32, i32* %EAX.i398, align 4
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_111, 75
; %var_2_139 = add i64 %var_2_129, 75
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_139, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_119 to i32*
; %var_2_140 = inttoptr i64 %var_2_137 to i32*
; Matched:\<badref\>:  store i32 %var_2_120, i32* %var_2_122, align 4
; store i32 %var_2_138, i32* %var_2_140, align 4
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %PC, align 8
; %var_2_141 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i403, align 1
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_123, -469
; %var_2_142 = add i64 %var_2_141, -469
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_123, 7
; %var_2_143 = add i64 %var_2_141, 7
%var_2_144 = load i64, i64* %var_2_6, align 8
%var_2_145 = add i64 %var_2_144, -8
; Matched:%var_2_141:  %var_2_141 = inttoptr i64 %var_2_140 to i64*
; %var_2_146 = inttoptr i64 %var_2_145 to i64*
; Matched:\<badref\>:  store i64 %var_2_51, i64* %var_2_54, align 8
; store i64 %var_2_143, i64* %var_2_146, align 8
; Matched:\<badref\>:  store i64 %var_2_127, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_145, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_124, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_142, i64* %var_2_3, align 8
%var_2_147 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_62)
%var_2_148 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400ab2_type* @G__0x400ab2 to i64), i64* %RDI.i349, align 8
; Matched:%var_2_131:  %var_2_131 = load i64, i64* %RBP, align 8
; %var_2_149 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, -100
; %var_2_150 = add i64 %var_2_149, -100
; Matched:%var_2_133:  %var_2_133 = load i32, i32* %EAX, align 4
; %var_2_151 = load i32, i32* %EAX.i398, align 4
; Matched:%var_2_541:  %var_2_541 = add i64 %var_2_527, 13
; %var_2_152 = add i64 %var_2_148, 13
; Matched:\<badref\>:  store i64 %var_2_541, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_132 to i32*
; %var_2_153 = inttoptr i64 %var_2_150 to i32*
; Matched:\<badref\>:  store i32 %var_2_133, i32* %var_2_135, align 4
; store i32 %var_2_151, i32* %var_2_153, align 4
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i403, align 1
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_136, -489
; %var_2_155 = add i64 %var_2_154, -489
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_136, 7
; %var_2_156 = add i64 %var_2_154, 7
%var_2_157 = load i64, i64* %var_2_6, align 8
%var_2_158 = add i64 %var_2_157, -8
; Matched:%var_2_128:  %var_2_128 = inttoptr i64 %var_2_127 to i64*
; %var_2_159 = inttoptr i64 %var_2_158 to i64*
; Matched:\<badref\>:  store i64 %var_2_64, i64* %var_2_67, align 8
; store i64 %var_2_156, i64* %var_2_159, align 8
; Matched:\<badref\>:  store i64 %var_2_546, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_137, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %var_2_3, align 8
%var_2_160 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_147)
%var_2_161 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_144:  %var_2_144 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
; %var_2_162 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
; Matched:%var_2_145:  %var_2_145 = getelementptr inbounds i8, i8* %var_2_70, i64 4
; %var_2_163 = getelementptr inbounds i8, i8* %var_2_65, i64 4
; Matched:%var_2_146:  %var_2_146 = bitcast i8* %var_2_145 to i32*
; %var_2_164 = bitcast i8* %var_2_163 to i32*
; Matched:%var_2_147:  %var_2_147 = bitcast i64* %var_2_74 to i32*
; %var_2_165 = bitcast i64* %var_2_72 to i32*
; Matched:%var_2_148:  %var_2_148 = getelementptr inbounds i8, i8* %var_2_70, i64 12
; %var_2_166 = getelementptr inbounds i8, i8* %var_2_65, i64 12
; Matched:%var_2_149:  %var_2_149 = bitcast i8* %var_2_148 to i32*
; %var_2_167 = bitcast i8* %var_2_166 to i32*
%var_2_168 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_168, align 1
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %RBP, align 8
; %var_2_169 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -56
; %var_2_170 = add i64 %var_2_169, -56
; Matched:%var_2_585:  %var_2_585 = add i64 %var_2_557, 11
; %var_2_171 = add i64 %var_2_161, 11
; Matched:\<badref\>:  store i64 %var_2_585, i64* %PC, align 8
; store i64 %var_2_171, i64* %var_2_3, align 8
; Matched:%var_2_154:  %var_2_154 = inttoptr i64 %var_2_152 to i64*
; %var_2_172 = inttoptr i64 %var_2_170 to i64*
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %var_2_154, align 8
; %var_2_173 = load i64, i64* %var_2_172, align 8
; Matched:%var_2_156:  %var_2_156 = sext i64 %var_2_155 to i128
; %var_2_174 = sext i64 %var_2_173 to i128
; Matched:%var_2_157:  %var_2_157 = and i128 %var_2_156, -18446744073709551616
; %var_2_175 = and i128 %var_2_174, -18446744073709551616
; Matched:%var_2_158:  %var_2_158 = zext i64 %var_2_155 to i128
; %var_2_176 = zext i64 %var_2_173 to i128
; Matched:%var_2_159:  %var_2_159 = or i128 %var_2_157, %var_2_158
; %var_2_177 = or i128 %var_2_175, %var_2_176
; Matched:%var_2_160:  %var_2_160 = mul nsw i128 %var_2_159, 10000
; %var_2_178 = mul nsw i128 %var_2_177, 10000
; Matched:%var_2_161:  %var_2_161 = trunc i128 %var_2_160 to i64
; %var_2_179 = trunc i128 %var_2_178 to i64
; Matched:\<badref\>:  store i64 %var_2_161, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_179, i64* %RDI.i349, align 8
; Matched:%var_2_162:  %var_2_162 = sext i64 %var_2_161 to i128
; %var_2_180 = sext i64 %var_2_179 to i128
; Matched:%var_2_163:  %var_2_163 = icmp ne i128 %var_2_162, %var_2_160
; %var_2_181 = icmp ne i128 %var_2_180, %var_2_178
; Matched:%var_2_164:  %var_2_164 = zext i1 %var_2_163 to i8
; %var_2_182 = zext i1 %var_2_181 to i8
; Matched:\<badref\>:  store i8 %var_2_164, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_182, i8* %var_2_14, align 1
; Matched:%var_2_165:  %var_2_165 = trunc i128 %var_2_160 to i32
; %var_2_183 = trunc i128 %var_2_178 to i32
; Matched:%var_2_166:  %var_2_166 = and i32 %var_2_165, 240
; %var_2_184 = and i32 %var_2_183, 240
; Matched:%var_2_167:  %var_2_167 = tail call i32 @llvm.ctpop.i32(i32 %var_2_166) #11
; %var_2_185 = tail call i32 @llvm.ctpop.i32(i32 %var_2_184)
; Matched:%var_2_168:  %var_2_168 = trunc i32 %var_2_167 to i8
; %var_2_186 = trunc i32 %var_2_185 to i8
; Matched:%var_2_169:  %var_2_169 = and i8 %var_2_168, 1
; %var_2_187 = and i8 %var_2_186, 1
; Matched:%var_2_170:  %var_2_170 = xor i8 %var_2_169, 1
; %var_2_188 = xor i8 %var_2_187, 1
; Matched:\<badref\>:  store i8 %var_2_170, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_188, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_171:  %var_2_171 = lshr i64 %var_2_161, 63
; %var_2_189 = lshr i64 %var_2_179, 63
; Matched:%var_2_172:  %var_2_172 = trunc i64 %var_2_171 to i8
; %var_2_190 = trunc i64 %var_2_189 to i8
; Matched:\<badref\>:  store i8 %var_2_172, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_190, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_164, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_182, i8* %var_2_38, align 1
; Matched:%var_2_173:  %var_2_173 = add i64 %var_2_151, -80
; %var_2_191 = add i64 %var_2_169, -80
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_392, 15
; %var_2_192 = add i64 %var_2_161, 15
; Matched:\<badref\>:  store i64 %var_2_248, i64* %PC, align 8
; store i64 %var_2_192, i64* %var_2_3, align 8
; Matched:%var_2_175:  %var_2_175 = inttoptr i64 %var_2_173 to i64*
; %var_2_193 = inttoptr i64 %var_2_191 to i64*
; Matched:\<badref\>:  store i64 %var_2_161, i64* %var_2_175, align 8
; store i64 %var_2_179, i64* %var_2_193, align 8
; Matched:%var_2_176:  %var_2_176 = load i64, i64* %PC, align 8
; %var_2_194 = load i64, i64* %var_2_3, align 8
%var_2_195 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
store i64 %var_2_195, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_196 = load i64, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
store i64 %var_2_196, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_179:  %var_2_179 = load i64, i64* %RBP, align 8
; %var_2_197 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_179, -80
; %var_2_198 = add i64 %var_2_197, -80
; Matched:%var_2_181:  %var_2_181 = add i64 %var_2_176, 24
; %var_2_199 = add i64 %var_2_194, 24
; Matched:\<badref\>:  store i64 %var_2_181, i64* %PC, align 8
; store i64 %var_2_199, i64* %var_2_3, align 8
; Matched:%var_2_182:  %var_2_182 = inttoptr i64 %var_2_180 to i64*
; %var_2_200 = inttoptr i64 %var_2_198 to i64*
; Matched:%var_2_183:  %var_2_183 = load i64, i64* %var_2_182, align 8
; %var_2_201 = load i64, i64* %var_2_200, align 8
; Matched:%var_2_184:  %var_2_184 = sitofp i64 %var_2_183 to double
; %var_2_202 = sitofp i64 %var_2_201 to double
; Matched:\<badref\>:  store double %var_2_184, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_202, double* %var_2_97, align 1
; Matched:%var_2_185:  %var_2_185 = bitcast i64 %var_2_178 to double
; %var_2_203 = bitcast i64 %var_2_196 to double
; Matched:%var_2_186:  %var_2_186 = fmul double %var_2_184, %var_2_185
; %var_2_204 = fmul double %var_2_202, %var_2_203
; Matched:\<badref\>:  store double %var_2_186, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_204, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_187:  %var_2_187 = bitcast i64 %var_2_177 to double
; %var_2_205 = bitcast i64 %var_2_195 to double
; Matched:%var_2_188:  %var_2_188 = fdiv double %var_2_187, %var_2_186
; %var_2_206 = fdiv double %var_2_205, %var_2_204
; Matched:\<badref\>:  store double %var_2_188, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_206, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_179, -48
; %var_2_207 = add i64 %var_2_197, -48
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_176, 37
; %var_2_208 = add i64 %var_2_194, 37
; Matched:\<badref\>:  store i64 %var_2_190, i64* %PC, align 8
; store i64 %var_2_208, i64* %var_2_3, align 8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_189 to double*
; %var_2_209 = inttoptr i64 %var_2_207 to double*
; Matched:\<badref\>:  store double %var_2_188, double* %var_2_191, align 8
; store double %var_2_206, double* %var_2_209, align 8
; Matched:%var_2_192:  %var_2_192 = load i64, i64* %RBP, align 8
; %var_2_210 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_192, -16
; %var_2_211 = add i64 %var_2_210, -16
%var_2_212 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_407:  %var_2_407 = add i64 %var_2_406, 5
; %var_2_213 = add i64 %var_2_212, 5
; Matched:\<badref\>:  store i64 %var_2_407, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
; Matched:%var_2_196:  %var_2_196 = load i64, i64* %var_2_73, align 1
; %var_2_214 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_197:  %var_2_197 = inttoptr i64 %var_2_193 to i64*
; %var_2_215 = inttoptr i64 %var_2_211 to i64*
; Matched:\<badref\>:  store i64 %var_2_196, i64* %var_2_197, align 8
; store i64 %var_2_214, i64* %var_2_215, align 8
; Matched:%var_2_198:  %var_2_198 = load i64, i64* %RBP, align 8
; %var_2_216 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_199:  %var_2_199 = add i64 %var_2_198, -32
; %var_2_217 = add i64 %var_2_216, -32
%var_2_218 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_393:  %var_2_393 = add i64 %var_2_392, 5
; %var_2_219 = add i64 %var_2_218, 5
; Matched:\<badref\>:  store i64 %var_2_393, i64* %PC, align 8
; store i64 %var_2_219, i64* %var_2_3, align 8
; Matched:%var_2_202:  %var_2_202 = load i64, i64* %var_2_73, align 1
; %var_2_220 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_203:  %var_2_203 = inttoptr i64 %var_2_199 to i64*
; %var_2_221 = inttoptr i64 %var_2_217 to i64*
; Matched:\<badref\>:  store i64 %var_2_202, i64* %var_2_203, align 8
; store i64 %var_2_220, i64* %var_2_221, align 8
%var_2_222 = load i64, i64* %RBP.i, align 8
%var_2_223 = add i64 %var_2_222, -72
%var_2_224 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_538:  %var_2_538 = add i64 %var_2_527, 8
; %var_2_225 = add i64 %var_2_224, 8
; Matched:\<badref\>:  store i64 %var_2_538, i64* %PC, align 8
; store i64 %var_2_225, i64* %var_2_3, align 8
%var_2_226 = inttoptr i64 %var_2_223 to i64*
store i64 1, i64* %var_2_226, align 8
; Matched:%var_2_209:  %var_2_209 = load i64, i64* %RBP, align 8
; %var_2_227 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, -104
; %var_2_228 = add i64 %var_2_227, -104
; Matched:%var_2_211:  %var_2_211 = load i32, i32* %EAX, align 4
; %var_2_229 = load i32, i32* %EAX.i398, align 4
; Matched:%var_2_212:  %var_2_212 = load i64, i64* %PC, align 8
; %var_2_230 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_212, 3
; %var_2_231 = add i64 %var_2_230, 3
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_231, i64* %var_2_3, align 8
; Matched:%var_2_214:  %var_2_214 = inttoptr i64 %var_2_210 to i32*
; %var_2_232 = inttoptr i64 %var_2_228 to i32*
; Matched:\<badref\>:  store i32 %var_2_211, i32* %var_2_214, align 4
; store i32 %var_2_229, i32* %var_2_232, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i300 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
%var_2_233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i297 = getelementptr inbounds %union.anon, %union.anon* %var_2_233, i64 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400659:                                  ; preds = %block_40066e, %entry
%var_2_234 = phi i64 [ %var_2_436, %block_40066e ], [ %.pre, %entry ]
%var_2_235 = load i64, i64* %RBP.i, align 8
%var_2_236 = add i64 %var_2_235, -72
; Matched:%var_2_592:  %var_2_592 = add i64 %var_2_589, 4
; %var_2_237 = add i64 %var_2_234, 4
; Matched:\<badref\>:  store i64 %var_2_592, i64* %PC, align 8
; store i64 %var_2_237, i64* %var_2_3, align 8
%var_2_238 = inttoptr i64 %var_2_236 to i64*
%var_2_239 = load i64, i64* %var_2_238, align 8
; Matched:\<badref\>:  store i64 %var_2_594, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_239, i64* %RAX.i300, align 8
%var_2_240 = add i64 %var_2_235, -80
; Matched:%var_2_596:  %var_2_596 = add i64 %var_2_589, 8
; %var_2_241 = add i64 %var_2_234, 8
; Matched:\<badref\>:  store i64 %var_2_596, i64* %PC, align 8
; store i64 %var_2_241, i64* %var_2_3, align 8
%var_2_242 = inttoptr i64 %var_2_240 to i64*
%var_2_243 = load i64, i64* %var_2_242, align 8
%var_2_244 = add i64 %var_2_243, -1
; Matched:\<badref\>:  store i64 %var_2_599, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_244, i64* %RCX.i297, align 8
%var_2_245 = lshr i64 %var_2_244, 63
%var_2_246 = sub i64 %var_2_239, %var_2_244
; Matched:%var_2_602:  %var_2_602 = icmp ult i64 %var_2_594, %var_2_599
; %var_2_247 = icmp ult i64 %var_2_239, %var_2_244
; Matched:%var_2_603:  %var_2_603 = zext i1 %var_2_602 to i8
; %var_2_248 = zext i1 %var_2_247 to i8
; Matched:\<badref\>:  store i8 %var_2_603, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_248, i8* %var_2_14, align 1
; Matched:%var_2_604:  %var_2_604 = trunc i64 %var_2_601 to i32
; %var_2_249 = trunc i64 %var_2_246 to i32
; Matched:%var_2_605:  %var_2_605 = and i32 %var_2_604, 255
; %var_2_250 = and i32 %var_2_249, 255
; Matched:%var_2_606:  %var_2_606 = tail call i32 @llvm.ctpop.i32(i32 %var_2_605) #11
; %var_2_251 = tail call i32 @llvm.ctpop.i32(i32 %var_2_250)
; Matched:%var_2_607:  %var_2_607 = trunc i32 %var_2_606 to i8
; %var_2_252 = trunc i32 %var_2_251 to i8
; Matched:%var_2_608:  %var_2_608 = and i8 %var_2_607, 1
; %var_2_253 = and i8 %var_2_252, 1
; Matched:%var_2_609:  %var_2_609 = xor i8 %var_2_608, 1
; %var_2_254 = xor i8 %var_2_253, 1
; Matched:\<badref\>:  store i8 %var_2_609, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_254, i8* %var_2_21, align 1
; Matched:%var_2_610:  %var_2_610 = xor i64 %var_2_599, %var_2_594
; %var_2_255 = xor i64 %var_2_244, %var_2_239
; Matched:%var_2_611:  %var_2_611 = xor i64 %var_2_610, %var_2_601
; %var_2_256 = xor i64 %var_2_255, %var_2_246
; Matched:%var_2_612:  %var_2_612 = lshr i64 %var_2_611, 4
; %var_2_257 = lshr i64 %var_2_256, 4
; Matched:%var_2_613:  %var_2_613 = trunc i64 %var_2_612 to i8
; %var_2_258 = trunc i64 %var_2_257 to i8
; Matched:%var_2_614:  %var_2_614 = and i8 %var_2_613, 1
; %var_2_259 = and i8 %var_2_258, 1
; Matched:\<badref\>:  store i8 %var_2_614, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_259, i8* %var_2_26, align 1
%var_2_260 = icmp eq i64 %var_2_246, 0
; Matched:%var_2_616:  %var_2_616 = zext i1 %var_2_615 to i8
; %var_2_261 = zext i1 %var_2_260 to i8
; Matched:\<badref\>:  store i8 %var_2_616, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_261, i8* %var_2_29, align 1
%var_2_262 = lshr i64 %var_2_246, 63
%var_2_263 = trunc i64 %var_2_262 to i8
; Matched:\<badref\>:  store i8 %var_2_618, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_263, i8* %var_2_32, align 1
%var_2_264 = lshr i64 %var_2_239, 63
%var_2_265 = xor i64 %var_2_245, %var_2_264
%var_2_266 = xor i64 %var_2_262, %var_2_264
%var_2_267 = add nuw nsw i64 %var_2_266, %var_2_265
%var_2_268 = icmp eq i64 %var_2_267, 2
; Matched:%var_2_624:  %var_2_624 = zext i1 %var_2_623 to i8
; %var_2_269 = zext i1 %var_2_268 to i8
; Matched:\<badref\>:  store i8 %var_2_624, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_269, i8* %var_2_38, align 1
%var_2_270 = icmp ne i8 %var_2_263, 0
%var_2_271 = xor i1 %var_2_270, %var_2_268
%.demorgan = or i1 %var_2_260, %var_2_271
  %.v = select i1 %.demorgan, i64 21, i64 313
%var_2_272 = add i64 %var_2_234, %.v
; Matched:\<badref\>:  store i64 %var_2_627, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_272, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_40066e, label %block_.L_400792

block_40066e:                                     ; preds = %block_.L_400659
; Matched:%var_2_215:  %var_2_215 = add i64 %var_2_627, 6
; %var_2_273 = add i64 %var_2_272, 6
; Matched:\<badref\>:  store i64 %var_2_215, i64* %PC, align 8
; store i64 %var_2_273, i64* %var_2_3, align 8
; Matched:%var_2_216:  %var_2_216 = load i64, i64* %var_2_593, align 8
; %var_2_274 = load i64, i64* %var_2_238, align 8
; Matched:%var_2_217:  %var_2_217 = sitofp i64 %var_2_216 to double
; %var_2_275 = sitofp i64 %var_2_274 to double
; Matched:\<badref\>:  store double %var_2_217, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_275, double* %var_2_70, align 1
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_590, -48
; %var_2_276 = add i64 %var_2_235, -48
; Matched:%var_2_219:  %var_2_219 = add i64 %var_2_627, 11
; %var_2_277 = add i64 %var_2_272, 11
; Matched:\<badref\>:  store i64 %var_2_219, i64* %PC, align 8
; store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_220:  %var_2_220 = inttoptr i64 %var_2_218 to double*
; %var_2_278 = inttoptr i64 %var_2_276 to double*
; Matched:%var_2_221:  %var_2_221 = load double, double* %var_2_220, align 8
; %var_2_279 = load double, double* %var_2_278, align 8
; Matched:%var_2_222:  %var_2_222 = fmul double %var_2_217, %var_2_221
; %var_2_280 = fmul double %var_2_275, %var_2_279
; Matched:\<badref\>:  store double %var_2_222, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_280, double* %var_2_70, align 1
; Matched:%var_2_223:  %var_2_223 = add i64 %var_2_590, -24
; %var_2_281 = add i64 %var_2_235, -24
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_627, 16
; %var_2_282 = add i64 %var_2_272, 16
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_282, i64* %var_2_3, align 8
; Matched:%var_2_225:  %var_2_225 = inttoptr i64 %var_2_223 to double*
; %var_2_283 = inttoptr i64 %var_2_281 to double*
; Matched:\<badref\>:  store double %var_2_222, double* %var_2_225, align 8
; store double %var_2_280, double* %var_2_283, align 8
%var_2_284 = load i64, i64* %RBP.i, align 8
%var_2_285 = add i64 %var_2_284, -24
%var_2_286 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_195:  %var_2_195 = add i64 %var_2_194, 5
; %var_2_287 = add i64 %var_2_286, 5
; Matched:\<badref\>:  store i64 %var_2_195, i64* %PC, align 8
; store i64 %var_2_287, i64* %var_2_3, align 8
%var_2_288 = inttoptr i64 %var_2_285 to i64*
%var_2_289 = load i64, i64* %var_2_288, align 8
; Matched:\<badref\>:  store i64 %var_2_231, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_289, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_396:  %var_2_396 = add i64 %var_2_392, 10
; %var_2_290 = add i64 %var_2_286, 10
; Matched:\<badref\>:  store i64 %var_2_232, i64* %PC, align 8
; store i64 %var_2_290, i64* %var_2_3, align 8
; Matched:%var_2_397:  %var_2_397 = bitcast i64 %var_2_395 to double
; %var_2_291 = bitcast i64 %var_2_289 to double
; Matched:%var_2_398:  %var_2_398 = inttoptr i64 %var_2_391 to double*
; %var_2_292 = inttoptr i64 %var_2_285 to double*
; Matched:%var_2_399:  %var_2_399 = load double, double* %var_2_398, align 8
; %var_2_293 = load double, double* %var_2_292, align 8
; Matched:%var_2_236:  %var_2_236 = fmul double %var_2_233, %var_2_235
; %var_2_294 = fmul double %var_2_291, %var_2_293
; Matched:\<badref\>:  store double %var_2_236, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_294, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_74, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_237:  %var_2_237 = add i64 %var_2_226, -40
; %var_2_295 = add i64 %var_2_284, -40
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_287, 15
; %var_2_296 = add i64 %var_2_286, 15
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_296, i64* %var_2_3, align 8
; Matched:%var_2_403:  %var_2_403 = inttoptr i64 %var_2_401 to double*
; %var_2_297 = inttoptr i64 %var_2_295 to double*
; Matched:\<badref\>:  store double %var_2_400, double* %var_2_403, align 8
; store double %var_2_294, double* %var_2_297, align 8
%var_2_298 = load i64, i64* %RBP.i, align 8
%var_2_299 = add i64 %var_2_298, -40
%var_2_300 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_228, 5
; %var_2_301 = add i64 %var_2_300, 5
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8
; store i64 %var_2_301, i64* %var_2_3, align 8
%var_2_302 = inttoptr i64 %var_2_299 to i64*
; Matched:%var_2_245:  %var_2_245 = load i64, i64* %var_2_244, align 8
; %var_2_303 = load i64, i64* %var_2_302, align 8
; Matched:\<badref\>:  store i64 %var_2_245, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_303, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_287, 10
; %var_2_304 = add i64 %var_2_300, 10
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8
; store i64 %var_2_304, i64* %var_2_3, align 8
; Matched:%var_2_247:  %var_2_247 = load i64, i64* %var_2_244, align 8
; %var_2_305 = load i64, i64* %var_2_302, align 8
; Matched:\<badref\>:  store i64 %var_2_247, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_305, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_228, 15
; %var_2_306 = add i64 %var_2_300, 15
; Matched:\<badref\>:  store i64 %var_2_174, i64* %PC, align 8
; store i64 %var_2_306, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = load i64, i64* %var_2_244, align 8
; %var_2_307 = load i64, i64* %var_2_302, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_307, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_287, 20
; %var_2_308 = add i64 %var_2_300, 20
; Matched:\<badref\>:  store i64 %var_2_250, i64* %PC, align 8
; store i64 %var_2_308, i64* %var_2_3, align 8
; Matched:%var_2_251:  %var_2_251 = load i64, i64* %var_2_244, align 8
; %var_2_309 = load i64, i64* %var_2_302, align 8
; Matched:\<badref\>:  store i64 %var_2_251, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_309, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_242, 25
; %var_2_310 = add i64 %var_2_300, 25
; Matched:\<badref\>:  store i64 %var_2_252, i64* %PC, align 8
; store i64 %var_2_310, i64* %var_2_3, align 8
; Matched:%var_2_452:  %var_2_452 = load i64, i64* %var_2_451, align 8
; %var_2_311 = load i64, i64* %var_2_302, align 8
; Matched:\<badref\>:  store i64 %var_2_452, i64* %var_2_93, align 1, !tbaa !1285
; store i64 %var_2_311, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_312 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
store i64 %var_2_312, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_242, 39
; %var_2_313 = add i64 %var_2_300, 39
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8
; store i64 %var_2_313, i64* %var_2_3, align 8
; Matched:  %.cast8 = bitcast i64 %var_2_254 to double
; %.cast8 = bitcast i64 %var_2_312 to double
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_241 to double*
; %var_2_314 = inttoptr i64 %var_2_299 to double*
; Matched:%var_2_257:  %var_2_257 = load double, double* %var_2_256, align 8
; %var_2_315 = load double, double* %var_2_314, align 8
; Matched:%var_2_258:  %var_2_258 = fmul double %.cast8, %var_2_257
; %var_2_316 = fmul double %.cast8, %var_2_315
; Matched:%var_2_259:  %var_2_259 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
; %var_2_317 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
; Matched:%var_2_260:  %var_2_260 = fadd double %var_2_258, %var_2_259
; %var_2_318 = fadd double %var_2_316, %var_2_317
; Matched:\<badref\>:  store double %var_2_260, double* %var_2_97, align 1, !tbaa !1285
; store double %var_2_318, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_99, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
; Matched:%var_2_261:  %var_2_261 = bitcast i64 %var_2_253 to double
; %var_2_319 = bitcast i64 %var_2_311 to double
; Matched:%var_2_262:  %var_2_262 = fmul double %var_2_260, %var_2_261
; %var_2_320 = fmul double %var_2_318, %var_2_319
; Matched:%var_2_263:  %var_2_263 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
; %var_2_321 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
; Matched:%var_2_264:  %var_2_264 = fadd double %var_2_262, %var_2_263
; %var_2_322 = fadd double %var_2_320, %var_2_321
; Matched:\<badref\>:  store double %var_2_264, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_322, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_265:  %var_2_265 = bitcast i64 %var_2_251 to double
; %var_2_323 = bitcast i64 %var_2_309 to double
; Matched:%var_2_266:  %var_2_266 = fmul double %var_2_264, %var_2_265
; %var_2_324 = fmul double %var_2_322, %var_2_323
; Matched:%var_2_267:  %var_2_267 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
; %var_2_325 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
; Matched:%var_2_268:  %var_2_268 = fadd double %var_2_266, %var_2_267
; %var_2_326 = fadd double %var_2_324, %var_2_325
; Matched:\<badref\>:  store double %var_2_268, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_326, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_269:  %var_2_269 = bitcast i64 %var_2_249 to double
; %var_2_327 = bitcast i64 %var_2_307 to double
; Matched:%var_2_270:  %var_2_270 = fmul double %var_2_268, %var_2_269
; %var_2_328 = fmul double %var_2_326, %var_2_327
; Matched:%var_2_271:  %var_2_271 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
; %var_2_329 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
; Matched:%var_2_272:  %var_2_272 = fadd double %var_2_270, %var_2_271
; %var_2_330 = fadd double %var_2_328, %var_2_329
; Matched:\<badref\>:  store double %var_2_272, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_330, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_273:  %var_2_273 = bitcast i64 %var_2_247 to double
; %var_2_331 = bitcast i64 %var_2_305 to double
; Matched:%var_2_274:  %var_2_274 = fmul double %var_2_272, %var_2_273
; %var_2_332 = fmul double %var_2_330, %var_2_331
; Matched:%var_2_275:  %var_2_275 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
; %var_2_333 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
; Matched:%var_2_276:  %var_2_276 = fadd double %var_2_274, %var_2_275
; %var_2_334 = fadd double %var_2_332, %var_2_333
; Matched:\<badref\>:  store double %var_2_276, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_334, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_277:  %var_2_277 = bitcast i64 %var_2_245 to double
; %var_2_335 = bitcast i64 %var_2_303 to double
; Matched:%var_2_278:  %var_2_278 = fmul double %var_2_276, %var_2_277
; %var_2_336 = fmul double %var_2_334, %var_2_335
; Matched:%var_2_279:  %var_2_279 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_337 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_280:  %var_2_280 = fadd double %var_2_278, %var_2_279
; %var_2_338 = fadd double %var_2_336, %var_2_337
; Matched:\<badref\>:  store double %var_2_280, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_338, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_74, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_281:  %var_2_281 = load i64, i64* %RBP, align 8
; %var_2_339 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_282:  %var_2_282 = add i64 %var_2_281, -32
; %var_2_340 = add i64 %var_2_339, -32
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_242, 118
; %var_2_341 = add i64 %var_2_300, 118
; Matched:\<badref\>:  store i64 %var_2_283, i64* %PC, align 8
; store i64 %var_2_341, i64* %var_2_3, align 8
; Matched:%var_2_284:  %var_2_284 = inttoptr i64 %var_2_282 to double*
; %var_2_342 = inttoptr i64 %var_2_340 to double*
; Matched:\<badref\>:  store double %var_2_280, double* %var_2_284, align 8
; store double %var_2_338, double* %var_2_342, align 8
; Matched:%var_2_285:  %var_2_285 = load i64, i64* %RBP, align 8
; %var_2_343 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_285, -16
; %var_2_344 = add i64 %var_2_343, -16
%var_2_345 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_553:  %var_2_553 = add i64 %var_2_549, 5
; %var_2_346 = add i64 %var_2_345, 5
; Matched:\<badref\>:  store i64 %var_2_553, i64* %PC, align 8
; store i64 %var_2_346, i64* %var_2_3, align 8
; Matched:%var_2_289:  %var_2_289 = inttoptr i64 %var_2_286 to i64*
; %var_2_347 = inttoptr i64 %var_2_344 to i64*
; Matched:%var_2_290:  %var_2_290 = load i64, i64* %var_2_289, align 8
; %var_2_348 = load i64, i64* %var_2_347, align 8
; Matched:\<badref\>:  store i64 %var_2_290, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_348, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_75, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_285, -32
; %var_2_349 = add i64 %var_2_343, -32
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_228, 10
; %var_2_350 = add i64 %var_2_345, 10
; Matched:\<badref\>:  store i64 %var_2_581, i64* %PC, align 8
; store i64 %var_2_350, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_291 to i64*
; %var_2_351 = inttoptr i64 %var_2_349 to i64*
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %var_2_293, align 8
; %var_2_352 = load i64, i64* %var_2_351, align 8
; Matched:\<badref\>:  store i64 %var_2_294, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_352, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_248:  %var_2_248 = add i64 %var_2_242, 15
; %var_2_353 = add i64 %var_2_345, 15
; Matched:\<badref\>:  store i64 %var_2_295, i64* %PC, align 8
; store i64 %var_2_353, i64* %var_2_3, align 8
; Matched:%var_2_296:  %var_2_296 = bitcast i64 %var_2_294 to double
; %var_2_354 = bitcast i64 %var_2_352 to double
; Matched:%var_2_297:  %var_2_297 = inttoptr i64 %var_2_291 to double*
; %var_2_355 = inttoptr i64 %var_2_349 to double*
; Matched:%var_2_298:  %var_2_298 = load double, double* %var_2_297, align 8
; %var_2_356 = load double, double* %var_2_355, align 8
; Matched:%var_2_299:  %var_2_299 = fmul double %var_2_296, %var_2_298
; %var_2_357 = fmul double %var_2_354, %var_2_356
; Matched:\<badref\>:  store double %var_2_299, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_357, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_285, -24
; %var_2_358 = add i64 %var_2_343, -24
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_242, 20
; %var_2_359 = add i64 %var_2_345, 20
; Matched:\<badref\>:  store i64 %var_2_301, i64* %PC, align 8
; store i64 %var_2_359, i64* %var_2_3, align 8
; Matched:%var_2_302:  %var_2_302 = inttoptr i64 %var_2_300 to double*
; %var_2_360 = inttoptr i64 %var_2_358 to double*
; Matched:%var_2_303:  %var_2_303 = load double, double* %var_2_302, align 8
; %var_2_361 = load double, double* %var_2_360, align 8
; Matched:%var_2_304:  %var_2_304 = fmul double %var_2_299, %var_2_303
; %var_2_362 = fmul double %var_2_357, %var_2_361
; Matched:\<badref\>:  store double %var_2_304, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_362, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
%var_2_363 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_363, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_306:  %var_2_306 = add i64 %var_2_285, -40
; %var_2_364 = add i64 %var_2_343, -40
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_287, 34
; %var_2_365 = add i64 %var_2_345, 34
; Matched:\<badref\>:  store i64 %var_2_307, i64* %PC, align 8
; store i64 %var_2_365, i64* %var_2_3, align 8
; Matched:  %.cast9 = bitcast i64 %var_2_305 to double
; %.cast9 = bitcast i64 %var_2_363 to double
; Matched:%var_2_308:  %var_2_308 = inttoptr i64 %var_2_306 to double*
; %var_2_366 = inttoptr i64 %var_2_364 to double*
; Matched:%var_2_309:  %var_2_309 = load double, double* %var_2_308, align 8
; %var_2_367 = load double, double* %var_2_366, align 8
; Matched:%var_2_310:  %var_2_310 = fmul double %.cast9, %var_2_309
; %var_2_368 = fmul double %.cast9, %var_2_367
; Matched:%var_2_311:  %var_2_311 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
; %var_2_369 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
; Matched:%var_2_312:  %var_2_312 = fadd double %var_2_310, %var_2_311
; %var_2_370 = fadd double %var_2_368, %var_2_369
; Matched:\<badref\>:  store double %var_2_312, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_370, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_287, 48
; %var_2_371 = add i64 %var_2_345, 48
; Matched:\<badref\>:  store i64 %var_2_313, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
; Matched:%var_2_314:  %var_2_314 = load double, double* %var_2_308, align 8
; %var_2_372 = load double, double* %var_2_366, align 8
; Matched:%var_2_315:  %var_2_315 = fmul double %var_2_312, %var_2_314
; %var_2_373 = fmul double %var_2_370, %var_2_372
; Matched:%var_2_316:  %var_2_316 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
; %var_2_374 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
; Matched:%var_2_317:  %var_2_317 = fadd double %var_2_315, %var_2_316
; %var_2_375 = fadd double %var_2_373, %var_2_374
; Matched:\<badref\>:  store double %var_2_317, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_375, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_318:  %var_2_318 = add i64 %var_2_287, 62
; %var_2_376 = add i64 %var_2_345, 62
; Matched:\<badref\>:  store i64 %var_2_318, i64* %PC, align 8
; store i64 %var_2_376, i64* %var_2_3, align 8
; Matched:%var_2_319:  %var_2_319 = load double, double* %var_2_308, align 8
; %var_2_377 = load double, double* %var_2_366, align 8
; Matched:%var_2_320:  %var_2_320 = fmul double %var_2_317, %var_2_319
; %var_2_378 = fmul double %var_2_375, %var_2_377
; Matched:%var_2_321:  %var_2_321 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
; %var_2_379 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
; Matched:%var_2_322:  %var_2_322 = fadd double %var_2_320, %var_2_321
; %var_2_380 = fadd double %var_2_378, %var_2_379
; Matched:\<badref\>:  store double %var_2_322, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_380, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_287, 76
; %var_2_381 = add i64 %var_2_345, 76
; Matched:\<badref\>:  store i64 %var_2_323, i64* %PC, align 8
; store i64 %var_2_381, i64* %var_2_3, align 8
; Matched:%var_2_324:  %var_2_324 = load double, double* %var_2_308, align 8
; %var_2_382 = load double, double* %var_2_366, align 8
; Matched:%var_2_325:  %var_2_325 = fmul double %var_2_322, %var_2_324
; %var_2_383 = fmul double %var_2_380, %var_2_382
; Matched:%var_2_326:  %var_2_326 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
; %var_2_384 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
; Matched:%var_2_327:  %var_2_327 = fadd double %var_2_325, %var_2_326
; %var_2_385 = fadd double %var_2_383, %var_2_384
; Matched:\<badref\>:  store double %var_2_327, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_385, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_287, 90
; %var_2_386 = add i64 %var_2_345, 90
; Matched:\<badref\>:  store i64 %var_2_328, i64* %PC, align 8
; store i64 %var_2_386, i64* %var_2_3, align 8
; Matched:%var_2_329:  %var_2_329 = load double, double* %var_2_308, align 8
; %var_2_387 = load double, double* %var_2_366, align 8
; Matched:%var_2_330:  %var_2_330 = fmul double %var_2_327, %var_2_329
; %var_2_388 = fmul double %var_2_385, %var_2_387
; Matched:%var_2_331:  %var_2_331 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
; %var_2_389 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
; Matched:%var_2_332:  %var_2_332 = fadd double %var_2_330, %var_2_331
; %var_2_390 = fadd double %var_2_388, %var_2_389
; Matched:\<badref\>:  store double %var_2_332, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_390, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_333:  %var_2_333 = load i64, i64* %RBP, align 8
; %var_2_391 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_334:  %var_2_334 = add i64 %var_2_333, -40
; %var_2_392 = add i64 %var_2_391, -40
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_287, 104
; %var_2_393 = add i64 %var_2_345, 104
; Matched:\<badref\>:  store i64 %var_2_335, i64* %PC, align 8
; store i64 %var_2_393, i64* %var_2_3, align 8
; Matched:%var_2_336:  %var_2_336 = inttoptr i64 %var_2_334 to double*
; %var_2_394 = inttoptr i64 %var_2_392 to double*
; Matched:%var_2_337:  %var_2_337 = load double, double* %var_2_336, align 8
; %var_2_395 = load double, double* %var_2_394, align 8
; Matched:%var_2_338:  %var_2_338 = fmul double %var_2_332, %var_2_337
; %var_2_396 = fmul double %var_2_390, %var_2_395
; Matched:%var_2_339:  %var_2_339 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_397 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_340:  %var_2_340 = fadd double %var_2_338, %var_2_339
; %var_2_398 = fadd double %var_2_396, %var_2_397
; Matched:\<badref\>:  store double %var_2_340, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_398, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_341:  %var_2_341 = fmul double %var_2_340, %var_2_304
; %var_2_399 = fmul double %var_2_398, %var_2_362
; Matched:\<badref\>:  store double %var_2_341, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_399, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_342:  %var_2_342 = load double, double* %var_2_72, align 1
; %var_2_400 = load double, double* %var_2_70, align 1
; Matched:%var_2_343:  %var_2_343 = fadd double %var_2_341, %var_2_342
; %var_2_401 = fadd double %var_2_399, %var_2_400
; Matched:\<badref\>:  store double %var_2_343, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_401, double* %var_2_70, align 1
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_333, -16
; %var_2_402 = add i64 %var_2_391, -16
; Matched:%var_2_453:  %var_2_453 = add i64 %var_2_406, 126
; %var_2_403 = add i64 %var_2_345, 126
; Matched:\<badref\>:  store i64 %var_2_345, i64* %PC, align 8
; store i64 %var_2_403, i64* %var_2_3, align 8
; Matched:%var_2_346:  %var_2_346 = inttoptr i64 %var_2_344 to double*
; %var_2_404 = inttoptr i64 %var_2_402 to double*
; Matched:\<badref\>:  store double %var_2_343, double* %var_2_346, align 8
; store double %var_2_401, double* %var_2_404, align 8
; Matched:%var_2_347:  %var_2_347 = load i64, i64* %RBP, align 8
; %var_2_405 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_347, -72
; %var_2_406 = add i64 %var_2_405, -72
; Matched:%var_2_349:  %var_2_349 = load i64, i64* %PC, align 8
; %var_2_407 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_350:  %var_2_350 = add i64 %var_2_349, 4
; %var_2_408 = add i64 %var_2_407, 4
; Matched:\<badref\>:  store i64 %var_2_350, i64* %PC, align 8
; store i64 %var_2_408, i64* %var_2_3, align 8
; Matched:%var_2_351:  %var_2_351 = inttoptr i64 %var_2_348 to i64*
; %var_2_409 = inttoptr i64 %var_2_406 to i64*
; Matched:%var_2_352:  %var_2_352 = load i64, i64* %var_2_351, align 8
; %var_2_410 = load i64, i64* %var_2_409, align 8
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_352, 1
; %var_2_411 = add i64 %var_2_410, 1
; Matched:\<badref\>:  store i64 %var_2_353, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_411, i64* %RAX.i300, align 8
; Matched:%var_2_354:  %var_2_354 = icmp eq i64 %var_2_352, -1
; %var_2_412 = icmp eq i64 %var_2_410, -1
; Matched:%var_2_355:  %var_2_355 = icmp eq i64 %var_2_353, 0
; %var_2_413 = icmp eq i64 %var_2_411, 0
; Matched:%var_2_356:  %var_2_356 = or i1 %var_2_354, %var_2_355
; %var_2_414 = or i1 %var_2_412, %var_2_413
; Matched:%var_2_357:  %var_2_357 = zext i1 %var_2_356 to i8
; %var_2_415 = zext i1 %var_2_414 to i8
; Matched:\<badref\>:  store i8 %var_2_357, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_415, i8* %var_2_14, align 1
; Matched:%var_2_358:  %var_2_358 = trunc i64 %var_2_353 to i32
; %var_2_416 = trunc i64 %var_2_411 to i32
; Matched:%var_2_359:  %var_2_359 = and i32 %var_2_358, 255
; %var_2_417 = and i32 %var_2_416, 255
; Matched:%var_2_360:  %var_2_360 = tail call i32 @llvm.ctpop.i32(i32 %var_2_359) #11
; %var_2_418 = tail call i32 @llvm.ctpop.i32(i32 %var_2_417)
; Matched:%var_2_361:  %var_2_361 = trunc i32 %var_2_360 to i8
; %var_2_419 = trunc i32 %var_2_418 to i8
; Matched:%var_2_362:  %var_2_362 = and i8 %var_2_361, 1
; %var_2_420 = and i8 %var_2_419, 1
; Matched:%var_2_363:  %var_2_363 = xor i8 %var_2_362, 1
; %var_2_421 = xor i8 %var_2_420, 1
; Matched:\<badref\>:  store i8 %var_2_363, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_421, i8* %var_2_21, align 1
; Matched:%var_2_364:  %var_2_364 = xor i64 %var_2_353, %var_2_352
; %var_2_422 = xor i64 %var_2_411, %var_2_410
; Matched:%var_2_365:  %var_2_365 = lshr i64 %var_2_364, 4
; %var_2_423 = lshr i64 %var_2_422, 4
; Matched:%var_2_366:  %var_2_366 = trunc i64 %var_2_365 to i8
; %var_2_424 = trunc i64 %var_2_423 to i8
; Matched:%var_2_367:  %var_2_367 = and i8 %var_2_366, 1
; %var_2_425 = and i8 %var_2_424, 1
; Matched:\<badref\>:  store i8 %var_2_367, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_425, i8* %var_2_26, align 1
; Matched:%var_2_368:  %var_2_368 = zext i1 %var_2_355 to i8
; %var_2_426 = zext i1 %var_2_413 to i8
; Matched:\<badref\>:  store i8 %var_2_368, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_426, i8* %var_2_29, align 1
; Matched:%var_2_369:  %var_2_369 = lshr i64 %var_2_353, 63
; %var_2_427 = lshr i64 %var_2_411, 63
; Matched:%var_2_370:  %var_2_370 = trunc i64 %var_2_369 to i8
; %var_2_428 = trunc i64 %var_2_427 to i8
; Matched:\<badref\>:  store i8 %var_2_370, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_428, i8* %var_2_32, align 1
; Matched:%var_2_371:  %var_2_371 = lshr i64 %var_2_352, 63
; %var_2_429 = lshr i64 %var_2_410, 63
; Matched:%var_2_372:  %var_2_372 = xor i64 %var_2_369, %var_2_371
; %var_2_430 = xor i64 %var_2_427, %var_2_429
; Matched:%var_2_373:  %var_2_373 = add nuw nsw i64 %var_2_372, %var_2_369
; %var_2_431 = add nuw nsw i64 %var_2_430, %var_2_427
; Matched:%var_2_374:  %var_2_374 = icmp eq i64 %var_2_373, 2
; %var_2_432 = icmp eq i64 %var_2_431, 2
; Matched:%var_2_375:  %var_2_375 = zext i1 %var_2_374 to i8
; %var_2_433 = zext i1 %var_2_432 to i8
; Matched:\<badref\>:  store i8 %var_2_375, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_433, i8* %var_2_38, align 1
; Matched:%var_2_376:  %var_2_376 = add i64 %var_2_349, 12
; %var_2_434 = add i64 %var_2_407, 12
; Matched:\<badref\>:  store i64 %var_2_376, i64* %PC, align 8
; store i64 %var_2_434, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_353, i64* %var_2_351, align 8
; store i64 %var_2_411, i64* %var_2_409, align 8
%var_2_435 = load i64, i64* %var_2_3, align 8
%var_2_436 = add i64 %var_2_435, -308
; Matched:\<badref\>:  store i64 %var_2_378, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_436, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400792:                                  ; preds = %block_.L_400659
  store i64 ptrtoint (%G__0x400ad6_type* @G__0x400ad6 to i64), i64* %RDI.i349, align 8
%var_2_437 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_437, align 1
%var_2_438 = add i64 %var_2_272, add (i64 ptrtoint (%G_0x291__rip__type* @G_0x291__rip_ to i64), i64 13)
%var_2_439 = add i64 %var_2_272, 21
store i64 %var_2_439, i64* %var_2_3, align 8
%var_2_440 = inttoptr i64 %var_2_438 to i64*
%var_2_441 = load i64, i64* %var_2_440, align 8
store i64 %var_2_441, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_442 = add i64 %var_2_272, add (i64 ptrtoint (%G_0x291__rip__type* @G_0x291__rip_ to i64), i64 21)
%var_2_443 = add i64 %var_2_272, 29
store i64 %var_2_443, i64* %var_2_3, align 8
%var_2_444 = inttoptr i64 %var_2_442 to i64*
%var_2_445 = load i64, i64* %var_2_444, align 8
store i64 %var_2_445, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_385:  %var_2_385 = load double, double* bitcast (%three_type* @three to double*), align 8
; %var_2_446 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
; Matched:%var_2_384:  %var_2_384 = load double, double* bitcast (%piref_type* @piref to double*), align 8
; %var_2_447 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*), align 8
; Matched:%var_2_386:  %var_2_386 = fdiv double %var_2_384, %var_2_385
; %var_2_448 = fdiv double %var_2_446, %var_2_447
; Matched:\<badref\>:  store double %var_2_386, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_448, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_387:  %var_2_387 = add i64 %var_2_590, -24
; %var_2_449 = add i64 %var_2_235, -24
; Matched:%var_2_388:  %var_2_388 = add i64 %var_2_627, 52
; %var_2_450 = add i64 %var_2_272, 52
; Matched:\<badref\>:  store i64 %var_2_388, i64* %PC, align 8
; store i64 %var_2_450, i64* %var_2_3, align 8
; Matched:%var_2_389:  %var_2_389 = inttoptr i64 %var_2_387 to double*
; %var_2_451 = inttoptr i64 %var_2_449 to double*
; Matched:\<badref\>:  store double %var_2_386, double* %var_2_389, align 8
; store double %var_2_448, double* %var_2_451, align 8
%var_2_452 = load i64, i64* %RBP.i, align 8
%var_2_453 = add i64 %var_2_452, -24
%var_2_454 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_242, 5
; %var_2_455 = add i64 %var_2_454, 5
; Matched:\<badref\>:  store i64 %var_2_201, i64* %PC, align 8
; store i64 %var_2_455, i64* %var_2_3, align 8
%var_2_456 = inttoptr i64 %var_2_453 to i64*
%var_2_457 = load i64, i64* %var_2_456, align 8
; Matched:\<badref\>:  store i64 %var_2_409, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_457, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_581:  %var_2_581 = add i64 %var_2_557, 10
; %var_2_458 = add i64 %var_2_454, 10
; Matched:\<badref\>:  store i64 %var_2_292, i64* %PC, align 8
; store i64 %var_2_458, i64* %var_2_3, align 8
; Matched:%var_2_233:  %var_2_233 = bitcast i64 %var_2_231 to double
; %var_2_459 = bitcast i64 %var_2_457 to double
; Matched:%var_2_234:  %var_2_234 = inttoptr i64 %var_2_227 to double*
; %var_2_460 = inttoptr i64 %var_2_453 to double*
; Matched:%var_2_235:  %var_2_235 = load double, double* %var_2_234, align 8
; %var_2_461 = load double, double* %var_2_460, align 8
; Matched:%var_2_400:  %var_2_400 = fmul double %var_2_397, %var_2_399
; %var_2_462 = fmul double %var_2_459, %var_2_461
; Matched:\<badref\>:  store double %var_2_400, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_462, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_390, -40
; %var_2_463 = add i64 %var_2_452, -40
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_143, 15
; %var_2_464 = add i64 %var_2_454, 15
; Matched:\<badref\>:  store i64 %var_2_402, i64* %PC, align 8
; store i64 %var_2_464, i64* %var_2_3, align 8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_237 to double*
; %var_2_465 = inttoptr i64 %var_2_463 to double*
; Matched:\<badref\>:  store double %var_2_236, double* %var_2_239, align 8
; store double %var_2_462, double* %var_2_465, align 8
%var_2_466 = load i64, i64* %RBP.i, align 8
%var_2_467 = add i64 %var_2_466, -24
%var_2_468 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_201:  %var_2_201 = add i64 %var_2_200, 5
; %var_2_469 = add i64 %var_2_468, 5
; Matched:\<badref\>:  store i64 %var_2_243, i64* %PC, align 8
; store i64 %var_2_469, i64* %var_2_3, align 8
%var_2_470 = inttoptr i64 %var_2_467 to i64*
%var_2_471 = load i64, i64* %var_2_470, align 8
; Matched:\<badref\>:  store i64 %var_2_395, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_471, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_472 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_472, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_473 = add i64 %var_2_466, -40
; Matched:%var_2_412:  %var_2_412 = add i64 %var_2_406, 19
; %var_2_474 = add i64 %var_2_468, 19
; Matched:\<badref\>:  store i64 %var_2_412, i64* %PC, align 8
; store i64 %var_2_474, i64* %var_2_3, align 8
%.cast10 = bitcast i64 %var_2_472 to double
%var_2_475 = inttoptr i64 %var_2_473 to double*
%var_2_476 = load double, double* %var_2_475, align 8
%var_2_477 = fmul double %.cast10, %var_2_476
%var_2_478 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
%var_2_479 = fadd double %var_2_477, %var_2_478
; Matched:\<badref\>:  store double %var_2_417, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_479, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_418:  %var_2_418 = add i64 %var_2_406, 33
; %var_2_480 = add i64 %var_2_468, 33
; Matched:\<badref\>:  store i64 %var_2_418, i64* %PC, align 8
; store i64 %var_2_480, i64* %var_2_3, align 8
%var_2_481 = load double, double* %var_2_475, align 8
%var_2_482 = fmul double %var_2_479, %var_2_481
%var_2_483 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
%var_2_484 = fadd double %var_2_482, %var_2_483
; Matched:\<badref\>:  store double %var_2_422, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_484, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_406, 47
; %var_2_485 = add i64 %var_2_468, 47
; Matched:\<badref\>:  store i64 %var_2_423, i64* %PC, align 8
; store i64 %var_2_485, i64* %var_2_3, align 8
%var_2_486 = load double, double* %var_2_475, align 8
%var_2_487 = fmul double %var_2_484, %var_2_486
%var_2_488 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
%var_2_489 = fadd double %var_2_487, %var_2_488
; Matched:\<badref\>:  store double %var_2_427, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_489, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_406, 61
; %var_2_490 = add i64 %var_2_468, 61
; Matched:\<badref\>:  store i64 %var_2_428, i64* %PC, align 8
; store i64 %var_2_490, i64* %var_2_3, align 8
%var_2_491 = load double, double* %var_2_475, align 8
%var_2_492 = fmul double %var_2_489, %var_2_491
%var_2_493 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
%var_2_494 = fadd double %var_2_492, %var_2_493
; Matched:\<badref\>:  store double %var_2_432, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_494, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_433:  %var_2_433 = add i64 %var_2_406, 75
; %var_2_495 = add i64 %var_2_468, 75
; Matched:\<badref\>:  store i64 %var_2_433, i64* %PC, align 8
; store i64 %var_2_495, i64* %var_2_3, align 8
%var_2_496 = load double, double* %var_2_475, align 8
%var_2_497 = fmul double %var_2_494, %var_2_496
%var_2_498 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
%var_2_499 = fadd double %var_2_497, %var_2_498
; Matched:\<badref\>:  store double %var_2_437, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_499, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_438:  %var_2_438 = add i64 %var_2_406, 89
; %var_2_500 = add i64 %var_2_468, 89
; Matched:\<badref\>:  store i64 %var_2_438, i64* %PC, align 8
; store i64 %var_2_500, i64* %var_2_3, align 8
%var_2_501 = load double, double* %var_2_475, align 8
%var_2_502 = fmul double %var_2_499, %var_2_501
%var_2_503 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_504 = fadd double %var_2_502, %var_2_503
; Matched:\<badref\>:  store double %var_2_442, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_504, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_505 = bitcast i64 %var_2_471 to double
%var_2_506 = fmul double %var_2_504, %var_2_505
; Matched:\<badref\>:  store double %var_2_444, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_506, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_506, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_445:  %var_2_445 = add i64 %var_2_406, 116
; %var_2_507 = add i64 %var_2_468, 116
; Matched:\<badref\>:  store i64 %var_2_445, i64* %PC, align 8
; store i64 %var_2_507, i64* %var_2_3, align 8
%var_2_508 = inttoptr i64 %var_2_473 to i64*
; Matched:%var_2_447:  %var_2_447 = load i64, i64* %var_2_446, align 8
; %var_2_509 = load i64, i64* %var_2_508, align 8
; Matched:\<badref\>:  store i64 %var_2_447, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_509, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_510 = load i64, i64* %RBP.i, align 8
%var_2_511 = add i64 %var_2_510, -40
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_406, 121
; %var_2_512 = add i64 %var_2_468, 121
; Matched:\<badref\>:  store i64 %var_2_450, i64* %PC, align 8
; store i64 %var_2_512, i64* %var_2_3, align 8
%var_2_513 = inttoptr i64 %var_2_511 to i64*
%var_2_514 = load i64, i64* %var_2_513, align 8
; Matched:\<badref\>:  store i64 %var_2_253, i64* %var_2_93, align 1, !tbaa !1285
; store i64 %var_2_514, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_287, 126
; %var_2_515 = add i64 %var_2_468, 126
; Matched:\<badref\>:  store i64 %var_2_453, i64* %PC, align 8
; store i64 %var_2_515, i64* %var_2_3, align 8
%var_2_516 = load i64, i64* %var_2_513, align 8
; Matched:\<badref\>:  store i64 %var_2_454, i64* %var_2_98, align 1, !tbaa !1285
; store i64 %var_2_516, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_379:  %var_2_379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; %var_2_517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; Matched:%var_2_455:  %var_2_455 = add i64 %var_2_406, 131
; %var_2_518 = add i64 %var_2_468, 131
; Matched:\<badref\>:  store i64 %var_2_455, i64* %PC, align 8
; store i64 %var_2_518, i64* %var_2_3, align 8
%var_2_519 = load i64, i64* %var_2_513, align 8
; Matched:%var_2_457:  %var_2_457 = bitcast %union.VectorReg* %var_2_379 to double*
; %var_2_520 = bitcast %union.VectorReg* %var_2_517 to double*
; Matched:%var_2_458:  %var_2_458 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_379, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_521 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_517, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_456, i64* %var_2_458, align 1, !tbaa !1285
; store i64 %var_2_519, i64* %var_2_521, align 1
; Matched:%var_2_459:  %var_2_459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_460:  %var_2_460 = bitcast i64* %var_2_459 to double*
; %var_2_523 = bitcast i64* %var_2_522 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_460, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_523, align 1
; Matched:%var_2_11:  %var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
; %var_2_524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
; Matched:%var_2_461:  %var_2_461 = add i64 %var_2_406, 136
; %var_2_525 = add i64 %var_2_468, 136
; Matched:\<badref\>:  store i64 %var_2_461, i64* %PC, align 8
; store i64 %var_2_525, i64* %var_2_3, align 8
%var_2_526 = load i64, i64* %var_2_513, align 8
; Matched:%var_2_463:  %var_2_463 = bitcast %union.VectorReg* %var_2_11 to double*
; %var_2_527 = bitcast %union.VectorReg* %var_2_524 to double*
; Matched:%var_2_464:  %var_2_464 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_11, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_528 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_524, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_462, i64* %var_2_464, align 1, !tbaa !1285
; store i64 %var_2_526, i64* %var_2_528, align 1
; Matched:%var_2_465:  %var_2_465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; %var_2_529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_466:  %var_2_466 = bitcast i64* %var_2_465 to double*
; %var_2_530 = bitcast i64* %var_2_529 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_466, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_530, align 1
; Matched:%var_2_380:  %var_2_380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
; %var_2_531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
%var_2_532 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
; Matched:%var_2_468:  %var_2_468 = bitcast %union.VectorReg* %var_2_380 to double*
; %var_2_533 = bitcast %union.VectorReg* %var_2_531 to double*
; Matched:%var_2_469:  %var_2_469 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_380, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_534 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_531, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_467, i64* %var_2_469, align 1, !tbaa !1285
; store i64 %var_2_532, i64* %var_2_534, align 1
; Matched:%var_2_470:  %var_2_470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; %var_2_535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_471:  %var_2_471 = bitcast i64* %var_2_470 to double*
; %var_2_536 = bitcast i64* %var_2_535 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_471, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_536, align 1
; Matched:%var_2_472:  %var_2_472 = add i64 %var_2_406, 152
; %var_2_537 = add i64 %var_2_468, 152
; Matched:\<badref\>:  store i64 %var_2_472, i64* %PC, align 8
; store i64 %var_2_537, i64* %var_2_3, align 8
%var_2_538 = bitcast i64 %var_2_532 to double
%var_2_539 = inttoptr i64 %var_2_511 to double*
%var_2_540 = load double, double* %var_2_539, align 8
%var_2_541 = fmul double %var_2_538, %var_2_540
%var_2_542 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
%var_2_543 = fadd double %var_2_541, %var_2_542
; Matched:\<badref\>:  store double %var_2_478, double* %var_2_468, align 1, !tbaa !1285
; store double %var_2_543, double* %var_2_533, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_470, align 1, !tbaa !1285
; store i64 0, i64* %var_2_535, align 1
%var_2_544 = bitcast i64 %var_2_526 to double
%var_2_545 = fmul double %var_2_543, %var_2_544
%var_2_546 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
%var_2_547 = fadd double %var_2_545, %var_2_546
; Matched:\<badref\>:  store double %var_2_482, double* %var_2_463, align 1, !tbaa !1285
; store double %var_2_547, double* %var_2_527, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_465, align 1, !tbaa !1285
; store i64 0, i64* %var_2_529, align 1
%var_2_548 = bitcast i64 %var_2_519 to double
%var_2_549 = fmul double %var_2_547, %var_2_548
%var_2_550 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
%var_2_551 = fadd double %var_2_549, %var_2_550
; Matched:\<badref\>:  store double %var_2_486, double* %var_2_457, align 1, !tbaa !1285
; store double %var_2_551, double* %var_2_520, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_459, align 1, !tbaa !1285
; store i64 0, i64* %var_2_522, align 1
%var_2_552 = bitcast i64 %var_2_516 to double
%var_2_553 = fmul double %var_2_551, %var_2_552
%var_2_554 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
%var_2_555 = fadd double %var_2_553, %var_2_554
; Matched:\<badref\>:  store double %var_2_490, double* %var_2_97, align 1, !tbaa !1285
; store double %var_2_555, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_99, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
%var_2_556 = bitcast i64 %var_2_514 to double
%var_2_557 = fmul double %var_2_555, %var_2_556
%var_2_558 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
%var_2_559 = fadd double %var_2_557, %var_2_558
; Matched:\<badref\>:  store double %var_2_494, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_559, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_560 = load double, double* %var_2_97, align 1
%var_2_561 = fmul double %var_2_559, %var_2_560
%var_2_562 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_563 = fadd double %var_2_561, %var_2_562
; Matched:\<badref\>:  store double %var_2_498, double* bitcast (%sb_type* @sb to double*), align 8
; store double %var_2_563, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
%var_2_564 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_565 = fmul double %var_2_564, %var_2_563
%var_2_566 = fmul double %var_2_563, %var_2_565
; Matched:\<badref\>:  store double %var_2_501, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_566, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_566, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_567 = load i64, i64* %RBP.i, align 8
%var_2_568 = add i64 %var_2_567, -48
; Matched:%var_2_504:  %var_2_504 = add i64 %var_2_406, 278
; %var_2_569 = add i64 %var_2_468, 278
; Matched:\<badref\>:  store i64 %var_2_504, i64* %PC, align 8
; store i64 %var_2_569, i64* %var_2_3, align 8
%var_2_570 = inttoptr i64 %var_2_568 to i64*
%var_2_571 = load i64, i64* %var_2_570, align 8
; Matched:\<badref\>:  store i64 %var_2_506, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_571, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_507:  %var_2_507 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_572 = bitcast %union.VectorReg* %var_2_101 to double*
; Matched:\<badref\>:  store double %var_2_501, double* %var_2_507, align 1, !tbaa !1285
; store double %var_2_566, double* %var_2_572, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_573 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
store i64 %var_2_573, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
%var_2_574 = add i64 %var_2_567, -16
; Matched:%var_2_510:  %var_2_510 = add i64 %var_2_406, 301
; %var_2_575 = add i64 %var_2_468, 301
; Matched:\<badref\>:  store i64 %var_2_510, i64* %PC, align 8
; store i64 %var_2_575, i64* %var_2_3, align 8
%.cast11 = bitcast i64 %var_2_573 to double
%var_2_576 = inttoptr i64 %var_2_574 to double*
%var_2_577 = load double, double* %var_2_576, align 8
%var_2_578 = fmul double %.cast11, %var_2_577
; Matched:\<badref\>:  store double %var_2_513, double* %var_2_97, align 1, !tbaa !1285
; store double %var_2_578, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_99, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
%var_2_579 = fadd double %var_2_566, %var_2_578
; Matched:\<badref\>:  store double %var_2_514, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_579, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_580 = bitcast i64 %var_2_571 to double
%var_2_581 = fmul double %var_2_580, %var_2_579
%var_2_582 = fdiv double %var_2_581, %.cast11
; Matched:\<badref\>:  store double %var_2_517, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_582, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_582, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_583 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_518, i64* bitcast (%sb_type* @sb to i64*), align 8
; store i64 %var_2_583, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
%var_2_584 = bitcast i64 %var_2_583 to double
%var_2_585 = fsub double %var_2_582, %var_2_584
; Matched:\<badref\>:  store double %var_2_520, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_585, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
store double %var_2_585, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_521:  %var_2_521 = load double, double* %var_2_77, align 1
; %var_2_586 = load double, double* %var_2_79, align 1
; Matched:%var_2_522:  %var_2_522 = fmul double %var_2_520, %var_2_521
; %var_2_587 = fmul double %var_2_585, %var_2_586
; Matched:\<badref\>:  store double %var_2_522, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_587, double* %var_2_79, align 1
; Matched:%var_2_523:  %var_2_523 = add i64 %var_2_502, -112
; %var_2_588 = add i64 %var_2_567, -112
; Matched:%var_2_524:  %var_2_524 = add i64 %var_2_406, 377
; %var_2_589 = add i64 %var_2_468, 377
; Matched:\<badref\>:  store i64 %var_2_524, i64* %PC, align 8
; store i64 %var_2_589, i64* %var_2_3, align 8
; Matched:%var_2_525:  %var_2_525 = load i64, i64* %var_2_73, align 1
; %var_2_590 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_526:  %var_2_526 = inttoptr i64 %var_2_523 to i64*
; %var_2_591 = inttoptr i64 %var_2_588 to i64*
; Matched:\<badref\>:  store i64 %var_2_525, i64* %var_2_526, align 8
; store i64 %var_2_590, i64* %var_2_591, align 8
%var_2_592 = load i64, i64* %var_2_3, align 8
%var_2_593 = bitcast %union.VectorReg* %var_2_74 to <2 x i32>*
%var_2_594 = load <2 x i32>, <2 x i32>* %var_2_593, align 1
%var_2_595 = bitcast i64* %var_2_81 to <2 x i32>*
%var_2_596 = load <2 x i32>, <2 x i32>* %var_2_595, align 1
%var_2_597 = extractelement <2 x i32> %var_2_594, i32 0
; Matched:\<badref\>:  store i32 %var_2_532, i32* %var_2_144, align 1, !tbaa !1288
; store i32 %var_2_597, i32* %var_2_162, align 1
%var_2_598 = extractelement <2 x i32> %var_2_594, i32 1
; Matched:\<badref\>:  store i32 %var_2_533, i32* %var_2_146, align 1, !tbaa !1288
; store i32 %var_2_598, i32* %var_2_164, align 1
%var_2_599 = extractelement <2 x i32> %var_2_596, i32 0
; Matched:\<badref\>:  store i32 %var_2_534, i32* %var_2_147, align 1, !tbaa !1288
; store i32 %var_2_599, i32* %var_2_165, align 1
%var_2_600 = extractelement <2 x i32> %var_2_596, i32 1
; Matched:\<badref\>:  store i32 %var_2_535, i32* %var_2_149, align 1, !tbaa !1288
; store i32 %var_2_600, i32* %var_2_167, align 1
; Matched:%var_2_536:  %var_2_536 = load i64, i64* %RBP, align 8
; %var_2_601 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_537:  %var_2_537 = add i64 %var_2_536, -112
; %var_2_602 = add i64 %var_2_601, -112
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_206, 8
; %var_2_603 = add i64 %var_2_592, 8
; Matched:\<badref\>:  store i64 %var_2_207, i64* %PC, align 8
; store i64 %var_2_603, i64* %var_2_3, align 8
; Matched:%var_2_539:  %var_2_539 = inttoptr i64 %var_2_537 to i64*
; %var_2_604 = inttoptr i64 %var_2_602 to i64*
; Matched:%var_2_540:  %var_2_540 = load i64, i64* %var_2_539, align 8
; %var_2_605 = load i64, i64* %var_2_604, align 8
; Matched:\<badref\>:  store i64 %var_2_540, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_605, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_130, 13
; %var_2_606 = add i64 %var_2_592, 13
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_606, i64* %var_2_3, align 8
; Matched:%var_2_542:  %var_2_542 = load i64, i64* %var_2_539, align 8
; %var_2_607 = load i64, i64* %var_2_604, align 8
; Matched:\<badref\>:  store i64 %var_2_542, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_607, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i403, align 1
; Matched:%var_2_543:  %var_2_543 = add i64 %var_2_527, -1326
; %var_2_608 = add i64 %var_2_592, -1326
; Matched:%var_2_544:  %var_2_544 = add i64 %var_2_527, 20
; %var_2_609 = add i64 %var_2_592, 20
%var_2_610 = load i64, i64* %var_2_6, align 8
%var_2_611 = add i64 %var_2_610, -8
; Matched:%var_2_547:  %var_2_547 = inttoptr i64 %var_2_546 to i64*
; %var_2_612 = inttoptr i64 %var_2_611 to i64*
; Matched:\<badref\>:  store i64 %var_2_544, i64* %var_2_547, align 8
; store i64 %var_2_609, i64* %var_2_612, align 8
; Matched:\<badref\>:  store i64 %var_2_53, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_611, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_543, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_608, i64* %var_2_3, align 8
%var_2_613 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_160)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_233 to i32*
%var_2_614 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i297, align 8
; Matched:%var_2_550:  %var_2_550 = load i64, i64* %RBP, align 8
; %var_2_615 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_551:  %var_2_551 = add i64 %var_2_550, -116
; %var_2_616 = add i64 %var_2_615, -116
; Matched:%var_2_552:  %var_2_552 = load i32, i32* %EAX, align 4
; %var_2_617 = load i32, i32* %EAX.i398, align 4
; Matched:%var_2_288:  %var_2_288 = add i64 %var_2_287, 5
; %var_2_618 = add i64 %var_2_614, 5
; Matched:\<badref\>:  store i64 %var_2_288, i64* %PC, align 8
; store i64 %var_2_618, i64* %var_2_3, align 8
; Matched:%var_2_554:  %var_2_554 = inttoptr i64 %var_2_551 to i32*
; %var_2_619 = inttoptr i64 %var_2_616 to i32*
; Matched:\<badref\>:  store i32 %var_2_552, i32* %var_2_554, align 4
; store i32 %var_2_617, i32* %var_2_619, align 4
; Matched:%var_2_555:  %var_2_555 = load i32, i32* %ECX, align 4
; %var_2_620 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_556:  %var_2_556 = zext i32 %var_2_555 to i64
; %var_2_621 = zext i32 %var_2_620 to i64
%var_2_622 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_556, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_621, i64* %RAX.i300, align 8
; Matched:%var_2_558:  %var_2_558 = load i64, i64* %RSP, align 8
; %var_2_623 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_559:  %var_2_559 = add i64 %var_2_558, 128
; %var_2_624 = add i64 %var_2_623, 128
; Matched:\<badref\>:  store i64 %var_2_559, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_624, i64* %var_2_6, align 8
; Matched:%var_2_560:  %var_2_560 = icmp ugt i64 %var_2_558, -129
; %var_2_625 = icmp ugt i64 %var_2_623, -129
; Matched:%var_2_561:  %var_2_561 = zext i1 %var_2_560 to i8
; %var_2_626 = zext i1 %var_2_625 to i8
; Matched:\<badref\>:  store i8 %var_2_561, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_626, i8* %var_2_14, align 1
; Matched:%var_2_562:  %var_2_562 = trunc i64 %var_2_559 to i32
; %var_2_627 = trunc i64 %var_2_624 to i32
; Matched:%var_2_563:  %var_2_563 = and i32 %var_2_562, 255
; %var_2_628 = and i32 %var_2_627, 255
; Matched:%var_2_564:  %var_2_564 = tail call i32 @llvm.ctpop.i32(i32 %var_2_563) #11
; %var_2_629 = tail call i32 @llvm.ctpop.i32(i32 %var_2_628)
; Matched:%var_2_565:  %var_2_565 = trunc i32 %var_2_564 to i8
; %var_2_630 = trunc i32 %var_2_629 to i8
; Matched:%var_2_566:  %var_2_566 = and i8 %var_2_565, 1
; %var_2_631 = and i8 %var_2_630, 1
; Matched:%var_2_567:  %var_2_567 = xor i8 %var_2_566, 1
; %var_2_632 = xor i8 %var_2_631, 1
; Matched:\<badref\>:  store i8 %var_2_567, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_632, i8* %var_2_21, align 1
; Matched:%var_2_568:  %var_2_568 = xor i64 %var_2_559, %var_2_558
; %var_2_633 = xor i64 %var_2_624, %var_2_623
; Matched:%var_2_569:  %var_2_569 = lshr i64 %var_2_568, 4
; %var_2_634 = lshr i64 %var_2_633, 4
; Matched:%var_2_570:  %var_2_570 = trunc i64 %var_2_569 to i8
; %var_2_635 = trunc i64 %var_2_634 to i8
; Matched:%var_2_571:  %var_2_571 = and i8 %var_2_570, 1
; %var_2_636 = and i8 %var_2_635, 1
; Matched:\<badref\>:  store i8 %var_2_571, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_636, i8* %var_2_26, align 1
; Matched:%var_2_572:  %var_2_572 = icmp eq i64 %var_2_559, 0
; %var_2_637 = icmp eq i64 %var_2_624, 0
; Matched:%var_2_573:  %var_2_573 = zext i1 %var_2_572 to i8
; %var_2_638 = zext i1 %var_2_637 to i8
; Matched:\<badref\>:  store i8 %var_2_573, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_638, i8* %var_2_29, align 1
; Matched:%var_2_574:  %var_2_574 = lshr i64 %var_2_559, 63
; %var_2_639 = lshr i64 %var_2_624, 63
; Matched:%var_2_575:  %var_2_575 = trunc i64 %var_2_574 to i8
; %var_2_640 = trunc i64 %var_2_639 to i8
; Matched:\<badref\>:  store i8 %var_2_575, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_640, i8* %var_2_32, align 1
; Matched:%var_2_576:  %var_2_576 = lshr i64 %var_2_558, 63
; %var_2_641 = lshr i64 %var_2_623, 63
; Matched:%var_2_577:  %var_2_577 = xor i64 %var_2_574, %var_2_576
; %var_2_642 = xor i64 %var_2_639, %var_2_641
; Matched:%var_2_578:  %var_2_578 = add nuw nsw i64 %var_2_577, %var_2_574
; %var_2_643 = add nuw nsw i64 %var_2_642, %var_2_639
; Matched:%var_2_579:  %var_2_579 = icmp eq i64 %var_2_578, 2
; %var_2_644 = icmp eq i64 %var_2_643, 2
; Matched:%var_2_580:  %var_2_580 = zext i1 %var_2_579 to i8
; %var_2_645 = zext i1 %var_2_644 to i8
; Matched:\<badref\>:  store i8 %var_2_580, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_645, i8* %var_2_38, align 1
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_242, 10
; %var_2_646 = add i64 %var_2_622, 10
; Matched:\<badref\>:  store i64 %var_2_396, i64* %PC, align 8
; store i64 %var_2_646, i64* %var_2_3, align 8
; Matched:%var_2_582:  %var_2_582 = add i64 %var_2_558, 136
; %var_2_647 = add i64 %var_2_623, 136
; Matched:%var_2_583:  %var_2_583 = inttoptr i64 %var_2_559 to i64*
; %var_2_648 = inttoptr i64 %var_2_624 to i64*
; Matched:%var_2_584:  %var_2_584 = load i64, i64* %var_2_583, align 8
; %var_2_649 = load i64, i64* %var_2_648, align 8
; Matched:\<badref\>:  store i64 %var_2_584, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_649, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_582, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_647, i64* %var_2_6, align 8
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_143, 11
; %var_2_650 = add i64 %var_2_622, 11
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8
; store i64 %var_2_650, i64* %var_2_3, align 8
; Matched:%var_2_586:  %var_2_586 = inttoptr i64 %var_2_582 to i64*
; %var_2_651 = inttoptr i64 %var_2_647 to i64*
; Matched:%var_2_587:  %var_2_587 = load i64, i64* %var_2_586, align 8
; %var_2_652 = load i64, i64* %var_2_651, align 8
; Matched:\<badref\>:  store i64 %var_2_587, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_652, i64* %var_2_3, align 8
; Matched:%var_2_588:  %var_2_588 = add i64 %var_2_558, 144
; %var_2_653 = add i64 %var_2_623, 144
; Matched:\<badref\>:  store i64 %var_2_588, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_653, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_613
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
define %struct.Memory* @routine_movq__0x400a80___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a80_type* @G__0x400a80 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400a48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a48_type* @G__0x400a48 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400a82___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a82_type* @G__0x400a82 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x49f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x49f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x49f__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x49f__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x49f__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x49f__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x49f__rip__type* @G_0x49f__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x400ab2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400ab2_type* @G__0x400ab2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601260___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6012a0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jg_.L_400792(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601098___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_addsd_0x601090___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601088___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_addsd_0x601080___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601078___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_addsd_0x601070___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_addsd_0x601288___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movsd_0x601060___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_addsd_0x601058___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601050___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601048___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601040___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601038___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601288___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_jmpq_.L_400659(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400ad6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400ad6_type* @G__0x400ad6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x291__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x291__rip__type* @G_0x291__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x291__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x291__rip__type* @G_0x291__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x601260___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6012a0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601060___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_addsd_0x601058___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601050___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601048___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601040___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601038___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601288___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601098___xmm8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_addsd_0x601090___xmm8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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
define %struct.Memory* @routine_addsd_0x601088___xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601080___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_addsd_0x601078___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601070___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x601288___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd_0x601298___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x601258___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_movsd__xmm2__0x601258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601298___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x601258___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x601290(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
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
