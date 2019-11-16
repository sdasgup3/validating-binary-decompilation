; ModuleID = '/tmp/tmpye_wpomc-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1ef__rip__type = type <{ [8 x i8] }>
%G_0x38f__rip__type = type <{ [8 x i8] }>
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
%G_0x601048_type = type <{ [8 x i8] }>
%G_0x601050_type = type <{ [8 x i8] }>
%G_0x601058_type = type <{ [8 x i8] }>
%G_0x601060_type = type <{ [8 x i8] }>
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
%G__0x400938_type = type <{ [8 x i8] }>
%G__0x400970_type = type <{ [8 x i8] }>
%G__0x400972_type = type <{ [8 x i8] }>
%G__0x4009a2_type = type <{ [8 x i8] }>
%G__0x4009c6_type = type <{ [8 x i8] }>
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
@G_0x1ef__rip_ = global %G_0x1ef__rip__type zeroinitializer
@G_0x38f__rip_ = global %G_0x38f__rip__type zeroinitializer
@G_0x601038 = local_unnamed_addr global %G_0x601038_type zeroinitializer
@G_0x601040 = local_unnamed_addr global %G_0x601040_type zeroinitializer
@G_0x601048 = local_unnamed_addr global %G_0x601048_type zeroinitializer
@G_0x601050 = local_unnamed_addr global %G_0x601050_type zeroinitializer
@G_0x601058 = local_unnamed_addr global %G_0x601058_type zeroinitializer
@G_0x601060 = local_unnamed_addr global %G_0x601060_type zeroinitializer
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
@G__0x400938 = global %G__0x400938_type zeroinitializer
@G__0x400970 = global %G__0x400970_type zeroinitializer
@G__0x400972 = global %G__0x400972_type zeroinitializer
@G__0x4009a2 = global %G__0x4009a2_type zeroinitializer
@G__0x4009c6 = global %G__0x4009c6_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_11:  %var_2_11 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_12:  %var_2_12 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_12, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
; Matched:%var_2_13:  %var_2_13 = load i64, i64* %RSP, align 8, !tbaa !1261
; %var_2_7 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_14:  %var_2_14 = add i64 %var_2_13, -8
; %var_2_8 = add i64 %var_2_7, -8
; Matched:%var_2_15:  %var_2_15 = inttoptr i64 %var_2_14 to i64*
; %var_2_9 = inttoptr i64 %var_2_8 to i64*
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_15, align 8
; store i64 %var_2_4, i64* %var_2_9, align 8
; Matched:%var_2_16:  %var_2_16 = load i64, i64* %PC, align 8
; %var_2_10 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_14, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_8, i64* %RBP.i, align 8
; Matched:%var_2_17:  %var_2_17 = add i64 %var_2_13, -136
; %var_2_11 = add i64 %var_2_7, -136
; Matched:\<badref\>:  store i64 %var_2_17, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_18:  %var_2_18 = icmp ult i64 %var_2_14, 128
; %var_2_12 = icmp ult i64 %var_2_8, 128
; Matched:%var_2_19:  %var_2_19 = zext i1 %var_2_18 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
; Matched:%var_2_20:  %var_2_20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; %var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_19, i8* %var_2_20, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_21:  %var_2_21 = trunc i64 %var_2_17 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_22:  %var_2_22 = and i32 %var_2_21, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_23:  %var_2_23 = tail call i32 @llvm.ctpop.i32(i32 %var_2_22) #11
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_24:  %var_2_24 = trunc i32 %var_2_23 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_25:  %var_2_25 = and i8 %var_2_24, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_26:  %var_2_26 = xor i8 %var_2_25, 1
; %var_2_20 = xor i8 %var_2_19, 1
; Matched:%var_2_27:  %var_2_27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_26, i8* %var_2_27, align 1, !tbaa !1279
; store i8 %var_2_20, i8* %var_2_21, align 1
; Matched:%var_2_28:  %var_2_28 = xor i64 %var_2_14, %var_2_17
; %var_2_22 = xor i64 %var_2_8, %var_2_11
; Matched:%var_2_29:  %var_2_29 = lshr i64 %var_2_28, 4
; %var_2_23 = lshr i64 %var_2_22, 4
; Matched:%var_2_30:  %var_2_30 = trunc i64 %var_2_29 to i8
; %var_2_24 = trunc i64 %var_2_23 to i8
; Matched:%var_2_31:  %var_2_31 = and i8 %var_2_30, 1
; %var_2_25 = and i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_33:  %var_2_33 = icmp eq i64 %var_2_17, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_34:  %var_2_34 = zext i1 %var_2_33 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_34, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_36:  %var_2_36 = lshr i64 %var_2_17, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_37:  %var_2_37 = trunc i64 %var_2_36 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
; Matched:%var_2_38:  %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_39:  %var_2_39 = lshr i64 %var_2_14, 63
; %var_2_33 = lshr i64 %var_2_8, 63
; Matched:%var_2_40:  %var_2_40 = xor i64 %var_2_36, %var_2_39
; %var_2_34 = xor i64 %var_2_30, %var_2_33
; Matched:%var_2_41:  %var_2_41 = add nuw nsw i64 %var_2_40, %var_2_39
; %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; Matched:%var_2_42:  %var_2_42 = icmp eq i64 %var_2_41, 2
; %var_2_36 = icmp eq i64 %var_2_35, 2
; Matched:%var_2_43:  %var_2_43 = zext i1 %var_2_42 to i8
; %var_2_37 = zext i1 %var_2_36 to i8
; Matched:%var_2_44:  %var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; %var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_43, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
  %RDI.i250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x400970_type* @G__0x400970 to i64), i64* %RDI.i250, align 8
; Matched:%var_2_45:  %var_2_45 = add i64 %var_2_13, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_46:  %var_2_46 = add i64 %var_2_16, 27
; %var_2_40 = add i64 %var_2_10, 27
; Matched:\<badref\>:  store i64 %var_2_46, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_47:  %var_2_47 = inttoptr i64 %var_2_45 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_47, align 4
; store i32 0, i32* %var_2_41, align 4
; Matched:%var_2_3:  %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; %var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i304 = bitcast %union.anon* %var_2_42 to i8*
; Matched:%var_2_120:  %var_2_120 = load i64, i64* %PC, align 8
; %var_2_43 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i304, align 1
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, -284
; %var_2_44 = add i64 %var_2_43, -284
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_120, 7
; %var_2_45 = add i64 %var_2_43, 7
%var_2_46 = load i64, i64* %var_2_6, align 8
%var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_125:  %var_2_125 = inttoptr i64 %var_2_124 to i64*
; %var_2_48 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_63, i64* %var_2_66, align 8
; store i64 %var_2_45, i64* %var_2_48, align 8
; Matched:\<badref\>:  store i64 %var_2_322, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_47, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_49, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_44, i64* %var_2_3, align 8
%var_2_49 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
%var_2_50 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400938_type* @G__0x400938 to i64), i64* %RDI.i250, align 8
; Matched:  %EAX = bitcast %union.anon* %var_2_3 to i32*
; %EAX.i299 = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_56:  %var_2_56 = load i64, i64* %RBP, align 8
; %var_2_51 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_57:  %var_2_57 = add i64 %var_2_56, -92
; %var_2_52 = add i64 %var_2_51, -92
; Matched:%var_2_58:  %var_2_58 = load i32, i32* %EAX, align 4
; %var_2_53 = load i32, i32* %EAX.i299, align 4
; Matched:%var_2_131:  %var_2_131 = add i64 %var_2_127, 13
; %var_2_54 = add i64 %var_2_50, 13
; Matched:\<badref\>:  store i64 %var_2_59, i64* %PC, align 8
; store i64 %var_2_54, i64* %var_2_3, align 8
; Matched:%var_2_60:  %var_2_60 = inttoptr i64 %var_2_57 to i32*
; %var_2_55 = inttoptr i64 %var_2_52 to i32*
; Matched:\<badref\>:  store i32 %var_2_58, i32* %var_2_60, align 4
; store i32 %var_2_53, i32* %var_2_55, align 4
; Matched:%var_2_133:  %var_2_133 = load i64, i64* %PC, align 8
; %var_2_56 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i304, align 1
; Matched:%var_2_62:  %var_2_62 = add i64 %var_2_61, -304
; %var_2_57 = add i64 %var_2_56, -304
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_133, 7
; %var_2_58 = add i64 %var_2_56, 7
%var_2_59 = load i64, i64* %var_2_6, align 8
%var_2_60 = add i64 %var_2_59, -8
; Matched:%var_2_138:  %var_2_138 = inttoptr i64 %var_2_137 to i64*
; %var_2_61 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_50, i64* %var_2_53, align 8
; store i64 %var_2_58, i64* %var_2_61, align 8
; Matched:\<badref\>:  store i64 %var_2_65, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_60, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_62, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_57, i64* %var_2_3, align 8
%var_2_62 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_49)
%var_2_63 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x400972_type* @G__0x400972 to i64), i64* %RDI.i250, align 8
%var_2_64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_69:  %var_2_69 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
; %var_2_65 = bitcast [32 x %union.VectorReg]* %var_2_64 to i8*
%var_2_66 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 10)
%var_2_67 = add i64 %var_2_63, 18
store i64 %var_2_67, i64* %var_2_3, align 8
%var_2_68 = inttoptr i64 %var_2_66 to i64*
%var_2_69 = load i64, i64* %var_2_68, align 8
; Matched:%var_2_71:  %var_2_71 = bitcast [32 x %union.VectorReg]* %var_2_5 to double*
; %var_2_70 = bitcast [32 x %union.VectorReg]* %var_2_64 to double*
%var_2_71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_64, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_69, i64* %var_2_71, align 1
%var_2_72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_73 = bitcast i64* %var_2_72 to double*
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
%var_2_74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_75 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 18)
%var_2_76 = add i64 %var_2_63, 26
store i64 %var_2_76, i64* %var_2_3, align 8
%var_2_77 = inttoptr i64 %var_2_75 to i64*
%var_2_78 = load i64, i64* %var_2_77, align 8
; Matched:%var_2_76:  %var_2_76 = bitcast %union.VectorReg* %var_2_6 to double*
; %var_2_79 = bitcast %union.VectorReg* %var_2_74 to double*
%var_2_80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_74, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_78, i64* %var_2_80, align 1
; Matched:%var_2_78:  %var_2_78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_79:  %var_2_79 = bitcast i64* %var_2_78 to double*
; %var_2_82 = bitcast i64* %var_2_81 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_84 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 26)
%var_2_85 = add i64 %var_2_63, 34
store i64 %var_2_85, i64* %var_2_3, align 8
%var_2_86 = inttoptr i64 %var_2_84 to i64*
%var_2_87 = load i64, i64* %var_2_86, align 8
; Matched:%var_2_81:  %var_2_81 = bitcast %union.VectorReg* %var_2_7 to double*
; %var_2_88 = bitcast %union.VectorReg* %var_2_83 to double*
%var_2_89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_83, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_87, i64* %var_2_89, align 1
; Matched:%var_2_83:  %var_2_83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_84:  %var_2_84 = bitcast i64* %var_2_83 to double*
; %var_2_91 = bitcast i64* %var_2_90 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
%var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_93 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 34)
%var_2_94 = add i64 %var_2_63, 42
store i64 %var_2_94, i64* %var_2_3, align 8
%var_2_95 = inttoptr i64 %var_2_93 to i64*
%var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:%var_2_86:  %var_2_86 = bitcast %union.VectorReg* %var_2_8 to double*
; %var_2_97 = bitcast %union.VectorReg* %var_2_92 to double*
%var_2_98 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_92, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_96, i64* %var_2_98, align 1
; Matched:%var_2_88:  %var_2_88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_89:  %var_2_89 = bitcast i64* %var_2_88 to double*
; %var_2_100 = bitcast i64* %var_2_99 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_89, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
%var_2_102 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 42)
%var_2_103 = add i64 %var_2_63, 50
store i64 %var_2_103, i64* %var_2_3, align 8
%var_2_104 = inttoptr i64 %var_2_102 to i64*
%var_2_105 = load i64, i64* %var_2_104, align 8
%var_2_106 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_101, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_105, i64* %var_2_106, align 1
; Matched:%var_2_92:  %var_2_92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_93:  %var_2_93 = bitcast i64* %var_2_92 to double*
; %var_2_108 = bitcast i64* %var_2_107 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_93, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_108, align 1
%var_2_109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
%var_2_110 = add i64 %var_2_63, add (i64 ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64), i64 50)
%var_2_111 = add i64 %var_2_63, 58
store i64 %var_2_111, i64* %var_2_3, align 8
%var_2_112 = inttoptr i64 %var_2_110 to i64*
%var_2_113 = load i64, i64* %var_2_112, align 8
%var_2_114 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_109, i64 0, i32 0, i32 0, i32 0, i64 0
store i64 %var_2_113, i64* %var_2_114, align 1
; Matched:%var_2_96:  %var_2_96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_97:  %var_2_97 = bitcast i64* %var_2_96 to double*
; %var_2_116 = bitcast i64* %var_2_115 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_97, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_116, align 1
; Matched:%var_2_98:  %var_2_98 = load i64, i64* %RBP, align 8
; %var_2_117 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_98, -56
; %var_2_118 = add i64 %var_2_117, -56
; Matched:%var_2_100:  %var_2_100 = add i64 %var_2_68, 66
; %var_2_119 = add i64 %var_2_63, 66
; Matched:\<badref\>:  store i64 %var_2_100, i64* %PC, align 8
; store i64 %var_2_119, i64* %var_2_3, align 8
; Matched:%var_2_101:  %var_2_101 = inttoptr i64 %var_2_99 to i64*
; %var_2_120 = inttoptr i64 %var_2_118 to i64*
; Matched:\<badref\>:  store i64 15625, i64* %var_2_101, align 8
; store i64 15625, i64* %var_2_120, align 8
; Matched:%var_2_102:  %var_2_102 = load i64, i64* %PC, align 8
; %var_2_121 = load i64, i64* %var_2_3, align 8
%var_2_122 = load i64, i64* %var_2_106, align 1
store i64 %var_2_122, i64* bitcast (%G_0x6012d0_type* @G_0x6012d0 to i64*), align 8
; Matched:%var_2_104:  %var_2_104 = load i64, i64* %RBP, align 8
; %var_2_123 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_105:  %var_2_105 = add i64 %var_2_104, -64
; %var_2_124 = add i64 %var_2_123, -64
; Matched:%var_2_106:  %var_2_106 = add i64 %var_2_102, 17
; %var_2_125 = add i64 %var_2_121, 17
; Matched:\<badref\>:  store i64 %var_2_106, i64* %PC, align 8
; store i64 %var_2_125, i64* %var_2_3, align 8
; Matched:%var_2_107:  %var_2_107 = inttoptr i64 %var_2_105 to i64*
; %var_2_126 = inttoptr i64 %var_2_124 to i64*
; Matched:\<badref\>:  store i64 512000000, i64* %var_2_107, align 8
; store i64 512000000, i64* %var_2_126, align 8
%var_2_127 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_109:  %var_2_109 = load i64, i64* %var_2_95, align 1
; %var_2_128 = load i64, i64* %var_2_114, align 1
; Matched:\<badref\>:  store i64 %var_2_109, i64* bitcast (%piref_type* @piref to i64*), align 8
; store i64 %var_2_128, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
%var_2_129 = load i64, i64* %var_2_106, align 1
store i64 %var_2_129, i64* bitcast (%G_0x601288_type* @G_0x601288 to i64*), align 8
; Matched:%var_2_111:  %var_2_111 = load i64, i64* %var_2_87, align 1
; %var_2_130 = load i64, i64* %var_2_98, align 1
; Matched:\<badref\>:  store i64 %var_2_111, i64* bitcast (%two_type* @two to i64*), align 8
; store i64 %var_2_130, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
; Matched:%var_2_294:  %var_2_294 = load i64, i64* %var_2_82, align 1
; %var_2_131 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_112, i64* bitcast (%three_type* @three to i64*), align 8
; store i64 %var_2_131, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
; Matched:%var_2_113:  %var_2_113 = load i64, i64* %var_2_77, align 1
; %var_2_132 = load i64, i64* %var_2_80, align 1
; Matched:\<badref\>:  store i64 %var_2_113, i64* bitcast (%four_type* @four to i64*), align 8
; store i64 %var_2_132, i64* bitcast (%G_0x601278_type* @G_0x601278 to i64*), align 8
%var_2_133 = load i64, i64* %var_2_71, align 1
store i64 %var_2_133, i64* bitcast (%G_0x601128_type* @G_0x601128 to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_110, i64* %var_2_72, align 1, !tbaa !1285
; store i64 %var_2_129, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
store i64 %var_2_129, i64* bitcast (%G_0x601280_type* @G_0x601280 to i64*), align 8
; Matched:%var_2_115:  %var_2_115 = load i64, i64* %RBP, align 8
; %var_2_134 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_115, -96
; %var_2_135 = add i64 %var_2_134, -96
; Matched:%var_2_117:  %var_2_117 = load i32, i32* %EAX, align 4
; %var_2_136 = load i32, i32* %EAX.i299, align 4
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_239, 75
; %var_2_137 = add i64 %var_2_127, 75
; Matched:\<badref\>:  store i64 %var_2_118, i64* %PC, align 8
; store i64 %var_2_137, i64* %var_2_3, align 8
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_116 to i32*
; %var_2_138 = inttoptr i64 %var_2_135 to i32*
; Matched:\<badref\>:  store i32 %var_2_117, i32* %var_2_119, align 4
; store i32 %var_2_136, i32* %var_2_138, align 4
; Matched:%var_2_61:  %var_2_61 = load i64, i64* %PC, align 8
; %var_2_139 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i304, align 1
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_120, -469
; %var_2_140 = add i64 %var_2_139, -469
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_61, 7
; %var_2_141 = add i64 %var_2_139, 7
%var_2_142 = load i64, i64* %var_2_6, align 8
%var_2_143 = add i64 %var_2_142, -8
; Matched:%var_2_66:  %var_2_66 = inttoptr i64 %var_2_65 to i64*
; %var_2_144 = inttoptr i64 %var_2_143 to i64*
; Matched:\<badref\>:  store i64 %var_2_135, i64* %var_2_138, align 8
; store i64 %var_2_141, i64* %var_2_144, align 8
; Matched:\<badref\>:  store i64 %var_2_137, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_143, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_121, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_140, i64* %var_2_3, align 8
%var_2_145 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_62)
%var_2_146 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x4009a2_type* @G__0x4009a2 to i64), i64* %RDI.i250, align 8
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %RBP, align 8
; %var_2_147 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_129:  %var_2_129 = add i64 %var_2_128, -100
; %var_2_148 = add i64 %var_2_147, -100
; Matched:%var_2_130:  %var_2_130 = load i32, i32* %EAX, align 4
; %var_2_149 = load i32, i32* %EAX.i299, align 4
; Matched:%var_2_317:  %var_2_317 = add i64 %var_2_303, 13
; %var_2_150 = add i64 %var_2_146, 13
; Matched:\<badref\>:  store i64 %var_2_131, i64* %PC, align 8
; store i64 %var_2_150, i64* %var_2_3, align 8
; Matched:%var_2_132:  %var_2_132 = inttoptr i64 %var_2_129 to i32*
; %var_2_151 = inttoptr i64 %var_2_148 to i32*
; Matched:\<badref\>:  store i32 %var_2_130, i32* %var_2_132, align 4
; store i32 %var_2_149, i32* %var_2_151, align 4
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %PC, align 8
; %var_2_152 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 0, i8* %AL.i304, align 1
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_133, -489
; %var_2_153 = add i64 %var_2_152, -489
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_48, 7
; %var_2_154 = add i64 %var_2_152, 7
%var_2_155 = load i64, i64* %var_2_6, align 8
%var_2_156 = add i64 %var_2_155, -8
; Matched:%var_2_53:  %var_2_53 = inttoptr i64 %var_2_52 to i64*
; %var_2_157 = inttoptr i64 %var_2_156 to i64*
; Matched:\<badref\>:  store i64 %var_2_122, i64* %var_2_125, align 8
; store i64 %var_2_154, i64* %var_2_157, align 8
; Matched:\<badref\>:  store i64 %var_2_124, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_156, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_134, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_153, i64* %var_2_3, align 8
%var_2_158 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_145)
%var_2_159 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_141:  %var_2_141 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
; %var_2_160 = bitcast [32 x %union.VectorReg]* %var_2_64 to i32*
; Matched:%var_2_142:  %var_2_142 = getelementptr inbounds i8, i8* %var_2_69, i64 4
; %var_2_161 = getelementptr inbounds i8, i8* %var_2_65, i64 4
; Matched:%var_2_143:  %var_2_143 = bitcast i8* %var_2_142 to i32*
; %var_2_162 = bitcast i8* %var_2_161 to i32*
; Matched:%var_2_144:  %var_2_144 = bitcast i64* %var_2_73 to i32*
; %var_2_163 = bitcast i64* %var_2_72 to i32*
; Matched:%var_2_145:  %var_2_145 = getelementptr inbounds i8, i8* %var_2_69, i64 12
; %var_2_164 = getelementptr inbounds i8, i8* %var_2_65, i64 12
; Matched:%var_2_146:  %var_2_146 = bitcast i8* %var_2_145 to i32*
; %var_2_165 = bitcast i8* %var_2_164 to i32*
%var_2_166 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_166, align 1
; Matched:%var_2_148:  %var_2_148 = load i64, i64* %RBP, align 8
; %var_2_167 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_148, -56
; %var_2_168 = add i64 %var_2_167, -56
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_140, 11
; %var_2_169 = add i64 %var_2_159, 11
; Matched:\<badref\>:  store i64 %var_2_150, i64* %PC, align 8
; store i64 %var_2_169, i64* %var_2_3, align 8
; Matched:%var_2_151:  %var_2_151 = inttoptr i64 %var_2_149 to i64*
; %var_2_170 = inttoptr i64 %var_2_168 to i64*
; Matched:%var_2_152:  %var_2_152 = load i64, i64* %var_2_151, align 8
; %var_2_171 = load i64, i64* %var_2_170, align 8
; Matched:%var_2_153:  %var_2_153 = sext i64 %var_2_152 to i128
; %var_2_172 = sext i64 %var_2_171 to i128
; Matched:%var_2_154:  %var_2_154 = and i128 %var_2_153, -18446744073709551616
; %var_2_173 = and i128 %var_2_172, -18446744073709551616
; Matched:%var_2_155:  %var_2_155 = zext i64 %var_2_152 to i128
; %var_2_174 = zext i64 %var_2_171 to i128
; Matched:%var_2_156:  %var_2_156 = or i128 %var_2_154, %var_2_155
; %var_2_175 = or i128 %var_2_173, %var_2_174
; Matched:%var_2_157:  %var_2_157 = mul nsw i128 %var_2_156, 20000
; %var_2_176 = mul nsw i128 %var_2_175, 20000
; Matched:%var_2_158:  %var_2_158 = trunc i128 %var_2_157 to i64
; %var_2_177 = trunc i128 %var_2_176 to i64
; Matched:\<badref\>:  store i64 %var_2_158, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_177, i64* %RDI.i250, align 8
; Matched:%var_2_159:  %var_2_159 = sext i64 %var_2_158 to i128
; %var_2_178 = sext i64 %var_2_177 to i128
; Matched:%var_2_160:  %var_2_160 = icmp ne i128 %var_2_159, %var_2_157
; %var_2_179 = icmp ne i128 %var_2_178, %var_2_176
; Matched:%var_2_161:  %var_2_161 = zext i1 %var_2_160 to i8
; %var_2_180 = zext i1 %var_2_179 to i8
; Matched:\<badref\>:  store i8 %var_2_161, i8* %var_2_20, align 1, !tbaa !1265
; store i8 %var_2_180, i8* %var_2_14, align 1
; Matched:%var_2_162:  %var_2_162 = trunc i128 %var_2_157 to i32
; %var_2_181 = trunc i128 %var_2_176 to i32
; Matched:%var_2_163:  %var_2_163 = and i32 %var_2_162, 224
; %var_2_182 = and i32 %var_2_181, 224
; Matched:%var_2_164:  %var_2_164 = tail call i32 @llvm.ctpop.i32(i32 %var_2_163) #11
; %var_2_183 = tail call i32 @llvm.ctpop.i32(i32 %var_2_182)
; Matched:%var_2_165:  %var_2_165 = trunc i32 %var_2_164 to i8
; %var_2_184 = trunc i32 %var_2_183 to i8
; Matched:%var_2_166:  %var_2_166 = and i8 %var_2_165, 1
; %var_2_185 = and i8 %var_2_184, 1
; Matched:%var_2_167:  %var_2_167 = xor i8 %var_2_166, 1
; %var_2_186 = xor i8 %var_2_185, 1
; Matched:\<badref\>:  store i8 %var_2_167, i8* %var_2_27, align 1, !tbaa !1279
; store i8 %var_2_186, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_168:  %var_2_168 = lshr i64 %var_2_158, 63
; %var_2_187 = lshr i64 %var_2_177, 63
; Matched:%var_2_169:  %var_2_169 = trunc i64 %var_2_168 to i8
; %var_2_188 = trunc i64 %var_2_187 to i8
; Matched:\<badref\>:  store i8 %var_2_169, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_188, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_161, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_180, i8* %var_2_38, align 1
; Matched:%var_2_170:  %var_2_170 = add i64 %var_2_148, -80
; %var_2_189 = add i64 %var_2_167, -80
; Matched:%var_2_400:  %var_2_400 = add i64 %var_2_390, 15
; %var_2_190 = add i64 %var_2_159, 15
; Matched:\<badref\>:  store i64 %var_2_400, i64* %PC, align 8
; store i64 %var_2_190, i64* %var_2_3, align 8
; Matched:%var_2_172:  %var_2_172 = inttoptr i64 %var_2_170 to i64*
; %var_2_191 = inttoptr i64 %var_2_189 to i64*
; Matched:\<badref\>:  store i64 %var_2_158, i64* %var_2_172, align 8
; store i64 %var_2_177, i64* %var_2_191, align 8
%var_2_192 = load i64, i64* %var_2_3, align 8
%var_2_193 = load i64, i64* bitcast (%G_0x601260_type* @G_0x601260 to i64*), align 8
store i64 %var_2_193, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_194 = load i64, i64* bitcast (%G_0x6012a0_type* @G_0x6012a0 to i64*), align 8
store i64 %var_2_194, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_176:  %var_2_176 = load i64, i64* %RBP, align 8
; %var_2_195 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_177:  %var_2_177 = add i64 %var_2_176, -80
; %var_2_196 = add i64 %var_2_195, -80
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_173, 24
; %var_2_197 = add i64 %var_2_192, 24
; Matched:\<badref\>:  store i64 %var_2_414, i64* %PC, align 8
; store i64 %var_2_197, i64* %var_2_3, align 8
; Matched:%var_2_179:  %var_2_179 = inttoptr i64 %var_2_177 to i64*
; %var_2_198 = inttoptr i64 %var_2_196 to i64*
; Matched:%var_2_180:  %var_2_180 = load i64, i64* %var_2_179, align 8
; %var_2_199 = load i64, i64* %var_2_198, align 8
; Matched:%var_2_181:  %var_2_181 = sitofp i64 %var_2_180 to double
; %var_2_200 = sitofp i64 %var_2_199 to double
; Matched:\<badref\>:  store double %var_2_181, double* %var_2_86, align 1, !tbaa !1285
; store double %var_2_200, double* %var_2_97, align 1
; Matched:%var_2_182:  %var_2_182 = bitcast i64 %var_2_175 to double
; %var_2_201 = bitcast i64 %var_2_194 to double
; Matched:%var_2_183:  %var_2_183 = fmul double %var_2_181, %var_2_182
; %var_2_202 = fmul double %var_2_200, %var_2_201
; Matched:\<badref\>:  store double %var_2_183, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_202, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_184:  %var_2_184 = bitcast i64 %var_2_174 to double
; %var_2_203 = bitcast i64 %var_2_193 to double
; Matched:%var_2_185:  %var_2_185 = fdiv double %var_2_184, %var_2_183
; %var_2_204 = fdiv double %var_2_203, %var_2_202
; Matched:\<badref\>:  store double %var_2_185, double* %var_2_76, align 1, !tbaa !1285
; store double %var_2_204, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_78, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_176, -48
; %var_2_205 = add i64 %var_2_195, -48
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_173, 37
; %var_2_206 = add i64 %var_2_192, 37
; Matched:\<badref\>:  store i64 %var_2_187, i64* %PC, align 8
; store i64 %var_2_206, i64* %var_2_3, align 8
; Matched:%var_2_188:  %var_2_188 = inttoptr i64 %var_2_186 to double*
; %var_2_207 = inttoptr i64 %var_2_205 to double*
; Matched:\<badref\>:  store double %var_2_185, double* %var_2_188, align 8
; store double %var_2_204, double* %var_2_207, align 8
; Matched:%var_2_189:  %var_2_189 = load i64, i64* %RBP, align 8
; %var_2_208 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_189, -16
; %var_2_209 = add i64 %var_2_208, -16
%var_2_210 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_226:  %var_2_226 = add i64 %var_2_225, 5
; %var_2_211 = add i64 %var_2_210, 5
; Matched:\<badref\>:  store i64 %var_2_226, i64* %PC, align 8
; store i64 %var_2_211, i64* %var_2_3, align 8
; Matched:%var_2_193:  %var_2_193 = load i64, i64* %var_2_72, align 1
; %var_2_212 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_194:  %var_2_194 = inttoptr i64 %var_2_190 to i64*
; %var_2_213 = inttoptr i64 %var_2_209 to i64*
; Matched:\<badref\>:  store i64 %var_2_193, i64* %var_2_194, align 8
; store i64 %var_2_212, i64* %var_2_213, align 8
; Matched:%var_2_195:  %var_2_195 = load i64, i64* %RBP, align 8
; %var_2_214 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_196:  %var_2_196 = add i64 %var_2_195, -32
; %var_2_215 = add i64 %var_2_214, -32
%var_2_216 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_391:  %var_2_391 = add i64 %var_2_390, 5
; %var_2_217 = add i64 %var_2_216, 5
; Matched:\<badref\>:  store i64 %var_2_391, i64* %PC, align 8
; store i64 %var_2_217, i64* %var_2_3, align 8
; Matched:%var_2_199:  %var_2_199 = load i64, i64* %var_2_72, align 1
; %var_2_218 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_200:  %var_2_200 = inttoptr i64 %var_2_196 to i64*
; %var_2_219 = inttoptr i64 %var_2_215 to i64*
; Matched:\<badref\>:  store i64 %var_2_199, i64* %var_2_200, align 8
; store i64 %var_2_218, i64* %var_2_219, align 8
%var_2_220 = load i64, i64* %RBP.i, align 8
%var_2_221 = add i64 %var_2_220, -72
%var_2_222 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_314:  %var_2_314 = add i64 %var_2_303, 8
; %var_2_223 = add i64 %var_2_222, 8
; Matched:\<badref\>:  store i64 %var_2_204, i64* %PC, align 8
; store i64 %var_2_223, i64* %var_2_3, align 8
%var_2_224 = inttoptr i64 %var_2_221 to i64*
store i64 1, i64* %var_2_224, align 8
; Matched:%var_2_206:  %var_2_206 = load i64, i64* %RBP, align 8
; %var_2_225 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_206, -104
; %var_2_226 = add i64 %var_2_225, -104
; Matched:%var_2_208:  %var_2_208 = load i32, i32* %EAX, align 4
; %var_2_227 = load i32, i32* %EAX.i299, align 4
; Matched:%var_2_209:  %var_2_209 = load i64, i64* %PC, align 8
; %var_2_228 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, 3
; %var_2_229 = add i64 %var_2_228, 3
; Matched:\<badref\>:  store i64 %var_2_210, i64* %PC, align 8
; store i64 %var_2_229, i64* %var_2_3, align 8
; Matched:%var_2_211:  %var_2_211 = inttoptr i64 %var_2_207 to i32*
; %var_2_230 = inttoptr i64 %var_2_226 to i32*
; Matched:\<badref\>:  store i32 %var_2_208, i32* %var_2_211, align 4
; store i32 %var_2_227, i32* %var_2_230, align 4
; Matched:  %RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; %RAX.i201 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
%var_2_231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%RCX.i198 = getelementptr inbounds %union.anon, %union.anon* %var_2_231, i64 0, i32 0
%.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400659:                                  ; preds = %block_40066e, %entry
%var_2_232 = phi i64 [ %var_2_390, %block_40066e ], [ %.pre, %entry ]
%var_2_233 = load i64, i64* %RBP.i, align 8
%var_2_234 = add i64 %var_2_233, -72
; Matched:%var_2_488:  %var_2_488 = add i64 %var_2_485, 4
; %var_2_235 = add i64 %var_2_232, 4
; Matched:\<badref\>:  store i64 %var_2_488, i64* %PC, align 8
; store i64 %var_2_235, i64* %var_2_3, align 8
%var_2_236 = inttoptr i64 %var_2_234 to i64*
%var_2_237 = load i64, i64* %var_2_236, align 8
; Matched:\<badref\>:  store i64 %var_2_490, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_237, i64* %RAX.i201, align 8
%var_2_238 = add i64 %var_2_233, -80
; Matched:%var_2_492:  %var_2_492 = add i64 %var_2_485, 8
; %var_2_239 = add i64 %var_2_232, 8
; Matched:\<badref\>:  store i64 %var_2_492, i64* %PC, align 8
; store i64 %var_2_239, i64* %var_2_3, align 8
%var_2_240 = inttoptr i64 %var_2_238 to i64*
%var_2_241 = load i64, i64* %var_2_240, align 8
%var_2_242 = add i64 %var_2_241, -1
; Matched:\<badref\>:  store i64 %var_2_495, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_242, i64* %RCX.i198, align 8
%var_2_243 = lshr i64 %var_2_242, 63
%var_2_244 = sub i64 %var_2_237, %var_2_242
; Matched:%var_2_498:  %var_2_498 = icmp ult i64 %var_2_490, %var_2_495
; %var_2_245 = icmp ult i64 %var_2_237, %var_2_242
; Matched:%var_2_499:  %var_2_499 = zext i1 %var_2_498 to i8
; %var_2_246 = zext i1 %var_2_245 to i8
; Matched:\<badref\>:  store i8 %var_2_499, i8* %var_2_20, align 1, !tbaa !1265
; store i8 %var_2_246, i8* %var_2_14, align 1
; Matched:%var_2_500:  %var_2_500 = trunc i64 %var_2_497 to i32
; %var_2_247 = trunc i64 %var_2_244 to i32
; Matched:%var_2_501:  %var_2_501 = and i32 %var_2_500, 255
; %var_2_248 = and i32 %var_2_247, 255
; Matched:%var_2_502:  %var_2_502 = tail call i32 @llvm.ctpop.i32(i32 %var_2_501) #11
; %var_2_249 = tail call i32 @llvm.ctpop.i32(i32 %var_2_248)
; Matched:%var_2_503:  %var_2_503 = trunc i32 %var_2_502 to i8
; %var_2_250 = trunc i32 %var_2_249 to i8
; Matched:%var_2_504:  %var_2_504 = and i8 %var_2_503, 1
; %var_2_251 = and i8 %var_2_250, 1
; Matched:%var_2_505:  %var_2_505 = xor i8 %var_2_504, 1
; %var_2_252 = xor i8 %var_2_251, 1
; Matched:\<badref\>:  store i8 %var_2_505, i8* %var_2_27, align 1, !tbaa !1279
; store i8 %var_2_252, i8* %var_2_21, align 1
; Matched:%var_2_506:  %var_2_506 = xor i64 %var_2_495, %var_2_490
; %var_2_253 = xor i64 %var_2_242, %var_2_237
; Matched:%var_2_507:  %var_2_507 = xor i64 %var_2_506, %var_2_497
; %var_2_254 = xor i64 %var_2_253, %var_2_244
; Matched:%var_2_508:  %var_2_508 = lshr i64 %var_2_507, 4
; %var_2_255 = lshr i64 %var_2_254, 4
; Matched:%var_2_509:  %var_2_509 = trunc i64 %var_2_508 to i8
; %var_2_256 = trunc i64 %var_2_255 to i8
; Matched:%var_2_510:  %var_2_510 = and i8 %var_2_509, 1
; %var_2_257 = and i8 %var_2_256, 1
; Matched:\<badref\>:  store i8 %var_2_510, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_257, i8* %var_2_26, align 1
%var_2_258 = icmp eq i64 %var_2_244, 0
; Matched:%var_2_512:  %var_2_512 = zext i1 %var_2_511 to i8
; %var_2_259 = zext i1 %var_2_258 to i8
; Matched:\<badref\>:  store i8 %var_2_512, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_259, i8* %var_2_29, align 1
%var_2_260 = lshr i64 %var_2_244, 63
%var_2_261 = trunc i64 %var_2_260 to i8
; Matched:\<badref\>:  store i8 %var_2_514, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_261, i8* %var_2_32, align 1
%var_2_262 = lshr i64 %var_2_237, 63
%var_2_263 = xor i64 %var_2_243, %var_2_262
%var_2_264 = xor i64 %var_2_260, %var_2_262
%var_2_265 = add nuw nsw i64 %var_2_264, %var_2_263
%var_2_266 = icmp eq i64 %var_2_265, 2
; Matched:%var_2_520:  %var_2_520 = zext i1 %var_2_519 to i8
; %var_2_267 = zext i1 %var_2_266 to i8
; Matched:\<badref\>:  store i8 %var_2_520, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_267, i8* %var_2_38, align 1
%var_2_268 = icmp ne i8 %var_2_261, 0
%var_2_269 = xor i1 %var_2_268, %var_2_266
%.demorgan = or i1 %var_2_258, %var_2_269
  %.v = select i1 %.demorgan, i64 21, i64 203
%var_2_270 = add i64 %var_2_232, %.v
; Matched:\<badref\>:  store i64 %var_2_523, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_270, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_40066e, label %block_.L_400724

block_40066e:                                     ; preds = %block_.L_400659
; Matched:%var_2_365:  %var_2_365 = add i64 %var_2_486, -32
; %var_2_271 = add i64 %var_2_233, -32
; Matched:%var_2_366:  %var_2_366 = add i64 %var_2_523, 5
; %var_2_272 = add i64 %var_2_270, 5
; Matched:\<badref\>:  store i64 %var_2_366, i64* %PC, align 8
; store i64 %var_2_272, i64* %var_2_3, align 8
; Matched:%var_2_367:  %var_2_367 = inttoptr i64 %var_2_365 to double*
; %var_2_273 = inttoptr i64 %var_2_271 to double*
; Matched:%var_2_368:  %var_2_368 = load double, double* %var_2_367, align 8
; %var_2_274 = load double, double* %var_2_273, align 8
%var_2_275 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_370:  %var_2_370 = fadd double %var_2_368, %var_2_369
; %var_2_276 = fadd double %var_2_274, %var_2_275
; Matched:\<badref\>:  store double %var_2_370, double* %var_2_71, align 1, !tbaa !1285
; store double %var_2_276, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_73, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_371:  %var_2_371 = add i64 %var_2_523, 19
; %var_2_277 = add i64 %var_2_270, 19
; Matched:\<badref\>:  store i64 %var_2_371, i64* %PC, align 8
; store i64 %var_2_277, i64* %var_2_3, align 8
; Matched:%var_2_372:  %var_2_372 = inttoptr i64 %var_2_365 to double*
; %var_2_278 = inttoptr i64 %var_2_271 to double*
; Matched:\<badref\>:  store double %var_2_370, double* %var_2_372, align 8
; store double %var_2_276, double* %var_2_278, align 8
; Matched:%var_2_373:  %var_2_373 = load i64, i64* %RBP, align 8
; %var_2_279 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_374:  %var_2_374 = add i64 %var_2_373, -32
; %var_2_280 = add i64 %var_2_279, -32
%var_2_281 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_191, 5
; %var_2_282 = add i64 %var_2_281, 5
; Matched:\<badref\>:  store i64 %var_2_192, i64* %PC, align 8
; store i64 %var_2_282, i64* %var_2_3, align 8
; Matched:%var_2_377:  %var_2_377 = inttoptr i64 %var_2_374 to i64*
; %var_2_283 = inttoptr i64 %var_2_280 to i64*
; Matched:%var_2_378:  %var_2_378 = load i64, i64* %var_2_377, align 8
; %var_2_284 = load i64, i64* %var_2_283, align 8
; Matched:\<badref\>:  store i64 %var_2_378, i64* %var_2_72, align 1, !tbaa !1285
; store i64 %var_2_284, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_379:  %var_2_379 = add i64 %var_2_373, -48
; %var_2_285 = add i64 %var_2_279, -48
; Matched:%var_2_380:  %var_2_380 = add i64 %var_2_375, 10
; %var_2_286 = add i64 %var_2_281, 10
; Matched:\<badref\>:  store i64 %var_2_380, i64* %PC, align 8
; store i64 %var_2_286, i64* %var_2_3, align 8
; Matched:%var_2_381:  %var_2_381 = bitcast i64 %var_2_378 to double
; %var_2_287 = bitcast i64 %var_2_284 to double
; Matched:%var_2_382:  %var_2_382 = inttoptr i64 %var_2_379 to double*
; %var_2_288 = inttoptr i64 %var_2_285 to double*
; Matched:%var_2_383:  %var_2_383 = load double, double* %var_2_382, align 8
; %var_2_289 = load double, double* %var_2_288, align 8
; Matched:%var_2_384:  %var_2_384 = fmul double %var_2_381, %var_2_383
; %var_2_290 = fmul double %var_2_287, %var_2_289
; Matched:\<badref\>:  store double %var_2_384, double* %var_2_71, align 1, !tbaa !1285
; store double %var_2_290, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_73, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_373, -24
; %var_2_291 = add i64 %var_2_279, -24
; Matched:%var_2_386:  %var_2_386 = add i64 %var_2_375, 15
; %var_2_292 = add i64 %var_2_281, 15
; Matched:\<badref\>:  store i64 %var_2_386, i64* %PC, align 8
; store i64 %var_2_292, i64* %var_2_3, align 8
; Matched:%var_2_387:  %var_2_387 = inttoptr i64 %var_2_385 to double*
; %var_2_293 = inttoptr i64 %var_2_291 to double*
; Matched:\<badref\>:  store double %var_2_384, double* %var_2_387, align 8
; store double %var_2_290, double* %var_2_293, align 8
%var_2_294 = load i64, i64* %RBP.i, align 8
%var_2_295 = add i64 %var_2_294, -24
%var_2_296 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_239, 5
; %var_2_297 = add i64 %var_2_296, 5
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_297, i64* %var_2_3, align 8
%var_2_298 = inttoptr i64 %var_2_295 to i64*
%var_2_299 = load i64, i64* %var_2_298, align 8
; Matched:\<badref\>:  store i64 %var_2_393, i64* %var_2_72, align 1, !tbaa !1285
; store i64 %var_2_299, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_333, 10
; %var_2_300 = add i64 %var_2_296, 10
; Matched:\<badref\>:  store i64 %var_2_357, i64* %PC, align 8
; store i64 %var_2_300, i64* %var_2_3, align 8
; Matched:%var_2_395:  %var_2_395 = bitcast i64 %var_2_393 to double
; %var_2_301 = bitcast i64 %var_2_299 to double
; Matched:%var_2_396:  %var_2_396 = inttoptr i64 %var_2_389 to double*
; %var_2_302 = inttoptr i64 %var_2_295 to double*
; Matched:%var_2_397:  %var_2_397 = load double, double* %var_2_396, align 8
; %var_2_303 = load double, double* %var_2_302, align 8
; Matched:%var_2_398:  %var_2_398 = fmul double %var_2_395, %var_2_397
; %var_2_304 = fmul double %var_2_301, %var_2_303
; Matched:\<badref\>:  store double %var_2_398, double* %var_2_71, align 1, !tbaa !1285
; store double %var_2_304, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_73, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_223, -40
; %var_2_305 = add i64 %var_2_294, -40
; Matched:%var_2_235:  %var_2_235 = add i64 %var_2_225, 15
; %var_2_306 = add i64 %var_2_296, 15
; Matched:\<badref\>:  store i64 %var_2_235, i64* %PC, align 8
; store i64 %var_2_306, i64* %var_2_3, align 8
; Matched:%var_2_401:  %var_2_401 = inttoptr i64 %var_2_399 to double*
; %var_2_307 = inttoptr i64 %var_2_305 to double*
; Matched:\<badref\>:  store double %var_2_398, double* %var_2_401, align 8
; store double %var_2_304, double* %var_2_307, align 8
; Matched:%var_2_402:  %var_2_402 = load i64, i64* %RBP, align 8
; %var_2_308 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_403:  %var_2_403 = add i64 %var_2_402, -16
; %var_2_309 = add i64 %var_2_308, -16
%var_2_310 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_197, 5
; %var_2_311 = add i64 %var_2_310, 5
; Matched:\<badref\>:  store i64 %var_2_198, i64* %PC, align 8
; store i64 %var_2_311, i64* %var_2_3, align 8
; Matched:%var_2_406:  %var_2_406 = inttoptr i64 %var_2_403 to i64*
; %var_2_312 = inttoptr i64 %var_2_309 to i64*
; Matched:%var_2_407:  %var_2_407 = load i64, i64* %var_2_406, align 8
; %var_2_313 = load i64, i64* %var_2_312, align 8
; Matched:\<badref\>:  store i64 %var_2_407, i64* %var_2_72, align 1, !tbaa !1285
; store i64 %var_2_313, i64* %var_2_71, align 1
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store double 0.000000e+00, double* %var_2_73, align 1
; Matched:%var_2_408:  %var_2_408 = add i64 %var_2_402, -24
; %var_2_314 = add i64 %var_2_308, -24
; Matched:%var_2_394:  %var_2_394 = add i64 %var_2_390, 10
; %var_2_315 = add i64 %var_2_310, 10
; Matched:\<badref\>:  store i64 %var_2_229, i64* %PC, align 8
; store i64 %var_2_315, i64* %var_2_3, align 8
; Matched:%var_2_410:  %var_2_410 = inttoptr i64 %var_2_408 to i64*
; %var_2_316 = inttoptr i64 %var_2_314 to i64*
; Matched:%var_2_411:  %var_2_411 = load i64, i64* %var_2_410, align 8
; %var_2_317 = load i64, i64* %var_2_316, align 8
; Matched:\<badref\>:  store i64 %var_2_411, i64* %var_2_77, align 1, !tbaa !1285
; store i64 %var_2_317, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_318 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_318, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_413:  %var_2_413 = add i64 %var_2_402, -40
; %var_2_319 = add i64 %var_2_308, -40
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_404, 24
; %var_2_320 = add i64 %var_2_310, 24
; Matched:\<badref\>:  store i64 %var_2_178, i64* %PC, align 8
; store i64 %var_2_320, i64* %var_2_3, align 8
; Matched:  %.cast6 = bitcast i64 %var_2_412 to double
; %.cast6 = bitcast i64 %var_2_318 to double
; Matched:%var_2_415:  %var_2_415 = inttoptr i64 %var_2_413 to double*
; %var_2_321 = inttoptr i64 %var_2_319 to double*
; Matched:%var_2_416:  %var_2_416 = load double, double* %var_2_415, align 8
; %var_2_322 = load double, double* %var_2_321, align 8
; Matched:%var_2_417:  %var_2_417 = fmul double %.cast6, %var_2_416
; %var_2_323 = fmul double %.cast6, %var_2_322
; Matched:%var_2_418:  %var_2_418 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
; %var_2_324 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
; Matched:%var_2_419:  %var_2_419 = fsub double %var_2_417, %var_2_418
; %var_2_325 = fsub double %var_2_323, %var_2_324
; Matched:\<badref\>:  store double %var_2_419, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_325, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_420:  %var_2_420 = add i64 %var_2_404, 38
; %var_2_326 = add i64 %var_2_310, 38
; Matched:\<badref\>:  store i64 %var_2_420, i64* %PC, align 8
; store i64 %var_2_326, i64* %var_2_3, align 8
; Matched:%var_2_421:  %var_2_421 = load double, double* %var_2_415, align 8
; %var_2_327 = load double, double* %var_2_321, align 8
; Matched:%var_2_422:  %var_2_422 = fmul double %var_2_419, %var_2_421
; %var_2_328 = fmul double %var_2_325, %var_2_327
; Matched:%var_2_423:  %var_2_423 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
; %var_2_329 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
; Matched:%var_2_424:  %var_2_424 = fadd double %var_2_422, %var_2_423
; %var_2_330 = fadd double %var_2_328, %var_2_329
; Matched:\<badref\>:  store double %var_2_424, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_330, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_425:  %var_2_425 = add i64 %var_2_404, 52
; %var_2_331 = add i64 %var_2_310, 52
; Matched:\<badref\>:  store i64 %var_2_425, i64* %PC, align 8
; store i64 %var_2_331, i64* %var_2_3, align 8
; Matched:%var_2_426:  %var_2_426 = load double, double* %var_2_415, align 8
; %var_2_332 = load double, double* %var_2_321, align 8
; Matched:%var_2_427:  %var_2_427 = fmul double %var_2_424, %var_2_426
; %var_2_333 = fmul double %var_2_330, %var_2_332
; Matched:%var_2_428:  %var_2_428 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
; %var_2_334 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
; Matched:%var_2_429:  %var_2_429 = fsub double %var_2_427, %var_2_428
; %var_2_335 = fsub double %var_2_333, %var_2_334
; Matched:\<badref\>:  store double %var_2_429, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_335, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_404, 66
; %var_2_336 = add i64 %var_2_310, 66
; Matched:\<badref\>:  store i64 %var_2_430, i64* %PC, align 8
; store i64 %var_2_336, i64* %var_2_3, align 8
; Matched:%var_2_431:  %var_2_431 = load double, double* %var_2_415, align 8
; %var_2_337 = load double, double* %var_2_321, align 8
; Matched:%var_2_432:  %var_2_432 = fmul double %var_2_429, %var_2_431
; %var_2_338 = fmul double %var_2_335, %var_2_337
; Matched:%var_2_433:  %var_2_433 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
; %var_2_339 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
; Matched:%var_2_434:  %var_2_434 = fadd double %var_2_432, %var_2_433
; %var_2_340 = fadd double %var_2_338, %var_2_339
; Matched:\<badref\>:  store double %var_2_434, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_340, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_404, 80
; %var_2_341 = add i64 %var_2_310, 80
; Matched:\<badref\>:  store i64 %var_2_435, i64* %PC, align 8
; store i64 %var_2_341, i64* %var_2_3, align 8
; Matched:%var_2_436:  %var_2_436 = load double, double* %var_2_415, align 8
; %var_2_342 = load double, double* %var_2_321, align 8
; Matched:%var_2_437:  %var_2_437 = fmul double %var_2_434, %var_2_436
; %var_2_343 = fmul double %var_2_340, %var_2_342
; Matched:%var_2_438:  %var_2_438 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
; %var_2_344 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
; Matched:%var_2_439:  %var_2_439 = fadd double %var_2_437, %var_2_438
; %var_2_345 = fadd double %var_2_343, %var_2_344
; Matched:\<badref\>:  store double %var_2_439, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_345, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_404, 94
; %var_2_346 = add i64 %var_2_310, 94
; Matched:\<badref\>:  store i64 %var_2_440, i64* %PC, align 8
; store i64 %var_2_346, i64* %var_2_3, align 8
; Matched:%var_2_441:  %var_2_441 = load double, double* %var_2_415, align 8
; %var_2_347 = load double, double* %var_2_321, align 8
; Matched:%var_2_442:  %var_2_442 = fmul double %var_2_439, %var_2_441
; %var_2_348 = fmul double %var_2_345, %var_2_347
; Matched:%var_2_443:  %var_2_443 = load double, double* bitcast (%one_type* @one to double*), align 8
; %var_2_349 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
; Matched:%var_2_444:  %var_2_444 = fadd double %var_2_442, %var_2_443
; %var_2_350 = fadd double %var_2_348, %var_2_349
; Matched:\<badref\>:  store double %var_2_444, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_350, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
; Matched:%var_2_445:  %var_2_445 = bitcast i64 %var_2_411 to double
; %var_2_351 = bitcast i64 %var_2_317 to double
; Matched:%var_2_446:  %var_2_446 = fmul double %var_2_444, %var_2_445
; %var_2_352 = fmul double %var_2_350, %var_2_351
; Matched:\<badref\>:  store double %var_2_446, double* %var_2_76, align 1, !tbaa !1285
; store double %var_2_352, double* %var_2_79, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_78, align 1, !tbaa !1285
; store i64 0, i64* %var_2_81, align 1
; Matched:%var_2_447:  %var_2_447 = bitcast i64 %var_2_407 to double
; %var_2_353 = bitcast i64 %var_2_313 to double
; Matched:%var_2_448:  %var_2_448 = fadd double %var_2_446, %var_2_447
; %var_2_354 = fadd double %var_2_352, %var_2_353
; Matched:\<badref\>:  store double %var_2_448, double* %var_2_71, align 1, !tbaa !1285
; store double %var_2_354, double* %var_2_70, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_73, align 1, !tbaa !1285
; store i64 0, i64* %var_2_72, align 1
; Matched:%var_2_449:  %var_2_449 = load i64, i64* %RBP, align 8
; %var_2_355 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_449, -16
; %var_2_356 = add i64 %var_2_355, -16
; Matched:%var_2_451:  %var_2_451 = add i64 %var_2_404, 116
; %var_2_357 = add i64 %var_2_310, 116
; Matched:\<badref\>:  store i64 %var_2_279, i64* %PC, align 8
; store i64 %var_2_357, i64* %var_2_3, align 8
; Matched:%var_2_452:  %var_2_452 = inttoptr i64 %var_2_450 to double*
; %var_2_358 = inttoptr i64 %var_2_356 to double*
; Matched:\<badref\>:  store double %var_2_448, double* %var_2_452, align 8
; store double %var_2_354, double* %var_2_358, align 8
; Matched:%var_2_453:  %var_2_453 = load i64, i64* %RBP, align 8
; %var_2_359 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_454:  %var_2_454 = add i64 %var_2_453, -72
; %var_2_360 = add i64 %var_2_359, -72
; Matched:%var_2_455:  %var_2_455 = load i64, i64* %PC, align 8
; %var_2_361 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_456:  %var_2_456 = add i64 %var_2_455, 4
; %var_2_362 = add i64 %var_2_361, 4
; Matched:\<badref\>:  store i64 %var_2_456, i64* %PC, align 8
; store i64 %var_2_362, i64* %var_2_3, align 8
; Matched:%var_2_457:  %var_2_457 = inttoptr i64 %var_2_454 to i64*
; %var_2_363 = inttoptr i64 %var_2_360 to i64*
; Matched:%var_2_458:  %var_2_458 = load i64, i64* %var_2_457, align 8
; %var_2_364 = load i64, i64* %var_2_363, align 8
; Matched:%var_2_459:  %var_2_459 = add i64 %var_2_458, 1
; %var_2_365 = add i64 %var_2_364, 1
; Matched:\<badref\>:  store i64 %var_2_459, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_365, i64* %RAX.i201, align 8
; Matched:%var_2_460:  %var_2_460 = icmp eq i64 %var_2_458, -1
; %var_2_366 = icmp eq i64 %var_2_364, -1
; Matched:%var_2_461:  %var_2_461 = icmp eq i64 %var_2_459, 0
; %var_2_367 = icmp eq i64 %var_2_365, 0
; Matched:%var_2_462:  %var_2_462 = or i1 %var_2_460, %var_2_461
; %var_2_368 = or i1 %var_2_366, %var_2_367
; Matched:%var_2_463:  %var_2_463 = zext i1 %var_2_462 to i8
; %var_2_369 = zext i1 %var_2_368 to i8
; Matched:\<badref\>:  store i8 %var_2_463, i8* %var_2_20, align 1, !tbaa !1265
; store i8 %var_2_369, i8* %var_2_14, align 1
; Matched:%var_2_464:  %var_2_464 = trunc i64 %var_2_459 to i32
; %var_2_370 = trunc i64 %var_2_365 to i32
; Matched:%var_2_465:  %var_2_465 = and i32 %var_2_464, 255
; %var_2_371 = and i32 %var_2_370, 255
; Matched:%var_2_466:  %var_2_466 = tail call i32 @llvm.ctpop.i32(i32 %var_2_465) #11
; %var_2_372 = tail call i32 @llvm.ctpop.i32(i32 %var_2_371)
; Matched:%var_2_467:  %var_2_467 = trunc i32 %var_2_466 to i8
; %var_2_373 = trunc i32 %var_2_372 to i8
; Matched:%var_2_468:  %var_2_468 = and i8 %var_2_467, 1
; %var_2_374 = and i8 %var_2_373, 1
; Matched:%var_2_469:  %var_2_469 = xor i8 %var_2_468, 1
; %var_2_375 = xor i8 %var_2_374, 1
; Matched:\<badref\>:  store i8 %var_2_469, i8* %var_2_27, align 1, !tbaa !1279
; store i8 %var_2_375, i8* %var_2_21, align 1
; Matched:%var_2_470:  %var_2_470 = xor i64 %var_2_459, %var_2_458
; %var_2_376 = xor i64 %var_2_365, %var_2_364
; Matched:%var_2_471:  %var_2_471 = lshr i64 %var_2_470, 4
; %var_2_377 = lshr i64 %var_2_376, 4
; Matched:%var_2_472:  %var_2_472 = trunc i64 %var_2_471 to i8
; %var_2_378 = trunc i64 %var_2_377 to i8
; Matched:%var_2_473:  %var_2_473 = and i8 %var_2_472, 1
; %var_2_379 = and i8 %var_2_378, 1
; Matched:\<badref\>:  store i8 %var_2_473, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_379, i8* %var_2_26, align 1
; Matched:%var_2_474:  %var_2_474 = zext i1 %var_2_461 to i8
; %var_2_380 = zext i1 %var_2_367 to i8
; Matched:\<badref\>:  store i8 %var_2_474, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_380, i8* %var_2_29, align 1
; Matched:%var_2_475:  %var_2_475 = lshr i64 %var_2_459, 63
; %var_2_381 = lshr i64 %var_2_365, 63
; Matched:%var_2_476:  %var_2_476 = trunc i64 %var_2_475 to i8
; %var_2_382 = trunc i64 %var_2_381 to i8
; Matched:\<badref\>:  store i8 %var_2_476, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_382, i8* %var_2_32, align 1
; Matched:%var_2_477:  %var_2_477 = lshr i64 %var_2_458, 63
; %var_2_383 = lshr i64 %var_2_364, 63
; Matched:%var_2_478:  %var_2_478 = xor i64 %var_2_475, %var_2_477
; %var_2_384 = xor i64 %var_2_381, %var_2_383
; Matched:%var_2_479:  %var_2_479 = add nuw nsw i64 %var_2_478, %var_2_475
; %var_2_385 = add nuw nsw i64 %var_2_384, %var_2_381
; Matched:%var_2_480:  %var_2_480 = icmp eq i64 %var_2_479, 2
; %var_2_386 = icmp eq i64 %var_2_385, 2
; Matched:%var_2_481:  %var_2_481 = zext i1 %var_2_480 to i8
; %var_2_387 = zext i1 %var_2_386 to i8
; Matched:\<badref\>:  store i8 %var_2_481, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_387, i8* %var_2_38, align 1
; Matched:%var_2_482:  %var_2_482 = add i64 %var_2_455, 12
; %var_2_388 = add i64 %var_2_361, 12
; Matched:\<badref\>:  store i64 %var_2_482, i64* %PC, align 8
; store i64 %var_2_388, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_459, i64* %var_2_457, align 8
; store i64 %var_2_365, i64* %var_2_363, align 8
%var_2_389 = load i64, i64* %var_2_3, align 8
%var_2_390 = add i64 %var_2_389, -198
; Matched:\<badref\>:  store i64 %var_2_484, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_390, i64* %var_2_3, align 8
  br label %block_.L_400659

block_.L_400724:                                  ; preds = %block_.L_400659
; Matched:%var_2_212:  %var_2_212 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_391 = bitcast %union.VectorReg* %var_2_101 to double*
; Matched:%var_2_213:  %var_2_213 = bitcast %union.VectorReg* %var_2_10 to double*
; %var_2_392 = bitcast %union.VectorReg* %var_2_109 to double*
  store i64 ptrtoint (%G__0x4009c6_type* @G__0x4009c6 to i64), i64* %RDI.i250, align 8
%var_2_393 = bitcast [32 x %union.VectorReg]* %var_2_64 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_393, align 1
%var_2_394 = add i64 %var_2_270, add (i64 ptrtoint (%G_0x1ef__rip__type* @G_0x1ef__rip_ to i64), i64 13)
%var_2_395 = add i64 %var_2_270, 21
store i64 %var_2_395, i64* %var_2_3, align 8
%var_2_396 = inttoptr i64 %var_2_394 to i64*
%var_2_397 = load i64, i64* %var_2_396, align 8
store i64 %var_2_397, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
%var_2_398 = add i64 %var_2_270, add (i64 ptrtoint (%G_0x1ef__rip__type* @G_0x1ef__rip_ to i64), i64 21)
%var_2_399 = add i64 %var_2_270, 29
store i64 %var_2_399, i64* %var_2_3, align 8
%var_2_400 = inttoptr i64 %var_2_398 to i64*
%var_2_401 = load i64, i64* %var_2_400, align 8
store i64 %var_2_401, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:%var_2_217:  %var_2_217 = load double, double* bitcast (%piref_type* @piref to double*), align 8
; %var_2_402 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*), align 8
; Matched:%var_2_218:  %var_2_218 = load double, double* bitcast (%three_type* @three to double*), align 8
; %var_2_403 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*), align 8
; Matched:%var_2_219:  %var_2_219 = fdiv double %var_2_217, %var_2_218
; %var_2_404 = fdiv double %var_2_402, %var_2_403
; Matched:\<badref\>:  store double %var_2_219, double* %var_2_86, align 1, !tbaa !1285
; store double %var_2_404, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_88, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_486, -24
; %var_2_405 = add i64 %var_2_233, -24
; Matched:%var_2_221:  %var_2_221 = add i64 %var_2_523, 52
; %var_2_406 = add i64 %var_2_270, 52
; Matched:\<badref\>:  store i64 %var_2_221, i64* %PC, align 8
; store i64 %var_2_406, i64* %var_2_3, align 8
; Matched:%var_2_222:  %var_2_222 = inttoptr i64 %var_2_220 to double*
; %var_2_407 = inttoptr i64 %var_2_405 to double*
; Matched:\<badref\>:  store double %var_2_219, double* %var_2_222, align 8
; store double %var_2_404, double* %var_2_407, align 8
%var_2_408 = load i64, i64* %RBP.i, align 8
%var_2_409 = add i64 %var_2_408, -24
%var_2_410 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_329:  %var_2_329 = add i64 %var_2_325, 5
; %var_2_411 = add i64 %var_2_410, 5
; Matched:\<badref\>:  store i64 %var_2_329, i64* %PC, align 8
; store i64 %var_2_411, i64* %var_2_3, align 8
%var_2_412 = inttoptr i64 %var_2_409 to i64*
%var_2_413 = load i64, i64* %var_2_412, align 8
; Matched:\<badref\>:  store i64 %var_2_228, i64* %var_2_87, align 1, !tbaa !1285
; store i64 %var_2_413, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_89, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_225, 10
; %var_2_414 = add i64 %var_2_410, 10
; Matched:\<badref\>:  store i64 %var_2_394, i64* %PC, align 8
; store i64 %var_2_414, i64* %var_2_3, align 8
; Matched:%var_2_230:  %var_2_230 = bitcast i64 %var_2_228 to double
; %var_2_415 = bitcast i64 %var_2_413 to double
; Matched:%var_2_231:  %var_2_231 = inttoptr i64 %var_2_224 to double*
; %var_2_416 = inttoptr i64 %var_2_409 to double*
; Matched:%var_2_232:  %var_2_232 = load double, double* %var_2_231, align 8
; %var_2_417 = load double, double* %var_2_416, align 8
; Matched:%var_2_233:  %var_2_233 = fmul double %var_2_230, %var_2_232
; %var_2_418 = fmul double %var_2_415, %var_2_417
; Matched:\<badref\>:  store double %var_2_233, double* %var_2_86, align 1, !tbaa !1285
; store double %var_2_418, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_88, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
; Matched:%var_2_399:  %var_2_399 = add i64 %var_2_388, -40
; %var_2_419 = add i64 %var_2_408, -40
; Matched:%var_2_171:  %var_2_171 = add i64 %var_2_140, 15
; %var_2_420 = add i64 %var_2_410, 15
; Matched:\<badref\>:  store i64 %var_2_171, i64* %PC, align 8
; store i64 %var_2_420, i64* %var_2_3, align 8
; Matched:%var_2_236:  %var_2_236 = inttoptr i64 %var_2_234 to double*
; %var_2_421 = inttoptr i64 %var_2_419 to double*
; Matched:\<badref\>:  store double %var_2_233, double* %var_2_236, align 8
; store double %var_2_418, double* %var_2_421, align 8
%var_2_422 = load i64, i64* %RBP.i, align 8
%var_2_423 = add i64 %var_2_422, -24
%var_2_424 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_376:  %var_2_376 = add i64 %var_2_375, 5
; %var_2_425 = add i64 %var_2_424, 5
; Matched:\<badref\>:  store i64 %var_2_376, i64* %PC, align 8
; store i64 %var_2_425, i64* %var_2_3, align 8
%var_2_426 = inttoptr i64 %var_2_423 to i64*
%var_2_427 = load i64, i64* %var_2_426, align 8
; Matched:\<badref\>:  store i64 %var_2_242, i64* %var_2_87, align 1, !tbaa !1285
; store i64 %var_2_427, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_89, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
%var_2_428 = load i64, i64* bitcast (%G_0x601060_type* @G_0x601060 to i64*), align 8
store i64 %var_2_428, i64* %var_2_106, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_93, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_108, align 1
%var_2_429 = add i64 %var_2_422, -40
; Matched:%var_2_245:  %var_2_245 = add i64 %var_2_239, 19
; %var_2_430 = add i64 %var_2_424, 19
; Matched:\<badref\>:  store i64 %var_2_245, i64* %PC, align 8
; store i64 %var_2_430, i64* %var_2_3, align 8
%.cast7 = bitcast i64 %var_2_428 to double
%var_2_431 = inttoptr i64 %var_2_429 to double*
%var_2_432 = load double, double* %var_2_431, align 8
%var_2_433 = fmul double %.cast7, %var_2_432
%var_2_434 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
%var_2_435 = fsub double %var_2_433, %var_2_434
; Matched:\<badref\>:  store double %var_2_250, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_435, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
; Matched:%var_2_251:  %var_2_251 = add i64 %var_2_239, 33
; %var_2_436 = add i64 %var_2_424, 33
; Matched:\<badref\>:  store i64 %var_2_251, i64* %PC, align 8
; store i64 %var_2_436, i64* %var_2_3, align 8
%var_2_437 = load double, double* %var_2_431, align 8
%var_2_438 = fmul double %var_2_435, %var_2_437
%var_2_439 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*), align 8
%var_2_440 = fadd double %var_2_438, %var_2_439
; Matched:\<badref\>:  store double %var_2_255, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_440, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
; Matched:%var_2_256:  %var_2_256 = add i64 %var_2_239, 47
; %var_2_441 = add i64 %var_2_424, 47
; Matched:\<badref\>:  store i64 %var_2_256, i64* %PC, align 8
; store i64 %var_2_441, i64* %var_2_3, align 8
%var_2_442 = load double, double* %var_2_431, align 8
%var_2_443 = fmul double %var_2_440, %var_2_442
%var_2_444 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
%var_2_445 = fsub double %var_2_443, %var_2_444
; Matched:\<badref\>:  store double %var_2_260, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_445, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_239, 61
; %var_2_446 = add i64 %var_2_424, 61
; Matched:\<badref\>:  store i64 %var_2_261, i64* %PC, align 8
; store i64 %var_2_446, i64* %var_2_3, align 8
%var_2_447 = load double, double* %var_2_431, align 8
%var_2_448 = fmul double %var_2_445, %var_2_447
%var_2_449 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*), align 8
%var_2_450 = fadd double %var_2_448, %var_2_449
; Matched:\<badref\>:  store double %var_2_265, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_450, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_108, 75
; %var_2_451 = add i64 %var_2_424, 75
; Matched:\<badref\>:  store i64 %var_2_266, i64* %PC, align 8
; store i64 %var_2_451, i64* %var_2_3, align 8
%var_2_452 = load double, double* %var_2_431, align 8
%var_2_453 = fmul double %var_2_450, %var_2_452
%var_2_454 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*), align 8
%var_2_455 = fadd double %var_2_453, %var_2_454
; Matched:\<badref\>:  store double %var_2_270, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_455, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
; Matched:%var_2_271:  %var_2_271 = add i64 %var_2_239, 89
; %var_2_456 = add i64 %var_2_424, 89
; Matched:\<badref\>:  store i64 %var_2_271, i64* %PC, align 8
; store i64 %var_2_456, i64* %var_2_3, align 8
%var_2_457 = load double, double* %var_2_431, align 8
%var_2_458 = fmul double %var_2_455, %var_2_457
%var_2_459 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*), align 8
%var_2_460 = fadd double %var_2_458, %var_2_459
; Matched:\<badref\>:  store double %var_2_275, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_460, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
%var_2_461 = bitcast i64 %var_2_427 to double
%var_2_462 = fmul double %var_2_460, %var_2_461
; Matched:\<badref\>:  store double %var_2_277, double* %var_2_86, align 1, !tbaa !1285
; store double %var_2_462, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_88, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_462, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_463 = add i64 %var_2_422, -48
; Matched:%var_2_279:  %var_2_279 = add i64 %var_2_239, 116
; %var_2_464 = add i64 %var_2_424, 116
; Matched:\<badref\>:  store i64 %var_2_451, i64* %PC, align 8
; store i64 %var_2_464, i64* %var_2_3, align 8
%var_2_465 = inttoptr i64 %var_2_463 to i64*
%var_2_466 = load i64, i64* %var_2_465, align 8
; Matched:\<badref\>:  store i64 %var_2_281, i64* %var_2_87, align 1, !tbaa !1285
; store i64 %var_2_466, i64* %var_2_98, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_89, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_100, align 1
; Matched:%var_2_282:  %var_2_282 = bitcast %union.VectorReg* %var_2_9 to double*
; %var_2_467 = bitcast %union.VectorReg* %var_2_101 to double*
; Matched:\<badref\>:  store double %var_2_277, double* %var_2_282, align 1, !tbaa !1285
; store double %var_2_462, double* %var_2_467, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_93, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_108, align 1
%var_2_468 = load i64, i64* bitcast (%G_0x601120_type* @G_0x601120 to i64*), align 8
store i64 %var_2_468, i64* %var_2_114, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_97, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_116, align 1
%var_2_469 = load i64, i64* %RBP.i, align 8
%var_2_470 = add i64 %var_2_469, -16
; Matched:%var_2_286:  %var_2_286 = add i64 %var_2_239, 139
; %var_2_471 = add i64 %var_2_424, 139
; Matched:\<badref\>:  store i64 %var_2_286, i64* %PC, align 8
; store i64 %var_2_471, i64* %var_2_3, align 8
%.cast8 = bitcast i64 %var_2_468 to double
%var_2_472 = inttoptr i64 %var_2_470 to double*
%var_2_473 = load double, double* %var_2_472, align 8
%var_2_474 = fmul double %.cast8, %var_2_473
; Matched:\<badref\>:  store double %var_2_289, double* %var_2_213, align 1, !tbaa !1285
; store double %var_2_474, double* %var_2_392, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_96, align 1, !tbaa !1285
; store i64 0, i64* %var_2_115, align 1
%var_2_475 = fadd double %var_2_462, %var_2_474
; Matched:\<badref\>:  store double %var_2_290, double* %var_2_212, align 1, !tbaa !1285
; store double %var_2_475, double* %var_2_391, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_92, align 1, !tbaa !1285
; store i64 0, i64* %var_2_107, align 1
%var_2_476 = bitcast i64 %var_2_466 to double
%var_2_477 = fmul double %var_2_476, %var_2_475
%var_2_478 = fdiv double %var_2_477, %.cast8
; Matched:\<badref\>:  store double %var_2_293, double* %var_2_86, align 1, !tbaa !1285
; store double %var_2_478, double* %var_2_97, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_88, align 1, !tbaa !1285
; store i64 0, i64* %var_2_99, align 1
store double %var_2_478, double* bitcast (%G_0x601298_type* @G_0x601298 to double*), align 8
%var_2_479 = load i64, i64* %var_2_89, align 1
; Matched:\<badref\>:  store i64 %var_2_294, i64* bitcast (%sb_type* @sb to i64*), align 8
; store i64 %var_2_479, i64* bitcast (%G_0x601258_type* @G_0x601258 to i64*), align 8
%var_2_480 = bitcast i64 %var_2_479 to double
%var_2_481 = fsub double %var_2_478, %var_2_480
; Matched:\<badref\>:  store double %var_2_296, double* %var_2_81, align 1, !tbaa !1285
; store double %var_2_481, double* %var_2_88, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_83, align 1, !tbaa !1285
; store i64 0, i64* %var_2_90, align 1
store double %var_2_481, double* bitcast (%G_0x601290_type* @G_0x601290 to double*), align 8
; Matched:%var_2_297:  %var_2_297 = load double, double* %var_2_76, align 1
; %var_2_482 = load double, double* %var_2_79, align 1
; Matched:%var_2_298:  %var_2_298 = fmul double %var_2_296, %var_2_297
; %var_2_483 = fmul double %var_2_481, %var_2_482
; Matched:\<badref\>:  store double %var_2_298, double* %var_2_76, align 1, !tbaa !1285
; store double %var_2_483, double* %var_2_79, align 1
; Matched:%var_2_299:  %var_2_299 = add i64 %var_2_284, -112
; %var_2_484 = add i64 %var_2_469, -112
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_239, 215
; %var_2_485 = add i64 %var_2_424, 215
; Matched:\<badref\>:  store i64 %var_2_300, i64* %PC, align 8
; store i64 %var_2_485, i64* %var_2_3, align 8
; Matched:%var_2_301:  %var_2_301 = load i64, i64* %var_2_72, align 1
; %var_2_486 = load i64, i64* %var_2_71, align 1
; Matched:%var_2_302:  %var_2_302 = inttoptr i64 %var_2_299 to i64*
; %var_2_487 = inttoptr i64 %var_2_484 to i64*
; Matched:\<badref\>:  store i64 %var_2_301, i64* %var_2_302, align 8
; store i64 %var_2_486, i64* %var_2_487, align 8
%var_2_488 = load i64, i64* %var_2_3, align 8
%var_2_489 = bitcast %union.VectorReg* %var_2_74 to <2 x i32>*
%var_2_490 = load <2 x i32>, <2 x i32>* %var_2_489, align 1
%var_2_491 = bitcast i64* %var_2_81 to <2 x i32>*
%var_2_492 = load <2 x i32>, <2 x i32>* %var_2_491, align 1
%var_2_493 = extractelement <2 x i32> %var_2_490, i32 0
; Matched:\<badref\>:  store i32 %var_2_308, i32* %var_2_141, align 1, !tbaa !1288
; store i32 %var_2_493, i32* %var_2_160, align 1
%var_2_494 = extractelement <2 x i32> %var_2_490, i32 1
; Matched:\<badref\>:  store i32 %var_2_309, i32* %var_2_143, align 1, !tbaa !1288
; store i32 %var_2_494, i32* %var_2_162, align 1
%var_2_495 = extractelement <2 x i32> %var_2_492, i32 0
; Matched:\<badref\>:  store i32 %var_2_310, i32* %var_2_144, align 1, !tbaa !1288
; store i32 %var_2_495, i32* %var_2_163, align 1
%var_2_496 = extractelement <2 x i32> %var_2_492, i32 1
; Matched:\<badref\>:  store i32 %var_2_311, i32* %var_2_146, align 1, !tbaa !1288
; store i32 %var_2_496, i32* %var_2_165, align 1
; Matched:%var_2_312:  %var_2_312 = load i64, i64* %RBP, align 8
; %var_2_497 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_313:  %var_2_313 = add i64 %var_2_312, -112
; %var_2_498 = add i64 %var_2_497, -112
; Matched:%var_2_204:  %var_2_204 = add i64 %var_2_203, 8
; %var_2_499 = add i64 %var_2_488, 8
; Matched:\<badref\>:  store i64 %var_2_314, i64* %PC, align 8
; store i64 %var_2_499, i64* %var_2_3, align 8
; Matched:%var_2_315:  %var_2_315 = inttoptr i64 %var_2_313 to i64*
; %var_2_500 = inttoptr i64 %var_2_498 to i64*
; Matched:%var_2_316:  %var_2_316 = load i64, i64* %var_2_315, align 8
; %var_2_501 = load i64, i64* %var_2_500, align 8
; Matched:\<badref\>:  store i64 %var_2_316, i64* %var_2_77, align 1, !tbaa !1285
; store i64 %var_2_501, i64* %var_2_80, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_79, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_82, align 1
; Matched:%var_2_59:  %var_2_59 = add i64 %var_2_55, 13
; %var_2_502 = add i64 %var_2_488, 13
; Matched:\<badref\>:  store i64 %var_2_317, i64* %PC, align 8
; store i64 %var_2_502, i64* %var_2_3, align 8
; Matched:%var_2_318:  %var_2_318 = load i64, i64* %var_2_315, align 8
; %var_2_503 = load i64, i64* %var_2_500, align 8
; Matched:\<badref\>:  store i64 %var_2_318, i64* %var_2_82, align 1, !tbaa !1285
; store i64 %var_2_503, i64* %var_2_89, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_84, align 1, !tbaa !1285
; store double 0.000000e+00, double* %var_2_91, align 1
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1284
; store i8 3, i8* %AL.i304, align 1
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_303, -1054
; %var_2_504 = add i64 %var_2_488, -1054
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_303, 20
; %var_2_505 = add i64 %var_2_488, 20
%var_2_506 = load i64, i64* %var_2_6, align 8
%var_2_507 = add i64 %var_2_506, -8
; Matched:%var_2_323:  %var_2_323 = inttoptr i64 %var_2_322 to i64*
; %var_2_508 = inttoptr i64 %var_2_507 to i64*
; Matched:\<badref\>:  store i64 %var_2_320, i64* %var_2_323, align 8
; store i64 %var_2_505, i64* %var_2_508, align 8
; Matched:\<badref\>:  store i64 %var_2_52, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_507, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_319, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_504, i64* %var_2_3, align 8
%var_2_509 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_158)
; Matched:  %ECX = bitcast %union.anon* %var_2_4 to i32*
; %ECX.i9 = bitcast %union.anon* %var_2_231 to i32*
%var_2_510 = load i64, i64* %var_2_3, align 8
  store i64 0, i64* %RCX.i198, align 8
; Matched:%var_2_326:  %var_2_326 = load i64, i64* %RBP, align 8
; %var_2_511 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_326, -116
; %var_2_512 = add i64 %var_2_511, -116
; Matched:%var_2_328:  %var_2_328 = load i32, i32* %EAX, align 4
; %var_2_513 = load i32, i32* %EAX.i299, align 4
; Matched:%var_2_405:  %var_2_405 = add i64 %var_2_404, 5
; %var_2_514 = add i64 %var_2_510, 5
; Matched:\<badref\>:  store i64 %var_2_405, i64* %PC, align 8
; store i64 %var_2_514, i64* %var_2_3, align 8
; Matched:%var_2_330:  %var_2_330 = inttoptr i64 %var_2_327 to i32*
; %var_2_515 = inttoptr i64 %var_2_512 to i32*
; Matched:\<badref\>:  store i32 %var_2_328, i32* %var_2_330, align 4
; store i32 %var_2_513, i32* %var_2_515, align 4
; Matched:%var_2_331:  %var_2_331 = load i32, i32* %ECX, align 4
; %var_2_516 = load i32, i32* %ECX.i9, align 4
; Matched:%var_2_332:  %var_2_332 = zext i32 %var_2_331 to i64
; %var_2_517 = zext i32 %var_2_516 to i64
%var_2_518 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_332, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_517, i64* %RAX.i201, align 8
; Matched:%var_2_334:  %var_2_334 = load i64, i64* %RSP, align 8
; %var_2_519 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_335:  %var_2_335 = add i64 %var_2_334, 128
; %var_2_520 = add i64 %var_2_519, 128
; Matched:\<badref\>:  store i64 %var_2_335, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_520, i64* %var_2_6, align 8
; Matched:%var_2_336:  %var_2_336 = icmp ugt i64 %var_2_334, -129
; %var_2_521 = icmp ugt i64 %var_2_519, -129
; Matched:%var_2_337:  %var_2_337 = zext i1 %var_2_336 to i8
; %var_2_522 = zext i1 %var_2_521 to i8
; Matched:\<badref\>:  store i8 %var_2_337, i8* %var_2_20, align 1, !tbaa !1265
; store i8 %var_2_522, i8* %var_2_14, align 1
; Matched:%var_2_338:  %var_2_338 = trunc i64 %var_2_335 to i32
; %var_2_523 = trunc i64 %var_2_520 to i32
; Matched:%var_2_339:  %var_2_339 = and i32 %var_2_338, 255
; %var_2_524 = and i32 %var_2_523, 255
; Matched:%var_2_340:  %var_2_340 = tail call i32 @llvm.ctpop.i32(i32 %var_2_339) #11
; %var_2_525 = tail call i32 @llvm.ctpop.i32(i32 %var_2_524)
; Matched:%var_2_341:  %var_2_341 = trunc i32 %var_2_340 to i8
; %var_2_526 = trunc i32 %var_2_525 to i8
; Matched:%var_2_342:  %var_2_342 = and i8 %var_2_341, 1
; %var_2_527 = and i8 %var_2_526, 1
; Matched:%var_2_343:  %var_2_343 = xor i8 %var_2_342, 1
; %var_2_528 = xor i8 %var_2_527, 1
; Matched:\<badref\>:  store i8 %var_2_343, i8* %var_2_27, align 1, !tbaa !1279
; store i8 %var_2_528, i8* %var_2_21, align 1
; Matched:%var_2_344:  %var_2_344 = xor i64 %var_2_335, %var_2_334
; %var_2_529 = xor i64 %var_2_520, %var_2_519
; Matched:%var_2_345:  %var_2_345 = lshr i64 %var_2_344, 4
; %var_2_530 = lshr i64 %var_2_529, 4
; Matched:%var_2_346:  %var_2_346 = trunc i64 %var_2_345 to i8
; %var_2_531 = trunc i64 %var_2_530 to i8
; Matched:%var_2_347:  %var_2_347 = and i8 %var_2_346, 1
; %var_2_532 = and i8 %var_2_531, 1
; Matched:\<badref\>:  store i8 %var_2_347, i8* %var_2_32, align 1, !tbaa !1280
; store i8 %var_2_532, i8* %var_2_26, align 1
; Matched:%var_2_348:  %var_2_348 = icmp eq i64 %var_2_335, 0
; %var_2_533 = icmp eq i64 %var_2_520, 0
; Matched:%var_2_349:  %var_2_349 = zext i1 %var_2_348 to i8
; %var_2_534 = zext i1 %var_2_533 to i8
; Matched:\<badref\>:  store i8 %var_2_349, i8* %var_2_35, align 1, !tbaa !1281
; store i8 %var_2_534, i8* %var_2_29, align 1
; Matched:%var_2_350:  %var_2_350 = lshr i64 %var_2_335, 63
; %var_2_535 = lshr i64 %var_2_520, 63
; Matched:%var_2_351:  %var_2_351 = trunc i64 %var_2_350 to i8
; %var_2_536 = trunc i64 %var_2_535 to i8
; Matched:\<badref\>:  store i8 %var_2_351, i8* %var_2_38, align 1, !tbaa !1282
; store i8 %var_2_536, i8* %var_2_32, align 1
; Matched:%var_2_352:  %var_2_352 = lshr i64 %var_2_334, 63
; %var_2_537 = lshr i64 %var_2_519, 63
; Matched:%var_2_353:  %var_2_353 = xor i64 %var_2_350, %var_2_352
; %var_2_538 = xor i64 %var_2_535, %var_2_537
; Matched:%var_2_354:  %var_2_354 = add nuw nsw i64 %var_2_353, %var_2_350
; %var_2_539 = add nuw nsw i64 %var_2_538, %var_2_535
; Matched:%var_2_355:  %var_2_355 = icmp eq i64 %var_2_354, 2
; %var_2_540 = icmp eq i64 %var_2_539, 2
; Matched:%var_2_356:  %var_2_356 = zext i1 %var_2_355 to i8
; %var_2_541 = zext i1 %var_2_540 to i8
; Matched:\<badref\>:  store i8 %var_2_356, i8* %var_2_44, align 1, !tbaa !1283
; store i8 %var_2_541, i8* %var_2_38, align 1
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_404, 10
; %var_2_542 = add i64 %var_2_518, 10
; Matched:\<badref\>:  store i64 %var_2_409, i64* %PC, align 8
; store i64 %var_2_542, i64* %var_2_3, align 8
; Matched:%var_2_358:  %var_2_358 = add i64 %var_2_334, 136
; %var_2_543 = add i64 %var_2_519, 136
; Matched:%var_2_359:  %var_2_359 = inttoptr i64 %var_2_335 to i64*
; %var_2_544 = inttoptr i64 %var_2_520 to i64*
; Matched:%var_2_360:  %var_2_360 = load i64, i64* %var_2_359, align 8
; %var_2_545 = load i64, i64* %var_2_544, align 8
; Matched:\<badref\>:  store i64 %var_2_360, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_545, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_358, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_543, i64* %var_2_6, align 8
; Matched:%var_2_361:  %var_2_361 = add i64 %var_2_333, 11
; %var_2_546 = add i64 %var_2_518, 11
; Matched:\<badref\>:  store i64 %var_2_361, i64* %PC, align 8
; store i64 %var_2_546, i64* %var_2_3, align 8
; Matched:%var_2_362:  %var_2_362 = inttoptr i64 %var_2_358 to i64*
; %var_2_547 = inttoptr i64 %var_2_543 to i64*
; Matched:%var_2_363:  %var_2_363 = load i64, i64* %var_2_362, align 8
; %var_2_548 = load i64, i64* %var_2_547, align 8
; Matched:\<badref\>:  store i64 %var_2_363, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_548, i64* %var_2_3, align 8
; Matched:%var_2_364:  %var_2_364 = add i64 %var_2_334, 144
; %var_2_549 = add i64 %var_2_519, 144
; Matched:\<badref\>:  store i64 %var_2_364, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_549, i64* %var_2_6, align 8
ret %struct.Memory* %var_2_509
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
define %struct.Memory* @routine_movq__0x400938___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400938_type* @G__0x400938 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x400972___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400972_type* @G__0x400972 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x38f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x38f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x38f__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x38f__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x38f__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x38f__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x38f__rip__type* @G_0x38f__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x4009a2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009a2_type* @G__0x4009a2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_imulq__0x4e20__MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %13 = mul nsw i128 %12, 20000
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 224
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
define %struct.Memory* @routine_jg_.L_400724(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd_0x601058___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
  %9 = fsub double %7, %8
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
define %struct.Memory* @routine_subsd_0x601048___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
  %9 = fsub double %7, %8
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
define %struct.Memory* @routine_movq__0x4009c6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4009c6_type* @G__0x4009c6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1ef__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1ef__rip__type* @G_0x1ef__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x1ef__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1ef__rip__type* @G_0x1ef__rip_ to i64)
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
define %struct.Memory* @routine_subsd_0x601058___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*), align 8
  %9 = fsub double %7, %8
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
define %struct.Memory* @routine_subsd_0x601048___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*), align 8
  %9 = fsub double %7, %8
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
