; ModuleID = '/tmp/tmpw1ji04ul-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1b8__rip__type = type <{ [8 x i8] }>
%G_0x3df__rip__type = type <{ [8 x i8] }>
%G_0x601120_type = type <{ [16 x i8] }>
%G_0x601128_type = type <{ [16 x i8] }>
%G_0x601258_type = type <{ [16 x i8] }>
%G_0x601260_type = type <{ [16 x i8] }>
%G_0x601268_type = type <{ [16 x i8] }>
%G_0x601278_type = type <{ [16 x i8] }>
%G_0x601280_type = type <{ [16 x i8] }>
%G_0x601288_type = type <{ [16 x i8] }>
%G_0x601290_type = type <{ [16 x i8] }>
%G_0x601298_type = type <{ [16 x i8] }>
%G_0x6012a0_type = type <{ [16 x i8] }>
%G_0x6012c8_type = type <{ [16 x i8] }>
%G_0x6012d0_type = type <{ [16 x i8] }>
%G__0x400988_type = type <{ [8 x i8] }>
%G__0x4009c0_type = type <{ [8 x i8] }>
%G__0x4009c2_type = type <{ [8 x i8] }>
%G__0x4009f2_type = type <{ [8 x i8] }>
%G__0x400a16_type = type <{ [8 x i8] }>
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
@G_0x1b8__rip_ = global %G_0x1b8__rip__type zeroinitializer
@G_0x3df__rip_ = global %G_0x3df__rip__type zeroinitializer
@G_0x601120 = local_unnamed_addr global %G_0x601120_type zeroinitializer
@G_0x601128 = local_unnamed_addr global %G_0x601128_type zeroinitializer
@G_0x601258 = local_unnamed_addr global %G_0x601258_type zeroinitializer
@G_0x601260 = local_unnamed_addr global %G_0x601260_type zeroinitializer
@G_0x601268 = local_unnamed_addr global %G_0x601268_type zeroinitializer
@G_0x601278 = local_unnamed_addr global %G_0x601278_type zeroinitializer
@G_0x601280 = local_unnamed_addr global %G_0x601280_type zeroinitializer
@G_0x601288 = local_unnamed_addr global %G_0x601288_type zeroinitializer
@G_0x601290 = local_unnamed_addr global %G_0x601290_type zeroinitializer
@G_0x601298 = local_unnamed_addr global %G_0x601298_type zeroinitializer
@G_0x6012a0 = local_unnamed_addr global %G_0x6012a0_type zeroinitializer
@G_0x6012c8 = local_unnamed_addr global %G_0x6012c8_type zeroinitializer
@G_0x6012d0 = local_unnamed_addr global %G_0x6012d0_type zeroinitializer
@G__0x400988 = global %G__0x400988_type zeroinitializer
@G__0x4009c0 = global %G__0x4009c0_type zeroinitializer
@G__0x4009c2 = global %G__0x4009c2_type zeroinitializer
@G__0x4009f2 = global %G__0x4009f2_type zeroinitializer
@G__0x400a16 = global %G__0x400a16_type zeroinitializer

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
; Matched:%var_2_16:  %var_2_16 = add i64 %var_2_12, -136
; %var_2_11 = add i64 %var_2_7, -136
; Matched:\<badref\>:  store i64 %var_2_16, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_17:  %var_2_17 = icmp ult i64 %var_2_13, 128
; %var_2_12 = icmp ult i64 %var_2_8, 128
; Matched:%var_2_18:  %var_2_18 = zext i1 %var_2_17 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_18, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_20:  %var_2_20 = trunc i64 %var_2_16 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_21:  %var_2_21 = and i32 %var_2_20, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_22:  %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #11
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_23:  %var_2_23 = trunc i32 %var_2_22 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_24:  %var_2_24 = and i8 %var_2_23, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_25:  %var_2_25 = xor i8 %var_2_24, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_26:  %var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_27:  %var_2_27 = xor i64 %var_2_13, %var_2_16
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_28:  %var_2_28 = lshr i64 %var_2_27, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_29:  %var_2_29 = trunc i64 %var_2_28 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_30:  %var_2_30 = and i8 %var_2_29, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_30, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_32:  %var_2_32 = icmp eq i64 %var_2_16, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_33:  %var_2_33 = zext i1 %var_2_32 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
; Matched:%var_2_34:  %var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_33, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_35:  %var_2_35 = lshr i64 %var_2_16, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_36:  %var_2_36 = trunc i64 %var_2_35 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_37:  %var_2_37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_36, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_38:  %var_2_38 = lshr i64 %var_2_13, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_39:  %var_2_39 = xor i64 %var_2_35, %var_2_38
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_40:  %var_2_40 = add nuw nsw i64 %var_2_39, %var_2_38
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_41:  %var_2_41 = icmp eq i64 %var_2_40, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_42:  %var_2_42 = zext i1 %var_2_41 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_42, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 72), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x4009c0_type* @G__0x4009c0 to i64), i64* %RDI.i298, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_12, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_15, 27
; %var_2_40 = add i64 %var_2_10, 27
; Matched:\<badref\>:  store i64 %var_2_45, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_44 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_46, align 4
; store i32 0, i32* %var_2_41, align 4
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i350 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i350, align 1
; Matched:%var_2_48:  %var_2_48 = add i64 %var_2_47, -284
; %var_2_44 = add i64 %var_2_43, -284
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_47, 7
; %var_2_45 = add i64 %var_2_43, 7
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_52:  %var_2_52 = inttoptr i64 %var_2_51 to i64*
; %var_2_48 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_130, i64* %var_2_133, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:\<badref\>:  store i64 %var_2_470, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_47, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_48, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_49 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_50 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 128), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400988_type* @G__0x400988 to i64), i64* %RDI.i298, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i345 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_55:  %var_2_55 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_57:  %var_2_57 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i345, align 4
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_54, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_58, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_59:  %var_2_59 = inttoptr i64 %var_2_56 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_57, i32* %var_2_59, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_115:  %var_2_115 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i350, align 1
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, -304
; %var_2_57 = add i64 %var_2_56, -304
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_60, 7
; %var_2_58 = add i64 %var_2_56, 7
%var_2_59 = load i64, i64* %var_2_6, align 8
%var_2_60 = add i64 %var_2_59, -8
; Matched:%var_2_65:  %var_2_65 = inttoptr i64 %var_2_64 to i64*
; %var_2_61 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_117, i64* %var_2_120, align 8
; store i64 %var_2_58, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_51, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %var_2_3, align 8
%var_2_62 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_49)
%var_2_63 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 178), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x4009c2_type* @G__0x4009c2 to i64), i64* %RDI.i298, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_65 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 10)
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_135, 18
; %var_2_66 = add i64 %var_2_63, 18
; Matched:\<badref\>:  store i64 %var_2_138, i64* %PC, align 8
; store i64 %var_2_66, i64* %var_2_3, align 8
%var_2_67 = inttoptr i64 %var_2_65 to i64*
%var_2_68 = load i64, i64* %var_2_67, align 8
; Matched:%var_2_69:  %var_2_69 = bitcast [32 x %union.VectorReg]* %var_2_5 to double*
; %var_2_69 = bitcast [32 x %union.VectorReg]* %var_2_64 to double*
%var_2_70 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_64, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_68, i64* %var_2_70, align 1
%var_2_71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_72 = bitcast i64* %var_2_71 to double*
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
%var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_74 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 18)
%var_2_75 = add i64 %var_2_63, 26
store i64 %var_2_75, i64* %var_2_3, align 8
%var_2_76 = inttoptr i64 %var_2_74 to i64*
%var_2_77 = load i64, i64* %var_2_76, align 8
%var_2_78 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_73, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_77, i64* %var_2_78, align 1
; Matched:%var_2_75:  %var_2_75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_76:  %var_2_76 = bitcast i64* %var_2_75 to double*
; %var_2_80 = bitcast i64* %var_2_79 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
%var_2_81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_82 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 26)
%var_2_83 = add i64 %var_2_63, 34
store i64 %var_2_83, i64* %var_2_3, align 8
%var_2_84 = inttoptr i64 %var_2_82 to i64*
%var_2_85 = load i64, i64* %var_2_84, align 8
%var_2_86 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_81, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_85, i64* %var_2_86, align 1
; Matched:%var_2_79:  %var_2_79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_80:  %var_2_80 = bitcast i64* %var_2_79 to double*
; %var_2_88 = bitcast i64* %var_2_87 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_88, align 1
%var_2_89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_90 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 34)
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_285, 42
; %var_2_91 = add i64 %var_2_63, 42
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8
; store i64 %var_2_91, i64* %var_2_3, align 8
%var_2_92 = inttoptr i64 %var_2_90 to i64*
%var_2_93 = load i64, i64* %var_2_92, align 8
%var_2_94 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_89, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_93, i64* %var_2_94, align 1
; Matched:%var_2_83:  %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_84:  %var_2_84 = bitcast i64* %var_2_83 to double*
; %var_2_96 = bitcast i64* %var_2_95 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_96, align 1
%var_2_97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_98 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 42)
%var_2_99 = add i64 %var_2_63, 50
store i64 %var_2_99, i64* %var_2_3, align 8
%var_2_100 = inttoptr i64 %var_2_98 to i64*
%var_2_101 = load i64, i64* %var_2_100, align 8
%var_2_102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_97, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_101, i64* %var_2_102, align 1
; Matched:%var_2_87:  %var_2_87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_88:  %var_2_88 = bitcast i64* %var_2_87 to double*
; %var_2_104 = bitcast i64* %var_2_103 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_88, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_104, align 1
%var_2_105 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64), i64 50)
%var_2_106 = add i64 %var_2_63, 58
store i64 %var_2_106, i64* %var_2_3, align 8
%var_2_107 = inttoptr i64 %var_2_105 to i64*
%var_2_108 = load i64, i64* %var_2_107, align 8
%var_2_109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_108, i64* %var_2_109, align 1
; Matched:%var_2_91:  %var_2_91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_92:  %var_2_92 = bitcast i64* %var_2_91 to double*
; %var_2_111 = bitcast i64* %var_2_110 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_92, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_111, align 1
; Matched:%var_2_93:  %var_2_93 = load i64, i64* %RBP, align 8
; %var_2_112 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_94:  %var_2_94 = add i64 %var_2_93, -56
; %var_2_113 = add i64 %var_2_112, -56
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_67, 66
; %var_2_114 = add i64 %var_2_63, 66
; Matched:\<badref\>:  store i64 %var_2_95, i64* %PC, align 8
; store i64 %var_2_114, i64* %var_2_3, align 8
; Matched:%var_2_96:  %var_2_96 = inttoptr i64 %var_2_94 to i64*
; %var_2_115 = inttoptr i64 %var_2_113 to i64*
; Matched:\<badref\>:  store i64 15625, i64* %var_2_96, align 8
; store i64 15625, i64* %var_2_115, align 8
; Matched:%var_2_97:  %var_2_97 = load i64, i64* %PC, align 8
; %var_2_116 = load i64, i64* %var_2_3, align 8
%var_2_117 = load i64, i64* %var_2_102, align 1
store i64 %var_2_117, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
; Matched:%var_2_99:  %var_2_99 = load i64, i64* %RBP, align 8
; %var_2_118 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_99, -64
; %var_2_119 = add i64 %var_2_118, -64
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_97, 17
; %var_2_120 = add i64 %var_2_116, 17
; Matched:\<badref\>:  store i64 %var_2_101, i64* %PC, align 8
; store i64 %var_2_120, i64* %var_2_3, align 8
; Matched:%var_2_102:  %var_2_102 = inttoptr i64 %var_2_100 to i64*
; %var_2_121 = inttoptr i64 %var_2_119 to i64*
; Matched:\<badref\>:  store i64 512000000, i64* %var_2_102, align 8
; store i64 512000000, i64* %var_2_121, align 8
; Matched:%var_2_103:  %var_2_103 = load i64, i64* %PC, align 8
; %var_2_122 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_104:  %var_2_104 = load i64, i64* %var_2_90, align 1
; %var_2_123 = load i64, i64* %var_2_109, align 1
; Matched:\<badref\>:  store i64 %var_2_104, i64* bitcast (%piref_type* @piref to i64*), align 8
; store i64 %var_2_123, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
%var_2_124 = load i64, i64* %var_2_102, align 1
store i64 %var_2_124, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
; Matched:%var_2_106:  %var_2_106 = load i64, i64* %var_2_82, align 1
; %var_2_125 = load i64, i64* %var_2_94, align 1
; Matched:\<badref\>:  store i64 %var_2_106, i64* bitcast (%two_type* @two to i64*), align 8
; store i64 %var_2_125, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
%var_2_126 = load i64, i64* %var_2_86, align 1
store i64 %var_2_126, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
; Matched:%var_2_108:  %var_2_108 = load i64, i64* %var_2_74, align 1
; %var_2_127 = load i64, i64* %var_2_78, align 1
; Matched:\<badref\>:  store i64 %var_2_108, i64* bitcast (%four_type* @four to i64*), align 8
; store i64 %var_2_127, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
%var_2_128 = load i64, i64* %var_2_70, align 1
store i64 %var_2_128, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_105, i64* %var_2_70, align 1, !tbaa !1285
; store i64 %var_2_124, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
store i64 %var_2_124, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_110:  %var_2_110 = load i64, i64* %RBP, align 8
; %var_2_129 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_110, -96
; %var_2_130 = add i64 %var_2_129, -96
; Matched:%var_2_112:  %var_2_112 = load i32, i32* %EAX, align 4
; %var_2_131 = load i32, i32* %EAX.i345, align 4
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_103, 75
; %var_2_132 = add i64 %var_2_122, 75
; Matched:\<badref\>:  store i64 %var_2_113, i64* %PC, align 8
; store i64 %var_2_132, i64* %var_2_3, align 8
; Matched:%var_2_114:  %var_2_114 = inttoptr i64 %var_2_111 to i32*
; %var_2_133 = inttoptr i64 %var_2_130 to i32*
; Matched:\<badref\>:  store i32 %var_2_112, i32* %var_2_114, align 4
; store i32 %var_2_131, i32* %var_2_133, align 4
; Matched:%var_2_47:  %var_2_47 = load i64, i64* %PC, align 8
; %var_2_134 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i350, align 1
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_115, -469
; %var_2_135 = add i64 %var_2_134, -469
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_115, 7
; %var_2_136 = add i64 %var_2_134, 7
%var_2_137 = load i64, i64* %var_2_6, align 8
%var_2_138 = add i64 %var_2_137, -8
; Matched:%var_2_120:  %var_2_120 = inttoptr i64 %var_2_119 to i64*
; %var_2_139 = inttoptr i64 %var_2_138 to i64*
; Matched:\<badref\>:  store i64 %var_2_49, i64* %var_2_52, align 8
; store i64 %var_2_136, i64* %var_2_139, align 8
; Matched:\<badref\>:  store i64 %var_2_119, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_138, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_116, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_135, i64* %var_2_3, align 8
%var_2_140 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_62)
%var_2_141 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 -9223372036854775808, i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x4009f2_type* @G__0x4009f2 to i64), i64* %RDI.i298, align 8
; Matched:%var_2_123:  %var_2_123 = load i64, i64* %RBP, align 8
; %var_2_142 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_124:  %var_2_124 = add i64 %var_2_123, -100
; %var_2_143 = add i64 %var_2_142, -100
; Matched:%var_2_125:  %var_2_125 = load i32, i32* %EAX, align 4
; %var_2_144 = load i32, i32* %EAX.i345, align 4
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_122, 13
; %var_2_145 = add i64 %var_2_141, 13
; Matched:\<badref\>:  store i64 %var_2_126, i64* %PC, align 8
; store i64 %var_2_145, i64* %var_2_3, align 8
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_124 to i32*
; %var_2_146 = inttoptr i64 %var_2_143 to i32*
; Matched:\<badref\>:  store i32 %var_2_125, i32* %var_2_127, align 4
; store i32 %var_2_144, i32* %var_2_146, align 4
; Matched:%var_2_60:  %var_2_60 = load i64, i64* %PC, align 8
; %var_2_147 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 3, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i350, align 1
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_128, -489
; %var_2_148 = add i64 %var_2_147, -489
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_128, 7
; %var_2_149 = add i64 %var_2_147, 7
%var_2_150 = load i64, i64* %var_2_6, align 8
%var_2_151 = add i64 %var_2_150, -8
; Matched:%var_2_133:  %var_2_133 = inttoptr i64 %var_2_132 to i64*
; %var_2_152 = inttoptr i64 %var_2_151 to i64*
; Matched:\<badref\>:  store i64 %var_2_62, i64* %var_2_65, align 8
; store i64 %var_2_149, i64* %var_2_152, align 8
; Matched:\<badref\>:  store i64 %var_2_64, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_151, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_129, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_148, i64* %var_2_3, align 8
%var_2_153 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_140)
; Matched:%var_2_135:  %var_2_135 = load i64, i64* %PC, align 8
; %var_2_154 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 214), i64* %RDI, align 8, !tbaa !1261
; store i64 -9223372036854775808, i64* %RDI.i298, align 8
%var_2_155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i283 = getelementptr inbounds %union.anon, %union.anon* %var_2_155, i64 0, i32 0
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %RBP, align 8
; %var_2_156 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_136, -56
; %var_2_157 = add i64 %var_2_156, -56
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_135, 18
; %var_2_158 = add i64 %var_2_154, 18
; Matched:\<badref\>:  store i64 %var_2_138, i64* %PC, align 8
; store i64 %var_2_158, i64* %var_2_3, align 8
; Matched:%var_2_139:  %var_2_139 = inttoptr i64 %var_2_137 to i64*
; %var_2_159 = inttoptr i64 %var_2_157 to i64*
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_160 = load i64, i64* %var_2_159, align 8
; Matched:%var_2_141:  %var_2_141 = mul i64 %var_2_140, 10000
; %var_2_161 = mul i64 %var_2_160, 10000
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_136, -80
; %var_2_162 = add i64 %var_2_156, -80
; Matched:%var_2_143:  %var_2_143 = add i64 %var_2_135, 22
; %var_2_163 = add i64 %var_2_154, 22
; Matched:\<badref\>:  store i64 %var_2_143, i64* %PC, align 8
; store i64 %var_2_163, i64* %var_2_3, align 8
; Matched:%var_2_144:  %var_2_144 = inttoptr i64 %var_2_142 to i64*
; %var_2_164 = inttoptr i64 %var_2_162 to i64*
; Matched:\<badref\>:  store i64 %var_2_141, i64* %var_2_144, align 8
; store i64 %var_2_161, i64* %var_2_164, align 8
%var_2_165 = load i64, i64* %var_2_3, align 8
%var_2_166 = load i64, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:%var_2_147:  %var_2_147 = load i64, i64* %RDI, align 8
; %var_2_167 = load i64, i64* %RDI.i298, align 8
; Matched:%var_2_148:  %var_2_148 = xor i64 %var_2_147, %var_2_146
; %var_2_168 = xor i64 %var_2_167, %var_2_166
; Matched:%var_2_149:  %var_2_149 = load i64, i64* %RBP, align 8
; %var_2_169 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_149, -16
; %var_2_170 = add i64 %var_2_169, -16
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_145, 27
; %var_2_171 = add i64 %var_2_165, 27
; Matched:\<badref\>:  store i64 %var_2_151, i64* %PC, align 8
; store i64 %var_2_171, i64* %var_2_3, align 8
; Matched:%var_2_152:  %var_2_152 = inttoptr i64 %var_2_150 to i64*
; %var_2_172 = inttoptr i64 %var_2_170 to i64*
; Matched:\<badref\>:  store i64 %var_2_148, i64* %var_2_152, align 8
; store i64 %var_2_168, i64* %var_2_172, align 8
; Matched:%var_2_153:  %var_2_153 = load i64, i64* %PC, align 8
; %var_2_173 = load i64, i64* %var_2_3, align 8
%var_2_174 = load i64, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
%var_2_175 = load i64, i64* %RDI.i298, align 8
%var_2_176 = xor i64 %var_2_175, %var_2_174
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_176, i64* %RCX.i283, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_157:  %var_2_157 = trunc i64 %var_2_156 to i32
; %var_2_177 = trunc i64 %var_2_176 to i32
; Matched:%var_2_158:  %var_2_158 = and i32 %var_2_157, 255
; %var_2_178 = and i32 %var_2_177, 255
; Matched:%var_2_159:  %var_2_159 = tail call i32 @llvm.ctpop.i32(i32 %var_2_158) #11
; %var_2_179 = tail call i32 @llvm.ctpop.i32(i32 %var_2_178)
; Matched:%var_2_160:  %var_2_160 = trunc i32 %var_2_159 to i8
; %var_2_180 = trunc i32 %var_2_179 to i8
; Matched:%var_2_161:  %var_2_161 = and i8 %var_2_160, 1
; %var_2_181 = and i8 %var_2_180, 1
; Matched:%var_2_162:  %var_2_162 = xor i8 %var_2_161, 1
; %var_2_182 = xor i8 %var_2_181, 1
; Matched:\<badref\>:  store i8 %var_2_162, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_182, i8* %var_2_21, align 1
; Matched:%var_2_163:  %var_2_163 = icmp eq i64 %var_2_156, 0
; %var_2_183 = icmp eq i64 %var_2_176, 0
; Matched:%var_2_164:  %var_2_164 = zext i1 %var_2_163 to i8
; %var_2_184 = zext i1 %var_2_183 to i8
; Matched:\<badref\>:  store i8 %var_2_164, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_184, i8* %var_2_29, align 1
; Matched:%var_2_165:  %var_2_165 = lshr i64 %var_2_156, 63
; %var_2_185 = lshr i64 %var_2_176, 63
; Matched:%var_2_166:  %var_2_166 = trunc i64 %var_2_165 to i8
; %var_2_186 = trunc i64 %var_2_185 to i8
; Matched:\<badref\>:  store i8 %var_2_166, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_186, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:\<badref\>:  store i64 %var_2_156, i64* %var_2_70, align 1, !tbaa !1261
; store i64 %var_2_176, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
store i64 %var_2_176, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
%var_2_187 = load i64, i64* %RBP.i, align 8
%var_2_188 = add i64 %var_2_187, -72
; Matched:%var_2_169:  %var_2_169 = add i64 %var_2_153, 39
; %var_2_189 = add i64 %var_2_173, 39
; Matched:\<badref\>:  store i64 %var_2_169, i64* %PC, align 8
; store i64 %var_2_189, i64* %var_2_3, align 8
%var_2_190 = inttoptr i64 %var_2_188 to i64*
store i64 1, i64* %var_2_190, align 8
; Matched:%var_2_171:  %var_2_171 = load i64, i64* %RBP, align 8
; %var_2_191 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_172:  %var_2_172 = add i64 %var_2_171, -104
; %var_2_192 = add i64 %var_2_191, -104
; Matched:%var_2_173:  %var_2_173 = load i32, i32* %EAX, align 4
; %var_2_193 = load i32, i32* %EAX.i345, align 4
; Matched:%var_2_174:  %var_2_174 = load i64, i64* %PC, align 8
; %var_2_194 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_175:  %var_2_175 = add i64 %var_2_174, 3
; %var_2_195 = add i64 %var_2_194, 3
; Matched:\<badref\>:  store i64 %var_2_175, i64* %PC, align 8
; store i64 %var_2_195, i64* %var_2_3, align 8
; Matched:%var_2_176:  %var_2_176 = inttoptr i64 %var_2_172 to i32*
; %var_2_196 = inttoptr i64 %var_2_192 to i32*
; Matched:\<badref\>:  store i32 %var_2_173, i32* %var_2_176, align 4
; store i32 %var_2_193, i32* %var_2_196, align 4
%RAX.i245 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_40066b

block_.L_40066b:                                  ; preds = %block_400679, %entry
; Matched:%var_2_231:  %var_2_231 = phi i64 [ %var_2_230, %block_400679 ], [ %.pre, %block_400520 ]
; %var_2_197 = phi i64 [ %var_2_288, %block_400679 ], [ %.pre, %entry ]
%var_2_198 = load i64, i64* %RBP.i, align 8
%var_2_199 = add i64 %var_2_198, -72
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_231, 4
; %var_2_200 = add i64 %var_2_197, 4
; Matched:\<badref\>:  store i64 %var_2_234, i64* %PC, align 8
; store i64 %var_2_200, i64* %var_2_3, align 8
%var_2_201 = inttoptr i64 %var_2_199 to i64*
%var_2_202 = load i64, i64* %var_2_201, align 8
; Matched:\<badref\>:  store i64 %var_2_518, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_202, i64* %RAX.i245, align 8
%var_2_203 = add i64 %var_2_198, -80
; Matched:%var_2_238:  %var_2_238 = add i64 %var_2_231, 8
; %var_2_204 = add i64 %var_2_197, 8
; Matched:\<badref\>:  store i64 %var_2_238, i64* %PC, align 8
; store i64 %var_2_204, i64* %var_2_3, align 8
%var_2_205 = inttoptr i64 %var_2_203 to i64*
%var_2_206 = load i64, i64* %var_2_205, align 8
%var_2_207 = sub i64 %var_2_202, %var_2_206
; Matched:%var_2_242:  %var_2_242 = icmp ult i64 %var_2_236, %var_2_240
; %var_2_208 = icmp ult i64 %var_2_202, %var_2_206
; Matched:%var_2_525:  %var_2_525 = zext i1 %var_2_524 to i8
; %var_2_209 = zext i1 %var_2_208 to i8
; Matched:\<badref\>:  store i8 %var_2_525, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_209, i8* %var_2_14, align 1
; Matched:%var_2_244:  %var_2_244 = trunc i64 %var_2_241 to i32
; %var_2_210 = trunc i64 %var_2_207 to i32
; Matched:%var_2_527:  %var_2_527 = and i32 %var_2_526, 255
; %var_2_211 = and i32 %var_2_210, 255
; Matched:%var_2_528:  %var_2_528 = tail call i32 @llvm.ctpop.i32(i32 %var_2_527) #11
; %var_2_212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_211)
; Matched:%var_2_247:  %var_2_247 = trunc i32 %var_2_246 to i8
; %var_2_213 = trunc i32 %var_2_212 to i8
; Matched:%var_2_248:  %var_2_248 = and i8 %var_2_247, 1
; %var_2_214 = and i8 %var_2_213, 1
; Matched:%var_2_249:  %var_2_249 = xor i8 %var_2_248, 1
; %var_2_215 = xor i8 %var_2_214, 1
; Matched:\<badref\>:  store i8 %var_2_531, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_215, i8* %var_2_21, align 1
; Matched:%var_2_532:  %var_2_532 = xor i64 %var_2_522, %var_2_518
; %var_2_216 = xor i64 %var_2_206, %var_2_202
; Matched:%var_2_251:  %var_2_251 = xor i64 %var_2_250, %var_2_241
; %var_2_217 = xor i64 %var_2_216, %var_2_207
; Matched:%var_2_534:  %var_2_534 = lshr i64 %var_2_533, 4
; %var_2_218 = lshr i64 %var_2_217, 4
; Matched:%var_2_535:  %var_2_535 = trunc i64 %var_2_534 to i8
; %var_2_219 = trunc i64 %var_2_218 to i8
; Matched:%var_2_254:  %var_2_254 = and i8 %var_2_253, 1
; %var_2_220 = and i8 %var_2_219, 1
; Matched:\<badref\>:  store i8 %var_2_254, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_220, i8* %var_2_26, align 1
%var_2_221 = icmp eq i64 %var_2_207, 0
; Matched:%var_2_538:  %var_2_538 = zext i1 %var_2_537 to i8
; %var_2_222 = zext i1 %var_2_221 to i8
; Matched:\<badref\>:  store i8 %var_2_538, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_222, i8* %var_2_29, align 1
%var_2_223 = lshr i64 %var_2_207, 63
%var_2_224 = trunc i64 %var_2_223 to i8
; Matched:\<badref\>:  store i8 %var_2_540, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_224, i8* %var_2_32, align 1
%var_2_225 = lshr i64 %var_2_202, 63
%var_2_226 = lshr i64 %var_2_206, 63
%var_2_227 = xor i64 %var_2_226, %var_2_225
%var_2_228 = xor i64 %var_2_223, %var_2_225
%var_2_229 = add nuw nsw i64 %var_2_228, %var_2_227
%var_2_230 = icmp eq i64 %var_2_229, 2
; Matched:%var_2_547:  %var_2_547 = zext i1 %var_2_546 to i8
; %var_2_231 = zext i1 %var_2_230 to i8
; Matched:\<badref\>:  store i8 %var_2_547, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_231, i8* %var_2_38, align 1
%var_2_232 = icmp ne i8 %var_2_224, 0
%var_2_233 = xor i1 %var_2_232, %var_2_230
%.demorgan = or i1 %var_2_221, %var_2_233
; Matched:  %.v = select i1 %.demorgan, i64 14, i64 87
; %.v = select i1 %.demorgan, i64 14, i64 87
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_231, %.v
; %var_2_234 = add i64 %var_2_197, %.v
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_234, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_400679, label %block_.L_4006c2

block_400679:                                     ; preds = %block_.L_40066b
  store i64 -9223372036854775808, i64* %RAX.i245, align 8
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_514, -16
; %var_2_235 = add i64 %var_2_198, -16
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_268, 15
; %var_2_236 = add i64 %var_2_234, 15
; Matched:\<badref\>:  store i64 %var_2_178, i64* %PC, align 8
; store i64 %var_2_236, i64* %var_2_3, align 8
; Matched:%var_2_271:  %var_2_271 = inttoptr i64 %var_2_269 to i64*
; %var_2_237 = inttoptr i64 %var_2_235 to i64*
; Matched:%var_2_180:  %var_2_180 = load i64, i64* %var_2_179, align 8
; %var_2_238 = load i64, i64* %var_2_237, align 8
; Matched:%var_2_181:  %var_2_181 = xor i64 %var_2_180, -9223372036854775808
; %var_2_239 = xor i64 %var_2_238, -9223372036854775808
; Matched:\<badref\>:  store i64 %var_2_181, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_239, i64* %RCX.i283, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_274:  %var_2_274 = trunc i64 %var_2_272 to i32
; %var_2_240 = trunc i64 %var_2_238 to i32
; Matched:%var_2_275:  %var_2_275 = and i32 %var_2_274, 255
; %var_2_241 = and i32 %var_2_240, 255
; Matched:%var_2_276:  %var_2_276 = tail call i32 @llvm.ctpop.i32(i32 %var_2_275) #11
; %var_2_242 = tail call i32 @llvm.ctpop.i32(i32 %var_2_241)
; Matched:%var_2_277:  %var_2_277 = trunc i32 %var_2_276 to i8
; %var_2_243 = trunc i32 %var_2_242 to i8
; Matched:%var_2_186:  %var_2_186 = and i8 %var_2_185, 1
; %var_2_244 = and i8 %var_2_243, 1
; Matched:%var_2_187:  %var_2_187 = xor i8 %var_2_186, 1
; %var_2_245 = xor i8 %var_2_244, 1
; Matched:\<badref\>:  store i8 %var_2_187, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_245, i8* %var_2_21, align 1
; Matched:%var_2_188:  %var_2_188 = icmp eq i64 %var_2_181, 0
; %var_2_246 = icmp eq i64 %var_2_239, 0
; Matched:%var_2_281:  %var_2_281 = zext i1 %var_2_280 to i8
; %var_2_247 = zext i1 %var_2_246 to i8
; Matched:\<badref\>:  store i8 %var_2_281, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_247, i8* %var_2_29, align 1
; Matched:%var_2_282:  %var_2_282 = lshr i64 %var_2_273, 63
; %var_2_248 = lshr i64 %var_2_239, 63
; Matched:%var_2_283:  %var_2_283 = trunc i64 %var_2_282 to i8
; %var_2_249 = trunc i64 %var_2_248 to i8
; Matched:\<badref\>:  store i8 %var_2_191, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_249, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_268, 33
; %var_2_250 = add i64 %var_2_234, 33
; Matched:\<badref\>:  store i64 %var_2_192, i64* %PC, align 8
; store i64 %var_2_250, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_273, i64* %var_2_271, align 8
; store i64 %var_2_239, i64* %var_2_237, align 8
%var_2_251 = load i64, i64* %var_2_3, align 8
%var_2_252 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
store i64 %var_2_252, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
%var_2_253 = load i64, i64* %RBP.i, align 8
%var_2_254 = add i64 %var_2_253, -16
; Matched:%var_2_289:  %var_2_289 = add i64 %var_2_285, 14
; %var_2_255 = add i64 %var_2_251, 14
; Matched:\<badref\>:  store i64 %var_2_414, i64* %PC, align 8
; store i64 %var_2_255, i64* %var_2_3, align 8
%.cast8 = bitcast i64 %var_2_252 to double
%var_2_256 = inttoptr i64 %var_2_254 to double*
%var_2_257 = load double, double* %var_2_256, align 8
%var_2_258 = fadd double %.cast8, %var_2_257
; Matched:\<badref\>:  store double %var_2_200, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_258, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
store double %var_2_258, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_201:  %var_2_201 = add i64 %var_2_195, -72
; %var_2_259 = add i64 %var_2_253, -72
; Matched:%var_2_202:  %var_2_202 = add i64 %var_2_193, 27
; %var_2_260 = add i64 %var_2_251, 27
; Matched:\<badref\>:  store i64 %var_2_202, i64* %PC, align 8
; store i64 %var_2_260, i64* %var_2_3, align 8
; Matched:%var_2_365:  %var_2_365 = inttoptr i64 %var_2_362 to i64*
; %var_2_261 = inttoptr i64 %var_2_259 to i64*
; Matched:%var_2_366:  %var_2_366 = load i64, i64* %var_2_365, align 8
; %var_2_262 = load i64, i64* %var_2_261, align 8
; Matched:%var_2_367:  %var_2_367 = add i64 %var_2_366, 1
; %var_2_263 = add i64 %var_2_262, 1
; Matched:\<badref\>:  store i64 %var_2_367, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_263, i64* %RAX.i245, align 8
; Matched:%var_2_206:  %var_2_206 = icmp eq i64 %var_2_204, -1
; %var_2_264 = icmp eq i64 %var_2_262, -1
; Matched:%var_2_207:  %var_2_207 = icmp eq i64 %var_2_205, 0
; %var_2_265 = icmp eq i64 %var_2_263, 0
; Matched:%var_2_208:  %var_2_208 = or i1 %var_2_206, %var_2_207
; %var_2_266 = or i1 %var_2_264, %var_2_265
; Matched:%var_2_209:  %var_2_209 = zext i1 %var_2_208 to i8
; %var_2_267 = zext i1 %var_2_266 to i8
; Matched:\<badref\>:  store i8 %var_2_371, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_267, i8* %var_2_14, align 1
; Matched:%var_2_372:  %var_2_372 = trunc i64 %var_2_367 to i32
; %var_2_268 = trunc i64 %var_2_263 to i32
; Matched:%var_2_373:  %var_2_373 = and i32 %var_2_372, 255
; %var_2_269 = and i32 %var_2_268, 255
; Matched:%var_2_374:  %var_2_374 = tail call i32 @llvm.ctpop.i32(i32 %var_2_373) #11
; %var_2_270 = tail call i32 @llvm.ctpop.i32(i32 %var_2_269)
; Matched:%var_2_213:  %var_2_213 = trunc i32 %var_2_212 to i8
; %var_2_271 = trunc i32 %var_2_270 to i8
; Matched:%var_2_214:  %var_2_214 = and i8 %var_2_213, 1
; %var_2_272 = and i8 %var_2_271, 1
; Matched:%var_2_215:  %var_2_215 = xor i8 %var_2_214, 1
; %var_2_273 = xor i8 %var_2_272, 1
; Matched:\<badref\>:  store i8 %var_2_215, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_273, i8* %var_2_21, align 1
; Matched:%var_2_378:  %var_2_378 = xor i64 %var_2_367, %var_2_366
; %var_2_274 = xor i64 %var_2_263, %var_2_262
; Matched:%var_2_379:  %var_2_379 = lshr i64 %var_2_378, 4
; %var_2_275 = lshr i64 %var_2_274, 4
; Matched:%var_2_380:  %var_2_380 = trunc i64 %var_2_379 to i8
; %var_2_276 = trunc i64 %var_2_275 to i8
; Matched:%var_2_381:  %var_2_381 = and i8 %var_2_380, 1
; %var_2_277 = and i8 %var_2_276, 1
; Matched:\<badref\>:  store i8 %var_2_219, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_277, i8* %var_2_26, align 1
; Matched:%var_2_220:  %var_2_220 = zext i1 %var_2_207 to i8
; %var_2_278 = zext i1 %var_2_265 to i8
; Matched:\<badref\>:  store i8 %var_2_220, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_278, i8* %var_2_29, align 1
; Matched:%var_2_221:  %var_2_221 = lshr i64 %var_2_205, 63
; %var_2_279 = lshr i64 %var_2_263, 63
; Matched:%var_2_384:  %var_2_384 = trunc i64 %var_2_383 to i8
; %var_2_280 = trunc i64 %var_2_279 to i8
; Matched:\<badref\>:  store i8 %var_2_384, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_280, i8* %var_2_32, align 1
; Matched:%var_2_385:  %var_2_385 = lshr i64 %var_2_366, 63
; %var_2_281 = lshr i64 %var_2_262, 63
; Matched:%var_2_386:  %var_2_386 = xor i64 %var_2_383, %var_2_385
; %var_2_282 = xor i64 %var_2_279, %var_2_281
; Matched:%var_2_225:  %var_2_225 = add nuw nsw i64 %var_2_224, %var_2_221
; %var_2_283 = add nuw nsw i64 %var_2_282, %var_2_279
; Matched:%var_2_226:  %var_2_226 = icmp eq i64 %var_2_225, 2
; %var_2_284 = icmp eq i64 %var_2_283, 2
; Matched:%var_2_227:  %var_2_227 = zext i1 %var_2_226 to i8
; %var_2_285 = zext i1 %var_2_284 to i8
; Matched:\<badref\>:  store i8 %var_2_227, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_285, i8* %var_2_38, align 1
; Matched:%var_2_228:  %var_2_228 = add i64 %var_2_193, 35
; %var_2_286 = add i64 %var_2_251, 35
; Matched:\<badref\>:  store i64 %var_2_228, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_367, i64* %var_2_365, align 8
; store i64 %var_2_263, i64* %var_2_261, align 8
; Matched:%var_2_229:  %var_2_229 = load i64, i64* %PC, align 8
; %var_2_287 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_229, -82
; %var_2_288 = add i64 %var_2_287, -82
; Matched:\<badref\>:  store i64 %var_2_230, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_288, i64* %var_2_3, align 8
  br label %block_.L_40066b

block_.L_4006c2:                                  ; preds = %block_.L_40066b
; Matched:%var_2_552:  %var_2_552 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_289 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
; Matched:%var_2_553:  %var_2_553 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_290 = bitcast %union.VectorReg* %var_2_73 to double*
; Matched:%var_2_554:  %var_2_554 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_291 = bitcast %union.VectorReg* %var_2_81 to double*
; Matched:%var_2_555:  %var_2_555 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_292 = bitcast %union.VectorReg* %var_2_89 to double*
; Matched:%var_2_556:  %var_2_556 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_293 = bitcast %union.VectorReg* %var_2_97 to double*
; Matched:%var_2_557:  %var_2_557 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
; %var_2_294 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
; Matched:%var_2_558:  %var_2_558 = getelementptr inbounds i8, i8* %var_2_552, i64 4
; %var_2_295 = getelementptr inbounds i8, i8* %var_2_289, i64 4
; Matched:%var_2_559:  %var_2_559 = bitcast i8* %var_2_558 to i32*
; %var_2_296 = bitcast i8* %var_2_295 to i32*
; Matched:%var_2_560:  %var_2_560 = bitcast i64* %var_2_71 to i32*
; %var_2_297 = bitcast i64* %var_2_71 to i32*
; Matched:%var_2_561:  %var_2_561 = getelementptr inbounds i8, i8* %var_2_552, i64 12
; %var_2_298 = getelementptr inbounds i8, i8* %var_2_289, i64 12
; Matched:%var_2_562:  %var_2_562 = bitcast i8* %var_2_561 to i32*
; %var_2_299 = bitcast i8* %var_2_298 to i32*
%var_2_300 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_300, align 1
; Matched:%var_2_564:  %var_2_564 = add i64 %var_2_268, 9
; %var_2_301 = add i64 %var_2_234, 9
; Matched:\<badref\>:  store i64 %var_2_564, i64* %PC, align 8
; store i64 %var_2_301, i64* %var_2_3, align 8
; Matched:%var_2_565:  %var_2_565 = load i64, i64* %var_2_239, align 8
; %var_2_302 = load i64, i64* %var_2_205, align 8
; Matched:%var_2_566:  %var_2_566 = sitofp i64 %var_2_565 to double
; %var_2_303 = sitofp i64 %var_2_302 to double
; Matched:\<badref\>:  store double %var_2_566, double* bitcast (%sc_type* @sc to double*), align 8
; store double %var_2_303, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
%var_2_304 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
store i64 %var_2_304, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
; Matched:%var_2_568:  %var_2_568 = add i64 %var_2_232, -24
; %var_2_305 = add i64 %var_2_198, -24
; Matched:%var_2_569:  %var_2_569 = add i64 %var_2_268, 32
; %var_2_306 = add i64 %var_2_234, 32
; Matched:\<badref\>:  store i64 %var_2_569, i64* %PC, align 8
; store i64 %var_2_306, i64* %var_2_3, align 8
; Matched:%var_2_570:  %var_2_570 = inttoptr i64 %var_2_568 to i64*
; %var_2_307 = inttoptr i64 %var_2_305 to i64*
; Matched:\<badref\>:  store i64 %var_2_567, i64* %var_2_570, align 8
; store i64 %var_2_304, i64* %var_2_307, align 8
; Matched:%var_2_571:  %var_2_571 = load i64, i64* %RBP, align 8
; %var_2_308 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_572:  %var_2_572 = add i64 %var_2_571, -32
; %var_2_309 = add i64 %var_2_308, -32
%var_2_310 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_585, 5
; %var_2_311 = add i64 %var_2_310, 5
; Matched:\<badref\>:  store i64 %var_2_586, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
; Matched:%var_2_575:  %var_2_575 = load i64, i64* %var_2_70, align 1
; %var_2_312 = load i64, i64* %var_2_70, align 1
; Matched:%var_2_576:  %var_2_576 = inttoptr i64 %var_2_572 to i64*
; %var_2_313 = inttoptr i64 %var_2_309 to i64*
; Matched:\<badref\>:  store i64 %var_2_575, i64* %var_2_576, align 8
; store i64 %var_2_312, i64* %var_2_313, align 8
; Matched:%var_2_577:  %var_2_577 = load i64, i64* %RBP, align 8
; %var_2_314 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_578:  %var_2_578 = add i64 %var_2_577, -40
; %var_2_315 = add i64 %var_2_314, -40
%var_2_316 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_477:  %var_2_477 = add i64 %var_2_473, 5
; %var_2_317 = add i64 %var_2_316, 5
; Matched:\<badref\>:  store i64 %var_2_574, i64* %PC, align 8
; store i64 %var_2_317, i64* %var_2_3, align 8
; Matched:%var_2_581:  %var_2_581 = load i64, i64* %var_2_70, align 1
; %var_2_318 = load i64, i64* %var_2_70, align 1
; Matched:%var_2_582:  %var_2_582 = inttoptr i64 %var_2_578 to i64*
; %var_2_319 = inttoptr i64 %var_2_315 to i64*
; Matched:\<badref\>:  store i64 %var_2_581, i64* %var_2_582, align 8
; store i64 %var_2_318, i64* %var_2_319, align 8
; Matched:%var_2_583:  %var_2_583 = load i64, i64* %RBP, align 8
; %var_2_320 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_584:  %var_2_584 = add i64 %var_2_583, -48
; %var_2_321 = add i64 %var_2_320, -48
%var_2_322 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_324:  %var_2_324 = add i64 %var_2_323, 5
; %var_2_323 = add i64 %var_2_322, 5
; Matched:\<badref\>:  store i64 %var_2_324, i64* %PC, align 8
; store i64 %var_2_323, i64* %var_2_3, align 8
; Matched:%var_2_587:  %var_2_587 = load i64, i64* %var_2_70, align 1
; %var_2_324 = load i64, i64* %var_2_70, align 1
; Matched:%var_2_588:  %var_2_588 = inttoptr i64 %var_2_584 to i64*
; %var_2_325 = inttoptr i64 %var_2_321 to i64*
; Matched:\<badref\>:  store i64 %var_2_587, i64* %var_2_588, align 8
; store i64 %var_2_324, i64* %var_2_325, align 8
%var_2_326 = load i64, i64* %RBP.i, align 8
%var_2_327 = add i64 %var_2_326, -72
%var_2_328 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_462:  %var_2_462 = add i64 %var_2_451, 8
; %var_2_329 = add i64 %var_2_328, 8
; Matched:\<badref\>:  store i64 %var_2_462, i64* %PC, align 8
; store i64 %var_2_329, i64* %var_2_3, align 8
%var_2_330 = inttoptr i64 %var_2_327 to i64*
store i64 1, i64* %var_2_330, align 8
%.pre15 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4006f9

block_.L_4006f9:                                  ; preds = %block_400707, %block_.L_4006c2
%var_2_331 = phi i64 [ %var_2_493, %block_400707 ], [ %.pre15, %block_.L_4006c2 ]
%var_2_332 = load i64, i64* %RBP.i, align 8
%var_2_333 = add i64 %var_2_332, -72
; Matched:%var_2_516:  %var_2_516 = add i64 %var_2_513, 4
; %var_2_334 = add i64 %var_2_331, 4
; Matched:\<badref\>:  store i64 %var_2_516, i64* %PC, align 8
; store i64 %var_2_334, i64* %var_2_3, align 8
%var_2_335 = inttoptr i64 %var_2_333 to i64*
%var_2_336 = load i64, i64* %var_2_335, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_336, i64* %RAX.i245, align 8
%var_2_337 = add i64 %var_2_332, -80
; Matched:%var_2_520:  %var_2_520 = add i64 %var_2_513, 8
; %var_2_338 = add i64 %var_2_331, 8
; Matched:\<badref\>:  store i64 %var_2_520, i64* %PC, align 8
; store i64 %var_2_338, i64* %var_2_3, align 8
%var_2_339 = inttoptr i64 %var_2_337 to i64*
%var_2_340 = load i64, i64* %var_2_339, align 8
%var_2_341 = sub i64 %var_2_336, %var_2_340
; Matched:%var_2_524:  %var_2_524 = icmp ult i64 %var_2_518, %var_2_522
; %var_2_342 = icmp ult i64 %var_2_336, %var_2_340
; Matched:%var_2_243:  %var_2_243 = zext i1 %var_2_242 to i8
; %var_2_343 = zext i1 %var_2_342 to i8
; Matched:\<badref\>:  store i8 %var_2_243, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_343, i8* %var_2_14, align 1
; Matched:%var_2_526:  %var_2_526 = trunc i64 %var_2_523 to i32
; %var_2_344 = trunc i64 %var_2_341 to i32
; Matched:%var_2_245:  %var_2_245 = and i32 %var_2_244, 255
; %var_2_345 = and i32 %var_2_344, 255
; Matched:%var_2_246:  %var_2_246 = tail call i32 @llvm.ctpop.i32(i32 %var_2_245) #11
; %var_2_346 = tail call i32 @llvm.ctpop.i32(i32 %var_2_345)
; Matched:%var_2_529:  %var_2_529 = trunc i32 %var_2_528 to i8
; %var_2_347 = trunc i32 %var_2_346 to i8
; Matched:%var_2_530:  %var_2_530 = and i8 %var_2_529, 1
; %var_2_348 = and i8 %var_2_347, 1
; Matched:%var_2_531:  %var_2_531 = xor i8 %var_2_530, 1
; %var_2_349 = xor i8 %var_2_348, 1
; Matched:\<badref\>:  store i8 %var_2_249, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_349, i8* %var_2_21, align 1
; Matched:%var_2_250:  %var_2_250 = xor i64 %var_2_240, %var_2_236
; %var_2_350 = xor i64 %var_2_340, %var_2_336
; Matched:%var_2_533:  %var_2_533 = xor i64 %var_2_532, %var_2_523
; %var_2_351 = xor i64 %var_2_350, %var_2_341
; Matched:%var_2_252:  %var_2_252 = lshr i64 %var_2_251, 4
; %var_2_352 = lshr i64 %var_2_351, 4
; Matched:%var_2_253:  %var_2_253 = trunc i64 %var_2_252 to i8
; %var_2_353 = trunc i64 %var_2_352 to i8
; Matched:%var_2_536:  %var_2_536 = and i8 %var_2_535, 1
; %var_2_354 = and i8 %var_2_353, 1
; Matched:\<badref\>:  store i8 %var_2_536, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_354, i8* %var_2_26, align 1
%var_2_355 = icmp eq i64 %var_2_341, 0
; Matched:%var_2_256:  %var_2_256 = zext i1 %var_2_255 to i8
; %var_2_356 = zext i1 %var_2_355 to i8
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_356, i8* %var_2_29, align 1
%var_2_357 = lshr i64 %var_2_341, 63
%var_2_358 = trunc i64 %var_2_357 to i8
; Matched:\<badref\>:  store i8 %var_2_258, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_358, i8* %var_2_32, align 1
%var_2_359 = lshr i64 %var_2_336, 63
%var_2_360 = lshr i64 %var_2_340, 63
%var_2_361 = xor i64 %var_2_360, %var_2_359
%var_2_362 = xor i64 %var_2_357, %var_2_359
%var_2_363 = add nuw nsw i64 %var_2_362, %var_2_361
%var_2_364 = icmp eq i64 %var_2_363, 2
; Matched:%var_2_265:  %var_2_265 = zext i1 %var_2_264 to i8
; %var_2_365 = zext i1 %var_2_364 to i8
; Matched:\<badref\>:  store i8 %var_2_265, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_365, i8* %var_2_38, align 1
%var_2_366 = icmp ne i8 %var_2_358, 0
%var_2_367 = xor i1 %var_2_366, %var_2_364
%.demorgan16 = or i1 %var_2_355, %var_2_367
  %.v17 = select i1 %.demorgan16, i64 14, i64 178
%var_2_368 = add i64 %var_2_331, %.v17
; Matched:%var_2_551:  %var_2_551 = add i64 %var_2_550, 10
; %var_2_369 = add i64 %var_2_368, 10
; Matched:\<badref\>:  store i64 %var_2_551, i64* %PC, align 8
; store i64 %var_2_369, i64* %var_2_3, align 8
  br i1 %.demorgan16, label %block_400707, label %block_.L_4007ab

block_400707:                                     ; preds = %block_.L_4006f9
  store i64 -9223372036854775808, i64* %RAX.i245, align 8
; Matched:%var_2_177:  %var_2_177 = add i64 %var_2_232, -16
; %var_2_370 = add i64 %var_2_332, -16
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_550, 15
; %var_2_371 = add i64 %var_2_368, 15
; Matched:\<badref\>:  store i64 %var_2_270, i64* %PC, align 8
; store i64 %var_2_371, i64* %var_2_3, align 8
; Matched:%var_2_179:  %var_2_179 = inttoptr i64 %var_2_177 to i64*
; %var_2_372 = inttoptr i64 %var_2_370 to i64*
; Matched:%var_2_272:  %var_2_272 = load i64, i64* %var_2_271, align 8
; %var_2_373 = load i64, i64* %var_2_372, align 8
; Matched:%var_2_273:  %var_2_273 = xor i64 %var_2_272, -9223372036854775808
; %var_2_374 = xor i64 %var_2_373, -9223372036854775808
; Matched:\<badref\>:  store i64 %var_2_273, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_374, i64* %RCX.i283, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_182:  %var_2_182 = trunc i64 %var_2_180 to i32
; %var_2_375 = trunc i64 %var_2_373 to i32
; Matched:%var_2_183:  %var_2_183 = and i32 %var_2_182, 255
; %var_2_376 = and i32 %var_2_375, 255
; Matched:%var_2_184:  %var_2_184 = tail call i32 @llvm.ctpop.i32(i32 %var_2_183) #11
; %var_2_377 = tail call i32 @llvm.ctpop.i32(i32 %var_2_376)
; Matched:%var_2_185:  %var_2_185 = trunc i32 %var_2_184 to i8
; %var_2_378 = trunc i32 %var_2_377 to i8
; Matched:%var_2_278:  %var_2_278 = and i8 %var_2_277, 1
; %var_2_379 = and i8 %var_2_378, 1
; Matched:%var_2_279:  %var_2_279 = xor i8 %var_2_278, 1
; %var_2_380 = xor i8 %var_2_379, 1
; Matched:\<badref\>:  store i8 %var_2_279, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_380, i8* %var_2_21, align 1
; Matched:%var_2_280:  %var_2_280 = icmp eq i64 %var_2_273, 0
; %var_2_381 = icmp eq i64 %var_2_374, 0
; Matched:%var_2_189:  %var_2_189 = zext i1 %var_2_188 to i8
; %var_2_382 = zext i1 %var_2_381 to i8
; Matched:\<badref\>:  store i8 %var_2_189, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_382, i8* %var_2_29, align 1
; Matched:%var_2_190:  %var_2_190 = lshr i64 %var_2_181, 63
; %var_2_383 = lshr i64 %var_2_374, 63
; Matched:%var_2_191:  %var_2_191 = trunc i64 %var_2_190 to i8
; %var_2_384 = trunc i64 %var_2_383 to i8
; Matched:\<badref\>:  store i8 %var_2_283, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_384, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_284:  %var_2_284 = add i64 %var_2_550, 33
; %var_2_385 = add i64 %var_2_368, 33
; Matched:\<badref\>:  store i64 %var_2_284, i64* %PC, align 8
; store i64 %var_2_385, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_181, i64* %var_2_179, align 8
; store i64 %var_2_374, i64* %var_2_372, align 8
%var_2_386 = load i64, i64* %var_2_3, align 8
%var_2_387 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
store i64 %var_2_387, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
%var_2_388 = load i64, i64* %RBP.i, align 8
%var_2_389 = add i64 %var_2_388, -16
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_410, 14
; %var_2_390 = add i64 %var_2_386, 14
; Matched:\<badref\>:  store i64 %var_2_289, i64* %PC, align 8
; store i64 %var_2_390, i64* %var_2_3, align 8
%.cast9 = bitcast i64 %var_2_387 to double
%var_2_391 = inttoptr i64 %var_2_389 to double*
%var_2_392 = load double, double* %var_2_391, align 8
%var_2_393 = fadd double %.cast9, %var_2_392
; Matched:\<badref\>:  store double %var_2_292, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_393, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
store double %var_2_393, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:%var_2_293:  %var_2_293 = add i64 %var_2_287, -24
; %var_2_394 = add i64 %var_2_388, -24
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_285, 28
; %var_2_395 = add i64 %var_2_386, 28
; Matched:\<badref\>:  store i64 %var_2_294, i64* %PC, align 8
; store i64 %var_2_395, i64* %var_2_3, align 8
; Matched:%var_2_295:  %var_2_295 = inttoptr i64 %var_2_293 to double*
; %var_2_396 = inttoptr i64 %var_2_394 to double*
; Matched:%var_2_296:  %var_2_296 = load double, double* %var_2_295, align 8
; %var_2_397 = load double, double* %var_2_396, align 8
%var_2_398 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*), align 8
; Matched:%var_2_298:  %var_2_298 = fadd double %var_2_296, %var_2_297
; %var_2_399 = fadd double %var_2_397, %var_2_398
; Matched:\<badref\>:  store double %var_2_298, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_399, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_285, 42
; %var_2_400 = add i64 %var_2_386, 42
; Matched:\<badref\>:  store i64 %var_2_299, i64* %PC, align 8
; store i64 %var_2_400, i64* %var_2_3, align 8
; Matched:%var_2_300:  %var_2_300 = inttoptr i64 %var_2_293 to double*
; %var_2_401 = inttoptr i64 %var_2_394 to double*
; Matched:\<badref\>:  store double %var_2_298, double* %var_2_300, align 8
; store double %var_2_399, double* %var_2_401, align 8
; Matched:%var_2_301:  %var_2_301 = load i64, i64* %RBP, align 8
; %var_2_402 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_302:  %var_2_302 = add i64 %var_2_301, -48
; %var_2_403 = add i64 %var_2_402, -48
%var_2_404 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_574:  %var_2_574 = add i64 %var_2_573, 5
; %var_2_405 = add i64 %var_2_404, 5
; Matched:\<badref\>:  store i64 %var_2_477, i64* %PC, align 8
; store i64 %var_2_405, i64* %var_2_3, align 8
; Matched:%var_2_305:  %var_2_305 = inttoptr i64 %var_2_302 to i64*
; %var_2_406 = inttoptr i64 %var_2_403 to i64*
; Matched:%var_2_306:  %var_2_306 = load i64, i64* %var_2_305, align 8
; %var_2_407 = load i64, i64* %var_2_406, align 8
; Matched:\<badref\>:  store i64 %var_2_306, i64* %var_2_70, align 1, !tbaa !1285
; store i64 %var_2_407, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_301, -16
; %var_2_408 = add i64 %var_2_402, -16
; Matched:%var_2_308:  %var_2_308 = add i64 %var_2_303, 10
; %var_2_409 = add i64 %var_2_404, 10
; Matched:\<badref\>:  store i64 %var_2_308, i64* %PC, align 8
; store i64 %var_2_409, i64* %var_2_3, align 8
; Matched:%var_2_309:  %var_2_309 = inttoptr i64 %var_2_307 to i64*
; %var_2_410 = inttoptr i64 %var_2_408 to i64*
; Matched:%var_2_310:  %var_2_310 = load i64, i64* %var_2_309, align 8
; %var_2_411 = load i64, i64* %var_2_410, align 8
; Matched:\<badref\>:  store i64 %var_2_310, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_411, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
; Matched:%var_2_311:  %var_2_311 = add i64 %var_2_301, -24
; %var_2_412 = add i64 %var_2_402, -24
; Matched:%var_2_312:  %var_2_312 = add i64 %var_2_303, 15
; %var_2_413 = add i64 %var_2_404, 15
; Matched:\<badref\>:  store i64 %var_2_312, i64* %PC, align 8
; store i64 %var_2_413, i64* %var_2_3, align 8
; Matched:%var_2_313:  %var_2_313 = bitcast i64 %var_2_310 to double
; %var_2_414 = bitcast i64 %var_2_411 to double
; Matched:%var_2_314:  %var_2_314 = inttoptr i64 %var_2_311 to double*
; %var_2_415 = inttoptr i64 %var_2_412 to double*
; Matched:%var_2_315:  %var_2_315 = load double, double* %var_2_314, align 8
; %var_2_416 = load double, double* %var_2_415, align 8
; Matched:%var_2_316:  %var_2_316 = fsub double %var_2_313, %var_2_315
; %var_2_417 = fsub double %var_2_414, %var_2_416
; Matched:\<badref\>:  store double %var_2_316, double* %var_2_553, align 1, !tbaa !1285
; store double %var_2_417, double* %var_2_290, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_79, align 1
; Matched:%var_2_317:  %var_2_317 = bitcast i64 %var_2_306 to double
; %var_2_418 = bitcast i64 %var_2_407 to double
; Matched:%var_2_318:  %var_2_318 = fadd double %var_2_317, %var_2_316
; %var_2_419 = fadd double %var_2_418, %var_2_417
; Matched:\<badref\>:  store double %var_2_318, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_419, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_303, 24
; %var_2_420 = add i64 %var_2_404, 24
; Matched:\<badref\>:  store i64 %var_2_319, i64* %PC, align 8
; store i64 %var_2_420, i64* %var_2_3, align 8
; Matched:%var_2_320:  %var_2_320 = inttoptr i64 %var_2_302 to double*
; %var_2_421 = inttoptr i64 %var_2_403 to double*
; Matched:\<badref\>:  store double %var_2_318, double* %var_2_320, align 8
; store double %var_2_419, double* %var_2_421, align 8
; Matched:%var_2_321:  %var_2_321 = load i64, i64* %RBP, align 8
; %var_2_422 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_322:  %var_2_322 = add i64 %var_2_321, -32
; %var_2_423 = add i64 %var_2_422, -32
%var_2_424 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_580:  %var_2_580 = add i64 %var_2_579, 5
; %var_2_425 = add i64 %var_2_424, 5
; Matched:\<badref\>:  store i64 %var_2_580, i64* %PC, align 8
; store i64 %var_2_425, i64* %var_2_3, align 8
; Matched:%var_2_325:  %var_2_325 = inttoptr i64 %var_2_322 to i64*
; %var_2_426 = inttoptr i64 %var_2_423 to i64*
; Matched:%var_2_326:  %var_2_326 = load i64, i64* %var_2_325, align 8
; %var_2_427 = load i64, i64* %var_2_426, align 8
; Matched:\<badref\>:  store i64 %var_2_326, i64* %var_2_70, align 1, !tbaa !1285
; store i64 %var_2_427, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_321, -16
; %var_2_428 = add i64 %var_2_422, -16
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_323, 10
; %var_2_429 = add i64 %var_2_424, 10
; Matched:\<badref\>:  store i64 %var_2_328, i64* %PC, align 8
; store i64 %var_2_429, i64* %var_2_3, align 8
; Matched:%var_2_329:  %var_2_329 = inttoptr i64 %var_2_327 to i64*
; %var_2_430 = inttoptr i64 %var_2_428 to i64*
; Matched:%var_2_330:  %var_2_330 = load i64, i64* %var_2_329, align 8
; %var_2_431 = load i64, i64* %var_2_430, align 8
; Matched:\<badref\>:  store i64 %var_2_330, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_431, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
; Matched:%var_2_331:  %var_2_331 = add i64 %var_2_321, -24
; %var_2_432 = add i64 %var_2_422, -24
; Matched:%var_2_332:  %var_2_332 = add i64 %var_2_323, 15
; %var_2_433 = add i64 %var_2_424, 15
; Matched:\<badref\>:  store i64 %var_2_332, i64* %PC, align 8
; store i64 %var_2_433, i64* %var_2_3, align 8
; Matched:%var_2_333:  %var_2_333 = bitcast i64 %var_2_330 to double
; %var_2_434 = bitcast i64 %var_2_431 to double
; Matched:%var_2_334:  %var_2_334 = inttoptr i64 %var_2_331 to double*
; %var_2_435 = inttoptr i64 %var_2_432 to double*
; Matched:%var_2_335:  %var_2_335 = load double, double* %var_2_334, align 8
; %var_2_436 = load double, double* %var_2_435, align 8
; Matched:%var_2_336:  %var_2_336 = fmul double %var_2_333, %var_2_335
; %var_2_437 = fmul double %var_2_434, %var_2_436
; Matched:\<badref\>:  store double %var_2_336, double* %var_2_553, align 1, !tbaa !1285
; store double %var_2_437, double* %var_2_290, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_79, align 1
; Matched:%var_2_337:  %var_2_337 = bitcast i64 %var_2_326 to double
; %var_2_438 = bitcast i64 %var_2_427 to double
; Matched:%var_2_338:  %var_2_338 = fsub double %var_2_337, %var_2_336
; %var_2_439 = fsub double %var_2_438, %var_2_437
; Matched:\<badref\>:  store double %var_2_338, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_439, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_323, 24
; %var_2_440 = add i64 %var_2_424, 24
; Matched:\<badref\>:  store i64 %var_2_339, i64* %PC, align 8
; store i64 %var_2_440, i64* %var_2_3, align 8
; Matched:%var_2_340:  %var_2_340 = inttoptr i64 %var_2_322 to double*
; %var_2_441 = inttoptr i64 %var_2_423 to double*
; Matched:\<badref\>:  store double %var_2_338, double* %var_2_340, align 8
; store double %var_2_439, double* %var_2_441, align 8
; Matched:%var_2_341:  %var_2_341 = load i64, i64* %RBP, align 8
; %var_2_442 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_341, -40
; %var_2_443 = add i64 %var_2_442, -40
%var_2_444 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_304:  %var_2_304 = add i64 %var_2_303, 5
; %var_2_445 = add i64 %var_2_444, 5
; Matched:\<badref\>:  store i64 %var_2_304, i64* %PC, align 8
; store i64 %var_2_445, i64* %var_2_3, align 8
; Matched:%var_2_345:  %var_2_345 = inttoptr i64 %var_2_342 to i64*
; %var_2_446 = inttoptr i64 %var_2_443 to i64*
; Matched:%var_2_346:  %var_2_346 = load i64, i64* %var_2_345, align 8
; %var_2_447 = load i64, i64* %var_2_446, align 8
; Matched:\<badref\>:  store i64 %var_2_346, i64* %var_2_70, align 1, !tbaa !1285
; store i64 %var_2_447, i64* %var_2_70, align 1
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_72, align 1
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_341, -16
; %var_2_448 = add i64 %var_2_442, -16
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_343, 10
; %var_2_449 = add i64 %var_2_444, 10
; Matched:\<badref\>:  store i64 %var_2_348, i64* %PC, align 8
; store i64 %var_2_449, i64* %var_2_3, align 8
; Matched:%var_2_349:  %var_2_349 = inttoptr i64 %var_2_347 to i64*
; %var_2_450 = inttoptr i64 %var_2_448 to i64*
; Matched:%var_2_350:  %var_2_350 = load i64, i64* %var_2_349, align 8
; %var_2_451 = load i64, i64* %var_2_450, align 8
; Matched:\<badref\>:  store i64 %var_2_350, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_451, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
; Matched:%var_2_351:  %var_2_351 = add i64 %var_2_341, -24
; %var_2_452 = add i64 %var_2_442, -24
; Matched:%var_2_352:  %var_2_352 = add i64 %var_2_343, 15
; %var_2_453 = add i64 %var_2_444, 15
; Matched:\<badref\>:  store i64 %var_2_352, i64* %PC, align 8
; store i64 %var_2_453, i64* %var_2_3, align 8
; Matched:%var_2_353:  %var_2_353 = bitcast i64 %var_2_350 to double
; %var_2_454 = bitcast i64 %var_2_451 to double
; Matched:%var_2_354:  %var_2_354 = inttoptr i64 %var_2_351 to double*
; %var_2_455 = inttoptr i64 %var_2_452 to double*
; Matched:%var_2_355:  %var_2_355 = load double, double* %var_2_354, align 8
; %var_2_456 = load double, double* %var_2_455, align 8
; Matched:%var_2_356:  %var_2_356 = fdiv double %var_2_353, %var_2_355
; %var_2_457 = fdiv double %var_2_454, %var_2_456
; Matched:\<badref\>:  store double %var_2_356, double* %var_2_553, align 1, !tbaa !1285
; store double %var_2_457, double* %var_2_290, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_75, align 1, !tbaa !1285
; store i64 0, i64* %var_2_79, align 1
; Matched:%var_2_357:  %var_2_357 = bitcast i64 %var_2_346 to double
; %var_2_458 = bitcast i64 %var_2_447 to double
; Matched:%var_2_358:  %var_2_358 = fadd double %var_2_357, %var_2_356
; %var_2_459 = fadd double %var_2_458, %var_2_457
; Matched:\<badref\>:  store double %var_2_358, double* %var_2_69, align 1, !tbaa !1285
; store double %var_2_459, double* %var_2_69, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_71, align 1, !tbaa !1285
; store i64 0, i64* %var_2_71, align 1
; Matched:%var_2_359:  %var_2_359 = add i64 %var_2_343, 24
; %var_2_460 = add i64 %var_2_444, 24
; Matched:\<badref\>:  store i64 %var_2_359, i64* %PC, align 8
; store i64 %var_2_460, i64* %var_2_3, align 8
; Matched:%var_2_360:  %var_2_360 = inttoptr i64 %var_2_342 to double*
; %var_2_461 = inttoptr i64 %var_2_443 to double*
; Matched:\<badref\>:  store double %var_2_358, double* %var_2_360, align 8
; store double %var_2_459, double* %var_2_461, align 8
%var_2_462 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_361, -72
; %var_2_463 = add i64 %var_2_462, -72
; Matched:%var_2_363:  %var_2_363 = load i64, i64* %PC, align 8
; %var_2_464 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_364:  %var_2_364 = add i64 %var_2_363, 4
; %var_2_465 = add i64 %var_2_464, 4
; Matched:\<badref\>:  store i64 %var_2_364, i64* %PC, align 8
; store i64 %var_2_465, i64* %var_2_3, align 8
; Matched:%var_2_203:  %var_2_203 = inttoptr i64 %var_2_201 to i64*
; %var_2_466 = inttoptr i64 %var_2_463 to i64*
; Matched:%var_2_204:  %var_2_204 = load i64, i64* %var_2_203, align 8
; %var_2_467 = load i64, i64* %var_2_466, align 8
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_204, 1
; %var_2_468 = add i64 %var_2_467, 1
; Matched:\<badref\>:  store i64 %var_2_205, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_468, i64* %RAX.i245, align 8
; Matched:%var_2_368:  %var_2_368 = icmp eq i64 %var_2_366, -1
; %var_2_469 = icmp eq i64 %var_2_467, -1
; Matched:%var_2_369:  %var_2_369 = icmp eq i64 %var_2_367, 0
; %var_2_470 = icmp eq i64 %var_2_468, 0
; Matched:%var_2_370:  %var_2_370 = or i1 %var_2_368, %var_2_369
; %var_2_471 = or i1 %var_2_469, %var_2_470
; Matched:%var_2_371:  %var_2_371 = zext i1 %var_2_370 to i8
; %var_2_472 = zext i1 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_209, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_472, i8* %var_2_14, align 1
; Matched:%var_2_210:  %var_2_210 = trunc i64 %var_2_205 to i32
; %var_2_473 = trunc i64 %var_2_468 to i32
; Matched:%var_2_211:  %var_2_211 = and i32 %var_2_210, 255
; %var_2_474 = and i32 %var_2_473, 255
; Matched:%var_2_212:  %var_2_212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_211) #11
; %var_2_475 = tail call i32 @llvm.ctpop.i32(i32 %var_2_474)
; Matched:%var_2_375:  %var_2_375 = trunc i32 %var_2_374 to i8
; %var_2_476 = trunc i32 %var_2_475 to i8
; Matched:%var_2_376:  %var_2_376 = and i8 %var_2_375, 1
; %var_2_477 = and i8 %var_2_476, 1
; Matched:%var_2_377:  %var_2_377 = xor i8 %var_2_376, 1
; %var_2_478 = xor i8 %var_2_477, 1
; Matched:\<badref\>:  store i8 %var_2_377, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_478, i8* %var_2_21, align 1
; Matched:%var_2_216:  %var_2_216 = xor i64 %var_2_205, %var_2_204
; %var_2_479 = xor i64 %var_2_468, %var_2_467
; Matched:%var_2_217:  %var_2_217 = lshr i64 %var_2_216, 4
; %var_2_480 = lshr i64 %var_2_479, 4
; Matched:%var_2_218:  %var_2_218 = trunc i64 %var_2_217 to i8
; %var_2_481 = trunc i64 %var_2_480 to i8
; Matched:%var_2_219:  %var_2_219 = and i8 %var_2_218, 1
; %var_2_482 = and i8 %var_2_481, 1
; Matched:\<badref\>:  store i8 %var_2_381, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_482, i8* %var_2_26, align 1
; Matched:%var_2_382:  %var_2_382 = zext i1 %var_2_369 to i8
; %var_2_483 = zext i1 %var_2_470 to i8
; Matched:\<badref\>:  store i8 %var_2_382, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_483, i8* %var_2_29, align 1
; Matched:%var_2_383:  %var_2_383 = lshr i64 %var_2_367, 63
; %var_2_484 = lshr i64 %var_2_468, 63
; Matched:%var_2_222:  %var_2_222 = trunc i64 %var_2_221 to i8
; %var_2_485 = trunc i64 %var_2_484 to i8
; Matched:\<badref\>:  store i8 %var_2_222, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_485, i8* %var_2_32, align 1
; Matched:%var_2_223:  %var_2_223 = lshr i64 %var_2_204, 63
; %var_2_486 = lshr i64 %var_2_467, 63
; Matched:%var_2_224:  %var_2_224 = xor i64 %var_2_221, %var_2_223
; %var_2_487 = xor i64 %var_2_484, %var_2_486
; Matched:%var_2_387:  %var_2_387 = add nuw nsw i64 %var_2_386, %var_2_383
; %var_2_488 = add nuw nsw i64 %var_2_487, %var_2_484
; Matched:%var_2_388:  %var_2_388 = icmp eq i64 %var_2_387, 2
; %var_2_489 = icmp eq i64 %var_2_488, 2
; Matched:%var_2_389:  %var_2_389 = zext i1 %var_2_388 to i8
; %var_2_490 = zext i1 %var_2_489 to i8
; Matched:\<badref\>:  store i8 %var_2_389, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_490, i8* %var_2_38, align 1
; Matched:%var_2_390:  %var_2_390 = add i64 %var_2_363, 12
; %var_2_491 = add i64 %var_2_464, 12
; Matched:\<badref\>:  store i64 %var_2_390, i64* %PC, align 8
; store i64 %var_2_491, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_205, i64* %var_2_203, align 8
; store i64 %var_2_468, i64* %var_2_466, align 8
%var_2_492 = load i64, i64* %var_2_3, align 8
%var_2_493 = add i64 %var_2_492, -173
; Matched:\<badref\>:  store i64 %var_2_392, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_493, i64* %var_2_3, align 8
  br label %block_.L_4006f9

block_.L_4007ab:                                  ; preds = %block_.L_4006f9
; Matched:\<badref\>:  store i64 add (i64 ptrtoint (%seg_400940__rodata_type* @seg_400940__rodata to i64), i64 130), i64* %RDI, align 8, !tbaa !1261
; store i64 ptrtoint (%G__0x400a16_type* @G__0x400a16 to i64), i64* %RDI.i298, align 8
%var_2_494 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_494, align 1
%var_2_495 = add i64 %var_2_368, add (i64 ptrtoint (%G_0x1b8__rip__type* @G_0x1b8__rip_ to i64), i64 13)
%var_2_496 = add i64 %var_2_368, 21
store i64 %var_2_496, i64* %var_2_3, align 8
%var_2_497 = inttoptr i64 %var_2_495 to i64*
%var_2_498 = load i64, i64* %var_2_497, align 8
store i64 %var_2_498, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
%var_2_499 = add i64 %var_2_368, add (i64 ptrtoint (%G_0x1b8__rip__type* @G_0x1b8__rip_ to i64), i64 21)
%var_2_500 = add i64 %var_2_368, 29
store i64 %var_2_500, i64* %var_2_3, align 8
%var_2_501 = inttoptr i64 %var_2_499 to i64*
%var_2_502 = load i64, i64* %var_2_501, align 8
store i64 %var_2_502, i64* %var_2_86, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_88, align 1
%var_2_503 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
store i64 %var_2_503, i64* %var_2_94, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_96, align 1
; Matched:%var_2_397:  %var_2_397 = add i64 %var_2_514, -48
; %var_2_504 = add i64 %var_2_332, -48
; Matched:%var_2_398:  %var_2_398 = add i64 %var_2_550, 43
; %var_2_505 = add i64 %var_2_368, 43
; Matched:\<badref\>:  store i64 %var_2_398, i64* %PC, align 8
; store i64 %var_2_505, i64* %var_2_3, align 8
; Matched:  %.cast10 = bitcast i64 %var_2_396 to double
; %.cast10 = bitcast i64 %var_2_503 to double
; Matched:%var_2_399:  %var_2_399 = inttoptr i64 %var_2_397 to double*
; %var_2_506 = inttoptr i64 %var_2_504 to double*
; Matched:%var_2_400:  %var_2_400 = load double, double* %var_2_399, align 8
; %var_2_507 = load double, double* %var_2_506, align 8
; Matched:%var_2_401:  %var_2_401 = fmul double %.cast10, %var_2_400
; %var_2_508 = fmul double %.cast10, %var_2_507
; Matched:%var_2_402:  %var_2_402 = load double, double* bitcast (%sc_type* @sc to double*), align 8
; %var_2_509 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_403:  %var_2_403 = fdiv double %var_2_401, %var_2_402
; %var_2_510 = fdiv double %var_2_508, %var_2_509
; Matched:%var_2_404:  %var_2_404 = tail call double @llvm.trunc.f64(double %var_2_403) #11
; %var_2_511 = tail call double @llvm.trunc.f64(double %var_2_510)
; Matched:%var_2_405:  %var_2_405 = tail call double @llvm.fabs.f64(double %var_2_404) #11
; %var_2_512 = tail call double @llvm.fabs.f64(double %var_2_511)
; Matched:%var_2_406:  %var_2_406 = fcmp ogt double %var_2_405, 0x43E0000000000000
; %var_2_513 = fcmp ogt double %var_2_512, 0x43E0000000000000
; Matched:%var_2_407:  %var_2_407 = fptosi double %var_2_404 to i64
; %var_2_514 = fptosi double %var_2_511 to i64
; Matched:%var_2_408:  %var_2_408 = select i1 %var_2_406, i64 -9223372036854775808, i64 %var_2_407
; %var_2_515 = select i1 %var_2_513, i64 -9223372036854775808, i64 %var_2_514
; Matched:\<badref\>:  store i64 %var_2_408, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_515, i64* %RAX.i245, align 8
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_550, 61
; %var_2_516 = add i64 %var_2_368, 61
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_516, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_408, i64* %var_2_521, align 8
; store i64 %var_2_515, i64* %var_2_339, align 8
%var_2_517 = load i64, i64* %var_2_3, align 8
%var_2_518 = load i64, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
store i64 %var_2_518, i64* %var_2_94, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_96, align 1
%var_2_519 = load i64, i64* %RBP.i, align 8
%var_2_520 = add i64 %var_2_519, -40
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_193, 14
; %var_2_521 = add i64 %var_2_517, 14
; Matched:\<badref\>:  store i64 %var_2_197, i64* %PC, align 8
; store i64 %var_2_521, i64* %var_2_3, align 8
%.cast11 = bitcast i64 %var_2_518 to double
%var_2_522 = inttoptr i64 %var_2_520 to double*
%var_2_523 = load double, double* %var_2_522, align 8
%var_2_524 = fmul double %.cast11, %var_2_523
%var_2_525 = load double, double* bitcast (%G_0x601128_type* @G_0x601128 to double*), align 8
%var_2_526 = fdiv double %var_2_524, %var_2_525
store double %var_2_526, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
; Matched:\<badref\>:  store double %var_2_419, double* %var_2_555, align 1, !tbaa !1285
; store double %var_2_526, double* %var_2_292, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_96, align 1
; Matched:%var_2_420:  %var_2_420 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_527 = bitcast %union.VectorReg* %var_2_97 to double*
; Matched:\<badref\>:  store double %var_2_418, double* %var_2_420, align 1, !tbaa !1285
; store double %var_2_525, double* %var_2_527, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_88, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_104, align 1
%var_2_528 = add i64 %var_2_519, -32
; Matched:%var_2_422:  %var_2_422 = add i64 %var_2_410, 55
; %var_2_529 = add i64 %var_2_517, 55
; Matched:\<badref\>:  store i64 %var_2_422, i64* %PC, align 8
; store i64 %var_2_529, i64* %var_2_3, align 8
%var_2_530 = inttoptr i64 %var_2_528 to double*
%var_2_531 = load double, double* %var_2_530, align 8
%var_2_532 = fdiv double %var_2_525, %var_2_531
; Matched:\<badref\>:  store double %var_2_425, double* %var_2_556, align 1, !tbaa !1285
; store double %var_2_532, double* %var_2_293, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_87, align 1, !tbaa !1285
; store i64 0, i64* %var_2_103, align 1
%var_2_533 = fadd double %var_2_526, %var_2_532
store double %var_2_533, double* bitcast (%G_0x601258_type* @G_0x601258 to double*), align 8
%var_2_534 = load i64, i64* %var_2_86, align 1
store i64 %var_2_534, i64* bitcast (%G_0x601290_type* @G_0x601290 to i64*), align 8
; Matched:%var_2_428:  %var_2_428 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_535 = bitcast %union.VectorReg* %var_2_81 to double*
; Matched:\<badref\>:  store double %var_2_426, double* %var_2_428, align 1, !tbaa !1285
; store double %var_2_533, double* %var_2_535, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 %var_2_427, i64* %var_2_82, align 1, !tbaa !1285
; store i64 %var_2_534, i64* %var_2_94, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_96, align 1
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_410, 100
; %var_2_536 = add i64 %var_2_517, 100
; Matched:\<badref\>:  store i64 %var_2_429, i64* %PC, align 8
; store i64 %var_2_536, i64* %var_2_3, align 8
%var_2_537 = inttoptr i64 %var_2_528 to i64*
%var_2_538 = load i64, i64* %var_2_537, align 8
; Matched:\<badref\>:  store i64 %var_2_431, i64* %var_2_86, align 1, !tbaa !1285
; store i64 %var_2_538, i64* %var_2_102, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_88, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_104, align 1
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_410, 105
; %var_2_539 = add i64 %var_2_517, 105
; Matched:\<badref\>:  store i64 %var_2_432, i64* %PC, align 8
; store i64 %var_2_539, i64* %var_2_3, align 8
%var_2_540 = bitcast i64 %var_2_538 to double
%var_2_541 = load double, double* %var_2_530, align 8
%var_2_542 = fmul double %var_2_540, %var_2_541
; Matched:\<badref\>:  store double %var_2_435, double* %var_2_556, align 1, !tbaa !1285
; store double %var_2_542, double* %var_2_293, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_87, align 1, !tbaa !1285
; store i64 0, i64* %var_2_103, align 1
; Matched:%var_2_436:  %var_2_436 = add i64 %var_2_410, 110
; %var_2_543 = add i64 %var_2_517, 110
; Matched:\<badref\>:  store i64 %var_2_436, i64* %PC, align 8
; store i64 %var_2_543, i64* %var_2_3, align 8
%var_2_544 = load double, double* %var_2_530, align 8
%var_2_545 = fmul double %var_2_542, %var_2_544
; Matched:\<badref\>:  store double %var_2_438, double* %var_2_556, align 1, !tbaa !1285
; store double %var_2_545, double* %var_2_293, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_87, align 1, !tbaa !1285
; store i64 0, i64* %var_2_103, align 1
%var_2_546 = bitcast i64 %var_2_534 to double
%var_2_547 = fdiv double %var_2_546, %var_2_545
; Matched:\<badref\>:  store double %var_2_440, double* %var_2_555, align 1, !tbaa !1285
; store double %var_2_547, double* %var_2_292, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_95, align 1
%var_2_548 = fsub double %var_2_533, %var_2_547
; Matched:\<badref\>:  store double %var_2_441, double* bitcast (%piprg_type* @piprg to double*), align 8
; store double %var_2_548, double* bitcast (%G_0x6012c8_type* @G_0x6012c8 to double*), align 8
%var_2_549 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
%var_2_550 = fsub double %var_2_548, %var_2_549
; Matched:\<badref\>:  store double %var_2_443, double* %var_2_554, align 1, !tbaa !1285
; store double %var_2_550, double* %var_2_291, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_79, align 1, !tbaa !1285
; store i64 0, i64* %var_2_87, align 1
store double %var_2_550, double* bitcast (%G_0x601268_type* @G_0x601268 to double*), align 8
; Matched:%var_2_444:  %var_2_444 = load double, double* %var_2_553, align 1
; %var_2_551 = load double, double* %var_2_290, align 1
; Matched:%var_2_445:  %var_2_445 = fmul double %var_2_443, %var_2_444
; %var_2_552 = fmul double %var_2_550, %var_2_551
; Matched:\<badref\>:  store double %var_2_445, double* %var_2_553, align 1, !tbaa !1285
; store double %var_2_552, double* %var_2_290, align 1
; Matched:%var_2_446:  %var_2_446 = load i64, i64* %RBP, align 8
; %var_2_553 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_446, -112
; %var_2_554 = add i64 %var_2_553, -112
; Matched:%var_2_448:  %var_2_448 = add i64 %var_2_410, 168
; %var_2_555 = add i64 %var_2_517, 168
; Matched:\<badref\>:  store i64 %var_2_448, i64* %PC, align 8
; store i64 %var_2_555, i64* %var_2_3, align 8
; Matched:%var_2_449:  %var_2_449 = load i64, i64* %var_2_70, align 1
; %var_2_556 = load i64, i64* %var_2_70, align 1
; Matched:%var_2_450:  %var_2_450 = inttoptr i64 %var_2_447 to i64*
; %var_2_557 = inttoptr i64 %var_2_554 to i64*
; Matched:\<badref\>:  store i64 %var_2_449, i64* %var_2_450, align 8
; store i64 %var_2_556, i64* %var_2_557, align 8
%var_2_558 = load i64, i64* %var_2_3, align 8
%var_2_559 = bitcast %union.VectorReg* %var_2_73 to <2 x i32>*
%var_2_560 = load <2 x i32>, <2 x i32>* %var_2_559, align 1
%var_2_561 = bitcast i64* %var_2_79 to <2 x i32>*
%var_2_562 = load <2 x i32>, <2 x i32>* %var_2_561, align 1
%var_2_563 = extractelement <2 x i32> %var_2_560, i32 0
; Matched:\<badref\>:  store i32 %var_2_456, i32* %var_2_557, align 1, !tbaa !1288
; store i32 %var_2_563, i32* %var_2_294, align 1
%var_2_564 = extractelement <2 x i32> %var_2_560, i32 1
; Matched:\<badref\>:  store i32 %var_2_457, i32* %var_2_559, align 1, !tbaa !1288
; store i32 %var_2_564, i32* %var_2_296, align 1
%var_2_565 = extractelement <2 x i32> %var_2_562, i32 0
; Matched:\<badref\>:  store i32 %var_2_458, i32* %var_2_560, align 1, !tbaa !1288
; store i32 %var_2_565, i32* %var_2_297, align 1
%var_2_566 = extractelement <2 x i32> %var_2_562, i32 1
; Matched:\<badref\>:  store i32 %var_2_459, i32* %var_2_562, align 1, !tbaa !1288
; store i32 %var_2_566, i32* %var_2_299, align 1
; Matched:%var_2_460:  %var_2_460 = load i64, i64* %RBP, align 8
; %var_2_567 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_461:  %var_2_461 = add i64 %var_2_460, -112
; %var_2_568 = add i64 %var_2_567, -112
; Matched:%var_2_592:  %var_2_592 = add i64 %var_2_591, 8
; %var_2_569 = add i64 %var_2_558, 8
; Matched:\<badref\>:  store i64 %var_2_592, i64* %PC, align 8
; store i64 %var_2_569, i64* %var_2_3, align 8
; Matched:%var_2_463:  %var_2_463 = inttoptr i64 %var_2_461 to i64*
; %var_2_570 = inttoptr i64 %var_2_568 to i64*
; Matched:%var_2_464:  %var_2_464 = load i64, i64* %var_2_463, align 8
; %var_2_571 = load i64, i64* %var_2_570, align 8
; Matched:\<badref\>:  store i64 %var_2_464, i64* %var_2_74, align 1, !tbaa !1285
; store i64 %var_2_571, i64* %var_2_78, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_76, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_80, align 1
; Matched:%var_2_465:  %var_2_465 = add i64 %var_2_451, 13
; %var_2_572 = add i64 %var_2_558, 13
; Matched:\<badref\>:  store i64 %var_2_465, i64* %PC, align 8
; store i64 %var_2_572, i64* %var_2_3, align 8
; Matched:%var_2_466:  %var_2_466 = load i64, i64* %var_2_463, align 8
; %var_2_573 = load i64, i64* %var_2_570, align 8
; Matched:\<badref\>:  store i64 %var_2_466, i64* %var_2_78, align 1, !tbaa !1285
; store i64 %var_2_573, i64* %var_2_86, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_80, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_88, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i350, align 1
; Matched:%var_2_467:  %var_2_467 = add i64 %var_2_451, -1136
; %var_2_574 = add i64 %var_2_558, -1136
; Matched:%var_2_468:  %var_2_468 = add i64 %var_2_451, 20
; %var_2_575 = add i64 %var_2_558, 20
%var_2_576 = load i64, i64* %var_2_6, align 8
%var_2_577 = add i64 %var_2_576, -8
; Matched:%var_2_471:  %var_2_471 = inttoptr i64 %var_2_470 to i64*
; %var_2_578 = inttoptr i64 %var_2_577 to i64*
; Matched:\<badref\>:  store i64 %var_2_468, i64* %var_2_471, align 8
; store i64 %var_2_575, i64* %var_2_578, align 8
; Matched:\<badref\>:  store i64 %var_2_132, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_577, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_467, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_574, i64* %var_2_3, align 8
%var_2_579 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_153)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_155 to i32*
%var_2_580 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i283, align 8
; Matched:%var_2_474:  %var_2_474 = load i64, i64* %RBP, align 8
; %var_2_581 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_475:  %var_2_475 = add i64 %var_2_474, -116
; %var_2_582 = add i64 %var_2_581, -116
; Matched:%var_2_476:  %var_2_476 = load i32, i32* %EAX, align 4
; %var_2_583 = load i32, i32* %EAX.i345, align 4
; Matched:%var_2_344:  %var_2_344 = add i64 %var_2_343, 5
; %var_2_584 = add i64 %var_2_580, 5
; Matched:\<badref\>:  store i64 %var_2_344, i64* %PC, align 8
; store i64 %var_2_584, i64* %var_2_3, align 8
; Matched:%var_2_478:  %var_2_478 = inttoptr i64 %var_2_475 to i32*
; %var_2_585 = inttoptr i64 %var_2_582 to i32*
; Matched:\<badref\>:  store i32 %var_2_476, i32* %var_2_478, align 4
; store i32 %var_2_583, i32* %var_2_585, align 4
; Matched:%var_2_479:  %var_2_479 = load i32, i32* %ECX, align 4
; %var_2_586 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_480:  %var_2_480 = zext i32 %var_2_479 to i64
; %var_2_587 = zext i32 %var_2_586 to i64
%var_2_588 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_480, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_587, i64* %RAX.i245, align 8
; Matched:%var_2_482:  %var_2_482 = load i64, i64* %RSP, align 8
; %var_2_589 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_483:  %var_2_483 = add i64 %var_2_482, 128
; %var_2_590 = add i64 %var_2_589, 128
; Matched:\<badref\>:  store i64 %var_2_483, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_590, i64* %var_2_6, align 8
; Matched:%var_2_484:  %var_2_484 = icmp ugt i64 %var_2_482, -129
; %var_2_591 = icmp ugt i64 %var_2_589, -129
; Matched:%var_2_485:  %var_2_485 = zext i1 %var_2_484 to i8
; %var_2_592 = zext i1 %var_2_591 to i8
; Matched:\<badref\>:  store i8 %var_2_485, i8* %var_2_19, align 1, !tbaa !1265
; store i8 %var_2_592, i8* %var_2_14, align 1
; Matched:%var_2_486:  %var_2_486 = trunc i64 %var_2_483 to i32
; %var_2_593 = trunc i64 %var_2_590 to i32
; Matched:%var_2_487:  %var_2_487 = and i32 %var_2_486, 255
; %var_2_594 = and i32 %var_2_593, 255
; Matched:%var_2_488:  %var_2_488 = tail call i32 @llvm.ctpop.i32(i32 %var_2_487) #11
; %var_2_595 = tail call i32 @llvm.ctpop.i32(i32 %var_2_594)
; Matched:%var_2_489:  %var_2_489 = trunc i32 %var_2_488 to i8
; %var_2_596 = trunc i32 %var_2_595 to i8
; Matched:%var_2_490:  %var_2_490 = and i8 %var_2_489, 1
; %var_2_597 = and i8 %var_2_596, 1
; Matched:%var_2_491:  %var_2_491 = xor i8 %var_2_490, 1
; %var_2_598 = xor i8 %var_2_597, 1
; Matched:\<badref\>:  store i8 %var_2_491, i8* %var_2_26, align 1, !tbaa !1279
; store i8 %var_2_598, i8* %var_2_21, align 1
; Matched:%var_2_492:  %var_2_492 = xor i64 %var_2_483, %var_2_482
; %var_2_599 = xor i64 %var_2_590, %var_2_589
; Matched:%var_2_493:  %var_2_493 = lshr i64 %var_2_492, 4
; %var_2_600 = lshr i64 %var_2_599, 4
; Matched:%var_2_494:  %var_2_494 = trunc i64 %var_2_493 to i8
; %var_2_601 = trunc i64 %var_2_600 to i8
; Matched:%var_2_495:  %var_2_495 = and i8 %var_2_494, 1
; %var_2_602 = and i8 %var_2_601, 1
; Matched:\<badref\>:  store i8 %var_2_495, i8* %var_2_31, align 1, !tbaa !1280
; store i8 %var_2_602, i8* %var_2_26, align 1
; Matched:%var_2_496:  %var_2_496 = icmp eq i64 %var_2_483, 0
; %var_2_603 = icmp eq i64 %var_2_590, 0
; Matched:%var_2_497:  %var_2_497 = zext i1 %var_2_496 to i8
; %var_2_604 = zext i1 %var_2_603 to i8
; Matched:\<badref\>:  store i8 %var_2_497, i8* %var_2_34, align 1, !tbaa !1281
; store i8 %var_2_604, i8* %var_2_29, align 1
; Matched:%var_2_498:  %var_2_498 = lshr i64 %var_2_483, 63
; %var_2_605 = lshr i64 %var_2_590, 63
; Matched:%var_2_499:  %var_2_499 = trunc i64 %var_2_498 to i8
; %var_2_606 = trunc i64 %var_2_605 to i8
; Matched:\<badref\>:  store i8 %var_2_499, i8* %var_2_37, align 1, !tbaa !1282
; store i8 %var_2_606, i8* %var_2_32, align 1
; Matched:%var_2_500:  %var_2_500 = lshr i64 %var_2_482, 63
; %var_2_607 = lshr i64 %var_2_589, 63
; Matched:%var_2_501:  %var_2_501 = xor i64 %var_2_498, %var_2_500
; %var_2_608 = xor i64 %var_2_605, %var_2_607
; Matched:%var_2_502:  %var_2_502 = add nuw nsw i64 %var_2_501, %var_2_498
; %var_2_609 = add nuw nsw i64 %var_2_608, %var_2_605
; Matched:%var_2_503:  %var_2_503 = icmp eq i64 %var_2_502, 2
; %var_2_610 = icmp eq i64 %var_2_609, 2
; Matched:%var_2_504:  %var_2_504 = zext i1 %var_2_503 to i8
; %var_2_611 = zext i1 %var_2_610 to i8
; Matched:\<badref\>:  store i8 %var_2_504, i8* %var_2_43, align 1, !tbaa !1283
; store i8 %var_2_611, i8* %var_2_38, align 1
; Matched:%var_2_505:  %var_2_505 = add i64 %var_2_481, 10
; %var_2_612 = add i64 %var_2_588, 10
; Matched:\<badref\>:  store i64 %var_2_505, i64* %PC, align 8
; store i64 %var_2_612, i64* %var_2_3, align 8
; Matched:%var_2_506:  %var_2_506 = add i64 %var_2_482, 136
; %var_2_613 = add i64 %var_2_589, 136
; Matched:%var_2_507:  %var_2_507 = inttoptr i64 %var_2_483 to i64*
; %var_2_614 = inttoptr i64 %var_2_590 to i64*
; Matched:%var_2_508:  %var_2_508 = load i64, i64* %var_2_507, align 8
; %var_2_615 = load i64, i64* %var_2_614, align 8
; Matched:\<badref\>:  store i64 %var_2_508, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_615, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_506, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_613, i64* %var_2_6, align 8
; Matched:%var_2_509:  %var_2_509 = add i64 %var_2_481, 11
; %var_2_616 = add i64 %var_2_588, 11
; Matched:\<badref\>:  store i64 %var_2_509, i64* %PC, align 8
; store i64 %var_2_616, i64* %var_2_3, align 8
; Matched:%var_2_510:  %var_2_510 = inttoptr i64 %var_2_506 to i64*
; %var_2_617 = inttoptr i64 %var_2_613 to i64*
; Matched:%var_2_511:  %var_2_511 = load i64, i64* %var_2_510, align 8
; %var_2_618 = load i64, i64* %var_2_617, align 8
; Matched:\<badref\>:  store i64 %var_2_511, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_618, i64* %var_2_3, align 8
; Matched:%var_2_512:  %var_2_512 = add i64 %var_2_482, 144
; %var_2_619 = add i64 %var_2_589, 144
; Matched:\<badref\>:  store i64 %var_2_512, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_619, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_579
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
define %struct.Memory* @routine_movq__0x4009c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009c0_type* @G__0x4009c0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400988___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400988_type* @G__0x400988 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4009c2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009c2_type* @G__0x4009c2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3df__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3df__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3df__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3df__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3df__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x3df__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3df__rip__type* @G_0x3df__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x4009f2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009f2_type* @G__0x4009f2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd_0x601128___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
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
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4006c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movsd_0x601298___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_jmpq_.L_40066b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movsd__xmm1__0x601290(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601290_type* @G_0x601290 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601298___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601298_type* @G_0x601298 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_jg_.L_4007ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addsd_0x601120___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
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
define %struct.Memory* @routine_subsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fsub double %9, %11
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
define %struct.Memory* @routine_divsd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x400a16___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400a16_type* @G__0x400a16 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1b8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1b8__rip__type* @G_0x1b8__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1b8__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1b8__rip__type* @G_0x1b8__rip_ to i64)
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
define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_divsd_0x601290___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601278___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
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
define %struct.Memory* @routine_divsd_0x601128___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601128_type* @G_0x601128 to double*), align 8
  %9 = fdiv double %7, %8
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
define %struct.Memory* @routine_movsd_0x601128___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_MINUS0x20__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
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
define %struct.Memory* @routine_movsd_0x601258___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x601290___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x601290_type* @G_0x601290 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_subsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x6012c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6012c8_type* @G_0x6012c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6012c8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6012c8_type* @G_0x6012c8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x601260___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x601268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x601268_type* @G_0x601268 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_0x601268___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601268_type* @G_0x601268 to double*), align 8
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
