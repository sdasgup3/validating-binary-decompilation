; ModuleID = '/tmp/tmp1bs1c4m9-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x27e__rip__type = type <{ [8 x i8] }>
%G_0x45f__rip__type = type <{ [8 x i8] }>
%G_0x601030_type = type <{ [8 x i8] }>
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
%G_0x601048_type = type <{ [16 x i8] }>
%G_0x601050_type = type <{ [8 x i8] }>
%G_0x601058_type = type <{ [16 x i8] }>
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
%G__0x400a00_type = type <{ [8 x i8] }>
%G__0x400a38_type = type <{ [8 x i8] }>
%G__0x400a3a_type = type <{ [8 x i8] }>
%G__0x400a6a_type = type <{ [8 x i8] }>
%G__0x400a8e_type = type <{ [8 x i8] }>
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
@G_0x27e__rip_ = global %G_0x27e__rip__type zeroinitializer
@G_0x45f__rip_ = global %G_0x45f__rip__type zeroinitializer
@G_0x601030 = local_unnamed_addr global %G_0x601030_type zeroinitializer
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
@G__0x400a00 = global %G__0x400a00_type zeroinitializer
@G__0x400a38 = global %G__0x400a38_type zeroinitializer
@G__0x400a3a = global %G__0x400a3a_type zeroinitializer
@G__0x400a6a = global %G__0x400a6a_type zeroinitializer
@G__0x400a8e = global %G__0x400a8e_type zeroinitializer

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
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
; Matched:%var_2_36:  %var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_44, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4009c0__rodata_type* @seg_4009c0__rodata to i64), i64 122), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a38_type* @G__0x400a38 to i64), i64* %RDI.i338, align 8
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
; %AL.i392 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i392, align 1
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
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4009c0__rodata_type* @seg_4009c0__rodata to i64), i64 170), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a00_type* @G__0x400a00 to i64), i64* %RDI.i338, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i387 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_59:  %var_2_59 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i387, align 4
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_56, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_495, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = inttoptr i64 %var_2_58 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_59, i32* %var_2_61, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i392, align 1
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
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4009c0__rodata_type* @seg_4009c0__rodata to i64), i64 64), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a3a_type* @G__0x400a3a to i64), i64* %RDI.i338, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_70:  %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 10)
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
; Matched:\<badref\>:  store i32 %var_2_488, i32* %var_2_147, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 18)
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
%var_2_84 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 26)
%var_2_85 = add i64 %var_2_63, 34
store i64 %var_2_85, i64* %var_2_3, align 8
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
%var_2_93 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 34)
%var_2_94 = add i64 %var_2_63, 42
store i64 %var_2_94, i64* %var_2_3, align 8
%var_2_95 = inttoptr i64 %var_2_93 to i64*
%var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:%var_2_87:  %var_2_87 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_97 = bitcast %union.VectorReg* %var_2_92 to double*
%var_2_98 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_92, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_96, i64* %var_2_98, align 1
; Matched:%var_2_89:  %var_2_89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_90:  %var_2_90 = bitcast i64* %var_2_89 to double*
; %var_2_100 = bitcast i64* %var_2_99 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_102 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 42)
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
%var_2_111 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64), i64 50)
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
; Matched:%var_2_115:  %var_2_115 = load i64, i64* %var_2_83, align 1
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
; Matched:\<badref\>:  store i32 %var_2_488, i32* %var_2_147, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
store i64 %var_2_131, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_118:  %var_2_118 = load i64, i64* %RBP, align 8
; %var_2_136 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_119:  %var_2_119 = add i64 %var_2_118, -96
; %var_2_137 = add i64 %var_2_136, -96
; Matched:%var_2_120:  %var_2_120 = load i32, i32* %EAX, align 4
; %var_2_138 = load i32, i32* %EAX.i387, align 4
; Matched:%var_2_460:  %var_2_460 = add i64 %var_2_433, 75
; %var_2_139 = add i64 %var_2_129, 75
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8
; store i64 %var_2_139, i64* %var_2_3, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_119 to i32*
; %var_2_140 = inttoptr i64 %var_2_137 to i32*
; Matched:\<badref\>:  store i32 %var_2_120, i32* %var_2_122, align 4
; store i32 %var_2_138, i32* %var_2_140, align 4
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %PC, align 8
; %var_2_141 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i392, align 1
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
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4009c0__rodata_type* @seg_4009c0__rodata to i64), i64 120), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI.i338, align 8
; Matched:%var_2_131:  %var_2_131 = load i64, i64* %RBP, align 8
; %var_2_149 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, -100
; %var_2_150 = add i64 %var_2_149, -100
; Matched:%var_2_133:  %var_2_133 = load i32, i32* %EAX, align 4
; %var_2_151 = load i32, i32* %EAX.i387, align 4
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_130, 13
; %var_2_152 = add i64 %var_2_148, 13
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_132 to i32*
; %var_2_153 = inttoptr i64 %var_2_150 to i32*
; Matched:\<badref\>:  store i32 %var_2_133, i32* %var_2_135, align 4
; store i32 %var_2_151, i32* %var_2_153, align 4
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i392, align 1
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
; Matched:\<badref\>:  store i64 %var_2_53, i64* %RSP, align 8, !tbaa !1261
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
; Matched:\<badref\>:  store i64 -9223372036854775808, i64* %RDI, align 8, !tbaa !1261
; store i64 -9223372036854775808, i64* %RDI.i338, align 8
%var_2_169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i320 = getelementptr inbounds %union.anon, %union.anon* %var_2_169, i64 0, i32 0
; Matched:%var_2_151:  %var_2_151 = load i64, i64* %RBP, align 8
; %var_2_170 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_151, -56
; %var_2_171 = add i64 %var_2_170, -56
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_143, 21
; %var_2_172 = add i64 %var_2_161, 21
; Matched:\<badref\>:  store i64 %var_2_153, i64* %PC, align 8
; store i64 %var_2_172, i64* %var_2_3, align 8
; Matched:%var_2_154:  %var_2_154 = inttoptr i64 %var_2_152 to i64*
; %var_2_173 = inttoptr i64 %var_2_171 to i64*
; Matched:%var_2_155:  %var_2_155 = load i64, i64* %var_2_154, align 8
; %var_2_174 = load i64, i64* %var_2_173, align 8
; Matched:%var_2_156:  %var_2_156 = mul i64 %var_2_155, 10000
; %var_2_175 = mul i64 %var_2_174, 10000
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_151, -80
; %var_2_176 = add i64 %var_2_170, -80
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_245, 25
; %var_2_177 = add i64 %var_2_161, 25
; Matched:\<badref\>:  store i64 %var_2_361, i64* %PC, align 8
; store i64 %var_2_177, i64* %var_2_3, align 8
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_157 to i64*
; %var_2_178 = inttoptr i64 %var_2_176 to i64*
; Matched:\<badref\>:  store i64 %var_2_156, i64* %var_2_159, align 8
; store i64 %var_2_175, i64* %var_2_178, align 8
; Matched:%var_2_160:  %var_2_160 = load i64, i64* %PC, align 8
; %var_2_179 = load i64, i64* %var_2_3, align 8
%var_2_180 = load i64, i64* bitcast (%G_0x601048_type* @G_0x601048 to i64*), align 8
%var_2_181 = load i64, i64* %RDI.i338, align 8
%var_2_182 = xor i64 %var_2_181, %var_2_180
store i64 %var_2_182, i64* bitcast (%G_0x601048_type* @G_0x601048 to i64*), align 8
%var_2_183 = load i64, i64* bitcast (%G_0x601058_type* @G_0x601058 to i64*), align 8
%var_2_184 = xor i64 %var_2_181, %var_2_183
; Matched:\<badref\>:  store i64 %var_2_165, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_184, i64* %RCX.i320, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_166:  %var_2_166 = trunc i64 %var_2_165 to i32
; %var_2_185 = trunc i64 %var_2_184 to i32
; Matched:%var_2_167:  %var_2_167 = and i32 %var_2_166, 255
; %var_2_186 = and i32 %var_2_185, 255
; Matched:%var_2_168:  %var_2_168 = tail call i32 @llvm.ctpop.i32(i32 %var_2_167) #11
; %var_2_187 = tail call i32 @llvm.ctpop.i32(i32 %var_2_186)
; Matched:%var_2_169:  %var_2_169 = trunc i32 %var_2_168 to i8
; %var_2_188 = trunc i32 %var_2_187 to i8
; Matched:%var_2_170:  %var_2_170 = and i8 %var_2_169, 1
; %var_2_189 = and i8 %var_2_188, 1
; Matched:%var_2_171:  %var_2_171 = xor i8 %var_2_170, 1
; %var_2_190 = xor i8 %var_2_189, 1
; Matched:\<badref\>:  store i8 %var_2_171, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_190, i8* %var_2_21, align 1
; Matched:%var_2_172:  %var_2_172 = icmp eq i64 %var_2_165, 0
; %var_2_191 = icmp eq i64 %var_2_184, 0
; Matched:%var_2_173:  %var_2_173 = zext i1 %var_2_172 to i8
; %var_2_192 = zext i1 %var_2_191 to i8
; Matched:\<badref\>:  store i8 %var_2_173, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_192, i8* %var_2_29, align 1
; Matched:%var_2_174:  %var_2_174 = lshr i64 %var_2_165, 63
; %var_2_193 = lshr i64 %var_2_184, 63
; Matched:%var_2_175:  %var_2_175 = trunc i64 %var_2_174 to i8
; %var_2_194 = trunc i64 %var_2_193 to i8
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_194, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
store i64 %var_2_184, i64* bitcast (%G_0x601058_type* @G_0x601058 to i64*), align 8
%var_2_195 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
store i64 %var_2_195, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_196 = load i64, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
store i64 %var_2_196, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_178:  %var_2_178 = load i64, i64* %RBP, align 8
; %var_2_197 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_179:  %var_2_179 = add i64 %var_2_178, -80
; %var_2_198 = add i64 %var_2_197, -80
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_160, 86
; %var_2_199 = add i64 %var_2_179, 86
; Matched:\<badref\>:  store i64 %var_2_180, i64* %PC, align 8
; store i64 %var_2_199, i64* %var_2_3, align 8
; Matched:%var_2_181:  %var_2_181 = inttoptr i64 %var_2_179 to i64*
; %var_2_200 = inttoptr i64 %var_2_198 to i64*
; Matched:%var_2_182:  %var_2_182 = load i64, i64* %var_2_181, align 8
; %var_2_201 = load i64, i64* %var_2_200, align 8
; Matched:%var_2_183:  %var_2_183 = sitofp i64 %var_2_182 to double
; %var_2_202 = sitofp i64 %var_2_201 to double
; Matched:\<badref\>:  store double %var_2_183, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_202, double* %var_2_97, align 1
; Matched:%var_2_184:  %var_2_184 = bitcast i64 %var_2_177 to double
; %var_2_203 = bitcast i64 %var_2_196 to double
; Matched:%var_2_185:  %var_2_185 = fmul double %var_2_183, %var_2_184
; %var_2_204 = fmul double %var_2_202, %var_2_203
; Matched:\<badref\>:  store double %var_2_185, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_204, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_186:  %var_2_186 = bitcast i64 %var_2_176 to double
; %var_2_205 = bitcast i64 %var_2_195 to double
; Matched:%var_2_187:  %var_2_187 = fdiv double %var_2_186, %var_2_185
; %var_2_206 = fdiv double %var_2_205, %var_2_204
; Matched:\<badref\>:  store double %var_2_187, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_206, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_178, -48
; %var_2_207 = add i64 %var_2_197, -48
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_160, 99
; %var_2_208 = add i64 %var_2_179, 99
; Matched:\<badref\>:  store i64 %var_2_189, i64* %PC, align 8
; store i64 %var_2_208, i64* %var_2_3, align 8
; Matched:%var_2_190:  %var_2_190 = inttoptr i64 %var_2_188 to double*
; %var_2_209 = inttoptr i64 %var_2_207 to double*
; Matched:\<badref\>:  store double %var_2_187, double* %var_2_190, align 8
; store double %var_2_206, double* %var_2_209, align 8
; Matched:%var_2_191:  %var_2_191 = load i64, i64* %RBP, align 8
; %var_2_210 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_191, -16
; %var_2_211 = add i64 %var_2_210, -16
%var_2_212 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_420:  %var_2_420 = add i64 %var_2_419, 5
; %var_2_213 = add i64 %var_2_212, 5
; Matched:\<badref\>:  store i64 %var_2_232, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %var_2_73, align 1
; %var_2_214 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_196:  %var_2_196 = inttoptr i64 %var_2_192 to i64*
; %var_2_215 = inttoptr i64 %var_2_211 to i64*
; Matched:\<badref\>:  store i64 %var_2_195, i64* %var_2_196, align 8
; store i64 %var_2_214, i64* %var_2_215, align 8
; Matched:%var_2_197:  %var_2_197 = load i64, i64* %RBP, align 8
; %var_2_216 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_197, -32
; %var_2_217 = add i64 %var_2_216, -32
%var_2_218 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_503, 5
; %var_2_219 = add i64 %var_2_218, 5
; Matched:\<badref\>:  store i64 %var_2_194, i64* %PC, align 8
; store i64 %var_2_219, i64* %var_2_3, align 8
; Matched:%var_2_201:  %var_2_201 = load i64, i64* %var_2_73, align 1
; %var_2_220 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_202:  %var_2_202 = inttoptr i64 %var_2_198 to i64*
; %var_2_221 = inttoptr i64 %var_2_217 to i64*
; Matched:\<badref\>:  store i64 %var_2_201, i64* %var_2_202, align 8
; store i64 %var_2_220, i64* %var_2_221, align 8
%var_2_222 = load i64, i64* %RBP.i, align 8
%var_2_223 = add i64 %var_2_222, -72
%var_2_224 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_206:  %var_2_206 = add i64 %var_2_205, 8
; %var_2_225 = add i64 %var_2_224, 8
; Matched:\<badref\>:  store i64 %var_2_492, i64* %PC, align 8
; store i64 %var_2_225, i64* %var_2_3, align 8
%var_2_226 = inttoptr i64 %var_2_223 to i64*
store i64 1, i64* %var_2_226, align 8
; Matched:%var_2_208:  %var_2_208 = load i64, i64* %RBP, align 8
; %var_2_227 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_208, -104
; %var_2_228 = add i64 %var_2_227, -104
; Matched:%var_2_210:  %var_2_210 = load i32, i32* %EAX, align 4
; %var_2_229 = load i32, i32* %EAX.i387, align 4
; Matched:%var_2_211:  %var_2_211 = load i64, i64* %PC, align 8
; %var_2_230 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, 3
; %var_2_231 = add i64 %var_2_230, 3
; Matched:\<badref\>:  store i64 %var_2_212, i64* %PC, align 8
; store i64 %var_2_231, i64* %var_2_3, align 8
; Matched:%var_2_213:  %var_2_213 = inttoptr i64 %var_2_209 to i32*
; %var_2_232 = inttoptr i64 %var_2_228 to i32*
; Matched:\<badref\>:  store i32 %var_2_210, i32* %var_2_213, align 4
; store i32 %var_2_229, i32* %var_2_232, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i261 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
%var_2_233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; Matched:%var_2_214:  %var_2_214 = bitcast %union.VectorReg* %var_2_11 to double*
; %var_2_234 = bitcast %union.VectorReg* %var_2_233 to double*
%var_2_235 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_233, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_216:  %var_2_216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_217:  %var_2_217 = bitcast i64* %var_2_216 to double*
; %var_2_237 = bitcast i64* %var_2_236 to double*
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_4006a1

block_.L_4006a1:                                  ; preds = %block_4006b6, %entry
%var_2_238 = phi i64 [ %var_2_384, %block_4006b6 ], [ %.pre, %entry ]
%var_2_239 = load i64, i64* %RBP.i, align 8
%var_2_240 = add i64 %var_2_239, -72
; Matched:%var_2_546:  %var_2_546 = add i64 %var_2_543, 4
; %var_2_241 = add i64 %var_2_238, 4
; Matched:\<badref\>:  store i64 %var_2_546, i64* %PC, align 8
; store i64 %var_2_241, i64* %var_2_3, align 8
%var_2_242 = inttoptr i64 %var_2_240 to i64*
%var_2_243 = load i64, i64* %var_2_242, align 8
; Matched:\<badref\>:  store i64 %var_2_548, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_243, i64* %RAX.i261, align 8
%var_2_244 = add i64 %var_2_239, -80
; Matched:%var_2_550:  %var_2_550 = add i64 %var_2_543, 8
; %var_2_245 = add i64 %var_2_238, 8
; Matched:\<badref\>:  store i64 %var_2_550, i64* %PC, align 8
; store i64 %var_2_245, i64* %var_2_3, align 8
%var_2_246 = inttoptr i64 %var_2_244 to i64*
%var_2_247 = load i64, i64* %var_2_246, align 8
%var_2_248 = add i64 %var_2_247, -1
; Matched:\<badref\>:  store i64 %var_2_553, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_248, i64* %RCX.i320, align 8
%var_2_249 = lshr i64 %var_2_248, 63
%var_2_250 = sub i64 %var_2_243, %var_2_248
; Matched:%var_2_556:  %var_2_556 = icmp ult i64 %var_2_548, %var_2_553
; %var_2_251 = icmp ult i64 %var_2_243, %var_2_248
; Matched:%var_2_557:  %var_2_557 = zext i1 %var_2_556 to i8
; %var_2_252 = zext i1 %var_2_251 to i8
; Matched:\<badref\>:  store i8 %var_2_557, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_252, i8* %var_2_14, align 1
; Matched:%var_2_558:  %var_2_558 = trunc i64 %var_2_555 to i32
; %var_2_253 = trunc i64 %var_2_250 to i32
; Matched:%var_2_559:  %var_2_559 = and i32 %var_2_558, 255
; %var_2_254 = and i32 %var_2_253, 255
; Matched:%var_2_560:  %var_2_560 = tail call i32 @llvm.ctpop.i32(i32 %var_2_559) #11
; %var_2_255 = tail call i32 @llvm.ctpop.i32(i32 %var_2_254)
; Matched:%var_2_561:  %var_2_561 = trunc i32 %var_2_560 to i8
; %var_2_256 = trunc i32 %var_2_255 to i8
; Matched:%var_2_562:  %var_2_562 = and i8 %var_2_561, 1
; %var_2_257 = and i8 %var_2_256, 1
; Matched:%var_2_563:  %var_2_563 = xor i8 %var_2_562, 1
; %var_2_258 = xor i8 %var_2_257, 1
; Matched:\<badref\>:  store i8 %var_2_563, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_258, i8* %var_2_21, align 1
; Matched:%var_2_564:  %var_2_564 = xor i64 %var_2_553, %var_2_548
; %var_2_259 = xor i64 %var_2_248, %var_2_243
; Matched:%var_2_565:  %var_2_565 = xor i64 %var_2_564, %var_2_555
; %var_2_260 = xor i64 %var_2_259, %var_2_250
; Matched:%var_2_566:  %var_2_566 = lshr i64 %var_2_565, 4
; %var_2_261 = lshr i64 %var_2_260, 4
; Matched:%var_2_567:  %var_2_567 = trunc i64 %var_2_566 to i8
; %var_2_262 = trunc i64 %var_2_261 to i8
; Matched:%var_2_568:  %var_2_568 = and i8 %var_2_567, 1
; %var_2_263 = and i8 %var_2_262, 1
; Matched:\<badref\>:  store i8 %var_2_568, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_263, i8* %var_2_26, align 1
%var_2_264 = icmp eq i64 %var_2_250, 0
; Matched:%var_2_570:  %var_2_570 = zext i1 %var_2_569 to i8
; %var_2_265 = zext i1 %var_2_264 to i8
; Matched:\<badref\>:  store i8 %var_2_570, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_265, i8* %var_2_29, align 1
%var_2_266 = lshr i64 %var_2_250, 63
%var_2_267 = trunc i64 %var_2_266 to i8
; Matched:\<badref\>:  store i8 %var_2_572, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_267, i8* %var_2_32, align 1
%var_2_268 = lshr i64 %var_2_243, 63
%var_2_269 = xor i64 %var_2_249, %var_2_268
%var_2_270 = xor i64 %var_2_266, %var_2_268
%var_2_271 = add nuw nsw i64 %var_2_270, %var_2_269
%var_2_272 = icmp eq i64 %var_2_271, 2
; Matched:%var_2_578:  %var_2_578 = zext i1 %var_2_577 to i8
; %var_2_273 = zext i1 %var_2_272 to i8
; Matched:\<badref\>:  store i8 %var_2_578, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_273, i8* %var_2_38, align 1
%var_2_274 = icmp ne i8 %var_2_267, 0
%var_2_275 = xor i1 %var_2_274, %var_2_272
%.demorgan = or i1 %var_2_264, %var_2_275
  %.v = select i1 %.demorgan, i64 21, i64 196
%var_2_276 = add i64 %var_2_238, %.v
; Matched:\<badref\>:  store i64 %var_2_581, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_276, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_4006b6, label %block_.L_400765

block_4006b6:                                     ; preds = %block_.L_4006a1
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_581, 6
; %var_2_277 = add i64 %var_2_276, 6
; Matched:\<badref\>:  store i64 %var_2_218, i64* %PC, align 8
; store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_219:  %var_2_219 = load i64, i64* %var_2_547, align 8
; %var_2_278 = load i64, i64* %var_2_242, align 8
; Matched:%var_2_220:  %var_2_220 = sitofp i64 %var_2_219 to double
; %var_2_279 = sitofp i64 %var_2_278 to double
; Matched:\<badref\>:  store double %var_2_220, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_279, double* %var_2_70, align 1
; Matched:%var_2_221:  %var_2_221 = add i64 %var_2_544, -48
; %var_2_280 = add i64 %var_2_239, -48
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_581, 11
; %var_2_281 = add i64 %var_2_276, 11
; Matched:\<badref\>:  store i64 %var_2_222, i64* %PC, align 8
; store i64 %var_2_281, i64* %var_2_3, align 8
; Matched:%var_2_223:  %var_2_223 = inttoptr i64 %var_2_221 to double*
; %var_2_282 = inttoptr i64 %var_2_280 to double*
; Matched:%var_2_224:  %var_2_224 = load double, double* %var_2_223, align 8
; %var_2_283 = load double, double* %var_2_282, align 8
; Matched:%var_2_225:  %var_2_225 = fmul double %var_2_220, %var_2_224
; %var_2_284 = fmul double %var_2_279, %var_2_283
; Matched:\<badref\>:  store double %var_2_225, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_284, double* %var_2_70, align 1
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_544, -24
; %var_2_285 = add i64 %var_2_239, -24
; Matched:%var_2_227:  %var_2_227 = add i64 %var_2_581, 16
; %var_2_286 = add i64 %var_2_276, 16
; Matched:\<badref\>:  store i64 %var_2_227, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
; Matched:%var_2_228:  %var_2_228 = inttoptr i64 %var_2_226 to double*
; %var_2_287 = inttoptr i64 %var_2_285 to double*
; Matched:\<badref\>:  store double %var_2_225, double* %var_2_228, align 8
; store double %var_2_284, double* %var_2_287, align 8
%var_2_288 = load i64, i64* %RBP.i, align 8
%var_2_289 = add i64 %var_2_288, -24
%var_2_290 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_193, 5
; %var_2_291 = add i64 %var_2_290, 5
; Matched:\<badref\>:  store i64 %var_2_338, i64* %PC, align 8
; store i64 %var_2_291, i64* %var_2_3, align 8
%var_2_292 = inttoptr i64 %var_2_289 to i64*
%var_2_293 = load i64, i64* %var_2_292, align 8
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_293, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_488, i32* %var_2_147, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_423:  %var_2_423 = add i64 %var_2_419, 10
; %var_2_294 = add i64 %var_2_290, 10
; Matched:\<badref\>:  store i64 %var_2_423, i64* %PC, align 8
; store i64 %var_2_294, i64* %var_2_3, align 8
%var_2_295 = bitcast i64 %var_2_293 to double
%var_2_296 = inttoptr i64 %var_2_289 to double*
%var_2_297 = load double, double* %var_2_296, align 8
%var_2_298 = fmul double %var_2_295, %var_2_297
; Matched:\<badref\>:  store double %var_2_239, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_298, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_74, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_417, -40
; %var_2_299 = add i64 %var_2_288, -40
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_419, 15
; %var_2_300 = add i64 %var_2_290, 15
; Matched:\<badref\>:  store i64 %var_2_429, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_430:  %var_2_430 = inttoptr i64 %var_2_428 to double*
; %var_2_301 = inttoptr i64 %var_2_299 to double*
; Matched:\<badref\>:  store double %var_2_427, double* %var_2_430, align 8
; store double %var_2_298, double* %var_2_301, align 8
; Matched:%var_2_349:  %var_2_349 = load i64, i64* %RBP, align 8
; %var_2_302 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_243, -16
; %var_2_303 = add i64 %var_2_302, -16
%var_2_304 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, 5
; %var_2_305 = add i64 %var_2_304, 5
; Matched:\<badref\>:  store i64 %var_2_352, i64* %PC, align 8
; store i64 %var_2_305, i64* %var_2_3, align 8
; Matched:%var_2_247:  %var_2_247 = inttoptr i64 %var_2_244 to i64*
; %var_2_306 = inttoptr i64 %var_2_303 to i64*
; Matched:%var_2_248:  %var_2_248 = load i64, i64* %var_2_247, align 8
; %var_2_307 = load i64, i64* %var_2_306, align 8
; Matched:\<badref\>:  store i64 %var_2_248, i64* %var_2_73, align 1, !tbaa !1285
; store i64 %var_2_307, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_488, i32* %var_2_147, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_243, -40
; %var_2_308 = add i64 %var_2_302, -40
; Matched:%var_2_535:  %var_2_535 = add i64 %var_2_511, 10
; %var_2_309 = add i64 %var_2_304, 10
; Matched:\<badref\>:  store i64 %var_2_535, i64* %PC, align 8
; store i64 %var_2_309, i64* %var_2_3, align 8
; Matched:%var_2_251:  %var_2_251 = inttoptr i64 %var_2_249 to i64*
; %var_2_310 = inttoptr i64 %var_2_308 to i64*
; Matched:%var_2_252:  %var_2_252 = load i64, i64* %var_2_251, align 8
; %var_2_311 = load i64, i64* %var_2_310, align 8
; Matched:\<badref\>:  store i64 %var_2_252, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_311, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_351, 15
; %var_2_312 = add i64 %var_2_304, 15
; Matched:\<badref\>:  store i64 %var_2_357, i64* %PC, align 8
; store i64 %var_2_312, i64* %var_2_3, align 8
; Matched:%var_2_354:  %var_2_354 = load i64, i64* %var_2_353, align 8
; %var_2_313 = load i64, i64* %var_2_310, align 8
; Matched:\<badref\>:  store i64 %var_2_254, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_313, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_245, 20
; %var_2_314 = add i64 %var_2_304, 20
; Matched:\<badref\>:  store i64 %var_2_255, i64* %PC, align 8
; store i64 %var_2_314, i64* %var_2_3, align 8
; Matched:%var_2_256:  %var_2_256 = load i64, i64* %var_2_251, align 8
; %var_2_315 = load i64, i64* %var_2_310, align 8
; Matched:\<badref\>:  store i64 %var_2_256, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_315, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_143, 25
; %var_2_316 = add i64 %var_2_304, 25
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_316, i64* %var_2_3, align 8
; Matched:%var_2_358:  %var_2_358 = load i64, i64* %var_2_353, align 8
; %var_2_317 = load i64, i64* %var_2_310, align 8
; Matched:\<badref\>:  store i64 %var_2_358, i64* %var_2_93, align 1, !tbaa !1285
; store i64 %var_2_317, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_259:  %var_2_259 = add i64 %var_2_245, 30
; %var_2_318 = add i64 %var_2_304, 30
; Matched:\<badref\>:  store i64 %var_2_259, i64* %PC, align 8
; store i64 %var_2_318, i64* %var_2_3, align 8
; Matched:%var_2_360:  %var_2_360 = load i64, i64* %var_2_353, align 8
; %var_2_319 = load i64, i64* %var_2_310, align 8
; Matched:\<badref\>:  store i64 %var_2_360, i64* %var_2_98, align 1, !tbaa !1285
; store i64 %var_2_319, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
%var_2_320 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
store i64 %var_2_320, i64* %var_2_235, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_217, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_237, align 1
; Matched:%var_2_262:  %var_2_262 = add i64 %var_2_245, 44
; %var_2_321 = add i64 %var_2_304, 44
; Matched:\<badref\>:  store i64 %var_2_262, i64* %PC, align 8
; store i64 %var_2_321, i64* %var_2_3, align 8
; Matched:  %.cast10 = bitcast i64 %var_2_261 to double
; %.cast10 = bitcast i64 %var_2_320 to double
; Matched:%var_2_263:  %var_2_263 = inttoptr i64 %var_2_249 to double*
; %var_2_322 = inttoptr i64 %var_2_308 to double*
; Matched:%var_2_264:  %var_2_264 = load double, double* %var_2_263, align 8
; %var_2_323 = load double, double* %var_2_322, align 8
; Matched:%var_2_265:  %var_2_265 = fmul double %.cast10, %var_2_264
; %var_2_324 = fmul double %.cast10, %var_2_323
; Matched:%var_2_266:  %var_2_266 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
; %var_2_325 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
; Matched:%var_2_267:  %var_2_267 = fadd double %var_2_265, %var_2_266
; %var_2_326 = fadd double %var_2_324, %var_2_325
; Matched:\<badref\>:  store double %var_2_267, double* %var_2_214, align 1, !tbaa !1285
; store double %var_2_326, double* %var_2_234, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_216, align 1, !tbaa !1285
; store i64 0, i64* %var_2_236, align 1
; Matched:%var_2_268:  %var_2_268 = bitcast i64 %var_2_260 to double
; %var_2_327 = bitcast i64 %var_2_319 to double
; Matched:%var_2_269:  %var_2_269 = fmul double %var_2_267, %var_2_268
; %var_2_328 = fmul double %var_2_326, %var_2_327
; Matched:%var_2_270:  %var_2_270 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
; %var_2_329 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
; Matched:%var_2_271:  %var_2_271 = fadd double %var_2_269, %var_2_270
; %var_2_330 = fadd double %var_2_328, %var_2_329
; Matched:\<badref\>:  store double %var_2_271, double* %var_2_97, align 1, !tbaa !1285
; store double %var_2_330, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_99, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
; Matched:%var_2_272:  %var_2_272 = bitcast i64 %var_2_258 to double
; %var_2_331 = bitcast i64 %var_2_317 to double
; Matched:%var_2_273:  %var_2_273 = fmul double %var_2_271, %var_2_272
; %var_2_332 = fmul double %var_2_330, %var_2_331
; Matched:%var_2_274:  %var_2_274 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
; %var_2_333 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
; Matched:%var_2_275:  %var_2_275 = fadd double %var_2_273, %var_2_274
; %var_2_334 = fadd double %var_2_332, %var_2_333
; Matched:\<badref\>:  store double %var_2_275, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_334, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_276:  %var_2_276 = bitcast i64 %var_2_256 to double
; %var_2_335 = bitcast i64 %var_2_315 to double
; Matched:%var_2_277:  %var_2_277 = fmul double %var_2_275, %var_2_276
; %var_2_336 = fmul double %var_2_334, %var_2_335
; Matched:%var_2_278:  %var_2_278 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
; %var_2_337 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
; Matched:%var_2_279:  %var_2_279 = fadd double %var_2_277, %var_2_278
; %var_2_338 = fadd double %var_2_336, %var_2_337
; Matched:\<badref\>:  store double %var_2_279, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_338, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_280:  %var_2_280 = bitcast i64 %var_2_254 to double
; %var_2_339 = bitcast i64 %var_2_313 to double
; Matched:%var_2_281:  %var_2_281 = fmul double %var_2_279, %var_2_280
; %var_2_340 = fmul double %var_2_338, %var_2_339
; Matched:%var_2_282:  %var_2_282 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
; %var_2_341 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
; Matched:%var_2_283:  %var_2_283 = fadd double %var_2_281, %var_2_282
; %var_2_342 = fadd double %var_2_340, %var_2_341
; Matched:\<badref\>:  store double %var_2_283, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_342, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_284:  %var_2_284 = bitcast i64 %var_2_252 to double
; %var_2_343 = bitcast i64 %var_2_311 to double
; Matched:%var_2_285:  %var_2_285 = fmul double %var_2_283, %var_2_284
; %var_2_344 = fmul double %var_2_342, %var_2_343
; Matched:\<badref\>:  store double %var_2_285, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_344, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_286:  %var_2_286 = load double, double* %var_2_72, align 1
; %var_2_345 = load double, double* %var_2_70, align 1
; Matched:%var_2_287:  %var_2_287 = fadd double %var_2_285, %var_2_286
; %var_2_346 = fadd double %var_2_344, %var_2_345
; Matched:%var_2_288:  %var_2_288 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_347 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_289:  %var_2_289 = fadd double %var_2_287, %var_2_288
; %var_2_348 = fadd double %var_2_346, %var_2_347
; Matched:\<badref\>:  store double %var_2_289, double* %var_2_72, align 1, !tbaa !1285
; store double %var_2_348, double* %var_2_70, align 1
; Matched:%var_2_290:  %var_2_290 = load i64, i64* %RBP, align 8
; %var_2_349 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_290, -16
; %var_2_350 = add i64 %var_2_349, -16
; Matched:%var_2_397:  %var_2_397 = add i64 %var_2_351, 127
; %var_2_351 = add i64 %var_2_304, 127
; Matched:\<badref\>:  store i64 %var_2_397, i64* %PC, align 8
; store i64 %var_2_351, i64* %var_2_3, align 8
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_291 to double*
; %var_2_352 = inttoptr i64 %var_2_350 to double*
; Matched:\<badref\>:  store double %var_2_289, double* %var_2_293, align 8
; store double %var_2_348, double* %var_2_352, align 8
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %RBP, align 8
; %var_2_353 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_295:  %var_2_295 = add i64 %var_2_294, -72
; %var_2_354 = add i64 %var_2_353, -72
; Matched:%var_2_296:  %var_2_296 = load i64, i64* %PC, align 8
; %var_2_355 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_296, 4
; %var_2_356 = add i64 %var_2_355, 4
; Matched:\<badref\>:  store i64 %var_2_297, i64* %PC, align 8
; store i64 %var_2_356, i64* %var_2_3, align 8
; Matched:%var_2_298:  %var_2_298 = inttoptr i64 %var_2_295 to i64*
; %var_2_357 = inttoptr i64 %var_2_354 to i64*
; Matched:%var_2_299:  %var_2_299 = load i64, i64* %var_2_298, align 8
; %var_2_358 = load i64, i64* %var_2_357, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_299, 1
; %var_2_359 = add i64 %var_2_358, 1
; Matched:\<badref\>:  store i64 %var_2_300, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_359, i64* %RAX.i261, align 8
; Matched:%var_2_301:  %var_2_301 = icmp eq i64 %var_2_299, -1
; %var_2_360 = icmp eq i64 %var_2_358, -1
; Matched:%var_2_302:  %var_2_302 = icmp eq i64 %var_2_300, 0
; %var_2_361 = icmp eq i64 %var_2_359, 0
; Matched:%var_2_303:  %var_2_303 = or i1 %var_2_301, %var_2_302
; %var_2_362 = or i1 %var_2_360, %var_2_361
; Matched:%var_2_304:  %var_2_304 = zext i1 %var_2_303 to i8
; %var_2_363 = zext i1 %var_2_362 to i8
; Matched:\<badref\>:  store i8 %var_2_304, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_363, i8* %var_2_14, align 1
; Matched:%var_2_305:  %var_2_305 = trunc i64 %var_2_300 to i32
; %var_2_364 = trunc i64 %var_2_359 to i32
; Matched:%var_2_306:  %var_2_306 = and i32 %var_2_305, 255
; %var_2_365 = and i32 %var_2_364, 255
; Matched:%var_2_307:  %var_2_307 = tail call i32 @llvm.ctpop.i32(i32 %var_2_306) #11
; %var_2_366 = tail call i32 @llvm.ctpop.i32(i32 %var_2_365)
; Matched:%var_2_308:  %var_2_308 = trunc i32 %var_2_307 to i8
; %var_2_367 = trunc i32 %var_2_366 to i8
; Matched:%var_2_309:  %var_2_309 = and i8 %var_2_308, 1
; %var_2_368 = and i8 %var_2_367, 1
; Matched:%var_2_310:  %var_2_310 = xor i8 %var_2_309, 1
; %var_2_369 = xor i8 %var_2_368, 1
; Matched:\<badref\>:  store i8 %var_2_310, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_369, i8* %var_2_21, align 1
; Matched:%var_2_311:  %var_2_311 = xor i64 %var_2_300, %var_2_299
; %var_2_370 = xor i64 %var_2_359, %var_2_358
; Matched:%var_2_312:  %var_2_312 = lshr i64 %var_2_311, 4
; %var_2_371 = lshr i64 %var_2_370, 4
; Matched:%var_2_313:  %var_2_313 = trunc i64 %var_2_312 to i8
; %var_2_372 = trunc i64 %var_2_371 to i8
; Matched:%var_2_314:  %var_2_314 = and i8 %var_2_313, 1
; %var_2_373 = and i8 %var_2_372, 1
; Matched:\<badref\>:  store i8 %var_2_314, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_373, i8* %var_2_26, align 1
; Matched:%var_2_315:  %var_2_315 = zext i1 %var_2_302 to i8
; %var_2_374 = zext i1 %var_2_361 to i8
; Matched:\<badref\>:  store i8 %var_2_315, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_374, i8* %var_2_29, align 1
; Matched:%var_2_316:  %var_2_316 = lshr i64 %var_2_300, 63
; %var_2_375 = lshr i64 %var_2_359, 63
; Matched:%var_2_317:  %var_2_317 = trunc i64 %var_2_316 to i8
; %var_2_376 = trunc i64 %var_2_375 to i8
; Matched:\<badref\>:  store i8 %var_2_317, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_376, i8* %var_2_32, align 1
; Matched:%var_2_318:  %var_2_318 = lshr i64 %var_2_299, 63
; %var_2_377 = lshr i64 %var_2_358, 63
; Matched:%var_2_319:  %var_2_319 = xor i64 %var_2_316, %var_2_318
; %var_2_378 = xor i64 %var_2_375, %var_2_377
; Matched:%var_2_320:  %var_2_320 = add nuw nsw i64 %var_2_319, %var_2_316
; %var_2_379 = add nuw nsw i64 %var_2_378, %var_2_375
; Matched:%var_2_321:  %var_2_321 = icmp eq i64 %var_2_320, 2
; %var_2_380 = icmp eq i64 %var_2_379, 2
; Matched:%var_2_322:  %var_2_322 = zext i1 %var_2_321 to i8
; %var_2_381 = zext i1 %var_2_380 to i8
; Matched:\<badref\>:  store i8 %var_2_322, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_381, i8* %var_2_38, align 1
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_296, 12
; %var_2_382 = add i64 %var_2_355, 12
; Matched:\<badref\>:  store i64 %var_2_323, i64* %PC, align 8
; store i64 %var_2_382, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_300, i64* %var_2_298, align 8
; store i64 %var_2_359, i64* %var_2_357, align 8
%var_2_383 = load i64, i64* %var_2_3, align 8
%var_2_384 = add i64 %var_2_383, -191
; Matched:\<badref\>:  store i64 %var_2_325, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_384, i64* %var_2_3, align 8
  br label %block_.L_4006a1

block_.L_400765:                                  ; preds = %block_.L_4006a1
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_4009c0__rodata_type* @seg_4009c0__rodata to i64), i64 206), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a8e_type* @G__0x400a8e to i64), i64* %RDI.i338, align 8
%var_2_385 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_385, align 1
%var_2_386 = add i64 %var_2_276, add (i64 ptrtoint (%G_0x27e__rip__type* @G_0x27e__rip_ to i64), i64 13)
%var_2_387 = add i64 %var_2_276, 21
store i64 %var_2_387, i64* %var_2_3, align 8
%var_2_388 = inttoptr i64 %var_2_386 to i64*
%var_2_389 = load i64, i64* %var_2_388, align 8
store i64 %var_2_389, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_329:  %var_2_329 = load double, double* bitcast (%piref_type* @piref to double*), align 8
; %var_2_390 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
; Matched:%var_2_330:  %var_2_330 = load double, double* bitcast (%three_type* @three to double*), align 8
; %var_2_391 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*), align 8
; Matched:%var_2_331:  %var_2_331 = fdiv double %var_2_329, %var_2_330
; %var_2_392 = fdiv double %var_2_390, %var_2_391
; Matched:\<badref\>:  store double %var_2_331, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_392, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_544, -24
; %var_2_393 = add i64 %var_2_239, -24
; Matched:%var_2_333:  %var_2_333 = add i64 %var_2_581, 44
; %var_2_394 = add i64 %var_2_276, 44
; Matched:\<badref\>:  store i64 %var_2_333, i64* %PC, align 8
; store i64 %var_2_394, i64* %var_2_3, align 8
; Matched:%var_2_334:  %var_2_334 = inttoptr i64 %var_2_332 to double*
; %var_2_395 = inttoptr i64 %var_2_393 to double*
; Matched:\<badref\>:  store double %var_2_331, double* %var_2_334, align 8
; store double %var_2_392, double* %var_2_395, align 8
%var_2_396 = load i64, i64* %RBP.i, align 8
%var_2_397 = add i64 %var_2_396, -24
%var_2_398 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_199, 5
; %var_2_399 = add i64 %var_2_398, 5
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8
; store i64 %var_2_399, i64* %var_2_3, align 8
%var_2_400 = inttoptr i64 %var_2_397 to i64*
%var_2_401 = load i64, i64* %var_2_400, align 8
; Matched:\<badref\>:  store i64 %var_2_436, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_401, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_355:  %var_2_355 = add i64 %var_2_351, 10
; %var_2_402 = add i64 %var_2_398, 10
; Matched:\<badref\>:  store i64 %var_2_355, i64* %PC, align 8
; store i64 %var_2_402, i64* %var_2_3, align 8
%var_2_403 = bitcast i64 %var_2_401 to double
%var_2_404 = inttoptr i64 %var_2_397 to double*
%var_2_405 = load double, double* %var_2_404, align 8
%var_2_406 = fmul double %var_2_403, %var_2_405
; Matched:\<badref\>:  store double %var_2_345, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_406, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_346:  %var_2_346 = add i64 %var_2_335, -40
; %var_2_407 = add i64 %var_2_396, -40
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_337, 15
; %var_2_408 = add i64 %var_2_398, 15
; Matched:\<badref\>:  store i64 %var_2_347, i64* %PC, align 8
; store i64 %var_2_408, i64* %var_2_3, align 8
; Matched:%var_2_348:  %var_2_348 = inttoptr i64 %var_2_346 to double*
; %var_2_409 = inttoptr i64 %var_2_407 to double*
; Matched:\<badref\>:  store double %var_2_345, double* %var_2_348, align 8
; store double %var_2_406, double* %var_2_409, align 8
%var_2_410 = load i64, i64* %RBP.i, align 8
%var_2_411 = add i64 %var_2_410, -40
%var_2_412 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_338:  %var_2_338 = add i64 %var_2_337, 5
; %var_2_413 = add i64 %var_2_412, 5
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8
; store i64 %var_2_413, i64* %var_2_3, align 8
%var_2_414 = inttoptr i64 %var_2_411 to i64*
%var_2_415 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_354, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_415, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_337, 10
; %var_2_416 = add i64 %var_2_412, 10
; Matched:\<badref\>:  store i64 %var_2_341, i64* %PC, align 8
; store i64 %var_2_416, i64* %var_2_3, align 8
%var_2_417 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_356, i64* %var_2_88, align 1, !tbaa !1285
; store i64 %var_2_417, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_245, 15
; %var_2_418 = add i64 %var_2_412, 15
; Matched:\<badref\>:  store i64 %var_2_253, i64* %PC, align 8
; store i64 %var_2_418, i64* %var_2_3, align 8
%var_2_419 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_258, i64* %var_2_93, align 1, !tbaa !1285
; store i64 %var_2_419, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_359:  %var_2_359 = add i64 %var_2_351, 20
; %var_2_420 = add i64 %var_2_412, 20
; Matched:\<badref\>:  store i64 %var_2_359, i64* %PC, align 8
; store i64 %var_2_420, i64* %var_2_3, align 8
%var_2_421 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_260, i64* %var_2_98, align 1, !tbaa !1285
; store i64 %var_2_421, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_100, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_361:  %var_2_361 = add i64 %var_2_351, 25
; %var_2_422 = add i64 %var_2_412, 25
; Matched:\<badref\>:  store i64 %var_2_158, i64* %PC, align 8
; store i64 %var_2_422, i64* %var_2_3, align 8
%var_2_423 = load i64, i64* %var_2_414, align 8
; Matched:\<badref\>:  store i64 %var_2_362, i64* %var_2_215, align 1, !tbaa !1285
; store i64 %var_2_423, i64* %var_2_235, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_217, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_237, align 1
; Matched:%var_2_326:  %var_2_326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
; %var_2_424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
%var_2_425 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
; Matched:%var_2_364:  %var_2_364 = bitcast %union.VectorReg* %var_2_326 to double*
; %var_2_426 = bitcast %union.VectorReg* %var_2_424 to double*
; Matched:%var_2_365:  %var_2_365 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_326, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_427 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_424, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_363, i64* %var_2_365, align 1, !tbaa !1285
; store i64 %var_2_425, i64* %var_2_427, align 1
; Matched:%var_2_366:  %var_2_366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; %var_2_428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_367:  %var_2_367 = bitcast i64* %var_2_366 to double*
; %var_2_429 = bitcast i64* %var_2_428 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_367, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_429, align 1
; Matched:%var_2_368:  %var_2_368 = add i64 %var_2_351, 39
; %var_2_430 = add i64 %var_2_412, 39
; Matched:\<badref\>:  store i64 %var_2_368, i64* %PC, align 8
; store i64 %var_2_430, i64* %var_2_3, align 8
%var_2_431 = bitcast i64 %var_2_425 to double
%var_2_432 = inttoptr i64 %var_2_411 to double*
%var_2_433 = load double, double* %var_2_432, align 8
%var_2_434 = fmul double %var_2_431, %var_2_433
%var_2_435 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
%var_2_436 = fadd double %var_2_434, %var_2_435
; Matched:\<badref\>:  store double %var_2_374, double* %var_2_364, align 1, !tbaa !1285
; store double %var_2_436, double* %var_2_426, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_366, align 1, !tbaa !1285
; store i64 0, i64* %var_2_428, align 1
%var_2_437 = bitcast i64 %var_2_423 to double
%var_2_438 = fmul double %var_2_436, %var_2_437
%var_2_439 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
%var_2_440 = fadd double %var_2_438, %var_2_439
; Matched:\<badref\>:  store double %var_2_378, double* %var_2_214, align 1, !tbaa !1285
; store double %var_2_440, double* %var_2_234, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_216, align 1, !tbaa !1285
; store i64 0, i64* %var_2_236, align 1
%var_2_441 = bitcast i64 %var_2_421 to double
%var_2_442 = fmul double %var_2_440, %var_2_441
%var_2_443 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
%var_2_444 = fadd double %var_2_442, %var_2_443
; Matched:\<badref\>:  store double %var_2_382, double* %var_2_97, align 1, !tbaa !1285
; store double %var_2_444, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_99, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
%var_2_445 = bitcast i64 %var_2_419 to double
%var_2_446 = fmul double %var_2_444, %var_2_445
%var_2_447 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
%var_2_448 = fadd double %var_2_446, %var_2_447
; Matched:\<badref\>:  store double %var_2_386, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_448, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_449 = bitcast i64 %var_2_417 to double
%var_2_450 = fmul double %var_2_448, %var_2_449
%var_2_451 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
%var_2_452 = fadd double %var_2_450, %var_2_451
; Matched:\<badref\>:  store double %var_2_390, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_452, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
%var_2_453 = bitcast i64 %var_2_415 to double
%var_2_454 = fmul double %var_2_452, %var_2_453
%var_2_455 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_456 = fadd double %var_2_454, %var_2_455
; Matched:\<badref\>:  store double %var_2_394, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_456, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
store double %var_2_456, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_544:  %var_2_544 = load i64, i64* %RBP, align 8
; %var_2_457 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_396:  %var_2_396 = add i64 %var_2_395, -48
; %var_2_458 = add i64 %var_2_457, -48
; Matched:%var_2_292:  %var_2_292 = add i64 %var_2_245, 127
; %var_2_459 = add i64 %var_2_412, 127
; Matched:\<badref\>:  store i64 %var_2_292, i64* %PC, align 8
; store i64 %var_2_459, i64* %var_2_3, align 8
; Matched:%var_2_398:  %var_2_398 = inttoptr i64 %var_2_396 to i64*
; %var_2_460 = inttoptr i64 %var_2_458 to i64*
; Matched:%var_2_399:  %var_2_399 = load i64, i64* %var_2_398, align 8
; %var_2_461 = load i64, i64* %var_2_460, align 8
; Matched:\<badref\>:  store i64 %var_2_399, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_461, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_400:  %var_2_400 = fadd double %var_2_394, %var_2_393
; %var_2_462 = fadd double %var_2_456, %var_2_455
; Matched:\<badref\>:  store double %var_2_400, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_462, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
%var_2_463 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
store i64 %var_2_463, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_95, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_395, -16
; %var_2_464 = add i64 %var_2_457, -16
; Matched:%var_2_403:  %var_2_403 = add i64 %var_2_351, 159
; %var_2_465 = add i64 %var_2_412, 159
; Matched:\<badref\>:  store i64 %var_2_403, i64* %PC, align 8
; store i64 %var_2_465, i64* %var_2_3, align 8
; Matched:  %.cast8 = bitcast i64 %var_2_401 to double
; %.cast8 = bitcast i64 %var_2_463 to double
; Matched:%var_2_404:  %var_2_404 = inttoptr i64 %var_2_402 to double*
; %var_2_466 = inttoptr i64 %var_2_464 to double*
; Matched:%var_2_405:  %var_2_405 = load double, double* %var_2_404, align 8
; %var_2_467 = load double, double* %var_2_466, align 8
; Matched:%var_2_406:  %var_2_406 = fmul double %.cast8, %var_2_405
; %var_2_468 = fmul double %.cast8, %var_2_467
; Matched:\<badref\>:  store double %var_2_406, double* %var_2_92, align 1, !tbaa !1285
; store double %var_2_468, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_94, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_407:  %var_2_407 = fadd double %var_2_400, %var_2_406
; %var_2_469 = fadd double %var_2_462, %var_2_468
; Matched:\<badref\>:  store double %var_2_407, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_469, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_408:  %var_2_408 = bitcast i64 %var_2_399 to double
; %var_2_470 = bitcast i64 %var_2_461 to double
; Matched:%var_2_409:  %var_2_409 = fmul double %var_2_408, %var_2_407
; %var_2_471 = fmul double %var_2_470, %var_2_469
; Matched:%var_2_410:  %var_2_410 = fdiv double %var_2_409, %.cast8
; %var_2_472 = fdiv double %var_2_471, %.cast8
; Matched:\<badref\>:  store double %var_2_410, double* bitcast (%sa_type* @sa to double*), align 8
; store double %var_2_472, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_411:  %var_2_411 = load double, double* bitcast (%piref_type* @piref to double*), align 8
; %var_2_473 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
; Matched:%var_2_412:  %var_2_412 = load double, double* bitcast (%three_type* @three to double*), align 8
; %var_2_474 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*), align 8
; Matched:%var_2_413:  %var_2_413 = fdiv double %var_2_411, %var_2_412
; %var_2_475 = fdiv double %var_2_473, %var_2_474
; Matched:\<badref\>:  store double %var_2_413, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_475, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_395, -24
; %var_2_476 = add i64 %var_2_457, -24
; Matched:%var_2_415:  %var_2_415 = add i64 %var_2_351, 208
; %var_2_477 = add i64 %var_2_412, 208
; Matched:\<badref\>:  store i64 %var_2_415, i64* %PC, align 8
; store i64 %var_2_477, i64* %var_2_3, align 8
; Matched:%var_2_416:  %var_2_416 = inttoptr i64 %var_2_414 to double*
; %var_2_478 = inttoptr i64 %var_2_476 to double*
; Matched:\<badref\>:  store double %var_2_413, double* %var_2_416, align 8
; store double %var_2_475, double* %var_2_478, align 8
%var_2_479 = load i64, i64* %RBP.i, align 8
%var_2_480 = add i64 %var_2_479, -24
%var_2_481 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_352:  %var_2_352 = add i64 %var_2_351, 5
; %var_2_482 = add i64 %var_2_481, 5
; Matched:\<badref\>:  store i64 %var_2_507, i64* %PC, align 8
; store i64 %var_2_482, i64* %var_2_3, align 8
%var_2_483 = inttoptr i64 %var_2_480 to i64*
%var_2_484 = load i64, i64* %var_2_483, align 8
; Matched:\<badref\>:  store i64 %var_2_340, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_484, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_245, 10
; %var_2_485 = add i64 %var_2_481, 10
; Matched:\<badref\>:  store i64 %var_2_250, i64* %PC, align 8
; store i64 %var_2_485, i64* %var_2_3, align 8
%var_2_486 = bitcast i64 %var_2_484 to double
%var_2_487 = inttoptr i64 %var_2_480 to double*
%var_2_488 = load double, double* %var_2_487, align 8
%var_2_489 = fmul double %var_2_486, %var_2_488
; Matched:\<badref\>:  store double %var_2_427, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_489, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_229, -40
; %var_2_490 = add i64 %var_2_479, -40
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_231, 15
; %var_2_491 = add i64 %var_2_481, 15
; Matched:\<badref\>:  store i64 %var_2_241, i64* %PC, align 8
; store i64 %var_2_491, i64* %var_2_3, align 8
; Matched:%var_2_242:  %var_2_242 = inttoptr i64 %var_2_240 to double*
; %var_2_492 = inttoptr i64 %var_2_490 to double*
; Matched:\<badref\>:  store double %var_2_239, double* %var_2_242, align 8
; store double %var_2_489, double* %var_2_492, align 8
%var_2_493 = load i64, i64* %RBP.i, align 8
%var_2_494 = add i64 %var_2_493, -24
%var_2_495 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_245, 5
; %var_2_496 = add i64 %var_2_495, 5
; Matched:\<badref\>:  store i64 %var_2_420, i64* %PC, align 8
; store i64 %var_2_496, i64* %var_2_3, align 8
%var_2_497 = inttoptr i64 %var_2_494 to i64*
%var_2_498 = load i64, i64* %var_2_497, align 8
; Matched:\<badref\>:  store i64 %var_2_422, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_498, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_499 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_499, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_90, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_500 = add i64 %var_2_493, -40
; Matched:%var_2_439:  %var_2_439 = add i64 %var_2_433, 19
; %var_2_501 = add i64 %var_2_495, 19
; Matched:\<badref\>:  store i64 %var_2_439, i64* %PC, align 8
; store i64 %var_2_501, i64* %var_2_3, align 8
%.cast9 = bitcast i64 %var_2_499 to double
%var_2_502 = inttoptr i64 %var_2_500 to double*
%var_2_503 = load double, double* %var_2_502, align 8
%var_2_504 = fmul double %.cast9, %var_2_503
%var_2_505 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
%var_2_506 = fadd double %var_2_504, %var_2_505
; Matched:\<badref\>:  store double %var_2_444, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_506, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_445:  %var_2_445 = add i64 %var_2_433, 33
; %var_2_507 = add i64 %var_2_495, 33
; Matched:\<badref\>:  store i64 %var_2_445, i64* %PC, align 8
; store i64 %var_2_507, i64* %var_2_3, align 8
%var_2_508 = load double, double* %var_2_502, align 8
%var_2_509 = fmul double %var_2_506, %var_2_508
%var_2_510 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
%var_2_511 = fadd double %var_2_509, %var_2_510
; Matched:\<badref\>:  store double %var_2_449, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_511, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_433, 47
; %var_2_512 = add i64 %var_2_495, 47
; Matched:\<badref\>:  store i64 %var_2_450, i64* %PC, align 8
; store i64 %var_2_512, i64* %var_2_3, align 8
%var_2_513 = load double, double* %var_2_502, align 8
%var_2_514 = fmul double %var_2_511, %var_2_513
%var_2_515 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
%var_2_516 = fadd double %var_2_514, %var_2_515
; Matched:\<badref\>:  store double %var_2_454, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_516, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_455:  %var_2_455 = add i64 %var_2_433, 61
; %var_2_517 = add i64 %var_2_495, 61
; Matched:\<badref\>:  store i64 %var_2_455, i64* %PC, align 8
; store i64 %var_2_517, i64* %var_2_3, align 8
%var_2_518 = load double, double* %var_2_502, align 8
%var_2_519 = fmul double %var_2_516, %var_2_518
%var_2_520 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
%var_2_521 = fadd double %var_2_519, %var_2_520
; Matched:\<badref\>:  store double %var_2_459, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_521, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_111, 75
; %var_2_522 = add i64 %var_2_495, 75
; Matched:\<badref\>:  store i64 %var_2_460, i64* %PC, align 8
; store i64 %var_2_522, i64* %var_2_3, align 8
%var_2_523 = load double, double* %var_2_502, align 8
%var_2_524 = fmul double %var_2_521, %var_2_523
%var_2_525 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
%var_2_526 = fadd double %var_2_524, %var_2_525
; Matched:\<badref\>:  store double %var_2_464, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_526, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_433, 89
; %var_2_527 = add i64 %var_2_495, 89
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8
; store i64 %var_2_527, i64* %var_2_3, align 8
%var_2_528 = load double, double* %var_2_502, align 8
%var_2_529 = fmul double %var_2_526, %var_2_528
%var_2_530 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*), align 8
%var_2_531 = fadd double %var_2_529, %var_2_530
; Matched:\<badref\>:  store double %var_2_469, double* %var_2_87, align 1, !tbaa !1285
; store double %var_2_531, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_89, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
%var_2_532 = bitcast i64 %var_2_498 to double
%var_2_533 = fmul double %var_2_531, %var_2_532
; Matched:\<badref\>:  store double %var_2_471, double* bitcast (%sb_type* @sb to double*), align 8
; store double %var_2_533, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
%var_2_534 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_535 = fsub double %var_2_534, %var_2_533
; Matched:\<badref\>:  store double %var_2_473, double* %var_2_82, align 1, !tbaa !1285
; store double %var_2_535, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_84, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
store double %var_2_535, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_474:  %var_2_474 = load double, double* %var_2_77, align 1
; %var_2_536 = load double, double* %var_2_79, align 1
; Matched:%var_2_475:  %var_2_475 = fmul double %var_2_473, %var_2_474
; %var_2_537 = fmul double %var_2_535, %var_2_536
; Matched:\<badref\>:  store double %var_2_475, double* %var_2_77, align 1, !tbaa !1285
; store double %var_2_537, double* %var_2_79, align 1
; Matched:%var_2_476:  %var_2_476 = load i64, i64* %RBP, align 8
; %var_2_538 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_477:  %var_2_477 = add i64 %var_2_476, -112
; %var_2_539 = add i64 %var_2_538, -112
; Matched:%var_2_478:  %var_2_478 = add i64 %var_2_433, 152
; %var_2_540 = add i64 %var_2_495, 152
; Matched:\<badref\>:  store i64 %var_2_478, i64* %PC, align 8
; store i64 %var_2_540, i64* %var_2_3, align 8
; Matched:%var_2_479:  %var_2_479 = load i64, i64* %var_2_73, align 1
; %var_2_541 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_480:  %var_2_480 = inttoptr i64 %var_2_477 to i64*
; %var_2_542 = inttoptr i64 %var_2_539 to i64*
; Matched:\<badref\>:  store i64 %var_2_479, i64* %var_2_480, align 8
; store i64 %var_2_541, i64* %var_2_542, align 8
%var_2_543 = load i64, i64* %var_2_3, align 8
%var_2_544 = bitcast %union.VectorReg* %var_2_74 to <2 x i32>*
%var_2_545 = load <2 x i32>, <2 x i32>* %var_2_544, align 1
%var_2_546 = bitcast i64* %var_2_81 to <2 x i32>*
%var_2_547 = load <2 x i32>, <2 x i32>* %var_2_546, align 1
%var_2_548 = extractelement <2 x i32> %var_2_545, i32 0
; Matched:\<badref\>:  store i32 %var_2_486, i32* %var_2_144, align 1, !tbaa !1288
; store i32 %var_2_548, i32* %var_2_162, align 1
%var_2_549 = extractelement <2 x i32> %var_2_545, i32 1
; Matched:\<badref\>:  store i32 %var_2_487, i32* %var_2_146, align 1, !tbaa !1288
; store i32 %var_2_549, i32* %var_2_164, align 1
%var_2_550 = extractelement <2 x i32> %var_2_547, i32 0
; Matched:\<badref\>:  store i32 %var_2_488, i32* %var_2_147, align 1, !tbaa !1288
; store i32 %var_2_550, i32* %var_2_165, align 1
%var_2_551 = extractelement <2 x i32> %var_2_547, i32 1
; Matched:\<badref\>:  store i32 %var_2_489, i32* %var_2_149, align 1, !tbaa !1288
; store i32 %var_2_551, i32* %var_2_167, align 1
; Matched:%var_2_490:  %var_2_490 = load i64, i64* %RBP, align 8
; %var_2_552 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_491:  %var_2_491 = add i64 %var_2_490, -112
; %var_2_553 = add i64 %var_2_552, -112
; Matched:%var_2_492:  %var_2_492 = add i64 %var_2_481, 8
; %var_2_554 = add i64 %var_2_543, 8
; Matched:\<badref\>:  store i64 %var_2_206, i64* %PC, align 8
; store i64 %var_2_554, i64* %var_2_3, align 8
; Matched:%var_2_493:  %var_2_493 = inttoptr i64 %var_2_491 to i64*
; %var_2_555 = inttoptr i64 %var_2_553 to i64*
; Matched:%var_2_494:  %var_2_494 = load i64, i64* %var_2_493, align 8
; %var_2_556 = load i64, i64* %var_2_555, align 8
; Matched:\<badref\>:  store i64 %var_2_494, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_556, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_495:  %var_2_495 = add i64 %var_2_481, 13
; %var_2_557 = add i64 %var_2_543, 13
; Matched:\<badref\>:  store i64 %var_2_60, i64* %PC, align 8
; store i64 %var_2_557, i64* %var_2_3, align 8
; Matched:%var_2_496:  %var_2_496 = load i64, i64* %var_2_493, align 8
; %var_2_558 = load i64, i64* %var_2_555, align 8
; Matched:\<badref\>:  store i64 %var_2_496, i64* %var_2_83, align 1, !tbaa !1285
; store i64 %var_2_558, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_85, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i392, align 1
; Matched:%var_2_497:  %var_2_497 = add i64 %var_2_481, -1271
; %var_2_559 = add i64 %var_2_543, -1271
; Matched:%var_2_498:  %var_2_498 = add i64 %var_2_481, 20
; %var_2_560 = add i64 %var_2_543, 20
%var_2_561 = load i64, i64* %var_2_6, align 8
%var_2_562 = add i64 %var_2_561, -8
; Matched:%var_2_501:  %var_2_501 = inttoptr i64 %var_2_500 to i64*
; %var_2_563 = inttoptr i64 %var_2_562 to i64*
; Matched:\<badref\>:  store i64 %var_2_498, i64* %var_2_501, align 8
; store i64 %var_2_560, i64* %var_2_563, align 8
; Matched:\<badref\>:  store i64 %var_2_500, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_562, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_497, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_559, i64* %var_2_3, align 8
%var_2_564 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_160)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_169 to i32*
%var_2_565 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i320, align 8
; Matched:%var_2_504:  %var_2_504 = load i64, i64* %RBP, align 8
; %var_2_566 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_505:  %var_2_505 = add i64 %var_2_504, -116
; %var_2_567 = add i64 %var_2_566, -116
; Matched:%var_2_506:  %var_2_506 = load i32, i32* %EAX, align 4
; %var_2_568 = load i32, i32* %EAX.i387, align 4
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_433, 5
; %var_2_569 = add i64 %var_2_565, 5
; Matched:\<badref\>:  store i64 %var_2_200, i64* %PC, align 8
; store i64 %var_2_569, i64* %var_2_3, align 8
; Matched:%var_2_508:  %var_2_508 = inttoptr i64 %var_2_505 to i32*
; %var_2_570 = inttoptr i64 %var_2_567 to i32*
; Matched:\<badref\>:  store i32 %var_2_506, i32* %var_2_508, align 4
; store i32 %var_2_568, i32* %var_2_570, align 4
; Matched:%var_2_509:  %var_2_509 = load i32, i32* %ECX, align 4
; %var_2_571 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_510:  %var_2_510 = zext i32 %var_2_509 to i64
; %var_2_572 = zext i32 %var_2_571 to i64
%var_2_573 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_510, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_572, i64* %RAX.i261, align 8
; Matched:%var_2_512:  %var_2_512 = load i64, i64* %RSP, align 8
; %var_2_574 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_513:  %var_2_513 = add i64 %var_2_512, 128
; %var_2_575 = add i64 %var_2_574, 128
; Matched:\<badref\>:  store i64 %var_2_513, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_575, i64* %var_2_6, align 8
; Matched:%var_2_514:  %var_2_514 = icmp ugt i64 %var_2_512, -129
; %var_2_576 = icmp ugt i64 %var_2_574, -129
; Matched:%var_2_515:  %var_2_515 = zext i1 %var_2_514 to i8
; %var_2_577 = zext i1 %var_2_576 to i8
; Matched:\<badref\>:  store i8 %var_2_515, i8* %var_2_21, align 1, !tbaa !1265
; store i8 %var_2_577, i8* %var_2_14, align 1
; Matched:%var_2_516:  %var_2_516 = trunc i64 %var_2_513 to i32
; %var_2_578 = trunc i64 %var_2_575 to i32
; Matched:%var_2_517:  %var_2_517 = and i32 %var_2_516, 255
; %var_2_579 = and i32 %var_2_578, 255
; Matched:%var_2_518:  %var_2_518 = tail call i32 @llvm.ctpop.i32(i32 %var_2_517) #11
; %var_2_580 = tail call i32 @llvm.ctpop.i32(i32 %var_2_579)
; Matched:%var_2_519:  %var_2_519 = trunc i32 %var_2_518 to i8
; %var_2_581 = trunc i32 %var_2_580 to i8
; Matched:%var_2_520:  %var_2_520 = and i8 %var_2_519, 1
; %var_2_582 = and i8 %var_2_581, 1
; Matched:%var_2_521:  %var_2_521 = xor i8 %var_2_520, 1
; %var_2_583 = xor i8 %var_2_582, 1
; Matched:\<badref\>:  store i8 %var_2_521, i8* %var_2_28, align 1, !tbaa !1279
; store i8 %var_2_583, i8* %var_2_21, align 1
; Matched:%var_2_522:  %var_2_522 = xor i64 %var_2_513, %var_2_512
; %var_2_584 = xor i64 %var_2_575, %var_2_574
; Matched:%var_2_523:  %var_2_523 = lshr i64 %var_2_522, 4
; %var_2_585 = lshr i64 %var_2_584, 4
; Matched:%var_2_524:  %var_2_524 = trunc i64 %var_2_523 to i8
; %var_2_586 = trunc i64 %var_2_585 to i8
; Matched:%var_2_525:  %var_2_525 = and i8 %var_2_524, 1
; %var_2_587 = and i8 %var_2_586, 1
; Matched:\<badref\>:  store i8 %var_2_525, i8* %var_2_33, align 1, !tbaa !1280
; store i8 %var_2_587, i8* %var_2_26, align 1
; Matched:%var_2_526:  %var_2_526 = icmp eq i64 %var_2_513, 0
; %var_2_588 = icmp eq i64 %var_2_575, 0
; Matched:%var_2_527:  %var_2_527 = zext i1 %var_2_526 to i8
; %var_2_589 = zext i1 %var_2_588 to i8
; Matched:\<badref\>:  store i8 %var_2_527, i8* %var_2_36, align 1, !tbaa !1281
; store i8 %var_2_589, i8* %var_2_29, align 1
; Matched:%var_2_528:  %var_2_528 = lshr i64 %var_2_513, 63
; %var_2_590 = lshr i64 %var_2_575, 63
; Matched:%var_2_529:  %var_2_529 = trunc i64 %var_2_528 to i8
; %var_2_591 = trunc i64 %var_2_590 to i8
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_39, align 1, !tbaa !1282
; store i8 %var_2_591, i8* %var_2_32, align 1
; Matched:%var_2_530:  %var_2_530 = lshr i64 %var_2_512, 63
; %var_2_592 = lshr i64 %var_2_574, 63
; Matched:%var_2_531:  %var_2_531 = xor i64 %var_2_528, %var_2_530
; %var_2_593 = xor i64 %var_2_590, %var_2_592
; Matched:%var_2_532:  %var_2_532 = add nuw nsw i64 %var_2_531, %var_2_528
; %var_2_594 = add nuw nsw i64 %var_2_593, %var_2_590
; Matched:%var_2_533:  %var_2_533 = icmp eq i64 %var_2_532, 2
; %var_2_595 = icmp eq i64 %var_2_594, 2
; Matched:%var_2_534:  %var_2_534 = zext i1 %var_2_533 to i8
; %var_2_596 = zext i1 %var_2_595 to i8
; Matched:\<badref\>:  store i8 %var_2_534, i8* %var_2_45, align 1, !tbaa !1283
; store i8 %var_2_596, i8* %var_2_38, align 1
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_231, 10
; %var_2_597 = add i64 %var_2_573, 10
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8
; store i64 %var_2_597, i64* %var_2_3, align 8
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_512, 136
; %var_2_598 = add i64 %var_2_574, 136
; Matched:%var_2_537:  %var_2_537 = inttoptr i64 %var_2_513 to i64*
; %var_2_599 = inttoptr i64 %var_2_575 to i64*
; Matched:%var_2_538:  %var_2_538 = load i64, i64* %var_2_537, align 8
; %var_2_600 = load i64, i64* %var_2_599, align 8
; Matched:\<badref\>:  store i64 %var_2_538, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_600, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_536, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_598, i64* %var_2_6, align 8
; Matched:%var_2_539:  %var_2_539 = add i64 %var_2_511, 11
; %var_2_601 = add i64 %var_2_573, 11
; Matched:\<badref\>:  store i64 %var_2_539, i64* %PC, align 8
; store i64 %var_2_601, i64* %var_2_3, align 8
; Matched:%var_2_540:  %var_2_540 = inttoptr i64 %var_2_536 to i64*
; %var_2_602 = inttoptr i64 %var_2_598 to i64*
; Matched:%var_2_541:  %var_2_541 = load i64, i64* %var_2_540, align 8
; %var_2_603 = load i64, i64* %var_2_602, align 8
; Matched:\<badref\>:  store i64 %var_2_541, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_603, i64* %var_2_3, align 8
; Matched:%var_2_542:  %var_2_542 = add i64 %var_2_512, 144
; %var_2_604 = add i64 %var_2_574, 144
; Matched:\<badref\>:  store i64 %var_2_542, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_604, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_564
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
define %struct.Memory* @routine_movq__0x400a38___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a38_type* @G__0x400a38 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400a00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a00_type* @G__0x400a00 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400a3a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a3a_type* @G__0x400a3a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x45f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x45f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x45f__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x45f__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x45f__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x45f__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x45f__rip__type* @G_0x45f__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x400a6a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  store i64 %14, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601048___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601048_type* @G_0x601048 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x601048(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601048_type* @G_0x601048 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601058___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601058_type* @G_0x601058 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x601058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601058_type* @G_0x601058 to i64*), align 8
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
define %struct.Memory* @routine_jg_.L_400765(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x601098___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
define %struct.Memory* @routine_addsd_0x601090___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
define %struct.Memory* @routine_addsd_0x601088___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
define %struct.Memory* @routine_addsd_0x601080___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_addsd_0x601078___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601070___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_jmpq_.L_4006a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400a8e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a8e_type* @G__0x400a8e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x27e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x27e__rip__type* @G_0x27e__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x601260___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_0x6012a0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd_0x601098___xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
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
define %struct.Memory* @routine_addsd_0x601090___xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
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
define %struct.Memory* @routine_addsd_0x601088___xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
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
define %struct.Memory* @routine_addsd_0x601080___xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
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
define %struct.Memory* @routine_addsd_0x601078___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_addsd_0x601070___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd__xmm2__0x601298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
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
define %struct.Memory* @routine_movsd_0x601120___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_divsd_0x601120___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd_0x601060___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601058___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601050___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601048___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601040___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601038___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_addsd_0x601030___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*), align 8
  %9 = fadd double %7, %8
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
