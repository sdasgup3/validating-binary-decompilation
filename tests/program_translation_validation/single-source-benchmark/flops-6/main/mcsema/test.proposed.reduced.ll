; ModuleID = '/tmp/tmppor6g12m-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x282__rip__type = type <{ [8 x i8] }>
%G_0x48f__rip__type = type <{ [8 x i8] }>
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
%G__0x400a38_type = type <{ [8 x i8] }>
%G__0x400a70_type = type <{ [8 x i8] }>
%G__0x400a72_type = type <{ [8 x i8] }>
%G__0x400aa2_type = type <{ [8 x i8] }>
%G__0x400ac6_type = type <{ [8 x i8] }>
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
@G_0x282__rip_ = global %G_0x282__rip__type zeroinitializer
@G_0x48f__rip_ = global %G_0x48f__rip__type zeroinitializer
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
@G__0x400a38 = global %G__0x400a38_type zeroinitializer
@G__0x400a70 = global %G__0x400a70_type zeroinitializer
@G__0x400a72 = global %G__0x400a72_type zeroinitializer
@G__0x400aa2 = global %G__0x400aa2_type zeroinitializer
@G__0x400ac6 = global %G__0x400ac6_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

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
  %RDI.i347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x400a70_type* @G__0x400a70 to i64), i64* %RDI.i347, align 8
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
; %AL.i401 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_63:  %var_2_63 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i401, align 1
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, -284
; %var_2_44 = add i64 %var_2_43, -284
; Matched:%var_2_139:  %var_2_139 = add i64 %var_2_137, 7
; %var_2_45 = add i64 %var_2_43, 7
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_68:  %var_2_68 = inttoptr i64 %var_2_67 to i64*
; %var_2_48 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_65, i64* %var_2_68, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:\<badref\>:  store i64 %var_2_67, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_47, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_51, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_49 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_50 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a38_type* @G__0x400a38 to i64), i64* %RDI.i347, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i396 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_58:  %var_2_58 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_58, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_60:  %var_2_60 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i396, align 4
; Matched:%var_2_573:  %var_2_573 = add i64 %var_2_559, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_62:  %var_2_62 = inttoptr i64 %var_2_59 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_60, i32* %var_2_62, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i401, align 1
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -304
; %var_2_57 = add i64 %var_2_56, -304
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_124, 7
; %var_2_58 = add i64 %var_2_56, 7
%var_2_59 = load i64, i64* %var_2_6, align 8
%var_2_60 = add i64 %var_2_59, -8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_54 to i64*
; %var_2_61 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_52, i64* %var_2_55, align 8
; store i64 %var_2_58, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_128, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %var_2_3, align 8
%var_2_62 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_49)
%var_2_63 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400a72_type* @G__0x400a72 to i64), i64* %RDI.i347, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_71:  %var_2_71 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 10)
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
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 18)
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
%var_2_84 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 26)
%var_2_85 = add i64 %var_2_63, 34
store i64 %var_2_85, i64* %var_2_3, align 8
%var_2_86 = inttoptr i64 %var_2_84 to i64*
%var_2_87 = load i64, i64* %var_2_86, align 8
; Matched:%var_2_83:  %var_2_83 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_88 = bitcast %union.VectorReg* %var_2_83 to double*
%var_2_89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_83, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_87, i64* %var_2_89, align 1
; Matched:%var_2_85:  %var_2_85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_86:  %var_2_86 = bitcast i64* %var_2_85 to double*
; %var_2_91 = bitcast i64* %var_2_90 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_93 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 34)
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
%var_2_102 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 42)
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
%var_2_111 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64), i64 50)
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
; Matched:%var_2_102:  %var_2_102 = load i64, i64* %RBP, align 8
; %var_2_119 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_102, -56
; %var_2_120 = add i64 %var_2_119, -56
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_70, 66
; %var_2_121 = add i64 %var_2_63, 66
; Matched:\<badref\>:  store i64 %var_2_104, i64* %PC, align 8
; store i64 %var_2_121, i64* %var_2_3, align 8
; Matched:%var_2_105:  %var_2_105 = inttoptr i64 %var_2_103 to i64*
; %var_2_122 = inttoptr i64 %var_2_120 to i64*
; Matched:\<badref\>:  store i64 15625, i64* %var_2_105, align 8
; store i64 15625, i64* %var_2_122, align 8
; Matched:%var_2_106:  %var_2_106 = load i64, i64* %PC, align 8
; %var_2_123 = load i64, i64* %var_2_3, align 8
%var_2_124 = load i64, i64* %var_2_107, align 1
store i64 %var_2_124, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
; Matched:%var_2_108:  %var_2_108 = load i64, i64* %RBP, align 8
; %var_2_125 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_109:  %var_2_109 = add i64 %var_2_108, -64
; %var_2_126 = add i64 %var_2_125, -64
; Matched:%var_2_110:  %var_2_110 = add i64 %var_2_106, 17
; %var_2_127 = add i64 %var_2_123, 17
; Matched:\<badref\>:  store i64 %var_2_110, i64* %PC, align 8
; store i64 %var_2_127, i64* %var_2_3, align 8
; Matched:%var_2_111:  %var_2_111 = inttoptr i64 %var_2_109 to i64*
; %var_2_128 = inttoptr i64 %var_2_126 to i64*
; Matched:\<badref\>:  store i64 512000000, i64* %var_2_111, align 8
; store i64 512000000, i64* %var_2_128, align 8
%var_2_129 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %var_2_99, align 1
; %var_2_130 = load i64, i64* %var_2_116, align 1
; Matched:\<badref\>:  store i64 %var_2_113, i64* bitcast (%piref_type* @piref to i64*), align 8
; store i64 %var_2_130, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
%var_2_131 = load i64, i64* %var_2_107, align 1
store i64 %var_2_131, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
; Matched:%var_2_115:  %var_2_115 = load i64, i64* %var_2_89, align 1
; %var_2_132 = load i64, i64* %var_2_98, align 1
; Matched:\<badref\>:  store i64 %var_2_115, i64* bitcast (%two_type* @two to i64*), align 8
; store i64 %var_2_132, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
; Matched:%var_2_116:  %var_2_116 = load i64, i64* %var_2_84, align 1
; %var_2_133 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_116, i64* bitcast (%three_type* @three to i64*), align 8
; store i64 %var_2_133, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
; Matched:%var_2_117:  %var_2_117 = load i64, i64* %var_2_79, align 1
; %var_2_134 = load i64, i64* %var_2_80, align 1
; Matched:\<badref\>:  store i64 %var_2_117, i64* bitcast (%four_type* @four to i64*), align 8
; store i64 %var_2_134, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
%var_2_135 = load i64, i64* %var_2_71, align 1
store i64 %var_2_135, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_114, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_131, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
store i64 %var_2_131, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_119:  %var_2_119 = load i64, i64* %RBP, align 8
; %var_2_136 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_119, -96
; %var_2_137 = add i64 %var_2_136, -96
; Matched:%var_2_121:  %var_2_121 = load i32, i32* %EAX, align 4
; %var_2_138 = load i32, i32* %EAX.i396, align 4
; Matched:%var_2_474:  %var_2_474 = add i64 %var_2_447, 75
; %var_2_139 = add i64 %var_2_129, 75
; Matched:\<badref\>:  store i64 %var_2_278, i64* %PC, align 8
; store i64 %var_2_139, i64* %var_2_3, align 8
; Matched:%var_2_123:  %var_2_123 = inttoptr i64 %var_2_120 to i32*
; %var_2_140 = inttoptr i64 %var_2_137 to i32*
; Matched:\<badref\>:  store i32 %var_2_121, i32* %var_2_123, align 4
; store i32 %var_2_138, i32* %var_2_140, align 4
; Matched:%var_2_137:  %var_2_137 = load i64, i64* %PC, align 8
; %var_2_141 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i401, align 1
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_124, -469
; %var_2_142 = add i64 %var_2_141, -469
; Matched:%var_2_52:  %var_2_52 = add i64 %var_2_50, 7
; %var_2_143 = add i64 %var_2_141, 7
%var_2_144 = load i64, i64* %var_2_6, align 8
%var_2_145 = add i64 %var_2_144, -8
; Matched:%var_2_142:  %var_2_142 = inttoptr i64 %var_2_141 to i64*
; %var_2_146 = inttoptr i64 %var_2_145 to i64*
; Matched:\<badref\>:  store i64 %var_2_139, i64* %var_2_142, align 8
; store i64 %var_2_143, i64* %var_2_146, align 8
; Matched:\<badref\>:  store i64 %var_2_54, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_145, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_125, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_142, i64* %var_2_3, align 8
%var_2_147 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_62)
%var_2_148 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400aa2_type* @G__0x400aa2 to i64), i64* %RDI.i347, align 8
; Matched:%var_2_132:  %var_2_132 = load i64, i64* %RBP, align 8
; %var_2_149 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_132, -100
; %var_2_150 = add i64 %var_2_149, -100
; Matched:%var_2_134:  %var_2_134 = load i32, i32* %EAX, align 4
; %var_2_151 = load i32, i32* %EAX.i396, align 4
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_131, 13
; %var_2_152 = add i64 %var_2_148, 13
; Matched:\<badref\>:  store i64 %var_2_573, i64* %PC, align 8
; store i64 %var_2_152, i64* %var_2_3, align 8
; Matched:%var_2_136:  %var_2_136 = inttoptr i64 %var_2_133 to i32*
; %var_2_153 = inttoptr i64 %var_2_150 to i32*
; Matched:\<badref\>:  store i32 %var_2_134, i32* %var_2_136, align 4
; store i32 %var_2_151, i32* %var_2_153, align 4
; Matched:%var_2_124:  %var_2_124 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i401, align 1
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_137, -489
; %var_2_155 = add i64 %var_2_154, -489
; Matched:%var_2_65:  %var_2_65 = add i64 %var_2_63, 7
; %var_2_156 = add i64 %var_2_154, 7
%var_2_157 = load i64, i64* %var_2_6, align 8
%var_2_158 = add i64 %var_2_157, -8
; Matched:%var_2_129:  %var_2_129 = inttoptr i64 %var_2_128 to i64*
; %var_2_159 = inttoptr i64 %var_2_158 to i64*
; Matched:\<badref\>:  store i64 %var_2_126, i64* %var_2_129, align 8
; store i64 %var_2_156, i64* %var_2_159, align 8
; Matched:\<badref\>:  store i64 %var_2_141, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_158, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_155, i64* %var_2_3, align 8
%var_2_160 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_147)
%var_2_161 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_145:  %var_2_145 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
; %var_2_162 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
; Matched:%var_2_146:  %var_2_146 = getelementptr inbounds i8, i8* %var_2_71, i64 4
; %var_2_163 = getelementptr inbounds i8, i8* %var_2_65, i64 4
; Matched:%var_2_147:  %var_2_147 = bitcast i8* %var_2_146 to i32*
; %var_2_164 = bitcast i8* %var_2_163 to i32*
; Matched:%var_2_148:  %var_2_148 = bitcast i64* %var_2_75 to i32*
; %var_2_165 = bitcast i64* %var_2_72 to i32*
; Matched:%var_2_149:  %var_2_149 = getelementptr inbounds i8, i8* %var_2_71, i64 12
; %var_2_166 = getelementptr inbounds i8, i8* %var_2_65, i64 12
; Matched:%var_2_150:  %var_2_150 = bitcast i8* %var_2_149 to i32*
; %var_2_167 = bitcast i8* %var_2_166 to i32*
%var_2_168 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_168, align 1
; Matched:%var_2_152:  %var_2_152 = load i64, i64* %RBP, align 8
; %var_2_169 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_152, -56
; %var_2_170 = add i64 %var_2_169, -56
; Matched:%var_2_617:  %var_2_617 = add i64 %var_2_589, 11
; %var_2_171 = add i64 %var_2_161, 11
; Matched:\<badref\>:  store i64 %var_2_154, i64* %PC, align 8
; store i64 %var_2_171, i64* %var_2_3, align 8
; Matched:%var_2_155:  %var_2_155 = inttoptr i64 %var_2_153 to i64*
; %var_2_172 = inttoptr i64 %var_2_170 to i64*
; Matched:%var_2_156:  %var_2_156 = load i64, i64* %var_2_155, align 8
; %var_2_173 = load i64, i64* %var_2_172, align 8
; Matched:%var_2_157:  %var_2_157 = sext i64 %var_2_156 to i128
; %var_2_174 = sext i64 %var_2_173 to i128
; Matched:%var_2_158:  %var_2_158 = and i128 %var_2_157, -18446744073709551616
; %var_2_175 = and i128 %var_2_174, -18446744073709551616
; Matched:%var_2_159:  %var_2_159 = zext i64 %var_2_156 to i128
; %var_2_176 = zext i64 %var_2_173 to i128
; Matched:%var_2_160:  %var_2_160 = or i128 %var_2_158, %var_2_159
; %var_2_177 = or i128 %var_2_175, %var_2_176
; Matched:%var_2_161:  %var_2_161 = mul nsw i128 %var_2_160, 10000
; %var_2_178 = mul nsw i128 %var_2_177, 10000
; Matched:%var_2_162:  %var_2_162 = trunc i128 %var_2_161 to i64
; %var_2_179 = trunc i128 %var_2_178 to i64
; Matched:\<badref\>:  store i64 %var_2_162, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_179, i64* %RDI.i347, align 8
; Matched:%var_2_163:  %var_2_163 = sext i64 %var_2_162 to i128
; %var_2_180 = sext i64 %var_2_179 to i128
; Matched:%var_2_164:  %var_2_164 = icmp ne i128 %var_2_163, %var_2_161
; %var_2_181 = icmp ne i128 %var_2_180, %var_2_178
; Matched:%var_2_165:  %var_2_165 = zext i1 %var_2_164 to i8
; %var_2_182 = zext i1 %var_2_181 to i8
; Matched:\<badref\>:  store i8 %var_2_165, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_182, i8* %var_2_14, align 1
; Matched:%var_2_166:  %var_2_166 = trunc i128 %var_2_161 to i32
; %var_2_183 = trunc i128 %var_2_178 to i32
; Matched:%var_2_167:  %var_2_167 = and i32 %var_2_166, 240
; %var_2_184 = and i32 %var_2_183, 240
; Matched:%var_2_168:  %var_2_168 = tail call i32 @llvm.ctpop.i32(i32 %var_2_167) #11
; %var_2_185 = tail call i32 @llvm.ctpop.i32(i32 %var_2_184)
; Matched:%var_2_169:  %var_2_169 = trunc i32 %var_2_168 to i8
; %var_2_186 = trunc i32 %var_2_185 to i8
; Matched:%var_2_170:  %var_2_170 = and i8 %var_2_169, 1
; %var_2_187 = and i8 %var_2_186, 1
; Matched:%var_2_171:  %var_2_171 = xor i8 %var_2_170, 1
; %var_2_188 = xor i8 %var_2_187, 1
; Matched:\<badref\>:  store i8 %var_2_171, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_188, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_172:  %var_2_172 = lshr i64 %var_2_162, 63
; %var_2_189 = lshr i64 %var_2_179, 63
; Matched:%var_2_173:  %var_2_173 = trunc i64 %var_2_172 to i8
; %var_2_190 = trunc i64 %var_2_189 to i8
; Matched:\<badref\>:  store i8 %var_2_173, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_190, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_165, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_182, i8* %var_2_38, align 1
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_152, -80
; %var_2_191 = add i64 %var_2_169, -80
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_237, 15
; %var_2_192 = add i64 %var_2_161, 15
; Matched:\<badref\>:  store i64 %var_2_247, i64* %PC, align 8
; store i64 %var_2_192, i64* %var_2_3, align 8
; Matched:%var_2_176:  %var_2_176 = inttoptr i64 %var_2_174 to i64*
; %var_2_193 = inttoptr i64 %var_2_191 to i64*
; Matched:\<badref\>:  store i64 %var_2_162, i64* %var_2_176, align 8
; store i64 %var_2_179, i64* %var_2_193, align 8
; Matched:%var_2_177:  %var_2_177 = load i64, i64* %PC, align 8
; %var_2_194 = load i64, i64* %var_2_3, align 8
%var_2_195 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
store i64 %var_2_195, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_196 = load i64, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
store i64 %var_2_196, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_180:  %var_2_180 = load i64, i64* %RBP, align 8
; %var_2_197 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_181:  %var_2_181 = add i64 %var_2_180, -80
; %var_2_198 = add i64 %var_2_197, -80
; Matched:%var_2_182:  %var_2_182 = add i64 %var_2_177, 24
; %var_2_199 = add i64 %var_2_194, 24
; Matched:\<badref\>:  store i64 %var_2_182, i64* %PC, align 8
; store i64 %var_2_199, i64* %var_2_3, align 8
; Matched:%var_2_183:  %var_2_183 = inttoptr i64 %var_2_181 to i64*
; %var_2_200 = inttoptr i64 %var_2_198 to i64*
; Matched:%var_2_184:  %var_2_184 = load i64, i64* %var_2_183, align 8
; %var_2_201 = load i64, i64* %var_2_200, align 8
; Matched:%var_2_185:  %var_2_185 = sitofp i64 %var_2_184 to double
; %var_2_202 = sitofp i64 %var_2_201 to double
; Matched:\<badref\>:  store double %var_2_185, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_202, double* %var_2_97, align 1
; Matched:%var_2_186:  %var_2_186 = bitcast i64 %var_2_179 to double
; %var_2_203 = bitcast i64 %var_2_196 to double
; Matched:%var_2_187:  %var_2_187 = fmul double %var_2_185, %var_2_186
; %var_2_204 = fmul double %var_2_202, %var_2_203
; Matched:\<badref\>:  store double %var_2_187, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_204, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_85, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_188:  %var_2_188 = bitcast i64 %var_2_178 to double
; %var_2_205 = bitcast i64 %var_2_195 to double
; Matched:%var_2_189:  %var_2_189 = fdiv double %var_2_188, %var_2_187
; %var_2_206 = fdiv double %var_2_205, %var_2_204
; Matched:\<badref\>:  store double %var_2_189, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_206, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_180, -48
; %var_2_207 = add i64 %var_2_197, -48
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_177, 37
; %var_2_208 = add i64 %var_2_194, 37
; Matched:\<badref\>:  store i64 %var_2_191, i64* %PC, align 8
; store i64 %var_2_208, i64* %var_2_3, align 8
; Matched:%var_2_192:  %var_2_192 = inttoptr i64 %var_2_190 to double*
; %var_2_209 = inttoptr i64 %var_2_207 to double*
; Matched:\<badref\>:  store double %var_2_189, double* %var_2_192, align 8
; store double %var_2_206, double* %var_2_209, align 8
; Matched:%var_2_193:  %var_2_193 = load i64, i64* %RBP, align 8
; %var_2_210 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_193, -16
; %var_2_211 = add i64 %var_2_210, -16
%var_2_212 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_296:  %var_2_296 = add i64 %var_2_295, 5
; %var_2_213 = add i64 %var_2_212, 5
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8
; store i64 %var_2_213, i64* %var_2_3, align 8
; Matched:%var_2_197:  %var_2_197 = load i64, i64* %var_2_74, align 1
; %var_2_214 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_198:  %var_2_198 = inttoptr i64 %var_2_194 to i64*
; %var_2_215 = inttoptr i64 %var_2_211 to i64*
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_198, align 8
; store i64 %var_2_214, i64* %var_2_215, align 8
; Matched:%var_2_199:  %var_2_199 = load i64, i64* %RBP, align 8
; %var_2_216 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_199, -32
; %var_2_217 = add i64 %var_2_216, -32
%var_2_218 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_237, 5
; %var_2_219 = add i64 %var_2_218, 5
; Matched:\<badref\>:  store i64 %var_2_296, i64* %PC, align 8
; store i64 %var_2_219, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = load i64, i64* %var_2_74, align 1
; %var_2_220 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_204:  %var_2_204 = inttoptr i64 %var_2_200 to i64*
; %var_2_221 = inttoptr i64 %var_2_217 to i64*
; Matched:\<badref\>:  store i64 %var_2_203, i64* %var_2_204, align 8
; store i64 %var_2_220, i64* %var_2_221, align 8
%var_2_222 = load i64, i64* %RBP.i, align 8
%var_2_223 = add i64 %var_2_222, -72
%var_2_224 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_570:  %var_2_570 = add i64 %var_2_559, 8
; %var_2_225 = add i64 %var_2_224, 8
; Matched:\<badref\>:  store i64 %var_2_208, i64* %PC, align 8
; store i64 %var_2_225, i64* %var_2_3, align 8
%var_2_226 = inttoptr i64 %var_2_223 to i64*
store i64 1, i64* %var_2_226, align 8
; Matched:%var_2_210:  %var_2_210 = load i64, i64* %RBP, align 8
; %var_2_227 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_211:  %var_2_211 = add i64 %var_2_210, -104
; %var_2_228 = add i64 %var_2_227, -104
; Matched:%var_2_212:  %var_2_212 = load i32, i32* %EAX, align 4
; %var_2_229 = load i32, i32* %EAX.i396, align 4
; Matched:%var_2_213:  %var_2_213 = load i64, i64* %PC, align 8
; %var_2_230 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_214:  %var_2_214 = add i64 %var_2_213, 3
; %var_2_231 = add i64 %var_2_230, 3
; Matched:\<badref\>:  store i64 %var_2_214, i64* %PC, align 8
; store i64 %var_2_231, i64* %var_2_3, align 8
; Matched:%var_2_215:  %var_2_215 = inttoptr i64 %var_2_211 to i32*
; %var_2_232 = inttoptr i64 %var_2_228 to i32*
; Matched:\<badref\>:  store i32 %var_2_212, i32* %var_2_215, align 4
; store i32 %var_2_229, i32* %var_2_232, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i298 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
%var_2_233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i295 = getelementptr inbounds %union.anon, %union.anon* %var_2_233, i64 0, i32 0
; Matched:%var_2_11:  %var_2_11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; %var_2_234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; Matched:%var_2_216:  %var_2_216 = bitcast %union.VectorReg* %var_2_11 to double*
; %var_2_235 = bitcast %union.VectorReg* %var_2_234 to double*
; Matched:%var_2_217:  %var_2_217 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_11, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_236 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_234, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_218:  %var_2_218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_219:  %var_2_219 = bitcast i64* %var_2_218 to double*
; %var_2_238 = bitcast i64* %var_2_237 to double*
%var_2_239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
; Matched:%var_2_220:  %var_2_220 = bitcast %union.VectorReg* %var_2_12 to double*
; %var_2_240 = bitcast %union.VectorReg* %var_2_239 to double*
%var_2_241 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_239, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_222:  %var_2_222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; %var_2_242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_223:  %var_2_223 = bitcast i64* %var_2_222 to double*
; %var_2_243 = bitcast i64* %var_2_242 to double*
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400659:                                  ; preds = %block_40066e, %entry
%var_2_244 = phi i64 [ %var_2_440, %block_40066e ], [ %.pre, %entry ]
%var_2_245 = load i64, i64* %RBP.i, align 8
%var_2_246 = add i64 %var_2_245, -72
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_382, 4
; %var_2_247 = add i64 %var_2_244, 4
; Matched:\<badref\>:  store i64 %var_2_385, i64* %PC, align 8
; store i64 %var_2_247, i64* %var_2_3, align 8
%var_2_248 = inttoptr i64 %var_2_246 to i64*
%var_2_249 = load i64, i64* %var_2_248, align 8
; Matched:\<badref\>:  store i64 %var_2_387, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_249, i64* %RAX.i298, align 8
%var_2_250 = add i64 %var_2_245, -80
; Matched:%var_2_389:  %var_2_389 = add i64 %var_2_382, 8
; %var_2_251 = add i64 %var_2_244, 8
; Matched:\<badref\>:  store i64 %var_2_389, i64* %PC, align 8
; store i64 %var_2_251, i64* %var_2_3, align 8
%var_2_252 = inttoptr i64 %var_2_250 to i64*
%var_2_253 = load i64, i64* %var_2_252, align 8
%var_2_254 = add i64 %var_2_253, -1
; Matched:\<badref\>:  store i64 %var_2_392, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_254, i64* %RCX.i295, align 8
%var_2_255 = lshr i64 %var_2_254, 63
%var_2_256 = sub i64 %var_2_249, %var_2_254
; Matched:%var_2_395:  %var_2_395 = icmp ult i64 %var_2_387, %var_2_392
; %var_2_257 = icmp ult i64 %var_2_249, %var_2_254
; Matched:%var_2_396:  %var_2_396 = zext i1 %var_2_395 to i8
; %var_2_258 = zext i1 %var_2_257 to i8
; Matched:\<badref\>:  store i8 %var_2_396, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_258, i8* %var_2_14, align 1
; Matched:%var_2_397:  %var_2_397 = trunc i64 %var_2_394 to i32
; %var_2_259 = trunc i64 %var_2_256 to i32
; Matched:%var_2_398:  %var_2_398 = and i32 %var_2_397, 255
; %var_2_260 = and i32 %var_2_259, 255
; Matched:%var_2_399:  %var_2_399 = tail call i32 @llvm.ctpop.i32(i32 %var_2_398) #11
; %var_2_261 = tail call i32 @llvm.ctpop.i32(i32 %var_2_260)
; Matched:%var_2_400:  %var_2_400 = trunc i32 %var_2_399 to i8
; %var_2_262 = trunc i32 %var_2_261 to i8
; Matched:%var_2_401:  %var_2_401 = and i8 %var_2_400, 1
; %var_2_263 = and i8 %var_2_262, 1
; Matched:%var_2_402:  %var_2_402 = xor i8 %var_2_401, 1
; %var_2_264 = xor i8 %var_2_263, 1
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_264, i8* %var_2_21, align 1
; Matched:%var_2_403:  %var_2_403 = xor i64 %var_2_392, %var_2_387
; %var_2_265 = xor i64 %var_2_254, %var_2_249
; Matched:%var_2_404:  %var_2_404 = xor i64 %var_2_403, %var_2_394
; %var_2_266 = xor i64 %var_2_265, %var_2_256
; Matched:%var_2_405:  %var_2_405 = lshr i64 %var_2_404, 4
; %var_2_267 = lshr i64 %var_2_266, 4
; Matched:%var_2_406:  %var_2_406 = trunc i64 %var_2_405 to i8
; %var_2_268 = trunc i64 %var_2_267 to i8
; Matched:%var_2_407:  %var_2_407 = and i8 %var_2_406, 1
; %var_2_269 = and i8 %var_2_268, 1
; Matched:\<badref\>:  store i8 %var_2_407, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_269, i8* %var_2_26, align 1
%var_2_270 = icmp eq i64 %var_2_256, 0
; Matched:%var_2_409:  %var_2_409 = zext i1 %var_2_408 to i8
; %var_2_271 = zext i1 %var_2_270 to i8
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_271, i8* %var_2_29, align 1
%var_2_272 = lshr i64 %var_2_256, 63
%var_2_273 = trunc i64 %var_2_272 to i8
; Matched:\<badref\>:  store i8 %var_2_411, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_273, i8* %var_2_32, align 1
%var_2_274 = lshr i64 %var_2_249, 63
%var_2_275 = xor i64 %var_2_255, %var_2_274
%var_2_276 = xor i64 %var_2_272, %var_2_274
%var_2_277 = add nuw nsw i64 %var_2_276, %var_2_275
%var_2_278 = icmp eq i64 %var_2_277, 2
; Matched:%var_2_417:  %var_2_417 = zext i1 %var_2_416 to i8
; %var_2_279 = zext i1 %var_2_278 to i8
; Matched:\<badref\>:  store i8 %var_2_417, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_279, i8* %var_2_38, align 1
%var_2_280 = icmp ne i8 %var_2_273, 0
%var_2_281 = xor i1 %var_2_280, %var_2_278
%.demorgan = or i1 %var_2_270, %var_2_281
  %.v = select i1 %.demorgan, i64 21, i64 312
%var_2_282 = add i64 %var_2_244, %.v
; Matched:\<badref\>:  store i64 %var_2_420, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_282, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_40066e, label %block_.L_400791

block_40066e:                                     ; preds = %block_.L_400659
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_420, 6
; %var_2_283 = add i64 %var_2_282, 6
; Matched:\<badref\>:  store i64 %var_2_224, i64* %PC, align 8
; store i64 %var_2_283, i64* %var_2_3, align 8
; Matched:%var_2_225:  %var_2_225 = load i64, i64* %var_2_386, align 8
; %var_2_284 = load i64, i64* %var_2_248, align 8
; Matched:%var_2_226:  %var_2_226 = sitofp i64 %var_2_225 to double
; %var_2_285 = sitofp i64 %var_2_284 to double
; Matched:\<badref\>:  store double %var_2_226, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_285, double* %var_2_70, align 1
; Matched:%var_2_227:  %var_2_227 = add i64 %var_2_383, -48
; %var_2_286 = add i64 %var_2_245, -48
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_420, 11
; %var_2_287 = add i64 %var_2_282, 11
; Matched:\<badref\>:  store i64 %var_2_228, i64* %PC, align 8
; store i64 %var_2_287, i64* %var_2_3, align 8
; Matched:%var_2_229:  %var_2_229 = inttoptr i64 %var_2_227 to double*
; %var_2_288 = inttoptr i64 %var_2_286 to double*
; Matched:%var_2_230:  %var_2_230 = load double, double* %var_2_229, align 8
; %var_2_289 = load double, double* %var_2_288, align 8
; Matched:%var_2_231:  %var_2_231 = fmul double %var_2_226, %var_2_230
; %var_2_290 = fmul double %var_2_285, %var_2_289
; Matched:\<badref\>:  store double %var_2_231, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_290, double* %var_2_70, align 1
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_383, -24
; %var_2_291 = add i64 %var_2_245, -24
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_420, 16
; %var_2_292 = add i64 %var_2_282, 16
; Matched:\<badref\>:  store i64 %var_2_233, i64* %PC, align 8
; store i64 %var_2_292, i64* %var_2_3, align 8
; Matched:%var_2_234:  %var_2_234 = inttoptr i64 %var_2_232 to double*
; %var_2_293 = inttoptr i64 %var_2_291 to double*
; Matched:\<badref\>:  store double %var_2_231, double* %var_2_234, align 8
; store double %var_2_290, double* %var_2_293, align 8
%var_2_294 = load i64, i64* %RBP.i, align 8
%var_2_295 = add i64 %var_2_294, -24
%var_2_296 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_252:  %var_2_252 = add i64 %var_2_251, 5
; %var_2_297 = add i64 %var_2_296, 5
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_297, i64* %var_2_3, align 8
%var_2_298 = inttoptr i64 %var_2_295 to i64*
%var_2_299 = load i64, i64* %var_2_298, align 8
; Matched:\<badref\>:  store i64 %var_2_240, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_299, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_295, 10
; %var_2_300 = add i64 %var_2_296, 10
; Matched:\<badref\>:  store i64 %var_2_437, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_438:  %var_2_438 = bitcast i64 %var_2_436 to double
; %var_2_301 = bitcast i64 %var_2_299 to double
; Matched:%var_2_439:  %var_2_439 = inttoptr i64 %var_2_432 to double*
; %var_2_302 = inttoptr i64 %var_2_295 to double*
; Matched:%var_2_244:  %var_2_244 = load double, double* %var_2_243, align 8
; %var_2_303 = load double, double* %var_2_302, align 8
; Matched:%var_2_245:  %var_2_245 = fmul double %var_2_242, %var_2_244
; %var_2_304 = fmul double %var_2_301, %var_2_303
; Matched:\<badref\>:  store double %var_2_245, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_304, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_235, -40
; %var_2_305 = add i64 %var_2_294, -40
; Matched:%var_2_443:  %var_2_443 = add i64 %var_2_433, 15
; %var_2_306 = add i64 %var_2_296, 15
; Matched:\<badref\>:  store i64 %var_2_443, i64* %PC, align 8
; store i64 %var_2_306, i64* %var_2_3, align 8
; Matched:%var_2_444:  %var_2_444 = inttoptr i64 %var_2_442 to double*
; %var_2_307 = inttoptr i64 %var_2_305 to double*
; Matched:\<badref\>:  store double %var_2_245, double* %var_2_248, align 8
; store double %var_2_304, double* %var_2_307, align 8
%var_2_308 = load i64, i64* %RBP.i, align 8
%var_2_309 = add i64 %var_2_308, -24
%var_2_310 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_195, 5
; %var_2_311 = add i64 %var_2_310, 5
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
%var_2_312 = inttoptr i64 %var_2_309 to i64*
%var_2_313 = load i64, i64* %var_2_312, align 8
; Matched:\<badref\>:  store i64 %var_2_254, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_313, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
%var_2_314 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_314, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_256:  %var_2_256 = add i64 %var_2_249, -40
; %var_2_315 = add i64 %var_2_308, -40
; Matched:%var_2_453:  %var_2_453 = add i64 %var_2_447, 19
; %var_2_316 = add i64 %var_2_310, 19
; Matched:\<badref\>:  store i64 %var_2_453, i64* %PC, align 8
; store i64 %var_2_316, i64* %var_2_3, align 8
; Matched:  %.cast8 = bitcast i64 %var_2_255 to double
; %.cast8 = bitcast i64 %var_2_314 to double
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_256 to double*
; %var_2_317 = inttoptr i64 %var_2_315 to double*
; Matched:%var_2_259:  %var_2_259 = load double, double* %var_2_258, align 8
; %var_2_318 = load double, double* %var_2_317, align 8
; Matched:%var_2_260:  %var_2_260 = fmul double %.cast8, %var_2_259
; %var_2_319 = fmul double %.cast8, %var_2_318
; Matched:%var_2_261:  %var_2_261 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
; %var_2_320 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
; Matched:%var_2_262:  %var_2_262 = fadd double %var_2_260, %var_2_261
; %var_2_321 = fadd double %var_2_319, %var_2_320
; Matched:\<badref\>:  store double %var_2_262, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_321, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_251, 33
; %var_2_322 = add i64 %var_2_310, 33
; Matched:\<badref\>:  store i64 %var_2_263, i64* %PC, align 8
; store i64 %var_2_322, i64* %var_2_3, align 8
; Matched:%var_2_264:  %var_2_264 = load double, double* %var_2_258, align 8
; %var_2_323 = load double, double* %var_2_317, align 8
; Matched:%var_2_265:  %var_2_265 = fmul double %var_2_262, %var_2_264
; %var_2_324 = fmul double %var_2_321, %var_2_323
; Matched:%var_2_266:  %var_2_266 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
; %var_2_325 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
; Matched:%var_2_267:  %var_2_267 = fadd double %var_2_265, %var_2_266
; %var_2_326 = fadd double %var_2_324, %var_2_325
; Matched:\<badref\>:  store double %var_2_267, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_326, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_251, 47
; %var_2_327 = add i64 %var_2_310, 47
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8
; store i64 %var_2_327, i64* %var_2_3, align 8
; Matched:%var_2_269:  %var_2_269 = load double, double* %var_2_258, align 8
; %var_2_328 = load double, double* %var_2_317, align 8
; Matched:%var_2_270:  %var_2_270 = fmul double %var_2_267, %var_2_269
; %var_2_329 = fmul double %var_2_326, %var_2_328
; Matched:%var_2_271:  %var_2_271 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
; %var_2_330 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
; Matched:%var_2_272:  %var_2_272 = fadd double %var_2_270, %var_2_271
; %var_2_331 = fadd double %var_2_329, %var_2_330
; Matched:\<badref\>:  store double %var_2_272, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_331, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_251, 61
; %var_2_332 = add i64 %var_2_310, 61
; Matched:\<badref\>:  store i64 %var_2_273, i64* %PC, align 8
; store i64 %var_2_332, i64* %var_2_3, align 8
; Matched:%var_2_274:  %var_2_274 = load double, double* %var_2_258, align 8
; %var_2_333 = load double, double* %var_2_317, align 8
; Matched:%var_2_275:  %var_2_275 = fmul double %var_2_272, %var_2_274
; %var_2_334 = fmul double %var_2_331, %var_2_333
; Matched:%var_2_276:  %var_2_276 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
; %var_2_335 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
; Matched:%var_2_277:  %var_2_277 = fadd double %var_2_275, %var_2_276
; %var_2_336 = fadd double %var_2_334, %var_2_335
; Matched:\<badref\>:  store double %var_2_277, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_336, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_278:  %var_2_278 = add i64 %var_2_251, 75
; %var_2_337 = add i64 %var_2_310, 75
; Matched:\<badref\>:  store i64 %var_2_474, i64* %PC, align 8
; store i64 %var_2_337, i64* %var_2_3, align 8
; Matched:%var_2_279:  %var_2_279 = load double, double* %var_2_258, align 8
; %var_2_338 = load double, double* %var_2_317, align 8
; Matched:%var_2_280:  %var_2_280 = fmul double %var_2_277, %var_2_279
; %var_2_339 = fmul double %var_2_336, %var_2_338
; Matched:%var_2_281:  %var_2_281 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
; %var_2_340 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
; Matched:%var_2_282:  %var_2_282 = fadd double %var_2_280, %var_2_281
; %var_2_341 = fadd double %var_2_339, %var_2_340
; Matched:\<badref\>:  store double %var_2_282, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_341, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_251, 89
; %var_2_342 = add i64 %var_2_310, 89
; Matched:\<badref\>:  store i64 %var_2_283, i64* %PC, align 8
; store i64 %var_2_342, i64* %var_2_3, align 8
; Matched:%var_2_284:  %var_2_284 = load double, double* %var_2_258, align 8
; %var_2_343 = load double, double* %var_2_317, align 8
; Matched:%var_2_285:  %var_2_285 = fmul double %var_2_282, %var_2_284
; %var_2_344 = fmul double %var_2_341, %var_2_343
; Matched:%var_2_286:  %var_2_286 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_345 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_287:  %var_2_287 = fadd double %var_2_285, %var_2_286
; %var_2_346 = fadd double %var_2_344, %var_2_345
; Matched:\<badref\>:  store double %var_2_287, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_346, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_80, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_288:  %var_2_288 = bitcast i64 %var_2_254 to double
; %var_2_347 = bitcast i64 %var_2_313 to double
; Matched:%var_2_289:  %var_2_289 = fmul double %var_2_287, %var_2_288
; %var_2_348 = fmul double %var_2_346, %var_2_347
; Matched:\<badref\>:  store double %var_2_289, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_348, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_249, -32
; %var_2_349 = add i64 %var_2_308, -32
; Matched:%var_2_291:  %var_2_291 = add i64 %var_2_251, 107
; %var_2_350 = add i64 %var_2_310, 107
; Matched:\<badref\>:  store i64 %var_2_291, i64* %PC, align 8
; store i64 %var_2_350, i64* %var_2_3, align 8
; Matched:%var_2_292:  %var_2_292 = inttoptr i64 %var_2_290 to double*
; %var_2_351 = inttoptr i64 %var_2_349 to double*
; Matched:\<badref\>:  store double %var_2_289, double* %var_2_292, align 8
; store double %var_2_348, double* %var_2_351, align 8
%var_2_352 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_293, -16
; %var_2_353 = add i64 %var_2_352, -16
%var_2_354 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_201, 5
; %var_2_355 = add i64 %var_2_354, 5
; Matched:\<badref\>:  store i64 %var_2_448, i64* %PC, align 8
; store i64 %var_2_355, i64* %var_2_3, align 8
; Matched:%var_2_297:  %var_2_297 = inttoptr i64 %var_2_294 to i64*
; %var_2_356 = inttoptr i64 %var_2_353 to i64*
; Matched:%var_2_298:  %var_2_298 = load i64, i64* %var_2_297, align 8
; %var_2_357 = load i64, i64* %var_2_356, align 8
; Matched:\<badref\>:  store i64 %var_2_298, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_357, i64* %var_2_71, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_293, -32
; %var_2_358 = add i64 %var_2_352, -32
; Matched:%var_2_437:  %var_2_437 = add i64 %var_2_433, 10
; %var_2_359 = add i64 %var_2_354, 10
; Matched:\<badref\>:  store i64 %var_2_613, i64* %PC, align 8
; store i64 %var_2_359, i64* %var_2_3, align 8
; Matched:%var_2_301:  %var_2_301 = inttoptr i64 %var_2_299 to i64*
; %var_2_360 = inttoptr i64 %var_2_358 to i64*
; Matched:%var_2_302:  %var_2_302 = load i64, i64* %var_2_301, align 8
; %var_2_361 = load i64, i64* %var_2_360, align 8
; Matched:\<badref\>:  store i64 %var_2_302, i64* %var_2_79, align 1, !tbaa !1285
; store i64 %var_2_361, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_362 = add i64 %var_2_352, -40
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_144, 15
; %var_2_363 = add i64 %var_2_354, 15
; Matched:\<badref\>:  store i64 %var_2_175, i64* %PC, align 8
; store i64 %var_2_363, i64* %var_2_3, align 8
%var_2_364 = inttoptr i64 %var_2_362 to i64*
; Matched:%var_2_306:  %var_2_306 = load i64, i64* %var_2_305, align 8
; %var_2_365 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_306, i64* %var_2_84, align 1, !tbaa !1285
; store i64 %var_2_365, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_295, 20
; %var_2_366 = add i64 %var_2_354, 20
; Matched:\<badref\>:  store i64 %var_2_307, i64* %PC, align 8
; store i64 %var_2_366, i64* %var_2_3, align 8
%var_2_367 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_308, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_367, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_295, 25
; %var_2_368 = add i64 %var_2_354, 25
; Matched:\<badref\>:  store i64 %var_2_309, i64* %PC, align 8
; store i64 %var_2_368, i64* %var_2_3, align 8
%var_2_369 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_493, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_369, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_311:  %var_2_311 = add i64 %var_2_295, 30
; %var_2_370 = add i64 %var_2_354, 30
; Matched:\<badref\>:  store i64 %var_2_311, i64* %PC, align 8
; store i64 %var_2_370, i64* %var_2_3, align 8
%var_2_371 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_312, i64* %var_2_99, align 1, !tbaa !1285
; store i64 %var_2_371, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_295, 35
; %var_2_372 = add i64 %var_2_354, 35
; Matched:\<badref\>:  store i64 %var_2_313, i64* %PC, align 8
; store i64 %var_2_372, i64* %var_2_3, align 8
%var_2_373 = load i64, i64* %var_2_364, align 8
; Matched:\<badref\>:  store i64 %var_2_314, i64* %var_2_217, align 1, !tbaa !1285
; store i64 %var_2_373, i64* %var_2_236, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_219, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_238, align 1
%var_2_374 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
store i64 %var_2_374, i64* %var_2_241, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_223, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_243, align 1
; Matched:%var_2_316:  %var_2_316 = add i64 %var_2_295, 49
; %var_2_375 = add i64 %var_2_354, 49
; Matched:\<badref\>:  store i64 %var_2_316, i64* %PC, align 8
; store i64 %var_2_375, i64* %var_2_3, align 8
; Matched:  %.cast11 = bitcast i64 %var_2_315 to double
; %.cast12 = bitcast i64 %var_2_374 to double
; Matched:%var_2_317:  %var_2_317 = inttoptr i64 %var_2_303 to double*
; %var_2_376 = inttoptr i64 %var_2_362 to double*
; Matched:%var_2_318:  %var_2_318 = load double, double* %var_2_317, align 8
; %var_2_377 = load double, double* %var_2_376, align 8
; Matched:%var_2_319:  %var_2_319 = fmul double %.cast11, %var_2_318
; %var_2_378 = fmul double %.cast12, %var_2_377
; Matched:%var_2_320:  %var_2_320 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
; %var_2_379 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
; Matched:%var_2_321:  %var_2_321 = fadd double %var_2_319, %var_2_320
; %var_2_380 = fadd double %var_2_378, %var_2_379
; Matched:\<badref\>:  store double %var_2_321, double* %var_2_220, align 1, !tbaa !1285
; store double %var_2_380, double* %var_2_240, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_222, align 1, !tbaa !1285
; store i64 0, i64* %var_2_242, align 1
; Matched:%var_2_322:  %var_2_322 = bitcast i64 %var_2_314 to double
; %var_2_381 = bitcast i64 %var_2_373 to double
; Matched:%var_2_323:  %var_2_323 = fmul double %var_2_321, %var_2_322
; %var_2_382 = fmul double %var_2_380, %var_2_381
; Matched:%var_2_324:  %var_2_324 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
; %var_2_383 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
; Matched:%var_2_325:  %var_2_325 = fadd double %var_2_323, %var_2_324
; %var_2_384 = fadd double %var_2_382, %var_2_383
; Matched:\<badref\>:  store double %var_2_325, double* %var_2_216, align 1, !tbaa !1285
; store double %var_2_384, double* %var_2_235, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_218, align 1, !tbaa !1285
; store i64 0, i64* %var_2_237, align 1
; Matched:%var_2_326:  %var_2_326 = bitcast i64 %var_2_312 to double
; %var_2_385 = bitcast i64 %var_2_371 to double
; Matched:%var_2_327:  %var_2_327 = fmul double %var_2_325, %var_2_326
; %var_2_386 = fmul double %var_2_384, %var_2_385
; Matched:%var_2_328:  %var_2_328 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
; %var_2_387 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
; Matched:%var_2_329:  %var_2_329 = fadd double %var_2_327, %var_2_328
; %var_2_388 = fadd double %var_2_386, %var_2_387
; Matched:\<badref\>:  store double %var_2_329, double* %var_2_98, align 1, !tbaa !1285
; store double %var_2_388, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_100, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
; Matched:%var_2_330:  %var_2_330 = bitcast i64 %var_2_310 to double
; %var_2_389 = bitcast i64 %var_2_369 to double
; Matched:%var_2_331:  %var_2_331 = fmul double %var_2_329, %var_2_330
; %var_2_390 = fmul double %var_2_388, %var_2_389
; Matched:%var_2_332:  %var_2_332 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
; %var_2_391 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
; Matched:%var_2_333:  %var_2_333 = fadd double %var_2_331, %var_2_332
; %var_2_392 = fadd double %var_2_390, %var_2_391
; Matched:\<badref\>:  store double %var_2_333, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_392, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_334:  %var_2_334 = bitcast i64 %var_2_308 to double
; %var_2_393 = bitcast i64 %var_2_367 to double
; Matched:%var_2_335:  %var_2_335 = fmul double %var_2_333, %var_2_334
; %var_2_394 = fmul double %var_2_392, %var_2_393
; Matched:%var_2_336:  %var_2_336 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
; %var_2_395 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
; Matched:%var_2_337:  %var_2_337 = fadd double %var_2_335, %var_2_336
; %var_2_396 = fadd double %var_2_394, %var_2_395
; Matched:\<badref\>:  store double %var_2_337, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_396, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_338:  %var_2_338 = bitcast i64 %var_2_306 to double
; %var_2_397 = bitcast i64 %var_2_365 to double
; Matched:%var_2_339:  %var_2_339 = fmul double %var_2_337, %var_2_338
; %var_2_398 = fmul double %var_2_396, %var_2_397
; Matched:%var_2_340:  %var_2_340 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_399 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_341:  %var_2_341 = fadd double %var_2_339, %var_2_340
; %var_2_400 = fadd double %var_2_398, %var_2_399
; Matched:\<badref\>:  store double %var_2_341, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_400, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_85, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_342:  %var_2_342 = load double, double* %var_2_78, align 1
; %var_2_401 = load double, double* %var_2_79, align 1
; Matched:%var_2_343:  %var_2_343 = fmul double %var_2_341, %var_2_342
; %var_2_402 = fmul double %var_2_400, %var_2_401
; Matched:\<badref\>:  store double %var_2_343, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_402, double* %var_2_79, align 1
; Matched:%var_2_344:  %var_2_344 = load double, double* %var_2_73, align 1
; %var_2_403 = load double, double* %var_2_70, align 1
; Matched:%var_2_345:  %var_2_345 = fadd double %var_2_343, %var_2_344
; %var_2_404 = fadd double %var_2_402, %var_2_403
; Matched:\<badref\>:  store double %var_2_345, double* %var_2_73, align 1, !tbaa !1285
; store double %var_2_404, double* %var_2_70, align 1
; Matched:%var_2_346:  %var_2_346 = load i64, i64* %RBP, align 8
; %var_2_405 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_346, -16
; %var_2_406 = add i64 %var_2_405, -16
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_295, 136
; %var_2_407 = add i64 %var_2_354, 136
; Matched:\<badref\>:  store i64 %var_2_348, i64* %PC, align 8
; store i64 %var_2_407, i64* %var_2_3, align 8
; Matched:%var_2_349:  %var_2_349 = inttoptr i64 %var_2_347 to double*
; %var_2_408 = inttoptr i64 %var_2_406 to double*
; Matched:\<badref\>:  store double %var_2_345, double* %var_2_349, align 8
; store double %var_2_404, double* %var_2_408, align 8
; Matched:%var_2_350:  %var_2_350 = load i64, i64* %RBP, align 8
; %var_2_409 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_351:  %var_2_351 = add i64 %var_2_350, -72
; %var_2_410 = add i64 %var_2_409, -72
; Matched:%var_2_352:  %var_2_352 = load i64, i64* %PC, align 8
; %var_2_411 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_353:  %var_2_353 = add i64 %var_2_352, 4
; %var_2_412 = add i64 %var_2_411, 4
; Matched:\<badref\>:  store i64 %var_2_353, i64* %PC, align 8
; store i64 %var_2_412, i64* %var_2_3, align 8
; Matched:%var_2_354:  %var_2_354 = inttoptr i64 %var_2_351 to i64*
; %var_2_413 = inttoptr i64 %var_2_410 to i64*
; Matched:%var_2_355:  %var_2_355 = load i64, i64* %var_2_354, align 8
; %var_2_414 = load i64, i64* %var_2_413, align 8
; Matched:%var_2_356:  %var_2_356 = add i64 %var_2_355, 1
; %var_2_415 = add i64 %var_2_414, 1
; Matched:\<badref\>:  store i64 %var_2_356, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_415, i64* %RAX.i298, align 8
; Matched:%var_2_357:  %var_2_357 = icmp eq i64 %var_2_355, -1
; %var_2_416 = icmp eq i64 %var_2_414, -1
; Matched:%var_2_358:  %var_2_358 = icmp eq i64 %var_2_356, 0
; %var_2_417 = icmp eq i64 %var_2_415, 0
; Matched:%var_2_359:  %var_2_359 = or i1 %var_2_357, %var_2_358
; %var_2_418 = or i1 %var_2_416, %var_2_417
; Matched:%var_2_360:  %var_2_360 = zext i1 %var_2_359 to i8
; %var_2_419 = zext i1 %var_2_418 to i8
; Matched:\<badref\>:  store i8 %var_2_360, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_419, i8* %var_2_14, align 1
; Matched:%var_2_361:  %var_2_361 = trunc i64 %var_2_356 to i32
; %var_2_420 = trunc i64 %var_2_415 to i32
; Matched:%var_2_362:  %var_2_362 = and i32 %var_2_361, 255
; %var_2_421 = and i32 %var_2_420, 255
; Matched:%var_2_363:  %var_2_363 = tail call i32 @llvm.ctpop.i32(i32 %var_2_362) #11
; %var_2_422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_421)
; Matched:%var_2_364:  %var_2_364 = trunc i32 %var_2_363 to i8
; %var_2_423 = trunc i32 %var_2_422 to i8
; Matched:%var_2_365:  %var_2_365 = and i8 %var_2_364, 1
; %var_2_424 = and i8 %var_2_423, 1
; Matched:%var_2_366:  %var_2_366 = xor i8 %var_2_365, 1
; %var_2_425 = xor i8 %var_2_424, 1
; Matched:\<badref\>:  store i8 %var_2_366, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_425, i8* %var_2_21, align 1
; Matched:%var_2_367:  %var_2_367 = xor i64 %var_2_356, %var_2_355
; %var_2_426 = xor i64 %var_2_415, %var_2_414
; Matched:%var_2_368:  %var_2_368 = lshr i64 %var_2_367, 4
; %var_2_427 = lshr i64 %var_2_426, 4
; Matched:%var_2_369:  %var_2_369 = trunc i64 %var_2_368 to i8
; %var_2_428 = trunc i64 %var_2_427 to i8
; Matched:%var_2_370:  %var_2_370 = and i8 %var_2_369, 1
; %var_2_429 = and i8 %var_2_428, 1
; Matched:\<badref\>:  store i8 %var_2_370, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_429, i8* %var_2_26, align 1
; Matched:%var_2_371:  %var_2_371 = zext i1 %var_2_358 to i8
; %var_2_430 = zext i1 %var_2_417 to i8
; Matched:\<badref\>:  store i8 %var_2_371, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_430, i8* %var_2_29, align 1
; Matched:%var_2_372:  %var_2_372 = lshr i64 %var_2_356, 63
; %var_2_431 = lshr i64 %var_2_415, 63
; Matched:%var_2_373:  %var_2_373 = trunc i64 %var_2_372 to i8
; %var_2_432 = trunc i64 %var_2_431 to i8
; Matched:\<badref\>:  store i8 %var_2_373, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_432, i8* %var_2_32, align 1
; Matched:%var_2_374:  %var_2_374 = lshr i64 %var_2_355, 63
; %var_2_433 = lshr i64 %var_2_414, 63
; Matched:%var_2_375:  %var_2_375 = xor i64 %var_2_372, %var_2_374
; %var_2_434 = xor i64 %var_2_431, %var_2_433
; Matched:%var_2_376:  %var_2_376 = add nuw nsw i64 %var_2_375, %var_2_372
; %var_2_435 = add nuw nsw i64 %var_2_434, %var_2_431
; Matched:%var_2_377:  %var_2_377 = icmp eq i64 %var_2_376, 2
; %var_2_436 = icmp eq i64 %var_2_435, 2
; Matched:%var_2_378:  %var_2_378 = zext i1 %var_2_377 to i8
; %var_2_437 = zext i1 %var_2_436 to i8
; Matched:\<badref\>:  store i8 %var_2_378, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_437, i8* %var_2_38, align 1
; Matched:%var_2_379:  %var_2_379 = add i64 %var_2_352, 12
; %var_2_438 = add i64 %var_2_411, 12
; Matched:\<badref\>:  store i64 %var_2_379, i64* %PC, align 8
; store i64 %var_2_438, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_356, i64* %var_2_354, align 8
; store i64 %var_2_415, i64* %var_2_413, align 8
%var_2_439 = load i64, i64* %var_2_3, align 8
%var_2_440 = add i64 %var_2_439, -307
; Matched:\<badref\>:  store i64 %var_2_381, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_440, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400791:                                  ; preds = %block_.L_400659
  store i64 ptrtoint (%G__0x400ac6_type* @G__0x400ac6 to i64), i64* %RDI.i347, align 8
%var_2_441 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_441, align 1
%var_2_442 = add i64 %var_2_282, add (i64 ptrtoint (%G_0x282__rip__type* @G_0x282__rip_ to i64), i64 13)
%var_2_443 = add i64 %var_2_282, 21
store i64 %var_2_443, i64* %var_2_3, align 8
%var_2_444 = inttoptr i64 %var_2_442 to i64*
%var_2_445 = load i64, i64* %var_2_444, align 8
store i64 %var_2_445, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_446 = add i64 %var_2_282, add (i64 ptrtoint (%G_0x282__rip__type* @G_0x282__rip_ to i64), i64 21)
%var_2_447 = add i64 %var_2_282, 29
store i64 %var_2_447, i64* %var_2_3, align 8
%var_2_448 = inttoptr i64 %var_2_446 to i64*
%var_2_449 = load i64, i64* %var_2_448, align 8
store i64 %var_2_449, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_425:  %var_2_425 = load double, double* bitcast (%piref_type* @piref to double*), align 8
; %var_2_450 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
; Matched:%var_2_426:  %var_2_426 = load double, double* bitcast (%four_type* @four to double*), align 8
; %var_2_451 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*), align 8
; Matched:%var_2_427:  %var_2_427 = fdiv double %var_2_425, %var_2_426
; %var_2_452 = fdiv double %var_2_450, %var_2_451
; Matched:\<badref\>:  store double %var_2_427, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_452, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_383, -24
; %var_2_453 = add i64 %var_2_245, -24
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_420, 52
; %var_2_454 = add i64 %var_2_282, 52
; Matched:\<badref\>:  store i64 %var_2_429, i64* %PC, align 8
; store i64 %var_2_454, i64* %var_2_3, align 8
; Matched:%var_2_430:  %var_2_430 = inttoptr i64 %var_2_428 to double*
; %var_2_455 = inttoptr i64 %var_2_453 to double*
; Matched:\<badref\>:  store double %var_2_427, double* %var_2_430, align 8
; store double %var_2_452, double* %var_2_455, align 8
%var_2_456 = load i64, i64* %RBP.i, align 8
%var_2_457 = add i64 %var_2_456, -24
%var_2_458 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_434:  %var_2_434 = add i64 %var_2_433, 5
; %var_2_459 = add i64 %var_2_458, 5
; Matched:\<badref\>:  store i64 %var_2_252, i64* %PC, align 8
; store i64 %var_2_459, i64* %var_2_3, align 8
%var_2_460 = inttoptr i64 %var_2_457 to i64*
%var_2_461 = load i64, i64* %var_2_460, align 8
; Matched:\<badref\>:  store i64 %var_2_436, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_461, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_613:  %var_2_613 = add i64 %var_2_589, 10
; %var_2_462 = add i64 %var_2_458, 10
; Matched:\<badref\>:  store i64 %var_2_300, i64* %PC, align 8
; store i64 %var_2_462, i64* %var_2_3, align 8
; Matched:%var_2_242:  %var_2_242 = bitcast i64 %var_2_240 to double
; %var_2_463 = bitcast i64 %var_2_461 to double
; Matched:%var_2_243:  %var_2_243 = inttoptr i64 %var_2_236 to double*
; %var_2_464 = inttoptr i64 %var_2_457 to double*
; Matched:%var_2_440:  %var_2_440 = load double, double* %var_2_439, align 8
; %var_2_465 = load double, double* %var_2_464, align 8
; Matched:%var_2_441:  %var_2_441 = fmul double %var_2_438, %var_2_440
; %var_2_466 = fmul double %var_2_463, %var_2_465
; Matched:\<badref\>:  store double %var_2_441, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_466, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_431, -40
; %var_2_467 = add i64 %var_2_456, -40
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_295, 15
; %var_2_468 = add i64 %var_2_458, 15
; Matched:\<badref\>:  store i64 %var_2_304, i64* %PC, align 8
; store i64 %var_2_468, i64* %var_2_3, align 8
; Matched:%var_2_248:  %var_2_248 = inttoptr i64 %var_2_246 to double*
; %var_2_469 = inttoptr i64 %var_2_467 to double*
; Matched:\<badref\>:  store double %var_2_441, double* %var_2_444, align 8
; store double %var_2_466, double* %var_2_469, align 8
%var_2_470 = load i64, i64* %RBP.i, align 8
%var_2_471 = add i64 %var_2_470, -24
%var_2_472 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_448:  %var_2_448 = add i64 %var_2_447, 5
; %var_2_473 = add i64 %var_2_472, 5
; Matched:\<badref\>:  store i64 %var_2_196, i64* %PC, align 8
; store i64 %var_2_473, i64* %var_2_3, align 8
%var_2_474 = inttoptr i64 %var_2_471 to i64*
%var_2_475 = load i64, i64* %var_2_474, align 8
; Matched:\<badref\>:  store i64 %var_2_450, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_475, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_476 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_476, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_477 = add i64 %var_2_470, -40
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_251, 19
; %var_2_478 = add i64 %var_2_472, 19
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_478, i64* %var_2_3, align 8
%.cast9 = bitcast i64 %var_2_476 to double
%var_2_479 = inttoptr i64 %var_2_477 to double*
%var_2_480 = load double, double* %var_2_479, align 8
%var_2_481 = fmul double %.cast9, %var_2_480
%var_2_482 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
%var_2_483 = fadd double %var_2_481, %var_2_482
; Matched:\<badref\>:  store double %var_2_458, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_483, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_459:  %var_2_459 = add i64 %var_2_447, 33
; %var_2_484 = add i64 %var_2_472, 33
; Matched:\<badref\>:  store i64 %var_2_459, i64* %PC, align 8
; store i64 %var_2_484, i64* %var_2_3, align 8
%var_2_485 = load double, double* %var_2_479, align 8
%var_2_486 = fmul double %var_2_483, %var_2_485
%var_2_487 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
%var_2_488 = fadd double %var_2_486, %var_2_487
; Matched:\<badref\>:  store double %var_2_463, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_488, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_464:  %var_2_464 = add i64 %var_2_447, 47
; %var_2_489 = add i64 %var_2_472, 47
; Matched:\<badref\>:  store i64 %var_2_464, i64* %PC, align 8
; store i64 %var_2_489, i64* %var_2_3, align 8
%var_2_490 = load double, double* %var_2_479, align 8
%var_2_491 = fmul double %var_2_488, %var_2_490
%var_2_492 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
%var_2_493 = fadd double %var_2_491, %var_2_492
; Matched:\<badref\>:  store double %var_2_468, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_493, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_469:  %var_2_469 = add i64 %var_2_447, 61
; %var_2_494 = add i64 %var_2_472, 61
; Matched:\<badref\>:  store i64 %var_2_469, i64* %PC, align 8
; store i64 %var_2_494, i64* %var_2_3, align 8
%var_2_495 = load double, double* %var_2_479, align 8
%var_2_496 = fmul double %var_2_493, %var_2_495
%var_2_497 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
%var_2_498 = fadd double %var_2_496, %var_2_497
; Matched:\<badref\>:  store double %var_2_473, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_498, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_112, 75
; %var_2_499 = add i64 %var_2_472, 75
; Matched:\<badref\>:  store i64 %var_2_122, i64* %PC, align 8
; store i64 %var_2_499, i64* %var_2_3, align 8
%var_2_500 = load double, double* %var_2_479, align 8
%var_2_501 = fmul double %var_2_498, %var_2_500
%var_2_502 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
%var_2_503 = fadd double %var_2_501, %var_2_502
; Matched:\<badref\>:  store double %var_2_478, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_503, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_447, 89
; %var_2_504 = add i64 %var_2_472, 89
; Matched:\<badref\>:  store i64 %var_2_479, i64* %PC, align 8
; store i64 %var_2_504, i64* %var_2_3, align 8
%var_2_505 = load double, double* %var_2_479, align 8
%var_2_506 = fmul double %var_2_503, %var_2_505
%var_2_507 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_508 = fadd double %var_2_506, %var_2_507
; Matched:\<badref\>:  store double %var_2_483, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_508, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_509 = bitcast i64 %var_2_475 to double
%var_2_510 = fmul double %var_2_508, %var_2_509
; Matched:\<badref\>:  store double %var_2_485, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_510, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_510, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_447, 116
; %var_2_511 = add i64 %var_2_472, 116
; Matched:\<badref\>:  store i64 %var_2_486, i64* %PC, align 8
; store i64 %var_2_511, i64* %var_2_3, align 8
%var_2_512 = inttoptr i64 %var_2_477 to i64*
%var_2_513 = load i64, i64* %var_2_512, align 8
; Matched:\<badref\>:  store i64 %var_2_488, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_513, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_514 = load i64, i64* %RBP.i, align 8
%var_2_515 = add i64 %var_2_514, -40
; Matched:%var_2_491:  %var_2_491 = add i64 %var_2_447, 121
; %var_2_516 = add i64 %var_2_472, 121
; Matched:\<badref\>:  store i64 %var_2_491, i64* %PC, align 8
; store i64 %var_2_516, i64* %var_2_3, align 8
%var_2_517 = inttoptr i64 %var_2_515 to i64*
%var_2_518 = load i64, i64* %var_2_517, align 8
; Matched:\<badref\>:  store i64 %var_2_310, i64* %var_2_94, align 1, !tbaa !1285
; store i64 %var_2_518, i64* %var_2_107, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
; Matched:%var_2_494:  %var_2_494 = add i64 %var_2_447, 126
; %var_2_519 = add i64 %var_2_472, 126
; Matched:\<badref\>:  store i64 %var_2_494, i64* %PC, align 8
; store i64 %var_2_519, i64* %var_2_3, align 8
%var_2_520 = load i64, i64* %var_2_517, align 8
; Matched:\<badref\>:  store i64 %var_2_495, i64* %var_2_99, align 1, !tbaa !1285
; store i64 %var_2_520, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
; Matched:%var_2_496:  %var_2_496 = add i64 %var_2_447, 131
; %var_2_521 = add i64 %var_2_472, 131
; Matched:\<badref\>:  store i64 %var_2_496, i64* %PC, align 8
; store i64 %var_2_521, i64* %var_2_3, align 8
%var_2_522 = load i64, i64* %var_2_517, align 8
; Matched:\<badref\>:  store i64 %var_2_497, i64* %var_2_217, align 1, !tbaa !1285
; store i64 %var_2_522, i64* %var_2_236, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_219, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_238, align 1
; Matched:%var_2_498:  %var_2_498 = add i64 %var_2_447, 136
; %var_2_523 = add i64 %var_2_472, 136
; Matched:\<badref\>:  store i64 %var_2_498, i64* %PC, align 8
; store i64 %var_2_523, i64* %var_2_3, align 8
%var_2_524 = load i64, i64* %var_2_517, align 8
; Matched:\<badref\>:  store i64 %var_2_499, i64* %var_2_221, align 1, !tbaa !1285
; store i64 %var_2_524, i64* %var_2_241, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_223, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_243, align 1
; Matched:%var_2_421:  %var_2_421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
; %var_2_525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
%var_2_526 = load i64, i64* bitcast (%G_0x601098_type* @G_0x601098 to i64*), align 8
; Matched:%var_2_501:  %var_2_501 = bitcast %union.VectorReg* %var_2_421 to double*
; %var_2_527 = bitcast %union.VectorReg* %var_2_525 to double*
; Matched:%var_2_502:  %var_2_502 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_421, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_528 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_525, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_500, i64* %var_2_502, align 1, !tbaa !1285
; store i64 %var_2_526, i64* %var_2_528, align 1
; Matched:%var_2_503:  %var_2_503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; %var_2_529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_504:  %var_2_504 = bitcast i64* %var_2_503 to double*
; %var_2_530 = bitcast i64* %var_2_529 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_504, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_530, align 1
; Matched:%var_2_505:  %var_2_505 = add i64 %var_2_447, 152
; %var_2_531 = add i64 %var_2_472, 152
; Matched:\<badref\>:  store i64 %var_2_505, i64* %PC, align 8
; store i64 %var_2_531, i64* %var_2_3, align 8
%var_2_532 = bitcast i64 %var_2_526 to double
%var_2_533 = inttoptr i64 %var_2_515 to double*
%var_2_534 = load double, double* %var_2_533, align 8
%var_2_535 = fmul double %var_2_532, %var_2_534
%var_2_536 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*), align 8
%var_2_537 = fadd double %var_2_535, %var_2_536
; Matched:\<badref\>:  store double %var_2_511, double* %var_2_501, align 1, !tbaa !1285
; store double %var_2_537, double* %var_2_527, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_503, align 1, !tbaa !1285
; store i64 0, i64* %var_2_529, align 1
%var_2_538 = bitcast i64 %var_2_524 to double
%var_2_539 = fmul double %var_2_537, %var_2_538
%var_2_540 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*), align 8
%var_2_541 = fadd double %var_2_539, %var_2_540
; Matched:\<badref\>:  store double %var_2_515, double* %var_2_220, align 1, !tbaa !1285
; store double %var_2_541, double* %var_2_240, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_222, align 1, !tbaa !1285
; store i64 0, i64* %var_2_242, align 1
%var_2_542 = bitcast i64 %var_2_522 to double
%var_2_543 = fmul double %var_2_541, %var_2_542
%var_2_544 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*), align 8
%var_2_545 = fadd double %var_2_543, %var_2_544
; Matched:\<badref\>:  store double %var_2_519, double* %var_2_216, align 1, !tbaa !1285
; store double %var_2_545, double* %var_2_235, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_218, align 1, !tbaa !1285
; store i64 0, i64* %var_2_237, align 1
%var_2_546 = bitcast i64 %var_2_520 to double
%var_2_547 = fmul double %var_2_545, %var_2_546
%var_2_548 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*), align 8
%var_2_549 = fadd double %var_2_547, %var_2_548
; Matched:\<badref\>:  store double %var_2_523, double* %var_2_98, align 1, !tbaa !1285
; store double %var_2_549, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_100, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
%var_2_550 = bitcast i64 %var_2_518 to double
%var_2_551 = fmul double %var_2_549, %var_2_550
%var_2_552 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*), align 8
%var_2_553 = fadd double %var_2_551, %var_2_552
; Matched:\<badref\>:  store double %var_2_527, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_553, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_554 = bitcast i64 %var_2_513 to double
%var_2_555 = fmul double %var_2_553, %var_2_554
%var_2_556 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_557 = fadd double %var_2_555, %var_2_556
store double %var_2_557, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
%var_2_558 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_559 = fmul double %var_2_558, %var_2_557
; Matched:\<badref\>:  store double %var_2_533, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_559, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_559, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_560 = load i64, i64* %RBP.i, align 8
%var_2_561 = add i64 %var_2_560, -48
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_447, 269
; %var_2_562 = add i64 %var_2_472, 269
; Matched:\<badref\>:  store i64 %var_2_536, i64* %PC, align 8
; store i64 %var_2_562, i64* %var_2_3, align 8
%var_2_563 = inttoptr i64 %var_2_561 to i64*
%var_2_564 = load i64, i64* %var_2_563, align 8
; Matched:\<badref\>:  store i64 %var_2_538, i64* %var_2_89, align 1, !tbaa !1285
; store i64 %var_2_564, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_91, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_539:  %var_2_539 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_565 = bitcast %union.VectorReg* %var_2_101 to double*
; Matched:\<badref\>:  store double %var_2_533, double* %var_2_539, align 1, !tbaa !1285
; store double %var_2_559, double* %var_2_565, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_96, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_109, align 1
%var_2_566 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
store i64 %var_2_566, i64* %var_2_116, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_101, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_118, align 1
%var_2_567 = add i64 %var_2_560, -16
; Matched:%var_2_542:  %var_2_542 = add i64 %var_2_447, 292
; %var_2_568 = add i64 %var_2_472, 292
; Matched:\<badref\>:  store i64 %var_2_542, i64* %PC, align 8
; store i64 %var_2_568, i64* %var_2_3, align 8
%.cast10 = bitcast i64 %var_2_566 to double
%var_2_569 = inttoptr i64 %var_2_567 to double*
%var_2_570 = load double, double* %var_2_569, align 8
%var_2_571 = fmul double %.cast10, %var_2_570
; Matched:\<badref\>:  store double %var_2_545, double* %var_2_98, align 1, !tbaa !1285
; store double %var_2_571, double* %var_2_115, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_100, align 1, !tbaa !1285
; store i64 0, i64* %var_2_117, align 1
%var_2_572 = fadd double %var_2_559, %var_2_571
; Matched:\<badref\>:  store double %var_2_546, double* %var_2_93, align 1, !tbaa !1285
; store double %var_2_572, double* %var_2_106, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_95, align 1, !tbaa !1285
; store i64 0, i64* %var_2_108, align 1
%var_2_573 = bitcast i64 %var_2_564 to double
%var_2_574 = fmul double %var_2_573, %var_2_572
%var_2_575 = fdiv double %var_2_574, %.cast10
; Matched:\<badref\>:  store double %var_2_549, double* %var_2_88, align 1, !tbaa !1285
; store double %var_2_575, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_90, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_575, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_576 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_550, i64* bitcast (%sb_type* @sb to i64*), align 8
; store i64 %var_2_576, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
%var_2_577 = bitcast i64 %var_2_576 to double
%var_2_578 = fsub double %var_2_575, %var_2_577
; Matched:\<badref\>:  store double %var_2_552, double* %var_2_83, align 1, !tbaa !1285
; store double %var_2_578, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_85, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
store double %var_2_578, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_553:  %var_2_553 = load double, double* %var_2_78, align 1
; %var_2_579 = load double, double* %var_2_79, align 1
; Matched:%var_2_554:  %var_2_554 = fmul double %var_2_552, %var_2_553
; %var_2_580 = fmul double %var_2_578, %var_2_579
; Matched:\<badref\>:  store double %var_2_554, double* %var_2_78, align 1, !tbaa !1285
; store double %var_2_580, double* %var_2_79, align 1
; Matched:%var_2_555:  %var_2_555 = add i64 %var_2_534, -112
; %var_2_581 = add i64 %var_2_560, -112
; Matched:%var_2_556:  %var_2_556 = add i64 %var_2_447, 368
; %var_2_582 = add i64 %var_2_472, 368
; Matched:\<badref\>:  store i64 %var_2_556, i64* %PC, align 8
; store i64 %var_2_582, i64* %var_2_3, align 8
; Matched:%var_2_557:  %var_2_557 = load i64, i64* %var_2_74, align 1
; %var_2_583 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_558:  %var_2_558 = inttoptr i64 %var_2_555 to i64*
; %var_2_584 = inttoptr i64 %var_2_581 to i64*
; Matched:\<badref\>:  store i64 %var_2_557, i64* %var_2_558, align 8
; store i64 %var_2_583, i64* %var_2_584, align 8
%var_2_585 = load i64, i64* %var_2_3, align 8
%var_2_586 = bitcast %union.VectorReg* %var_2_74 to <2 x i32>*
%var_2_587 = load <2 x i32>, <2 x i32>* %var_2_586, align 1
%var_2_588 = bitcast i64* %var_2_81 to <2 x i32>*
%var_2_589 = load <2 x i32>, <2 x i32>* %var_2_588, align 1
%var_2_590 = extractelement <2 x i32> %var_2_587, i32 0
; Matched:\<badref\>:  store i32 %var_2_564, i32* %var_2_145, align 1, !tbaa !1288
; store i32 %var_2_590, i32* %var_2_162, align 1
%var_2_591 = extractelement <2 x i32> %var_2_587, i32 1
; Matched:\<badref\>:  store i32 %var_2_565, i32* %var_2_147, align 1, !tbaa !1288
; store i32 %var_2_591, i32* %var_2_164, align 1
%var_2_592 = extractelement <2 x i32> %var_2_589, i32 0
; Matched:\<badref\>:  store i32 %var_2_566, i32* %var_2_148, align 1, !tbaa !1288
; store i32 %var_2_592, i32* %var_2_165, align 1
%var_2_593 = extractelement <2 x i32> %var_2_589, i32 1
; Matched:\<badref\>:  store i32 %var_2_567, i32* %var_2_150, align 1, !tbaa !1288
; store i32 %var_2_593, i32* %var_2_167, align 1
; Matched:%var_2_568:  %var_2_568 = load i64, i64* %RBP, align 8
; %var_2_594 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_569:  %var_2_569 = add i64 %var_2_568, -112
; %var_2_595 = add i64 %var_2_594, -112
; Matched:%var_2_208:  %var_2_208 = add i64 %var_2_207, 8
; %var_2_596 = add i64 %var_2_585, 8
; Matched:\<badref\>:  store i64 %var_2_570, i64* %PC, align 8
; store i64 %var_2_596, i64* %var_2_3, align 8
; Matched:%var_2_571:  %var_2_571 = inttoptr i64 %var_2_569 to i64*
; %var_2_597 = inttoptr i64 %var_2_595 to i64*
; Matched:%var_2_572:  %var_2_572 = load i64, i64* %var_2_571, align 8
; %var_2_598 = load i64, i64* %var_2_597, align 8
; Matched:\<badref\>:  store i64 %var_2_572, i64* %var_2_79, align 1, !tbaa !1285
; store i64 %var_2_598, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_81, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_57, 13
; %var_2_599 = add i64 %var_2_585, 13
; Matched:\<badref\>:  store i64 %var_2_135, i64* %PC, align 8
; store i64 %var_2_599, i64* %var_2_3, align 8
; Matched:%var_2_574:  %var_2_574 = load i64, i64* %var_2_571, align 8
; %var_2_600 = load i64, i64* %var_2_597, align 8
; Matched:\<badref\>:  store i64 %var_2_574, i64* %var_2_84, align 1, !tbaa !1285
; store i64 %var_2_600, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_86, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i401, align 1
; Matched:%var_2_575:  %var_2_575 = add i64 %var_2_559, -1316
; %var_2_601 = add i64 %var_2_585, -1316
; Matched:%var_2_576:  %var_2_576 = add i64 %var_2_559, 20
; %var_2_602 = add i64 %var_2_585, 20
%var_2_603 = load i64, i64* %var_2_6, align 8
%var_2_604 = add i64 %var_2_603, -8
; Matched:%var_2_579:  %var_2_579 = inttoptr i64 %var_2_578 to i64*
; %var_2_605 = inttoptr i64 %var_2_604 to i64*
; Matched:\<badref\>:  store i64 %var_2_576, i64* %var_2_579, align 8
; store i64 %var_2_602, i64* %var_2_605, align 8
; Matched:\<badref\>:  store i64 %var_2_578, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_604, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_575, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_601, i64* %var_2_3, align 8
%var_2_606 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_160)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_233 to i32*
%var_2_607 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i295, align 8
; Matched:%var_2_582:  %var_2_582 = load i64, i64* %RBP, align 8
; %var_2_608 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_583:  %var_2_583 = add i64 %var_2_582, -116
; %var_2_609 = add i64 %var_2_608, -116
; Matched:%var_2_584:  %var_2_584 = load i32, i32* %EAX, align 4
; %var_2_610 = load i32, i32* %EAX.i396, align 4
; Matched:%var_2_585:  %var_2_585 = add i64 %var_2_581, 5
; %var_2_611 = add i64 %var_2_607, 5
; Matched:\<badref\>:  store i64 %var_2_585, i64* %PC, align 8
; store i64 %var_2_611, i64* %var_2_3, align 8
; Matched:%var_2_586:  %var_2_586 = inttoptr i64 %var_2_583 to i32*
; %var_2_612 = inttoptr i64 %var_2_609 to i32*
; Matched:\<badref\>:  store i32 %var_2_584, i32* %var_2_586, align 4
; store i32 %var_2_610, i32* %var_2_612, align 4
; Matched:%var_2_587:  %var_2_587 = load i32, i32* %ECX, align 4
; %var_2_613 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_588:  %var_2_588 = zext i32 %var_2_587 to i64
; %var_2_614 = zext i32 %var_2_613 to i64
%var_2_615 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_588, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_614, i64* %RAX.i298, align 8
; Matched:%var_2_590:  %var_2_590 = load i64, i64* %RSP, align 8
; %var_2_616 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_591:  %var_2_591 = add i64 %var_2_590, 128
; %var_2_617 = add i64 %var_2_616, 128
; Matched:\<badref\>:  store i64 %var_2_591, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_617, i64* %var_2_6, align 8
; Matched:%var_2_592:  %var_2_592 = icmp ugt i64 %var_2_590, -129
; %var_2_618 = icmp ugt i64 %var_2_616, -129
; Matched:%var_2_593:  %var_2_593 = zext i1 %var_2_592 to i8
; %var_2_619 = zext i1 %var_2_618 to i8
; Matched:\<badref\>:  store i8 %var_2_593, i8* %var_2_22, align 1, !tbaa !1265
; store i8 %var_2_619, i8* %var_2_14, align 1
; Matched:%var_2_594:  %var_2_594 = trunc i64 %var_2_591 to i32
; %var_2_620 = trunc i64 %var_2_617 to i32
; Matched:%var_2_595:  %var_2_595 = and i32 %var_2_594, 255
; %var_2_621 = and i32 %var_2_620, 255
; Matched:%var_2_596:  %var_2_596 = tail call i32 @llvm.ctpop.i32(i32 %var_2_595) #11
; %var_2_622 = tail call i32 @llvm.ctpop.i32(i32 %var_2_621)
; Matched:%var_2_597:  %var_2_597 = trunc i32 %var_2_596 to i8
; %var_2_623 = trunc i32 %var_2_622 to i8
; Matched:%var_2_598:  %var_2_598 = and i8 %var_2_597, 1
; %var_2_624 = and i8 %var_2_623, 1
; Matched:%var_2_599:  %var_2_599 = xor i8 %var_2_598, 1
; %var_2_625 = xor i8 %var_2_624, 1
; Matched:\<badref\>:  store i8 %var_2_599, i8* %var_2_29, align 1, !tbaa !1279
; store i8 %var_2_625, i8* %var_2_21, align 1
; Matched:%var_2_600:  %var_2_600 = xor i64 %var_2_591, %var_2_590
; %var_2_626 = xor i64 %var_2_617, %var_2_616
; Matched:%var_2_601:  %var_2_601 = lshr i64 %var_2_600, 4
; %var_2_627 = lshr i64 %var_2_626, 4
; Matched:%var_2_602:  %var_2_602 = trunc i64 %var_2_601 to i8
; %var_2_628 = trunc i64 %var_2_627 to i8
; Matched:%var_2_603:  %var_2_603 = and i8 %var_2_602, 1
; %var_2_629 = and i8 %var_2_628, 1
; Matched:\<badref\>:  store i8 %var_2_603, i8* %var_2_34, align 1, !tbaa !1280
; store i8 %var_2_629, i8* %var_2_26, align 1
; Matched:%var_2_604:  %var_2_604 = icmp eq i64 %var_2_591, 0
; %var_2_630 = icmp eq i64 %var_2_617, 0
; Matched:%var_2_605:  %var_2_605 = zext i1 %var_2_604 to i8
; %var_2_631 = zext i1 %var_2_630 to i8
; Matched:\<badref\>:  store i8 %var_2_605, i8* %var_2_37, align 1, !tbaa !1281
; store i8 %var_2_631, i8* %var_2_29, align 1
; Matched:%var_2_606:  %var_2_606 = lshr i64 %var_2_591, 63
; %var_2_632 = lshr i64 %var_2_617, 63
; Matched:%var_2_607:  %var_2_607 = trunc i64 %var_2_606 to i8
; %var_2_633 = trunc i64 %var_2_632 to i8
; Matched:\<badref\>:  store i8 %var_2_607, i8* %var_2_40, align 1, !tbaa !1282
; store i8 %var_2_633, i8* %var_2_32, align 1
; Matched:%var_2_608:  %var_2_608 = lshr i64 %var_2_590, 63
; %var_2_634 = lshr i64 %var_2_616, 63
; Matched:%var_2_609:  %var_2_609 = xor i64 %var_2_606, %var_2_608
; %var_2_635 = xor i64 %var_2_632, %var_2_634
; Matched:%var_2_610:  %var_2_610 = add nuw nsw i64 %var_2_609, %var_2_606
; %var_2_636 = add nuw nsw i64 %var_2_635, %var_2_632
; Matched:%var_2_611:  %var_2_611 = icmp eq i64 %var_2_610, 2
; %var_2_637 = icmp eq i64 %var_2_636, 2
; Matched:%var_2_612:  %var_2_612 = zext i1 %var_2_611 to i8
; %var_2_638 = zext i1 %var_2_637 to i8
; Matched:\<badref\>:  store i8 %var_2_612, i8* %var_2_46, align 1, !tbaa !1283
; store i8 %var_2_638, i8* %var_2_38, align 1
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_237, 10
; %var_2_639 = add i64 %var_2_615, 10
; Matched:\<badref\>:  store i64 %var_2_241, i64* %PC, align 8
; store i64 %var_2_639, i64* %var_2_3, align 8
; Matched:%var_2_614:  %var_2_614 = add i64 %var_2_590, 136
; %var_2_640 = add i64 %var_2_616, 136
; Matched:%var_2_615:  %var_2_615 = inttoptr i64 %var_2_591 to i64*
; %var_2_641 = inttoptr i64 %var_2_617 to i64*
; Matched:%var_2_616:  %var_2_616 = load i64, i64* %var_2_615, align 8
; %var_2_642 = load i64, i64* %var_2_641, align 8
; Matched:\<badref\>:  store i64 %var_2_616, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_642, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_614, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_640, i64* %var_2_6, align 8
; Matched:%var_2_154:  %var_2_154 = add i64 %var_2_144, 11
; %var_2_643 = add i64 %var_2_615, 11
; Matched:\<badref\>:  store i64 %var_2_617, i64* %PC, align 8
; store i64 %var_2_643, i64* %var_2_3, align 8
; Matched:%var_2_618:  %var_2_618 = inttoptr i64 %var_2_614 to i64*
; %var_2_644 = inttoptr i64 %var_2_640 to i64*
; Matched:%var_2_619:  %var_2_619 = load i64, i64* %var_2_618, align 8
; %var_2_645 = load i64, i64* %var_2_644, align 8
; Matched:\<badref\>:  store i64 %var_2_619, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_645, i64* %var_2_3, align 8
; Matched:%var_2_620:  %var_2_620 = add i64 %var_2_590, 144
; %var_2_646 = add i64 %var_2_616, 144
; Matched:\<badref\>:  store i64 %var_2_620, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_646, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_606
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
define %struct.Memory* @routine_movq__0x400a70___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a70_type* @G__0x400a70 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400a72___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a72_type* @G__0x400a72 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x48f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x48f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x48f__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x48f__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x48f__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x48f__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x48f__rip__type* @G_0x48f__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x400aa2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400aa2_type* @G__0x400aa2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd_0x601278___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
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
define %struct.Memory* @routine_jg_.L_400791(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x601060___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601058___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601050___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601048___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601040___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601038___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_addsd_0x601288___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movq__0x400ac6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400ac6_type* @G__0x400ac6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x282__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x282__rip__type* @G_0x282__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x282__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x282__rip__type* @G_0x282__rip_ to i64)
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
define %struct.Memory* @routine_divsd_0x601278___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*), align 8
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
