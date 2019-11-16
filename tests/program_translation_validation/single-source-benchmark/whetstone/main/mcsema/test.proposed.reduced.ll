; ModuleID = '/tmp/tmp8mqy1s11-query.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x462__rip__type = type <{ [8 x i8] }>
%G_0x5cb__rip__type = type <{ [8 x i8] }>
%G_0x5e3__rip__type = type <{ [8 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G_0x602090_type = type <{ [4 x i8] }>
%G_0x602098_type = type <{ [16 x i8] }>
%G_0x6020a0_type = type <{ [16 x i8] }>
%G_0x6020a8_type = type <{ [4 x i8] }>
%G_0x6020ac_type = type <{ [4 x i8] }>
%G_0x6020b0_type = type <{ [16 x i8] }>
%G_0x6020c8_type = type <{ [16 x i8] }>
%G_0x6020d0_type = type <{ [16 x i8] }>
%G_0x6020d8_type = type <{ [16 x i8] }>
%G_0x6020e0_type = type <{ [16 x i8] }>
%G_0x603__rip__type = type <{ [8 x i8] }>
%G_0x6a1__rip__type = type <{ [8 x i8] }>
%G_0x7fd__rip__type = type <{ [8 x i8] }>
%G_0x8d5__rip__type = type <{ [8 x i8] }>
%G_0x90b__rip__type = type <{ [8 x i8] }>
%G_0xd78__rip__type = type <{ [8 x i8] }>
%G_0xf2d__rip__type = type <{ [8 x i8] }>
%G_0xf71__rip__type = type <{ [8 x i8] }>
%G__0x401948_type = type <{ [8 x i8] }>
%G__0x40194b_type = type <{ [8 x i8] }>
%G__0x401965_type = type <{ [8 x i8] }>
%G__0x6020c0_type = type <{ [8 x i8] }>
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
@G_0x462__rip_ = global %G_0x462__rip__type zeroinitializer
@G_0x5cb__rip_ = global %G_0x5cb__rip__type zeroinitializer
@G_0x5e3__rip_ = global %G_0x5e3__rip__type zeroinitializer
@G_0x602080 = local_unnamed_addr global %G_0x602080_type zeroinitializer
@G_0x602090 = local_unnamed_addr global %G_0x602090_type zeroinitializer
@G_0x602098 = local_unnamed_addr global %G_0x602098_type zeroinitializer
@G_0x6020a0 = local_unnamed_addr global %G_0x6020a0_type zeroinitializer
@G_0x6020a8 = local_unnamed_addr global %G_0x6020a8_type zeroinitializer
@G_0x6020ac = local_unnamed_addr global %G_0x6020ac_type zeroinitializer
@G_0x6020b0 = local_unnamed_addr global %G_0x6020b0_type zeroinitializer
@G_0x6020c8 = local_unnamed_addr global %G_0x6020c8_type zeroinitializer
@G_0x6020d0 = local_unnamed_addr global %G_0x6020d0_type zeroinitializer
@G_0x6020d8 = local_unnamed_addr global %G_0x6020d8_type zeroinitializer
@G_0x6020e0 = local_unnamed_addr global %G_0x6020e0_type zeroinitializer
@G_0x603__rip_ = global %G_0x603__rip__type zeroinitializer
@G_0x6a1__rip_ = global %G_0x6a1__rip__type zeroinitializer
@G_0x7fd__rip_ = global %G_0x7fd__rip__type zeroinitializer
@G_0x8d5__rip_ = global %G_0x8d5__rip__type zeroinitializer
@G_0x90b__rip_ = global %G_0x90b__rip__type zeroinitializer
@G_0xd78__rip_ = global %G_0xd78__rip__type zeroinitializer
@G_0xf2d__rip_ = global %G_0xf2d__rip__type zeroinitializer
@G_0xf71__rip_ = global %G_0xf71__rip__type zeroinitializer
@G__0x401948 = global %G__0x401948_type zeroinitializer
@G__0x40194b = global %G__0x40194b_type zeroinitializer
@G__0x401965 = global %G__0x401965_type zeroinitializer
@G__0x6020c0 = global %G__0x6020c0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atol(i64)

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @time(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_4015f0.POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401660.PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401790.P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401810.P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_9:  %var_2_9 = load i64, i64* %RBP, align 8
; %var_2_4 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_10:  %var_2_10 = add i64 %1, 1
; %var_2_5 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_10, i64* %PC, align 8
; store i64 %var_2_5, i64* %var_2_3, align 8
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
; Matched:%var_2_15:  %var_2_15 = add i64 %var_2_11, -328
; %var_2_11 = add i64 %var_2_7, -328
; Matched:\<badref\>:  store i64 %var_2_15, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_11, i64* %var_2_6, align 8
; Matched:%var_2_16:  %var_2_16 = icmp ult i64 %var_2_12, 320
; %var_2_12 = icmp ult i64 %var_2_8, 320
; Matched:%var_2_17:  %var_2_17 = zext i1 %var_2_16 to i8
; %var_2_13 = zext i1 %var_2_12 to i8
%var_2_14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_17, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_13, i8* %var_2_14, align 1
; Matched:%var_2_19:  %var_2_19 = trunc i64 %var_2_15 to i32
; %var_2_15 = trunc i64 %var_2_11 to i32
; Matched:%var_2_20:  %var_2_20 = and i32 %var_2_19, 255
; %var_2_16 = and i32 %var_2_15, 255
; Matched:%var_2_21:  %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20) #14
; %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; Matched:%var_2_22:  %var_2_22 = trunc i32 %var_2_21 to i8
; %var_2_18 = trunc i32 %var_2_17 to i8
; Matched:%var_2_23:  %var_2_23 = and i8 %var_2_22, 1
; %var_2_19 = and i8 %var_2_18, 1
; Matched:%var_2_24:  %var_2_24 = xor i8 %var_2_23, 1
; %var_2_20 = xor i8 %var_2_19, 1
%var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
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
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_31:  %var_2_31 = icmp eq i64 %var_2_15, 0
; %var_2_27 = icmp eq i64 %var_2_11, 0
; Matched:%var_2_32:  %var_2_32 = zext i1 %var_2_31 to i8
; %var_2_28 = zext i1 %var_2_27 to i8
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_15, 63
; %var_2_30 = lshr i64 %var_2_11, 63
; Matched:%var_2_35:  %var_2_35 = trunc i64 %var_2_34 to i8
; %var_2_31 = trunc i64 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
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
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_41, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:%var_2_43:  %var_2_43 = add i64 %var_2_11, -12
; %var_2_39 = add i64 %var_2_7, -12
; Matched:%var_2_691:  %var_2_691 = add i64 %var_2_687, 17
; %var_2_40 = add i64 %var_2_10, 17
; Matched:\<badref\>:  store i64 %var_2_691, i64* %PC, align 8
; store i64 %var_2_40, i64* %var_2_3, align 8
; Matched:%var_2_45:  %var_2_45 = inttoptr i64 %var_2_43 to i32*
; %var_2_41 = inttoptr i64 %var_2_39 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_45, align 4
; store i32 0, i32* %var_2_41, align 4
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI = bitcast %union.anon* %var_2_4 to i32*
; %EDI.i = bitcast %union.anon* %var_2_42 to i32*
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %RBP, align 8
; %var_2_43 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, -8
; %var_2_44 = add i64 %var_2_43, -8
; Matched:%var_2_48:  %var_2_48 = load i32, i32* %EDI, align 4
; %var_2_45 = load i32, i32* %EDI.i, align 4
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %PC, align 8
; %var_2_46 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, 3
; %var_2_47 = add i64 %var_2_46, 3
; Matched:\<badref\>:  store i64 %var_2_50, i64* %PC, align 8
; store i64 %var_2_47, i64* %var_2_3, align 8
; Matched:%var_2_51:  %var_2_51 = inttoptr i64 %var_2_47 to i32*
; %var_2_48 = inttoptr i64 %var_2_44 to i32*
; Matched:\<badref\>:  store i32 %var_2_48, i32* %var_2_51, align 4
; store i32 %var_2_45, i32* %var_2_48, align 4
  %RSI.i1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %RBP, align 8
; %var_2_49 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, -16
; %var_2_50 = add i64 %var_2_49, -16
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %RSI, align 8
; %var_2_51 = load i64, i64* %RSI.i1110, align 8
%var_2_52 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1281:  %var_2_1281 = add i64 %var_2_1280, 4
; %var_2_53 = add i64 %var_2_52, 4
; Matched:\<badref\>:  store i64 %var_2_1281, i64* %PC, align 8
; store i64 %var_2_53, i64* %var_2_3, align 8
; Matched:%var_2_57:  %var_2_57 = inttoptr i64 %var_2_53 to i64*
; %var_2_54 = inttoptr i64 %var_2_50 to i64*
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_57, align 8
; store i64 %var_2_51, i64* %var_2_54, align 8
%var_2_55 = load i64, i64* %RBP.i, align 8
%var_2_56 = add i64 %var_2_55, -184
%var_2_57 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, 11
; %var_2_58 = add i64 %var_2_57, 11
; Matched:\<badref\>:  store i64 %var_2_61, i64* %PC, align 8
; store i64 %var_2_58, i64* %var_2_3, align 8
%var_2_59 = inttoptr i64 %var_2_56 to i64*
store i64 100000, i64* %var_2_59, align 8
%var_2_60 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1263:  %var_2_1263 = add i64 %.pre440, -208
; %var_2_61 = add i64 %var_2_60, -208
%var_2_62 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1435:  %var_2_1435 = add i64 %var_2_1430, 10
; %var_2_63 = add i64 %var_2_62, 10
; Matched:\<badref\>:  store i64 %var_2_1435, i64* %PC, align 8
; store i64 %var_2_63, i64* %var_2_3, align 8
; Matched:%var_2_67:  %var_2_67 = inttoptr i64 %var_2_64 to i32*
; %var_2_64 = inttoptr i64 %var_2_61 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_67, align 4
; store i32 0, i32* %var_2_64, align 4
%var_2_65 = load i64, i64* %RBP.i, align 8
%var_2_66 = add i64 %var_2_65, -172
%var_2_67 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, 10
; %var_2_68 = add i64 %var_2_67, 10
; Matched:\<badref\>:  store i64 %var_2_66, i64* %PC, align 8
; store i64 %var_2_68, i64* %var_2_3, align 8
%var_2_69 = inttoptr i64 %var_2_66 to i32*
store i32 1, i32* %var_2_69, align 4
%var_2_70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%RAX.i1199 = getelementptr inbounds %union.anon, %union.anon* %var_2_70, i64 0, i32 0
%EAX.i1220 = bitcast %union.anon* %var_2_70 to i32*
  %RDX.i1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
%RDI.i1206 = getelementptr inbounds %union.anon, %union.anon* %var_2_42, i64 0, i32 0
; Matched:  %.pre = load i64, i64* %PC, align 8
; %.pre = load i64, i64* %var_2_3, align 8
  br label %block_.L_400898

block_.L_400898:                                  ; preds = %block_.L_40096d, %entry
; Matched:%var_2_1795:  %var_2_1795 = phi i64 [ %.pre, %block_400860 ], [ %var_2_209, %block_40096d ]
; %var_2_71 = phi i64 [ %.pre, %entry ], [ %var_2_297, %block_.L_40096d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.2, %block_.L_40096d ]
%var_2_72 = load i64, i64* %RBP.i, align 8
%var_2_73 = add i64 %var_2_72, -172
; Matched:%var_2_1798:  %var_2_1798 = add i64 %var_2_1795, 6
; %var_2_74 = add i64 %var_2_71, 6
; Matched:\<badref\>:  store i64 %var_2_1798, i64* %PC, align 8
; store i64 %var_2_74, i64* %var_2_3, align 8
%var_2_75 = inttoptr i64 %var_2_73 to i32*
%var_2_76 = load i32, i32* %var_2_75, align 4
; Matched:%var_2_1801:  %var_2_1801 = zext i32 %var_2_1800 to i64
; %var_2_77 = zext i32 %var_2_76 to i64
; Matched:\<badref\>:  store i64 %var_2_1801, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_77, i64* %RAX.i1199, align 8
%var_2_78 = add i64 %var_2_72, -8
; Matched:%var_2_1803:  %var_2_1803 = add i64 %var_2_1795, 9
; %var_2_79 = add i64 %var_2_71, 9
; Matched:\<badref\>:  store i64 %var_2_1803, i64* %PC, align 8
; store i64 %var_2_79, i64* %var_2_3, align 8
%var_2_80 = inttoptr i64 %var_2_78 to i32*
%var_2_81 = load i32, i32* %var_2_80, align 4
%var_2_82 = sub i32 %var_2_76, %var_2_81
; Matched:%var_2_1807:  %var_2_1807 = icmp ult i32 %var_2_1800, %var_2_1805
; %var_2_83 = icmp ult i32 %var_2_76, %var_2_81
; Matched:%var_2_1808:  %var_2_1808 = zext i1 %var_2_1807 to i8
; %var_2_84 = zext i1 %var_2_83 to i8
; Matched:\<badref\>:  store i8 %var_2_1808, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_84, i8* %var_2_14, align 1
; Matched:%var_2_1809:  %var_2_1809 = and i32 %var_2_1806, 255
; %var_2_85 = and i32 %var_2_82, 255
; Matched:%var_2_1810:  %var_2_1810 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1809) #14
; %var_2_86 = tail call i32 @llvm.ctpop.i32(i32 %var_2_85)
; Matched:%var_2_1811:  %var_2_1811 = trunc i32 %var_2_1810 to i8
; %var_2_87 = trunc i32 %var_2_86 to i8
; Matched:%var_2_1812:  %var_2_1812 = and i8 %var_2_1811, 1
; %var_2_88 = and i8 %var_2_87, 1
; Matched:%var_2_1813:  %var_2_1813 = xor i8 %var_2_1812, 1
; %var_2_89 = xor i8 %var_2_88, 1
; Matched:\<badref\>:  store i8 %var_2_1813, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_89, i8* %var_2_21, align 1
; Matched:%var_2_1814:  %var_2_1814 = xor i32 %var_2_1805, %var_2_1800
; %var_2_90 = xor i32 %var_2_81, %var_2_76
; Matched:%var_2_1815:  %var_2_1815 = xor i32 %var_2_1814, %var_2_1806
; %var_2_91 = xor i32 %var_2_90, %var_2_82
; Matched:%var_2_1816:  %var_2_1816 = lshr i32 %var_2_1815, 4
; %var_2_92 = lshr i32 %var_2_91, 4
; Matched:%var_2_1817:  %var_2_1817 = trunc i32 %var_2_1816 to i8
; %var_2_93 = trunc i32 %var_2_92 to i8
; Matched:%var_2_1818:  %var_2_1818 = and i8 %var_2_1817, 1
; %var_2_94 = and i8 %var_2_93, 1
; Matched:\<badref\>:  store i8 %var_2_1818, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_94, i8* %var_2_26, align 1
; Matched:%var_2_1819:  %var_2_1819 = icmp eq i32 %var_2_1806, 0
; %var_2_95 = icmp eq i32 %var_2_82, 0
; Matched:%var_2_1820:  %var_2_1820 = zext i1 %var_2_1819 to i8
; %var_2_96 = zext i1 %var_2_95 to i8
; Matched:\<badref\>:  store i8 %var_2_1820, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_96, i8* %var_2_29, align 1
%var_2_97 = lshr i32 %var_2_82, 31
%var_2_98 = trunc i32 %var_2_97 to i8
; Matched:\<badref\>:  store i8 %var_2_1822, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_98, i8* %var_2_32, align 1
%var_2_99 = lshr i32 %var_2_76, 31
%var_2_100 = lshr i32 %var_2_81, 31
%var_2_101 = xor i32 %var_2_100, %var_2_99
%var_2_102 = xor i32 %var_2_97, %var_2_99
%var_2_103 = add nuw nsw i32 %var_2_102, %var_2_101
%var_2_104 = icmp eq i32 %var_2_103, 2
; Matched:%var_2_1829:  %var_2_1829 = zext i1 %var_2_1828 to i8
; %var_2_105 = zext i1 %var_2_104 to i8
; Matched:\<badref\>:  store i8 %var_2_1829, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_105, i8* %var_2_38, align 1
%var_2_106 = icmp ne i8 %var_2_98, 0
%var_2_107 = xor i1 %var_2_106, %var_2_104
; Matched:  %.v = select i1 %var_2_1831, i64 15, i64 233
; %.v = select i1 %var_2_107, i64 15, i64 233
; Matched:%var_2_1832:  %var_2_1832 = add i64 %var_2_1795, %.v
; %var_2_108 = add i64 %var_2_71, %.v
; Matched:\<badref\>:  store i64 %var_2_1832, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_108, i64* %var_2_3, align 8
br i1 %var_2_107, label %block_4008a7, label %block_.L_400981

block_4008a7:                                     ; preds = %block_.L_400898
  store i64 ptrtoint (%G__0x401948_type* @G__0x401948 to i64), i64* %RSI.i1110, align 8
  store i64 2, i64* %RAX.i1199, align 8
  store i64 2, i64* %RDX.i1213, align 8
%var_2_109 = add i64 %var_2_72, -16
; Matched:%var_2_911:  %var_2_911 = add i64 %var_2_1832, 21
; %var_2_110 = add i64 %var_2_108, 21
; Matched:\<badref\>:  store i64 %var_2_911, i64* %PC, align 8
; store i64 %var_2_110, i64* %var_2_3, align 8
%var_2_111 = inttoptr i64 %var_2_109 to i64*
%var_2_112 = load i64, i64* %var_2_111, align 8
; Matched:\<badref\>:  store i64 %var_2_913, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_112, i64* %RCX.i1209, align 8
; Matched:%var_2_914:  %var_2_914 = add i64 %var_2_1832, 28
; %var_2_113 = add i64 %var_2_108, 28
; Matched:\<badref\>:  store i64 %var_2_914, i64* %PC, align 8
; store i64 %var_2_113, i64* %var_2_3, align 8
%var_2_114 = load i32, i32* %var_2_75, align 4
%var_2_115 = sext i32 %var_2_114 to i64
; Matched:\<badref\>:  store i64 %var_2_916, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_115, i64* %RDI.i1206, align 8
; Matched:%var_2_917:  %var_2_917 = shl nsw i64 %var_2_916, 3
; %var_2_116 = shl nsw i64 %var_2_115, 3
; Matched:%var_2_1666:  %var_2_1666 = add i64 %var_2_1665, %var_2_1659
; %var_2_117 = add i64 %var_2_116, %var_2_112
; Matched:%var_2_919:  %var_2_919 = add i64 %var_2_1832, 32
; %var_2_118 = add i64 %var_2_108, 32
; Matched:\<badref\>:  store i64 %var_2_919, i64* %PC, align 8
; store i64 %var_2_118, i64* %var_2_3, align 8
; Matched:%var_2_1668:  %var_2_1668 = inttoptr i64 %var_2_1666 to i64*
; %var_2_119 = inttoptr i64 %var_2_117 to i64*
; Matched:%var_2_1669:  %var_2_1669 = load i64, i64* %var_2_1668, align 8
; %var_2_120 = load i64, i64* %var_2_119, align 8
; Matched:\<badref\>:  store i64 %var_2_1669, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_120, i64* %RDI.i1206, align 8
; Matched:%var_2_922:  %var_2_922 = add i64 %var_2_1832, -487
; %var_2_121 = add i64 %var_2_108, -487
; Matched:%var_2_923:  %var_2_923 = add i64 %var_2_1832, 37
; %var_2_122 = add i64 %var_2_108, 37
%var_2_123 = load i64, i64* %var_2_6, align 8
%var_2_124 = add i64 %var_2_123, -8
; Matched:%var_2_926:  %var_2_926 = inttoptr i64 %var_2_925 to i64*
; %var_2_125 = inttoptr i64 %var_2_124 to i64*
; Matched:\<badref\>:  store i64 %var_2_923, i64* %var_2_926, align 8
; store i64 %var_2_122, i64* %var_2_125, align 8
; Matched:\<badref\>:  store i64 %var_2_1836, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_124, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_922, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_121, i64* %var_2_3, align 8
%var_2_126 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
%var_2_127 = load i32, i32* %EAX.i1220, align 4
; Matched:%var_2_929:  %var_2_929 = load i64, i64* %PC, align 8
; %var_2_128 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_930:  %var_2_930 = and i32 %var_2_928, 255
; %var_2_129 = and i32 %var_2_127, 255
; Matched:%var_2_931:  %var_2_931 = tail call i32 @llvm.ctpop.i32(i32 %var_2_930) #14
; %var_2_130 = tail call i32 @llvm.ctpop.i32(i32 %var_2_129)
; Matched:%var_2_932:  %var_2_932 = trunc i32 %var_2_931 to i8
; %var_2_131 = trunc i32 %var_2_130 to i8
; Matched:%var_2_933:  %var_2_933 = and i8 %var_2_932, 1
; %var_2_132 = and i8 %var_2_131, 1
; Matched:%var_2_934:  %var_2_934 = xor i8 %var_2_933, 1
; %var_2_133 = xor i8 %var_2_132, 1
; Matched:\<badref\>:  store i8 %var_2_934, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_133, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_134 = icmp eq i32 %var_2_127, 0
; Matched:%var_2_936:  %var_2_936 = zext i1 %var_2_935 to i8
; %var_2_135 = zext i1 %var_2_134 to i8
; Matched:\<badref\>:  store i8 %var_2_936, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_135, i8* %var_2_29, align 1
; Matched:%var_2_937:  %var_2_937 = lshr i32 %var_2_928, 31
; %var_2_136 = lshr i32 %var_2_127, 31
; Matched:%var_2_938:  %var_2_938 = trunc i32 %var_2_937 to i8
; %var_2_137 = trunc i32 %var_2_136 to i8
; Matched:\<badref\>:  store i8 %var_2_938, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_137, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:  %.v476 = select i1 %var_2_935, i64 36, i64 9
; %.v164 = select i1 %var_2_134, i64 36, i64 9
; Matched:%var_2_939:  %var_2_939 = add i64 %var_2_929, %.v476
; %var_2_138 = add i64 %var_2_128, %.v164
; Matched:\<badref\>:  store i64 %var_2_939, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_138, i64* %var_2_3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
br i1 %var_2_134, label %block_.L_4008f0, label %block_4008d5

block_4008d5:                                     ; preds = %block_4008a7
%var_2_139 = add i64 %.pre129, -16
; Matched:%var_2_1095:  %var_2_1095 = add i64 %var_2_939, 4
; %var_2_140 = add i64 %var_2_138, 4
; Matched:\<badref\>:  store i64 %var_2_1095, i64* %PC, align 8
; store i64 %var_2_140, i64* %var_2_3, align 8
%var_2_141 = inttoptr i64 %var_2_139 to i64*
%var_2_142 = load i64, i64* %var_2_141, align 8
; Matched:\<badref\>:  store i64 %var_2_1097, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_142, i64* %RAX.i1199, align 8
%var_2_143 = add i64 %.pre129, -172
; Matched:%var_2_1099:  %var_2_1099 = add i64 %var_2_939, 11
; %var_2_144 = add i64 %var_2_138, 11
; Matched:\<badref\>:  store i64 %var_2_1099, i64* %PC, align 8
; store i64 %var_2_144, i64* %var_2_3, align 8
%var_2_145 = inttoptr i64 %var_2_143 to i32*
%var_2_146 = load i32, i32* %var_2_145, align 4
%var_2_147 = sext i32 %var_2_146 to i64
; Matched:\<badref\>:  store i64 %var_2_1102, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_147, i64* %RCX.i1209, align 8
%var_2_148 = shl nsw i64 %var_2_147, 3
%var_2_149 = add i64 %var_2_148, %var_2_142
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_939, 15
; %var_2_150 = add i64 %var_2_138, 15
; Matched:\<badref\>:  store i64 %var_2_1105, i64* %PC, align 8
; store i64 %var_2_150, i64* %var_2_3, align 8
%var_2_151 = inttoptr i64 %var_2_149 to i64*
%var_2_152 = load i64, i64* %var_2_151, align 8
; Matched:\<badref\>:  store i64 %var_2_1107, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_152, i64* %RAX.i1199, align 8
; Matched:%var_2_1108:  %var_2_1108 = add i64 %var_2_939, 18
; %var_2_153 = add i64 %var_2_138, 18
; Matched:\<badref\>:  store i64 %var_2_1108, i64* %PC, align 8
; store i64 %var_2_153, i64* %var_2_3, align 8
%var_2_154 = inttoptr i64 %var_2_152 to i8*
%var_2_155 = load i8, i8* %var_2_154, align 1
; Matched:%var_2_1111:  %var_2_1111 = sext i8 %var_2_1110 to i64
; %var_2_156 = sext i8 %var_2_155 to i64
; Matched:%var_2_1112:  %var_2_1112 = and i64 %var_2_1111, 4294967295
; %var_2_157 = and i64 %var_2_156, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1112, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_157, i64* %RDX.i1213, align 8
%var_2_158 = sext i8 %var_2_155 to i32
%var_2_159 = add nsw i32 %var_2_158, -99
; Matched:%var_2_1115:  %var_2_1115 = icmp ult i8 %var_2_1110, 99
; %var_2_160 = icmp ult i8 %var_2_155, 99
; Matched:%var_2_1116:  %var_2_1116 = zext i1 %var_2_1115 to i8
; %var_2_161 = zext i1 %var_2_160 to i8
; Matched:\<badref\>:  store i8 %var_2_1116, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_161, i8* %var_2_14, align 1
; Matched:%var_2_1117:  %var_2_1117 = and i32 %var_2_1114, 255
; %var_2_162 = and i32 %var_2_159, 255
; Matched:%var_2_1118:  %var_2_1118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1117) #14
; %var_2_163 = tail call i32 @llvm.ctpop.i32(i32 %var_2_162)
; Matched:%var_2_1119:  %var_2_1119 = trunc i32 %var_2_1118 to i8
; %var_2_164 = trunc i32 %var_2_163 to i8
; Matched:%var_2_1120:  %var_2_1120 = and i8 %var_2_1119, 1
; %var_2_165 = and i8 %var_2_164, 1
; Matched:%var_2_1121:  %var_2_1121 = xor i8 %var_2_1120, 1
; %var_2_166 = xor i8 %var_2_165, 1
; Matched:\<badref\>:  store i8 %var_2_1121, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_166, i8* %var_2_21, align 1
; Matched:%var_2_1122:  %var_2_1122 = xor i32 %var_2_1114, %var_2_1113
; %var_2_167 = xor i32 %var_2_159, %var_2_158
; Matched:%var_2_1123:  %var_2_1123 = lshr i32 %var_2_1122, 4
; %var_2_168 = lshr i32 %var_2_167, 4
; Matched:%var_2_1124:  %var_2_1124 = trunc i32 %var_2_1123 to i8
; %var_2_169 = trunc i32 %var_2_168 to i8
; Matched:%var_2_1125:  %var_2_1125 = and i8 %var_2_1124, 1
; %var_2_170 = and i8 %var_2_169, 1
; Matched:\<badref\>:  store i8 %var_2_1125, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_170, i8* %var_2_26, align 1
%var_2_171 = icmp eq i32 %var_2_159, 0
; Matched:%var_2_1127:  %var_2_1127 = zext i1 %var_2_1126 to i8
; %var_2_172 = zext i1 %var_2_171 to i8
; Matched:\<badref\>:  store i8 %var_2_1127, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_172, i8* %var_2_29, align 1
; Matched:%var_2_1128:  %var_2_1128 = lshr i32 %var_2_1114, 31
; %var_2_173 = lshr i32 %var_2_159, 31
; Matched:%var_2_1129:  %var_2_1129 = trunc i32 %var_2_1128 to i8
; %var_2_174 = trunc i32 %var_2_173 to i8
; Matched:\<badref\>:  store i8 %var_2_1129, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_174, i8* %var_2_32, align 1
; Matched:%var_2_1130:  %var_2_1130 = lshr i32 %var_2_1113, 31
; %var_2_175 = lshr i32 %var_2_158, 31
; Matched:%var_2_1131:  %var_2_1131 = xor i32 %var_2_1128, %var_2_1130
; %var_2_176 = xor i32 %var_2_173, %var_2_175
; Matched:%var_2_1132:  %var_2_1132 = add nuw nsw i32 %var_2_1131, %var_2_1130
; %var_2_177 = add nuw nsw i32 %var_2_176, %var_2_175
; Matched:%var_2_1133:  %var_2_1133 = icmp eq i32 %var_2_1132, 2
; %var_2_178 = icmp eq i32 %var_2_177, 2
; Matched:%var_2_1134:  %var_2_1134 = zext i1 %var_2_1133 to i8
; %var_2_179 = zext i1 %var_2_178 to i8
; Matched:\<badref\>:  store i8 %var_2_1134, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_179, i8* %var_2_38, align 1
; Matched:  %.v477 = select i1 %var_2_1126, i64 27, i64 42
; %.v165 = select i1 %var_2_171, i64 27, i64 42
; Matched:%var_2_1135:  %var_2_1135 = add i64 %var_2_939, %.v477
; %var_2_180 = add i64 %var_2_138, %.v165
; Matched:\<badref\>:  store i64 %var_2_1135, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_180, i64* %var_2_3, align 8
br i1 %var_2_171, label %block_.L_4008f0, label %block_.L_4008ff

block_.L_4008f0:                                  ; preds = %block_4008a7, %block_4008d5
; Matched:%var_2_1262:  %var_2_1262 = phi i64 [ %var_2_1135, %block_4008d5 ], [ %var_2_939, %block_4008a7 ]
; %var_2_181 = phi i64 [ %var_2_180, %block_4008d5 ], [ %var_2_138, %block_4008a7 ]
; Matched:%var_2_64:  %var_2_64 = add i64 %var_2_63, -208
; %var_2_182 = add i64 %.pre129, -208
; Matched:%var_2_1264:  %var_2_1264 = add i64 %var_2_1262, 10
; %var_2_183 = add i64 %var_2_181, 10
; Matched:\<badref\>:  store i64 %var_2_1264, i64* %PC, align 8
; store i64 %var_2_183, i64* %var_2_3, align 8
; Matched:%var_2_1265:  %var_2_1265 = inttoptr i64 %var_2_1263 to i32*
; %var_2_184 = inttoptr i64 %var_2_182 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_1265, align 4
; store i32 1, i32* %var_2_184, align 4
%var_2_185 = load i64, i64* %var_2_3, align 8
%var_2_186 = add i64 %var_2_185, 115
  br label %block_.L_40096d

block_.L_4008ff:                                  ; preds = %block_4008d5
; Matched:%var_2_744:  %var_2_744 = add i64 %var_2_1135, 4
; %var_2_187 = add i64 %var_2_180, 4
; Matched:\<badref\>:  store i64 %var_2_744, i64* %PC, align 8
; store i64 %var_2_187, i64* %var_2_3, align 8
%var_2_188 = load i64, i64* %var_2_141, align 8
; Matched:\<badref\>:  store i64 %var_2_745, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_188, i64* %RAX.i1199, align 8
; Matched:%var_2_746:  %var_2_746 = add i64 %var_2_1135, 11
; %var_2_189 = add i64 %var_2_180, 11
; Matched:\<badref\>:  store i64 %var_2_746, i64* %PC, align 8
; store i64 %var_2_189, i64* %var_2_3, align 8
%var_2_190 = load i32, i32* %var_2_145, align 4
%var_2_191 = sext i32 %var_2_190 to i64
; Matched:\<badref\>:  store i64 %var_2_1664, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_191, i64* %RCX.i1209, align 8
; Matched:%var_2_1665:  %var_2_1665 = shl nsw i64 %var_2_1664, 3
; %var_2_192 = shl nsw i64 %var_2_191, 3
; Matched:%var_2_750:  %var_2_750 = add i64 %var_2_749, %var_2_745
; %var_2_193 = add i64 %var_2_192, %var_2_188
; Matched:%var_2_751:  %var_2_751 = add i64 %var_2_1135, 15
; %var_2_194 = add i64 %var_2_180, 15
; Matched:\<badref\>:  store i64 %var_2_751, i64* %PC, align 8
; store i64 %var_2_194, i64* %var_2_3, align 8
; Matched:%var_2_920:  %var_2_920 = inttoptr i64 %var_2_918 to i64*
; %var_2_195 = inttoptr i64 %var_2_193 to i64*
; Matched:%var_2_921:  %var_2_921 = load i64, i64* %var_2_920, align 8
; %var_2_196 = load i64, i64* %var_2_195, align 8
; Matched:\<badref\>:  store i64 %var_2_921, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_196, i64* %RDI.i1206, align 8
; Matched:%var_2_754:  %var_2_754 = add i64 %var_2_1135, -447
; %var_2_197 = add i64 %var_2_180, -447
; Matched:%var_2_755:  %var_2_755 = add i64 %var_2_1135, 20
; %var_2_198 = add i64 %var_2_180, 20
%var_2_199 = load i64, i64* %var_2_6, align 8
%var_2_200 = add i64 %var_2_199, -8
; Matched:%var_2_758:  %var_2_758 = inttoptr i64 %var_2_757 to i64*
; %var_2_201 = inttoptr i64 %var_2_200 to i64*
; Matched:\<badref\>:  store i64 %var_2_755, i64* %var_2_758, align 8
; store i64 %var_2_198, i64* %var_2_201, align 8
; Matched:\<badref\>:  store i64 %var_2_1148, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_200, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_754, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_197, i64* %var_2_3, align 8
%var_2_202 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %var_2_126)
%var_2_203 = load i64, i64* %RAX.i1199, align 8
; Matched:%var_2_761:  %var_2_761 = load i64, i64* %PC, align 8
; %var_2_204 = load i64, i64* %var_2_3, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_762:  %var_2_762 = trunc i64 %var_2_760 to i32
; %var_2_205 = trunc i64 %var_2_203 to i32
; Matched:%var_2_763:  %var_2_763 = and i32 %var_2_762, 255
; %var_2_206 = and i32 %var_2_205, 255
; Matched:%var_2_764:  %var_2_764 = tail call i32 @llvm.ctpop.i32(i32 %var_2_763) #14
; %var_2_207 = tail call i32 @llvm.ctpop.i32(i32 %var_2_206)
; Matched:%var_2_765:  %var_2_765 = trunc i32 %var_2_764 to i8
; %var_2_208 = trunc i32 %var_2_207 to i8
; Matched:%var_2_766:  %var_2_766 = and i8 %var_2_765, 1
; %var_2_209 = and i8 %var_2_208, 1
; Matched:%var_2_767:  %var_2_767 = xor i8 %var_2_766, 1
; %var_2_210 = xor i8 %var_2_209, 1
; Matched:\<badref\>:  store i8 %var_2_767, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_210, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_211 = icmp eq i64 %var_2_203, 0
; Matched:%var_2_769:  %var_2_769 = zext i1 %var_2_768 to i8
; %var_2_212 = zext i1 %var_2_211 to i8
; Matched:\<badref\>:  store i8 %var_2_769, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_212, i8* %var_2_29, align 1
%var_2_213 = lshr i64 %var_2_203, 63
%var_2_214 = trunc i64 %var_2_213 to i8
; Matched:\<badref\>:  store i8 %var_2_771, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_214, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%var_2_215 = icmp ne i8 %var_2_214, 0
%var_2_216 = or i1 %var_2_211, %var_2_215
; Matched:  %.v478 = select i1 %var_2_773, i64 42, i64 10
; %.v166 = select i1 %var_2_216, i64 42, i64 10
; Matched:%var_2_774:  %var_2_774 = add i64 %var_2_761, %.v478
; %var_2_217 = add i64 %var_2_204, %.v166
; Matched:\<badref\>:  store i64 %var_2_774, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_217, i64* %var_2_3, align 8
br i1 %var_2_216, label %block_.L_40093d, label %block_40091d

block_40091d:                                     ; preds = %block_.L_4008ff
%var_2_218 = load i64, i64* %RBP.i, align 8
%var_2_219 = add i64 %var_2_218, -16
; Matched:%var_2_1657:  %var_2_1657 = add i64 %var_2_774, 4
; %var_2_220 = add i64 %var_2_217, 4
; Matched:\<badref\>:  store i64 %var_2_1657, i64* %PC, align 8
; store i64 %var_2_220, i64* %var_2_3, align 8
%var_2_221 = inttoptr i64 %var_2_219 to i64*
%var_2_222 = load i64, i64* %var_2_221, align 8
; Matched:\<badref\>:  store i64 %var_2_1659, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_222, i64* %RAX.i1199, align 8
%var_2_223 = add i64 %var_2_218, -172
; Matched:%var_2_1661:  %var_2_1661 = add i64 %var_2_774, 11
; %var_2_224 = add i64 %var_2_217, 11
; Matched:\<badref\>:  store i64 %var_2_1661, i64* %PC, align 8
; store i64 %var_2_224, i64* %var_2_3, align 8
%var_2_225 = inttoptr i64 %var_2_223 to i32*
%var_2_226 = load i32, i32* %var_2_225, align 4
%var_2_227 = sext i32 %var_2_226 to i64
; Matched:\<badref\>:  store i64 %var_2_748, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_227, i64* %RCX.i1209, align 8
; Matched:%var_2_749:  %var_2_749 = shl nsw i64 %var_2_748, 3
; %var_2_228 = shl nsw i64 %var_2_227, 3
; Matched:%var_2_918:  %var_2_918 = add i64 %var_2_917, %var_2_913
; %var_2_229 = add i64 %var_2_228, %var_2_222
; Matched:%var_2_1667:  %var_2_1667 = add i64 %var_2_774, 15
; %var_2_230 = add i64 %var_2_217, 15
; Matched:\<badref\>:  store i64 %var_2_1667, i64* %PC, align 8
; store i64 %var_2_230, i64* %var_2_3, align 8
; Matched:%var_2_752:  %var_2_752 = inttoptr i64 %var_2_750 to i64*
; %var_2_231 = inttoptr i64 %var_2_229 to i64*
; Matched:%var_2_753:  %var_2_753 = load i64, i64* %var_2_752, align 8
; %var_2_232 = load i64, i64* %var_2_231, align 8
; Matched:\<badref\>:  store i64 %var_2_753, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_232, i64* %RDI.i1206, align 8
; Matched:%var_2_1670:  %var_2_1670 = add i64 %var_2_774, -477
; %var_2_233 = add i64 %var_2_217, -477
; Matched:%var_2_1671:  %var_2_1671 = add i64 %var_2_774, 20
; %var_2_234 = add i64 %var_2_217, 20
%var_2_235 = load i64, i64* %var_2_6, align 8
%var_2_236 = add i64 %var_2_235, -8
; Matched:%var_2_1674:  %var_2_1674 = inttoptr i64 %var_2_1673 to i64*
; %var_2_237 = inttoptr i64 %var_2_236 to i64*
; Matched:\<badref\>:  store i64 %var_2_1671, i64* %var_2_1674, align 8
; store i64 %var_2_234, i64* %var_2_237, align 8
; Matched:\<badref\>:  store i64 %var_2_925, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_236, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1670, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_233, i64* %var_2_3, align 8
%var_2_238 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %var_2_202)
; Matched:%var_2_1676:  %var_2_1676 = load i64, i64* %RBP, align 8
; %var_2_239 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1677:  %var_2_1677 = add i64 %var_2_1676, -184
; %var_2_240 = add i64 %var_2_239, -184
; Matched:%var_2_1678:  %var_2_1678 = load i64, i64* %RAX, align 8
; %var_2_241 = load i64, i64* %RAX.i1199, align 8
%var_2_242 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2058:  %var_2_2058 = add i64 %var_2_2057, 7
; %var_2_243 = add i64 %var_2_242, 7
; Matched:\<badref\>:  store i64 %var_2_2058, i64* %PC, align 8
; store i64 %var_2_243, i64* %var_2_3, align 8
; Matched:%var_2_1681:  %var_2_1681 = inttoptr i64 %var_2_1677 to i64*
; %var_2_244 = inttoptr i64 %var_2_240 to i64*
; Matched:\<badref\>:  store i64 %var_2_1678, i64* %var_2_1681, align 8
; store i64 %var_2_241, i64* %var_2_244, align 8
%var_2_245 = load i64, i64* %var_2_3, align 8
%var_2_246 = add i64 %var_2_245, 53
; Matched:\<badref\>:  store i64 %var_2_1489, i64* %PC, align 8
; store i64 %var_2_246, i64* %var_2_3, align 8
  br label %block_.L_40096d

block_.L_40093d:                                  ; preds = %block_.L_4008ff
  store i64 ptrtoint (%G__0x40194b_type* @G__0x40194b to i64), i64* %RSI.i1110, align 8
%var_2_247 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
store i64 %var_2_247, i64* %RDI.i1206, align 8
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i1140 = bitcast %union.anon* %var_2_70 to i8*
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1291
; store i8 0, i8* %AL.i1140, align 1
; Matched:%var_2_1037:  %var_2_1037 = add i64 %var_2_774, -541
; %var_2_248 = add i64 %var_2_217, -541
; Matched:%var_2_1038:  %var_2_1038 = add i64 %var_2_774, 25
; %var_2_249 = add i64 %var_2_217, 25
%var_2_250 = load i64, i64* %var_2_6, align 8
%var_2_251 = add i64 %var_2_250, -8
; Matched:%var_2_1041:  %var_2_1041 = inttoptr i64 %var_2_1040 to i64*
; %var_2_252 = inttoptr i64 %var_2_251 to i64*
; Matched:\<badref\>:  store i64 %var_2_1038, i64* %var_2_1041, align 8
; store i64 %var_2_249, i64* %var_2_252, align 8
; Matched:\<badref\>:  store i64 %var_2_2473, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_251, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1037, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_248, i64* %var_2_3, align 8
%var_2_253 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %var_2_202)
; Matched:%var_2_1043:  %var_2_1043 = load i64, i64* %RBP, align 8
; %var_2_254 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1044:  %var_2_1044 = add i64 %var_2_1043, -4
; %var_2_255 = add i64 %var_2_254, -4
%var_2_256 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_703:  %var_2_703 = add i64 %var_2_702, 7
; %var_2_257 = add i64 %var_2_256, 7
; Matched:\<badref\>:  store i64 %var_2_703, i64* %PC, align 8
; store i64 %var_2_257, i64* %var_2_3, align 8
; Matched:%var_2_2361:  %var_2_2361 = inttoptr i64 %var_2_2359 to i32*
; %var_2_258 = inttoptr i64 %var_2_255 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_2361, align 4
; store i32 1, i32* %var_2_258, align 4
; Matched:%var_2_1048:  %var_2_1048 = load i64, i64* %RBP, align 8
; %var_2_259 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1049:  %var_2_1049 = add i64 %var_2_1048, -212
; %var_2_260 = add i64 %var_2_259, -212
; Matched:%var_2_1050:  %var_2_1050 = load i32, i32* %EAX, align 4
; %var_2_261 = load i32, i32* %EAX.i1220, align 4
; Matched:%var_2_1051:  %var_2_1051 = load i64, i64* %PC, align 8
; %var_2_262 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2782:  %var_2_2782 = add i64 %var_2_2781, 6
; %var_2_263 = add i64 %var_2_262, 6
; Matched:\<badref\>:  store i64 %var_2_1052, i64* %PC, align 8
; store i64 %var_2_263, i64* %var_2_3, align 8
; Matched:%var_2_1053:  %var_2_1053 = inttoptr i64 %var_2_1049 to i32*
; %var_2_264 = inttoptr i64 %var_2_260 to i32*
; Matched:\<badref\>:  store i32 %var_2_1050, i32* %var_2_1053, align 4
; store i32 %var_2_261, i32* %var_2_264, align 4
; Matched:%var_2_1054:  %var_2_1054 = load i64, i64* %PC, align 8
; %var_2_265 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1055:  %var_2_1055 = add i64 %var_2_1054, 3197
; %var_2_266 = add i64 %var_2_265, 3197
; Matched:\<badref\>:  store i64 %var_2_1055, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_266, i64* %var_2_3, align 8
  br label %block_.L_4015e0

block_.L_40096d:                                  ; preds = %block_40091d, %block_.L_4008f0
%storemerge = phi i64 [ %var_2_186, %block_.L_4008f0 ], [ %var_2_246, %block_40091d ]
%MEMORY.2 = phi %struct.Memory* [ %var_2_126, %block_.L_4008f0 ], [ %var_2_238, %block_40091d ]
; Matched:%var_2_179:  %var_2_179 = load i64, i64* %RBP, align 8
; %var_2_267 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_179, -172
; %var_2_268 = add i64 %var_2_267, -172
%var_2_269 = add i64 %storemerge, 6
store i64 %var_2_269, i64* %var_2_3, align 8
; Matched:%var_2_182:  %var_2_182 = inttoptr i64 %var_2_180 to i32*
; %var_2_270 = inttoptr i64 %var_2_268 to i32*
; Matched:%var_2_183:  %var_2_183 = load i32, i32* %var_2_182, align 4
; %var_2_271 = load i32, i32* %var_2_270, align 4
; Matched:%var_2_184:  %var_2_184 = add i32 %var_2_183, 1
; %var_2_272 = add i32 %var_2_271, 1
; Matched:%var_2_185:  %var_2_185 = zext i32 %var_2_184 to i64
; %var_2_273 = zext i32 %var_2_272 to i64
; Matched:\<badref\>:  store i64 %var_2_185, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_273, i64* %RAX.i1199, align 8
; Matched:%var_2_186:  %var_2_186 = icmp eq i32 %var_2_183, -1
; %var_2_274 = icmp eq i32 %var_2_271, -1
; Matched:%var_2_187:  %var_2_187 = icmp eq i32 %var_2_184, 0
; %var_2_275 = icmp eq i32 %var_2_272, 0
; Matched:%var_2_188:  %var_2_188 = or i1 %var_2_186, %var_2_187
; %var_2_276 = or i1 %var_2_274, %var_2_275
; Matched:%var_2_189:  %var_2_189 = zext i1 %var_2_188 to i8
; %var_2_277 = zext i1 %var_2_276 to i8
; Matched:\<badref\>:  store i8 %var_2_189, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_277, i8* %var_2_14, align 1
; Matched:%var_2_190:  %var_2_190 = and i32 %var_2_184, 255
; %var_2_278 = and i32 %var_2_272, 255
; Matched:%var_2_191:  %var_2_191 = tail call i32 @llvm.ctpop.i32(i32 %var_2_190) #14
; %var_2_279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_278)
; Matched:%var_2_192:  %var_2_192 = trunc i32 %var_2_191 to i8
; %var_2_280 = trunc i32 %var_2_279 to i8
; Matched:%var_2_193:  %var_2_193 = and i8 %var_2_192, 1
; %var_2_281 = and i8 %var_2_280, 1
; Matched:%var_2_194:  %var_2_194 = xor i8 %var_2_193, 1
; %var_2_282 = xor i8 %var_2_281, 1
; Matched:\<badref\>:  store i8 %var_2_194, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_282, i8* %var_2_21, align 1
; Matched:%var_2_195:  %var_2_195 = xor i32 %var_2_184, %var_2_183
; %var_2_283 = xor i32 %var_2_272, %var_2_271
; Matched:%var_2_196:  %var_2_196 = lshr i32 %var_2_195, 4
; %var_2_284 = lshr i32 %var_2_283, 4
; Matched:%var_2_197:  %var_2_197 = trunc i32 %var_2_196 to i8
; %var_2_285 = trunc i32 %var_2_284 to i8
; Matched:%var_2_198:  %var_2_198 = and i8 %var_2_197, 1
; %var_2_286 = and i8 %var_2_285, 1
; Matched:\<badref\>:  store i8 %var_2_198, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_286, i8* %var_2_26, align 1
; Matched:%var_2_199:  %var_2_199 = zext i1 %var_2_187 to i8
; %var_2_287 = zext i1 %var_2_275 to i8
; Matched:\<badref\>:  store i8 %var_2_199, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_287, i8* %var_2_29, align 1
; Matched:%var_2_200:  %var_2_200 = lshr i32 %var_2_184, 31
; %var_2_288 = lshr i32 %var_2_272, 31
; Matched:%var_2_201:  %var_2_201 = trunc i32 %var_2_200 to i8
; %var_2_289 = trunc i32 %var_2_288 to i8
; Matched:\<badref\>:  store i8 %var_2_201, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_289, i8* %var_2_32, align 1
; Matched:%var_2_202:  %var_2_202 = lshr i32 %var_2_183, 31
; %var_2_290 = lshr i32 %var_2_271, 31
; Matched:%var_2_203:  %var_2_203 = xor i32 %var_2_200, %var_2_202
; %var_2_291 = xor i32 %var_2_288, %var_2_290
; Matched:%var_2_204:  %var_2_204 = add nuw nsw i32 %var_2_203, %var_2_200
; %var_2_292 = add nuw nsw i32 %var_2_291, %var_2_288
; Matched:%var_2_205:  %var_2_205 = icmp eq i32 %var_2_204, 2
; %var_2_293 = icmp eq i32 %var_2_292, 2
; Matched:%var_2_206:  %var_2_206 = zext i1 %var_2_205 to i8
; %var_2_294 = zext i1 %var_2_293 to i8
; Matched:\<badref\>:  store i8 %var_2_206, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_294, i8* %var_2_38, align 1
%var_2_295 = add i64 %storemerge, 15
store i64 %var_2_295, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_184, i32* %var_2_182, align 4
; store i32 %var_2_272, i32* %var_2_270, align 4
; Matched:%var_2_208:  %var_2_208 = load i64, i64* %PC, align 8
; %var_2_296 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_209:  %var_2_209 = add i64 %var_2_208, -228
; %var_2_297 = add i64 %var_2_296, -228
; Matched:\<badref\>:  store i64 %var_2_209, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_297, i64* %var_2_3, align 8
  br label %block_.L_400898

block_.L_400981:                                  ; preds = %block_.L_400898
; Matched:%var_2_2692:  %var_2_2692 = add i64 %var_2_1832, 5
; %var_2_298 = add i64 %var_2_108, 5
%var_2_299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_300 = bitcast [32 x %union.VectorReg]* %var_2_299 to i8*
%var_2_301 = bitcast [32 x %union.VectorReg]* %var_2_299 to double*
%var_2_302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_299, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_304 = bitcast i64* %var_2_303 to double*
%var_2_305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_306 = bitcast %union.VectorReg* %var_2_305 to double*
%var_2_307 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_305, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_2700:  %var_2_2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_2701:  %var_2_2701 = bitcast i64* %var_2_2700 to double*
; %var_2_309 = bitcast i64* %var_2_308 to double*
%var_2_310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_311 = bitcast %union.VectorReg* %var_2_310 to double*
%var_2_312 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_310, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_2704:  %var_2_2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_2705:  %var_2_2705 = bitcast i64* %var_2_2704 to double*
; %var_2_314 = bitcast i64* %var_2_313 to double*
  %RCX.i651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%var_2_315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
%var_2_316 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_315, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_2707:  %var_2_2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_2708:  %var_2_2708 = bitcast i64* %var_2_2707 to double*
; %var_2_318 = bitcast i64* %var_2_317 to double*
%var_2_319 = bitcast %union.VectorReg* %var_2_315 to <2 x i32>*
%var_2_320 = bitcast i64* %var_2_317 to <2 x i32>*
%var_2_321 = bitcast [32 x %union.VectorReg]* %var_2_299 to i32*
%var_2_322 = getelementptr inbounds i8, i8* %var_2_300, i64 4
%var_2_323 = bitcast i8* %var_2_322 to i32*
%var_2_324 = bitcast i64* %var_2_303 to i32*
%var_2_325 = getelementptr inbounds i8, i8* %var_2_300, i64 12
%var_2_326 = bitcast i8* %var_2_325 to i32*
%var_2_327 = bitcast %union.VectorReg* %var_2_305 to <2 x i32>*
%var_2_328 = bitcast i64* %var_2_308 to <2 x i32>*
%var_2_329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
; Matched:  %AL = bitcast %union.anon* %var_2_3 to i8*
; %AL.i = bitcast %union.anon* %var_2_70 to i8*
  br label %block_.L_400986

block_.L_400986:                                  ; preds = %block_4015d4, %block_.L_400981
; Matched:%var_2_2305:  %var_2_2305 = phi i32 [ %var_2_1800, %block_400981 ], [ %var_2_725, %block_4015a0.block_400986_crit_edge ]
; %var_2_330 = phi i32 [ %var_2_76, %block_.L_400981 ], [ %var_2_2761, %block_4015d4 ]
; Matched:%var_2_2306:  %var_2_2306 = phi i64 [ %var_2_1801, %block_400981 ], [ %.pre406, %block_4015a0.block_400986_crit_edge ]
; %var_2_331 = phi i64 [ %var_2_77, %block_.L_400981 ], [ %.pre95, %block_4015d4 ]
; Matched:  %.sink = phi i64 [ %var_2_2692, %block_400981 ], [ %var_2_724, %block_4015a0.block_400986_crit_edge ]
; %storemerge29 = phi i64 [ %var_2_298, %block_.L_400981 ], [ %var_2_2759, %block_4015d4 ]
%MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400981 ], [ %var_2_2735, %block_4015d4 ]
; Matched:%var_2_2307:  %var_2_2307 = zext i32 %var_2_2305 to i64
; %var_2_332 = zext i32 %var_2_330 to i64
; Matched:%var_2_2308:  %var_2_2308 = xor i64 %var_2_2307, %var_2_2306
; %var_2_333 = xor i64 %var_2_332, %var_2_331
; Matched:%var_2_2309:  %var_2_2309 = trunc i64 %var_2_2308 to i32
; %var_2_334 = trunc i64 %var_2_333 to i32
; Matched:%var_2_2310:  %var_2_2310 = and i64 %var_2_2308, 4294967295
; %var_2_335 = and i64 %var_2_333, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2310, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_335, i64* %RAX.i1199, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_2311:  %var_2_2311 = and i32 %var_2_2309, 255
; %var_2_336 = and i32 %var_2_334, 255
; Matched:%var_2_2312:  %var_2_2312 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2311) #14
; %var_2_337 = tail call i32 @llvm.ctpop.i32(i32 %var_2_336)
; Matched:%var_2_2313:  %var_2_2313 = trunc i32 %var_2_2312 to i8
; %var_2_338 = trunc i32 %var_2_337 to i8
; Matched:%var_2_2314:  %var_2_2314 = and i8 %var_2_2313, 1
; %var_2_339 = and i8 %var_2_338, 1
; Matched:%var_2_2315:  %var_2_2315 = xor i8 %var_2_2314, 1
; %var_2_340 = xor i8 %var_2_339, 1
; Matched:\<badref\>:  store i8 %var_2_2315, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_340, i8* %var_2_21, align 1
; Matched:%var_2_2316:  %var_2_2316 = icmp eq i32 %var_2_2309, 0
; %var_2_341 = icmp eq i32 %var_2_334, 0
; Matched:%var_2_2317:  %var_2_2317 = zext i1 %var_2_2316 to i8
; %var_2_342 = zext i1 %var_2_341 to i8
; Matched:\<badref\>:  store i8 %var_2_2317, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_342, i8* %var_2_29, align 1
; Matched:%var_2_2318:  %var_2_2318 = lshr i32 %var_2_2309, 31
; %var_2_343 = lshr i32 %var_2_334, 31
; Matched:%var_2_2319:  %var_2_2319 = trunc i32 %var_2_2318 to i8
; %var_2_344 = trunc i32 %var_2_343 to i8
; Matched:\<badref\>:  store i8 %var_2_2319, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_344, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_2320:  %var_2_2320 = and i64 %var_2_2308, 4294967295
; %var_2_345 = and i64 %var_2_333, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2320, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_345, i64* %RDI.i1206, align 8
; Matched:%var_2_2321:  %var_2_2321 = add i64 %.sink, -598
; %var_2_346 = add i64 %storemerge29, -598
; Matched:%var_2_2322:  %var_2_2322 = add i64 %.sink, 9
; %var_2_347 = add i64 %storemerge29, 9
%var_2_348 = load i64, i64* %var_2_6, align 8
%var_2_349 = add i64 %var_2_348, -8
; Matched:%var_2_2325:  %var_2_2325 = inttoptr i64 %var_2_2324 to i64*
; %var_2_350 = inttoptr i64 %var_2_349 to i64*
; Matched:\<badref\>:  store i64 %var_2_2322, i64* %var_2_2325, align 8
; store i64 %var_2_347, i64* %var_2_350, align 8
; Matched:\<badref\>:  store i64 %var_2_1196, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_349, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2321, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_346, i64* %var_2_3, align 8
%var_2_351 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.3)
%var_2_352 = load i64, i64* %var_2_3, align 8
%var_2_353 = add i64 %var_2_352, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
%var_2_354 = add i64 %var_2_352, 8
store i64 %var_2_354, i64* %var_2_3, align 8
%var_2_355 = inttoptr i64 %var_2_353 to i64*
%var_2_356 = load i64, i64* %var_2_355, align 8
store i64 %var_2_356, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_357 = add i64 %var_2_352, add (i64 ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64), i64 8)
%var_2_358 = add i64 %var_2_352, 16
store i64 %var_2_358, i64* %var_2_3, align 8
%var_2_359 = inttoptr i64 %var_2_357 to i64*
%var_2_360 = load i64, i64* %var_2_359, align 8
store i64 %var_2_360, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_361 = add i64 %var_2_352, add (i64 ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64), i64 16)
%var_2_362 = add i64 %var_2_352, 24
store i64 %var_2_362, i64* %var_2_3, align 8
%var_2_363 = inttoptr i64 %var_2_361 to i64*
%var_2_364 = load i64, i64* %var_2_363, align 8
store i64 %var_2_364, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
; Matched:%var_2_2331:  %var_2_2331 = load i64, i64* %RBP, align 8
; %var_2_365 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2332:  %var_2_2332 = add i64 %var_2_2331, -192
; %var_2_366 = add i64 %var_2_365, -192
; Matched:%var_2_2333:  %var_2_2333 = load i64, i64* %RAX, align 8
; %var_2_367 = load i64, i64* %RAX.i1199, align 8
; Matched:%var_2_2334:  %var_2_2334 = add i64 %var_2_2327, 31
; %var_2_368 = add i64 %var_2_352, 31
; Matched:\<badref\>:  store i64 %var_2_2334, i64* %PC, align 8
; store i64 %var_2_368, i64* %var_2_3, align 8
; Matched:%var_2_2335:  %var_2_2335 = inttoptr i64 %var_2_2332 to i64*
; %var_2_369 = inttoptr i64 %var_2_366 to i64*
; Matched:\<badref\>:  store i64 %var_2_2333, i64* %var_2_2335, align 8
; store i64 %var_2_367, i64* %var_2_369, align 8
; Matched:%var_2_2511:  %var_2_2511 = load i64, i64* %PC, align 8
; %var_2_370 = load i64, i64* %var_2_3, align 8
%var_2_371 = load i64, i64* %var_2_312, align 1
store i64 %var_2_371, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
%var_2_372 = load i64, i64* %var_2_307, align 1
store i64 %var_2_372, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
%var_2_373 = load i64, i64* %var_2_302, align 1
store i64 %var_2_373, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
; Matched:%var_2_2340:  %var_2_2340 = load i64, i64* %RBP, align 8
; %var_2_374 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2341:  %var_2_2341 = add i64 %var_2_2340, -184
; %var_2_375 = add i64 %var_2_374, -184
; Matched:%var_2_2342:  %var_2_2342 = add i64 %var_2_2336, 34
; %var_2_376 = add i64 %var_2_370, 34
; Matched:\<badref\>:  store i64 %var_2_2342, i64* %PC, align 8
; store i64 %var_2_376, i64* %var_2_3, align 8
; Matched:%var_2_2343:  %var_2_2343 = inttoptr i64 %var_2_2341 to i64*
; %var_2_377 = inttoptr i64 %var_2_375 to i64*
; Matched:%var_2_2344:  %var_2_2344 = load i64, i64* %var_2_2343, align 8
; %var_2_378 = load i64, i64* %var_2_377, align 8
; Matched:\<badref\>:  store i64 %var_2_2344, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_378, i64* %RAX.i1199, align 8
; Matched:%var_2_2345:  %var_2_2345 = add i64 %var_2_2340, -168
; %var_2_379 = add i64 %var_2_374, -168
; Matched:%var_2_2346:  %var_2_2346 = add i64 %var_2_2336, 41
; %var_2_380 = add i64 %var_2_370, 41
; Matched:\<badref\>:  store i64 %var_2_2346, i64* %PC, align 8
; store i64 %var_2_380, i64* %var_2_3, align 8
; Matched:%var_2_2347:  %var_2_2347 = inttoptr i64 %var_2_2345 to i64*
; %var_2_381 = inttoptr i64 %var_2_379 to i64*
; Matched:\<badref\>:  store i64 %var_2_2344, i64* %var_2_2347, align 8
; store i64 %var_2_378, i64* %var_2_381, align 8
%var_2_382 = load i64, i64* %RBP.i, align 8
%var_2_383 = add i64 %var_2_382, -172
%var_2_384 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2356:  %var_2_2356 = add i64 %var_2_2355, 10
; %var_2_385 = add i64 %var_2_384, 10
; Matched:\<badref\>:  store i64 %var_2_2356, i64* %PC, align 8
; store i64 %var_2_385, i64* %var_2_3, align 8
%var_2_386 = inttoptr i64 %var_2_383 to i32*
store i32 1, i32* %var_2_386, align 4
; Matched:%var_2_2353:  %var_2_2353 = load i64, i64* %RBP, align 8
; %var_2_387 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2354:  %var_2_2354 = add i64 %var_2_2353, -176
; %var_2_388 = add i64 %var_2_387, -176
%var_2_389 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1409:  %var_2_1409 = add i64 %var_2_1404, 10
; %var_2_390 = add i64 %var_2_389, 10
; Matched:\<badref\>:  store i64 %var_2_1409, i64* %PC, align 8
; store i64 %var_2_390, i64* %var_2_3, align 8
; Matched:%var_2_2357:  %var_2_2357 = inttoptr i64 %var_2_2354 to i32*
; %var_2_391 = inttoptr i64 %var_2_388 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_2357, align 4
; store i32 1, i32* %var_2_391, align 4
%.pre96 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2779:  %var_2_2779 = load i64, i64* %RBP, align 8
; %.pre97 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009eb

block_.L_4009eb:                                  ; preds = %block_40159b, %block_.L_400986
; Matched:%var_2_1944:  %var_2_1944 = phi i64 [ %.pre408, %block_400986 ], [ %var_2_2779, %block_40159b ]
; %var_2_392 = phi i64 [ %.pre97, %block_.L_400986 ], [ %var_2_2683, %block_40159b ]
%var_2_393 = phi i64 [ %.pre96, %block_.L_400986 ], [ %var_2_2716, %block_40159b ]
%MEMORY.4 = phi %struct.Memory* [ %var_2_351, %block_.L_400986 ], [ %MEMORY.27, %block_40159b ]
%var_2_394 = add i64 %var_2_393, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
%var_2_395 = add i64 %var_2_393, 8
store i64 %var_2_395, i64* %var_2_3, align 8
%var_2_396 = inttoptr i64 %var_2_394 to i64*
%var_2_397 = load i64, i64* %var_2_396, align 8
store i64 %var_2_397, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_398 = add i64 %var_2_393, add (i64 ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64), i64 8)
%var_2_399 = add i64 %var_2_393, 16
store i64 %var_2_399, i64* %var_2_3, align 8
%var_2_400 = inttoptr i64 %var_2_398 to i64*
%var_2_401 = load i64, i64* %var_2_400, align 8
store i64 %var_2_401, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_1948:  %var_2_1948 = add i64 %var_2_1944, -32
; %var_2_402 = add i64 %var_2_392, -32
; Matched:%var_2_1949:  %var_2_1949 = add i64 %var_2_1945, 24
; %var_2_403 = add i64 %var_2_393, 24
; Matched:\<badref\>:  store i64 %var_2_1949, i64* %PC, align 8
; store i64 %var_2_403, i64* %var_2_3, align 8
; Matched:%var_2_1950:  %var_2_1950 = inttoptr i64 %var_2_1948 to i64*
; %var_2_404 = inttoptr i64 %var_2_402 to i64*
; Matched:\<badref\>:  store i64 0, i64* %var_2_1950, align 8
; store i64 0, i64* %var_2_404, align 8
; Matched:%var_2_1951:  %var_2_1951 = load i64, i64* %RBP, align 8
; %var_2_405 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1952:  %var_2_1952 = add i64 %var_2_1951, -168
; %var_2_406 = add i64 %var_2_405, -168
%var_2_407 = load i64, i64* %var_2_3, align 8
%var_2_408 = add i64 %var_2_407, 8
store i64 %var_2_408, i64* %var_2_3, align 8
; Matched:%var_2_1955:  %var_2_1955 = inttoptr i64 %var_2_1952 to i64*
; %var_2_409 = inttoptr i64 %var_2_406 to i64*
; Matched:%var_2_1956:  %var_2_1956 = load i64, i64* %var_2_1955, align 8
; %var_2_410 = load i64, i64* %var_2_409, align 8
; Matched:%var_2_1957:  %var_2_1957 = sext i64 %var_2_1956 to i128
; %var_2_411 = sext i64 %var_2_410 to i128
; Matched:%var_2_1958:  %var_2_1958 = and i128 %var_2_1957, -18446744073709551616
; %var_2_412 = and i128 %var_2_411, -18446744073709551616
; Matched:%var_2_1959:  %var_2_1959 = zext i64 %var_2_1956 to i128
; %var_2_413 = zext i64 %var_2_410 to i128
; Matched:%var_2_1960:  %var_2_1960 = or i128 %var_2_1958, %var_2_1959
; %var_2_414 = or i128 %var_2_412, %var_2_413
; Matched:%var_2_1961:  %var_2_1961 = mul nsw i128 %var_2_1960, 12
; %var_2_415 = mul nsw i128 %var_2_414, 12
; Matched:%var_2_1962:  %var_2_1962 = trunc i128 %var_2_1961 to i64
; %var_2_416 = trunc i128 %var_2_415 to i64
; Matched:\<badref\>:  store i64 %var_2_1962, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_416, i64* %RAX.i1199, align 8
; Matched:%var_2_1963:  %var_2_1963 = sext i64 %var_2_1962 to i128
; %var_2_417 = sext i64 %var_2_416 to i128
; Matched:%var_2_1964:  %var_2_1964 = icmp ne i128 %var_2_1963, %var_2_1961
; %var_2_418 = icmp ne i128 %var_2_417, %var_2_415
; Matched:%var_2_1965:  %var_2_1965 = zext i1 %var_2_1964 to i8
; %var_2_419 = zext i1 %var_2_418 to i8
; Matched:\<badref\>:  store i8 %var_2_1965, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_419, i8* %var_2_14, align 1
; Matched:%var_2_1966:  %var_2_1966 = trunc i128 %var_2_1961 to i32
; %var_2_420 = trunc i128 %var_2_415 to i32
; Matched:%var_2_1967:  %var_2_1967 = and i32 %var_2_1966, 252
; %var_2_421 = and i32 %var_2_420, 252
; Matched:%var_2_1968:  %var_2_1968 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1967) #14
; %var_2_422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_421)
; Matched:%var_2_1969:  %var_2_1969 = trunc i32 %var_2_1968 to i8
; %var_2_423 = trunc i32 %var_2_422 to i8
; Matched:%var_2_1970:  %var_2_1970 = and i8 %var_2_1969, 1
; %var_2_424 = and i8 %var_2_423, 1
; Matched:%var_2_1971:  %var_2_1971 = xor i8 %var_2_1970, 1
; %var_2_425 = xor i8 %var_2_424, 1
; Matched:\<badref\>:  store i8 %var_2_1971, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_425, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1972:  %var_2_1972 = lshr i64 %var_2_1962, 63
; %var_2_426 = lshr i64 %var_2_416, 63
; Matched:%var_2_1973:  %var_2_1973 = trunc i64 %var_2_1972 to i8
; %var_2_427 = trunc i64 %var_2_426 to i8
; Matched:\<badref\>:  store i8 %var_2_1973, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_427, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_1965, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_419, i8* %var_2_38, align 1
; Matched:%var_2_1974:  %var_2_1974 = add i64 %var_2_1951, -40
; %var_2_428 = add i64 %var_2_405, -40
; Matched:%var_2_2160:  %var_2_2160 = add i64 %var_2_2138, 12
; %var_2_429 = add i64 %var_2_407, 12
; Matched:\<badref\>:  store i64 %var_2_1868, i64* %PC, align 8
; store i64 %var_2_429, i64* %var_2_3, align 8
; Matched:%var_2_1976:  %var_2_1976 = inttoptr i64 %var_2_1974 to i64*
; %var_2_430 = inttoptr i64 %var_2_428 to i64*
; Matched:\<badref\>:  store i64 %var_2_1962, i64* %var_2_1976, align 8
; store i64 %var_2_416, i64* %var_2_430, align 8
; Matched:%var_2_1977:  %var_2_1977 = load i64, i64* %RBP, align 8
; %var_2_431 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1978:  %var_2_1978 = add i64 %var_2_1977, -168
; %var_2_432 = add i64 %var_2_431, -168
%var_2_433 = load i64, i64* %var_2_3, align 8
%var_2_434 = add i64 %var_2_433, 8
store i64 %var_2_434, i64* %var_2_3, align 8
; Matched:%var_2_1981:  %var_2_1981 = inttoptr i64 %var_2_1978 to i64*
; %var_2_435 = inttoptr i64 %var_2_432 to i64*
; Matched:%var_2_1982:  %var_2_1982 = load i64, i64* %var_2_1981, align 8
; %var_2_436 = load i64, i64* %var_2_435, align 8
; Matched:%var_2_1983:  %var_2_1983 = sext i64 %var_2_1982 to i128
; %var_2_437 = sext i64 %var_2_436 to i128
; Matched:%var_2_1984:  %var_2_1984 = and i128 %var_2_1983, -18446744073709551616
; %var_2_438 = and i128 %var_2_437, -18446744073709551616
; Matched:%var_2_1985:  %var_2_1985 = zext i64 %var_2_1982 to i128
; %var_2_439 = zext i64 %var_2_436 to i128
; Matched:%var_2_1986:  %var_2_1986 = or i128 %var_2_1984, %var_2_1985
; %var_2_440 = or i128 %var_2_438, %var_2_439
; Matched:%var_2_1987:  %var_2_1987 = mul nsw i128 %var_2_1986, 14
; %var_2_441 = mul nsw i128 %var_2_440, 14
; Matched:%var_2_1988:  %var_2_1988 = trunc i128 %var_2_1987 to i64
; %var_2_442 = trunc i128 %var_2_441 to i64
; Matched:\<badref\>:  store i64 %var_2_1988, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_442, i64* %RAX.i1199, align 8
; Matched:%var_2_1989:  %var_2_1989 = sext i64 %var_2_1988 to i128
; %var_2_443 = sext i64 %var_2_442 to i128
; Matched:%var_2_1990:  %var_2_1990 = icmp ne i128 %var_2_1989, %var_2_1987
; %var_2_444 = icmp ne i128 %var_2_443, %var_2_441
; Matched:%var_2_1991:  %var_2_1991 = zext i1 %var_2_1990 to i8
; %var_2_445 = zext i1 %var_2_444 to i8
; Matched:\<badref\>:  store i8 %var_2_1991, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_445, i8* %var_2_14, align 1
; Matched:%var_2_1992:  %var_2_1992 = trunc i128 %var_2_1987 to i32
; %var_2_446 = trunc i128 %var_2_441 to i32
; Matched:%var_2_1993:  %var_2_1993 = and i32 %var_2_1992, 254
; %var_2_447 = and i32 %var_2_446, 254
; Matched:%var_2_1994:  %var_2_1994 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1993) #14
; %var_2_448 = tail call i32 @llvm.ctpop.i32(i32 %var_2_447)
; Matched:%var_2_1995:  %var_2_1995 = trunc i32 %var_2_1994 to i8
; %var_2_449 = trunc i32 %var_2_448 to i8
; Matched:%var_2_1996:  %var_2_1996 = and i8 %var_2_1995, 1
; %var_2_450 = and i8 %var_2_449, 1
; Matched:%var_2_1997:  %var_2_1997 = xor i8 %var_2_1996, 1
; %var_2_451 = xor i8 %var_2_450, 1
; Matched:\<badref\>:  store i8 %var_2_1997, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_451, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1998:  %var_2_1998 = lshr i64 %var_2_1988, 63
; %var_2_452 = lshr i64 %var_2_442, 63
; Matched:%var_2_1999:  %var_2_1999 = trunc i64 %var_2_1998 to i8
; %var_2_453 = trunc i64 %var_2_452 to i8
; Matched:\<badref\>:  store i8 %var_2_1999, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_453, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_1991, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_445, i8* %var_2_38, align 1
; Matched:%var_2_2000:  %var_2_2000 = add i64 %var_2_1977, -48
; %var_2_454 = add i64 %var_2_431, -48
; Matched:%var_2_1180:  %var_2_1180 = add i64 %var_2_1153, 12
; %var_2_455 = add i64 %var_2_433, 12
; Matched:\<badref\>:  store i64 %var_2_2001, i64* %PC, align 8
; store i64 %var_2_455, i64* %var_2_3, align 8
; Matched:%var_2_2002:  %var_2_2002 = inttoptr i64 %var_2_2000 to i64*
; %var_2_456 = inttoptr i64 %var_2_454 to i64*
; Matched:\<badref\>:  store i64 %var_2_1988, i64* %var_2_2002, align 8
; store i64 %var_2_442, i64* %var_2_456, align 8
; Matched:%var_2_2003:  %var_2_2003 = load i64, i64* %RBP, align 8
; %var_2_457 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2004:  %var_2_2004 = add i64 %var_2_2003, -168
; %var_2_458 = add i64 %var_2_457, -168
%var_2_459 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2531:  %var_2_2531 = add i64 %var_2_2522, 11
; %var_2_460 = add i64 %var_2_459, 11
; Matched:\<badref\>:  store i64 %var_2_2531, i64* %PC, align 8
; store i64 %var_2_460, i64* %var_2_3, align 8
; Matched:%var_2_2007:  %var_2_2007 = inttoptr i64 %var_2_2004 to i64*
; %var_2_461 = inttoptr i64 %var_2_458 to i64*
; Matched:%var_2_2008:  %var_2_2008 = load i64, i64* %var_2_2007, align 8
; %var_2_462 = load i64, i64* %var_2_461, align 8
; Matched:%var_2_2009:  %var_2_2009 = sext i64 %var_2_2008 to i128
; %var_2_463 = sext i64 %var_2_462 to i128
; Matched:%var_2_2010:  %var_2_2010 = and i128 %var_2_2009, -18446744073709551616
; %var_2_464 = and i128 %var_2_463, -18446744073709551616
; Matched:%var_2_2011:  %var_2_2011 = zext i64 %var_2_2008 to i128
; %var_2_465 = zext i64 %var_2_462 to i128
; Matched:%var_2_2012:  %var_2_2012 = or i128 %var_2_2010, %var_2_2011
; %var_2_466 = or i128 %var_2_464, %var_2_465
; Matched:%var_2_2013:  %var_2_2013 = mul nsw i128 %var_2_2012, 345
; %var_2_467 = mul nsw i128 %var_2_466, 345
; Matched:%var_2_2014:  %var_2_2014 = trunc i128 %var_2_2013 to i64
; %var_2_468 = trunc i128 %var_2_467 to i64
; Matched:\<badref\>:  store i64 %var_2_2014, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_468, i64* %RAX.i1199, align 8
; Matched:%var_2_2015:  %var_2_2015 = sext i64 %var_2_2014 to i128
; %var_2_469 = sext i64 %var_2_468 to i128
; Matched:%var_2_2016:  %var_2_2016 = icmp ne i128 %var_2_2015, %var_2_2013
; %var_2_470 = icmp ne i128 %var_2_469, %var_2_467
; Matched:%var_2_2017:  %var_2_2017 = zext i1 %var_2_2016 to i8
; %var_2_471 = zext i1 %var_2_470 to i8
; Matched:\<badref\>:  store i8 %var_2_2017, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_471, i8* %var_2_14, align 1
; Matched:%var_2_2018:  %var_2_2018 = trunc i128 %var_2_2013 to i32
; %var_2_472 = trunc i128 %var_2_467 to i32
; Matched:%var_2_2019:  %var_2_2019 = and i32 %var_2_2018, 255
; %var_2_473 = and i32 %var_2_472, 255
; Matched:%var_2_2020:  %var_2_2020 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2019) #14
; %var_2_474 = tail call i32 @llvm.ctpop.i32(i32 %var_2_473)
; Matched:%var_2_2021:  %var_2_2021 = trunc i32 %var_2_2020 to i8
; %var_2_475 = trunc i32 %var_2_474 to i8
; Matched:%var_2_2022:  %var_2_2022 = and i8 %var_2_2021, 1
; %var_2_476 = and i8 %var_2_475, 1
; Matched:%var_2_2023:  %var_2_2023 = xor i8 %var_2_2022, 1
; %var_2_477 = xor i8 %var_2_476, 1
; Matched:\<badref\>:  store i8 %var_2_2023, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_477, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2024:  %var_2_2024 = lshr i64 %var_2_2014, 63
; %var_2_478 = lshr i64 %var_2_468, 63
; Matched:%var_2_2025:  %var_2_2025 = trunc i64 %var_2_2024 to i8
; %var_2_479 = trunc i64 %var_2_478 to i8
; Matched:\<badref\>:  store i8 %var_2_2025, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_479, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2017, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_471, i8* %var_2_38, align 1
; Matched:%var_2_2026:  %var_2_2026 = add i64 %var_2_2003, -56
; %var_2_480 = add i64 %var_2_457, -56
; Matched:%var_2_1441:  %var_2_1441 = add i64 %var_2_1430, 15
; %var_2_481 = add i64 %var_2_459, 15
; Matched:\<badref\>:  store i64 %var_2_2077, i64* %PC, align 8
; store i64 %var_2_481, i64* %var_2_3, align 8
; Matched:%var_2_2028:  %var_2_2028 = inttoptr i64 %var_2_2026 to i64*
; %var_2_482 = inttoptr i64 %var_2_480 to i64*
; Matched:\<badref\>:  store i64 %var_2_2014, i64* %var_2_2028, align 8
; store i64 %var_2_468, i64* %var_2_482, align 8
; Matched:%var_2_2029:  %var_2_2029 = load i64, i64* %RBP, align 8
; %var_2_483 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2030:  %var_2_2030 = add i64 %var_2_2029, -168
; %var_2_484 = add i64 %var_2_483, -168
%var_2_485 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2082:  %var_2_2082 = add i64 %var_2_2081, 11
; %var_2_486 = add i64 %var_2_485, 11
; Matched:\<badref\>:  store i64 %var_2_2082, i64* %PC, align 8
; store i64 %var_2_486, i64* %var_2_3, align 8
; Matched:%var_2_2033:  %var_2_2033 = inttoptr i64 %var_2_2030 to i64*
; %var_2_487 = inttoptr i64 %var_2_484 to i64*
; Matched:%var_2_2034:  %var_2_2034 = load i64, i64* %var_2_2033, align 8
; %var_2_488 = load i64, i64* %var_2_487, align 8
; Matched:%var_2_2035:  %var_2_2035 = sext i64 %var_2_2034 to i128
; %var_2_489 = sext i64 %var_2_488 to i128
; Matched:%var_2_2036:  %var_2_2036 = and i128 %var_2_2035, -18446744073709551616
; %var_2_490 = and i128 %var_2_489, -18446744073709551616
; Matched:%var_2_2037:  %var_2_2037 = zext i64 %var_2_2034 to i128
; %var_2_491 = zext i64 %var_2_488 to i128
; Matched:%var_2_2038:  %var_2_2038 = or i128 %var_2_2036, %var_2_2037
; %var_2_492 = or i128 %var_2_490, %var_2_491
; Matched:%var_2_2039:  %var_2_2039 = mul nsw i128 %var_2_2038, 210
; %var_2_493 = mul nsw i128 %var_2_492, 210
; Matched:%var_2_2040:  %var_2_2040 = trunc i128 %var_2_2039 to i64
; %var_2_494 = trunc i128 %var_2_493 to i64
; Matched:\<badref\>:  store i64 %var_2_2040, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_494, i64* %RAX.i1199, align 8
; Matched:%var_2_2041:  %var_2_2041 = sext i64 %var_2_2040 to i128
; %var_2_495 = sext i64 %var_2_494 to i128
; Matched:%var_2_2042:  %var_2_2042 = icmp ne i128 %var_2_2041, %var_2_2039
; %var_2_496 = icmp ne i128 %var_2_495, %var_2_493
; Matched:%var_2_2043:  %var_2_2043 = zext i1 %var_2_2042 to i8
; %var_2_497 = zext i1 %var_2_496 to i8
; Matched:\<badref\>:  store i8 %var_2_2043, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_497, i8* %var_2_14, align 1
; Matched:%var_2_2044:  %var_2_2044 = trunc i128 %var_2_2039 to i32
; %var_2_498 = trunc i128 %var_2_493 to i32
; Matched:%var_2_2045:  %var_2_2045 = and i32 %var_2_2044, 254
; %var_2_499 = and i32 %var_2_498, 254
; Matched:%var_2_2046:  %var_2_2046 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2045) #14
; %var_2_500 = tail call i32 @llvm.ctpop.i32(i32 %var_2_499)
; Matched:%var_2_2047:  %var_2_2047 = trunc i32 %var_2_2046 to i8
; %var_2_501 = trunc i32 %var_2_500 to i8
; Matched:%var_2_2048:  %var_2_2048 = and i8 %var_2_2047, 1
; %var_2_502 = and i8 %var_2_501, 1
; Matched:%var_2_2049:  %var_2_2049 = xor i8 %var_2_2048, 1
; %var_2_503 = xor i8 %var_2_502, 1
; Matched:\<badref\>:  store i8 %var_2_2049, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_503, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2050:  %var_2_2050 = lshr i64 %var_2_2040, 63
; %var_2_504 = lshr i64 %var_2_494, 63
; Matched:%var_2_2051:  %var_2_2051 = trunc i64 %var_2_2050 to i8
; %var_2_505 = trunc i64 %var_2_504 to i8
; Matched:\<badref\>:  store i8 %var_2_2051, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_505, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2043, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_497, i8* %var_2_38, align 1
; Matched:%var_2_2052:  %var_2_2052 = add i64 %var_2_2029, -64
; %var_2_506 = add i64 %var_2_483, -64
; Matched:%var_2_2103:  %var_2_2103 = add i64 %var_2_2081, 15
; %var_2_507 = add i64 %var_2_485, 15
; Matched:\<badref\>:  store i64 %var_2_1441, i64* %PC, align 8
; store i64 %var_2_507, i64* %var_2_3, align 8
; Matched:%var_2_2054:  %var_2_2054 = inttoptr i64 %var_2_2052 to i64*
; %var_2_508 = inttoptr i64 %var_2_506 to i64*
; Matched:\<badref\>:  store i64 %var_2_2040, i64* %var_2_2054, align 8
; store i64 %var_2_494, i64* %var_2_508, align 8
; Matched:%var_2_2055:  %var_2_2055 = load i64, i64* %RBP, align 8
; %var_2_509 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2056:  %var_2_2056 = add i64 %var_2_2055, -168
; %var_2_510 = add i64 %var_2_509, -168
%var_2_511 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1680:  %var_2_1680 = add i64 %var_2_1679, 7
; %var_2_512 = add i64 %var_2_511, 7
; Matched:\<badref\>:  store i64 %var_2_1680, i64* %PC, align 8
; store i64 %var_2_512, i64* %var_2_3, align 8
; Matched:%var_2_2059:  %var_2_2059 = inttoptr i64 %var_2_2056 to i64*
; %var_2_513 = inttoptr i64 %var_2_510 to i64*
; Matched:%var_2_2060:  %var_2_2060 = load i64, i64* %var_2_2059, align 8
; %var_2_514 = load i64, i64* %var_2_513, align 8
; Matched:%var_2_2061:  %var_2_2061 = shl i64 %var_2_2060, 5
; %var_2_515 = shl i64 %var_2_514, 5
; Matched:\<badref\>:  store i64 %var_2_2061, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_515, i64* %RAX.i1199, align 8
; Matched:%var_2_2062:  %var_2_2062 = lshr i64 %var_2_2060, 59
; %var_2_516 = lshr i64 %var_2_514, 59
; Matched:%var_2_2063:  %var_2_2063 = trunc i64 %var_2_2062 to i8
; %var_2_517 = trunc i64 %var_2_516 to i8
; Matched:%var_2_2064:  %var_2_2064 = and i8 %var_2_2063, 1
; %var_2_518 = and i8 %var_2_517, 1
; Matched:\<badref\>:  store i8 %var_2_2064, i8* %var_2_18, align 1, !tbaa !1291
; store i8 %var_2_518, i8* %var_2_14, align 1
; Matched:%var_2_2065:  %var_2_2065 = trunc i64 %var_2_2061 to i32
; %var_2_519 = trunc i64 %var_2_515 to i32
; Matched:%var_2_2066:  %var_2_2066 = and i32 %var_2_2065, 224
; %var_2_520 = and i32 %var_2_519, 224
; Matched:%var_2_2067:  %var_2_2067 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2066) #14
; %var_2_521 = tail call i32 @llvm.ctpop.i32(i32 %var_2_520)
; Matched:%var_2_2068:  %var_2_2068 = trunc i32 %var_2_2067 to i8
; %var_2_522 = trunc i32 %var_2_521 to i8
; Matched:%var_2_2069:  %var_2_2069 = and i8 %var_2_2068, 1
; %var_2_523 = and i8 %var_2_522, 1
; Matched:%var_2_2070:  %var_2_2070 = xor i8 %var_2_2069, 1
; %var_2_524 = xor i8 %var_2_523, 1
; Matched:\<badref\>:  store i8 %var_2_2070, i8* %var_2_25, align 1, !tbaa !1291
; store i8 %var_2_524, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_2071:  %var_2_2071 = icmp eq i64 %var_2_2061, 0
; %var_2_525 = icmp eq i64 %var_2_515, 0
; Matched:%var_2_2072:  %var_2_2072 = zext i1 %var_2_2071 to i8
; %var_2_526 = zext i1 %var_2_525 to i8
; Matched:\<badref\>:  store i8 %var_2_2072, i8* %var_2_33, align 1, !tbaa !1291
; store i8 %var_2_526, i8* %var_2_29, align 1
; Matched:%var_2_2073:  %var_2_2073 = lshr i64 %var_2_2060, 58
; %var_2_527 = lshr i64 %var_2_514, 58
; Matched:%var_2_2074:  %var_2_2074 = trunc i64 %var_2_2073 to i8
; %var_2_528 = trunc i64 %var_2_527 to i8
; Matched:%var_2_2075:  %var_2_2075 = and i8 %var_2_2074, 1
; %var_2_529 = and i8 %var_2_528, 1
; Matched:\<badref\>:  store i8 %var_2_2075, i8* %var_2_36, align 1, !tbaa !1291
; store i8 %var_2_529, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_2076:  %var_2_2076 = add i64 %var_2_2055, -72
; %var_2_530 = add i64 %var_2_509, -72
; Matched:%var_2_2027:  %var_2_2027 = add i64 %var_2_2005, 15
; %var_2_531 = add i64 %var_2_511, 15
; Matched:\<badref\>:  store i64 %var_2_2103, i64* %PC, align 8
; store i64 %var_2_531, i64* %var_2_3, align 8
; Matched:%var_2_2078:  %var_2_2078 = inttoptr i64 %var_2_2076 to i64*
; %var_2_532 = inttoptr i64 %var_2_530 to i64*
; Matched:\<badref\>:  store i64 %var_2_2061, i64* %var_2_2078, align 8
; store i64 %var_2_515, i64* %var_2_532, align 8
; Matched:%var_2_2079:  %var_2_2079 = load i64, i64* %RBP, align 8
; %var_2_533 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2080:  %var_2_2080 = add i64 %var_2_2079, -168
; %var_2_534 = add i64 %var_2_533, -168
%var_2_535 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2108:  %var_2_2108 = add i64 %var_2_2107, 11
; %var_2_536 = add i64 %var_2_535, 11
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %PC, align 8
; store i64 %var_2_536, i64* %var_2_3, align 8
; Matched:%var_2_2083:  %var_2_2083 = inttoptr i64 %var_2_2080 to i64*
; %var_2_537 = inttoptr i64 %var_2_534 to i64*
; Matched:%var_2_2084:  %var_2_2084 = load i64, i64* %var_2_2083, align 8
; %var_2_538 = load i64, i64* %var_2_537, align 8
; Matched:%var_2_2085:  %var_2_2085 = sext i64 %var_2_2084 to i128
; %var_2_539 = sext i64 %var_2_538 to i128
; Matched:%var_2_2086:  %var_2_2086 = and i128 %var_2_2085, -18446744073709551616
; %var_2_540 = and i128 %var_2_539, -18446744073709551616
; Matched:%var_2_2087:  %var_2_2087 = zext i64 %var_2_2084 to i128
; %var_2_541 = zext i64 %var_2_538 to i128
; Matched:%var_2_2088:  %var_2_2088 = or i128 %var_2_2086, %var_2_2087
; %var_2_542 = or i128 %var_2_540, %var_2_541
; Matched:%var_2_2089:  %var_2_2089 = mul nsw i128 %var_2_2088, 899
; %var_2_543 = mul nsw i128 %var_2_542, 899
; Matched:%var_2_2090:  %var_2_2090 = trunc i128 %var_2_2089 to i64
; %var_2_544 = trunc i128 %var_2_543 to i64
; Matched:\<badref\>:  store i64 %var_2_2090, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_544, i64* %RAX.i1199, align 8
; Matched:%var_2_2091:  %var_2_2091 = sext i64 %var_2_2090 to i128
; %var_2_545 = sext i64 %var_2_544 to i128
; Matched:%var_2_2092:  %var_2_2092 = icmp ne i128 %var_2_2091, %var_2_2089
; %var_2_546 = icmp ne i128 %var_2_545, %var_2_543
; Matched:%var_2_2093:  %var_2_2093 = zext i1 %var_2_2092 to i8
; %var_2_547 = zext i1 %var_2_546 to i8
; Matched:\<badref\>:  store i8 %var_2_2093, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_547, i8* %var_2_14, align 1
; Matched:%var_2_2094:  %var_2_2094 = trunc i128 %var_2_2089 to i32
; %var_2_548 = trunc i128 %var_2_543 to i32
; Matched:%var_2_2095:  %var_2_2095 = and i32 %var_2_2094, 255
; %var_2_549 = and i32 %var_2_548, 255
; Matched:%var_2_2096:  %var_2_2096 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2095) #14
; %var_2_550 = tail call i32 @llvm.ctpop.i32(i32 %var_2_549)
; Matched:%var_2_2097:  %var_2_2097 = trunc i32 %var_2_2096 to i8
; %var_2_551 = trunc i32 %var_2_550 to i8
; Matched:%var_2_2098:  %var_2_2098 = and i8 %var_2_2097, 1
; %var_2_552 = and i8 %var_2_551, 1
; Matched:%var_2_2099:  %var_2_2099 = xor i8 %var_2_2098, 1
; %var_2_553 = xor i8 %var_2_552, 1
; Matched:\<badref\>:  store i8 %var_2_2099, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_553, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2100:  %var_2_2100 = lshr i64 %var_2_2090, 63
; %var_2_554 = lshr i64 %var_2_544, 63
; Matched:%var_2_2101:  %var_2_2101 = trunc i64 %var_2_2100 to i8
; %var_2_555 = trunc i64 %var_2_554 to i8
; Matched:\<badref\>:  store i8 %var_2_2101, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_555, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2093, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_547, i8* %var_2_38, align 1
; Matched:%var_2_2102:  %var_2_2102 = add i64 %var_2_2079, -80
; %var_2_556 = add i64 %var_2_533, -80
; Matched:%var_2_2129:  %var_2_2129 = add i64 %var_2_2107, 15
; %var_2_557 = add i64 %var_2_535, 15
; Matched:\<badref\>:  store i64 %var_2_2129, i64* %PC, align 8
; store i64 %var_2_557, i64* %var_2_3, align 8
; Matched:%var_2_2104:  %var_2_2104 = inttoptr i64 %var_2_2102 to i64*
; %var_2_558 = inttoptr i64 %var_2_556 to i64*
; Matched:\<badref\>:  store i64 %var_2_2090, i64* %var_2_2104, align 8
; store i64 %var_2_544, i64* %var_2_558, align 8
; Matched:%var_2_2105:  %var_2_2105 = load i64, i64* %RBP, align 8
; %var_2_559 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2106:  %var_2_2106 = add i64 %var_2_2105, -168
; %var_2_560 = add i64 %var_2_559, -168
%var_2_561 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2381:  %var_2_2381 = add i64 %var_2_2372, 11
; %var_2_562 = add i64 %var_2_561, 11
; Matched:\<badref\>:  store i64 %var_2_2381, i64* %PC, align 8
; store i64 %var_2_562, i64* %var_2_3, align 8
; Matched:%var_2_2109:  %var_2_2109 = inttoptr i64 %var_2_2106 to i64*
; %var_2_563 = inttoptr i64 %var_2_560 to i64*
; Matched:%var_2_2110:  %var_2_2110 = load i64, i64* %var_2_2109, align 8
; %var_2_564 = load i64, i64* %var_2_563, align 8
; Matched:%var_2_2111:  %var_2_2111 = sext i64 %var_2_2110 to i128
; %var_2_565 = sext i64 %var_2_564 to i128
; Matched:%var_2_2112:  %var_2_2112 = and i128 %var_2_2111, -18446744073709551616
; %var_2_566 = and i128 %var_2_565, -18446744073709551616
; Matched:%var_2_2113:  %var_2_2113 = zext i64 %var_2_2110 to i128
; %var_2_567 = zext i64 %var_2_564 to i128
; Matched:%var_2_2114:  %var_2_2114 = or i128 %var_2_2112, %var_2_2113
; %var_2_568 = or i128 %var_2_566, %var_2_567
; Matched:%var_2_2115:  %var_2_2115 = mul nsw i128 %var_2_2114, 616
; %var_2_569 = mul nsw i128 %var_2_568, 616
; Matched:%var_2_2116:  %var_2_2116 = trunc i128 %var_2_2115 to i64
; %var_2_570 = trunc i128 %var_2_569 to i64
; Matched:\<badref\>:  store i64 %var_2_2116, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_570, i64* %RAX.i1199, align 8
; Matched:%var_2_2117:  %var_2_2117 = sext i64 %var_2_2116 to i128
; %var_2_571 = sext i64 %var_2_570 to i128
; Matched:%var_2_2118:  %var_2_2118 = icmp ne i128 %var_2_2117, %var_2_2115
; %var_2_572 = icmp ne i128 %var_2_571, %var_2_569
; Matched:%var_2_2119:  %var_2_2119 = zext i1 %var_2_2118 to i8
; %var_2_573 = zext i1 %var_2_572 to i8
; Matched:\<badref\>:  store i8 %var_2_2119, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_573, i8* %var_2_14, align 1
; Matched:%var_2_2120:  %var_2_2120 = trunc i128 %var_2_2115 to i32
; %var_2_574 = trunc i128 %var_2_569 to i32
; Matched:%var_2_2121:  %var_2_2121 = and i32 %var_2_2120, 248
; %var_2_575 = and i32 %var_2_574, 248
; Matched:%var_2_2122:  %var_2_2122 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2121) #14
; %var_2_576 = tail call i32 @llvm.ctpop.i32(i32 %var_2_575)
; Matched:%var_2_2123:  %var_2_2123 = trunc i32 %var_2_2122 to i8
; %var_2_577 = trunc i32 %var_2_576 to i8
; Matched:%var_2_2124:  %var_2_2124 = and i8 %var_2_2123, 1
; %var_2_578 = and i8 %var_2_577, 1
; Matched:%var_2_2125:  %var_2_2125 = xor i8 %var_2_2124, 1
; %var_2_579 = xor i8 %var_2_578, 1
; Matched:\<badref\>:  store i8 %var_2_2125, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_579, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2126:  %var_2_2126 = lshr i64 %var_2_2116, 63
; %var_2_580 = lshr i64 %var_2_570, 63
; Matched:%var_2_2127:  %var_2_2127 = trunc i64 %var_2_2126 to i8
; %var_2_581 = trunc i64 %var_2_580 to i8
; Matched:\<badref\>:  store i8 %var_2_2127, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_581, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2119, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_573, i8* %var_2_38, align 1
; Matched:%var_2_2128:  %var_2_2128 = add i64 %var_2_2105, -88
; %var_2_582 = add i64 %var_2_559, -88
; Matched:%var_2_1415:  %var_2_1415 = add i64 %var_2_1404, 15
; %var_2_583 = add i64 %var_2_561, 15
; Matched:\<badref\>:  store i64 %var_2_2027, i64* %PC, align 8
; store i64 %var_2_583, i64* %var_2_3, align 8
; Matched:%var_2_2130:  %var_2_2130 = inttoptr i64 %var_2_2128 to i64*
; %var_2_584 = inttoptr i64 %var_2_582 to i64*
; Matched:\<badref\>:  store i64 %var_2_2116, i64* %var_2_2130, align 8
; store i64 %var_2_570, i64* %var_2_584, align 8
; Matched:%var_2_2131:  %var_2_2131 = load i64, i64* %RBP, align 8
; %var_2_585 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2132:  %var_2_2132 = add i64 %var_2_2131, -96
; %var_2_586 = add i64 %var_2_585, -96
%var_2_587 = load i64, i64* %var_2_3, align 8
%var_2_588 = add i64 %var_2_587, 8
store i64 %var_2_588, i64* %var_2_3, align 8
; Matched:%var_2_2135:  %var_2_2135 = inttoptr i64 %var_2_2132 to i64*
; %var_2_589 = inttoptr i64 %var_2_586 to i64*
; Matched:\<badref\>:  store i64 0, i64* %var_2_2135, align 8
; store i64 0, i64* %var_2_589, align 8
; Matched:%var_2_2136:  %var_2_2136 = load i64, i64* %RBP, align 8
; %var_2_590 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2137:  %var_2_2137 = add i64 %var_2_2136, -168
; %var_2_591 = add i64 %var_2_590, -168
%var_2_592 = load i64, i64* %var_2_3, align 8
%var_2_593 = add i64 %var_2_592, 8
store i64 %var_2_593, i64* %var_2_3, align 8
; Matched:%var_2_2140:  %var_2_2140 = inttoptr i64 %var_2_2137 to i64*
; %var_2_594 = inttoptr i64 %var_2_591 to i64*
; Matched:%var_2_2141:  %var_2_2141 = load i64, i64* %var_2_2140, align 8
; %var_2_595 = load i64, i64* %var_2_594, align 8
; Matched:%var_2_2142:  %var_2_2142 = sext i64 %var_2_2141 to i128
; %var_2_596 = sext i64 %var_2_595 to i128
; Matched:%var_2_2143:  %var_2_2143 = and i128 %var_2_2142, -18446744073709551616
; %var_2_597 = and i128 %var_2_596, -18446744073709551616
; Matched:%var_2_2144:  %var_2_2144 = zext i64 %var_2_2141 to i128
; %var_2_598 = zext i64 %var_2_595 to i128
; Matched:%var_2_2145:  %var_2_2145 = or i128 %var_2_2143, %var_2_2144
; %var_2_599 = or i128 %var_2_597, %var_2_598
; Matched:%var_2_2146:  %var_2_2146 = mul nsw i128 %var_2_2145, 93
; %var_2_600 = mul nsw i128 %var_2_599, 93
; Matched:%var_2_2147:  %var_2_2147 = trunc i128 %var_2_2146 to i64
; %var_2_601 = trunc i128 %var_2_600 to i64
; Matched:\<badref\>:  store i64 %var_2_2147, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_601, i64* %RAX.i1199, align 8
; Matched:%var_2_2148:  %var_2_2148 = sext i64 %var_2_2147 to i128
; %var_2_602 = sext i64 %var_2_601 to i128
; Matched:%var_2_2149:  %var_2_2149 = icmp ne i128 %var_2_2148, %var_2_2146
; %var_2_603 = icmp ne i128 %var_2_602, %var_2_600
; Matched:%var_2_2150:  %var_2_2150 = zext i1 %var_2_2149 to i8
; %var_2_604 = zext i1 %var_2_603 to i8
; Matched:\<badref\>:  store i8 %var_2_2150, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_604, i8* %var_2_14, align 1
; Matched:%var_2_2151:  %var_2_2151 = trunc i128 %var_2_2146 to i32
; %var_2_605 = trunc i128 %var_2_600 to i32
; Matched:%var_2_2152:  %var_2_2152 = and i32 %var_2_2151, 255
; %var_2_606 = and i32 %var_2_605, 255
; Matched:%var_2_2153:  %var_2_2153 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2152) #14
; %var_2_607 = tail call i32 @llvm.ctpop.i32(i32 %var_2_606)
; Matched:%var_2_2154:  %var_2_2154 = trunc i32 %var_2_2153 to i8
; %var_2_608 = trunc i32 %var_2_607 to i8
; Matched:%var_2_2155:  %var_2_2155 = and i8 %var_2_2154, 1
; %var_2_609 = and i8 %var_2_608, 1
; Matched:%var_2_2156:  %var_2_2156 = xor i8 %var_2_2155, 1
; %var_2_610 = xor i8 %var_2_609, 1
; Matched:\<badref\>:  store i8 %var_2_2156, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_610, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_2157:  %var_2_2157 = lshr i64 %var_2_2147, 63
; %var_2_611 = lshr i64 %var_2_601, 63
; Matched:%var_2_2158:  %var_2_2158 = trunc i64 %var_2_2157 to i8
; %var_2_612 = trunc i64 %var_2_611 to i8
; Matched:\<badref\>:  store i8 %var_2_2158, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_612, i8* %var_2_32, align 1
; Matched:\<badref\>:  store i8 %var_2_2150, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_604, i8* %var_2_38, align 1
; Matched:%var_2_2159:  %var_2_2159 = add i64 %var_2_2136, -104
; %var_2_613 = add i64 %var_2_590, -104
; Matched:%var_2_2001:  %var_2_2001 = add i64 %var_2_1979, 12
; %var_2_614 = add i64 %var_2_592, 12
; Matched:\<badref\>:  store i64 %var_2_2160, i64* %PC, align 8
; store i64 %var_2_614, i64* %var_2_3, align 8
; Matched:%var_2_2161:  %var_2_2161 = inttoptr i64 %var_2_2159 to i64*
; %var_2_615 = inttoptr i64 %var_2_613 to i64*
; Matched:\<badref\>:  store i64 %var_2_2147, i64* %var_2_2161, align 8
; store i64 %var_2_601, i64* %var_2_615, align 8
; Matched:%var_2_2162:  %var_2_2162 = load i64, i64* %RBP, align 8
; %var_2_616 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2163:  %var_2_2163 = add i64 %var_2_2162, -112
; %var_2_617 = add i64 %var_2_616, -112
%var_2_618 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2171:  %var_2_2171 = add i64 %var_2_2170, 5
; %var_2_619 = add i64 %var_2_618, 5
; Matched:\<badref\>:  store i64 %var_2_2177, i64* %PC, align 8
; store i64 %var_2_619, i64* %var_2_3, align 8
; Matched:%var_2_2166:  %var_2_2166 = load i64, i64* %var_2_2699, align 1
; %var_2_620 = load i64, i64* %var_2_307, align 1
; Matched:%var_2_2167:  %var_2_2167 = inttoptr i64 %var_2_2163 to i64*
; %var_2_621 = inttoptr i64 %var_2_617 to i64*
; Matched:\<badref\>:  store i64 %var_2_2166, i64* %var_2_2167, align 8
; store i64 %var_2_620, i64* %var_2_621, align 8
; Matched:%var_2_2168:  %var_2_2168 = load i64, i64* %RBP, align 8
; %var_2_622 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2169:  %var_2_2169 = add i64 %var_2_2168, -120
; %var_2_623 = add i64 %var_2_622, -120
%var_2_624 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2177:  %var_2_2177 = add i64 %var_2_2176, 5
; %var_2_625 = add i64 %var_2_624, 5
; Matched:\<badref\>:  store i64 %var_2_2171, i64* %PC, align 8
; store i64 %var_2_625, i64* %var_2_3, align 8
; Matched:%var_2_2172:  %var_2_2172 = load i64, i64* %var_2_2695, align 1
; %var_2_626 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_2173:  %var_2_2173 = inttoptr i64 %var_2_2169 to i64*
; %var_2_627 = inttoptr i64 %var_2_623 to i64*
; Matched:\<badref\>:  store i64 %var_2_2172, i64* %var_2_2173, align 8
; store i64 %var_2_626, i64* %var_2_627, align 8
; Matched:%var_2_2174:  %var_2_2174 = load i64, i64* %RBP, align 8
; %var_2_628 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2175:  %var_2_2175 = add i64 %var_2_2174, -128
; %var_2_629 = add i64 %var_2_628, -128
%var_2_630 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2165:  %var_2_2165 = add i64 %var_2_2164, 5
; %var_2_631 = add i64 %var_2_630, 5
; Matched:\<badref\>:  store i64 %var_2_1405, i64* %PC, align 8
; store i64 %var_2_631, i64* %var_2_3, align 8
; Matched:%var_2_2178:  %var_2_2178 = load i64, i64* %var_2_2695, align 1
; %var_2_632 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_2179:  %var_2_2179 = inttoptr i64 %var_2_2175 to i64*
; %var_2_633 = inttoptr i64 %var_2_629 to i64*
; Matched:\<badref\>:  store i64 %var_2_2178, i64* %var_2_2179, align 8
; store i64 %var_2_632, i64* %var_2_633, align 8
; Matched:%var_2_2180:  %var_2_2180 = load i64, i64* %RBP, align 8
; %var_2_634 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2181:  %var_2_2181 = add i64 %var_2_2180, -136
; %var_2_635 = add i64 %var_2_634, -136
%var_2_636 = load i64, i64* %var_2_3, align 8
%var_2_637 = add i64 %var_2_636, 8
store i64 %var_2_637, i64* %var_2_3, align 8
; Matched:%var_2_2184:  %var_2_2184 = load i64, i64* %var_2_2695, align 1
; %var_2_638 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_2185:  %var_2_2185 = inttoptr i64 %var_2_2181 to i64*
; %var_2_639 = inttoptr i64 %var_2_635 to i64*
; Matched:\<badref\>:  store i64 %var_2_2184, i64* %var_2_2185, align 8
; store i64 %var_2_638, i64* %var_2_639, align 8
%var_2_640 = load i64, i64* %RBP.i, align 8
%var_2_641 = add i64 %var_2_640, -24
%var_2_642 = load i64, i64* %var_2_3, align 8
%var_2_643 = add i64 %var_2_642, 8
store i64 %var_2_643, i64* %var_2_3, align 8
%var_2_644 = inttoptr i64 %var_2_641 to i64*
store i64 1, i64* %var_2_644, align 8
%.pre98 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400a99

block_.L_400a99:                                  ; preds = %block_400aa7, %block_.L_4009eb
%var_2_645 = phi i64 [ %var_2_827, %block_400aa7 ], [ %.pre98, %block_.L_4009eb ]
%var_2_646 = load i64, i64* %RBP.i, align 8
%var_2_647 = add i64 %var_2_646, -24
; Matched:%var_2_1688:  %var_2_1688 = add i64 %var_2_1685, 4
; %var_2_648 = add i64 %var_2_645, 4
; Matched:\<badref\>:  store i64 %var_2_1688, i64* %PC, align 8
; store i64 %var_2_648, i64* %var_2_3, align 8
%var_2_649 = inttoptr i64 %var_2_647 to i64*
%var_2_650 = load i64, i64* %var_2_649, align 8
; Matched:\<badref\>:  store i64 %var_2_2197, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_650, i64* %RAX.i1199, align 8
%var_2_651 = add i64 %var_2_646, -32
; Matched:%var_2_1692:  %var_2_1692 = add i64 %var_2_1685, 8
; %var_2_652 = add i64 %var_2_645, 8
; Matched:\<badref\>:  store i64 %var_2_1692, i64* %PC, align 8
; store i64 %var_2_652, i64* %var_2_3, align 8
%var_2_653 = inttoptr i64 %var_2_651 to i64*
%var_2_654 = load i64, i64* %var_2_653, align 8
%var_2_655 = sub i64 %var_2_650, %var_2_654
; Matched:%var_2_1696:  %var_2_1696 = icmp ult i64 %var_2_1690, %var_2_1694
; %var_2_656 = icmp ult i64 %var_2_650, %var_2_654
; Matched:%var_2_1697:  %var_2_1697 = zext i1 %var_2_1696 to i8
; %var_2_657 = zext i1 %var_2_656 to i8
; Matched:\<badref\>:  store i8 %var_2_1697, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_657, i8* %var_2_14, align 1
; Matched:%var_2_1698:  %var_2_1698 = trunc i64 %var_2_1695 to i32
; %var_2_658 = trunc i64 %var_2_655 to i32
; Matched:%var_2_1699:  %var_2_1699 = and i32 %var_2_1698, 255
; %var_2_659 = and i32 %var_2_658, 255
; Matched:%var_2_1700:  %var_2_1700 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1699) #14
; %var_2_660 = tail call i32 @llvm.ctpop.i32(i32 %var_2_659)
; Matched:%var_2_1701:  %var_2_1701 = trunc i32 %var_2_1700 to i8
; %var_2_661 = trunc i32 %var_2_660 to i8
; Matched:%var_2_1702:  %var_2_1702 = and i8 %var_2_1701, 1
; %var_2_662 = and i8 %var_2_661, 1
; Matched:%var_2_1703:  %var_2_1703 = xor i8 %var_2_1702, 1
; %var_2_663 = xor i8 %var_2_662, 1
; Matched:\<badref\>:  store i8 %var_2_1703, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_663, i8* %var_2_21, align 1
; Matched:%var_2_1704:  %var_2_1704 = xor i64 %var_2_1694, %var_2_1690
; %var_2_664 = xor i64 %var_2_654, %var_2_650
; Matched:%var_2_1705:  %var_2_1705 = xor i64 %var_2_1704, %var_2_1695
; %var_2_665 = xor i64 %var_2_664, %var_2_655
; Matched:%var_2_1706:  %var_2_1706 = lshr i64 %var_2_1705, 4
; %var_2_666 = lshr i64 %var_2_665, 4
; Matched:%var_2_1707:  %var_2_1707 = trunc i64 %var_2_1706 to i8
; %var_2_667 = trunc i64 %var_2_666 to i8
; Matched:%var_2_1708:  %var_2_1708 = and i8 %var_2_1707, 1
; %var_2_668 = and i8 %var_2_667, 1
; Matched:\<badref\>:  store i8 %var_2_1708, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_668, i8* %var_2_26, align 1
%var_2_669 = icmp eq i64 %var_2_655, 0
; Matched:%var_2_1710:  %var_2_1710 = zext i1 %var_2_1709 to i8
; %var_2_670 = zext i1 %var_2_669 to i8
; Matched:\<badref\>:  store i8 %var_2_1710, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_670, i8* %var_2_29, align 1
%var_2_671 = lshr i64 %var_2_655, 63
%var_2_672 = trunc i64 %var_2_671 to i8
; Matched:\<badref\>:  store i8 %var_2_1712, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_672, i8* %var_2_32, align 1
%var_2_673 = lshr i64 %var_2_650, 63
%var_2_674 = lshr i64 %var_2_654, 63
%var_2_675 = xor i64 %var_2_674, %var_2_673
%var_2_676 = xor i64 %var_2_671, %var_2_673
%var_2_677 = add nuw nsw i64 %var_2_676, %var_2_675
%var_2_678 = icmp eq i64 %var_2_677, 2
; Matched:%var_2_1719:  %var_2_1719 = zext i1 %var_2_1718 to i8
; %var_2_679 = zext i1 %var_2_678 to i8
; Matched:\<badref\>:  store i8 %var_2_1719, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_679, i8* %var_2_38, align 1
%var_2_680 = icmp ne i8 %var_2_672, 0
%var_2_681 = xor i1 %var_2_680, %var_2_678
%.demorgan = or i1 %var_2_669, %var_2_681
  %.v140 = select i1 %.demorgan, i64 14, i64 205
%var_2_682 = add i64 %var_2_645, %.v140
; Matched:\<badref\>:  store i64 %var_2_1722, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_682, i64* %var_2_3, align 8
  br i1 %.demorgan, label %block_400aa7, label %block_.L_400b66

block_400aa7:                                     ; preds = %block_.L_400a99
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
%var_2_683 = add i64 %var_2_646, -112
; Matched:%var_2_1379:  %var_2_1379 = add i64 %var_2_1722, 15
; %var_2_684 = add i64 %var_2_682, 15
; Matched:\<badref\>:  store i64 %var_2_1379, i64* %PC, align 8
; store i64 %var_2_684, i64* %var_2_3, align 8
%var_2_685 = inttoptr i64 %var_2_683 to i64*
%var_2_686 = load i64, i64* %var_2_685, align 8
; Matched:\<badref\>:  store i64 %var_2_662, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_686, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_687 = add i64 %var_2_646, -120
; Matched:%var_2_1383:  %var_2_1383 = add i64 %var_2_1722, 20
; %var_2_688 = add i64 %var_2_682, 20
; Matched:\<badref\>:  store i64 %var_2_1383, i64* %PC, align 8
; store i64 %var_2_688, i64* %var_2_3, align 8
%var_2_689 = bitcast i64 %var_2_686 to double
%var_2_690 = inttoptr i64 %var_2_687 to double*
%var_2_691 = load double, double* %var_2_690, align 8
%var_2_692 = fadd double %var_2_689, %var_2_691
; Matched:\<badref\>:  store double %var_2_1413, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_692, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1388:  %var_2_1388 = add i64 %var_2_1686, -128
; %var_2_693 = add i64 %var_2_646, -128
; Matched:%var_2_1389:  %var_2_1389 = add i64 %var_2_1722, 25
; %var_2_694 = add i64 %var_2_682, 25
; Matched:\<badref\>:  store i64 %var_2_1389, i64* %PC, align 8
; store i64 %var_2_694, i64* %var_2_3, align 8
; Matched:%var_2_1390:  %var_2_1390 = inttoptr i64 %var_2_1388 to double*
; %var_2_695 = inttoptr i64 %var_2_693 to double*
; Matched:%var_2_1391:  %var_2_1391 = load double, double* %var_2_1390, align 8
; %var_2_696 = load double, double* %var_2_695, align 8
; Matched:%var_2_1392:  %var_2_1392 = fadd double %var_2_1387, %var_2_1391
; %var_2_697 = fadd double %var_2_692, %var_2_696
; Matched:\<badref\>:  store double %var_2_1392, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_697, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1393:  %var_2_1393 = add i64 %var_2_1686, -136
; %var_2_698 = add i64 %var_2_646, -136
; Matched:%var_2_1394:  %var_2_1394 = add i64 %var_2_1722, 33
; %var_2_699 = add i64 %var_2_682, 33
; Matched:\<badref\>:  store i64 %var_2_1394, i64* %PC, align 8
; store i64 %var_2_699, i64* %var_2_3, align 8
; Matched:%var_2_1395:  %var_2_1395 = inttoptr i64 %var_2_1393 to double*
; %var_2_700 = inttoptr i64 %var_2_698 to double*
; Matched:%var_2_1396:  %var_2_1396 = load double, double* %var_2_1395, align 8
; %var_2_701 = load double, double* %var_2_700, align 8
; Matched:%var_2_1397:  %var_2_1397 = fsub double %var_2_1392, %var_2_1396
; %var_2_702 = fsub double %var_2_697, %var_2_701
; Matched:%var_2_1398:  %var_2_1398 = load double, double* bitcast (%T_type* @T to double*), align 8
; %var_2_703 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; Matched:%var_2_1399:  %var_2_1399 = fmul double %var_2_1397, %var_2_1398
; %var_2_704 = fmul double %var_2_702, %var_2_703
; Matched:\<badref\>:  store double %var_2_1399, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_704, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1400:  %var_2_1400 = add i64 %var_2_1722, 47
; %var_2_705 = add i64 %var_2_682, 47
; Matched:\<badref\>:  store i64 %var_2_1400, i64* %PC, align 8
; store i64 %var_2_705, i64* %var_2_3, align 8
; Matched:%var_2_1401:  %var_2_1401 = inttoptr i64 %var_2_1378 to double*
; %var_2_706 = inttoptr i64 %var_2_683 to double*
; Matched:\<badref\>:  store double %var_2_1399, double* %var_2_1401, align 8
; store double %var_2_704, double* %var_2_706, align 8
%var_2_707 = load i64, i64* %RBP.i, align 8
%var_2_708 = add i64 %var_2_707, -112
%var_2_709 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1404, 5
; %var_2_710 = add i64 %var_2_709, 5
; Matched:\<badref\>:  store i64 %var_2_1431, i64* %PC, align 8
; store i64 %var_2_710, i64* %var_2_3, align 8
%var_2_711 = inttoptr i64 %var_2_708 to i64*
%var_2_712 = load i64, i64* %var_2_711, align 8
; Matched:\<badref\>:  store i64 %var_2_1433, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_712, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_713 = add i64 %var_2_707, -120
; Matched:%var_2_2351:  %var_2_2351 = add i64 %var_2_2350, 10
; %var_2_714 = add i64 %var_2_709, 10
; Matched:\<badref\>:  store i64 %var_2_2351, i64* %PC, align 8
; store i64 %var_2_714, i64* %var_2_3, align 8
%var_2_715 = bitcast i64 %var_2_712 to double
%var_2_716 = inttoptr i64 %var_2_713 to double*
%var_2_717 = load double, double* %var_2_716, align 8
%var_2_718 = fadd double %var_2_715, %var_2_717
; Matched:\<badref\>:  store double %var_2_1387, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_718, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1414:  %var_2_1414 = add i64 %var_2_1402, -128
; %var_2_719 = add i64 %var_2_707, -128
; Matched:%var_2_2053:  %var_2_2053 = add i64 %var_2_2031, 15
; %var_2_720 = add i64 %var_2_709, 15
; Matched:\<badref\>:  store i64 %var_2_1415, i64* %PC, align 8
; store i64 %var_2_720, i64* %var_2_3, align 8
; Matched:%var_2_1416:  %var_2_1416 = inttoptr i64 %var_2_1414 to double*
; %var_2_721 = inttoptr i64 %var_2_719 to double*
; Matched:%var_2_1417:  %var_2_1417 = load double, double* %var_2_1416, align 8
; %var_2_722 = load double, double* %var_2_721, align 8
; Matched:%var_2_1418:  %var_2_1418 = fsub double %var_2_1413, %var_2_1417
; %var_2_723 = fsub double %var_2_718, %var_2_722
; Matched:\<badref\>:  store double %var_2_1418, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_723, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1419:  %var_2_1419 = add i64 %var_2_1402, -136
; %var_2_724 = add i64 %var_2_707, -136
; Matched:%var_2_1420:  %var_2_1420 = add i64 %var_2_1404, 23
; %var_2_725 = add i64 %var_2_709, 23
; Matched:\<badref\>:  store i64 %var_2_1420, i64* %PC, align 8
; store i64 %var_2_725, i64* %var_2_3, align 8
; Matched:%var_2_1421:  %var_2_1421 = inttoptr i64 %var_2_1419 to double*
; %var_2_726 = inttoptr i64 %var_2_724 to double*
; Matched:%var_2_1422:  %var_2_1422 = load double, double* %var_2_1421, align 8
; %var_2_727 = load double, double* %var_2_726, align 8
; Matched:%var_2_1423:  %var_2_1423 = fadd double %var_2_1418, %var_2_1422
; %var_2_728 = fadd double %var_2_723, %var_2_727
; Matched:%var_2_1424:  %var_2_1424 = load double, double* bitcast (%T_type* @T to double*), align 8
; %var_2_729 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; Matched:%var_2_1425:  %var_2_1425 = fmul double %var_2_1423, %var_2_1424
; %var_2_730 = fmul double %var_2_728, %var_2_729
; Matched:\<badref\>:  store double %var_2_1425, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_730, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1426:  %var_2_1426 = add i64 %var_2_1404, 37
; %var_2_731 = add i64 %var_2_709, 37
; Matched:\<badref\>:  store i64 %var_2_1452, i64* %PC, align 8
; store i64 %var_2_731, i64* %var_2_3, align 8
; Matched:%var_2_1427:  %var_2_1427 = inttoptr i64 %var_2_1408 to double*
; %var_2_732 = inttoptr i64 %var_2_713 to double*
; Matched:\<badref\>:  store double %var_2_1425, double* %var_2_1427, align 8
; store double %var_2_730, double* %var_2_732, align 8
%var_2_733 = load i64, i64* %RBP.i, align 8
%var_2_734 = add i64 %var_2_733, -112
%var_2_735 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1457:  %var_2_1457 = add i64 %var_2_1456, 5
; %var_2_736 = add i64 %var_2_735, 5
; Matched:\<badref\>:  store i64 %var_2_1457, i64* %PC, align 8
; store i64 %var_2_736, i64* %var_2_3, align 8
%var_2_737 = inttoptr i64 %var_2_734 to i64*
%var_2_738 = load i64, i64* %var_2_737, align 8
; Matched:\<badref\>:  store i64 %var_2_1381, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_738, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_1434:  %var_2_1434 = add i64 %var_2_1428, -120
; %var_2_739 = add i64 %var_2_733, -120
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_70, 10
; %var_2_740 = add i64 %var_2_735, 10
; Matched:\<badref\>:  store i64 %var_2_71, i64* %PC, align 8
; store i64 %var_2_740, i64* %var_2_3, align 8
; Matched:%var_2_1436:  %var_2_1436 = bitcast i64 %var_2_1433 to double
; %var_2_741 = bitcast i64 %var_2_738 to double
; Matched:%var_2_1437:  %var_2_1437 = inttoptr i64 %var_2_1434 to double*
; %var_2_742 = inttoptr i64 %var_2_739 to double*
; Matched:%var_2_1438:  %var_2_1438 = load double, double* %var_2_1437, align 8
; %var_2_743 = load double, double* %var_2_742, align 8
; Matched:%var_2_1439:  %var_2_1439 = fsub double %var_2_1436, %var_2_1438
; %var_2_744 = fsub double %var_2_741, %var_2_743
; Matched:\<badref\>:  store double %var_2_1439, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_744, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1440:  %var_2_1440 = add i64 %var_2_1428, -128
; %var_2_745 = add i64 %var_2_733, -128
; Matched:%var_2_2077:  %var_2_2077 = add i64 %var_2_2057, 15
; %var_2_746 = add i64 %var_2_735, 15
; Matched:\<badref\>:  store i64 %var_2_2053, i64* %PC, align 8
; store i64 %var_2_746, i64* %var_2_3, align 8
; Matched:%var_2_1442:  %var_2_1442 = inttoptr i64 %var_2_1440 to double*
; %var_2_747 = inttoptr i64 %var_2_745 to double*
; Matched:%var_2_1443:  %var_2_1443 = load double, double* %var_2_1442, align 8
; %var_2_748 = load double, double* %var_2_747, align 8
; Matched:%var_2_1444:  %var_2_1444 = fadd double %var_2_1439, %var_2_1443
; %var_2_749 = fadd double %var_2_744, %var_2_748
; Matched:\<badref\>:  store double %var_2_1444, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_749, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1445:  %var_2_1445 = add i64 %var_2_1428, -136
; %var_2_750 = add i64 %var_2_733, -136
; Matched:%var_2_1473:  %var_2_1473 = add i64 %var_2_1456, 23
; %var_2_751 = add i64 %var_2_735, 23
; Matched:\<badref\>:  store i64 %var_2_1446, i64* %PC, align 8
; store i64 %var_2_751, i64* %var_2_3, align 8
; Matched:%var_2_1447:  %var_2_1447 = inttoptr i64 %var_2_1445 to double*
; %var_2_752 = inttoptr i64 %var_2_750 to double*
; Matched:%var_2_1448:  %var_2_1448 = load double, double* %var_2_1447, align 8
; %var_2_753 = load double, double* %var_2_752, align 8
; Matched:%var_2_1449:  %var_2_1449 = fadd double %var_2_1444, %var_2_1448
; %var_2_754 = fadd double %var_2_749, %var_2_753
; Matched:%var_2_1450:  %var_2_1450 = load double, double* bitcast (%T_type* @T to double*), align 8
; %var_2_755 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; Matched:%var_2_1451:  %var_2_1451 = fmul double %var_2_1449, %var_2_1450
; %var_2_756 = fmul double %var_2_754, %var_2_755
; Matched:\<badref\>:  store double %var_2_1451, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_756, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1452:  %var_2_1452 = add i64 %var_2_1430, 37
; %var_2_757 = add i64 %var_2_735, 37
; Matched:\<badref\>:  store i64 %var_2_1426, i64* %PC, align 8
; store i64 %var_2_757, i64* %var_2_3, align 8
; Matched:%var_2_1453:  %var_2_1453 = inttoptr i64 %var_2_1440 to double*
; %var_2_758 = inttoptr i64 %var_2_745 to double*
; Matched:\<badref\>:  store double %var_2_1451, double* %var_2_1453, align 8
; store double %var_2_756, double* %var_2_758, align 8
; Matched:%var_2_1454:  %var_2_1454 = load i64, i64* %RBP, align 8
; %var_2_759 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_1455:  %var_2_1455 = add i64 %var_2_1454, -112
; %var_2_760 = add i64 %var_2_759, -112
%var_2_761 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1431:  %var_2_1431 = add i64 %var_2_1430, 5
; %var_2_762 = add i64 %var_2_761, 5
; Matched:\<badref\>:  store i64 %var_2_2165, i64* %PC, align 8
; store i64 %var_2_762, i64* %var_2_3, align 8
; Matched:%var_2_1458:  %var_2_1458 = inttoptr i64 %var_2_1455 to i64*
; %var_2_763 = inttoptr i64 %var_2_760 to i64*
; Matched:%var_2_1459:  %var_2_1459 = load i64, i64* %var_2_1458, align 8
; %var_2_764 = load i64, i64* %var_2_763, align 8
; Matched:%var_2_1460:  %var_2_1460 = load i64, i64* %RAX, align 8
; %var_2_765 = load i64, i64* %RAX.i1199, align 8
; Matched:%var_2_1461:  %var_2_1461 = xor i64 %var_2_1460, %var_2_1459
; %var_2_766 = xor i64 %var_2_765, %var_2_764
; Matched:\<badref\>:  store i64 %var_2_1461, i64* %RCX, align 8, !tbaa !1261
; store i64 %var_2_766, i64* %RCX.i1209, align 8
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_1462:  %var_2_1462 = trunc i64 %var_2_1461 to i32
; %var_2_767 = trunc i64 %var_2_766 to i32
; Matched:%var_2_1463:  %var_2_1463 = and i32 %var_2_1462, 255
; %var_2_768 = and i32 %var_2_767, 255
; Matched:%var_2_1464:  %var_2_1464 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1463) #14
; %var_2_769 = tail call i32 @llvm.ctpop.i32(i32 %var_2_768)
; Matched:%var_2_1465:  %var_2_1465 = trunc i32 %var_2_1464 to i8
; %var_2_770 = trunc i32 %var_2_769 to i8
; Matched:%var_2_1466:  %var_2_1466 = and i8 %var_2_1465, 1
; %var_2_771 = and i8 %var_2_770, 1
; Matched:%var_2_1467:  %var_2_1467 = xor i8 %var_2_1466, 1
; %var_2_772 = xor i8 %var_2_771, 1
; Matched:\<badref\>:  store i8 %var_2_1467, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_772, i8* %var_2_21, align 1
; Matched:%var_2_1468:  %var_2_1468 = icmp eq i64 %var_2_1461, 0
; %var_2_773 = icmp eq i64 %var_2_766, 0
; Matched:%var_2_1469:  %var_2_1469 = zext i1 %var_2_1468 to i8
; %var_2_774 = zext i1 %var_2_773 to i8
; Matched:\<badref\>:  store i8 %var_2_1469, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_774, i8* %var_2_29, align 1
; Matched:%var_2_1470:  %var_2_1470 = lshr i64 %var_2_1461, 63
; %var_2_775 = lshr i64 %var_2_766, 63
; Matched:%var_2_1471:  %var_2_1471 = trunc i64 %var_2_1470 to i8
; %var_2_776 = trunc i64 %var_2_775 to i8
; Matched:\<badref\>:  store i8 %var_2_1471, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_776, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:\<badref\>:  store i64 %var_2_1461, i64* %var_2_2695, align 1, !tbaa !1261
; store i64 %var_2_766, i64* %var_2_302, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1472:  %var_2_1472 = add i64 %var_2_1454, -120
; %var_2_777 = add i64 %var_2_759, -120
; Matched:%var_2_1446:  %var_2_1446 = add i64 %var_2_1430, 23
; %var_2_778 = add i64 %var_2_761, 23
; Matched:\<badref\>:  store i64 %var_2_1473, i64* %PC, align 8
; store i64 %var_2_778, i64* %var_2_3, align 8
; Matched:  %.cast = bitcast i64 %var_2_1461 to double
; %.cast = bitcast i64 %var_2_766 to double
; Matched:%var_2_1474:  %var_2_1474 = inttoptr i64 %var_2_1472 to double*
; %var_2_779 = inttoptr i64 %var_2_777 to double*
; Matched:%var_2_1475:  %var_2_1475 = load double, double* %var_2_1474, align 8
; %var_2_780 = load double, double* %var_2_779, align 8
; Matched:%var_2_1476:  %var_2_1476 = fadd double %.cast, %var_2_1475
; %var_2_781 = fadd double %.cast, %var_2_780
; Matched:\<badref\>:  store double %var_2_1476, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_781, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1477:  %var_2_1477 = add i64 %var_2_1454, -128
; %var_2_782 = add i64 %var_2_759, -128
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_783 = add i64 %var_2_761, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_783, i64* %var_2_3, align 8
; Matched:%var_2_1479:  %var_2_1479 = inttoptr i64 %var_2_1477 to double*
; %var_2_784 = inttoptr i64 %var_2_782 to double*
; Matched:%var_2_1480:  %var_2_1480 = load double, double* %var_2_1479, align 8
; %var_2_785 = load double, double* %var_2_784, align 8
; Matched:%var_2_1481:  %var_2_1481 = fadd double %var_2_1476, %var_2_1480
; %var_2_786 = fadd double %var_2_781, %var_2_785
; Matched:\<badref\>:  store double %var_2_1481, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_786, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1482:  %var_2_1482 = add i64 %var_2_1454, -136
; %var_2_787 = add i64 %var_2_759, -136
; Matched:%var_2_1483:  %var_2_1483 = add i64 %var_2_1456, 36
; %var_2_788 = add i64 %var_2_761, 36
; Matched:\<badref\>:  store i64 %var_2_1483, i64* %PC, align 8
; store i64 %var_2_788, i64* %var_2_3, align 8
; Matched:%var_2_1484:  %var_2_1484 = inttoptr i64 %var_2_1482 to double*
; %var_2_789 = inttoptr i64 %var_2_787 to double*
; Matched:%var_2_1485:  %var_2_1485 = load double, double* %var_2_1484, align 8
; %var_2_790 = load double, double* %var_2_789, align 8
; Matched:%var_2_1486:  %var_2_1486 = fadd double %var_2_1481, %var_2_1485
; %var_2_791 = fadd double %var_2_786, %var_2_790
; Matched:%var_2_1487:  %var_2_1487 = load double, double* bitcast (%T_type* @T to double*), align 8
; %var_2_792 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; Matched:%var_2_1488:  %var_2_1488 = fmul double %var_2_1486, %var_2_1487
; %var_2_793 = fmul double %var_2_791, %var_2_792
; Matched:\<badref\>:  store double %var_2_1488, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_793, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
; Matched:%var_2_1489:  %var_2_1489 = add i64 %var_2_1456, 53
; %var_2_794 = add i64 %var_2_761, 53
; Matched:\<badref\>:  store i64 %var_2_1489, i64* %PC, align 8
; store i64 %var_2_794, i64* %var_2_3, align 8
; Matched:%var_2_1490:  %var_2_1490 = inttoptr i64 %var_2_1482 to double*
; %var_2_795 = inttoptr i64 %var_2_787 to double*
; Matched:\<badref\>:  store double %var_2_1488, double* %var_2_1490, align 8
; store double %var_2_793, double* %var_2_795, align 8
%var_2_796 = load i64, i64* %RBP.i, align 8
%var_2_797 = add i64 %var_2_796, -24
%var_2_798 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, 4
; %var_2_799 = add i64 %var_2_798, 4
; Matched:\<badref\>:  store i64 %var_2_1842, i64* %PC, align 8
; store i64 %var_2_799, i64* %var_2_3, align 8
%var_2_800 = inttoptr i64 %var_2_797 to i64*
; Matched:%var_2_1283:  %var_2_1283 = load i64, i64* %var_2_1282, align 8
; %var_2_801 = load i64, i64* %var_2_800, align 8
; Matched:%var_2_1284:  %var_2_1284 = add i64 %var_2_1283, 1
; %var_2_802 = add i64 %var_2_801, 1
; Matched:\<badref\>:  store i64 %var_2_123, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_802, i64* %RAX.i1199, align 8
; Matched:%var_2_124:  %var_2_124 = icmp eq i64 %var_2_122, -1
; %var_2_803 = icmp eq i64 %var_2_801, -1
; Matched:%var_2_2243:  %var_2_2243 = icmp eq i64 %var_2_2241, 0
; %var_2_804 = icmp eq i64 %var_2_802, 0
; Matched:%var_2_455:  %var_2_455 = or i1 %var_2_453, %var_2_454
; %var_2_805 = or i1 %var_2_803, %var_2_804
; Matched:%var_2_2245:  %var_2_2245 = zext i1 %var_2_2244 to i8
; %var_2_806 = zext i1 %var_2_805 to i8
; Matched:\<badref\>:  store i8 %var_2_2245, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_806, i8* %var_2_14, align 1
; Matched:%var_2_2246:  %var_2_2246 = trunc i64 %var_2_2241 to i32
; %var_2_807 = trunc i64 %var_2_802 to i32
; Matched:%var_2_458:  %var_2_458 = and i32 %var_2_457, 255
; %var_2_808 = and i32 %var_2_807, 255
; Matched:%var_2_394:  %var_2_394 = tail call i32 @llvm.ctpop.i32(i32 %var_2_393) #14
; %var_2_809 = tail call i32 @llvm.ctpop.i32(i32 %var_2_808)
; Matched:%var_2_1853:  %var_2_1853 = trunc i32 %var_2_1852 to i8
; %var_2_810 = trunc i32 %var_2_809 to i8
; Matched:%var_2_396:  %var_2_396 = and i8 %var_2_395, 1
; %var_2_811 = and i8 %var_2_810, 1
; Matched:%var_2_462:  %var_2_462 = xor i8 %var_2_461, 1
; %var_2_812 = xor i8 %var_2_811, 1
; Matched:\<badref\>:  store i8 %var_2_462, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_812, i8* %var_2_21, align 1
; Matched:%var_2_2252:  %var_2_2252 = xor i64 %var_2_2241, %var_2_2240
; %var_2_813 = xor i64 %var_2_802, %var_2_801
; Matched:%var_2_2253:  %var_2_2253 = lshr i64 %var_2_2252, 4
; %var_2_814 = lshr i64 %var_2_813, 4
; Matched:%var_2_465:  %var_2_465 = trunc i64 %var_2_464 to i8
; %var_2_815 = trunc i64 %var_2_814 to i8
; Matched:%var_2_466:  %var_2_466 = and i8 %var_2_465, 1
; %var_2_816 = and i8 %var_2_815, 1
; Matched:\<badref\>:  store i8 %var_2_2255, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_816, i8* %var_2_26, align 1
; Matched:%var_2_467:  %var_2_467 = zext i1 %var_2_454 to i8
; %var_2_817 = zext i1 %var_2_804 to i8
; Matched:\<badref\>:  store i8 %var_2_467, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_817, i8* %var_2_29, align 1
; Matched:%var_2_2257:  %var_2_2257 = lshr i64 %var_2_2241, 63
; %var_2_818 = lshr i64 %var_2_802, 63
; Matched:%var_2_2258:  %var_2_2258 = trunc i64 %var_2_2257 to i8
; %var_2_819 = trunc i64 %var_2_818 to i8
; Matched:\<badref\>:  store i8 %var_2_2258, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_819, i8* %var_2_32, align 1
; Matched:%var_2_2259:  %var_2_2259 = lshr i64 %var_2_2240, 63
; %var_2_820 = lshr i64 %var_2_801, 63
; Matched:%var_2_142:  %var_2_142 = xor i64 %var_2_139, %var_2_141
; %var_2_821 = xor i64 %var_2_818, %var_2_820
; Matched:%var_2_1304:  %var_2_1304 = add nuw nsw i64 %var_2_1303, %var_2_1300
; %var_2_822 = add nuw nsw i64 %var_2_821, %var_2_818
; Matched:%var_2_144:  %var_2_144 = icmp eq i64 %var_2_143, 2
; %var_2_823 = icmp eq i64 %var_2_822, 2
; Matched:%var_2_2263:  %var_2_2263 = zext i1 %var_2_2262 to i8
; %var_2_824 = zext i1 %var_2_823 to i8
; Matched:\<badref\>:  store i8 %var_2_2263, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_824, i8* %var_2_38, align 1
; Matched:%var_2_1975:  %var_2_1975 = add i64 %var_2_1953, 12
; %var_2_825 = add i64 %var_2_798, 12
; Matched:\<badref\>:  store i64 %var_2_1975, i64* %PC, align 8
; store i64 %var_2_825, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_123, i64* %var_2_121, align 8
; store i64 %var_2_802, i64* %var_2_800, align 8
%var_2_826 = load i64, i64* %var_2_3, align 8
%var_2_827 = add i64 %var_2_826, -200
; Matched:\<badref\>:  store i64 %var_2_1522, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_827, i64* %var_2_3, align 8
  br label %block_.L_400a99

block_.L_400b66:                                  ; preds = %block_.L_400a99
%var_2_828 = add i64 %var_2_646, -176
; Matched:%var_2_964:  %var_2_964 = add i64 %var_2_1722, 6
; %var_2_829 = add i64 %var_2_682, 6
; Matched:\<badref\>:  store i64 %var_2_964, i64* %PC, align 8
; store i64 %var_2_829, i64* %var_2_3, align 8
%var_2_830 = inttoptr i64 %var_2_828 to i32*
%var_2_831 = load i32, i32* %var_2_830, align 4
; Matched:%var_2_482:  %var_2_482 = zext i32 %var_2_481 to i64
; %var_2_832 = zext i32 %var_2_831 to i64
; Matched:\<badref\>:  store i64 %var_2_482, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_832, i64* %RAX.i1199, align 8
%var_2_833 = add i64 %var_2_646, -172
; Matched:%var_2_969:  %var_2_969 = add i64 %var_2_1722, 12
; %var_2_834 = add i64 %var_2_682, 12
; Matched:\<badref\>:  store i64 %var_2_969, i64* %PC, align 8
; store i64 %var_2_834, i64* %var_2_3, align 8
%var_2_835 = inttoptr i64 %var_2_833 to i32*
%var_2_836 = load i32, i32* %var_2_835, align 4
%var_2_837 = sub i32 %var_2_831, %var_2_836
; Matched:%var_2_1920:  %var_2_1920 = icmp ult i32 %var_2_1913, %var_2_1918
; %var_2_838 = icmp ult i32 %var_2_831, %var_2_836
; Matched:%var_2_1921:  %var_2_1921 = zext i1 %var_2_1920 to i8
; %var_2_839 = zext i1 %var_2_838 to i8
; Matched:\<badref\>:  store i8 %var_2_1921, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_839, i8* %var_2_14, align 1
; Matched:%var_2_1922:  %var_2_1922 = and i32 %var_2_1919, 255
; %var_2_840 = and i32 %var_2_837, 255
; Matched:%var_2_1923:  %var_2_1923 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1922) #14
; %var_2_841 = tail call i32 @llvm.ctpop.i32(i32 %var_2_840)
; Matched:%var_2_1737:  %var_2_1737 = trunc i32 %var_2_1736 to i8
; %var_2_842 = trunc i32 %var_2_841 to i8
; Matched:%var_2_978:  %var_2_978 = and i8 %var_2_977, 1
; %var_2_843 = and i8 %var_2_842, 1
; Matched:%var_2_1739:  %var_2_1739 = xor i8 %var_2_1738, 1
; %var_2_844 = xor i8 %var_2_843, 1
; Matched:\<badref\>:  store i8 %var_2_979, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_844, i8* %var_2_21, align 1
; Matched:%var_2_1740:  %var_2_1740 = xor i32 %var_2_1731, %var_2_1726
; %var_2_845 = xor i32 %var_2_836, %var_2_831
; Matched:%var_2_1928:  %var_2_1928 = xor i32 %var_2_1927, %var_2_1919
; %var_2_846 = xor i32 %var_2_845, %var_2_837
; Matched:%var_2_600:  %var_2_600 = lshr i32 %var_2_599, 4
; %var_2_847 = lshr i32 %var_2_846, 4
; Matched:%var_2_532:  %var_2_532 = trunc i32 %var_2_531 to i8
; %var_2_848 = trunc i32 %var_2_847 to i8
; Matched:%var_2_567:  %var_2_567 = and i8 %var_2_566, 1
; %var_2_849 = and i8 %var_2_848, 1
; Matched:\<badref\>:  store i8 %var_2_1744, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_849, i8* %var_2_26, align 1
%var_2_850 = icmp eq i32 %var_2_837, 0
; Matched:%var_2_1746:  %var_2_1746 = zext i1 %var_2_1745 to i8
; %var_2_851 = zext i1 %var_2_850 to i8
; Matched:\<badref\>:  store i8 %var_2_1746, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_851, i8* %var_2_29, align 1
; Matched:%var_2_570:  %var_2_570 = lshr i32 %var_2_555, 31
; %var_2_852 = lshr i32 %var_2_837, 31
; Matched:%var_2_571:  %var_2_571 = trunc i32 %var_2_570 to i8
; %var_2_853 = trunc i32 %var_2_852 to i8
; Matched:\<badref\>:  store i8 %var_2_571, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_853, i8* %var_2_32, align 1
; Matched:%var_2_572:  %var_2_572 = lshr i32 %var_2_549, 31
; %var_2_854 = lshr i32 %var_2_831, 31
; Matched:%var_2_1937:  %var_2_1937 = lshr i32 %var_2_1918, 31
; %var_2_855 = lshr i32 %var_2_836, 31
; Matched:%var_2_1938:  %var_2_1938 = xor i32 %var_2_1937, %var_2_1936
; %var_2_856 = xor i32 %var_2_855, %var_2_854
; Matched:%var_2_507:  %var_2_507 = xor i32 %var_2_502, %var_2_504
; %var_2_857 = xor i32 %var_2_852, %var_2_854
; Matched:%var_2_508:  %var_2_508 = add nuw nsw i32 %var_2_507, %var_2_506
; %var_2_858 = add nuw nsw i32 %var_2_857, %var_2_856
; Matched:%var_2_1941:  %var_2_1941 = icmp eq i32 %var_2_1940, 2
; %var_2_859 = icmp eq i32 %var_2_858, 2
; Matched:%var_2_1942:  %var_2_1942 = zext i1 %var_2_1941 to i8
; %var_2_860 = zext i1 %var_2_859 to i8
; Matched:\<badref\>:  store i8 %var_2_1942, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_860, i8* %var_2_38, align 1
%.v141 = select i1 %var_2_850, i64 18, i64 58
%var_2_861 = add i64 %var_2_682, %.v141
; Matched:\<badref\>:  store i64 %var_2_996, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_861, i64* %var_2_3, align 8
br i1 %var_2_850, label %block_400b78, label %block_.L_400ba0

block_400b78:                                     ; preds = %block_.L_400b66
; Matched:%var_2_653:  %var_2_653 = add i64 %var_2_996, 4
; %var_2_862 = add i64 %var_2_861, 4
; Matched:\<badref\>:  store i64 %var_2_653, i64* %PC, align 8
; store i64 %var_2_862, i64* %var_2_3, align 8
; Matched:%var_2_654:  %var_2_654 = load i64, i64* %var_2_1693, align 8
; %var_2_863 = load i64, i64* %var_2_653, align 8
; Matched:\<badref\>:  store i64 %var_2_654, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_863, i64* %RDI.i1206, align 8
; Matched:%var_2_655:  %var_2_655 = add i64 %var_2_996, 8
; %var_2_864 = add i64 %var_2_861, 8
; Matched:\<badref\>:  store i64 %var_2_655, i64* %PC, align 8
; store i64 %var_2_864, i64* %var_2_3, align 8
; Matched:%var_2_656:  %var_2_656 = load i64, i64* %var_2_1693, align 8
; %var_2_865 = load i64, i64* %var_2_653, align 8
; Matched:\<badref\>:  store i64 %var_2_656, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_865, i64* %RSI.i1110, align 8
; Matched:%var_2_657:  %var_2_657 = add i64 %var_2_996, 12
; %var_2_866 = add i64 %var_2_861, 12
; Matched:\<badref\>:  store i64 %var_2_657, i64* %PC, align 8
; store i64 %var_2_866, i64* %var_2_3, align 8
; Matched:%var_2_658:  %var_2_658 = load i64, i64* %var_2_1693, align 8
; %var_2_867 = load i64, i64* %var_2_653, align 8
; Matched:\<badref\>:  store i64 %var_2_658, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_867, i64* %RDX.i596, align 8
%var_2_868 = add i64 %var_2_646, -112
; Matched:%var_2_660:  %var_2_660 = add i64 %var_2_996, 17
; %var_2_869 = add i64 %var_2_861, 17
; Matched:\<badref\>:  store i64 %var_2_660, i64* %PC, align 8
; store i64 %var_2_869, i64* %var_2_3, align 8
%var_2_870 = inttoptr i64 %var_2_868 to i64*
%var_2_871 = load i64, i64* %var_2_870, align 8
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_871, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_1532:  %var_2_1532 = add i64 %var_2_2193, -120
; %var_2_872 = add i64 %var_2_646, -120
; Matched:%var_2_664:  %var_2_664 = add i64 %var_2_996, 22
; %var_2_873 = add i64 %var_2_861, 22
; Matched:\<badref\>:  store i64 %var_2_664, i64* %PC, align 8
; store i64 %var_2_873, i64* %var_2_3, align 8
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_256 to i64*
; %var_2_874 = inttoptr i64 %var_2_872 to i64*
; Matched:%var_2_259:  %var_2_259 = load i64, i64* %var_2_258, align 8
; %var_2_875 = load i64, i64* %var_2_874, align 8
; Matched:\<badref\>:  store i64 %var_2_1535, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_875, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_667:  %var_2_667 = add i64 %var_2_1686, -128
; %var_2_876 = add i64 %var_2_646, -128
; Matched:%var_2_668:  %var_2_668 = add i64 %var_2_996, 27
; %var_2_877 = add i64 %var_2_861, 27
; Matched:\<badref\>:  store i64 %var_2_668, i64* %PC, align 8
; store i64 %var_2_877, i64* %var_2_3, align 8
; Matched:%var_2_262:  %var_2_262 = inttoptr i64 %var_2_260 to i64*
; %var_2_878 = inttoptr i64 %var_2_876 to i64*
; Matched:%var_2_263:  %var_2_263 = load i64, i64* %var_2_262, align 8
; %var_2_879 = load i64, i64* %var_2_878, align 8
; Matched:\<badref\>:  store i64 %var_2_263, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_879, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_880 = add i64 %var_2_646, -136
; Matched:%var_2_672:  %var_2_672 = add i64 %var_2_996, 35
; %var_2_881 = add i64 %var_2_861, 35
; Matched:\<badref\>:  store i64 %var_2_672, i64* %PC, align 8
; store i64 %var_2_881, i64* %var_2_3, align 8
%var_2_882 = inttoptr i64 %var_2_880 to i64*
%var_2_883 = load i64, i64* %var_2_882, align 8
store i64 %var_2_883, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_884 = add i64 %var_2_861, 2680
; Matched:%var_2_676:  %var_2_676 = add i64 %var_2_996, 40
; %var_2_885 = add i64 %var_2_861, 40
%var_2_886 = load i64, i64* %var_2_6, align 8
%var_2_887 = add i64 %var_2_886, -8
; Matched:%var_2_679:  %var_2_679 = inttoptr i64 %var_2_678 to i64*
; %var_2_888 = inttoptr i64 %var_2_887 to i64*
; Matched:\<badref\>:  store i64 %var_2_676, i64* %var_2_679, align 8
; store i64 %var_2_885, i64* %var_2_888, align 8
; Matched:\<badref\>:  store i64 %var_2_869, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_887, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_675, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_884, i64* %var_2_3, align 8
%call2_400b9b = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_884, %struct.Memory* %MEMORY.4)
%.pre99 = load i64, i64* %var_2_3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ba0

block_.L_400ba0:                                  ; preds = %block_.L_400b66, %block_400b78
; Matched:%var_2_2741:  %var_2_2741 = phi i64 [ %var_2_1686, %block_400b66 ], [ %.pre411, %block_400b78 ]
; %var_2_889 = phi i64 [ %.pre100, %block_400b78 ], [ %var_2_646, %block_.L_400b66 ]
%var_2_890 = phi i64 [ %.pre99, %block_400b78 ], [ %var_2_861, %block_.L_400b66 ]
%var_2_891 = add i64 %var_2_890, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
%var_2_892 = add i64 %var_2_890, 8
store i64 %var_2_892, i64* %var_2_3, align 8
%var_2_893 = inttoptr i64 %var_2_891 to i64*
%var_2_894 = load i64, i64* %var_2_893, align 8
store i64 %var_2_894, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_895 = add i64 %var_2_890, add (i64 ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64), i64 8)
%var_2_896 = add i64 %var_2_890, 16
store i64 %var_2_896, i64* %var_2_3, align 8
%var_2_897 = inttoptr i64 %var_2_895 to i64*
%var_2_898 = load i64, i64* %var_2_897, align 8
store i64 %var_2_898, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
store i64 %var_2_898, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_894, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_894, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
store i64 %var_2_894, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
; Matched:%var_2_1259:  %var_2_1259 = add i64 %var_2_1258, -24
; %var_2_899 = add i64 %var_2_889, -24
; Matched:%var_2_2746:  %var_2_2746 = add i64 %var_2_2742, 60
; %var_2_900 = add i64 %var_2_890, 60
; Matched:\<badref\>:  store i64 %var_2_2746, i64* %PC, align 8
; store i64 %var_2_900, i64* %var_2_3, align 8
; Matched:%var_2_2747:  %var_2_2747 = inttoptr i64 %var_2_2745 to i64*
; %var_2_901 = inttoptr i64 %var_2_899 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_2237, align 8
; store i64 1, i64* %var_2_901, align 8
%.pre101 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400bdc

block_.L_400bdc:                                  ; preds = %block_400bea, %block_.L_400ba0
%var_2_902 = phi i64 [ %var_2_1005, %block_400bea ], [ %.pre101, %block_.L_400ba0 ]
%var_2_903 = load i64, i64* %RBP.i, align 8
%var_2_904 = add i64 %var_2_903, -24
; Matched:%var_2_618:  %var_2_618 = add i64 %var_2_615, 4
; %var_2_905 = add i64 %var_2_902, 4
; Matched:\<badref\>:  store i64 %var_2_618, i64* %PC, align 8
; store i64 %var_2_905, i64* %var_2_3, align 8
%var_2_906 = inttoptr i64 %var_2_904 to i64*
%var_2_907 = load i64, i64* %var_2_906, align 8
; Matched:\<badref\>:  store i64 %var_2_1061, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_907, i64* %RAX.i1199, align 8
%var_2_908 = add i64 %var_2_903, -40
; Matched:%var_2_622:  %var_2_622 = add i64 %var_2_615, 8
; %var_2_909 = add i64 %var_2_902, 8
; Matched:\<badref\>:  store i64 %var_2_622, i64* %PC, align 8
; store i64 %var_2_909, i64* %var_2_3, align 8
%var_2_910 = inttoptr i64 %var_2_908 to i64*
%var_2_911 = load i64, i64* %var_2_910, align 8
%var_2_912 = sub i64 %var_2_907, %var_2_911
; Matched:%var_2_626:  %var_2_626 = icmp ult i64 %var_2_620, %var_2_624
; %var_2_913 = icmp ult i64 %var_2_907, %var_2_911
; Matched:%var_2_627:  %var_2_627 = zext i1 %var_2_626 to i8
; %var_2_914 = zext i1 %var_2_913 to i8
; Matched:\<badref\>:  store i8 %var_2_627, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_914, i8* %var_2_14, align 1
; Matched:%var_2_628:  %var_2_628 = trunc i64 %var_2_625 to i32
; %var_2_915 = trunc i64 %var_2_912 to i32
; Matched:%var_2_629:  %var_2_629 = and i32 %var_2_628, 255
; %var_2_916 = and i32 %var_2_915, 255
; Matched:%var_2_630:  %var_2_630 = tail call i32 @llvm.ctpop.i32(i32 %var_2_629) #14
; %var_2_917 = tail call i32 @llvm.ctpop.i32(i32 %var_2_916)
; Matched:%var_2_631:  %var_2_631 = trunc i32 %var_2_630 to i8
; %var_2_918 = trunc i32 %var_2_917 to i8
; Matched:%var_2_632:  %var_2_632 = and i8 %var_2_631, 1
; %var_2_919 = and i8 %var_2_918, 1
; Matched:%var_2_633:  %var_2_633 = xor i8 %var_2_632, 1
; %var_2_920 = xor i8 %var_2_919, 1
; Matched:\<badref\>:  store i8 %var_2_633, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_920, i8* %var_2_21, align 1
; Matched:%var_2_634:  %var_2_634 = xor i64 %var_2_624, %var_2_620
; %var_2_921 = xor i64 %var_2_911, %var_2_907
; Matched:%var_2_635:  %var_2_635 = xor i64 %var_2_634, %var_2_625
; %var_2_922 = xor i64 %var_2_921, %var_2_912
; Matched:%var_2_636:  %var_2_636 = lshr i64 %var_2_635, 4
; %var_2_923 = lshr i64 %var_2_922, 4
; Matched:%var_2_637:  %var_2_637 = trunc i64 %var_2_636 to i8
; %var_2_924 = trunc i64 %var_2_923 to i8
; Matched:%var_2_638:  %var_2_638 = and i8 %var_2_637, 1
; %var_2_925 = and i8 %var_2_924, 1
; Matched:\<badref\>:  store i8 %var_2_638, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_925, i8* %var_2_26, align 1
%var_2_926 = icmp eq i64 %var_2_912, 0
; Matched:%var_2_640:  %var_2_640 = zext i1 %var_2_639 to i8
; %var_2_927 = zext i1 %var_2_926 to i8
; Matched:\<badref\>:  store i8 %var_2_640, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_927, i8* %var_2_29, align 1
%var_2_928 = lshr i64 %var_2_912, 63
%var_2_929 = trunc i64 %var_2_928 to i8
; Matched:\<badref\>:  store i8 %var_2_642, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_929, i8* %var_2_32, align 1
%var_2_930 = lshr i64 %var_2_907, 63
%var_2_931 = lshr i64 %var_2_911, 63
%var_2_932 = xor i64 %var_2_931, %var_2_930
%var_2_933 = xor i64 %var_2_928, %var_2_930
%var_2_934 = add nuw nsw i64 %var_2_933, %var_2_932
%var_2_935 = icmp eq i64 %var_2_934, 2
; Matched:%var_2_649:  %var_2_649 = zext i1 %var_2_648 to i8
; %var_2_936 = zext i1 %var_2_935 to i8
; Matched:\<badref\>:  store i8 %var_2_649, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_936, i8* %var_2_38, align 1
%var_2_937 = icmp ne i8 %var_2_929, 0
%var_2_938 = xor i1 %var_2_937, %var_2_935
%.demorgan130 = or i1 %var_2_926, %var_2_938
  %.v142 = select i1 %.demorgan130, i64 14, i64 270
%var_2_939 = add i64 %var_2_902, %.v142
; Matched:\<badref\>:  store i64 %var_2_652, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_939, i64* %var_2_3, align 8
  br i1 %.demorgan130, label %block_400bea, label %block_.L_400cea

block_400bea:                                     ; preds = %block_.L_400bdc
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
%var_2_940 = load double, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
%var_2_941 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
%var_2_942 = fadd double %var_2_940, %var_2_941
%var_2_943 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
%var_2_944 = fadd double %var_2_942, %var_2_943
%var_2_945 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
%var_2_946 = fsub double %var_2_944, %var_2_945
%var_2_947 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
%var_2_948 = fmul double %var_2_946, %var_2_947
store double %var_2_948, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
%var_2_949 = fadd double %var_2_948, %var_2_941
%var_2_950 = fsub double %var_2_949, %var_2_943
%var_2_951 = fadd double %var_2_950, %var_2_945
%var_2_952 = fmul double %var_2_951, %var_2_947
; Matched:\<badref\>:  store double %var_2_89, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
; store double %var_2_952, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
%var_2_953 = bitcast double %var_2_948 to i64
%var_2_954 = fsub double %var_2_948, %var_2_952
%var_2_955 = fadd double %var_2_954, %var_2_943
%var_2_956 = fadd double %var_2_955, %var_2_945
%var_2_957 = fmul double %var_2_956, %var_2_947
store double %var_2_957, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
%var_2_958 = xor i64 %var_2_953, -9223372036854775808
store i64 %var_2_958, i64* %RCX.i1209, align 8
store i8 0, i8* %var_2_14, align 1
%var_2_959 = trunc i64 %var_2_953 to i32
%var_2_960 = and i32 %var_2_959, 255
%var_2_961 = tail call i32 @llvm.ctpop.i32(i32 %var_2_960)
%var_2_962 = trunc i32 %var_2_961 to i8
%var_2_963 = and i8 %var_2_962, 1
%var_2_964 = xor i8 %var_2_963, 1
store i8 %var_2_964, i8* %var_2_21, align 1
%var_2_965 = icmp eq i64 %var_2_958, 0
%var_2_966 = zext i1 %var_2_965 to i8
store i8 %var_2_966, i8* %var_2_29, align 1
%var_2_967 = lshr i64 %var_2_958, 63
%var_2_968 = trunc i64 %var_2_967 to i8
store i8 %var_2_968, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
%.cast36 = bitcast i64 %var_2_958 to double
%var_2_969 = fadd double %.cast36, %var_2_952
%var_2_970 = fadd double %var_2_969, %var_2_957
%var_2_971 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
%var_2_972 = fadd double %var_2_970, %var_2_971
%var_2_973 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
%var_2_974 = fmul double %var_2_972, %var_2_973
store double %var_2_974, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
store double %var_2_974, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
%var_2_975 = load i64, i64* %RBP.i, align 8
%var_2_976 = add i64 %var_2_975, -24
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_652, 243
; %var_2_977 = add i64 %var_2_939, 243
; Matched:\<badref\>:  store i64 %var_2_120, i64* %PC, align 8
; store i64 %var_2_977, i64* %var_2_3, align 8
%var_2_978 = inttoptr i64 %var_2_976 to i64*
; Matched:%var_2_1340:  %var_2_1340 = load i64, i64* %var_2_1339, align 8
; %var_2_979 = load i64, i64* %var_2_978, align 8
; Matched:%var_2_1341:  %var_2_1341 = add i64 %var_2_1340, 1
; %var_2_980 = add i64 %var_2_979, 1
; Matched:\<badref\>:  store i64 %var_2_1341, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_980, i64* %RAX.i1199, align 8
; Matched:%var_2_1342:  %var_2_1342 = icmp eq i64 %var_2_1340, -1
; %var_2_981 = icmp eq i64 %var_2_979, -1
; Matched:%var_2_1159:  %var_2_1159 = icmp eq i64 %var_2_1157, 0
; %var_2_982 = icmp eq i64 %var_2_980, 0
; Matched:%var_2_2669:  %var_2_2669 = or i1 %var_2_2667, %var_2_2668
; %var_2_983 = or i1 %var_2_981, %var_2_982
; Matched:%var_2_2670:  %var_2_2670 = zext i1 %var_2_2669 to i8
; %var_2_984 = zext i1 %var_2_983 to i8
; Matched:\<badref\>:  store i8 %var_2_2670, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_984, i8* %var_2_14, align 1
; Matched:%var_2_2671:  %var_2_2671 = trunc i64 %var_2_2666 to i32
; %var_2_985 = trunc i64 %var_2_980 to i32
; Matched:%var_2_2672:  %var_2_2672 = and i32 %var_2_2671, 255
; %var_2_986 = and i32 %var_2_985, 255
; Matched:%var_2_1291:  %var_2_1291 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1290) #14
; %var_2_987 = tail call i32 @llvm.ctpop.i32(i32 %var_2_986)
; Matched:%var_2_1505:  %var_2_1505 = trunc i32 %var_2_1504 to i8
; %var_2_988 = trunc i32 %var_2_987 to i8
; Matched:%var_2_1293:  %var_2_1293 = and i8 %var_2_1292, 1
; %var_2_989 = and i8 %var_2_988, 1
; Matched:%var_2_1855:  %var_2_1855 = xor i8 %var_2_1854, 1
; %var_2_990 = xor i8 %var_2_989, 1
; Matched:\<badref\>:  store i8 %var_2_1855, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_990, i8* %var_2_21, align 1
; Matched:%var_2_1168:  %var_2_1168 = xor i64 %var_2_1157, %var_2_1156
; %var_2_991 = xor i64 %var_2_980, %var_2_979
; Matched:%var_2_1169:  %var_2_1169 = lshr i64 %var_2_1168, 4
; %var_2_992 = lshr i64 %var_2_991, 4
; Matched:%var_2_2679:  %var_2_2679 = trunc i64 %var_2_2678 to i8
; %var_2_993 = trunc i64 %var_2_992 to i8
; Matched:%var_2_2680:  %var_2_2680 = and i8 %var_2_2679, 1
; %var_2_994 = and i8 %var_2_993, 1
; Matched:\<badref\>:  store i8 %var_2_1171, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_994, i8* %var_2_26, align 1
; Matched:%var_2_2681:  %var_2_2681 = zext i1 %var_2_2668 to i8
; %var_2_995 = zext i1 %var_2_982 to i8
; Matched:\<badref\>:  store i8 %var_2_2681, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_995, i8* %var_2_29, align 1
; Matched:%var_2_1357:  %var_2_1357 = lshr i64 %var_2_1341, 63
; %var_2_996 = lshr i64 %var_2_980, 63
; Matched:%var_2_1301:  %var_2_1301 = trunc i64 %var_2_1300 to i8
; %var_2_997 = trunc i64 %var_2_996 to i8
; Matched:\<badref\>:  store i8 %var_2_1301, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_997, i8* %var_2_32, align 1
; Matched:%var_2_1175:  %var_2_1175 = lshr i64 %var_2_1156, 63
; %var_2_998 = lshr i64 %var_2_979, 63
; Matched:%var_2_1176:  %var_2_1176 = xor i64 %var_2_1173, %var_2_1175
; %var_2_999 = xor i64 %var_2_996, %var_2_998
; Matched:%var_2_1361:  %var_2_1361 = add nuw nsw i64 %var_2_1360, %var_2_1357
; %var_2_1000 = add nuw nsw i64 %var_2_999, %var_2_996
; Matched:%var_2_1362:  %var_2_1362 = icmp eq i64 %var_2_1361, 2
; %var_2_1001 = icmp eq i64 %var_2_1000, 2
; Matched:%var_2_1179:  %var_2_1179 = zext i1 %var_2_1178 to i8
; %var_2_1002 = zext i1 %var_2_1001 to i8
; Matched:\<badref\>:  store i8 %var_2_1179, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1002, i8* %var_2_38, align 1
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_652, 251
; %var_2_1003 = add i64 %var_2_939, 251
; Matched:\<badref\>:  store i64 %var_2_146, i64* %PC, align 8
; store i64 %var_2_1003, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1341, i64* %var_2_1339, align 8
; store i64 %var_2_980, i64* %var_2_978, align 8
%var_2_1004 = load i64, i64* %var_2_3, align 8
%var_2_1005 = add i64 %var_2_1004, -265
; Matched:\<badref\>:  store i64 %var_2_148, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1005, i64* %var_2_3, align 8
  br label %block_.L_400bdc

block_.L_400cea:                                  ; preds = %block_.L_400bdc
%var_2_1006 = add i64 %var_2_903, -176
; Matched:%var_2_1724:  %var_2_1724 = add i64 %var_2_652, 6
; %var_2_1007 = add i64 %var_2_939, 6
; Matched:\<badref\>:  store i64 %var_2_1724, i64* %PC, align 8
; store i64 %var_2_1007, i64* %var_2_3, align 8
%var_2_1008 = inttoptr i64 %var_2_1006 to i32*
%var_2_1009 = load i32, i32* %var_2_1008, align 4
; Matched:%var_2_818:  %var_2_818 = zext i32 %var_2_817 to i64
; %var_2_1010 = zext i32 %var_2_1009 to i64
; Matched:\<badref\>:  store i64 %var_2_818, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1010, i64* %RAX.i1199, align 8
%var_2_1011 = add i64 %var_2_903, -172
; Matched:%var_2_1729:  %var_2_1729 = add i64 %var_2_652, 12
; %var_2_1012 = add i64 %var_2_939, 12
; Matched:\<badref\>:  store i64 %var_2_1729, i64* %PC, align 8
; store i64 %var_2_1012, i64* %var_2_3, align 8
%var_2_1013 = inttoptr i64 %var_2_1011 to i32*
%var_2_1014 = load i32, i32* %var_2_1013, align 4
%var_2_1015 = sub i32 %var_2_1009, %var_2_1014
; Matched:%var_2_591:  %var_2_591 = icmp ult i32 %var_2_584, %var_2_589
; %var_2_1016 = icmp ult i32 %var_2_1009, %var_2_1014
; Matched:%var_2_592:  %var_2_592 = zext i1 %var_2_591 to i8
; %var_2_1017 = zext i1 %var_2_1016 to i8
; Matched:\<badref\>:  store i8 %var_2_592, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1017, i8* %var_2_14, align 1
; Matched:%var_2_1211:  %var_2_1211 = and i32 %var_2_1208, 255
; %var_2_1018 = and i32 %var_2_1015, 255
; Matched:%var_2_1212:  %var_2_1212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1211) #14
; %var_2_1019 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1018)
; Matched:%var_2_526:  %var_2_526 = trunc i32 %var_2_525 to i8
; %var_2_1020 = trunc i32 %var_2_1019 to i8
; Matched:%var_2_1886:  %var_2_1886 = and i8 %var_2_1885, 1
; %var_2_1021 = and i8 %var_2_1020, 1
; Matched:%var_2_528:  %var_2_528 = xor i8 %var_2_527, 1
; %var_2_1022 = xor i8 %var_2_1021, 1
; Matched:\<badref\>:  store i8 %var_2_528, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1022, i8* %var_2_21, align 1
; Matched:%var_2_598:  %var_2_598 = xor i32 %var_2_589, %var_2_584
; %var_2_1023 = xor i32 %var_2_1014, %var_2_1009
; Matched:%var_2_832:  %var_2_832 = xor i32 %var_2_831, %var_2_823
; %var_2_1024 = xor i32 %var_2_1023, %var_2_1015
; Matched:%var_2_1218:  %var_2_1218 = lshr i32 %var_2_1217, 4
; %var_2_1025 = lshr i32 %var_2_1024, 4
; Matched:%var_2_601:  %var_2_601 = trunc i32 %var_2_600 to i8
; %var_2_1026 = trunc i32 %var_2_1025 to i8
; Matched:%var_2_602:  %var_2_602 = and i8 %var_2_601, 1
; %var_2_1027 = and i8 %var_2_1026, 1
; Matched:\<badref\>:  store i8 %var_2_1892, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1027, i8* %var_2_26, align 1
%var_2_1028 = icmp eq i32 %var_2_1015, 0
; Matched:%var_2_1894:  %var_2_1894 = zext i1 %var_2_1893 to i8
; %var_2_1029 = zext i1 %var_2_1028 to i8
; Matched:\<badref\>:  store i8 %var_2_535, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1029, i8* %var_2_29, align 1
; Matched:%var_2_536:  %var_2_536 = lshr i32 %var_2_521, 31
; %var_2_1030 = lshr i32 %var_2_1015, 31
; Matched:%var_2_606:  %var_2_606 = trunc i32 %var_2_605 to i8
; %var_2_1031 = trunc i32 %var_2_1030 to i8
; Matched:\<badref\>:  store i8 %var_2_606, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1031, i8* %var_2_32, align 1
; Matched:%var_2_607:  %var_2_607 = lshr i32 %var_2_584, 31
; %var_2_1032 = lshr i32 %var_2_1009, 31
; Matched:%var_2_539:  %var_2_539 = lshr i32 %var_2_520, 31
; %var_2_1033 = lshr i32 %var_2_1014, 31
; Matched:%var_2_609:  %var_2_609 = xor i32 %var_2_608, %var_2_607
; %var_2_1034 = xor i32 %var_2_1033, %var_2_1032
; Matched:%var_2_843:  %var_2_843 = xor i32 %var_2_838, %var_2_840
; %var_2_1035 = xor i32 %var_2_1030, %var_2_1032
; Matched:%var_2_844:  %var_2_844 = add nuw nsw i32 %var_2_843, %var_2_842
; %var_2_1036 = add nuw nsw i32 %var_2_1035, %var_2_1034
; Matched:%var_2_1230:  %var_2_1230 = icmp eq i32 %var_2_1229, 2
; %var_2_1037 = icmp eq i32 %var_2_1036, 2
; Matched:%var_2_1231:  %var_2_1231 = zext i1 %var_2_1230 to i8
; %var_2_1038 = zext i1 %var_2_1037 to i8
; Matched:\<badref\>:  store i8 %var_2_613, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1038, i8* %var_2_38, align 1
%.v143 = select i1 %var_2_1028, i64 18, i64 71
%var_2_1039 = add i64 %var_2_939, %.v143
; Matched:\<badref\>:  store i64 %var_2_1756, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1039, i64* %var_2_3, align 8
br i1 %var_2_1028, label %block_400cfc, label %block_.L_400d31

block_400cfc:                                     ; preds = %block_.L_400cea
; Matched:%var_2_726:  %var_2_726 = add i64 %var_2_1756, 4
; %var_2_1040 = add i64 %var_2_1039, 4
; Matched:\<badref\>:  store i64 %var_2_726, i64* %PC, align 8
; store i64 %var_2_1040, i64* %var_2_3, align 8
; Matched:%var_2_727:  %var_2_727 = load i64, i64* %var_2_623, align 8
; %var_2_1041 = load i64, i64* %var_2_910, align 8
; Matched:\<badref\>:  store i64 %var_2_727, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1041, i64* %RDI.i1206, align 8
; Matched:%var_2_728:  %var_2_728 = add i64 %var_2_616, -48
; %var_2_1042 = add i64 %var_2_903, -48
; Matched:%var_2_729:  %var_2_729 = add i64 %var_2_1756, 8
; %var_2_1043 = add i64 %var_2_1039, 8
; Matched:\<badref\>:  store i64 %var_2_729, i64* %PC, align 8
; store i64 %var_2_1043, i64* %var_2_3, align 8
; Matched:%var_2_730:  %var_2_730 = inttoptr i64 %var_2_728 to i64*
; %var_2_1044 = inttoptr i64 %var_2_1042 to i64*
; Matched:%var_2_731:  %var_2_731 = load i64, i64* %var_2_730, align 8
; %var_2_1045 = load i64, i64* %var_2_1044, align 8
; Matched:\<badref\>:  store i64 %var_2_731, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1045, i64* %RSI.i1110, align 8
; Matched:%var_2_732:  %var_2_732 = add i64 %var_2_1756, 12
; %var_2_1046 = add i64 %var_2_1039, 12
; Matched:\<badref\>:  store i64 %var_2_732, i64* %PC, align 8
; store i64 %var_2_1046, i64* %var_2_3, align 8
; Matched:%var_2_733:  %var_2_733 = load i64, i64* %var_2_623, align 8
; %var_2_1047 = load i64, i64* %var_2_910, align 8
; Matched:\<badref\>:  store i64 %var_2_733, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1047, i64* %RDX.i596, align 8
%var_2_1048 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_1048, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1049 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_1049, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_1050 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
store i64 %var_2_1050, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1051 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
store i64 %var_2_1051, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_1052 = add i64 %var_2_1039, 2292
; Matched:%var_2_739:  %var_2_739 = add i64 %var_2_1756, 53
; %var_2_1053 = add i64 %var_2_1039, 53
%var_2_1054 = load i64, i64* %var_2_6, align 8
%var_2_1055 = add i64 %var_2_1054, -8
; Matched:%var_2_742:  %var_2_742 = inttoptr i64 %var_2_741 to i64*
; %var_2_1056 = inttoptr i64 %var_2_1055 to i64*
; Matched:\<badref\>:  store i64 %var_2_739, i64* %var_2_742, align 8
; store i64 %var_2_1053, i64* %var_2_1056, align 8
; Matched:\<badref\>:  store i64 %var_2_2566, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1055, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_738, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1052, i64* %var_2_3, align 8
%call2_400d2c = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_1052, %struct.Memory* %MEMORY.4)
  %.pre102 = load i64, i64* %RBP.i, align 8
; Matched:  %.pre414 = load i64, i64* %PC, align 8
; %.pre103 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d31

block_.L_400d31:                                  ; preds = %block_.L_400cea, %block_400cfc
; Matched:%var_2_1257:  %var_2_1257 = phi i64 [ %var_2_1756, %block_400cea ], [ %.pre414, %block_400cfc ]
; %var_2_1057 = phi i64 [ %var_2_1039, %block_.L_400cea ], [ %.pre103, %block_400cfc ]
; Matched:%var_2_1905:  %var_2_1905 = phi i64 [ %var_2_2268, %block_4013ad ], [ %.pre432, %block_4013bf ]
; %var_2_1058 = phi i64 [ %var_2_903, %block_.L_400cea ], [ %.pre102, %block_400cfc ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_.L_400cea ], [ %call2_400d2c, %block_400cfc ]
; Matched:%var_2_1269:  %var_2_1269 = add i64 %var_2_1267, -24
; %var_2_1059 = add i64 %var_2_1058, -24
; Matched:%var_2_1260:  %var_2_1260 = add i64 %var_2_1257, 8
; %var_2_1060 = add i64 %var_2_1057, 8
; Matched:\<badref\>:  store i64 %var_2_1260, i64* %PC, align 8
; store i64 %var_2_1060, i64* %var_2_3, align 8
; Matched:%var_2_1909:  %var_2_1909 = inttoptr i64 %var_2_1907 to i64*
; %var_2_1061 = inttoptr i64 %var_2_1059 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1634, align 8
; store i64 1, i64* %var_2_1061, align 8
%.pre104 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400d39

block_.L_400d39:                                  ; preds = %block_400d47, %block_.L_400d31
%var_2_1062 = phi i64 [ %var_2_1136, %block_400d47 ], [ %.pre104, %block_.L_400d31 ]
%var_2_1063 = load i64, i64* %RBP.i, align 8
%var_2_1064 = add i64 %var_2_1063, -24
; Matched:%var_2_1760:  %var_2_1760 = add i64 %var_2_1757, 4
; %var_2_1065 = add i64 %var_2_1062, 4
; Matched:\<badref\>:  store i64 %var_2_1760, i64* %PC, align 8
; store i64 %var_2_1065, i64* %var_2_3, align 8
%var_2_1066 = inttoptr i64 %var_2_1064 to i64*
%var_2_1067 = load i64, i64* %var_2_1066, align 8
; Matched:\<badref\>:  store i64 %var_2_1003, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1067, i64* %RAX.i1199, align 8
%var_2_1068 = add i64 %var_2_1063, -48
; Matched:%var_2_1764:  %var_2_1764 = add i64 %var_2_1757, 8
; %var_2_1069 = add i64 %var_2_1062, 8
; Matched:\<badref\>:  store i64 %var_2_1764, i64* %PC, align 8
; store i64 %var_2_1069, i64* %var_2_3, align 8
%var_2_1070 = inttoptr i64 %var_2_1068 to i64*
%var_2_1071 = load i64, i64* %var_2_1070, align 8
%var_2_1072 = sub i64 %var_2_1067, %var_2_1071
; Matched:%var_2_1768:  %var_2_1768 = icmp ult i64 %var_2_1762, %var_2_1766
; %var_2_1073 = icmp ult i64 %var_2_1067, %var_2_1071
; Matched:%var_2_1769:  %var_2_1769 = zext i1 %var_2_1768 to i8
; %var_2_1074 = zext i1 %var_2_1073 to i8
; Matched:\<badref\>:  store i8 %var_2_1769, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1074, i8* %var_2_14, align 1
; Matched:%var_2_1770:  %var_2_1770 = trunc i64 %var_2_1767 to i32
; %var_2_1075 = trunc i64 %var_2_1072 to i32
; Matched:%var_2_1771:  %var_2_1771 = and i32 %var_2_1770, 255
; %var_2_1076 = and i32 %var_2_1075, 255
; Matched:%var_2_1772:  %var_2_1772 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1771) #14
; %var_2_1077 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1076)
; Matched:%var_2_1773:  %var_2_1773 = trunc i32 %var_2_1772 to i8
; %var_2_1078 = trunc i32 %var_2_1077 to i8
; Matched:%var_2_1774:  %var_2_1774 = and i8 %var_2_1773, 1
; %var_2_1079 = and i8 %var_2_1078, 1
; Matched:%var_2_1775:  %var_2_1775 = xor i8 %var_2_1774, 1
; %var_2_1080 = xor i8 %var_2_1079, 1
; Matched:\<badref\>:  store i8 %var_2_1775, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1080, i8* %var_2_21, align 1
; Matched:%var_2_1776:  %var_2_1776 = xor i64 %var_2_1766, %var_2_1762
; %var_2_1081 = xor i64 %var_2_1071, %var_2_1067
; Matched:%var_2_1777:  %var_2_1777 = xor i64 %var_2_1776, %var_2_1767
; %var_2_1082 = xor i64 %var_2_1081, %var_2_1072
; Matched:%var_2_1778:  %var_2_1778 = lshr i64 %var_2_1777, 4
; %var_2_1083 = lshr i64 %var_2_1082, 4
; Matched:%var_2_1779:  %var_2_1779 = trunc i64 %var_2_1778 to i8
; %var_2_1084 = trunc i64 %var_2_1083 to i8
; Matched:%var_2_1780:  %var_2_1780 = and i8 %var_2_1779, 1
; %var_2_1085 = and i8 %var_2_1084, 1
; Matched:\<badref\>:  store i8 %var_2_1780, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1085, i8* %var_2_26, align 1
%var_2_1086 = icmp eq i64 %var_2_1072, 0
; Matched:%var_2_1782:  %var_2_1782 = zext i1 %var_2_1781 to i8
; %var_2_1087 = zext i1 %var_2_1086 to i8
; Matched:\<badref\>:  store i8 %var_2_1782, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1087, i8* %var_2_29, align 1
%var_2_1088 = lshr i64 %var_2_1072, 63
%var_2_1089 = trunc i64 %var_2_1088 to i8
; Matched:\<badref\>:  store i8 %var_2_1784, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1089, i8* %var_2_32, align 1
%var_2_1090 = lshr i64 %var_2_1067, 63
%var_2_1091 = lshr i64 %var_2_1071, 63
%var_2_1092 = xor i64 %var_2_1091, %var_2_1090
%var_2_1093 = xor i64 %var_2_1088, %var_2_1090
%var_2_1094 = add nuw nsw i64 %var_2_1093, %var_2_1092
%var_2_1095 = icmp eq i64 %var_2_1094, 2
; Matched:%var_2_1791:  %var_2_1791 = zext i1 %var_2_1790 to i8
; %var_2_1096 = zext i1 %var_2_1095 to i8
; Matched:\<badref\>:  store i8 %var_2_1791, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1096, i8* %var_2_38, align 1
%var_2_1097 = icmp ne i8 %var_2_1089, 0
%var_2_1098 = xor i1 %var_2_1097, %var_2_1095
%.demorgan131 = or i1 %var_2_1086, %var_2_1098
  %.v144 = select i1 %.demorgan131, i64 14, i64 46
%var_2_1099 = add i64 %var_2_1062, %.v144
; Matched:\<badref\>:  store i64 %var_2_1794, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1099, i64* %var_2_3, align 8
  br i1 %.demorgan131, label %block_400d47, label %block_.L_400d67

block_400d47:                                     ; preds = %block_.L_400d39
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI.i1206, align 8
%var_2_1100 = add i64 %var_2_1099, 2329
; Matched:%var_2_1273:  %var_2_1273 = add i64 %var_2_1794, 15
; %var_2_1101 = add i64 %var_2_1099, 15
%var_2_1102 = load i64, i64* %var_2_6, align 8
%var_2_1103 = add i64 %var_2_1102, -8
; Matched:%var_2_1276:  %var_2_1276 = inttoptr i64 %var_2_1275 to i64*
; %var_2_1104 = inttoptr i64 %var_2_1103 to i64*
; Matched:\<badref\>:  store i64 %var_2_1273, i64* %var_2_1276, align 8
; store i64 %var_2_1101, i64* %var_2_1104, align 8
; Matched:\<badref\>:  store i64 %var_2_164, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1103, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1272, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1100, i64* %var_2_3, align 8
%call2_400d51 = tail call %struct.Memory* @sub_401660.PA(%struct.State* nonnull %0, i64 %var_2_1100, %struct.Memory* %MEMORY.8)
%var_2_1105 = load i64, i64* %RBP.i, align 8
%var_2_1106 = add i64 %var_2_1105, -24
%var_2_1107 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1494:  %var_2_1494 = add i64 %var_2_1493, 4
; %var_2_1108 = add i64 %var_2_1107, 4
; Matched:\<badref\>:  store i64 %var_2_1494, i64* %PC, align 8
; store i64 %var_2_1108, i64* %var_2_3, align 8
%var_2_1109 = inttoptr i64 %var_2_1106 to i64*
; Matched:%var_2_2665:  %var_2_2665 = load i64, i64* %var_2_2664, align 8
; %var_2_1110 = load i64, i64* %var_2_1109, align 8
; Matched:%var_2_2666:  %var_2_2666 = add i64 %var_2_2665, 1
; %var_2_1111 = add i64 %var_2_1110, 1
; Matched:\<badref\>:  store i64 %var_2_1497, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1111, i64* %RAX.i1199, align 8
; Matched:%var_2_1285:  %var_2_1285 = icmp eq i64 %var_2_1283, -1
; %var_2_1112 = icmp eq i64 %var_2_1110, -1
; Matched:%var_2_1499:  %var_2_1499 = icmp eq i64 %var_2_1497, 0
; %var_2_1113 = icmp eq i64 %var_2_1111, 0
; Matched:%var_2_126:  %var_2_126 = or i1 %var_2_124, %var_2_125
; %var_2_1114 = or i1 %var_2_1112, %var_2_1113
; Matched:%var_2_1288:  %var_2_1288 = zext i1 %var_2_1287 to i8
; %var_2_1115 = zext i1 %var_2_1114 to i8
; Matched:\<badref\>:  store i8 %var_2_1849, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1115, i8* %var_2_14, align 1
; Matched:%var_2_128:  %var_2_128 = trunc i64 %var_2_123 to i32
; %var_2_1116 = trunc i64 %var_2_1111 to i32
; Matched:%var_2_129:  %var_2_129 = and i32 %var_2_128, 255
; %var_2_1117 = and i32 %var_2_1116, 255
; Matched:%var_2_2248:  %var_2_2248 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2247) #14
; %var_2_1118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1117)
; Matched:%var_2_2249:  %var_2_2249 = trunc i32 %var_2_2248 to i8
; %var_2_1119 = trunc i32 %var_2_1118 to i8
; Matched:%var_2_2250:  %var_2_2250 = and i8 %var_2_2249, 1
; %var_2_1120 = and i8 %var_2_1119, 1
; Matched:%var_2_133:  %var_2_133 = xor i8 %var_2_132, 1
; %var_2_1121 = xor i8 %var_2_1120, 1
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1121, i8* %var_2_21, align 1
; Matched:%var_2_1508:  %var_2_1508 = xor i64 %var_2_1497, %var_2_1496
; %var_2_1122 = xor i64 %var_2_1111, %var_2_1110
; Matched:%var_2_1509:  %var_2_1509 = lshr i64 %var_2_1508, 4
; %var_2_1123 = lshr i64 %var_2_1122, 4
; Matched:%var_2_136:  %var_2_136 = trunc i64 %var_2_135 to i8
; %var_2_1124 = trunc i64 %var_2_1123 to i8
; Matched:%var_2_137:  %var_2_137 = and i8 %var_2_136, 1
; %var_2_1125 = and i8 %var_2_1124, 1
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1125, i8* %var_2_26, align 1
; Matched:%var_2_138:  %var_2_138 = zext i1 %var_2_125 to i8
; %var_2_1126 = zext i1 %var_2_1113 to i8
; Matched:\<badref\>:  store i8 %var_2_138, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1126, i8* %var_2_29, align 1
; Matched:%var_2_1513:  %var_2_1513 = lshr i64 %var_2_1497, 63
; %var_2_1127 = lshr i64 %var_2_1111, 63
; Matched:%var_2_1514:  %var_2_1514 = trunc i64 %var_2_1513 to i8
; %var_2_1128 = trunc i64 %var_2_1127 to i8
; Matched:\<badref\>:  store i8 %var_2_1514, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1128, i8* %var_2_32, align 1
; Matched:%var_2_1302:  %var_2_1302 = lshr i64 %var_2_1283, 63
; %var_2_1129 = lshr i64 %var_2_1110, 63
; Matched:%var_2_1303:  %var_2_1303 = xor i64 %var_2_1300, %var_2_1302
; %var_2_1130 = xor i64 %var_2_1127, %var_2_1129
; Matched:%var_2_143:  %var_2_143 = add nuw nsw i64 %var_2_142, %var_2_139
; %var_2_1131 = add nuw nsw i64 %var_2_1130, %var_2_1127
; Matched:%var_2_2687:  %var_2_2687 = icmp eq i64 %var_2_2686, 2
; %var_2_1132 = icmp eq i64 %var_2_1131, 2
; Matched:%var_2_1306:  %var_2_1306 = zext i1 %var_2_1305 to i8
; %var_2_1133 = zext i1 %var_2_1132 to i8
; Matched:\<badref\>:  store i8 %var_2_1306, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1133, i8* %var_2_38, align 1
; Matched:%var_2_1307:  %var_2_1307 = add i64 %var_2_1280, 12
; %var_2_1134 = add i64 %var_2_1107, 12
; Matched:\<badref\>:  store i64 %var_2_1520, i64* %PC, align 8
; store i64 %var_2_1134, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_2666, i64* %var_2_2664, align 8
; store i64 %var_2_1111, i64* %var_2_1109, align 8
%var_2_1135 = load i64, i64* %var_2_3, align 8
%var_2_1136 = add i64 %var_2_1135, -41
; Matched:\<badref\>:  store i64 %var_2_1309, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1136, i64* %var_2_3, align 8
  br label %block_.L_400d39

block_.L_400d67:                                  ; preds = %block_.L_400d39
%var_2_1137 = add i64 %var_2_1063, -176
; Matched:%var_2_582:  %var_2_582 = add i64 %var_2_1794, 6
; %var_2_1138 = add i64 %var_2_1099, 6
; Matched:\<badref\>:  store i64 %var_2_582, i64* %PC, align 8
; store i64 %var_2_1138, i64* %var_2_3, align 8
%var_2_1139 = inttoptr i64 %var_2_1137 to i32*
%var_2_1140 = load i32, i32* %var_2_1139, align 4
; Matched:%var_2_550:  %var_2_550 = zext i32 %var_2_549 to i64
; %var_2_1141 = zext i32 %var_2_1140 to i64
; Matched:\<badref\>:  store i64 %var_2_550, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1141, i64* %RAX.i1199, align 8
%var_2_1142 = add i64 %var_2_1063, -172
; Matched:%var_2_587:  %var_2_587 = add i64 %var_2_1794, 12
; %var_2_1143 = add i64 %var_2_1099, 12
; Matched:\<badref\>:  store i64 %var_2_587, i64* %PC, align 8
; store i64 %var_2_1143, i64* %var_2_3, align 8
%var_2_1144 = inttoptr i64 %var_2_1142 to i32*
%var_2_1145 = load i32, i32* %var_2_1144, align 4
%var_2_1146 = sub i32 %var_2_1140, %var_2_1145
; Matched:%var_2_973:  %var_2_973 = icmp ult i32 %var_2_966, %var_2_971
; %var_2_1147 = icmp ult i32 %var_2_1140, %var_2_1145
; Matched:%var_2_1734:  %var_2_1734 = zext i1 %var_2_1733 to i8
; %var_2_1148 = zext i1 %var_2_1147 to i8
; Matched:\<badref\>:  store i8 %var_2_974, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1148, i8* %var_2_14, align 1
; Matched:%var_2_1735:  %var_2_1735 = and i32 %var_2_1732, 255
; %var_2_1149 = and i32 %var_2_1146, 255
; Matched:%var_2_1736:  %var_2_1736 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1735) #14
; %var_2_1150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1149)
; Matched:%var_2_828:  %var_2_828 = trunc i32 %var_2_827 to i8
; %var_2_1151 = trunc i32 %var_2_1150 to i8
; Matched:%var_2_829:  %var_2_829 = and i8 %var_2_828, 1
; %var_2_1152 = and i8 %var_2_1151, 1
; Matched:%var_2_830:  %var_2_830 = xor i8 %var_2_829, 1
; %var_2_1153 = xor i8 %var_2_1152, 1
; Matched:\<badref\>:  store i8 %var_2_1215, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1153, i8* %var_2_21, align 1
; Matched:%var_2_831:  %var_2_831 = xor i32 %var_2_822, %var_2_817
; %var_2_1154 = xor i32 %var_2_1145, %var_2_1140
; Matched:%var_2_981:  %var_2_981 = xor i32 %var_2_980, %var_2_972
; %var_2_1155 = xor i32 %var_2_1154, %var_2_1146
; Matched:%var_2_982:  %var_2_982 = lshr i32 %var_2_981, 4
; %var_2_1156 = lshr i32 %var_2_1155, 4
; Matched:%var_2_834:  %var_2_834 = trunc i32 %var_2_833 to i8
; %var_2_1157 = trunc i32 %var_2_1156 to i8
; Matched:%var_2_835:  %var_2_835 = and i8 %var_2_834, 1
; %var_2_1158 = and i8 %var_2_1157, 1
; Matched:\<badref\>:  store i8 %var_2_1220, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1158, i8* %var_2_26, align 1
%var_2_1159 = icmp eq i32 %var_2_1146, 0
; Matched:%var_2_604:  %var_2_604 = zext i1 %var_2_603 to i8
; %var_2_1160 = zext i1 %var_2_1159 to i8
; Matched:\<badref\>:  store i8 %var_2_837, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1160, i8* %var_2_29, align 1
; Matched:%var_2_987:  %var_2_987 = lshr i32 %var_2_972, 31
; %var_2_1161 = lshr i32 %var_2_1146, 31
; Matched:%var_2_1748:  %var_2_1748 = trunc i32 %var_2_1747 to i8
; %var_2_1162 = trunc i32 %var_2_1161 to i8
; Matched:\<badref\>:  store i8 %var_2_988, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1162, i8* %var_2_32, align 1
; Matched:%var_2_989:  %var_2_989 = lshr i32 %var_2_966, 31
; %var_2_1163 = lshr i32 %var_2_1140, 31
; Matched:%var_2_1750:  %var_2_1750 = lshr i32 %var_2_1731, 31
; %var_2_1164 = lshr i32 %var_2_1145, 31
; Matched:%var_2_1751:  %var_2_1751 = xor i32 %var_2_1750, %var_2_1749
; %var_2_1165 = xor i32 %var_2_1164, %var_2_1163
; Matched:%var_2_575:  %var_2_575 = xor i32 %var_2_570, %var_2_572
; %var_2_1166 = xor i32 %var_2_1161, %var_2_1163
; Matched:%var_2_576:  %var_2_576 = add nuw nsw i32 %var_2_575, %var_2_574
; %var_2_1167 = add nuw nsw i32 %var_2_1166, %var_2_1165
; Matched:%var_2_1754:  %var_2_1754 = icmp eq i32 %var_2_1753, 2
; %var_2_1168 = icmp eq i32 %var_2_1167, 2
; Matched:%var_2_1755:  %var_2_1755 = zext i1 %var_2_1754 to i8
; %var_2_1169 = zext i1 %var_2_1168 to i8
; Matched:\<badref\>:  store i8 %var_2_995, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1169, i8* %var_2_38, align 1
%.v145 = select i1 %var_2_1159, i64 18, i64 71
%var_2_1170 = add i64 %var_2_1099, %.v145
; Matched:\<badref\>:  store i64 %var_2_614, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1170, i64* %var_2_3, align 8
br i1 %var_2_1159, label %block_400d79, label %block_.L_400dae

block_400d79:                                     ; preds = %block_.L_400d67
; Matched:%var_2_149:  %var_2_149 = add i64 %var_2_614, 4
; %var_2_1171 = add i64 %var_2_1170, 4
; Matched:\<badref\>:  store i64 %var_2_149, i64* %PC, align 8
; store i64 %var_2_1171, i64* %var_2_3, align 8
; Matched:%var_2_150:  %var_2_150 = load i64, i64* %var_2_1765, align 8
; %var_2_1172 = load i64, i64* %var_2_1070, align 8
; Matched:\<badref\>:  store i64 %var_2_150, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1172, i64* %RDI.i1206, align 8
; Matched:%var_2_151:  %var_2_151 = add i64 %var_2_1758, -40
; %var_2_1173 = add i64 %var_2_1063, -40
; Matched:%var_2_152:  %var_2_152 = add i64 %var_2_614, 8
; %var_2_1174 = add i64 %var_2_1170, 8
; Matched:\<badref\>:  store i64 %var_2_152, i64* %PC, align 8
; store i64 %var_2_1174, i64* %var_2_3, align 8
; Matched:%var_2_153:  %var_2_153 = inttoptr i64 %var_2_151 to i64*
; %var_2_1175 = inttoptr i64 %var_2_1173 to i64*
; Matched:%var_2_154:  %var_2_154 = load i64, i64* %var_2_153, align 8
; %var_2_1176 = load i64, i64* %var_2_1175, align 8
; Matched:\<badref\>:  store i64 %var_2_154, i64* %RSI, align 8, !tbaa !1261
; store i64 %var_2_1176, i64* %RSI.i1110, align 8
; Matched:%var_2_155:  %var_2_155 = add i64 %var_2_614, 12
; %var_2_1177 = add i64 %var_2_1170, 12
; Matched:\<badref\>:  store i64 %var_2_155, i64* %PC, align 8
; store i64 %var_2_1177, i64* %var_2_3, align 8
; Matched:%var_2_156:  %var_2_156 = load i64, i64* %var_2_153, align 8
; %var_2_1178 = load i64, i64* %var_2_1175, align 8
; Matched:\<badref\>:  store i64 %var_2_156, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1178, i64* %RDX.i596, align 8
%var_2_1179 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_1179, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1180 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_1180, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_1181 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
store i64 %var_2_1181, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1182 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
store i64 %var_2_1182, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_1183 = add i64 %var_2_1170, 2167
; Matched:%var_2_162:  %var_2_162 = add i64 %var_2_614, 53
; %var_2_1184 = add i64 %var_2_1170, 53
%var_2_1185 = load i64, i64* %var_2_6, align 8
%var_2_1186 = add i64 %var_2_1185, -8
; Matched:%var_2_165:  %var_2_165 = inttoptr i64 %var_2_164 to i64*
; %var_2_1187 = inttoptr i64 %var_2_1186 to i64*
; Matched:\<badref\>:  store i64 %var_2_162, i64* %var_2_165, align 8
; store i64 %var_2_1184, i64* %var_2_1187, align 8
; Matched:\<badref\>:  store i64 %var_2_684, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1186, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_161, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1183, i64* %var_2_3, align 8
%call2_400da9 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_1183, %struct.Memory* %MEMORY.8)
; Matched:  %.pre416 = load i64, i64* %PC, align 8
; %.pre105 = load i64, i64* %var_2_3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400dae

block_.L_400dae:                                  ; preds = %block_.L_400d67, %block_400d79
; Matched:%var_2_1267:  %var_2_1267 = phi i64 [ %var_2_1758, %block_400d67 ], [ %.pre417, %block_400d79 ]
; %var_2_1188 = phi i64 [ %var_2_1063, %block_.L_400d67 ], [ %.pre106, %block_400d79 ]
; Matched:%var_2_1268:  %var_2_1268 = phi i64 [ %var_2_614, %block_400d67 ], [ %.pre416, %block_400d79 ]
; %var_2_1189 = phi i64 [ %var_2_1170, %block_.L_400d67 ], [ %.pre105, %block_400d79 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400d67 ], [ %call2_400da9, %block_400d79 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
; Matched:%var_2_2235:  %var_2_2235 = add i64 %var_2_2230, -24
; %var_2_1190 = add i64 %var_2_1188, -24
; Matched:%var_2_1270:  %var_2_1270 = add i64 %var_2_1268, 19
; %var_2_1191 = add i64 %var_2_1189, 19
; Matched:\<badref\>:  store i64 %var_2_1270, i64* %PC, align 8
; store i64 %var_2_1191, i64* %var_2_3, align 8
; Matched:%var_2_1271:  %var_2_1271 = inttoptr i64 %var_2_1269 to i64*
; %var_2_1192 = inttoptr i64 %var_2_1190 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1909, align 8
; store i64 1, i64* %var_2_1192, align 8
%.pre107 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400dc1

block_.L_400dc1:                                  ; preds = %block_.L_400e4a, %block_.L_400dae
%var_2_1193 = phi i32 [ %var_2_1284, %block_.L_400e4a ], [ 1, %block_.L_400dae ]
%var_2_1194 = phi i64 [ %var_2_1312, %block_.L_400e4a ], [ %.pre107, %block_.L_400dae ]
%var_2_1195 = load i64, i64* %RBP.i, align 8
%var_2_1196 = add i64 %var_2_1195, -24
; Matched:%var_2_875:  %var_2_875 = add i64 %var_2_872, 4
; %var_2_1197 = add i64 %var_2_1194, 4
; Matched:\<badref\>:  store i64 %var_2_875, i64* %PC, align 8
; store i64 %var_2_1197, i64* %var_2_3, align 8
%var_2_1198 = inttoptr i64 %var_2_1196 to i64*
%var_2_1199 = load i64, i64* %var_2_1198, align 8
; Matched:\<badref\>:  store i64 %var_2_1570, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1199, i64* %RAX.i1199, align 8
%var_2_1200 = add i64 %var_2_1195, -56
; Matched:%var_2_879:  %var_2_879 = add i64 %var_2_872, 8
; %var_2_1201 = add i64 %var_2_1194, 8
; Matched:\<badref\>:  store i64 %var_2_879, i64* %PC, align 8
; store i64 %var_2_1201, i64* %var_2_3, align 8
%var_2_1202 = inttoptr i64 %var_2_1200 to i64*
%var_2_1203 = load i64, i64* %var_2_1202, align 8
%var_2_1204 = sub i64 %var_2_1199, %var_2_1203
; Matched:%var_2_883:  %var_2_883 = icmp ult i64 %var_2_877, %var_2_881
; %var_2_1205 = icmp ult i64 %var_2_1199, %var_2_1203
; Matched:%var_2_884:  %var_2_884 = zext i1 %var_2_883 to i8
; %var_2_1206 = zext i1 %var_2_1205 to i8
; Matched:\<badref\>:  store i8 %var_2_884, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1206, i8* %var_2_14, align 1
; Matched:%var_2_885:  %var_2_885 = trunc i64 %var_2_882 to i32
; %var_2_1207 = trunc i64 %var_2_1204 to i32
; Matched:%var_2_886:  %var_2_886 = and i32 %var_2_885, 255
; %var_2_1208 = and i32 %var_2_1207, 255
; Matched:%var_2_887:  %var_2_887 = tail call i32 @llvm.ctpop.i32(i32 %var_2_886) #14
; %var_2_1209 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1208)
; Matched:%var_2_888:  %var_2_888 = trunc i32 %var_2_887 to i8
; %var_2_1210 = trunc i32 %var_2_1209 to i8
; Matched:%var_2_889:  %var_2_889 = and i8 %var_2_888, 1
; %var_2_1211 = and i8 %var_2_1210, 1
; Matched:%var_2_890:  %var_2_890 = xor i8 %var_2_889, 1
; %var_2_1212 = xor i8 %var_2_1211, 1
; Matched:\<badref\>:  store i8 %var_2_890, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1212, i8* %var_2_21, align 1
; Matched:%var_2_891:  %var_2_891 = xor i64 %var_2_881, %var_2_877
; %var_2_1213 = xor i64 %var_2_1203, %var_2_1199
; Matched:%var_2_892:  %var_2_892 = xor i64 %var_2_891, %var_2_882
; %var_2_1214 = xor i64 %var_2_1213, %var_2_1204
; Matched:%var_2_893:  %var_2_893 = lshr i64 %var_2_892, 4
; %var_2_1215 = lshr i64 %var_2_1214, 4
; Matched:%var_2_894:  %var_2_894 = trunc i64 %var_2_893 to i8
; %var_2_1216 = trunc i64 %var_2_1215 to i8
; Matched:%var_2_895:  %var_2_895 = and i8 %var_2_894, 1
; %var_2_1217 = and i8 %var_2_1216, 1
; Matched:\<badref\>:  store i8 %var_2_895, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1217, i8* %var_2_26, align 1
%var_2_1218 = icmp eq i64 %var_2_1204, 0
; Matched:%var_2_897:  %var_2_897 = zext i1 %var_2_896 to i8
; %var_2_1219 = zext i1 %var_2_1218 to i8
; Matched:\<badref\>:  store i8 %var_2_897, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1219, i8* %var_2_29, align 1
%var_2_1220 = lshr i64 %var_2_1204, 63
%var_2_1221 = trunc i64 %var_2_1220 to i8
; Matched:\<badref\>:  store i8 %var_2_899, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1221, i8* %var_2_32, align 1
%var_2_1222 = lshr i64 %var_2_1199, 63
%var_2_1223 = lshr i64 %var_2_1203, 63
%var_2_1224 = xor i64 %var_2_1223, %var_2_1222
%var_2_1225 = xor i64 %var_2_1220, %var_2_1222
%var_2_1226 = add nuw nsw i64 %var_2_1225, %var_2_1224
%var_2_1227 = icmp eq i64 %var_2_1226, 2
; Matched:%var_2_906:  %var_2_906 = zext i1 %var_2_905 to i8
; %var_2_1228 = zext i1 %var_2_1227 to i8
; Matched:\<badref\>:  store i8 %var_2_906, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1228, i8* %var_2_38, align 1
%var_2_1229 = icmp ne i8 %var_2_1221, 0
%var_2_1230 = xor i1 %var_2_1229, %var_2_1227
%.demorgan132 = or i1 %var_2_1218, %var_2_1230
  %.v146 = select i1 %.demorgan132, i64 14, i64 159
%var_2_1231 = add i64 %var_2_1194, %.v146
; Matched:\<badref\>:  store i64 %var_2_909, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1231, i64* %var_2_3, align 8
  br i1 %.demorgan132, label %block_400dcf, label %block_.L_400e60

block_400dcf:                                     ; preds = %block_.L_400dc1
%var_2_1232 = add nsw i32 %var_2_1193, -1
%var_2_1233 = icmp eq i32 %var_2_1193, 0
%var_2_1234 = zext i1 %var_2_1233 to i8
store i8 %var_2_1234, i8* %var_2_14, align 1
%var_2_1235 = and i32 %var_2_1232, 255
%var_2_1236 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1235)
%var_2_1237 = trunc i32 %var_2_1236 to i8
%var_2_1238 = and i8 %var_2_1237, 1
%var_2_1239 = xor i8 %var_2_1238, 1
store i8 %var_2_1239, i8* %var_2_21, align 1
%var_2_1240 = xor i32 %var_2_1232, %var_2_1193
%var_2_1241 = lshr i32 %var_2_1240, 4
%var_2_1242 = trunc i32 %var_2_1241 to i8
%var_2_1243 = and i8 %var_2_1242, 1
store i8 %var_2_1243, i8* %var_2_26, align 1
%var_2_1244 = icmp eq i32 %var_2_1232, 0
%var_2_1245 = zext i1 %var_2_1244 to i8
store i8 %var_2_1245, i8* %var_2_29, align 1
%var_2_1246 = lshr i32 %var_2_1232, 31
%var_2_1247 = trunc i32 %var_2_1246 to i8
store i8 %var_2_1247, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%.v161 = select i1 %var_2_1244, i64 14, i64 30
%var_2_1248 = add i64 %var_2_1231, %.v161
%var_2_1249 = add i64 %var_2_1248, 11
store i64 %var_2_1249, i64* %var_2_3, align 8
br i1 %var_2_1244, label %block_400ddd, label %block_.L_400ded

block_400ddd:                                     ; preds = %block_400dcf
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1250 = add i64 %var_2_1248, 27
store i64 %var_2_1250, i64* %var_2_3, align 8
  br label %block_.L_400df8

block_.L_400ded:                                  ; preds = %block_400dcf
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400df8

block_.L_400df8:                                  ; preds = %block_.L_400ded, %block_400ddd
%var_2_1251 = phi i32 [ 1, %block_.L_400ded ], [ 0, %block_400ddd ]
%var_2_1252 = phi i64 [ %var_2_1249, %block_.L_400ded ], [ %var_2_1250, %block_400ddd ]
store i8 0, i8* %var_2_14, align 1
%var_2_1253 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1251)
%var_2_1254 = trunc i32 %var_2_1253 to i8
%var_2_1255 = xor i8 %var_2_1254, 1
store i8 %var_2_1255, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
%var_2_1256 = icmp eq i32 %var_2_1251, 0
%var_2_1257 = trunc i32 %var_2_1251 to i8
%var_2_1258 = xor i8 %var_2_1257, 1
store i8 %var_2_1258, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%.v162 = select i1 %var_2_1256, i64 30, i64 14
%var_2_1259 = add i64 %var_2_1252, %.v162
%var_2_1260 = add i64 %var_2_1259, 11
store i64 %var_2_1260, i64* %var_2_3, align 8
br i1 %var_2_1256, label %block_.L_400e16, label %block_400e06

block_400e06:                                     ; preds = %block_.L_400df8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1261 = add i64 %var_2_1259, 27
store i64 %var_2_1261, i64* %var_2_3, align 8
  br label %block_.L_400e21

block_.L_400e16:                                  ; preds = %block_.L_400df8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400e21

block_.L_400e21:                                  ; preds = %block_.L_400e16, %block_400e06
%var_2_1262 = phi i32 [ 1, %block_.L_400e16 ], [ 0, %block_400e06 ]
%var_2_1263 = phi i64 [ %var_2_1260, %block_.L_400e16 ], [ %var_2_1261, %block_400e06 ]
%var_2_1264 = add nsw i32 %var_2_1262, -1
; Matched:%var_2_1638:  %var_2_1638 = trunc i32 %var_2_1635 to i8
; %var_2_1265 = trunc i32 %var_2_1262 to i8
; Matched:%var_2_1639:  %var_2_1639 = xor i8 %var_2_1638, 1
; %var_2_1266 = xor i8 %var_2_1265, 1
; Matched:\<badref\>:  store i8 %var_2_1639, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1266, i8* %var_2_14, align 1
; Matched:%var_2_1640:  %var_2_1640 = and i32 %var_2_1637, 255
; %var_2_1267 = and i32 %var_2_1264, 255
; Matched:%var_2_1641:  %var_2_1641 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1640) #14
; %var_2_1268 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1267)
; Matched:%var_2_1642:  %var_2_1642 = trunc i32 %var_2_1641 to i8
; %var_2_1269 = trunc i32 %var_2_1268 to i8
; Matched:%var_2_1643:  %var_2_1643 = and i8 %var_2_1642, 1
; %var_2_1270 = and i8 %var_2_1269, 1
; Matched:%var_2_1644:  %var_2_1644 = xor i8 %var_2_1643, 1
; %var_2_1271 = xor i8 %var_2_1270, 1
; Matched:\<badref\>:  store i8 %var_2_1644, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1271, i8* %var_2_21, align 1
; Matched:%var_2_1645:  %var_2_1645 = lshr i32 %var_2_1637, 4
; %var_2_1272 = lshr i32 %var_2_1264, 4
; Matched:%var_2_1646:  %var_2_1646 = trunc i32 %var_2_1645 to i8
; %var_2_1273 = trunc i32 %var_2_1272 to i8
; Matched:%var_2_1647:  %var_2_1647 = and i8 %var_2_1646, 1
; %var_2_1274 = and i8 %var_2_1273, 1
; Matched:\<badref\>:  store i8 %var_2_1647, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1274, i8* %var_2_26, align 1
; Matched:%var_2_1648:  %var_2_1648 = icmp eq i32 %var_2_1637, 0
; %var_2_1275 = icmp eq i32 %var_2_1264, 0
; Matched:%var_2_1649:  %var_2_1649 = zext i1 %var_2_1648 to i8
; %var_2_1276 = zext i1 %var_2_1275 to i8
; Matched:\<badref\>:  store i8 %var_2_1649, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1276, i8* %var_2_29, align 1
%var_2_1277 = lshr i32 %var_2_1264, 31
%var_2_1278 = trunc i32 %var_2_1277 to i8
; Matched:\<badref\>:  store i8 %var_2_1651, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1278, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
%var_2_1279 = icmp ne i8 %var_2_1278, 0
%.v163 = select i1 %var_2_1279, i64 14, i64 30
%var_2_1280 = add i64 %var_2_1263, %.v163
%var_2_1281 = add i64 %var_2_1280, 11
store i64 %var_2_1281, i64* %var_2_3, align 8
br i1 %var_2_1279, label %block_400e2f, label %block_.L_400e3f

block_400e2f:                                     ; preds = %block_.L_400e21
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1282 = add i64 %var_2_1280, 27
store i64 %var_2_1282, i64* %var_2_3, align 8
  br label %block_.L_400e4a

block_.L_400e3f:                                  ; preds = %block_.L_400e21
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400e4a

block_.L_400e4a:                                  ; preds = %block_.L_400e3f, %block_400e2f
%var_2_1283 = phi i64 [ %var_2_1281, %block_.L_400e3f ], [ %var_2_1282, %block_400e2f ]
%var_2_1284 = phi i32 [ 0, %block_.L_400e3f ], [ 1, %block_400e2f ]
%var_2_1285 = add i64 %var_2_1283, 9
store i64 %var_2_1285, i64* %var_2_3, align 8
; Matched:%var_2_1156:  %var_2_1156 = load i64, i64* %var_2_1155, align 8
; %var_2_1286 = load i64, i64* %var_2_1198, align 8
; Matched:%var_2_2241:  %var_2_2241 = add i64 %var_2_2240, 1
; %var_2_1287 = add i64 %var_2_1286, 1
; Matched:\<badref\>:  store i64 %var_2_452, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1287, i64* %RAX.i1199, align 8
; Matched:%var_2_1158:  %var_2_1158 = icmp eq i64 %var_2_1156, -1
; %var_2_1288 = icmp eq i64 %var_2_1286, -1
; Matched:%var_2_2668:  %var_2_2668 = icmp eq i64 %var_2_2666, 0
; %var_2_1289 = icmp eq i64 %var_2_1287, 0
; Matched:%var_2_1500:  %var_2_1500 = or i1 %var_2_1498, %var_2_1499
; %var_2_1290 = or i1 %var_2_1288, %var_2_1289
; Matched:%var_2_1849:  %var_2_1849 = zext i1 %var_2_1848 to i8
; %var_2_1291 = zext i1 %var_2_1290 to i8
; Matched:\<badref\>:  store i8 %var_2_1288, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1291, i8* %var_2_14, align 1
; Matched:%var_2_1502:  %var_2_1502 = trunc i64 %var_2_1497 to i32
; %var_2_1292 = trunc i64 %var_2_1287 to i32
; Matched:%var_2_1290:  %var_2_1290 = and i32 %var_2_1289, 255
; %var_2_1293 = and i32 %var_2_1292, 255
; Matched:%var_2_130:  %var_2_130 = tail call i32 @llvm.ctpop.i32(i32 %var_2_129) #14
; %var_2_1294 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1293)
; Matched:%var_2_131:  %var_2_131 = trunc i32 %var_2_130 to i8
; %var_2_1295 = trunc i32 %var_2_1294 to i8
; Matched:%var_2_1506:  %var_2_1506 = and i8 %var_2_1505, 1
; %var_2_1296 = and i8 %var_2_1295, 1
; Matched:%var_2_1294:  %var_2_1294 = xor i8 %var_2_1293, 1
; %var_2_1297 = xor i8 %var_2_1296, 1
; Matched:\<badref\>:  store i8 %var_2_1294, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1297, i8* %var_2_21, align 1
; Matched:%var_2_2677:  %var_2_2677 = xor i64 %var_2_2666, %var_2_2665
; %var_2_1298 = xor i64 %var_2_1287, %var_2_1286
; Matched:%var_2_2678:  %var_2_2678 = lshr i64 %var_2_2677, 4
; %var_2_1299 = lshr i64 %var_2_1298, 4
; Matched:%var_2_1297:  %var_2_1297 = trunc i64 %var_2_1296 to i8
; %var_2_1300 = trunc i64 %var_2_1299 to i8
; Matched:%var_2_1511:  %var_2_1511 = and i8 %var_2_1510, 1
; %var_2_1301 = and i8 %var_2_1300, 1
; Matched:\<badref\>:  store i8 %var_2_2680, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1301, i8* %var_2_26, align 1
; Matched:%var_2_1512:  %var_2_1512 = zext i1 %var_2_1499 to i8
; %var_2_1302 = zext i1 %var_2_1289 to i8
; Matched:\<badref\>:  store i8 %var_2_1512, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1302, i8* %var_2_29, align 1
; Matched:%var_2_1173:  %var_2_1173 = lshr i64 %var_2_1157, 63
; %var_2_1303 = lshr i64 %var_2_1287, 63
; Matched:%var_2_1174:  %var_2_1174 = trunc i64 %var_2_1173 to i8
; %var_2_1304 = trunc i64 %var_2_1303 to i8
; Matched:\<badref\>:  store i8 %var_2_1174, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1304, i8* %var_2_32, align 1
; Matched:%var_2_2684:  %var_2_2684 = lshr i64 %var_2_2665, 63
; %var_2_1305 = lshr i64 %var_2_1286, 63
; Matched:%var_2_406:  %var_2_406 = xor i64 %var_2_403, %var_2_405
; %var_2_1306 = xor i64 %var_2_1303, %var_2_1305
; Matched:%var_2_1177:  %var_2_1177 = add nuw nsw i64 %var_2_1176, %var_2_1173
; %var_2_1307 = add nuw nsw i64 %var_2_1306, %var_2_1303
; Matched:%var_2_1178:  %var_2_1178 = icmp eq i64 %var_2_1177, 2
; %var_2_1308 = icmp eq i64 %var_2_1307, 2
; Matched:%var_2_2688:  %var_2_2688 = zext i1 %var_2_2687 to i8
; %var_2_1309 = zext i1 %var_2_1308 to i8
; Matched:\<badref\>:  store i8 %var_2_2688, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1309, i8* %var_2_38, align 1
%var_2_1310 = add i64 %var_2_1283, 17
store i64 %var_2_1310, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1157, i64* %var_2_1155, align 8
; store i64 %var_2_1287, i64* %var_2_1198, align 8
%var_2_1311 = load i64, i64* %var_2_3, align 8
%var_2_1312 = add i64 %var_2_1311, -154
; Matched:\<badref\>:  store i64 %var_2_2266, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1312, i64* %var_2_3, align 8
  br label %block_.L_400dc1

block_.L_400e60:                                  ; preds = %block_.L_400dc1
%var_2_1313 = add i64 %var_2_1195, -176
; Matched:%var_2_547:  %var_2_547 = add i64 %var_2_909, 6
; %var_2_1314 = add i64 %var_2_1231, 6
; Matched:\<badref\>:  store i64 %var_2_547, i64* %PC, align 8
; store i64 %var_2_1314, i64* %var_2_3, align 8
%var_2_1315 = inttoptr i64 %var_2_1313 to i32*
%var_2_1316 = load i32, i32* %var_2_1315, align 4
; Matched:%var_2_967:  %var_2_967 = zext i32 %var_2_966 to i64
; %var_2_1317 = zext i32 %var_2_1316 to i64
; Matched:\<badref\>:  store i64 %var_2_967, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1317, i64* %RAX.i1199, align 8
%var_2_1318 = add i64 %var_2_1195, -172
; Matched:%var_2_552:  %var_2_552 = add i64 %var_2_909, 12
; %var_2_1319 = add i64 %var_2_1231, 12
; Matched:\<badref\>:  store i64 %var_2_552, i64* %PC, align 8
; store i64 %var_2_1319, i64* %var_2_3, align 8
%var_2_1320 = inttoptr i64 %var_2_1318 to i32*
%var_2_1321 = load i32, i32* %var_2_1320, align 4
%var_2_1322 = sub i32 %var_2_1316, %var_2_1321
; Matched:%var_2_824:  %var_2_824 = icmp ult i32 %var_2_817, %var_2_822
; %var_2_1323 = icmp ult i32 %var_2_1316, %var_2_1321
; Matched:%var_2_825:  %var_2_825 = zext i1 %var_2_824 to i8
; %var_2_1324 = zext i1 %var_2_1323 to i8
; Matched:\<badref\>:  store i8 %var_2_825, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1324, i8* %var_2_14, align 1
; Matched:%var_2_593:  %var_2_593 = and i32 %var_2_590, 255
; %var_2_1325 = and i32 %var_2_1322, 255
; Matched:%var_2_827:  %var_2_827 = tail call i32 @llvm.ctpop.i32(i32 %var_2_826) #14
; %var_2_1326 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1325)
; Matched:%var_2_595:  %var_2_595 = trunc i32 %var_2_594 to i8
; %var_2_1327 = trunc i32 %var_2_1326 to i8
; Matched:%var_2_1214:  %var_2_1214 = and i8 %var_2_1213, 1
; %var_2_1328 = and i8 %var_2_1327, 1
; Matched:%var_2_494:  %var_2_494 = xor i8 %var_2_493, 1
; %var_2_1329 = xor i8 %var_2_1328, 1
; Matched:\<badref\>:  store i8 %var_2_597, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1329, i8* %var_2_21, align 1
; Matched:%var_2_1216:  %var_2_1216 = xor i32 %var_2_1207, %var_2_1202
; %var_2_1330 = xor i32 %var_2_1321, %var_2_1316
; Matched:%var_2_530:  %var_2_530 = xor i32 %var_2_529, %var_2_521
; %var_2_1331 = xor i32 %var_2_1330, %var_2_1322
; Matched:%var_2_833:  %var_2_833 = lshr i32 %var_2_832, 4
; %var_2_1332 = lshr i32 %var_2_1331, 4
; Matched:%var_2_1743:  %var_2_1743 = trunc i32 %var_2_1742 to i8
; %var_2_1333 = trunc i32 %var_2_1332 to i8
; Matched:%var_2_1744:  %var_2_1744 = and i8 %var_2_1743, 1
; %var_2_1334 = and i8 %var_2_1333, 1
; Matched:\<badref\>:  store i8 %var_2_567, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1334, i8* %var_2_26, align 1
%var_2_1335 = icmp eq i32 %var_2_1322, 0
; Matched:%var_2_535:  %var_2_535 = zext i1 %var_2_534 to i8
; %var_2_1336 = zext i1 %var_2_1335 to i8
; Matched:\<badref\>:  store i8 %var_2_1222, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1336, i8* %var_2_29, align 1
; Matched:%var_2_1223:  %var_2_1223 = lshr i32 %var_2_1208, 31
; %var_2_1337 = lshr i32 %var_2_1322, 31
; Matched:%var_2_1224:  %var_2_1224 = trunc i32 %var_2_1223 to i8
; %var_2_1338 = trunc i32 %var_2_1337 to i8
; Matched:\<badref\>:  store i8 %var_2_1224, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1338, i8* %var_2_32, align 1
; Matched:%var_2_840:  %var_2_840 = lshr i32 %var_2_817, 31
; %var_2_1339 = lshr i32 %var_2_1316, 31
; Matched:%var_2_990:  %var_2_990 = lshr i32 %var_2_971, 31
; %var_2_1340 = lshr i32 %var_2_1321, 31
; Matched:%var_2_991:  %var_2_991 = xor i32 %var_2_990, %var_2_989
; %var_2_1341 = xor i32 %var_2_1340, %var_2_1339
; Matched:%var_2_992:  %var_2_992 = xor i32 %var_2_987, %var_2_989
; %var_2_1342 = xor i32 %var_2_1337, %var_2_1339
; Matched:%var_2_993:  %var_2_993 = add nuw nsw i32 %var_2_992, %var_2_991
; %var_2_1343 = add nuw nsw i32 %var_2_1342, %var_2_1341
; Matched:%var_2_845:  %var_2_845 = icmp eq i32 %var_2_844, 2
; %var_2_1344 = icmp eq i32 %var_2_1343, 2
; Matched:%var_2_846:  %var_2_846 = zext i1 %var_2_845 to i8
; %var_2_1345 = zext i1 %var_2_1344 to i8
; Matched:\<badref\>:  store i8 %var_2_1231, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1345, i8* %var_2_38, align 1
%.v147 = select i1 %var_2_1335, i64 18, i64 66
%var_2_1346 = add i64 %var_2_1231, %.v147
; Matched:\<badref\>:  store i64 %var_2_579, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1346, i64* %var_2_3, align 8
br i1 %var_2_1335, label %block_400e72, label %block_.L_400ea2

block_400e72:                                     ; preds = %block_.L_400e60
; Matched:%var_2_248:  %var_2_248 = add i64 %var_2_579, 4
; %var_2_1347 = add i64 %var_2_1346, 4
; Matched:\<badref\>:  store i64 %var_2_248, i64* %PC, align 8
; store i64 %var_2_1347, i64* %var_2_3, align 8
; Matched:%var_2_249:  %var_2_249 = load i64, i64* %var_2_880, align 8
; %var_2_1348 = load i64, i64* %var_2_1202, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1348, i64* %RDI.i1206, align 8
%var_2_1349 = sext i32 %var_2_1193 to i64
store i64 %var_2_1349, i64* %RSI.i1110, align 8
store i64 %var_2_1349, i64* %RDX.i596, align 8
%var_2_1350 = add i64 %var_2_1195, -112
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_579, 25
; %var_2_1351 = add i64 %var_2_1346, 25
; Matched:\<badref\>:  store i64 %var_2_253, i64* %PC, align 8
; store i64 %var_2_1351, i64* %var_2_3, align 8
%var_2_1352 = inttoptr i64 %var_2_1350 to i64*
%var_2_1353 = load i64, i64* %var_2_1352, align 8
; Matched:\<badref\>:  store i64 %var_2_255, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1353, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_256:  %var_2_256 = add i64 %var_2_873, -120
; %var_2_1354 = add i64 %var_2_1195, -120
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_579, 30
; %var_2_1355 = add i64 %var_2_1346, 30
; Matched:\<badref\>:  store i64 %var_2_257, i64* %PC, align 8
; store i64 %var_2_1355, i64* %var_2_3, align 8
; Matched:%var_2_665:  %var_2_665 = inttoptr i64 %var_2_663 to i64*
; %var_2_1356 = inttoptr i64 %var_2_1354 to i64*
; Matched:%var_2_666:  %var_2_666 = load i64, i64* %var_2_665, align 8
; %var_2_1357 = load i64, i64* %var_2_1356, align 8
; Matched:\<badref\>:  store i64 %var_2_259, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_1357, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_1536:  %var_2_1536 = add i64 %var_2_2193, -128
; %var_2_1358 = add i64 %var_2_1195, -128
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_579, 35
; %var_2_1359 = add i64 %var_2_1346, 35
; Matched:\<badref\>:  store i64 %var_2_261, i64* %PC, align 8
; store i64 %var_2_1359, i64* %var_2_3, align 8
; Matched:%var_2_669:  %var_2_669 = inttoptr i64 %var_2_667 to i64*
; %var_2_1360 = inttoptr i64 %var_2_1358 to i64*
; Matched:%var_2_670:  %var_2_670 = load i64, i64* %var_2_669, align 8
; %var_2_1361 = load i64, i64* %var_2_1360, align 8
; Matched:\<badref\>:  store i64 %var_2_670, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_1361, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1362 = add i64 %var_2_1195, -136
; Matched:%var_2_265:  %var_2_265 = add i64 %var_2_579, 43
; %var_2_1363 = add i64 %var_2_1346, 43
; Matched:\<badref\>:  store i64 %var_2_265, i64* %PC, align 8
; store i64 %var_2_1363, i64* %var_2_3, align 8
%var_2_1364 = inttoptr i64 %var_2_1362 to i64*
%var_2_1365 = load i64, i64* %var_2_1364, align 8
store i64 %var_2_1365, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_1366 = add i64 %var_2_1346, 1918
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_579, 48
; %var_2_1367 = add i64 %var_2_1346, 48
%var_2_1368 = load i64, i64* %var_2_6, align 8
%var_2_1369 = add i64 %var_2_1368, -8
; Matched:%var_2_272:  %var_2_272 = inttoptr i64 %var_2_271 to i64*
; %var_2_1370 = inttoptr i64 %var_2_1369 to i64*
; Matched:\<badref\>:  store i64 %var_2_269, i64* %var_2_272, align 8
; store i64 %var_2_1367, i64* %var_2_1370, align 8
; Matched:\<badref\>:  store i64 %var_2_697, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1369, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_268, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1366, i64* %var_2_3, align 8
%call2_400e9d = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_1366, %struct.Memory* %MEMORY.10)
; Matched:  %.pre419 = load i64, i64* %PC, align 8
; %.pre108 = load i64, i64* %var_2_3, align 8
  %.pre109 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ea2

block_.L_400ea2:                                  ; preds = %block_.L_400e60, %block_400e72
; Matched:%var_2_2230:  %var_2_2230 = phi i64 [ %var_2_1566, %block_4012e2 ], [ %.pre429, %block_4012f4 ]
; %var_2_1371 = phi i64 [ %var_2_1195, %block_.L_400e60 ], [ %.pre109, %block_400e72 ]
; Matched:%var_2_1631:  %var_2_1631 = phi i64 [ %var_2_579, %block_400e60 ], [ %.pre419, %block_400e72 ]
; %var_2_1372 = phi i64 [ %var_2_1346, %block_.L_400e60 ], [ %.pre108, %block_400e72 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e60 ], [ %call2_400e9d, %block_400e72 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
; Matched:%var_2_2745:  %var_2_2745 = add i64 %var_2_2741, -24
; %var_2_1373 = add i64 %var_2_1371, -24
; Matched:%var_2_1633:  %var_2_1633 = add i64 %var_2_1631, 41
; %var_2_1374 = add i64 %var_2_1372, 41
; Matched:\<badref\>:  store i64 %var_2_1633, i64* %PC, align 8
; store i64 %var_2_1374, i64* %var_2_3, align 8
; Matched:%var_2_2237:  %var_2_2237 = inttoptr i64 %var_2_2235 to i64*
; %var_2_1375 = inttoptr i64 %var_2_1373 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1271, align 8
; store i64 1, i64* %var_2_1375, align 8
%.pre110 = load i64, i64* %var_2_3, align 8
  br label %block_.L_400ecb

block_.L_400ecb:                                  ; preds = %block_400ed9, %block_.L_400ea2
%var_2_1376 = phi i32 [ %var_2_1446, %block_400ed9 ], [ 2, %block_.L_400ea2 ]
%var_2_1377 = phi i64 [ %var_2_1515, %block_400ed9 ], [ %.pre110, %block_.L_400ea2 ]
%var_2_1378 = load i64, i64* %RBP.i, align 8
%var_2_1379 = add i64 %var_2_1378, -24
; Matched:%var_2_1001:  %var_2_1001 = add i64 %var_2_998, 4
; %var_2_1380 = add i64 %var_2_1377, 4
; Matched:\<badref\>:  store i64 %var_2_1001, i64* %PC, align 8
; store i64 %var_2_1380, i64* %var_2_3, align 8
%var_2_1381 = inttoptr i64 %var_2_1379 to i64*
%var_2_1382 = load i64, i64* %var_2_1381, align 8
; Matched:\<badref\>:  store i64 %var_2_877, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1382, i64* %RAX.i1199, align 8
%var_2_1383 = add i64 %var_2_1378, -64
; Matched:%var_2_1005:  %var_2_1005 = add i64 %var_2_998, 8
; %var_2_1384 = add i64 %var_2_1377, 8
; Matched:\<badref\>:  store i64 %var_2_1005, i64* %PC, align 8
; store i64 %var_2_1384, i64* %var_2_3, align 8
%var_2_1385 = inttoptr i64 %var_2_1383 to i64*
%var_2_1386 = load i64, i64* %var_2_1385, align 8
%var_2_1387 = sub i64 %var_2_1382, %var_2_1386
; Matched:%var_2_1009:  %var_2_1009 = icmp ult i64 %var_2_1003, %var_2_1007
; %var_2_1388 = icmp ult i64 %var_2_1382, %var_2_1386
; Matched:%var_2_1010:  %var_2_1010 = zext i1 %var_2_1009 to i8
; %var_2_1389 = zext i1 %var_2_1388 to i8
; Matched:\<badref\>:  store i8 %var_2_1010, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1389, i8* %var_2_14, align 1
; Matched:%var_2_1011:  %var_2_1011 = trunc i64 %var_2_1008 to i32
; %var_2_1390 = trunc i64 %var_2_1387 to i32
; Matched:%var_2_1012:  %var_2_1012 = and i32 %var_2_1011, 255
; %var_2_1391 = and i32 %var_2_1390, 255
; Matched:%var_2_1013:  %var_2_1013 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1012) #14
; %var_2_1392 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1391)
; Matched:%var_2_1014:  %var_2_1014 = trunc i32 %var_2_1013 to i8
; %var_2_1393 = trunc i32 %var_2_1392 to i8
; Matched:%var_2_1015:  %var_2_1015 = and i8 %var_2_1014, 1
; %var_2_1394 = and i8 %var_2_1393, 1
; Matched:%var_2_1016:  %var_2_1016 = xor i8 %var_2_1015, 1
; %var_2_1395 = xor i8 %var_2_1394, 1
; Matched:\<badref\>:  store i8 %var_2_1016, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1395, i8* %var_2_21, align 1
; Matched:%var_2_1017:  %var_2_1017 = xor i64 %var_2_1007, %var_2_1003
; %var_2_1396 = xor i64 %var_2_1386, %var_2_1382
; Matched:%var_2_1018:  %var_2_1018 = xor i64 %var_2_1017, %var_2_1008
; %var_2_1397 = xor i64 %var_2_1396, %var_2_1387
; Matched:%var_2_1019:  %var_2_1019 = lshr i64 %var_2_1018, 4
; %var_2_1398 = lshr i64 %var_2_1397, 4
; Matched:%var_2_1020:  %var_2_1020 = trunc i64 %var_2_1019 to i8
; %var_2_1399 = trunc i64 %var_2_1398 to i8
; Matched:%var_2_1021:  %var_2_1021 = and i8 %var_2_1020, 1
; %var_2_1400 = and i8 %var_2_1399, 1
; Matched:\<badref\>:  store i8 %var_2_1021, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1400, i8* %var_2_26, align 1
%var_2_1401 = icmp eq i64 %var_2_1387, 0
; Matched:%var_2_1023:  %var_2_1023 = zext i1 %var_2_1022 to i8
; %var_2_1402 = zext i1 %var_2_1401 to i8
; Matched:\<badref\>:  store i8 %var_2_1023, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1402, i8* %var_2_29, align 1
%var_2_1403 = lshr i64 %var_2_1387, 63
%var_2_1404 = trunc i64 %var_2_1403 to i8
; Matched:\<badref\>:  store i8 %var_2_1025, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1404, i8* %var_2_32, align 1
%var_2_1405 = lshr i64 %var_2_1382, 63
%var_2_1406 = lshr i64 %var_2_1386, 63
%var_2_1407 = xor i64 %var_2_1406, %var_2_1405
%var_2_1408 = xor i64 %var_2_1403, %var_2_1405
%var_2_1409 = add nuw nsw i64 %var_2_1408, %var_2_1407
%var_2_1410 = icmp eq i64 %var_2_1409, 2
; Matched:%var_2_1032:  %var_2_1032 = zext i1 %var_2_1031 to i8
; %var_2_1411 = zext i1 %var_2_1410 to i8
; Matched:\<badref\>:  store i8 %var_2_1032, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1411, i8* %var_2_38, align 1
%var_2_1412 = icmp ne i8 %var_2_1404, 0
%var_2_1413 = xor i1 %var_2_1412, %var_2_1410
%.demorgan133 = or i1 %var_2_1401, %var_2_1413
  %.v148 = select i1 %.demorgan133, i64 14, i64 259
%var_2_1414 = add i64 %var_2_1377, %.v148
; Matched:\<badref\>:  store i64 %var_2_1035, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1414, i64* %var_2_3, align 8
  br i1 %.demorgan133, label %block_400ed9, label %block_.L_400fce

block_400ed9:                                     ; preds = %block_.L_400ecb
%var_2_1415 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1416 = sub i32 %var_2_1376, %var_2_1415
%var_2_1417 = sext i32 %var_2_1415 to i64
%var_2_1418 = sext i32 %var_2_1416 to i64
%var_2_1419 = mul nsw i64 %var_2_1418, %var_2_1417
%var_2_1420 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
%var_2_1421 = sub i32 %var_2_1420, %var_2_1376
%var_2_1422 = shl i64 %var_2_1419, 32
%var_2_1423 = ashr exact i64 %var_2_1422, 32
%var_2_1424 = sext i32 %var_2_1421 to i64
%var_2_1425 = mul nsw i64 %var_2_1424, %var_2_1423
%var_2_1426 = trunc i64 %var_2_1425 to i32
store i32 %var_2_1426, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1427 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_1428 = mul i32 %var_2_1427, %var_2_1426
store i32 %var_2_1428, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_1429 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
%var_2_1430 = sub i32 %var_2_1429, %var_2_1428
%var_2_1431 = add i32 %var_2_1426, %var_2_1428
%var_2_1432 = zext i32 %var_2_1431 to i64
store i64 %var_2_1432, i64* %RCX.i651, align 8
%var_2_1433 = mul i32 %var_2_1431, %var_2_1430
store i32 %var_2_1433, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
%var_2_1434 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_1435 = add i32 %var_2_1434, %var_2_1426
%var_2_1436 = add i32 %var_2_1433, %var_2_1435
%var_2_1437 = sitofp i32 %var_2_1436 to double
%var_2_1438 = add i32 %var_2_1433, -1
%var_2_1439 = sext i32 %var_2_1438 to i64
%var_2_1440 = shl nsw i64 %var_2_1439, 3
%var_2_1441 = add nsw i64 %var_2_1440, 6299840
; Matched:%var_2_339:  %var_2_339 = add i64 %var_2_1035, 179
; %var_2_1442 = add i64 %var_2_1414, 179
; Matched:\<badref\>:  store i64 %var_2_339, i64* %PC, align 8
; store i64 %var_2_1442, i64* %var_2_3, align 8
%var_2_1443 = inttoptr i64 %var_2_1441 to double*
store double %var_2_1437, double* %var_2_1443, align 8
; Matched:%var_2_341:  %var_2_341 = load i64, i64* %PC, align 8
; %var_2_1444 = load i64, i64* %var_2_3, align 8
%var_2_1445 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1446 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_1447 = sext i32 %var_2_1445 to i64
%var_2_1448 = sext i32 %var_2_1446 to i64
%var_2_1449 = mul nsw i64 %var_2_1448, %var_2_1447
%var_2_1450 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
%var_2_1451 = shl i64 %var_2_1449, 32
%var_2_1452 = ashr exact i64 %var_2_1451, 32
%var_2_1453 = sext i32 %var_2_1450 to i64
%var_2_1454 = mul nsw i64 %var_2_1453, %var_2_1452
%var_2_1455 = trunc i64 %var_2_1454 to i32
%var_2_1456 = sitofp i32 %var_2_1455 to double
; Matched:\<badref\>:  store double %var_2_353, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_1456, double* %var_2_301, align 1
%var_2_1457 = add i32 %var_2_1446, -1
; Matched:%var_2_355:  %var_2_355 = zext i32 %var_2_354 to i64
; %var_2_1458 = zext i32 %var_2_1457 to i64
; Matched:\<badref\>:  store i64 %var_2_355, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1458, i64* %RAX.i1199, align 8
%var_2_1459 = icmp eq i32 %var_2_1446, 0
%var_2_1460 = zext i1 %var_2_1459 to i8
store i8 %var_2_1460, i8* %var_2_14, align 1
%var_2_1461 = and i32 %var_2_1457, 255
%var_2_1462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1461)
%var_2_1463 = trunc i32 %var_2_1462 to i8
%var_2_1464 = and i8 %var_2_1463, 1
%var_2_1465 = xor i8 %var_2_1464, 1
store i8 %var_2_1465, i8* %var_2_21, align 1
%var_2_1466 = xor i32 %var_2_1457, %var_2_1446
%var_2_1467 = lshr i32 %var_2_1466, 4
%var_2_1468 = trunc i32 %var_2_1467 to i8
%var_2_1469 = and i8 %var_2_1468, 1
store i8 %var_2_1469, i8* %var_2_26, align 1
%var_2_1470 = icmp eq i32 %var_2_1457, 0
%var_2_1471 = zext i1 %var_2_1470 to i8
store i8 %var_2_1471, i8* %var_2_29, align 1
%var_2_1472 = lshr i32 %var_2_1457, 31
%var_2_1473 = trunc i32 %var_2_1472 to i8
store i8 %var_2_1473, i8* %var_2_32, align 1
%var_2_1474 = lshr i32 %var_2_1446, 31
%var_2_1475 = xor i32 %var_2_1472, %var_2_1474
%var_2_1476 = add nuw nsw i32 %var_2_1475, %var_2_1474
%var_2_1477 = icmp eq i32 %var_2_1476, 2
%var_2_1478 = zext i1 %var_2_1477 to i8
store i8 %var_2_1478, i8* %var_2_38, align 1
%var_2_1479 = sext i32 %var_2_1457 to i64
; Matched:\<badref\>:  store i64 %var_2_376, i64* %RDX, align 8, !tbaa !1261
; store i64 %var_2_1479, i64* %RDX.i596, align 8
%var_2_1480 = shl nsw i64 %var_2_1479, 3
%var_2_1481 = add nsw i64 %var_2_1480, 6299840
; Matched:%var_2_379:  %var_2_379 = add i64 %var_2_341, 49
; %var_2_1482 = add i64 %var_2_1444, 49
; Matched:\<badref\>:  store i64 %var_2_379, i64* %PC, align 8
; store i64 %var_2_1482, i64* %var_2_3, align 8
%var_2_1483 = inttoptr i64 %var_2_1481 to double*
store double %var_2_1456, double* %var_2_1483, align 8
%var_2_1484 = load i64, i64* %RBP.i, align 8
%var_2_1485 = add i64 %var_2_1484, -24
%var_2_1486 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_2663:  %var_2_2663 = add i64 %var_2_2662, 4
; %var_2_1487 = add i64 %var_2_1486, 4
; Matched:\<badref\>:  store i64 %var_2_2663, i64* %PC, align 8
; store i64 %var_2_1487, i64* %var_2_3, align 8
%var_2_1488 = inttoptr i64 %var_2_1485 to i64*
; Matched:%var_2_451:  %var_2_451 = load i64, i64* %var_2_450, align 8
; %var_2_1489 = load i64, i64* %var_2_1488, align 8
; Matched:%var_2_1157:  %var_2_1157 = add i64 %var_2_1156, 1
; %var_2_1490 = add i64 %var_2_1489, 1
; Matched:\<badref\>:  store i64 %var_2_1157, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1490, i64* %RAX.i1199, align 8
; Matched:%var_2_2667:  %var_2_2667 = icmp eq i64 %var_2_2665, -1
; %var_2_1491 = icmp eq i64 %var_2_1489, -1
; Matched:%var_2_1286:  %var_2_1286 = icmp eq i64 %var_2_1284, 0
; %var_2_1492 = icmp eq i64 %var_2_1490, 0
; Matched:%var_2_1287:  %var_2_1287 = or i1 %var_2_1285, %var_2_1286
; %var_2_1493 = or i1 %var_2_1491, %var_2_1492
; Matched:%var_2_1501:  %var_2_1501 = zext i1 %var_2_1500 to i8
; %var_2_1494 = zext i1 %var_2_1493 to i8
; Matched:\<badref\>:  store i8 %var_2_1501, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1494, i8* %var_2_14, align 1
; Matched:%var_2_1289:  %var_2_1289 = trunc i64 %var_2_1284 to i32
; %var_2_1495 = trunc i64 %var_2_1490 to i32
; Matched:%var_2_1503:  %var_2_1503 = and i32 %var_2_1502, 255
; %var_2_1496 = and i32 %var_2_1495, 255
; Matched:%var_2_1504:  %var_2_1504 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1503) #14
; %var_2_1497 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1496)
; Matched:%var_2_1349:  %var_2_1349 = trunc i32 %var_2_1348 to i8
; %var_2_1498 = trunc i32 %var_2_1497 to i8
; Matched:%var_2_132:  %var_2_132 = and i8 %var_2_131, 1
; %var_2_1499 = and i8 %var_2_1498, 1
; Matched:%var_2_1507:  %var_2_1507 = xor i8 %var_2_1506, 1
; %var_2_1500 = xor i8 %var_2_1499, 1
; Matched:\<badref\>:  store i8 %var_2_1507, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1500, i8* %var_2_21, align 1
; Matched:%var_2_1295:  %var_2_1295 = xor i64 %var_2_1284, %var_2_1283
; %var_2_1501 = xor i64 %var_2_1490, %var_2_1489
; Matched:%var_2_1296:  %var_2_1296 = lshr i64 %var_2_1295, 4
; %var_2_1502 = lshr i64 %var_2_1501, 4
; Matched:%var_2_1510:  %var_2_1510 = trunc i64 %var_2_1509 to i8
; %var_2_1503 = trunc i64 %var_2_1502 to i8
; Matched:%var_2_1298:  %var_2_1298 = and i8 %var_2_1297, 1
; %var_2_1504 = and i8 %var_2_1503, 1
; Matched:\<badref\>:  store i8 %var_2_1298, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1504, i8* %var_2_26, align 1
; Matched:%var_2_1299:  %var_2_1299 = zext i1 %var_2_1286 to i8
; %var_2_1505 = zext i1 %var_2_1492 to i8
; Matched:\<badref\>:  store i8 %var_2_1299, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1505, i8* %var_2_29, align 1
; Matched:%var_2_2682:  %var_2_2682 = lshr i64 %var_2_2666, 63
; %var_2_1506 = lshr i64 %var_2_1490, 63
; Matched:%var_2_2683:  %var_2_2683 = trunc i64 %var_2_2682 to i8
; %var_2_1507 = trunc i64 %var_2_1506 to i8
; Matched:\<badref\>:  store i8 %var_2_2683, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1507, i8* %var_2_32, align 1
; Matched:%var_2_1515:  %var_2_1515 = lshr i64 %var_2_1496, 63
; %var_2_1508 = lshr i64 %var_2_1489, 63
; Matched:%var_2_2685:  %var_2_2685 = xor i64 %var_2_2682, %var_2_2684
; %var_2_1509 = xor i64 %var_2_1506, %var_2_1508
; Matched:%var_2_2686:  %var_2_2686 = add nuw nsw i64 %var_2_2685, %var_2_2682
; %var_2_1510 = add nuw nsw i64 %var_2_1509, %var_2_1506
; Matched:%var_2_1518:  %var_2_1518 = icmp eq i64 %var_2_1517, 2
; %var_2_1511 = icmp eq i64 %var_2_1510, 2
; Matched:%var_2_1519:  %var_2_1519 = zext i1 %var_2_1518 to i8
; %var_2_1512 = zext i1 %var_2_1511 to i8
; Matched:\<badref\>:  store i8 %var_2_145, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1512, i8* %var_2_38, align 1
; Matched:%var_2_2689:  %var_2_2689 = add i64 %var_2_2662, 12
; %var_2_1513 = add i64 %var_2_1486, 12
; Matched:\<badref\>:  store i64 %var_2_475, i64* %PC, align 8
; store i64 %var_2_1513, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_387, i64* %var_2_385, align 8
; store i64 %var_2_1490, i64* %var_2_1488, align 8
%var_2_1514 = load i64, i64* %var_2_3, align 8
%var_2_1515 = add i64 %var_2_1514, -254
; Matched:\<badref\>:  store i64 %var_2_412, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1515, i64* %var_2_3, align 8
  br label %block_.L_400ecb

block_.L_400fce:                                  ; preds = %block_.L_400ecb
%var_2_1516 = add i64 %var_2_1378, -176
; Matched:%var_2_815:  %var_2_815 = add i64 %var_2_1035, 6
; %var_2_1517 = add i64 %var_2_1414, 6
; Matched:\<badref\>:  store i64 %var_2_815, i64* %PC, align 8
; store i64 %var_2_1517, i64* %var_2_3, align 8
%var_2_1518 = inttoptr i64 %var_2_1516 to i32*
%var_2_1519 = load i32, i32* %var_2_1518, align 4
; Matched:%var_2_1727:  %var_2_1727 = zext i32 %var_2_1726 to i64
; %var_2_1520 = zext i32 %var_2_1519 to i64
; Matched:\<badref\>:  store i64 %var_2_1727, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1520, i64* %RAX.i1199, align 8
%var_2_1521 = add i64 %var_2_1378, -172
; Matched:%var_2_820:  %var_2_820 = add i64 %var_2_1035, 12
; %var_2_1522 = add i64 %var_2_1414, 12
; Matched:\<badref\>:  store i64 %var_2_820, i64* %PC, align 8
; store i64 %var_2_1522, i64* %var_2_3, align 8
%var_2_1523 = inttoptr i64 %var_2_1521 to i32*
%var_2_1524 = load i32, i32* %var_2_1523, align 4
%var_2_1525 = sub i32 %var_2_1519, %var_2_1524
; Matched:%var_2_1733:  %var_2_1733 = icmp ult i32 %var_2_1726, %var_2_1731
; %var_2_1526 = icmp ult i32 %var_2_1519, %var_2_1524
; Matched:%var_2_974:  %var_2_974 = zext i1 %var_2_973 to i8
; %var_2_1527 = zext i1 %var_2_1526 to i8
; Matched:\<badref\>:  store i8 %var_2_1734, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1527, i8* %var_2_14, align 1
; Matched:%var_2_826:  %var_2_826 = and i32 %var_2_823, 255
; %var_2_1528 = and i32 %var_2_1525, 255
; Matched:%var_2_594:  %var_2_594 = tail call i32 @llvm.ctpop.i32(i32 %var_2_593) #14
; %var_2_1529 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1528)
; Matched:%var_2_1213:  %var_2_1213 = trunc i32 %var_2_1212 to i8
; %var_2_1530 = trunc i32 %var_2_1529 to i8
; Matched:%var_2_596:  %var_2_596 = and i8 %var_2_595, 1
; %var_2_1531 = and i8 %var_2_1530, 1
; Matched:%var_2_1215:  %var_2_1215 = xor i8 %var_2_1214, 1
; %var_2_1532 = xor i8 %var_2_1531, 1
; Matched:\<badref\>:  store i8 %var_2_830, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1532, i8* %var_2_21, align 1
; Matched:%var_2_529:  %var_2_529 = xor i32 %var_2_520, %var_2_515
; %var_2_1533 = xor i32 %var_2_1524, %var_2_1519
; Matched:%var_2_1741:  %var_2_1741 = xor i32 %var_2_1740, %var_2_1732
; %var_2_1534 = xor i32 %var_2_1533, %var_2_1525
; Matched:%var_2_565:  %var_2_565 = lshr i32 %var_2_564, 4
; %var_2_1535 = lshr i32 %var_2_1534, 4
; Matched:%var_2_1219:  %var_2_1219 = trunc i32 %var_2_1218 to i8
; %var_2_1536 = trunc i32 %var_2_1535 to i8
; Matched:%var_2_1220:  %var_2_1220 = and i8 %var_2_1219, 1
; %var_2_1537 = and i8 %var_2_1536, 1
; Matched:\<badref\>:  store i8 %var_2_602, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1537, i8* %var_2_26, align 1
%var_2_1538 = icmp eq i32 %var_2_1525, 0
; Matched:%var_2_1222:  %var_2_1222 = zext i1 %var_2_1221 to i8
; %var_2_1539 = zext i1 %var_2_1538 to i8
; Matched:\<badref\>:  store i8 %var_2_604, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1539, i8* %var_2_29, align 1
; Matched:%var_2_838:  %var_2_838 = lshr i32 %var_2_823, 31
; %var_2_1540 = lshr i32 %var_2_1525, 31
; Matched:%var_2_839:  %var_2_839 = trunc i32 %var_2_838 to i8
; %var_2_1541 = trunc i32 %var_2_1540 to i8
; Matched:\<badref\>:  store i8 %var_2_839, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1541, i8* %var_2_32, align 1
; Matched:%var_2_1225:  %var_2_1225 = lshr i32 %var_2_1202, 31
; %var_2_1542 = lshr i32 %var_2_1519, 31
; Matched:%var_2_841:  %var_2_841 = lshr i32 %var_2_822, 31
; %var_2_1543 = lshr i32 %var_2_1524, 31
; Matched:%var_2_842:  %var_2_842 = xor i32 %var_2_841, %var_2_840
; %var_2_1544 = xor i32 %var_2_1543, %var_2_1542
; Matched:%var_2_1752:  %var_2_1752 = xor i32 %var_2_1747, %var_2_1749
; %var_2_1545 = xor i32 %var_2_1540, %var_2_1542
; Matched:%var_2_1753:  %var_2_1753 = add nuw nsw i32 %var_2_1752, %var_2_1751
; %var_2_1546 = add nuw nsw i32 %var_2_1545, %var_2_1544
; Matched:%var_2_994:  %var_2_994 = icmp eq i32 %var_2_993, 2
; %var_2_1547 = icmp eq i32 %var_2_1546, 2
; Matched:%var_2_995:  %var_2_995 = zext i1 %var_2_994 to i8
; %var_2_1548 = zext i1 %var_2_1547 to i8
; Matched:\<badref\>:  store i8 %var_2_846, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1548, i8* %var_2_38, align 1
%.v149 = select i1 %var_2_1538, i64 18, i64 79
%var_2_1549 = add i64 %var_2_1414, %.v149
; Matched:\<badref\>:  store i64 %var_2_847, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1549, i64* %var_2_3, align 8
br i1 %var_2_1538, label %block_400fe0, label %block_.L_40101d

block_400fe0:                                     ; preds = %block_.L_400fce
; Matched:%var_2_1550:  %var_2_1550 = add i64 %var_2_847, 4
; %var_2_1550 = add i64 %var_2_1549, 4
; Matched:\<badref\>:  store i64 %var_2_1550, i64* %PC, align 8
; store i64 %var_2_1550, i64* %var_2_3, align 8
; Matched:%var_2_1551:  %var_2_1551 = load i64, i64* %var_2_1006, align 8
; %var_2_1551 = load i64, i64* %var_2_1385, align 8
; Matched:\<badref\>:  store i64 %var_2_1551, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1551, i64* %RDI.i1206, align 8
%var_2_1552 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1553 = sext i32 %var_2_1552 to i64
store i64 %var_2_1553, i64* %RSI.i1110, align 8
%var_2_1554 = sext i32 %var_2_1376 to i64
store i64 %var_2_1554, i64* %RDX.i596, align 8
%var_2_1555 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_1555, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1556 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_1556, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_1557 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
store i64 %var_2_1557, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1558 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
store i64 %var_2_1558, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_1559 = add i64 %var_2_1549, 1552
; Matched:%var_2_1560:  %var_2_1560 = add i64 %var_2_847, 61
; %var_2_1560 = add i64 %var_2_1549, 61
%var_2_1561 = load i64, i64* %var_2_6, align 8
%var_2_1562 = add i64 %var_2_1561, -8
; Matched:%var_2_1563:  %var_2_1563 = inttoptr i64 %var_2_1562 to i64*
; %var_2_1563 = inttoptr i64 %var_2_1562 to i64*
; Matched:\<badref\>:  store i64 %var_2_1560, i64* %var_2_1563, align 8
; store i64 %var_2_1560, i64* %var_2_1563, align 8
; Matched:\<badref\>:  store i64 %var_2_1040, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1562, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1559, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1559, i64* %var_2_3, align 8
%call2_401018 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_1559, %struct.Memory* %MEMORY.15)
%.pre111 = load i64, i64* %var_2_3, align 8
  %.pre112 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40101d

block_.L_40101d:                                  ; preds = %block_.L_400fce, %block_400fe0
%var_2_1564 = phi i64 [ %var_2_1378, %block_.L_400fce ], [ %.pre112, %block_400fe0 ]
%var_2_1565 = phi i64 [ %var_2_1549, %block_.L_400fce ], [ %.pre111, %block_400fe0 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400fce ], [ %call2_401018, %block_400fe0 ]
%var_2_1566 = add i64 %var_2_1565, ptrtoint (%G_0x90b__rip__type* @G_0x90b__rip_ to i64)
%var_2_1567 = add i64 %var_2_1565, 8
store i64 %var_2_1567, i64* %var_2_3, align 8
%var_2_1568 = inttoptr i64 %var_2_1566 to i64*
%var_2_1569 = load i64, i64* %var_2_1568, align 8
store i64 %var_2_1569, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1570 = add i64 %var_2_1564, -144
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_798, 16
; %var_2_1571 = add i64 %var_2_1565, 16
; Matched:\<badref\>:  store i64 %var_2_801, i64* %PC, align 8
; store i64 %var_2_1571, i64* %var_2_3, align 8
%var_2_1572 = inttoptr i64 %var_2_1570 to i64*
store i64 %var_2_1569, i64* %var_2_1572, align 8
; Matched:%var_2_946:  %var_2_946 = load i64, i64* %RBP, align 8
; %var_2_1573 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_947:  %var_2_947 = add i64 %var_2_946, -152
; %var_2_1574 = add i64 %var_2_1573, -152
%var_2_1575 = load i64, i64* %var_2_3, align 8
%var_2_1576 = add i64 %var_2_1575, 8
store i64 %var_2_1576, i64* %var_2_3, align 8
; Matched:%var_2_807:  %var_2_807 = load i64, i64* %var_2_2695, align 1
; %var_2_1577 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_808:  %var_2_808 = inttoptr i64 %var_2_804 to i64*
; %var_2_1578 = inttoptr i64 %var_2_1574 to i64*
; Matched:\<badref\>:  store i64 %var_2_950, i64* %var_2_951, align 8
; store i64 %var_2_1577, i64* %var_2_1578, align 8
%var_2_1579 = load i64, i64* %RBP.i, align 8
%var_2_1580 = add i64 %var_2_1579, -24
%var_2_1581 = load i64, i64* %var_2_3, align 8
%var_2_1582 = add i64 %var_2_1581, 8
store i64 %var_2_1582, i64* %var_2_3, align 8
%var_2_1583 = inttoptr i64 %var_2_1580 to i64*
store i64 1, i64* %var_2_1583, align 8
%.pre113 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40103d

block_.L_40103d:                                  ; preds = %block_40104b, %block_.L_40101d
%var_2_1584 = phi i64 [ %.pre113, %block_.L_40101d ], [ %var_2_1953, %block_40104b ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_40101d ], [ %call2_40120a, %block_40104b ]
%var_2_1585 = load i64, i64* %RBP.i, align 8
%var_2_1586 = add i64 %var_2_1585, -24
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1056, 4
; %var_2_1587 = add i64 %var_2_1584, 4
; Matched:\<badref\>:  store i64 %var_2_1059, i64* %PC, align 8
; store i64 %var_2_1587, i64* %var_2_3, align 8
%var_2_1588 = inttoptr i64 %var_2_1586 to i64*
%var_2_1589 = load i64, i64* %var_2_1588, align 8
; Matched:\<badref\>:  store i64 %var_2_620, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1589, i64* %RAX.i1199, align 8
%var_2_1590 = add i64 %var_2_1585, -72
; Matched:%var_2_1063:  %var_2_1063 = add i64 %var_2_1056, 8
; %var_2_1591 = add i64 %var_2_1584, 8
; Matched:\<badref\>:  store i64 %var_2_1063, i64* %PC, align 8
; store i64 %var_2_1591, i64* %var_2_3, align 8
%var_2_1592 = inttoptr i64 %var_2_1590 to i64*
%var_2_1593 = load i64, i64* %var_2_1592, align 8
%var_2_1594 = sub i64 %var_2_1589, %var_2_1593
; Matched:%var_2_1067:  %var_2_1067 = icmp ult i64 %var_2_1061, %var_2_1065
; %var_2_1595 = icmp ult i64 %var_2_1589, %var_2_1593
; Matched:%var_2_1068:  %var_2_1068 = zext i1 %var_2_1067 to i8
; %var_2_1596 = zext i1 %var_2_1595 to i8
; Matched:\<badref\>:  store i8 %var_2_1068, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1596, i8* %var_2_14, align 1
; Matched:%var_2_1069:  %var_2_1069 = trunc i64 %var_2_1066 to i32
; %var_2_1597 = trunc i64 %var_2_1594 to i32
; Matched:%var_2_1070:  %var_2_1070 = and i32 %var_2_1069, 255
; %var_2_1598 = and i32 %var_2_1597, 255
; Matched:%var_2_1071:  %var_2_1071 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1070) #14
; %var_2_1599 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1598)
; Matched:%var_2_1072:  %var_2_1072 = trunc i32 %var_2_1071 to i8
; %var_2_1600 = trunc i32 %var_2_1599 to i8
; Matched:%var_2_1073:  %var_2_1073 = and i8 %var_2_1072, 1
; %var_2_1601 = and i8 %var_2_1600, 1
; Matched:%var_2_1074:  %var_2_1074 = xor i8 %var_2_1073, 1
; %var_2_1602 = xor i8 %var_2_1601, 1
; Matched:\<badref\>:  store i8 %var_2_1074, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1602, i8* %var_2_21, align 1
; Matched:%var_2_1075:  %var_2_1075 = xor i64 %var_2_1065, %var_2_1061
; %var_2_1603 = xor i64 %var_2_1593, %var_2_1589
; Matched:%var_2_1076:  %var_2_1076 = xor i64 %var_2_1075, %var_2_1066
; %var_2_1604 = xor i64 %var_2_1603, %var_2_1594
; Matched:%var_2_1077:  %var_2_1077 = lshr i64 %var_2_1076, 4
; %var_2_1605 = lshr i64 %var_2_1604, 4
; Matched:%var_2_1078:  %var_2_1078 = trunc i64 %var_2_1077 to i8
; %var_2_1606 = trunc i64 %var_2_1605 to i8
; Matched:%var_2_1079:  %var_2_1079 = and i8 %var_2_1078, 1
; %var_2_1607 = and i8 %var_2_1606, 1
; Matched:\<badref\>:  store i8 %var_2_1079, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1607, i8* %var_2_26, align 1
%var_2_1608 = icmp eq i64 %var_2_1594, 0
; Matched:%var_2_1081:  %var_2_1081 = zext i1 %var_2_1080 to i8
; %var_2_1609 = zext i1 %var_2_1608 to i8
; Matched:\<badref\>:  store i8 %var_2_1081, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1609, i8* %var_2_29, align 1
%var_2_1610 = lshr i64 %var_2_1594, 63
%var_2_1611 = trunc i64 %var_2_1610 to i8
; Matched:\<badref\>:  store i8 %var_2_1083, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1611, i8* %var_2_32, align 1
%var_2_1612 = lshr i64 %var_2_1589, 63
%var_2_1613 = lshr i64 %var_2_1593, 63
%var_2_1614 = xor i64 %var_2_1613, %var_2_1612
%var_2_1615 = xor i64 %var_2_1610, %var_2_1612
%var_2_1616 = add nuw nsw i64 %var_2_1615, %var_2_1614
%var_2_1617 = icmp eq i64 %var_2_1616, 2
; Matched:%var_2_1090:  %var_2_1090 = zext i1 %var_2_1089 to i8
; %var_2_1618 = zext i1 %var_2_1617 to i8
; Matched:\<badref\>:  store i8 %var_2_1090, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1618, i8* %var_2_38, align 1
%var_2_1619 = icmp ne i8 %var_2_1611, 0
%var_2_1620 = xor i1 %var_2_1619, %var_2_1617
%.demorgan134 = or i1 %var_2_1608, %var_2_1620
  %.v150 = select i1 %.demorgan134, i64 14, i64 503
%var_2_1621 = add i64 %var_2_1584, %.v150
; Matched:\<badref\>:  store i64 %var_2_1093, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1621, i64* %var_2_3, align 8
  br i1 %.demorgan134, label %block_40104b, label %block_.L_401234

block_40104b:                                     ; preds = %block_.L_40103d
%var_2_1622 = add i64 %var_2_1621, ptrtoint (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64)
%var_2_1623 = add i64 %var_2_1621, 8
store i64 %var_2_1623, i64* %var_2_3, align 8
%var_2_1624 = inttoptr i64 %var_2_1622 to i64*
%var_2_1625 = load i64, i64* %var_2_1624, align 8
store i64 %var_2_1625, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1626 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
store i64 %var_2_1626, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_1627 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
store i64 %var_2_1627, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1628 = add i64 %var_2_1585, -144
; Matched:%var_2_2366:  %var_2_2366 = add i64 %var_2_1093, 34
; %var_2_1629 = add i64 %var_2_1621, 34
; Matched:\<badref\>:  store i64 %var_2_2366, i64* %PC, align 8
; store i64 %var_2_1629, i64* %var_2_3, align 8
%var_2_1630 = inttoptr i64 %var_2_1628 to i64*
%var_2_1631 = load i64, i64* %var_2_1630, align 8
store i64 %var_2_1631, i64* %var_2_316, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_1632 = add i64 %var_2_1585, -224
; Matched:%var_2_2370:  %var_2_2370 = add i64 %var_2_1093, 42
; %var_2_1633 = add i64 %var_2_1621, 42
; Matched:\<badref\>:  store i64 %var_2_2370, i64* %PC, align 8
; store i64 %var_2_1633, i64* %var_2_3, align 8
%var_2_1634 = inttoptr i64 %var_2_1632 to i64*
store i64 %var_2_1625, i64* %var_2_1634, align 8
%var_2_1635 = load i64, i64* %var_2_3, align 8
%var_2_1636 = load <2 x i32>, <2 x i32>* %var_2_319, align 1
%var_2_1637 = load <2 x i32>, <2 x i32>* %var_2_320, align 1
%var_2_1638 = extractelement <2 x i32> %var_2_1636, i32 0
; Matched:\<badref\>:  store i32 %var_2_2525, i32* %var_2_2711, align 1, !tbaa !1292
; store i32 %var_2_1638, i32* %var_2_321, align 1
%var_2_1639 = extractelement <2 x i32> %var_2_1636, i32 1
; Matched:\<badref\>:  store i32 %var_2_2376, i32* %var_2_2713, align 1, !tbaa !1292
; store i32 %var_2_1639, i32* %var_2_323, align 1
%var_2_1640 = extractelement <2 x i32> %var_2_1637, i32 0
; Matched:\<badref\>:  store i32 %var_2_2527, i32* %var_2_2714, align 1, !tbaa !1292
; store i32 %var_2_1640, i32* %var_2_324, align 1
%var_2_1641 = extractelement <2 x i32> %var_2_1637, i32 1
; Matched:\<badref\>:  store i32 %var_2_2378, i32* %var_2_2716, align 1, !tbaa !1292
; store i32 %var_2_1641, i32* %var_2_326, align 1
; Matched:%var_2_2379:  %var_2_2379 = load i64, i64* %RBP, align 8
; %var_2_1642 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2380:  %var_2_2380 = add i64 %var_2_2379, -232
; %var_2_1643 = add i64 %var_2_1642, -232
; Matched:%var_2_2006:  %var_2_2006 = add i64 %var_2_2005, 11
; %var_2_1644 = add i64 %var_2_1635, 11
; Matched:\<badref\>:  store i64 %var_2_2006, i64* %PC, align 8
; store i64 %var_2_1644, i64* %var_2_3, align 8
; Matched:%var_2_2382:  %var_2_2382 = load i64, i64* %var_2_2703, align 1
; %var_2_1645 = load i64, i64* %var_2_312, align 1
; Matched:%var_2_2383:  %var_2_2383 = inttoptr i64 %var_2_2380 to i64*
; %var_2_1646 = inttoptr i64 %var_2_1643 to i64*
; Matched:\<badref\>:  store i64 %var_2_2382, i64* %var_2_2383, align 8
; store i64 %var_2_1645, i64* %var_2_1646, align 8
; Matched:%var_2_2384:  %var_2_2384 = load i64, i64* %RBP, align 8
; %var_2_1647 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2385:  %var_2_2385 = add i64 %var_2_2384, -240
; %var_2_1648 = add i64 %var_2_1647, -240
%var_2_1649 = load i64, i64* %var_2_3, align 8
%var_2_1650 = add i64 %var_2_1649, 8
store i64 %var_2_1650, i64* %var_2_3, align 8
; Matched:%var_2_2388:  %var_2_2388 = load i64, i64* %var_2_2699, align 1
; %var_2_1651 = load i64, i64* %var_2_307, align 1
; Matched:%var_2_2389:  %var_2_2389 = inttoptr i64 %var_2_2385 to i64*
; %var_2_1652 = inttoptr i64 %var_2_1648 to i64*
; Matched:\<badref\>:  store i64 %var_2_2388, i64* %var_2_2389, align 8
; store i64 %var_2_1651, i64* %var_2_1652, align 8
%var_2_1653 = load i64, i64* %var_2_3, align 8
%var_2_1654 = add i64 %var_2_1653, -2360
; Matched:%var_2_2442:  %var_2_2442 = add i64 %var_2_2440, 5
; %var_2_1655 = add i64 %var_2_1653, 5
%var_2_1656 = load i64, i64* %var_2_6, align 8
%var_2_1657 = add i64 %var_2_1656, -8
; Matched:%var_2_2445:  %var_2_2445 = inttoptr i64 %var_2_2444 to i64*
; %var_2_1658 = inttoptr i64 %var_2_1657 to i64*
; Matched:\<badref\>:  store i64 %var_2_2414, i64* %var_2_2417, align 8
; store i64 %var_2_1655, i64* %var_2_1658, align 8
; Matched:\<badref\>:  store i64 %var_2_2473, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1657, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2391, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1654, i64* %var_2_3, align 8
%call2_401088 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_1654, %struct.Memory* %MEMORY.18)
%var_2_1659 = load i64, i64* %RBP.i, align 8
%var_2_1660 = add i64 %var_2_1659, -232
%var_2_1661 = load i64, i64* %var_2_3, align 8
%var_2_1662 = add i64 %var_2_1661, 8
store i64 %var_2_1662, i64* %var_2_3, align 8
%var_2_1663 = inttoptr i64 %var_2_1660 to double*
%var_2_1664 = load double, double* %var_2_1663, align 8
%var_2_1665 = load double, double* %var_2_301, align 1
%var_2_1666 = fmul double %var_2_1664, %var_2_1665
store double %var_2_1666, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1667 = add i64 %var_2_1659, -144
%var_2_1668 = add i64 %var_2_1661, 20
store i64 %var_2_1668, i64* %var_2_3, align 8
%var_2_1669 = inttoptr i64 %var_2_1667 to i64*
%var_2_1670 = load i64, i64* %var_2_1669, align 8
; Matched:\<badref\>:  store i64 %var_2_784, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1670, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1671 = add i64 %var_2_1659, -248
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_1672 = add i64 %var_2_1661, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_1672, i64* %var_2_3, align 8
%var_2_1673 = inttoptr i64 %var_2_1671 to double*
store double %var_2_1666, double* %var_2_1673, align 8
%var_2_1674 = load i64, i64* %var_2_3, align 8
%var_2_1675 = add i64 %var_2_1674, -2457
; Matched:%var_2_2414:  %var_2_2414 = add i64 %var_2_2412, 5
; %var_2_1676 = add i64 %var_2_1674, 5
%var_2_1677 = load i64, i64* %var_2_6, align 8
%var_2_1678 = add i64 %var_2_1677, -8
; Matched:%var_2_2417:  %var_2_2417 = inttoptr i64 %var_2_2416 to i64*
; %var_2_1679 = inttoptr i64 %var_2_1678 to i64*
; Matched:\<badref\>:  store i64 %var_2_2542, i64* %var_2_2545, align 8
; store i64 %var_2_1676, i64* %var_2_1679, align 8
; Matched:\<badref\>:  store i64 %var_2_678, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1678, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2413, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1675, i64* %var_2_3, align 8
%call2_4010a9 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1675, %struct.Memory* %call2_401088)
%var_2_1680 = load i64, i64* %RBP.i, align 8
%var_2_1681 = add i64 %var_2_1680, -248
%var_2_1682 = load i64, i64* %var_2_3, align 8
%var_2_1683 = add i64 %var_2_1682, 8
store i64 %var_2_1683, i64* %var_2_3, align 8
%var_2_1684 = inttoptr i64 %var_2_1681 to double*
%var_2_1685 = load double, double* %var_2_1684, align 8
%var_2_1686 = load double, double* %var_2_301, align 1
%var_2_1687 = fmul double %var_2_1685, %var_2_1686
store double %var_2_1687, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1688 = add i64 %var_2_1680, -144
%var_2_1689 = add i64 %var_2_1682, 20
store i64 %var_2_1689, i64* %var_2_3, align 8
%var_2_1690 = inttoptr i64 %var_2_1688 to i64*
%var_2_1691 = load i64, i64* %var_2_1690, align 8
; Matched:\<badref\>:  store i64 %var_2_2408, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1691, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_2581:  %var_2_2581 = add i64 %var_2_2571, -152
; %var_2_1692 = add i64 %var_2_1680, -152
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_1693 = add i64 %var_2_1682, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_1693, i64* %var_2_3, align 8
; Matched:%var_2_2433:  %var_2_2433 = bitcast i64 %var_2_2430 to double
; %var_2_1694 = bitcast i64 %var_2_1691 to double
; Matched:%var_2_2434:  %var_2_2434 = inttoptr i64 %var_2_2431 to double*
; %var_2_1695 = inttoptr i64 %var_2_1692 to double*
; Matched:%var_2_2435:  %var_2_2435 = load double, double* %var_2_2434, align 8
; %var_2_1696 = load double, double* %var_2_1695, align 8
; Matched:%var_2_2586:  %var_2_2586 = fadd double %var_2_2583, %var_2_2585
; %var_2_1697 = fadd double %var_2_1694, %var_2_1696
; Matched:\<badref\>:  store double %var_2_2586, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_1697, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
%var_2_1698 = add i64 %var_2_1680, -256
; Matched:%var_2_1483:  %var_2_1483 = add i64 %var_2_1456, 36
; %var_2_1699 = add i64 %var_2_1682, 36
; Matched:\<badref\>:  store i64 %var_2_1483, i64* %PC, align 8
; store i64 %var_2_1699, i64* %var_2_3, align 8
%var_2_1700 = inttoptr i64 %var_2_1698 to double*
store double %var_2_1687, double* %var_2_1700, align 8
%var_2_1701 = load i64, i64* %var_2_3, align 8
%var_2_1702 = add i64 %var_2_1701, -2498
; Matched:%var_2_2592:  %var_2_2592 = add i64 %var_2_2590, 5
; %var_2_1703 = add i64 %var_2_1701, 5
%var_2_1704 = load i64, i64* %var_2_6, align 8
%var_2_1705 = add i64 %var_2_1704, -8
; Matched:%var_2_2595:  %var_2_2595 = inttoptr i64 %var_2_2594 to i64*
; %var_2_1706 = inttoptr i64 %var_2_1705 to i64*
; Matched:\<badref\>:  store i64 %var_2_435, i64* %var_2_438, align 8
; store i64 %var_2_1703, i64* %var_2_1706, align 8
; Matched:\<badref\>:  store i64 %var_2_2623, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1705, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2441, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1702, i64* %var_2_3, align 8
%call2_4010d2 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1702, %struct.Memory* %call2_4010a9)
%var_2_1707 = load i64, i64* %RBP.i, align 8
%var_2_1708 = add i64 %var_2_1707, -144
%var_2_1709 = load i64, i64* %var_2_3, align 8
%var_2_1710 = add i64 %var_2_1709, 8
store i64 %var_2_1710, i64* %var_2_3, align 8
%var_2_1711 = inttoptr i64 %var_2_1708 to i64*
%var_2_1712 = load i64, i64* %var_2_1711, align 8
; Matched:\<badref\>:  store i64 %var_2_786, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_1712, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_2604:  %var_2_2604 = add i64 %var_2_2599, -152
; %var_2_1713 = add i64 %var_2_1707, -152
%var_2_1714 = add i64 %var_2_1709, 16
store i64 %var_2_1714, i64* %var_2_3, align 8
; Matched:%var_2_2456:  %var_2_2456 = bitcast i64 %var_2_2453 to double
; %var_2_1715 = bitcast i64 %var_2_1712 to double
; Matched:%var_2_2457:  %var_2_2457 = inttoptr i64 %var_2_2454 to double*
; %var_2_1716 = inttoptr i64 %var_2_1713 to double*
; Matched:%var_2_2458:  %var_2_2458 = load double, double* %var_2_2457, align 8
; %var_2_1717 = load double, double* %var_2_1716, align 8
; Matched:%var_2_2459:  %var_2_2459 = fsub double %var_2_2456, %var_2_2458
; %var_2_1718 = fsub double %var_2_1715, %var_2_1717
; Matched:\<badref\>:  store double %var_2_2609, double* %var_2_2698, align 1, !tbaa !1284
; store double %var_2_1718, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1719 = add i64 %var_2_1707, -264
%var_2_1720 = add i64 %var_2_1709, 24
store i64 %var_2_1720, i64* %var_2_3, align 8
%var_2_1721 = load i64, i64* %var_2_302, align 1
%var_2_1722 = inttoptr i64 %var_2_1719 to i64*
store i64 %var_2_1721, i64* %var_2_1722, align 8
%var_2_1723 = load i64, i64* %var_2_3, align 8
%var_2_1724 = load <2 x i32>, <2 x i32>* %var_2_327, align 1
%var_2_1725 = load <2 x i32>, <2 x i32>* %var_2_328, align 1
%var_2_1726 = extractelement <2 x i32> %var_2_1724, i32 0
; Matched:\<badref\>:  store i32 %var_2_2616, i32* %var_2_2711, align 1, !tbaa !1292
; store i32 %var_2_1726, i32* %var_2_321, align 1
%var_2_1727 = extractelement <2 x i32> %var_2_1724, i32 1
; Matched:\<badref\>:  store i32 %var_2_2467, i32* %var_2_2713, align 1, !tbaa !1292
; store i32 %var_2_1727, i32* %var_2_323, align 1
%var_2_1728 = extractelement <2 x i32> %var_2_1725, i32 0
; Matched:\<badref\>:  store i32 %var_2_2618, i32* %var_2_2714, align 1, !tbaa !1292
; store i32 %var_2_1728, i32* %var_2_324, align 1
%var_2_1729 = extractelement <2 x i32> %var_2_1725, i32 1
; Matched:\<badref\>:  store i32 %var_2_2469, i32* %var_2_2716, align 1, !tbaa !1292
; store i32 %var_2_1729, i32* %var_2_326, align 1
%var_2_1730 = add i64 %var_2_1723, -2527
; Matched:%var_2_2621:  %var_2_2621 = add i64 %var_2_2613, 8
; %var_2_1731 = add i64 %var_2_1723, 8
%var_2_1732 = load i64, i64* %var_2_6, align 8
%var_2_1733 = add i64 %var_2_1732, -8
; Matched:%var_2_2474:  %var_2_2474 = inttoptr i64 %var_2_2473 to i64*
; %var_2_1734 = inttoptr i64 %var_2_1733 to i64*
; Matched:\<badref\>:  store i64 %var_2_2621, i64* %var_2_2624, align 8
; store i64 %var_2_1731, i64* %var_2_1734, align 8
; Matched:\<badref\>:  store i64 %var_2_1275, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1733, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2470, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1730, i64* %var_2_3, align 8
%call2_4010f2 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1730, %struct.Memory* %call2_4010d2)
%var_2_1735 = load i64, i64* %RBP.i, align 8
%var_2_1736 = add i64 %var_2_1735, -264
%var_2_1737 = load i64, i64* %var_2_3, align 8
%var_2_1738 = add i64 %var_2_1737, 8
store i64 %var_2_1738, i64* %var_2_3, align 8
%var_2_1739 = inttoptr i64 %var_2_1736 to double*
%var_2_1740 = load double, double* %var_2_1739, align 8
%var_2_1741 = load double, double* %var_2_301, align 1
%var_2_1742 = fadd double %var_2_1740, %var_2_1741
store double %var_2_1742, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1743 = add i64 %var_2_1735, -224
%var_2_1744 = add i64 %var_2_1737, 20
store i64 %var_2_1744, i64* %var_2_3, align 8
%var_2_1745 = inttoptr i64 %var_2_1743 to i64*
%var_2_1746 = load i64, i64* %var_2_1745, align 8
; Matched:\<badref\>:  store i64 %var_2_2487, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1746, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%.cast41 = bitcast i64 %var_2_1746 to double
%var_2_1747 = fsub double %var_2_1742, %.cast41
store double %var_2_1747, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1748 = add i64 %var_2_1735, -256
%var_2_1749 = add i64 %var_2_1737, 32
store i64 %var_2_1749, i64* %var_2_3, align 8
%var_2_1750 = inttoptr i64 %var_2_1748 to double*
%var_2_1751 = load double, double* %var_2_1750, align 8
%var_2_1752 = fdiv double %var_2_1751, %var_2_1747
store double %var_2_1752, double* %var_2_311, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2704, align 1, !tbaa !1284
; store i64 0, i64* %var_2_313, align 1
%.cast43 = bitcast double %var_2_1752 to <2 x i32>
%var_2_1753 = extractelement <2 x i32> %.cast43, i32 0
store i32 %var_2_1753, i32* %var_2_321, align 1
%var_2_1754 = extractelement <2 x i32> %.cast43, i32 1
store i32 %var_2_1754, i32* %var_2_323, align 1
store i32 0, i32* %var_2_324, align 1
store i32 0, i32* %var_2_326, align 1
%var_2_1755 = add i64 %var_2_1737, -2583
%var_2_1756 = add i64 %var_2_1737, 44
%var_2_1757 = load i64, i64* %var_2_6, align 8
%var_2_1758 = add i64 %var_2_1757, -8
%var_2_1759 = inttoptr i64 %var_2_1758 to i64*
store i64 %var_2_1756, i64* %var_2_1759, align 8
; Matched:\<badref\>:  store i64 %var_2_757, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1758, i64* %var_2_6, align 8
store i64 %var_2_1755, i64* %var_2_3, align 8
%call2_40111e = tail call %struct.Memory* @ext_atan(%struct.State* nonnull %0, i64 %var_2_1755, %struct.Memory* %call2_4010f2)
%var_2_1760 = load i64, i64* %var_2_3, align 8
%var_2_1761 = add i64 %var_2_1760, ptrtoint (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64)
%var_2_1762 = add i64 %var_2_1760, 8
store i64 %var_2_1762, i64* %var_2_3, align 8
%var_2_1763 = inttoptr i64 %var_2_1761 to i64*
%var_2_1764 = load i64, i64* %var_2_1763, align 8
store i64 %var_2_1764, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_1765 = load i64, i64* %RBP.i, align 8
%var_2_1766 = add i64 %var_2_1765, -240
%var_2_1767 = add i64 %var_2_1760, 16
store i64 %var_2_1767, i64* %var_2_3, align 8
%var_2_1768 = inttoptr i64 %var_2_1766 to double*
%var_2_1769 = load double, double* %var_2_1768, align 8
%var_2_1770 = load double, double* %var_2_301, align 1
%var_2_1771 = fmul double %var_2_1769, %var_2_1770
%var_2_1772 = add i64 %var_2_1765, -144
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_1773 = add i64 %var_2_1760, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_1773, i64* %var_2_3, align 8
%var_2_1774 = inttoptr i64 %var_2_1772 to double*
store double %var_2_1771, double* %var_2_1774, align 8
; Matched:%var_2_2336:  %var_2_2336 = load i64, i64* %PC, align 8
; %var_2_1775 = load i64, i64* %var_2_3, align 8
%var_2_1776 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
store i64 %var_2_1776, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1777 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
store i64 %var_2_1777, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_1778 = load i64, i64* %RBP.i, align 8
%var_2_1779 = add i64 %var_2_1778, -152
; Matched:%var_2_2516:  %var_2_2516 = add i64 %var_2_2511, 26
; %var_2_1780 = add i64 %var_2_1775, 26
; Matched:\<badref\>:  store i64 %var_2_2516, i64* %PC, align 8
; store i64 %var_2_1780, i64* %var_2_3, align 8
%var_2_1781 = inttoptr i64 %var_2_1779 to i64*
%var_2_1782 = load i64, i64* %var_2_1781, align 8
store i64 %var_2_1782, i64* %var_2_316, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
; Matched:%var_2_2519:  %var_2_2519 = add i64 %var_2_2514, -272
; %var_2_1783 = add i64 %var_2_1778, -272
; Matched:%var_2_2520:  %var_2_2520 = add i64 %var_2_2511, 34
; %var_2_1784 = add i64 %var_2_1775, 34
; Matched:\<badref\>:  store i64 %var_2_2520, i64* %PC, align 8
; store i64 %var_2_1784, i64* %var_2_3, align 8
; Matched:%var_2_2521:  %var_2_2521 = inttoptr i64 %var_2_2519 to i64*
; %var_2_1785 = inttoptr i64 %var_2_1783 to i64*
; Matched:\<badref\>:  store i64 %var_2_2512, i64* %var_2_2521, align 8
; store i64 %var_2_1776, i64* %var_2_1785, align 8
%var_2_1786 = load i64, i64* %var_2_3, align 8
%var_2_1787 = load <2 x i32>, <2 x i32>* %var_2_319, align 1
%var_2_1788 = load <2 x i32>, <2 x i32>* %var_2_320, align 1
%var_2_1789 = extractelement <2 x i32> %var_2_1787, i32 0
; Matched:\<badref\>:  store i32 %var_2_2375, i32* %var_2_2711, align 1, !tbaa !1292
; store i32 %var_2_1789, i32* %var_2_321, align 1
%var_2_1790 = extractelement <2 x i32> %var_2_1787, i32 1
; Matched:\<badref\>:  store i32 %var_2_2526, i32* %var_2_2713, align 1, !tbaa !1292
; store i32 %var_2_1790, i32* %var_2_323, align 1
%var_2_1791 = extractelement <2 x i32> %var_2_1788, i32 0
; Matched:\<badref\>:  store i32 %var_2_2377, i32* %var_2_2714, align 1, !tbaa !1292
; store i32 %var_2_1791, i32* %var_2_324, align 1
%var_2_1792 = extractelement <2 x i32> %var_2_1788, i32 1
; Matched:\<badref\>:  store i32 %var_2_2528, i32* %var_2_2716, align 1, !tbaa !1292
; store i32 %var_2_1792, i32* %var_2_326, align 1
; Matched:%var_2_2529:  %var_2_2529 = load i64, i64* %RBP, align 8
; %var_2_1793 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2530:  %var_2_2530 = add i64 %var_2_2529, -280
; %var_2_1794 = add i64 %var_2_1793, -280
; Matched:%var_2_2032:  %var_2_2032 = add i64 %var_2_2031, 11
; %var_2_1795 = add i64 %var_2_1786, 11
; Matched:\<badref\>:  store i64 %var_2_2032, i64* %PC, align 8
; store i64 %var_2_1795, i64* %var_2_3, align 8
; Matched:%var_2_2532:  %var_2_2532 = load i64, i64* %var_2_2699, align 1
; %var_2_1796 = load i64, i64* %var_2_307, align 1
; Matched:%var_2_2533:  %var_2_2533 = inttoptr i64 %var_2_2530 to i64*
; %var_2_1797 = inttoptr i64 %var_2_1794 to i64*
; Matched:\<badref\>:  store i64 %var_2_2532, i64* %var_2_2533, align 8
; store i64 %var_2_1796, i64* %var_2_1797, align 8
; Matched:%var_2_2534:  %var_2_2534 = load i64, i64* %RBP, align 8
; %var_2_1798 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2535:  %var_2_2535 = add i64 %var_2_2534, -288
; %var_2_1799 = add i64 %var_2_1798, -288
%var_2_1800 = load i64, i64* %var_2_3, align 8
%var_2_1801 = add i64 %var_2_1800, 8
store i64 %var_2_1801, i64* %var_2_3, align 8
; Matched:%var_2_2538:  %var_2_2538 = load i64, i64* %var_2_2703, align 1
; %var_2_1802 = load i64, i64* %var_2_312, align 1
; Matched:%var_2_2539:  %var_2_2539 = inttoptr i64 %var_2_2535 to i64*
; %var_2_1803 = inttoptr i64 %var_2_1799 to i64*
; Matched:\<badref\>:  store i64 %var_2_2538, i64* %var_2_2539, align 8
; store i64 %var_2_1802, i64* %var_2_1803, align 8
%var_2_1804 = load i64, i64* %var_2_3, align 8
%var_2_1805 = add i64 %var_2_1804, -2596
; Matched:%var_2_2392:  %var_2_2392 = add i64 %var_2_2390, 5
; %var_2_1806 = add i64 %var_2_1804, 5
%var_2_1807 = load i64, i64* %var_2_6, align 8
%var_2_1808 = add i64 %var_2_1807, -8
; Matched:%var_2_438:  %var_2_438 = inttoptr i64 %var_2_437 to i64*
; %var_2_1809 = inttoptr i64 %var_2_1808 to i64*
; Matched:\<badref\>:  store i64 %var_2_2564, i64* %var_2_2567, align 8
; store i64 %var_2_1806, i64* %var_2_1809, align 8
; Matched:\<badref\>:  store i64 %var_2_1627, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1808, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2541, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1805, i64* %var_2_3, align 8
%call2_401174 = tail call %struct.Memory* @ext_sin(%struct.State* nonnull %0, i64 %var_2_1805, %struct.Memory* %call2_40111e)
%var_2_1810 = load i64, i64* %RBP.i, align 8
%var_2_1811 = add i64 %var_2_1810, -288
%var_2_1812 = load i64, i64* %var_2_3, align 8
%var_2_1813 = add i64 %var_2_1812, 8
store i64 %var_2_1813, i64* %var_2_3, align 8
%var_2_1814 = inttoptr i64 %var_2_1811 to double*
%var_2_1815 = load double, double* %var_2_1814, align 8
%var_2_1816 = load double, double* %var_2_301, align 1
%var_2_1817 = fmul double %var_2_1815, %var_2_1816
store double %var_2_1817, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
; Matched:%var_2_2555:  %var_2_2555 = add i64 %var_2_2549, -152
; %var_2_1818 = add i64 %var_2_1810, -152
%var_2_1819 = add i64 %var_2_1812, 20
store i64 %var_2_1819, i64* %var_2_3, align 8
; Matched:%var_2_2557:  %var_2_2557 = inttoptr i64 %var_2_2555 to i64*
; %var_2_1820 = inttoptr i64 %var_2_1818 to i64*
; Matched:%var_2_2558:  %var_2_2558 = load i64, i64* %var_2_2557, align 8
; %var_2_1821 = load i64, i64* %var_2_1820, align 8
; Matched:\<badref\>:  store i64 %var_2_2558, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1821, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_1822 = add i64 %var_2_1810, -296
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_1823 = add i64 %var_2_1812, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_1823, i64* %var_2_3, align 8
%var_2_1824 = inttoptr i64 %var_2_1822 to double*
store double %var_2_1817, double* %var_2_1824, align 8
%var_2_1825 = load i64, i64* %var_2_3, align 8
%var_2_1826 = add i64 %var_2_1825, -2693
; Matched:%var_2_2564:  %var_2_2564 = add i64 %var_2_2562, 5
; %var_2_1827 = add i64 %var_2_1825, 5
%var_2_1828 = load i64, i64* %var_2_6, align 8
%var_2_1829 = add i64 %var_2_1828, -8
; Matched:%var_2_2567:  %var_2_2567 = inttoptr i64 %var_2_2566 to i64*
; %var_2_1830 = inttoptr i64 %var_2_1829 to i64*
; Matched:\<badref\>:  store i64 %var_2_2392, i64* %var_2_2395, align 8
; store i64 %var_2_1827, i64* %var_2_1830, align 8
; Matched:\<badref\>:  store i64 %var_2_741, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1829, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2563, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1826, i64* %var_2_3, align 8
%call2_401195 = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1826, %struct.Memory* %call2_401174)
%var_2_1831 = load i64, i64* %RBP.i, align 8
%var_2_1832 = add i64 %var_2_1831, -296
%var_2_1833 = load i64, i64* %var_2_3, align 8
%var_2_1834 = add i64 %var_2_1833, 8
store i64 %var_2_1834, i64* %var_2_3, align 8
%var_2_1835 = inttoptr i64 %var_2_1832 to double*
%var_2_1836 = load double, double* %var_2_1835, align 8
%var_2_1837 = load double, double* %var_2_301, align 1
%var_2_1838 = fmul double %var_2_1836, %var_2_1837
store double %var_2_1838, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1839 = add i64 %var_2_1831, -144
%var_2_1840 = add i64 %var_2_1833, 20
store i64 %var_2_1840, i64* %var_2_3, align 8
%var_2_1841 = inttoptr i64 %var_2_1839 to i64*
%var_2_1842 = load i64, i64* %var_2_1841, align 8
; Matched:\<badref\>:  store i64 %var_2_1613, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1842, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_2431:  %var_2_2431 = add i64 %var_2_2421, -152
; %var_2_1843 = add i64 %var_2_1831, -152
; Matched:%var_2_1478:  %var_2_1478 = add i64 %var_2_1456, 28
; %var_2_1844 = add i64 %var_2_1833, 28
; Matched:\<badref\>:  store i64 %var_2_1478, i64* %PC, align 8
; store i64 %var_2_1844, i64* %var_2_3, align 8
; Matched:%var_2_2583:  %var_2_2583 = bitcast i64 %var_2_2580 to double
; %var_2_1845 = bitcast i64 %var_2_1842 to double
; Matched:%var_2_2584:  %var_2_2584 = inttoptr i64 %var_2_2581 to double*
; %var_2_1846 = inttoptr i64 %var_2_1843 to double*
; Matched:%var_2_2585:  %var_2_2585 = load double, double* %var_2_2584, align 8
; %var_2_1847 = load double, double* %var_2_1846, align 8
; Matched:%var_2_2436:  %var_2_2436 = fadd double %var_2_2433, %var_2_2435
; %var_2_1848 = fadd double %var_2_1845, %var_2_1847
; Matched:\<badref\>:  store double %var_2_2436, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_1848, double* %var_2_301, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2696, align 1, !tbaa !1284
; store i64 0, i64* %var_2_303, align 1
%var_2_1849 = add i64 %var_2_1831, -304
; Matched:%var_2_1483:  %var_2_1483 = add i64 %var_2_1456, 36
; %var_2_1850 = add i64 %var_2_1833, 36
; Matched:\<badref\>:  store i64 %var_2_1483, i64* %PC, align 8
; store i64 %var_2_1850, i64* %var_2_3, align 8
%var_2_1851 = inttoptr i64 %var_2_1849 to double*
store double %var_2_1838, double* %var_2_1851, align 8
%var_2_1852 = load i64, i64* %var_2_3, align 8
%var_2_1853 = add i64 %var_2_1852, -2734
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_433, 5
; %var_2_1854 = add i64 %var_2_1852, 5
%var_2_1855 = load i64, i64* %var_2_6, align 8
%var_2_1856 = add i64 %var_2_1855, -8
; Matched:%var_2_2395:  %var_2_2395 = inttoptr i64 %var_2_2394 to i64*
; %var_2_1857 = inttoptr i64 %var_2_1856 to i64*
; Matched:\<badref\>:  store i64 %var_2_2442, i64* %var_2_2445, align 8
; store i64 %var_2_1854, i64* %var_2_1857, align 8
; Matched:\<badref\>:  store i64 %var_2_430, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1856, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2591, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1853, i64* %var_2_3, align 8
%call2_4011be = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1853, %struct.Memory* %call2_401195)
%var_2_1858 = load i64, i64* %RBP.i, align 8
%var_2_1859 = add i64 %var_2_1858, -144
%var_2_1860 = load i64, i64* %var_2_3, align 8
%var_2_1861 = add i64 %var_2_1860, 8
store i64 %var_2_1861, i64* %var_2_3, align 8
%var_2_1862 = inttoptr i64 %var_2_1859 to i64*
%var_2_1863 = load i64, i64* %var_2_1862, align 8
; Matched:\<badref\>:  store i64 %var_2_2603, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_1863, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_2454:  %var_2_2454 = add i64 %var_2_2449, -152
; %var_2_1864 = add i64 %var_2_1858, -152
%var_2_1865 = add i64 %var_2_1860, 16
store i64 %var_2_1865, i64* %var_2_3, align 8
; Matched:%var_2_2606:  %var_2_2606 = bitcast i64 %var_2_2603 to double
; %var_2_1866 = bitcast i64 %var_2_1863 to double
; Matched:%var_2_2607:  %var_2_2607 = inttoptr i64 %var_2_2604 to double*
; %var_2_1867 = inttoptr i64 %var_2_1864 to double*
; Matched:%var_2_2608:  %var_2_2608 = load double, double* %var_2_2607, align 8
; %var_2_1868 = load double, double* %var_2_1867, align 8
; Matched:%var_2_2609:  %var_2_2609 = fsub double %var_2_2606, %var_2_2608
; %var_2_1869 = fsub double %var_2_1866, %var_2_1868
; Matched:\<badref\>:  store double %var_2_2459, double* %var_2_2698, align 1, !tbaa !1284
; store double %var_2_1869, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1870 = add i64 %var_2_1858, -312
%var_2_1871 = add i64 %var_2_1860, 24
store i64 %var_2_1871, i64* %var_2_3, align 8
%var_2_1872 = load i64, i64* %var_2_302, align 1
%var_2_1873 = inttoptr i64 %var_2_1870 to i64*
store i64 %var_2_1872, i64* %var_2_1873, align 8
%var_2_1874 = load i64, i64* %var_2_3, align 8
%var_2_1875 = load <2 x i32>, <2 x i32>* %var_2_327, align 1
%var_2_1876 = load <2 x i32>, <2 x i32>* %var_2_328, align 1
%var_2_1877 = extractelement <2 x i32> %var_2_1875, i32 0
; Matched:\<badref\>:  store i32 %var_2_2466, i32* %var_2_2711, align 1, !tbaa !1292
; store i32 %var_2_1877, i32* %var_2_321, align 1
%var_2_1878 = extractelement <2 x i32> %var_2_1875, i32 1
; Matched:\<badref\>:  store i32 %var_2_2617, i32* %var_2_2713, align 1, !tbaa !1292
; store i32 %var_2_1878, i32* %var_2_323, align 1
%var_2_1879 = extractelement <2 x i32> %var_2_1876, i32 0
; Matched:\<badref\>:  store i32 %var_2_2468, i32* %var_2_2714, align 1, !tbaa !1292
; store i32 %var_2_1879, i32* %var_2_324, align 1
%var_2_1880 = extractelement <2 x i32> %var_2_1876, i32 1
; Matched:\<badref\>:  store i32 %var_2_2619, i32* %var_2_2716, align 1, !tbaa !1292
; store i32 %var_2_1880, i32* %var_2_326, align 1
%var_2_1881 = add i64 %var_2_1874, -2763
; Matched:%var_2_2471:  %var_2_2471 = add i64 %var_2_2463, 8
; %var_2_1882 = add i64 %var_2_1874, 8
%var_2_1883 = load i64, i64* %var_2_6, align 8
%var_2_1884 = add i64 %var_2_1883, -8
; Matched:%var_2_2624:  %var_2_2624 = inttoptr i64 %var_2_2623 to i64*
; %var_2_1885 = inttoptr i64 %var_2_1884 to i64*
; Matched:\<badref\>:  store i64 %var_2_2471, i64* %var_2_2474, align 8
; store i64 %var_2_1882, i64* %var_2_1885, align 8
; Matched:\<badref\>:  store i64 %var_2_1547, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1884, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_2620, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1881, i64* %var_2_3, align 8
%call2_4011de = tail call %struct.Memory* @ext_cos(%struct.State* nonnull %0, i64 %var_2_1881, %struct.Memory* %call2_4011be)
%var_2_1886 = load i64, i64* %RBP.i, align 8
%var_2_1887 = add i64 %var_2_1886, -312
%var_2_1888 = load i64, i64* %var_2_3, align 8
%var_2_1889 = add i64 %var_2_1888, 8
store i64 %var_2_1889, i64* %var_2_3, align 8
%var_2_1890 = inttoptr i64 %var_2_1887 to double*
%var_2_1891 = load double, double* %var_2_1890, align 8
%var_2_1892 = load double, double* %var_2_301, align 1
%var_2_1893 = fadd double %var_2_1891, %var_2_1892
store double %var_2_1893, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1894 = add i64 %var_2_1886, -280
%var_2_1895 = add i64 %var_2_1888, 20
store i64 %var_2_1895, i64* %var_2_3, align 8
%var_2_1896 = inttoptr i64 %var_2_1894 to i64*
%var_2_1897 = load i64, i64* %var_2_1896, align 8
; Matched:\<badref\>:  store i64 %var_2_2637, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1897, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%.cast48 = bitcast i64 %var_2_1897 to double
%var_2_1898 = fsub double %var_2_1893, %.cast48
store double %var_2_1898, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1899 = add i64 %var_2_1886, -304
%var_2_1900 = add i64 %var_2_1888, 32
store i64 %var_2_1900, i64* %var_2_3, align 8
%var_2_1901 = inttoptr i64 %var_2_1899 to double*
%var_2_1902 = load double, double* %var_2_1901, align 8
%var_2_1903 = fdiv double %var_2_1902, %var_2_1898
store double %var_2_1903, double* %var_2_311, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2704, align 1, !tbaa !1284
; store i64 0, i64* %var_2_313, align 1
%.cast50 = bitcast double %var_2_1903 to <2 x i32>
%var_2_1904 = extractelement <2 x i32> %.cast50, i32 0
store i32 %var_2_1904, i32* %var_2_321, align 1
%var_2_1905 = extractelement <2 x i32> %.cast50, i32 1
store i32 %var_2_1905, i32* %var_2_323, align 1
store i32 0, i32* %var_2_324, align 1
store i32 0, i32* %var_2_326, align 1
%var_2_1906 = add i64 %var_2_1888, -2819
%var_2_1907 = add i64 %var_2_1888, 44
%var_2_1908 = load i64, i64* %var_2_6, align 8
%var_2_1909 = add i64 %var_2_1908, -8
%var_2_1910 = inttoptr i64 %var_2_1909 to i64*
store i64 %var_2_1907, i64* %var_2_1910, align 8
; Matched:\<badref\>:  store i64 %var_2_2444, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_1909, i64* %var_2_6, align 8
store i64 %var_2_1906, i64* %var_2_3, align 8
%call2_40120a = tail call %struct.Memory* @ext_atan(%struct.State* nonnull %0, i64 %var_2_1906, %struct.Memory* %call2_4011de)
%var_2_1911 = load i64, i64* %RBP.i, align 8
%var_2_1912 = add i64 %var_2_1911, -272
%var_2_1913 = load i64, i64* %var_2_3, align 8
%var_2_1914 = add i64 %var_2_1913, 8
store i64 %var_2_1914, i64* %var_2_3, align 8
%var_2_1915 = inttoptr i64 %var_2_1912 to double*
%var_2_1916 = load double, double* %var_2_1915, align 8
%var_2_1917 = load double, double* %var_2_301, align 1
%var_2_1918 = fmul double %var_2_1916, %var_2_1917
store double %var_2_1918, double* %var_2_306, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_2700, align 1, !tbaa !1284
; store i64 0, i64* %var_2_308, align 1
%var_2_1919 = add i64 %var_2_1911, -152
%var_2_1920 = add i64 %var_2_1913, 20
store i64 %var_2_1920, i64* %var_2_3, align 8
%var_2_1921 = inttoptr i64 %var_2_1919 to double*
store double %var_2_1918, double* %var_2_1921, align 8
%var_2_1922 = load i64, i64* %RBP.i, align 8
%var_2_1923 = add i64 %var_2_1922, -24
%var_2_1924 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1842:  %var_2_1842 = add i64 %var_2_1841, 4
; %var_2_1925 = add i64 %var_2_1924, 4
; Matched:\<badref\>:  store i64 %var_2_384, i64* %PC, align 8
; store i64 %var_2_1925, i64* %var_2_3, align 8
%var_2_1926 = inttoptr i64 %var_2_1923 to i64*
; Matched:%var_2_122:  %var_2_122 = load i64, i64* %var_2_121, align 8
; %var_2_1927 = load i64, i64* %var_2_1926, align 8
; Matched:%var_2_123:  %var_2_123 = add i64 %var_2_122, 1
; %var_2_1928 = add i64 %var_2_1927, 1
; Matched:\<badref\>:  store i64 %var_2_2241, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1928, i64* %RAX.i1199, align 8
; Matched:%var_2_2242:  %var_2_2242 = icmp eq i64 %var_2_2240, -1
; %var_2_1929 = icmp eq i64 %var_2_1927, -1
; Matched:%var_2_454:  %var_2_454 = icmp eq i64 %var_2_452, 0
; %var_2_1930 = icmp eq i64 %var_2_1928, 0
; Matched:%var_2_1848:  %var_2_1848 = or i1 %var_2_1846, %var_2_1847
; %var_2_1931 = or i1 %var_2_1929, %var_2_1930
; Matched:%var_2_456:  %var_2_456 = zext i1 %var_2_455 to i8
; %var_2_1932 = zext i1 %var_2_1931 to i8
; Matched:\<badref\>:  store i8 %var_2_456, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1932, i8* %var_2_14, align 1
; Matched:%var_2_457:  %var_2_457 = trunc i64 %var_2_452 to i32
; %var_2_1933 = trunc i64 %var_2_1928 to i32
; Matched:%var_2_393:  %var_2_393 = and i32 %var_2_392, 255
; %var_2_1934 = and i32 %var_2_1933, 255
; Matched:%var_2_1348:  %var_2_1348 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1347) #14
; %var_2_1935 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1934)
; Matched:%var_2_395:  %var_2_395 = trunc i32 %var_2_394 to i8
; %var_2_1936 = trunc i32 %var_2_1935 to i8
; Matched:%var_2_1350:  %var_2_1350 = and i8 %var_2_1349, 1
; %var_2_1937 = and i8 %var_2_1936, 1
; Matched:%var_2_397:  %var_2_397 = xor i8 %var_2_396, 1
; %var_2_1938 = xor i8 %var_2_1937, 1
; Matched:\<badref\>:  store i8 %var_2_397, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1938, i8* %var_2_21, align 1
; Matched:%var_2_463:  %var_2_463 = xor i64 %var_2_452, %var_2_451
; %var_2_1939 = xor i64 %var_2_1928, %var_2_1927
; Matched:%var_2_464:  %var_2_464 = lshr i64 %var_2_463, 4
; %var_2_1940 = lshr i64 %var_2_1939, 4
; Matched:%var_2_400:  %var_2_400 = trunc i64 %var_2_399 to i8
; %var_2_1941 = trunc i64 %var_2_1940 to i8
; Matched:%var_2_401:  %var_2_401 = and i8 %var_2_400, 1
; %var_2_1942 = and i8 %var_2_1941, 1
; Matched:\<badref\>:  store i8 %var_2_466, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1942, i8* %var_2_26, align 1
; Matched:%var_2_402:  %var_2_402 = zext i1 %var_2_389 to i8
; %var_2_1943 = zext i1 %var_2_1930 to i8
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1943, i8* %var_2_29, align 1
; Matched:%var_2_1300:  %var_2_1300 = lshr i64 %var_2_1284, 63
; %var_2_1944 = lshr i64 %var_2_1928, 63
; Matched:%var_2_469:  %var_2_469 = trunc i64 %var_2_468 to i8
; %var_2_1945 = trunc i64 %var_2_1944 to i8
; Matched:\<badref\>:  store i8 %var_2_469, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1945, i8* %var_2_32, align 1
; Matched:%var_2_470:  %var_2_470 = lshr i64 %var_2_451, 63
; %var_2_1946 = lshr i64 %var_2_1927, 63
; Matched:%var_2_2260:  %var_2_2260 = xor i64 %var_2_2257, %var_2_2259
; %var_2_1947 = xor i64 %var_2_1944, %var_2_1946
; Matched:%var_2_2261:  %var_2_2261 = add nuw nsw i64 %var_2_2260, %var_2_2257
; %var_2_1948 = add nuw nsw i64 %var_2_1947, %var_2_1944
; Matched:%var_2_2262:  %var_2_2262 = icmp eq i64 %var_2_2261, 2
; %var_2_1949 = icmp eq i64 %var_2_1948, 2
; Matched:%var_2_474:  %var_2_474 = zext i1 %var_2_473 to i8
; %var_2_1950 = zext i1 %var_2_1949 to i8
; Matched:\<badref\>:  store i8 %var_2_474, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1950, i8* %var_2_38, align 1
; Matched:%var_2_410:  %var_2_410 = add i64 %var_2_383, 12
; %var_2_1951 = add i64 %var_2_1924, 12
; Matched:\<badref\>:  store i64 %var_2_410, i64* %PC, align 8
; store i64 %var_2_1951, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_2241, i64* %var_2_876, align 8
; store i64 %var_2_1928, i64* %var_2_1926, align 8
%var_2_1952 = load i64, i64* %var_2_3, align 8
%var_2_1953 = add i64 %var_2_1952, -498
; Matched:\<badref\>:  store i64 %var_2_2691, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1953, i64* %var_2_3, align 8
  br label %block_.L_40103d

block_.L_401234:                                  ; preds = %block_.L_40103d
%var_2_1954 = add i64 %var_2_1585, -176
; Matched:%var_2_1200:  %var_2_1200 = add i64 %var_2_1093, 6
; %var_2_1955 = add i64 %var_2_1621, 6
; Matched:\<badref\>:  store i64 %var_2_1200, i64* %PC, align 8
; store i64 %var_2_1955, i64* %var_2_3, align 8
%var_2_1956 = inttoptr i64 %var_2_1954 to i32*
%var_2_1957 = load i32, i32* %var_2_1956, align 4
; Matched:%var_2_1875:  %var_2_1875 = zext i32 %var_2_1874 to i64
; %var_2_1958 = zext i32 %var_2_1957 to i64
; Matched:\<badref\>:  store i64 %var_2_1875, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_1958, i64* %RAX.i1199, align 8
%var_2_1959 = add i64 %var_2_1585, -172
; Matched:%var_2_1205:  %var_2_1205 = add i64 %var_2_1093, 12
; %var_2_1960 = add i64 %var_2_1621, 12
; Matched:\<badref\>:  store i64 %var_2_1205, i64* %PC, align 8
; store i64 %var_2_1960, i64* %var_2_3, align 8
%var_2_1961 = inttoptr i64 %var_2_1959 to i32*
%var_2_1962 = load i32, i32* %var_2_1961, align 4
%var_2_1963 = sub i32 %var_2_1957, %var_2_1962
; Matched:%var_2_488:  %var_2_488 = icmp ult i32 %var_2_481, %var_2_486
; %var_2_1964 = icmp ult i32 %var_2_1957, %var_2_1962
; Matched:%var_2_489:  %var_2_489 = zext i1 %var_2_488 to i8
; %var_2_1965 = zext i1 %var_2_1964 to i8
; Matched:\<badref\>:  store i8 %var_2_489, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_1965, i8* %var_2_14, align 1
; Matched:%var_2_975:  %var_2_975 = and i32 %var_2_972, 255
; %var_2_1966 = and i32 %var_2_1963, 255
; Matched:%var_2_491:  %var_2_491 = tail call i32 @llvm.ctpop.i32(i32 %var_2_490) #14
; %var_2_1967 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1966)
; Matched:%var_2_560:  %var_2_560 = trunc i32 %var_2_559 to i8
; %var_2_1968 = trunc i32 %var_2_1967 to i8
; Matched:%var_2_561:  %var_2_561 = and i8 %var_2_560, 1
; %var_2_1969 = and i8 %var_2_1968, 1
; Matched:%var_2_562:  %var_2_562 = xor i8 %var_2_561, 1
; %var_2_1970 = xor i8 %var_2_1969, 1
; Matched:\<badref\>:  store i8 %var_2_562, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_1970, i8* %var_2_21, align 1
; Matched:%var_2_563:  %var_2_563 = xor i32 %var_2_554, %var_2_549
; %var_2_1971 = xor i32 %var_2_1962, %var_2_1957
; Matched:%var_2_496:  %var_2_496 = xor i32 %var_2_495, %var_2_487
; %var_2_1972 = xor i32 %var_2_1971, %var_2_1963
; Matched:%var_2_1929:  %var_2_1929 = lshr i32 %var_2_1928, 4
; %var_2_1973 = lshr i32 %var_2_1972, 4
; Matched:%var_2_566:  %var_2_566 = trunc i32 %var_2_565 to i8
; %var_2_1974 = trunc i32 %var_2_1973 to i8
; Matched:%var_2_1931:  %var_2_1931 = and i8 %var_2_1930, 1
; %var_2_1975 = and i8 %var_2_1974, 1
; Matched:\<badref\>:  store i8 %var_2_984, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_1975, i8* %var_2_26, align 1
%var_2_1976 = icmp eq i32 %var_2_1963, 0
; Matched:%var_2_986:  %var_2_986 = zext i1 %var_2_985 to i8
; %var_2_1977 = zext i1 %var_2_1976 to i8
; Matched:\<badref\>:  store i8 %var_2_569, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_1977, i8* %var_2_29, align 1
; Matched:%var_2_1934:  %var_2_1934 = lshr i32 %var_2_1919, 31
; %var_2_1978 = lshr i32 %var_2_1963, 31
; Matched:%var_2_1935:  %var_2_1935 = trunc i32 %var_2_1934 to i8
; %var_2_1979 = trunc i32 %var_2_1978 to i8
; Matched:\<badref\>:  store i8 %var_2_1935, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_1979, i8* %var_2_32, align 1
; Matched:%var_2_1936:  %var_2_1936 = lshr i32 %var_2_1913, 31
; %var_2_1980 = lshr i32 %var_2_1957, 31
; Matched:%var_2_505:  %var_2_505 = lshr i32 %var_2_486, 31
; %var_2_1981 = lshr i32 %var_2_1962, 31
; Matched:%var_2_506:  %var_2_506 = xor i32 %var_2_505, %var_2_504
; %var_2_1982 = xor i32 %var_2_1981, %var_2_1980
; Matched:%var_2_1900:  %var_2_1900 = xor i32 %var_2_1895, %var_2_1897
; %var_2_1983 = xor i32 %var_2_1978, %var_2_1980
; Matched:%var_2_1901:  %var_2_1901 = add nuw nsw i32 %var_2_1900, %var_2_1899
; %var_2_1984 = add nuw nsw i32 %var_2_1983, %var_2_1982
; Matched:%var_2_509:  %var_2_509 = icmp eq i32 %var_2_508, 2
; %var_2_1985 = icmp eq i32 %var_2_1984, 2
; Matched:%var_2_510:  %var_2_510 = zext i1 %var_2_509 to i8
; %var_2_1986 = zext i1 %var_2_1985 to i8
; Matched:\<badref\>:  store i8 %var_2_510, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_1986, i8* %var_2_38, align 1
%.v151 = select i1 %var_2_1976, i64 18, i64 75
%var_2_1987 = add i64 %var_2_1621, %.v151
; Matched:\<badref\>:  store i64 %var_2_1232, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_1987, i64* %var_2_3, align 8
br i1 %var_2_1976, label %block_401246, label %block_.L_40127f

block_401246:                                     ; preds = %block_.L_401234
; Matched:%var_2_848:  %var_2_848 = add i64 %var_2_1232, 4
; %var_2_1988 = add i64 %var_2_1987, 4
; Matched:\<badref\>:  store i64 %var_2_848, i64* %PC, align 8
; store i64 %var_2_1988, i64* %var_2_3, align 8
; Matched:%var_2_849:  %var_2_849 = load i64, i64* %var_2_1064, align 8
; %var_2_1989 = load i64, i64* %var_2_1592, align 8
; Matched:\<badref\>:  store i64 %var_2_849, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_1989, i64* %RDI.i1206, align 8
%var_2_1990 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_1991 = sext i32 %var_2_1990 to i64
store i64 %var_2_1991, i64* %RSI.i1110, align 8
%var_2_1992 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_1993 = sext i32 %var_2_1992 to i64
store i64 %var_2_1993, i64* %RDX.i596, align 8
%var_2_1994 = add i64 %var_2_1585, -144
; Matched:%var_2_855:  %var_2_855 = add i64 %var_2_1232, 28
; %var_2_1995 = add i64 %var_2_1987, 28
; Matched:\<badref\>:  store i64 %var_2_855, i64* %PC, align 8
; store i64 %var_2_1995, i64* %var_2_3, align 8
%var_2_1996 = inttoptr i64 %var_2_1994 to i64*
%var_2_1997 = load i64, i64* %var_2_1996, align 8
; Matched:\<badref\>:  store i64 %var_2_2430, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_1997, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_858:  %var_2_858 = add i64 %var_2_1232, 36
; %var_2_1998 = add i64 %var_2_1987, 36
; Matched:\<badref\>:  store i64 %var_2_858, i64* %PC, align 8
; store i64 %var_2_1998, i64* %var_2_3, align 8
%var_2_1999 = load i64, i64* %var_2_1996, align 8
; Matched:\<badref\>:  store i64 %var_2_859, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_1999, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_2000 = add i64 %var_2_1585, -152
; Matched:%var_2_861:  %var_2_861 = add i64 %var_2_1232, 44
; %var_2_2001 = add i64 %var_2_1987, 44
; Matched:\<badref\>:  store i64 %var_2_861, i64* %PC, align 8
; store i64 %var_2_2001, i64* %var_2_3, align 8
%var_2_2002 = inttoptr i64 %var_2_2000 to i64*
; Matched:%var_2_863:  %var_2_863 = load i64, i64* %var_2_862, align 8
; %var_2_2003 = load i64, i64* %var_2_2002, align 8
; Matched:\<badref\>:  store i64 %var_2_863, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_2003, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
; Matched:%var_2_864:  %var_2_864 = add i64 %var_2_1232, 52
; %var_2_2004 = add i64 %var_2_1987, 52
; Matched:\<badref\>:  store i64 %var_2_864, i64* %PC, align 8
; store i64 %var_2_2004, i64* %var_2_3, align 8
%var_2_2005 = load i64, i64* %var_2_2002, align 8
store i64 %var_2_2005, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_2006 = add i64 %var_2_1987, 938
; Matched:%var_2_867:  %var_2_867 = add i64 %var_2_1232, 57
; %var_2_2007 = add i64 %var_2_1987, 57
%var_2_2008 = load i64, i64* %var_2_6, align 8
%var_2_2009 = add i64 %var_2_2008, -8
; Matched:%var_2_870:  %var_2_870 = inttoptr i64 %var_2_869 to i64*
; %var_2_2010 = inttoptr i64 %var_2_2009 to i64*
; Matched:\<badref\>:  store i64 %var_2_867, i64* %var_2_870, align 8
; store i64 %var_2_2007, i64* %var_2_2010, align 8
; Matched:\<badref\>:  store i64 %var_2_1673, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2009, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_866, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2006, i64* %var_2_3, align 8
%call2_40127a = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_2006, %struct.Memory* %MEMORY.18)
%.pre114 = load i64, i64* %var_2_3, align 8
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40127f

block_.L_40127f:                                  ; preds = %block_.L_401234, %block_401246
%var_2_2011 = phi i64 [ %var_2_1585, %block_.L_401234 ], [ %.pre115, %block_401246 ]
%var_2_2012 = phi i64 [ %var_2_1987, %block_.L_401234 ], [ %.pre114, %block_401246 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_401234 ], [ %call2_40127a, %block_401246 ]
%var_2_2013 = add i64 %var_2_2012, ptrtoint (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64)
%var_2_2014 = add i64 %var_2_2012, 8
store i64 %var_2_2014, i64* %var_2_3, align 8
%var_2_2015 = inttoptr i64 %var_2_2013 to i64*
%var_2_2016 = load i64, i64* %var_2_2015, align 8
store i64 %var_2_2016, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_2017 = add i64 %var_2_2011, -144
; Matched:%var_2_944:  %var_2_944 = add i64 %var_2_941, 16
; %var_2_2018 = add i64 %var_2_2012, 16
; Matched:\<badref\>:  store i64 %var_2_944, i64* %PC, align 8
; store i64 %var_2_2018, i64* %var_2_3, align 8
%var_2_2019 = inttoptr i64 %var_2_2017 to i64*
store i64 %var_2_2016, i64* %var_2_2019, align 8
; Matched:%var_2_803:  %var_2_803 = load i64, i64* %RBP, align 8
; %var_2_2020 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_804:  %var_2_804 = add i64 %var_2_803, -152
; %var_2_2021 = add i64 %var_2_2020, -152
%var_2_2022 = load i64, i64* %var_2_3, align 8
%var_2_2023 = add i64 %var_2_2022, 8
store i64 %var_2_2023, i64* %var_2_3, align 8
; Matched:%var_2_950:  %var_2_950 = load i64, i64* %var_2_2695, align 1
; %var_2_2024 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_951:  %var_2_951 = inttoptr i64 %var_2_947 to i64*
; %var_2_2025 = inttoptr i64 %var_2_2021 to i64*
; Matched:\<badref\>:  store i64 %var_2_807, i64* %var_2_808, align 8
; store i64 %var_2_2024, i64* %var_2_2025, align 8
; Matched:%var_2_952:  %var_2_952 = load i64, i64* %RBP, align 8
; %var_2_2026 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_953:  %var_2_953 = add i64 %var_2_952, -160
; %var_2_2027 = add i64 %var_2_2026, -160
%var_2_2028 = load i64, i64* %var_2_3, align 8
%var_2_2029 = add i64 %var_2_2028, 8
store i64 %var_2_2029, i64* %var_2_3, align 8
; Matched:%var_2_956:  %var_2_956 = load i64, i64* %var_2_2695, align 1
; %var_2_2030 = load i64, i64* %var_2_302, align 1
; Matched:%var_2_957:  %var_2_957 = inttoptr i64 %var_2_953 to i64*
; %var_2_2031 = inttoptr i64 %var_2_2027 to i64*
; Matched:\<badref\>:  store i64 %var_2_956, i64* %var_2_957, align 8
; store i64 %var_2_2030, i64* %var_2_2031, align 8
%var_2_2032 = load i64, i64* %RBP.i, align 8
%var_2_2033 = add i64 %var_2_2032, -24
%var_2_2034 = load i64, i64* %var_2_3, align 8
%var_2_2035 = add i64 %var_2_2034, 8
store i64 %var_2_2035, i64* %var_2_3, align 8
%var_2_2036 = inttoptr i64 %var_2_2033 to i64*
store i64 1, i64* %var_2_2036, align 8
%.pre116 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4012a7

block_.L_4012a7:                                  ; preds = %block_4012b5, %block_.L_40127f
%var_2_2037 = phi i64 [ %var_2_2120, %block_4012b5 ], [ %.pre116, %block_.L_40127f ]
%var_2_2038 = load i64, i64* %RBP.i, align 8
%var_2_2039 = add i64 %var_2_2038, -24
; Matched:%var_2_1568:  %var_2_1568 = add i64 %var_2_1565, 4
; %var_2_2040 = add i64 %var_2_2037, 4
; Matched:\<badref\>:  store i64 %var_2_1568, i64* %PC, align 8
; store i64 %var_2_2040, i64* %var_2_3, align 8
%var_2_2041 = inttoptr i64 %var_2_2039 to i64*
%var_2_2042 = load i64, i64* %var_2_2041, align 8
; Matched:\<badref\>:  store i64 %var_2_1690, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2042, i64* %RAX.i1199, align 8
%var_2_2043 = add i64 %var_2_2038, -80
; Matched:%var_2_1572:  %var_2_1572 = add i64 %var_2_1565, 8
; %var_2_2044 = add i64 %var_2_2037, 8
; Matched:\<badref\>:  store i64 %var_2_1572, i64* %PC, align 8
; store i64 %var_2_2044, i64* %var_2_3, align 8
%var_2_2045 = inttoptr i64 %var_2_2043 to i64*
%var_2_2046 = load i64, i64* %var_2_2045, align 8
%var_2_2047 = sub i64 %var_2_2042, %var_2_2046
; Matched:%var_2_1576:  %var_2_1576 = icmp ult i64 %var_2_1570, %var_2_1574
; %var_2_2048 = icmp ult i64 %var_2_2042, %var_2_2046
; Matched:%var_2_1577:  %var_2_1577 = zext i1 %var_2_1576 to i8
; %var_2_2049 = zext i1 %var_2_2048 to i8
; Matched:\<badref\>:  store i8 %var_2_1577, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2049, i8* %var_2_14, align 1
; Matched:%var_2_1578:  %var_2_1578 = trunc i64 %var_2_1575 to i32
; %var_2_2050 = trunc i64 %var_2_2047 to i32
; Matched:%var_2_1579:  %var_2_1579 = and i32 %var_2_1578, 255
; %var_2_2051 = and i32 %var_2_2050, 255
; Matched:%var_2_1580:  %var_2_1580 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1579) #14
; %var_2_2052 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2051)
; Matched:%var_2_1581:  %var_2_1581 = trunc i32 %var_2_1580 to i8
; %var_2_2053 = trunc i32 %var_2_2052 to i8
; Matched:%var_2_1582:  %var_2_1582 = and i8 %var_2_1581, 1
; %var_2_2054 = and i8 %var_2_2053, 1
; Matched:%var_2_1583:  %var_2_1583 = xor i8 %var_2_1582, 1
; %var_2_2055 = xor i8 %var_2_2054, 1
; Matched:\<badref\>:  store i8 %var_2_1583, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2055, i8* %var_2_21, align 1
; Matched:%var_2_1584:  %var_2_1584 = xor i64 %var_2_1574, %var_2_1570
; %var_2_2056 = xor i64 %var_2_2046, %var_2_2042
; Matched:%var_2_1585:  %var_2_1585 = xor i64 %var_2_1584, %var_2_1575
; %var_2_2057 = xor i64 %var_2_2056, %var_2_2047
; Matched:%var_2_1586:  %var_2_1586 = lshr i64 %var_2_1585, 4
; %var_2_2058 = lshr i64 %var_2_2057, 4
; Matched:%var_2_1587:  %var_2_1587 = trunc i64 %var_2_1586 to i8
; %var_2_2059 = trunc i64 %var_2_2058 to i8
; Matched:%var_2_1588:  %var_2_1588 = and i8 %var_2_1587, 1
; %var_2_2060 = and i8 %var_2_2059, 1
; Matched:\<badref\>:  store i8 %var_2_1588, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2060, i8* %var_2_26, align 1
%var_2_2061 = icmp eq i64 %var_2_2047, 0
; Matched:%var_2_1590:  %var_2_1590 = zext i1 %var_2_1589 to i8
; %var_2_2062 = zext i1 %var_2_2061 to i8
; Matched:\<badref\>:  store i8 %var_2_1590, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2062, i8* %var_2_29, align 1
%var_2_2063 = lshr i64 %var_2_2047, 63
%var_2_2064 = trunc i64 %var_2_2063 to i8
; Matched:\<badref\>:  store i8 %var_2_1592, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2064, i8* %var_2_32, align 1
%var_2_2065 = lshr i64 %var_2_2042, 63
%var_2_2066 = lshr i64 %var_2_2046, 63
%var_2_2067 = xor i64 %var_2_2066, %var_2_2065
%var_2_2068 = xor i64 %var_2_2063, %var_2_2065
%var_2_2069 = add nuw nsw i64 %var_2_2068, %var_2_2067
%var_2_2070 = icmp eq i64 %var_2_2069, 2
; Matched:%var_2_1599:  %var_2_1599 = zext i1 %var_2_1598 to i8
; %var_2_2071 = zext i1 %var_2_2070 to i8
; Matched:\<badref\>:  store i8 %var_2_1599, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2071, i8* %var_2_38, align 1
%var_2_2072 = icmp ne i8 %var_2_2064, 0
%var_2_2073 = xor i1 %var_2_2072, %var_2_2070
%.demorgan135 = or i1 %var_2_2061, %var_2_2073
  %.v152 = select i1 %.demorgan135, i64 14, i64 59
%var_2_2074 = add i64 %var_2_2037, %.v152
; Matched:\<badref\>:  store i64 %var_2_1602, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2074, i64* %var_2_3, align 8
  br i1 %.demorgan135, label %block_4012b5, label %block_.L_4012e2

block_4012b5:                                     ; preds = %block_.L_4012a7
; Matched:%var_2_1136:  %var_2_1136 = add i64 %var_2_1566, -160
; %var_2_2075 = add i64 %var_2_2038, -160
; Matched:\<badref\>:  store i64 %var_2_1136, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2075, i64* %RDI.i1206, align 8
%var_2_2076 = add i64 %var_2_2038, -144
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1602, 15
; %var_2_2077 = add i64 %var_2_2074, 15
; Matched:\<badref\>:  store i64 %var_2_1138, i64* %PC, align 8
; store i64 %var_2_2077, i64* %var_2_3, align 8
%var_2_2078 = inttoptr i64 %var_2_2076 to i64*
%var_2_2079 = load i64, i64* %var_2_2078, align 8
; Matched:\<badref\>:  store i64 %var_2_2580, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_2079, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_1141:  %var_2_1141 = add i64 %var_2_1566, -152
; %var_2_2080 = add i64 %var_2_2038, -152
; Matched:%var_2_1142:  %var_2_1142 = add i64 %var_2_1602, 23
; %var_2_2081 = add i64 %var_2_2074, 23
; Matched:\<badref\>:  store i64 %var_2_1142, i64* %PC, align 8
; store i64 %var_2_2081, i64* %var_2_3, align 8
; Matched:%var_2_1616:  %var_2_1616 = inttoptr i64 %var_2_1614 to i64*
; %var_2_2082 = inttoptr i64 %var_2_2080 to i64*
; Matched:%var_2_1617:  %var_2_1617 = load i64, i64* %var_2_1616, align 8
; %var_2_2083 = load i64, i64* %var_2_2082, align 8
; Matched:\<badref\>:  store i64 %var_2_1617, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_2083, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_2084 = add i64 %var_2_2074, 1243
; Matched:%var_2_1146:  %var_2_1146 = add i64 %var_2_1602, 28
; %var_2_2085 = add i64 %var_2_2074, 28
%var_2_2086 = load i64, i64* %var_2_6, align 8
%var_2_2087 = add i64 %var_2_2086, -8
; Matched:%var_2_1149:  %var_2_1149 = inttoptr i64 %var_2_1148 to i64*
; %var_2_2088 = inttoptr i64 %var_2_2087 to i64*
; Matched:\<badref\>:  store i64 %var_2_1146, i64* %var_2_1149, align 8
; store i64 %var_2_2085, i64* %var_2_2088, align 8
; Matched:\<badref\>:  store i64 %var_2_2394, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2087, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1145, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2084, i64* %var_2_3, align 8
%call2_4012cc = tail call %struct.Memory* @sub_401790.P3(%struct.State* nonnull %0, i64 %var_2_2084, %struct.Memory* %MEMORY.19)
%var_2_2089 = load i64, i64* %RBP.i, align 8
%var_2_2090 = add i64 %var_2_2089, -24
%var_2_2091 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_449:  %var_2_449 = add i64 %var_2_448, 4
; %var_2_2092 = add i64 %var_2_2091, 4
; Matched:\<badref\>:  store i64 %var_2_449, i64* %PC, align 8
; store i64 %var_2_2092, i64* %var_2_3, align 8
%var_2_2093 = inttoptr i64 %var_2_2090 to i64*
; Matched:%var_2_1496:  %var_2_1496 = load i64, i64* %var_2_1495, align 8
; %var_2_2094 = load i64, i64* %var_2_2093, align 8
; Matched:%var_2_1497:  %var_2_1497 = add i64 %var_2_1496, 1
; %var_2_2095 = add i64 %var_2_2094, 1
; Matched:\<badref\>:  store i64 %var_2_1284, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2095, i64* %RAX.i1199, align 8
; Matched:%var_2_1498:  %var_2_1498 = icmp eq i64 %var_2_1496, -1
; %var_2_2096 = icmp eq i64 %var_2_2094, -1
; Matched:%var_2_125:  %var_2_125 = icmp eq i64 %var_2_123, 0
; %var_2_2097 = icmp eq i64 %var_2_2095, 0
; Matched:%var_2_2244:  %var_2_2244 = or i1 %var_2_2242, %var_2_2243
; %var_2_2098 = or i1 %var_2_2096, %var_2_2097
; Matched:%var_2_127:  %var_2_127 = zext i1 %var_2_126 to i8
; %var_2_2099 = zext i1 %var_2_2098 to i8
; Matched:\<badref\>:  store i8 %var_2_127, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2099, i8* %var_2_14, align 1
; Matched:%var_2_1850:  %var_2_1850 = trunc i64 %var_2_1845 to i32
; %var_2_2100 = trunc i64 %var_2_2095 to i32
; Matched:%var_2_2247:  %var_2_2247 = and i32 %var_2_2246, 255
; %var_2_2101 = and i32 %var_2_2100, 255
; Matched:%var_2_459:  %var_2_459 = tail call i32 @llvm.ctpop.i32(i32 %var_2_458) #14
; %var_2_2102 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2101)
; Matched:%var_2_460:  %var_2_460 = trunc i32 %var_2_459 to i8
; %var_2_2103 = trunc i32 %var_2_2102 to i8
; Matched:%var_2_461:  %var_2_461 = and i8 %var_2_460, 1
; %var_2_2104 = and i8 %var_2_2103, 1
; Matched:%var_2_2251:  %var_2_2251 = xor i8 %var_2_2250, 1
; %var_2_2105 = xor i8 %var_2_2104, 1
; Matched:\<badref\>:  store i8 %var_2_2251, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2105, i8* %var_2_21, align 1
; Matched:%var_2_134:  %var_2_134 = xor i64 %var_2_123, %var_2_122
; %var_2_2106 = xor i64 %var_2_2095, %var_2_2094
; Matched:%var_2_135:  %var_2_135 = lshr i64 %var_2_134, 4
; %var_2_2107 = lshr i64 %var_2_2106, 4
; Matched:%var_2_2254:  %var_2_2254 = trunc i64 %var_2_2253 to i8
; %var_2_2108 = trunc i64 %var_2_2107 to i8
; Matched:%var_2_2255:  %var_2_2255 = and i8 %var_2_2254, 1
; %var_2_2109 = and i8 %var_2_2108, 1
; Matched:\<badref\>:  store i8 %var_2_1511, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2109, i8* %var_2_26, align 1
; Matched:%var_2_2256:  %var_2_2256 = zext i1 %var_2_2243 to i8
; %var_2_2110 = zext i1 %var_2_2097 to i8
; Matched:\<badref\>:  store i8 %var_2_2256, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2110, i8* %var_2_29, align 1
; Matched:%var_2_139:  %var_2_139 = lshr i64 %var_2_123, 63
; %var_2_2111 = lshr i64 %var_2_2095, 63
; Matched:%var_2_140:  %var_2_140 = trunc i64 %var_2_139 to i8
; %var_2_2112 = trunc i64 %var_2_2111 to i8
; Matched:\<badref\>:  store i8 %var_2_140, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2112, i8* %var_2_32, align 1
; Matched:%var_2_141:  %var_2_141 = lshr i64 %var_2_122, 63
; %var_2_2113 = lshr i64 %var_2_2094, 63
; Matched:%var_2_1516:  %var_2_1516 = xor i64 %var_2_1513, %var_2_1515
; %var_2_2114 = xor i64 %var_2_2111, %var_2_2113
; Matched:%var_2_1517:  %var_2_1517 = add nuw nsw i64 %var_2_1516, %var_2_1513
; %var_2_2115 = add nuw nsw i64 %var_2_2114, %var_2_2111
; Matched:%var_2_1305:  %var_2_1305 = icmp eq i64 %var_2_1304, 2
; %var_2_2116 = icmp eq i64 %var_2_2115, 2
; Matched:%var_2_145:  %var_2_145 = zext i1 %var_2_144 to i8
; %var_2_2117 = zext i1 %var_2_2116 to i8
; Matched:\<badref\>:  store i8 %var_2_1519, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2117, i8* %var_2_38, align 1
; Matched:%var_2_1520:  %var_2_1520 = add i64 %var_2_1493, 12
; %var_2_2118 = add i64 %var_2_2091, 12
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %PC, align 8
; store i64 %var_2_2118, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1497, i64* %var_2_1495, align 8
; store i64 %var_2_2095, i64* %var_2_2093, align 8
%var_2_2119 = load i64, i64* %var_2_3, align 8
%var_2_2120 = add i64 %var_2_2119, -54
; Matched:\<badref\>:  store i64 %var_2_1182, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2120, i64* %var_2_3, align 8
  br label %block_.L_4012a7

block_.L_4012e2:                                  ; preds = %block_.L_4012a7
%var_2_2121 = add i64 %var_2_2038, -176
; Matched:%var_2_513:  %var_2_513 = add i64 %var_2_1602, 6
; %var_2_2122 = add i64 %var_2_2074, 6
; Matched:\<badref\>:  store i64 %var_2_513, i64* %PC, align 8
; store i64 %var_2_2122, i64* %var_2_3, align 8
%var_2_2123 = inttoptr i64 %var_2_2121 to i32*
%var_2_2124 = load i32, i32* %var_2_2123, align 4
; Matched:%var_2_1914:  %var_2_1914 = zext i32 %var_2_1913 to i64
; %var_2_2125 = zext i32 %var_2_2124 to i64
; Matched:\<badref\>:  store i64 %var_2_1914, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2125, i64* %RAX.i1199, align 8
%var_2_2126 = add i64 %var_2_2038, -172
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_1602, 12
; %var_2_2127 = add i64 %var_2_2074, 12
; Matched:\<badref\>:  store i64 %var_2_518, i64* %PC, align 8
; store i64 %var_2_2127, i64* %var_2_3, align 8
%var_2_2128 = inttoptr i64 %var_2_2126 to i32*
%var_2_2129 = load i32, i32* %var_2_2128, align 4
%var_2_2130 = sub i32 %var_2_2124, %var_2_2129
; Matched:%var_2_556:  %var_2_556 = icmp ult i32 %var_2_549, %var_2_554
; %var_2_2131 = icmp ult i32 %var_2_2124, %var_2_2129
; Matched:%var_2_557:  %var_2_557 = zext i1 %var_2_556 to i8
; %var_2_2132 = zext i1 %var_2_2131 to i8
; Matched:\<badref\>:  store i8 %var_2_557, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2132, i8* %var_2_14, align 1
; Matched:%var_2_558:  %var_2_558 = and i32 %var_2_555, 255
; %var_2_2133 = and i32 %var_2_2130, 255
; Matched:%var_2_559:  %var_2_559 = tail call i32 @llvm.ctpop.i32(i32 %var_2_558) #14
; %var_2_2134 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2133)
; Matched:%var_2_977:  %var_2_977 = trunc i32 %var_2_976 to i8
; %var_2_2135 = trunc i32 %var_2_2134 to i8
; Matched:%var_2_1738:  %var_2_1738 = and i8 %var_2_1737, 1
; %var_2_2136 = and i8 %var_2_2135, 1
; Matched:%var_2_979:  %var_2_979 = xor i8 %var_2_978, 1
; %var_2_2137 = xor i8 %var_2_2136, 1
; Matched:\<badref\>:  store i8 %var_2_1739, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2137, i8* %var_2_21, align 1
; Matched:%var_2_980:  %var_2_980 = xor i32 %var_2_971, %var_2_966
; %var_2_2138 = xor i32 %var_2_2129, %var_2_2124
; Matched:%var_2_564:  %var_2_564 = xor i32 %var_2_563, %var_2_555
; %var_2_2139 = xor i32 %var_2_2138, %var_2_2130
; Matched:%var_2_1742:  %var_2_1742 = lshr i32 %var_2_1741, 4
; %var_2_2140 = lshr i32 %var_2_2139, 4
; Matched:%var_2_983:  %var_2_983 = trunc i32 %var_2_982 to i8
; %var_2_2141 = trunc i32 %var_2_2140 to i8
; Matched:%var_2_984:  %var_2_984 = and i8 %var_2_983, 1
; %var_2_2142 = and i8 %var_2_2141, 1
; Matched:\<badref\>:  store i8 %var_2_835, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2142, i8* %var_2_26, align 1
%var_2_2143 = icmp eq i32 %var_2_2130, 0
; Matched:%var_2_837:  %var_2_837 = zext i1 %var_2_836 to i8
; %var_2_2144 = zext i1 %var_2_2143 to i8
; Matched:\<badref\>:  store i8 %var_2_986, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2144, i8* %var_2_29, align 1
; Matched:%var_2_1747:  %var_2_1747 = lshr i32 %var_2_1732, 31
; %var_2_2145 = lshr i32 %var_2_2130, 31
; Matched:%var_2_988:  %var_2_988 = trunc i32 %var_2_987 to i8
; %var_2_2146 = trunc i32 %var_2_2145 to i8
; Matched:\<badref\>:  store i8 %var_2_1748, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2146, i8* %var_2_32, align 1
; Matched:%var_2_1749:  %var_2_1749 = lshr i32 %var_2_1726, 31
; %var_2_2147 = lshr i32 %var_2_2124, 31
; Matched:%var_2_573:  %var_2_573 = lshr i32 %var_2_554, 31
; %var_2_2148 = lshr i32 %var_2_2129, 31
; Matched:%var_2_574:  %var_2_574 = xor i32 %var_2_573, %var_2_572
; %var_2_2149 = xor i32 %var_2_2148, %var_2_2147
; Matched:%var_2_1939:  %var_2_1939 = xor i32 %var_2_1934, %var_2_1936
; %var_2_2150 = xor i32 %var_2_2145, %var_2_2147
; Matched:%var_2_1940:  %var_2_1940 = add nuw nsw i32 %var_2_1939, %var_2_1938
; %var_2_2151 = add nuw nsw i32 %var_2_2150, %var_2_2149
; Matched:%var_2_577:  %var_2_577 = icmp eq i32 %var_2_576, 2
; %var_2_2152 = icmp eq i32 %var_2_2151, 2
; Matched:%var_2_578:  %var_2_578 = zext i1 %var_2_577 to i8
; %var_2_2153 = zext i1 %var_2_2152 to i8
; Matched:\<badref\>:  store i8 %var_2_578, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2153, i8* %var_2_38, align 1
%.v153 = select i1 %var_2_2143, i64 18, i64 75
%var_2_2154 = add i64 %var_2_2074, %.v153
; Matched:\<badref\>:  store i64 %var_2_545, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2154, i64* %var_2_3, align 8
br i1 %var_2_2143, label %block_4012f4, label %block_.L_40132d

block_4012f4:                                     ; preds = %block_.L_4012e2
; Matched:%var_2_1604:  %var_2_1604 = add i64 %var_2_545, 4
; %var_2_2155 = add i64 %var_2_2154, 4
; Matched:\<badref\>:  store i64 %var_2_1604, i64* %PC, align 8
; store i64 %var_2_2155, i64* %var_2_3, align 8
; Matched:%var_2_1605:  %var_2_1605 = load i64, i64* %var_2_1573, align 8
; %var_2_2156 = load i64, i64* %var_2_2045, align 8
; Matched:\<badref\>:  store i64 %var_2_1605, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2156, i64* %RDI.i1206, align 8
%var_2_2157 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_2158 = sext i32 %var_2_2157 to i64
store i64 %var_2_2158, i64* %RSI.i1110, align 8
%var_2_2159 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_2160 = sext i32 %var_2_2159 to i64
store i64 %var_2_2160, i64* %RDX.i596, align 8
%var_2_2161 = add i64 %var_2_2038, -144
; Matched:%var_2_1611:  %var_2_1611 = add i64 %var_2_545, 28
; %var_2_2162 = add i64 %var_2_2154, 28
; Matched:\<badref\>:  store i64 %var_2_1611, i64* %PC, align 8
; store i64 %var_2_2162, i64* %var_2_3, align 8
%var_2_2163 = inttoptr i64 %var_2_2161 to i64*
%var_2_2164 = load i64, i64* %var_2_2163, align 8
; Matched:\<badref\>:  store i64 %var_2_1140, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_2164, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_1614:  %var_2_1614 = add i64 %var_2_1566, -152
; %var_2_2165 = add i64 %var_2_2038, -152
; Matched:%var_2_1615:  %var_2_1615 = add i64 %var_2_545, 36
; %var_2_2166 = add i64 %var_2_2154, 36
; Matched:\<badref\>:  store i64 %var_2_1615, i64* %PC, align 8
; store i64 %var_2_2166, i64* %var_2_3, align 8
; Matched:%var_2_1143:  %var_2_1143 = inttoptr i64 %var_2_1141 to i64*
; %var_2_2167 = inttoptr i64 %var_2_2165 to i64*
; Matched:%var_2_1144:  %var_2_1144 = load i64, i64* %var_2_1143, align 8
; %var_2_2168 = load i64, i64* %var_2_2167, align 8
; Matched:\<badref\>:  store i64 %var_2_1144, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_2168, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_2169 = add i64 %var_2_2038, -160
; Matched:%var_2_1619:  %var_2_1619 = add i64 %var_2_545, 44
; %var_2_2170 = add i64 %var_2_2154, 44
; Matched:\<badref\>:  store i64 %var_2_1619, i64* %PC, align 8
; store i64 %var_2_2170, i64* %var_2_3, align 8
%var_2_2171 = inttoptr i64 %var_2_2169 to i64*
; Matched:%var_2_1621:  %var_2_1621 = load i64, i64* %var_2_1620, align 8
; %var_2_2172 = load i64, i64* %var_2_2171, align 8
; Matched:\<badref\>:  store i64 %var_2_1621, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_2172, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
; Matched:%var_2_1622:  %var_2_1622 = add i64 %var_2_545, 52
; %var_2_2173 = add i64 %var_2_2154, 52
; Matched:\<badref\>:  store i64 %var_2_1622, i64* %PC, align 8
; store i64 %var_2_2173, i64* %var_2_3, align 8
%var_2_2174 = load i64, i64* %var_2_2171, align 8
store i64 %var_2_2174, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_2175 = add i64 %var_2_2154, 764
; Matched:%var_2_1625:  %var_2_1625 = add i64 %var_2_545, 57
; %var_2_2176 = add i64 %var_2_2154, 57
%var_2_2177 = load i64, i64* %var_2_6, align 8
%var_2_2178 = add i64 %var_2_2177, -8
; Matched:%var_2_1628:  %var_2_1628 = inttoptr i64 %var_2_1627 to i64*
; %var_2_2179 = inttoptr i64 %var_2_2178 to i64*
; Matched:\<badref\>:  store i64 %var_2_1625, i64* %var_2_1628, align 8
; store i64 %var_2_2176, i64* %var_2_2179, align 8
; Matched:\<badref\>:  store i64 %var_2_420, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2178, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1624, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2175, i64* %var_2_3, align 8
%call2_401328 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_2175, %struct.Memory* %MEMORY.19)
%.pre117 = load i64, i64* %var_2_3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40132d

block_.L_40132d:                                  ; preds = %block_.L_4012e2, %block_4012f4
; Matched:%var_2_1258:  %var_2_1258 = phi i64 [ %var_2_616, %block_400cea ], [ %.pre413, %block_400cfc ]
; %var_2_2180 = phi i64 [ %var_2_2038, %block_.L_4012e2 ], [ %.pre118, %block_4012f4 ]
%var_2_2181 = phi i64 [ %var_2_2154, %block_.L_4012e2 ], [ %.pre117, %block_4012f4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_4012e2 ], [ %call2_401328, %block_4012f4 ]
%var_2_2182 = add i64 %var_2_2181, ptrtoint (%G_0x603__rip__type* @G_0x603__rip_ to i64)
%var_2_2183 = add i64 %var_2_2181, 8
store i64 %var_2_2183, i64* %var_2_3, align 8
%var_2_2184 = inttoptr i64 %var_2_2182 to i64*
%var_2_2185 = load i64, i64* %var_2_2184, align 8
store i64 %var_2_2185, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_2186 = add i64 %var_2_2181, add (i64 ptrtoint (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64), i64 8)
%var_2_2187 = add i64 %var_2_2181, 16
store i64 %var_2_2187, i64* %var_2_3, align 8
%var_2_2188 = inttoptr i64 %var_2_2186 to i64*
%var_2_2189 = load i64, i64* %var_2_2188, align 8
store i64 %var_2_2189, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_2190 = add i64 %var_2_2181, add (i64 ptrtoint (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64), i64 16)
%var_2_2191 = add i64 %var_2_2181, 24
store i64 %var_2_2191, i64* %var_2_3, align 8
%var_2_2192 = inttoptr i64 %var_2_2190 to i64*
%var_2_2193 = load i64, i64* %var_2_2192, align 8
store i64 %var_2_2193, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
store i64 %var_2_2193, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_2189, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_2185, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
; Matched:%var_2_1632:  %var_2_1632 = add i64 %var_2_1630, -24
; %var_2_2194 = add i64 %var_2_2180, -24
; Matched:%var_2_2236:  %var_2_2236 = add i64 %var_2_2231, 92
; %var_2_2195 = add i64 %var_2_2181, 92
; Matched:\<badref\>:  store i64 %var_2_2236, i64* %PC, align 8
; store i64 %var_2_2195, i64* %var_2_3, align 8
; Matched:%var_2_1261:  %var_2_1261 = inttoptr i64 %var_2_1259 to i64*
; %var_2_2196 = inttoptr i64 %var_2_2194 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_2747, align 8
; store i64 1, i64* %var_2_2196, align 8
%.pre119 = load i64, i64* %var_2_3, align 8
  br label %block_.L_401389

block_.L_401389:                                  ; preds = %block_401397, %block_.L_40132d
%var_2_2197 = phi i64 [ %var_2_2271, %block_401397 ], [ %.pre119, %block_.L_40132d ]
%var_2_2198 = load i64, i64* %RBP.i, align 8
%var_2_2199 = add i64 %var_2_2198, -24
; Matched:%var_2_2270:  %var_2_2270 = add i64 %var_2_2267, 4
; %var_2_2200 = add i64 %var_2_2197, 4
; Matched:\<badref\>:  store i64 %var_2_2270, i64* %PC, align 8
; store i64 %var_2_2200, i64* %var_2_3, align 8
%var_2_2201 = inttoptr i64 %var_2_2199 to i64*
%var_2_2202 = load i64, i64* %var_2_2201, align 8
; Matched:\<badref\>:  store i64 %var_2_2272, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2202, i64* %RAX.i1199, align 8
%var_2_2203 = add i64 %var_2_2198, -88
; Matched:%var_2_2274:  %var_2_2274 = add i64 %var_2_2267, 8
; %var_2_2204 = add i64 %var_2_2197, 8
; Matched:\<badref\>:  store i64 %var_2_2274, i64* %PC, align 8
; store i64 %var_2_2204, i64* %var_2_3, align 8
%var_2_2205 = inttoptr i64 %var_2_2203 to i64*
%var_2_2206 = load i64, i64* %var_2_2205, align 8
%var_2_2207 = sub i64 %var_2_2202, %var_2_2206
; Matched:%var_2_2278:  %var_2_2278 = icmp ult i64 %var_2_2272, %var_2_2276
; %var_2_2208 = icmp ult i64 %var_2_2202, %var_2_2206
; Matched:%var_2_2279:  %var_2_2279 = zext i1 %var_2_2278 to i8
; %var_2_2209 = zext i1 %var_2_2208 to i8
; Matched:\<badref\>:  store i8 %var_2_2279, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2209, i8* %var_2_14, align 1
; Matched:%var_2_2280:  %var_2_2280 = trunc i64 %var_2_2277 to i32
; %var_2_2210 = trunc i64 %var_2_2207 to i32
; Matched:%var_2_2281:  %var_2_2281 = and i32 %var_2_2280, 255
; %var_2_2211 = and i32 %var_2_2210, 255
; Matched:%var_2_2282:  %var_2_2282 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2281) #14
; %var_2_2212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2211)
; Matched:%var_2_2283:  %var_2_2283 = trunc i32 %var_2_2282 to i8
; %var_2_2213 = trunc i32 %var_2_2212 to i8
; Matched:%var_2_2284:  %var_2_2284 = and i8 %var_2_2283, 1
; %var_2_2214 = and i8 %var_2_2213, 1
; Matched:%var_2_2285:  %var_2_2285 = xor i8 %var_2_2284, 1
; %var_2_2215 = xor i8 %var_2_2214, 1
; Matched:\<badref\>:  store i8 %var_2_2285, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2215, i8* %var_2_21, align 1
; Matched:%var_2_2286:  %var_2_2286 = xor i64 %var_2_2276, %var_2_2272
; %var_2_2216 = xor i64 %var_2_2206, %var_2_2202
; Matched:%var_2_2287:  %var_2_2287 = xor i64 %var_2_2286, %var_2_2277
; %var_2_2217 = xor i64 %var_2_2216, %var_2_2207
; Matched:%var_2_2288:  %var_2_2288 = lshr i64 %var_2_2287, 4
; %var_2_2218 = lshr i64 %var_2_2217, 4
; Matched:%var_2_2289:  %var_2_2289 = trunc i64 %var_2_2288 to i8
; %var_2_2219 = trunc i64 %var_2_2218 to i8
; Matched:%var_2_2290:  %var_2_2290 = and i8 %var_2_2289, 1
; %var_2_2220 = and i8 %var_2_2219, 1
; Matched:\<badref\>:  store i8 %var_2_2290, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2220, i8* %var_2_26, align 1
%var_2_2221 = icmp eq i64 %var_2_2207, 0
; Matched:%var_2_2292:  %var_2_2292 = zext i1 %var_2_2291 to i8
; %var_2_2222 = zext i1 %var_2_2221 to i8
; Matched:\<badref\>:  store i8 %var_2_2292, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2222, i8* %var_2_29, align 1
%var_2_2223 = lshr i64 %var_2_2207, 63
%var_2_2224 = trunc i64 %var_2_2223 to i8
; Matched:\<badref\>:  store i8 %var_2_2294, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2224, i8* %var_2_32, align 1
%var_2_2225 = lshr i64 %var_2_2202, 63
%var_2_2226 = lshr i64 %var_2_2206, 63
%var_2_2227 = xor i64 %var_2_2226, %var_2_2225
%var_2_2228 = xor i64 %var_2_2223, %var_2_2225
%var_2_2229 = add nuw nsw i64 %var_2_2228, %var_2_2227
%var_2_2230 = icmp eq i64 %var_2_2229, 2
; Matched:%var_2_2301:  %var_2_2301 = zext i1 %var_2_2300 to i8
; %var_2_2231 = zext i1 %var_2_2230 to i8
; Matched:\<badref\>:  store i8 %var_2_2301, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2231, i8* %var_2_38, align 1
%var_2_2232 = icmp ne i8 %var_2_2224, 0
%var_2_2233 = xor i1 %var_2_2232, %var_2_2230
%.demorgan136 = or i1 %var_2_2221, %var_2_2233
  %.v154 = select i1 %.demorgan136, i64 14, i64 36
%var_2_2234 = add i64 %var_2_2197, %.v154
; Matched:\<badref\>:  store i64 %var_2_2304, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2234, i64* %var_2_3, align 8
  br i1 %.demorgan136, label %block_401397, label %block_.L_4013ad

block_401397:                                     ; preds = %block_.L_401389
%var_2_2235 = add i64 %var_2_2234, 1145
; Matched:%var_2_1834:  %var_2_1834 = add i64 %var_2_2304, 5
; %var_2_2236 = add i64 %var_2_2234, 5
%var_2_2237 = load i64, i64* %var_2_6, align 8
%var_2_2238 = add i64 %var_2_2237, -8
; Matched:%var_2_1837:  %var_2_1837 = inttoptr i64 %var_2_1836 to i64*
; %var_2_2239 = inttoptr i64 %var_2_2238 to i64*
; Matched:\<badref\>:  store i64 %var_2_1834, i64* %var_2_1837, align 8
; store i64 %var_2_2236, i64* %var_2_2239, align 8
; Matched:\<badref\>:  store i64 %var_2_2594, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2238, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1833, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2235, i64* %var_2_3, align 8
%call2_401397 = tail call %struct.Memory* @sub_401810.P0(%struct.State* nonnull %0, i64 %var_2_2235, %struct.Memory* %MEMORY.21)
%var_2_2240 = load i64, i64* %RBP.i, align 8
%var_2_2241 = add i64 %var_2_2240, -24
%var_2_2242 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_384:  %var_2_384 = add i64 %var_2_383, 4
; %var_2_2243 = add i64 %var_2_2242, 4
; Matched:\<badref\>:  store i64 %var_2_56, i64* %PC, align 8
; store i64 %var_2_2243, i64* %var_2_3, align 8
%var_2_2244 = inttoptr i64 %var_2_2241 to i64*
; Matched:%var_2_1844:  %var_2_1844 = load i64, i64* %var_2_1843, align 8
; %var_2_2245 = load i64, i64* %var_2_2244, align 8
; Matched:%var_2_1845:  %var_2_1845 = add i64 %var_2_1844, 1
; %var_2_2246 = add i64 %var_2_2245, 1
; Matched:\<badref\>:  store i64 %var_2_1845, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2246, i64* %RAX.i1199, align 8
; Matched:%var_2_1846:  %var_2_1846 = icmp eq i64 %var_2_1844, -1
; %var_2_2247 = icmp eq i64 %var_2_2245, -1
; Matched:%var_2_389:  %var_2_389 = icmp eq i64 %var_2_387, 0
; %var_2_2248 = icmp eq i64 %var_2_2246, 0
; Matched:%var_2_1344:  %var_2_1344 = or i1 %var_2_1342, %var_2_1343
; %var_2_2249 = or i1 %var_2_2247, %var_2_2248
; Matched:%var_2_1345:  %var_2_1345 = zext i1 %var_2_1344 to i8
; %var_2_2250 = zext i1 %var_2_2249 to i8
; Matched:\<badref\>:  store i8 %var_2_1345, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2250, i8* %var_2_14, align 1
; Matched:%var_2_1346:  %var_2_1346 = trunc i64 %var_2_1341 to i32
; %var_2_2251 = trunc i64 %var_2_2246 to i32
; Matched:%var_2_1851:  %var_2_1851 = and i32 %var_2_1850, 255
; %var_2_2252 = and i32 %var_2_2251, 255
; Matched:%var_2_1164:  %var_2_1164 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1163) #14
; %var_2_2253 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2252)
; Matched:%var_2_2674:  %var_2_2674 = trunc i32 %var_2_2673 to i8
; %var_2_2254 = trunc i32 %var_2_2253 to i8
; Matched:%var_2_1166:  %var_2_1166 = and i8 %var_2_1165, 1
; %var_2_2255 = and i8 %var_2_2254, 1
; Matched:%var_2_1167:  %var_2_1167 = xor i8 %var_2_1166, 1
; %var_2_2256 = xor i8 %var_2_2255, 1
; Matched:\<badref\>:  store i8 %var_2_1167, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2256, i8* %var_2_21, align 1
; Matched:%var_2_398:  %var_2_398 = xor i64 %var_2_387, %var_2_386
; %var_2_2257 = xor i64 %var_2_2246, %var_2_2245
; Matched:%var_2_1857:  %var_2_1857 = lshr i64 %var_2_1856, 4
; %var_2_2258 = lshr i64 %var_2_2257, 4
; Matched:%var_2_1354:  %var_2_1354 = trunc i64 %var_2_1353 to i8
; %var_2_2259 = trunc i64 %var_2_2258 to i8
; Matched:%var_2_1355:  %var_2_1355 = and i8 %var_2_1354, 1
; %var_2_2260 = and i8 %var_2_2259, 1
; Matched:\<badref\>:  store i8 %var_2_1859, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2260, i8* %var_2_26, align 1
; Matched:%var_2_1356:  %var_2_1356 = zext i1 %var_2_1343 to i8
; %var_2_2261 = zext i1 %var_2_2248 to i8
; Matched:\<badref\>:  store i8 %var_2_1356, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2261, i8* %var_2_29, align 1
; Matched:%var_2_1861:  %var_2_1861 = lshr i64 %var_2_1845, 63
; %var_2_2262 = lshr i64 %var_2_2246, 63
; Matched:%var_2_404:  %var_2_404 = trunc i64 %var_2_403 to i8
; %var_2_2263 = trunc i64 %var_2_2262 to i8
; Matched:\<badref\>:  store i8 %var_2_1862, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2263, i8* %var_2_32, align 1
; Matched:%var_2_1863:  %var_2_1863 = lshr i64 %var_2_1844, 63
; %var_2_2264 = lshr i64 %var_2_2245, 63
; Matched:%var_2_1864:  %var_2_1864 = xor i64 %var_2_1861, %var_2_1863
; %var_2_2265 = xor i64 %var_2_2262, %var_2_2264
; Matched:%var_2_1865:  %var_2_1865 = add nuw nsw i64 %var_2_1864, %var_2_1861
; %var_2_2266 = add nuw nsw i64 %var_2_2265, %var_2_2262
; Matched:%var_2_408:  %var_2_408 = icmp eq i64 %var_2_407, 2
; %var_2_2267 = icmp eq i64 %var_2_2266, 2
; Matched:%var_2_409:  %var_2_409 = zext i1 %var_2_408 to i8
; %var_2_2268 = zext i1 %var_2_2267 to i8
; Matched:\<badref\>:  store i8 %var_2_1867, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2268, i8* %var_2_38, align 1
; Matched:%var_2_475:  %var_2_475 = add i64 %var_2_448, 12
; %var_2_2269 = add i64 %var_2_2242, 12
; Matched:\<badref\>:  store i64 %var_2_1180, i64* %PC, align 8
; store i64 %var_2_2269, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1845, i64* %var_2_1843, align 8
; store i64 %var_2_2246, i64* %var_2_2244, align 8
%var_2_2270 = load i64, i64* %var_2_3, align 8
%var_2_2271 = add i64 %var_2_2270, -31
; Matched:\<badref\>:  store i64 %var_2_1870, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2271, i64* %var_2_3, align 8
  br label %block_.L_401389

block_.L_4013ad:                                  ; preds = %block_.L_401389
%var_2_2272 = add i64 %var_2_2198, -176
; Matched:%var_2_1911:  %var_2_1911 = add i64 %var_2_2304, 6
; %var_2_2273 = add i64 %var_2_2234, 6
; Matched:\<badref\>:  store i64 %var_2_1911, i64* %PC, align 8
; store i64 %var_2_2273, i64* %var_2_3, align 8
%var_2_2274 = inttoptr i64 %var_2_2272 to i32*
%var_2_2275 = load i32, i32* %var_2_2274, align 4
; Matched:%var_2_516:  %var_2_516 = zext i32 %var_2_515 to i64
; %var_2_2276 = zext i32 %var_2_2275 to i64
; Matched:\<badref\>:  store i64 %var_2_1203, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2276, i64* %RAX.i1199, align 8
%var_2_2277 = add i64 %var_2_2198, -172
; Matched:%var_2_1916:  %var_2_1916 = add i64 %var_2_2304, 12
; %var_2_2278 = add i64 %var_2_2234, 12
; Matched:\<badref\>:  store i64 %var_2_1916, i64* %PC, align 8
; store i64 %var_2_2278, i64* %var_2_3, align 8
%var_2_2279 = inttoptr i64 %var_2_2277 to i32*
%var_2_2280 = load i32, i32* %var_2_2279, align 4
%var_2_2281 = sub i32 %var_2_2275, %var_2_2280
; Matched:%var_2_522:  %var_2_522 = icmp ult i32 %var_2_515, %var_2_520
; %var_2_2282 = icmp ult i32 %var_2_2275, %var_2_2280
; Matched:%var_2_523:  %var_2_523 = zext i1 %var_2_522 to i8
; %var_2_2283 = zext i1 %var_2_2282 to i8
; Matched:\<badref\>:  store i8 %var_2_523, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2283, i8* %var_2_14, align 1
; Matched:%var_2_1883:  %var_2_1883 = and i32 %var_2_1880, 255
; %var_2_2284 = and i32 %var_2_2281, 255
; Matched:%var_2_1884:  %var_2_1884 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1883) #14
; %var_2_2285 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2284)
; Matched:%var_2_492:  %var_2_492 = trunc i32 %var_2_491 to i8
; %var_2_2286 = trunc i32 %var_2_2285 to i8
; Matched:%var_2_493:  %var_2_493 = and i8 %var_2_492, 1
; %var_2_2287 = and i8 %var_2_2286, 1
; Matched:%var_2_1887:  %var_2_1887 = xor i8 %var_2_1886, 1
; %var_2_2288 = xor i8 %var_2_2287, 1
; Matched:\<badref\>:  store i8 %var_2_494, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2288, i8* %var_2_21, align 1
; Matched:%var_2_495:  %var_2_495 = xor i32 %var_2_486, %var_2_481
; %var_2_2289 = xor i32 %var_2_2280, %var_2_2275
; Matched:%var_2_599:  %var_2_599 = xor i32 %var_2_598, %var_2_590
; %var_2_2290 = xor i32 %var_2_2289, %var_2_2281
; Matched:%var_2_1890:  %var_2_1890 = lshr i32 %var_2_1889, 4
; %var_2_2291 = lshr i32 %var_2_2290, 4
; Matched:%var_2_498:  %var_2_498 = trunc i32 %var_2_497 to i8
; %var_2_2292 = trunc i32 %var_2_2291 to i8
; Matched:%var_2_499:  %var_2_499 = and i8 %var_2_498, 1
; %var_2_2293 = and i8 %var_2_2292, 1
; Matched:\<badref\>:  store i8 %var_2_499, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2293, i8* %var_2_26, align 1
%var_2_2294 = icmp eq i32 %var_2_2281, 0
; Matched:%var_2_1933:  %var_2_1933 = zext i1 %var_2_1932 to i8
; %var_2_2295 = zext i1 %var_2_2294 to i8
; Matched:\<badref\>:  store i8 %var_2_501, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2295, i8* %var_2_29, align 1
; Matched:%var_2_1895:  %var_2_1895 = lshr i32 %var_2_1880, 31
; %var_2_2296 = lshr i32 %var_2_2281, 31
; Matched:%var_2_1896:  %var_2_1896 = trunc i32 %var_2_1895 to i8
; %var_2_2297 = trunc i32 %var_2_2296 to i8
; Matched:\<badref\>:  store i8 %var_2_1896, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2297, i8* %var_2_32, align 1
; Matched:%var_2_1897:  %var_2_1897 = lshr i32 %var_2_1874, 31
; %var_2_2298 = lshr i32 %var_2_2275, 31
; Matched:%var_2_608:  %var_2_608 = lshr i32 %var_2_589, 31
; %var_2_2299 = lshr i32 %var_2_2280, 31
; Matched:%var_2_540:  %var_2_540 = xor i32 %var_2_539, %var_2_538
; %var_2_2300 = xor i32 %var_2_2299, %var_2_2298
; Matched:%var_2_1228:  %var_2_1228 = xor i32 %var_2_1223, %var_2_1225
; %var_2_2301 = xor i32 %var_2_2296, %var_2_2298
; Matched:%var_2_1229:  %var_2_1229 = add nuw nsw i32 %var_2_1228, %var_2_1227
; %var_2_2302 = add nuw nsw i32 %var_2_2301, %var_2_2300
; Matched:%var_2_612:  %var_2_612 = icmp eq i32 %var_2_611, 2
; %var_2_2303 = icmp eq i32 %var_2_2302, 2
; Matched:%var_2_613:  %var_2_613 = zext i1 %var_2_612 to i8
; %var_2_2304 = zext i1 %var_2_2303 to i8
; Matched:\<badref\>:  store i8 %var_2_1755, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2304, i8* %var_2_38, align 1
%.v155 = select i1 %var_2_2294, i64 18, i64 79
%var_2_2305 = add i64 %var_2_2234, %.v155
; Matched:\<badref\>:  store i64 %var_2_1943, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2305, i64* %var_2_3, align 8
br i1 %var_2_2294, label %block_4013bf, label %block_.L_4013fc

block_4013bf:                                     ; preds = %block_.L_4013ad
; Matched:%var_2_1183:  %var_2_1183 = add i64 %var_2_1943, 4
; %var_2_2306 = add i64 %var_2_2305, 4
; Matched:\<badref\>:  store i64 %var_2_1183, i64* %PC, align 8
; store i64 %var_2_2306, i64* %var_2_3, align 8
; Matched:%var_2_1184:  %var_2_1184 = load i64, i64* %var_2_2275, align 8
; %var_2_2307 = load i64, i64* %var_2_2205, align 8
; Matched:\<badref\>:  store i64 %var_2_1184, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2307, i64* %RDI.i1206, align 8
%var_2_2308 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_2309 = sext i32 %var_2_2308 to i64
store i64 %var_2_2309, i64* %RSI.i1110, align 8
%var_2_2310 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_2311 = sext i32 %var_2_2310 to i64
store i64 %var_2_2311, i64* %RDX.i596, align 8
%var_2_2312 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
store i64 %var_2_2312, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_2313 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
store i64 %var_2_2313, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
%var_2_2314 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
store i64 %var_2_2314, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_2315 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
store i64 %var_2_2315, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_2316 = add i64 %var_2_2305, 561
; Matched:%var_2_1194:  %var_2_1194 = add i64 %var_2_1943, 61
; %var_2_2317 = add i64 %var_2_2305, 61
%var_2_2318 = load i64, i64* %var_2_6, align 8
%var_2_2319 = add i64 %var_2_2318, -8
; Matched:%var_2_1197:  %var_2_1197 = inttoptr i64 %var_2_1196 to i64*
; %var_2_2320 = inttoptr i64 %var_2_2319 to i64*
; Matched:\<badref\>:  store i64 %var_2_1194, i64* %var_2_1197, align 8
; store i64 %var_2_2317, i64* %var_2_2320, align 8
; Matched:\<badref\>:  store i64 %var_2_1562, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2319, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1193, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2316, i64* %var_2_3, align 8
%call2_4013f7 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_2316, %struct.Memory* %MEMORY.21)
; Matched:  %.pre431 = load i64, i64* %PC, align 8
; %.pre120 = load i64, i64* %var_2_3, align 8
  %.pre121 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013fc

block_.L_4013fc:                                  ; preds = %block_.L_4013ad, %block_4013bf
; Matched:%var_2_1630:  %var_2_1630 = phi i64 [ %var_2_873, %block_400e60 ], [ %.pre420, %block_400e72 ]
; %var_2_2321 = phi i64 [ %var_2_2198, %block_.L_4013ad ], [ %.pre121, %block_4013bf ]
; Matched:%var_2_1906:  %var_2_1906 = phi i64 [ %var_2_1943, %block_4013ad ], [ %.pre431, %block_4013bf ]
; %var_2_2322 = phi i64 [ %var_2_2305, %block_.L_4013ad ], [ %.pre120, %block_4013bf ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4013ad ], [ %call2_4013f7, %block_4013bf ]
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
; Matched:%var_2_1907:  %var_2_1907 = add i64 %var_2_1905, -24
; %var_2_2323 = add i64 %var_2_2321, -24
; Matched:%var_2_1908:  %var_2_1908 = add i64 %var_2_1906, 30
; %var_2_2324 = add i64 %var_2_2322, 30
; Matched:\<badref\>:  store i64 %var_2_1908, i64* %PC, align 8
; store i64 %var_2_2324, i64* %var_2_3, align 8
; Matched:%var_2_1634:  %var_2_1634 = inttoptr i64 %var_2_1632 to i64*
; %var_2_2325 = inttoptr i64 %var_2_2323 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1261, align 8
; store i64 1, i64* %var_2_2325, align 8
%.pre122 = load i64, i64* %var_2_3, align 8
  br label %block_.L_40141a

block_.L_40141a:                                  ; preds = %block_401428, %block_.L_4013fc
%var_2_2326 = phi i32 [ %var_2_2327, %block_401428 ], [ 3, %block_.L_4013fc ]
%var_2_2327 = phi i32 [ %var_2_2326, %block_401428 ], [ 2, %block_.L_4013fc ]
%var_2_2328 = phi i64 [ %var_2_2421, %block_401428 ], [ %.pre122, %block_.L_4013fc ]
%var_2_2329 = load i64, i64* %RBP.i, align 8
%var_2_2330 = add i64 %var_2_2329, -24
; Matched:%var_2_2195:  %var_2_2195 = add i64 %var_2_2192, 4
; %var_2_2331 = add i64 %var_2_2328, 4
; Matched:\<badref\>:  store i64 %var_2_2195, i64* %PC, align 8
; store i64 %var_2_2331, i64* %var_2_3, align 8
%var_2_2332 = inttoptr i64 %var_2_2330 to i64*
%var_2_2333 = load i64, i64* %var_2_2332, align 8
; Matched:\<badref\>:  store i64 %var_2_1762, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2333, i64* %RAX.i1199, align 8
%var_2_2334 = add i64 %var_2_2329, -96
; Matched:%var_2_2199:  %var_2_2199 = add i64 %var_2_2192, 8
; %var_2_2335 = add i64 %var_2_2328, 8
; Matched:\<badref\>:  store i64 %var_2_2199, i64* %PC, align 8
; store i64 %var_2_2335, i64* %var_2_3, align 8
%var_2_2336 = inttoptr i64 %var_2_2334 to i64*
%var_2_2337 = load i64, i64* %var_2_2336, align 8
%var_2_2338 = sub i64 %var_2_2333, %var_2_2337
; Matched:%var_2_2203:  %var_2_2203 = icmp ult i64 %var_2_2197, %var_2_2201
; %var_2_2339 = icmp ult i64 %var_2_2333, %var_2_2337
; Matched:%var_2_2204:  %var_2_2204 = zext i1 %var_2_2203 to i8
; %var_2_2340 = zext i1 %var_2_2339 to i8
; Matched:\<badref\>:  store i8 %var_2_2204, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2340, i8* %var_2_14, align 1
; Matched:%var_2_2205:  %var_2_2205 = trunc i64 %var_2_2202 to i32
; %var_2_2341 = trunc i64 %var_2_2338 to i32
; Matched:%var_2_2206:  %var_2_2206 = and i32 %var_2_2205, 255
; %var_2_2342 = and i32 %var_2_2341, 255
; Matched:%var_2_2207:  %var_2_2207 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2206) #14
; %var_2_2343 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2342)
; Matched:%var_2_2208:  %var_2_2208 = trunc i32 %var_2_2207 to i8
; %var_2_2344 = trunc i32 %var_2_2343 to i8
; Matched:%var_2_2209:  %var_2_2209 = and i8 %var_2_2208, 1
; %var_2_2345 = and i8 %var_2_2344, 1
; Matched:%var_2_2210:  %var_2_2210 = xor i8 %var_2_2209, 1
; %var_2_2346 = xor i8 %var_2_2345, 1
; Matched:\<badref\>:  store i8 %var_2_2210, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2346, i8* %var_2_21, align 1
; Matched:%var_2_2211:  %var_2_2211 = xor i64 %var_2_2201, %var_2_2197
; %var_2_2347 = xor i64 %var_2_2337, %var_2_2333
; Matched:%var_2_2212:  %var_2_2212 = xor i64 %var_2_2211, %var_2_2202
; %var_2_2348 = xor i64 %var_2_2347, %var_2_2338
; Matched:%var_2_2213:  %var_2_2213 = lshr i64 %var_2_2212, 4
; %var_2_2349 = lshr i64 %var_2_2348, 4
; Matched:%var_2_2214:  %var_2_2214 = trunc i64 %var_2_2213 to i8
; %var_2_2350 = trunc i64 %var_2_2349 to i8
; Matched:%var_2_2215:  %var_2_2215 = and i8 %var_2_2214, 1
; %var_2_2351 = and i8 %var_2_2350, 1
; Matched:\<badref\>:  store i8 %var_2_2215, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2351, i8* %var_2_26, align 1
%var_2_2352 = icmp eq i64 %var_2_2338, 0
; Matched:%var_2_2217:  %var_2_2217 = zext i1 %var_2_2216 to i8
; %var_2_2353 = zext i1 %var_2_2352 to i8
; Matched:\<badref\>:  store i8 %var_2_2217, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2353, i8* %var_2_29, align 1
%var_2_2354 = lshr i64 %var_2_2338, 63
%var_2_2355 = trunc i64 %var_2_2354 to i8
; Matched:\<badref\>:  store i8 %var_2_2219, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2355, i8* %var_2_32, align 1
%var_2_2356 = lshr i64 %var_2_2333, 63
%var_2_2357 = lshr i64 %var_2_2337, 63
%var_2_2358 = xor i64 %var_2_2357, %var_2_2356
%var_2_2359 = xor i64 %var_2_2354, %var_2_2356
%var_2_2360 = add nuw nsw i64 %var_2_2359, %var_2_2358
%var_2_2361 = icmp eq i64 %var_2_2360, 2
; Matched:%var_2_2226:  %var_2_2226 = zext i1 %var_2_2225 to i8
; %var_2_2362 = zext i1 %var_2_2361 to i8
; Matched:\<badref\>:  store i8 %var_2_2226, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2362, i8* %var_2_38, align 1
%var_2_2363 = icmp ne i8 %var_2_2355, 0
%var_2_2364 = xor i1 %var_2_2363, %var_2_2361
%.demorgan137 = or i1 %var_2_2352, %var_2_2364
  %.v156 = select i1 %.demorgan137, i64 14, i64 122
%var_2_2365 = add i64 %var_2_2328, %.v156
; Matched:\<badref\>:  store i64 %var_2_2229, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2365, i64* %var_2_3, align 8
  br i1 %.demorgan137, label %block_401428, label %block_.L_401494

block_401428:                                     ; preds = %block_.L_40141a
%var_2_2366 = zext i32 %var_2_2327 to i64
%var_2_2367 = add i32 %var_2_2326, %var_2_2327
%var_2_2368 = icmp ult i32 %var_2_2367, %var_2_2326
%var_2_2369 = lshr i32 %var_2_2367, 31
%var_2_2370 = lshr i32 %var_2_2327, 31
%var_2_2371 = lshr i32 %var_2_2326, 31
%var_2_2372 = xor i32 %var_2_2369, %var_2_2370
%var_2_2373 = xor i32 %var_2_2369, %var_2_2371
%var_2_2374 = add nuw nsw i32 %var_2_2372, %var_2_2373
%var_2_2375 = icmp eq i32 %var_2_2374, 2
%var_2_2376 = zext i1 %var_2_2375 to i8
%var_2_2377 = xor i32 %var_2_2326, %var_2_2367
store i32 %var_2_2326, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
store i64 %var_2_2366, i64* %RAX.i1199, align 8
%var_2_2378 = zext i1 %var_2_2368 to i8
store i8 %var_2_2378, i8* %var_2_14, align 1
%var_2_2379 = and i32 %var_2_2327, 255
%var_2_2380 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2379)
%var_2_2381 = trunc i32 %var_2_2380 to i8
%var_2_2382 = and i8 %var_2_2381, 1
%var_2_2383 = xor i8 %var_2_2382, 1
store i8 %var_2_2383, i8* %var_2_21, align 1
%var_2_2384 = xor i32 %var_2_2377, %var_2_2327
%var_2_2385 = lshr i32 %var_2_2384, 4
%var_2_2386 = trunc i32 %var_2_2385 to i8
%var_2_2387 = and i8 %var_2_2386, 1
store i8 %var_2_2387, i8* %var_2_26, align 1
%var_2_2388 = icmp eq i32 %var_2_2327, 0
%var_2_2389 = zext i1 %var_2_2388 to i8
store i8 %var_2_2389, i8* %var_2_29, align 1
%var_2_2390 = trunc i32 %var_2_2370 to i8
store i8 %var_2_2390, i8* %var_2_32, align 1
store i8 %var_2_2376, i8* %var_2_38, align 1
store i32 %var_2_2327, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_2391 = load i64, i64* %RBP.i, align 8
%var_2_2392 = add i64 %var_2_2391, -24
; Matched:%var_2_1338:  %var_2_1338 = add i64 %var_2_2229, 95
; %var_2_2393 = add i64 %var_2_2365, 95
; Matched:\<badref\>:  store i64 %var_2_1338, i64* %PC, align 8
; store i64 %var_2_2393, i64* %var_2_3, align 8
%var_2_2394 = inttoptr i64 %var_2_2392 to i64*
; Matched:%var_2_2240:  %var_2_2240 = load i64, i64* %var_2_876, align 8
; %var_2_2395 = load i64, i64* %var_2_2394, align 8
; Matched:%var_2_452:  %var_2_452 = add i64 %var_2_451, 1
; %var_2_2396 = add i64 %var_2_2395, 1
; Matched:\<badref\>:  store i64 %var_2_2666, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2396, i64* %RAX.i1199, align 8
; Matched:%var_2_453:  %var_2_453 = icmp eq i64 %var_2_451, -1
; %var_2_2397 = icmp eq i64 %var_2_2395, -1
; Matched:%var_2_1847:  %var_2_1847 = icmp eq i64 %var_2_1845, 0
; %var_2_2398 = icmp eq i64 %var_2_2396, 0
; Matched:%var_2_390:  %var_2_390 = or i1 %var_2_388, %var_2_389
; %var_2_2399 = or i1 %var_2_2397, %var_2_2398
; Matched:%var_2_391:  %var_2_391 = zext i1 %var_2_390 to i8
; %var_2_2400 = zext i1 %var_2_2399 to i8
; Matched:\<badref\>:  store i8 %var_2_391, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2400, i8* %var_2_14, align 1
; Matched:%var_2_392:  %var_2_392 = trunc i64 %var_2_387 to i32
; %var_2_2401 = trunc i64 %var_2_2396 to i32
; Matched:%var_2_1347:  %var_2_1347 = and i32 %var_2_1346, 255
; %var_2_2402 = and i32 %var_2_2401, 255
; Matched:%var_2_1852:  %var_2_1852 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1851) #14
; %var_2_2403 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2402)
; Matched:%var_2_1165:  %var_2_1165 = trunc i32 %var_2_1164 to i8
; %var_2_2404 = trunc i32 %var_2_2403 to i8
; Matched:%var_2_1854:  %var_2_1854 = and i8 %var_2_1853, 1
; %var_2_2405 = and i8 %var_2_2404, 1
; Matched:%var_2_1351:  %var_2_1351 = xor i8 %var_2_1350, 1
; %var_2_2406 = xor i8 %var_2_2405, 1
; Matched:\<badref\>:  store i8 %var_2_1351, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2406, i8* %var_2_21, align 1
; Matched:%var_2_1856:  %var_2_1856 = xor i64 %var_2_1845, %var_2_1844
; %var_2_2407 = xor i64 %var_2_2396, %var_2_2395
; Matched:%var_2_399:  %var_2_399 = lshr i64 %var_2_398, 4
; %var_2_2408 = lshr i64 %var_2_2407, 4
; Matched:%var_2_1858:  %var_2_1858 = trunc i64 %var_2_1857 to i8
; %var_2_2409 = trunc i64 %var_2_2408 to i8
; Matched:%var_2_1859:  %var_2_1859 = and i8 %var_2_1858, 1
; %var_2_2410 = and i8 %var_2_2409, 1
; Matched:\<badref\>:  store i8 %var_2_401, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2410, i8* %var_2_26, align 1
; Matched:%var_2_1860:  %var_2_1860 = zext i1 %var_2_1847 to i8
; %var_2_2411 = zext i1 %var_2_2398 to i8
; Matched:\<badref\>:  store i8 %var_2_1860, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2411, i8* %var_2_29, align 1
; Matched:%var_2_468:  %var_2_468 = lshr i64 %var_2_452, 63
; %var_2_2412 = lshr i64 %var_2_2396, 63
; Matched:%var_2_1862:  %var_2_1862 = trunc i64 %var_2_1861 to i8
; %var_2_2413 = trunc i64 %var_2_2412 to i8
; Matched:\<badref\>:  store i8 %var_2_404, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2413, i8* %var_2_32, align 1
; Matched:%var_2_405:  %var_2_405 = lshr i64 %var_2_386, 63
; %var_2_2414 = lshr i64 %var_2_2395, 63
; Matched:%var_2_471:  %var_2_471 = xor i64 %var_2_468, %var_2_470
; %var_2_2415 = xor i64 %var_2_2412, %var_2_2414
; Matched:%var_2_472:  %var_2_472 = add nuw nsw i64 %var_2_471, %var_2_468
; %var_2_2416 = add nuw nsw i64 %var_2_2415, %var_2_2412
; Matched:%var_2_473:  %var_2_473 = icmp eq i64 %var_2_472, 2
; %var_2_2417 = icmp eq i64 %var_2_2416, 2
; Matched:%var_2_1867:  %var_2_1867 = zext i1 %var_2_1866 to i8
; %var_2_2418 = zext i1 %var_2_2417 to i8
; Matched:\<badref\>:  store i8 %var_2_409, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2418, i8* %var_2_38, align 1
; Matched:%var_2_1364:  %var_2_1364 = add i64 %var_2_2229, 103
; %var_2_2419 = add i64 %var_2_2365, 103
; Matched:\<badref\>:  store i64 %var_2_1364, i64* %PC, align 8
; store i64 %var_2_2419, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_452, i64* %var_2_450, align 8
; store i64 %var_2_2396, i64* %var_2_2394, align 8
%var_2_2420 = load i64, i64* %var_2_3, align 8
%var_2_2421 = add i64 %var_2_2420, -117
; Matched:\<badref\>:  store i64 %var_2_1366, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2421, i64* %var_2_3, align 8
  br label %block_.L_40141a

block_.L_401494:                                  ; preds = %block_.L_40141a
%var_2_2422 = add i64 %var_2_2329, -176
; Matched:%var_2_1872:  %var_2_1872 = add i64 %var_2_2229, 6
; %var_2_2423 = add i64 %var_2_2365, 6
; Matched:\<badref\>:  store i64 %var_2_1872, i64* %PC, align 8
; store i64 %var_2_2423, i64* %var_2_3, align 8
%var_2_2424 = inttoptr i64 %var_2_2422 to i32*
%var_2_2425 = load i32, i32* %var_2_2424, align 4
; Matched:%var_2_585:  %var_2_585 = zext i32 %var_2_584 to i64
; %var_2_2426 = zext i32 %var_2_2425 to i64
; Matched:\<badref\>:  store i64 %var_2_516, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2426, i64* %RAX.i1199, align 8
%var_2_2427 = add i64 %var_2_2329, -172
; Matched:%var_2_1877:  %var_2_1877 = add i64 %var_2_2229, 12
; %var_2_2428 = add i64 %var_2_2365, 12
; Matched:\<badref\>:  store i64 %var_2_1877, i64* %PC, align 8
; store i64 %var_2_2428, i64* %var_2_3, align 8
%var_2_2429 = inttoptr i64 %var_2_2427 to i32*
%var_2_2430 = load i32, i32* %var_2_2429, align 4
%var_2_2431 = sub i32 %var_2_2425, %var_2_2430
; Matched:%var_2_1881:  %var_2_1881 = icmp ult i32 %var_2_1874, %var_2_1879
; %var_2_2432 = icmp ult i32 %var_2_2425, %var_2_2430
; Matched:%var_2_1882:  %var_2_1882 = zext i1 %var_2_1881 to i8
; %var_2_2433 = zext i1 %var_2_2432 to i8
; Matched:\<badref\>:  store i8 %var_2_1882, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2433, i8* %var_2_14, align 1
; Matched:%var_2_490:  %var_2_490 = and i32 %var_2_487, 255
; %var_2_2434 = and i32 %var_2_2431, 255
; Matched:%var_2_976:  %var_2_976 = tail call i32 @llvm.ctpop.i32(i32 %var_2_975) #14
; %var_2_2435 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2434)
; Matched:%var_2_1924:  %var_2_1924 = trunc i32 %var_2_1923 to i8
; %var_2_2436 = trunc i32 %var_2_2435 to i8
; Matched:%var_2_1925:  %var_2_1925 = and i8 %var_2_1924, 1
; %var_2_2437 = and i8 %var_2_2436, 1
; Matched:%var_2_1926:  %var_2_1926 = xor i8 %var_2_1925, 1
; %var_2_2438 = xor i8 %var_2_2437, 1
; Matched:\<badref\>:  store i8 %var_2_1926, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2438, i8* %var_2_21, align 1
; Matched:%var_2_1927:  %var_2_1927 = xor i32 %var_2_1918, %var_2_1913
; %var_2_2439 = xor i32 %var_2_2430, %var_2_2425
; Matched:%var_2_1889:  %var_2_1889 = xor i32 %var_2_1888, %var_2_1880
; %var_2_2440 = xor i32 %var_2_2439, %var_2_2431
; Matched:%var_2_497:  %var_2_497 = lshr i32 %var_2_496, 4
; %var_2_2441 = lshr i32 %var_2_2440, 4
; Matched:%var_2_1930:  %var_2_1930 = trunc i32 %var_2_1929 to i8
; %var_2_2442 = trunc i32 %var_2_2441 to i8
; Matched:%var_2_533:  %var_2_533 = and i8 %var_2_532, 1
; %var_2_2443 = and i8 %var_2_2442, 1
; Matched:\<badref\>:  store i8 %var_2_1931, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2443, i8* %var_2_26, align 1
%var_2_2444 = icmp eq i32 %var_2_2431, 0
; Matched:%var_2_569:  %var_2_569 = zext i1 %var_2_568 to i8
; %var_2_2445 = zext i1 %var_2_2444 to i8
; Matched:\<badref\>:  store i8 %var_2_1933, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2445, i8* %var_2_29, align 1
; Matched:%var_2_502:  %var_2_502 = lshr i32 %var_2_487, 31
; %var_2_2446 = lshr i32 %var_2_2431, 31
; Matched:%var_2_503:  %var_2_503 = trunc i32 %var_2_502 to i8
; %var_2_2447 = trunc i32 %var_2_2446 to i8
; Matched:\<badref\>:  store i8 %var_2_503, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2447, i8* %var_2_32, align 1
; Matched:%var_2_504:  %var_2_504 = lshr i32 %var_2_481, 31
; %var_2_2448 = lshr i32 %var_2_2425, 31
; Matched:%var_2_1898:  %var_2_1898 = lshr i32 %var_2_1879, 31
; %var_2_2449 = lshr i32 %var_2_2430, 31
; Matched:%var_2_1899:  %var_2_1899 = xor i32 %var_2_1898, %var_2_1897
; %var_2_2450 = xor i32 %var_2_2449, %var_2_2448
; Matched:%var_2_541:  %var_2_541 = xor i32 %var_2_536, %var_2_538
; %var_2_2451 = xor i32 %var_2_2446, %var_2_2448
; Matched:%var_2_542:  %var_2_542 = add nuw nsw i32 %var_2_541, %var_2_540
; %var_2_2452 = add nuw nsw i32 %var_2_2451, %var_2_2450
; Matched:%var_2_1902:  %var_2_1902 = icmp eq i32 %var_2_1901, 2
; %var_2_2453 = icmp eq i32 %var_2_2452, 2
; Matched:%var_2_1903:  %var_2_1903 = zext i1 %var_2_1902 to i8
; %var_2_2454 = zext i1 %var_2_2453 to i8
; Matched:\<badref\>:  store i8 %var_2_1903, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2454, i8* %var_2_38, align 1
%.v157 = select i1 %var_2_2444, i64 18, i64 66
%var_2_2455 = add i64 %var_2_2365, %.v157
; Matched:\<badref\>:  store i64 %var_2_1904, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2455, i64* %var_2_3, align 8
br i1 %var_2_2444, label %block_4014a6, label %block_.L_4014d6

block_4014a6:                                     ; preds = %block_.L_401494
; Matched:%var_2_1523:  %var_2_1523 = add i64 %var_2_1904, 4
; %var_2_2456 = add i64 %var_2_2455, 4
; Matched:\<badref\>:  store i64 %var_2_1523, i64* %PC, align 8
; store i64 %var_2_2456, i64* %var_2_3, align 8
; Matched:%var_2_1524:  %var_2_1524 = load i64, i64* %var_2_2200, align 8
; %var_2_2457 = load i64, i64* %var_2_2336, align 8
; Matched:\<badref\>:  store i64 %var_2_1524, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2457, i64* %RDI.i1206, align 8
%var_2_2458 = sext i32 %var_2_2327 to i64
store i64 %var_2_2458, i64* %RSI.i1110, align 8
%var_2_2459 = sext i32 %var_2_2326 to i64
store i64 %var_2_2459, i64* %RDX.i596, align 8
%var_2_2460 = add i64 %var_2_2329, -112
; Matched:%var_2_1529:  %var_2_1529 = add i64 %var_2_1904, 25
; %var_2_2461 = add i64 %var_2_2455, 25
; Matched:\<badref\>:  store i64 %var_2_1529, i64* %PC, align 8
; store i64 %var_2_2461, i64* %var_2_3, align 8
%var_2_2462 = inttoptr i64 %var_2_2460 to i64*
%var_2_2463 = load i64, i64* %var_2_2462, align 8
; Matched:\<badref\>:  store i64 %var_2_1407, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_2463, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_663:  %var_2_663 = add i64 %var_2_1686, -120
; %var_2_2464 = add i64 %var_2_2329, -120
; Matched:%var_2_1533:  %var_2_1533 = add i64 %var_2_1904, 30
; %var_2_2465 = add i64 %var_2_2455, 30
; Matched:\<badref\>:  store i64 %var_2_1533, i64* %PC, align 8
; store i64 %var_2_2465, i64* %var_2_3, align 8
; Matched:%var_2_1534:  %var_2_1534 = inttoptr i64 %var_2_1532 to i64*
; %var_2_2466 = inttoptr i64 %var_2_2464 to i64*
; Matched:%var_2_1535:  %var_2_1535 = load i64, i64* %var_2_1534, align 8
; %var_2_2467 = load i64, i64* %var_2_2466, align 8
; Matched:\<badref\>:  store i64 %var_2_666, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_2467, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_873, -128
; %var_2_2468 = add i64 %var_2_2329, -128
; Matched:%var_2_1537:  %var_2_1537 = add i64 %var_2_1904, 35
; %var_2_2469 = add i64 %var_2_2455, 35
; Matched:\<badref\>:  store i64 %var_2_1537, i64* %PC, align 8
; store i64 %var_2_2469, i64* %var_2_3, align 8
; Matched:%var_2_1538:  %var_2_1538 = inttoptr i64 %var_2_1536 to i64*
; %var_2_2470 = inttoptr i64 %var_2_2468 to i64*
; Matched:%var_2_1539:  %var_2_1539 = load i64, i64* %var_2_1538, align 8
; %var_2_2471 = load i64, i64* %var_2_2470, align 8
; Matched:\<badref\>:  store i64 %var_2_1539, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_2471, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
%var_2_2472 = add i64 %var_2_2329, -136
; Matched:%var_2_1541:  %var_2_1541 = add i64 %var_2_1904, 43
; %var_2_2473 = add i64 %var_2_2455, 43
; Matched:\<badref\>:  store i64 %var_2_1541, i64* %PC, align 8
; store i64 %var_2_2473, i64* %var_2_3, align 8
%var_2_2474 = inttoptr i64 %var_2_2472 to i64*
%var_2_2475 = load i64, i64* %var_2_2474, align 8
store i64 %var_2_2475, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_2476 = add i64 %var_2_2455, 330
; Matched:%var_2_1545:  %var_2_1545 = add i64 %var_2_1904, 48
; %var_2_2477 = add i64 %var_2_2455, 48
%var_2_2478 = load i64, i64* %var_2_6, align 8
%var_2_2479 = add i64 %var_2_2478, -8
; Matched:%var_2_1548:  %var_2_1548 = inttoptr i64 %var_2_1547 to i64*
; %var_2_2480 = inttoptr i64 %var_2_2479 to i64*
; Matched:\<badref\>:  store i64 %var_2_1545, i64* %var_2_1548, align 8
; store i64 %var_2_2477, i64* %var_2_2480, align 8
; Matched:\<badref\>:  store i64 %var_2_2416, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2479, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_1544, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2476, i64* %var_2_3, align 8
%call2_4014d1 = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_2476, %struct.Memory* %MEMORY.23)
%.pre123 = load i64, i64* %var_2_3, align 8
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4014d6

block_.L_4014d6:                                  ; preds = %block_.L_401494, %block_4014a6
%var_2_2481 = phi i64 [ %var_2_2329, %block_.L_401494 ], [ %.pre124, %block_4014a6 ]
%var_2_2482 = phi i64 [ %var_2_2455, %block_.L_401494 ], [ %.pre123, %block_4014a6 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401494 ], [ %call2_4014d1, %block_4014a6 ]
%var_2_2483 = add i64 %var_2_2482, ptrtoint (%G_0x462__rip__type* @G_0x462__rip_ to i64)
%var_2_2484 = add i64 %var_2_2482, 8
store i64 %var_2_2484, i64* %var_2_3, align 8
%var_2_2485 = inttoptr i64 %var_2_2483 to i64*
%var_2_2486 = load i64, i64* %var_2_2485, align 8
store i64 %var_2_2486, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
%var_2_2487 = add i64 %var_2_2481, -144
; Matched:%var_2_1371:  %var_2_1371 = add i64 %var_2_1368, 16
; %var_2_2488 = add i64 %var_2_2482, 16
; Matched:\<badref\>:  store i64 %var_2_1371, i64* %PC, align 8
; store i64 %var_2_2488, i64* %var_2_3, align 8
%var_2_2489 = inttoptr i64 %var_2_2487 to i64*
store i64 %var_2_2486, i64* %var_2_2489, align 8
%var_2_2490 = load i64, i64* %RBP.i, align 8
%var_2_2491 = add i64 %var_2_2490, -24
%var_2_2492 = load i64, i64* %var_2_3, align 8
%var_2_2493 = add i64 %var_2_2492, 8
store i64 %var_2_2493, i64* %var_2_3, align 8
%var_2_2494 = inttoptr i64 %var_2_2491 to i64*
store i64 1, i64* %var_2_2494, align 8
%.pre125 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4014ee

block_.L_4014ee:                                  ; preds = %block_4014fc, %block_.L_4014d6
%var_2_2495 = phi i64 [ %.pre125, %block_.L_4014d6 ], [ %var_2_2596, %block_4014fc ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_4014d6 ], [ %call2_401517, %block_4014fc ]
%var_2_2496 = load i64, i64* %RBP.i, align 8
%var_2_2497 = add i64 %var_2_2496, -24
; Matched:%var_2_277:  %var_2_277 = add i64 %var_2_274, 4
; %var_2_2498 = add i64 %var_2_2495, 4
; Matched:\<badref\>:  store i64 %var_2_277, i64* %PC, align 8
; store i64 %var_2_2498, i64* %var_2_3, align 8
%var_2_2499 = inttoptr i64 %var_2_2497 to i64*
%var_2_2500 = load i64, i64* %var_2_2499, align 8
; Matched:\<badref\>:  store i64 %var_2_279, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2500, i64* %RAX.i1199, align 8
%var_2_2501 = add i64 %var_2_2496, -104
; Matched:%var_2_281:  %var_2_281 = add i64 %var_2_274, 8
; %var_2_2502 = add i64 %var_2_2495, 8
; Matched:\<badref\>:  store i64 %var_2_281, i64* %PC, align 8
; store i64 %var_2_2502, i64* %var_2_3, align 8
%var_2_2503 = inttoptr i64 %var_2_2501 to i64*
%var_2_2504 = load i64, i64* %var_2_2503, align 8
%var_2_2505 = sub i64 %var_2_2500, %var_2_2504
; Matched:%var_2_285:  %var_2_285 = icmp ult i64 %var_2_279, %var_2_283
; %var_2_2506 = icmp ult i64 %var_2_2500, %var_2_2504
; Matched:%var_2_286:  %var_2_286 = zext i1 %var_2_285 to i8
; %var_2_2507 = zext i1 %var_2_2506 to i8
; Matched:\<badref\>:  store i8 %var_2_286, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2507, i8* %var_2_14, align 1
; Matched:%var_2_287:  %var_2_287 = trunc i64 %var_2_284 to i32
; %var_2_2508 = trunc i64 %var_2_2505 to i32
; Matched:%var_2_288:  %var_2_288 = and i32 %var_2_287, 255
; %var_2_2509 = and i32 %var_2_2508, 255
; Matched:%var_2_289:  %var_2_289 = tail call i32 @llvm.ctpop.i32(i32 %var_2_288) #14
; %var_2_2510 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2509)
; Matched:%var_2_290:  %var_2_290 = trunc i32 %var_2_289 to i8
; %var_2_2511 = trunc i32 %var_2_2510 to i8
; Matched:%var_2_291:  %var_2_291 = and i8 %var_2_290, 1
; %var_2_2512 = and i8 %var_2_2511, 1
; Matched:%var_2_292:  %var_2_292 = xor i8 %var_2_291, 1
; %var_2_2513 = xor i8 %var_2_2512, 1
; Matched:\<badref\>:  store i8 %var_2_292, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2513, i8* %var_2_21, align 1
; Matched:%var_2_293:  %var_2_293 = xor i64 %var_2_283, %var_2_279
; %var_2_2514 = xor i64 %var_2_2504, %var_2_2500
; Matched:%var_2_294:  %var_2_294 = xor i64 %var_2_293, %var_2_284
; %var_2_2515 = xor i64 %var_2_2514, %var_2_2505
; Matched:%var_2_295:  %var_2_295 = lshr i64 %var_2_294, 4
; %var_2_2516 = lshr i64 %var_2_2515, 4
; Matched:%var_2_296:  %var_2_296 = trunc i64 %var_2_295 to i8
; %var_2_2517 = trunc i64 %var_2_2516 to i8
; Matched:%var_2_297:  %var_2_297 = and i8 %var_2_296, 1
; %var_2_2518 = and i8 %var_2_2517, 1
; Matched:\<badref\>:  store i8 %var_2_297, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2518, i8* %var_2_26, align 1
%var_2_2519 = icmp eq i64 %var_2_2505, 0
; Matched:%var_2_299:  %var_2_299 = zext i1 %var_2_298 to i8
; %var_2_2520 = zext i1 %var_2_2519 to i8
; Matched:\<badref\>:  store i8 %var_2_299, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2520, i8* %var_2_29, align 1
%var_2_2521 = lshr i64 %var_2_2505, 63
%var_2_2522 = trunc i64 %var_2_2521 to i8
; Matched:\<badref\>:  store i8 %var_2_301, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2522, i8* %var_2_32, align 1
%var_2_2523 = lshr i64 %var_2_2500, 63
%var_2_2524 = lshr i64 %var_2_2504, 63
%var_2_2525 = xor i64 %var_2_2524, %var_2_2523
%var_2_2526 = xor i64 %var_2_2521, %var_2_2523
%var_2_2527 = add nuw nsw i64 %var_2_2526, %var_2_2525
%var_2_2528 = icmp eq i64 %var_2_2527, 2
; Matched:%var_2_308:  %var_2_308 = zext i1 %var_2_307 to i8
; %var_2_2529 = zext i1 %var_2_2528 to i8
; Matched:\<badref\>:  store i8 %var_2_308, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2529, i8* %var_2_38, align 1
%var_2_2530 = icmp ne i8 %var_2_2522, 0
%var_2_2531 = xor i1 %var_2_2530, %var_2_2528
%.demorgan138 = or i1 %var_2_2519, %var_2_2531
  %.v158 = select i1 %.demorgan138, i64 14, i64 71
%var_2_2532 = add i64 %var_2_2495, %.v158
; Matched:\<badref\>:  store i64 %var_2_311, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2532, i64* %var_2_3, align 8
  br i1 %.demorgan138, label %block_4014fc, label %block_.L_401535

block_4014fc:                                     ; preds = %block_.L_4014ee
%var_2_2533 = add i64 %var_2_2496, -144
; Matched:%var_2_414:  %var_2_414 = add i64 %var_2_311, 8
; %var_2_2534 = add i64 %var_2_2532, 8
; Matched:\<badref\>:  store i64 %var_2_414, i64* %PC, align 8
; store i64 %var_2_2534, i64* %var_2_3, align 8
%var_2_2535 = inttoptr i64 %var_2_2533 to i64*
%var_2_2536 = load i64, i64* %var_2_2535, align 8
; Matched:\<badref\>:  store i64 %var_2_857, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_2536, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_417:  %var_2_417 = add i64 %var_2_311, -3580
; %var_2_2537 = add i64 %var_2_2532, -3580
; Matched:%var_2_418:  %var_2_418 = add i64 %var_2_311, 13
; %var_2_2538 = add i64 %var_2_2532, 13
%var_2_2539 = load i64, i64* %var_2_6, align 8
%var_2_2540 = add i64 %var_2_2539, -8
; Matched:%var_2_421:  %var_2_421 = inttoptr i64 %var_2_420 to i64*
; %var_2_2541 = inttoptr i64 %var_2_2540 to i64*
; Matched:\<badref\>:  store i64 %var_2_418, i64* %var_2_421, align 8
; store i64 %var_2_2538, i64* %var_2_2541, align 8
; Matched:\<badref\>:  store i64 %var_2_2544, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2540, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_417, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2537, i64* %var_2_3, align 8
%var_2_2542 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.26)
; Matched:%var_2_423:  %var_2_423 = load i64, i64* %PC, align 8
; %var_2_2543 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_424:  %var_2_424 = load double, double* %var_2_2694, align 1
; %var_2_2544 = load double, double* %var_2_301, align 1
%var_2_2545 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
; Matched:%var_2_426:  %var_2_426 = fdiv double %var_2_424, %var_2_425
; %var_2_2546 = fdiv double %var_2_2544, %var_2_2545
; Matched:\<badref\>:  store double %var_2_426, double* %var_2_2694, align 1, !tbaa !1284
; store double %var_2_2546, double* %var_2_301, align 1
; Matched:%var_2_427:  %var_2_427 = add i64 %var_2_423, -3641
; %var_2_2547 = add i64 %var_2_2543, -3641
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_423, 14
; %var_2_2548 = add i64 %var_2_2543, 14
%var_2_2549 = load i64, i64* %var_2_6, align 8
%var_2_2550 = add i64 %var_2_2549, -8
; Matched:%var_2_431:  %var_2_431 = inttoptr i64 %var_2_430 to i64*
; %var_2_2551 = inttoptr i64 %var_2_2550 to i64*
; Matched:\<badref\>:  store i64 %var_2_428, i64* %var_2_431, align 8
; store i64 %var_2_2548, i64* %var_2_2551, align 8
; Matched:\<badref\>:  store i64 %var_2_437, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2550, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_427, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2547, i64* %var_2_3, align 8
%var_2_2552 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %var_2_2542)
%var_2_2553 = load i64, i64* %var_2_3, align 8
%var_2_2554 = add i64 %var_2_2553, -3511
; Matched:%var_2_2542:  %var_2_2542 = add i64 %var_2_2540, 5
; %var_2_2555 = add i64 %var_2_2553, 5
%var_2_2556 = load i64, i64* %var_2_6, align 8
%var_2_2557 = add i64 %var_2_2556, -8
; Matched:%var_2_2545:  %var_2_2545 = inttoptr i64 %var_2_2544 to i64*
; %var_2_2558 = inttoptr i64 %var_2_2557 to i64*
; Matched:\<badref\>:  store i64 %var_2_2592, i64* %var_2_2595, align 8
; store i64 %var_2_2555, i64* %var_2_2558, align 8
; Matched:\<badref\>:  store i64 %var_2_271, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2557, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_434, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2554, i64* %var_2_3, align 8
%call2_401517 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %var_2_2554, %struct.Memory* %var_2_2552)
%var_2_2559 = load i64, i64* %RBP.i, align 8
%var_2_2560 = add i64 %var_2_2559, -144
%var_2_2561 = load i64, i64* %var_2_3, align 8
%var_2_2562 = add i64 %var_2_2561, 8
store i64 %var_2_2562, i64* %var_2_3, align 8
%var_2_2563 = load i64, i64* %var_2_302, align 1
%var_2_2564 = inttoptr i64 %var_2_2560 to i64*
store i64 %var_2_2563, i64* %var_2_2564, align 8
%var_2_2565 = load i64, i64* %RBP.i, align 8
%var_2_2566 = add i64 %var_2_2565, -24
%var_2_2567 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1154:  %var_2_1154 = add i64 %var_2_1153, 4
; %var_2_2568 = add i64 %var_2_2567, 4
; Matched:\<badref\>:  store i64 %var_2_1154, i64* %PC, align 8
; store i64 %var_2_2568, i64* %var_2_3, align 8
%var_2_2569 = inttoptr i64 %var_2_2566 to i64*
; Matched:%var_2_386:  %var_2_386 = load i64, i64* %var_2_385, align 8
; %var_2_2570 = load i64, i64* %var_2_2569, align 8
; Matched:%var_2_387:  %var_2_387 = add i64 %var_2_386, 1
; %var_2_2571 = add i64 %var_2_2570, 1
; Matched:\<badref\>:  store i64 %var_2_387, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2571, i64* %RAX.i1199, align 8
; Matched:%var_2_388:  %var_2_388 = icmp eq i64 %var_2_386, -1
; %var_2_2572 = icmp eq i64 %var_2_2570, -1
; Matched:%var_2_1343:  %var_2_1343 = icmp eq i64 %var_2_1341, 0
; %var_2_2573 = icmp eq i64 %var_2_2571, 0
; Matched:%var_2_1160:  %var_2_1160 = or i1 %var_2_1158, %var_2_1159
; %var_2_2574 = or i1 %var_2_2572, %var_2_2573
; Matched:%var_2_1161:  %var_2_1161 = zext i1 %var_2_1160 to i8
; %var_2_2575 = zext i1 %var_2_2574 to i8
; Matched:\<badref\>:  store i8 %var_2_1161, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2575, i8* %var_2_14, align 1
; Matched:%var_2_1162:  %var_2_1162 = trunc i64 %var_2_1157 to i32
; %var_2_2576 = trunc i64 %var_2_2571 to i32
; Matched:%var_2_1163:  %var_2_1163 = and i32 %var_2_1162, 255
; %var_2_2577 = and i32 %var_2_2576, 255
; Matched:%var_2_2673:  %var_2_2673 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2672) #14
; %var_2_2578 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2577)
; Matched:%var_2_1292:  %var_2_1292 = trunc i32 %var_2_1291 to i8
; %var_2_2579 = trunc i32 %var_2_2578 to i8
; Matched:%var_2_2675:  %var_2_2675 = and i8 %var_2_2674, 1
; %var_2_2580 = and i8 %var_2_2579, 1
; Matched:%var_2_2676:  %var_2_2676 = xor i8 %var_2_2675, 1
; %var_2_2581 = xor i8 %var_2_2580, 1
; Matched:\<badref\>:  store i8 %var_2_2676, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2581, i8* %var_2_21, align 1
; Matched:%var_2_1352:  %var_2_1352 = xor i64 %var_2_1341, %var_2_1340
; %var_2_2582 = xor i64 %var_2_2571, %var_2_2570
; Matched:%var_2_1353:  %var_2_1353 = lshr i64 %var_2_1352, 4
; %var_2_2583 = lshr i64 %var_2_2582, 4
; Matched:%var_2_1170:  %var_2_1170 = trunc i64 %var_2_1169 to i8
; %var_2_2584 = trunc i64 %var_2_2583 to i8
; Matched:%var_2_1171:  %var_2_1171 = and i8 %var_2_1170, 1
; %var_2_2585 = and i8 %var_2_2584, 1
; Matched:\<badref\>:  store i8 %var_2_1355, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2585, i8* %var_2_26, align 1
; Matched:%var_2_1172:  %var_2_1172 = zext i1 %var_2_1159 to i8
; %var_2_2586 = zext i1 %var_2_2573 to i8
; Matched:\<badref\>:  store i8 %var_2_1172, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2586, i8* %var_2_29, align 1
; Matched:%var_2_403:  %var_2_403 = lshr i64 %var_2_387, 63
; %var_2_2587 = lshr i64 %var_2_2571, 63
; Matched:%var_2_1358:  %var_2_1358 = trunc i64 %var_2_1357 to i8
; %var_2_2588 = trunc i64 %var_2_2587 to i8
; Matched:\<badref\>:  store i8 %var_2_1358, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2588, i8* %var_2_32, align 1
; Matched:%var_2_1359:  %var_2_1359 = lshr i64 %var_2_1340, 63
; %var_2_2589 = lshr i64 %var_2_2570, 63
; Matched:%var_2_1360:  %var_2_1360 = xor i64 %var_2_1357, %var_2_1359
; %var_2_2590 = xor i64 %var_2_2587, %var_2_2589
; Matched:%var_2_407:  %var_2_407 = add nuw nsw i64 %var_2_406, %var_2_403
; %var_2_2591 = add nuw nsw i64 %var_2_2590, %var_2_2587
; Matched:%var_2_1866:  %var_2_1866 = icmp eq i64 %var_2_1865, 2
; %var_2_2592 = icmp eq i64 %var_2_2591, 2
; Matched:%var_2_1363:  %var_2_1363 = zext i1 %var_2_1362 to i8
; %var_2_2593 = zext i1 %var_2_2592 to i8
; Matched:\<badref\>:  store i8 %var_2_1363, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2593, i8* %var_2_38, align 1
; Matched:%var_2_1868:  %var_2_1868 = add i64 %var_2_1841, 12
; %var_2_2594 = add i64 %var_2_2567, 12
; Matched:\<badref\>:  store i64 %var_2_2689, i64* %PC, align 8
; store i64 %var_2_2594, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i64 %var_2_1284, i64* %var_2_1282, align 8
; store i64 %var_2_2571, i64* %var_2_2569, align 8
%var_2_2595 = load i64, i64* %var_2_3, align 8
%var_2_2596 = add i64 %var_2_2595, -66
; Matched:\<badref\>:  store i64 %var_2_477, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2596, i64* %var_2_3, align 8
  br label %block_.L_4014ee

block_.L_401535:                                  ; preds = %block_.L_4014ee
%var_2_2597 = add i64 %var_2_2496, -176
; Matched:%var_2_479:  %var_2_479 = add i64 %var_2_311, 6
; %var_2_2598 = add i64 %var_2_2532, 6
; Matched:\<badref\>:  store i64 %var_2_479, i64* %PC, align 8
; store i64 %var_2_2598, i64* %var_2_3, align 8
%var_2_2599 = inttoptr i64 %var_2_2597 to i32*
%var_2_2600 = load i32, i32* %var_2_2599, align 4
; Matched:%var_2_1203:  %var_2_1203 = zext i32 %var_2_1202 to i64
; %var_2_2601 = zext i32 %var_2_2600 to i64
; Matched:\<badref\>:  store i64 %var_2_585, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2601, i64* %RAX.i1199, align 8
%var_2_2602 = add i64 %var_2_2496, -172
; Matched:%var_2_484:  %var_2_484 = add i64 %var_2_311, 12
; %var_2_2603 = add i64 %var_2_2532, 12
; Matched:\<badref\>:  store i64 %var_2_484, i64* %PC, align 8
; store i64 %var_2_2603, i64* %var_2_3, align 8
%var_2_2604 = inttoptr i64 %var_2_2602 to i32*
%var_2_2605 = load i32, i32* %var_2_2604, align 4
%var_2_2606 = sub i32 %var_2_2600, %var_2_2605
; Matched:%var_2_1209:  %var_2_1209 = icmp ult i32 %var_2_1202, %var_2_1207
; %var_2_2607 = icmp ult i32 %var_2_2600, %var_2_2605
; Matched:%var_2_1210:  %var_2_1210 = zext i1 %var_2_1209 to i8
; %var_2_2608 = zext i1 %var_2_2607 to i8
; Matched:\<badref\>:  store i8 %var_2_1210, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2608, i8* %var_2_14, align 1
; Matched:%var_2_524:  %var_2_524 = and i32 %var_2_521, 255
; %var_2_2609 = and i32 %var_2_2606, 255
; Matched:%var_2_525:  %var_2_525 = tail call i32 @llvm.ctpop.i32(i32 %var_2_524) #14
; %var_2_2610 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2609)
; Matched:%var_2_1885:  %var_2_1885 = trunc i32 %var_2_1884 to i8
; %var_2_2611 = trunc i32 %var_2_2610 to i8
; Matched:%var_2_527:  %var_2_527 = and i8 %var_2_526, 1
; %var_2_2612 = and i8 %var_2_2611, 1
; Matched:%var_2_597:  %var_2_597 = xor i8 %var_2_596, 1
; %var_2_2613 = xor i8 %var_2_2612, 1
; Matched:\<badref\>:  store i8 %var_2_1887, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2613, i8* %var_2_21, align 1
; Matched:%var_2_1888:  %var_2_1888 = xor i32 %var_2_1879, %var_2_1874
; %var_2_2614 = xor i32 %var_2_2605, %var_2_2600
; Matched:%var_2_1217:  %var_2_1217 = xor i32 %var_2_1216, %var_2_1208
; %var_2_2615 = xor i32 %var_2_2614, %var_2_2606
; Matched:%var_2_531:  %var_2_531 = lshr i32 %var_2_530, 4
; %var_2_2616 = lshr i32 %var_2_2615, 4
; Matched:%var_2_1891:  %var_2_1891 = trunc i32 %var_2_1890 to i8
; %var_2_2617 = trunc i32 %var_2_2616 to i8
; Matched:%var_2_1892:  %var_2_1892 = and i8 %var_2_1891, 1
; %var_2_2618 = and i8 %var_2_2617, 1
; Matched:\<badref\>:  store i8 %var_2_533, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2618, i8* %var_2_26, align 1
%var_2_2619 = icmp eq i32 %var_2_2606, 0
; Matched:%var_2_501:  %var_2_501 = zext i1 %var_2_500 to i8
; %var_2_2620 = zext i1 %var_2_2619 to i8
; Matched:\<badref\>:  store i8 %var_2_1894, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2620, i8* %var_2_29, align 1
; Matched:%var_2_605:  %var_2_605 = lshr i32 %var_2_590, 31
; %var_2_2621 = lshr i32 %var_2_2606, 31
; Matched:%var_2_537:  %var_2_537 = trunc i32 %var_2_536 to i8
; %var_2_2622 = trunc i32 %var_2_2621 to i8
; Matched:\<badref\>:  store i8 %var_2_537, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2622, i8* %var_2_32, align 1
; Matched:%var_2_538:  %var_2_538 = lshr i32 %var_2_515, 31
; %var_2_2623 = lshr i32 %var_2_2600, 31
; Matched:%var_2_1226:  %var_2_1226 = lshr i32 %var_2_1207, 31
; %var_2_2624 = lshr i32 %var_2_2605, 31
; Matched:%var_2_1227:  %var_2_1227 = xor i32 %var_2_1226, %var_2_1225
; %var_2_2625 = xor i32 %var_2_2624, %var_2_2623
; Matched:%var_2_610:  %var_2_610 = xor i32 %var_2_605, %var_2_607
; %var_2_2626 = xor i32 %var_2_2621, %var_2_2623
; Matched:%var_2_611:  %var_2_611 = add nuw nsw i32 %var_2_610, %var_2_609
; %var_2_2627 = add nuw nsw i32 %var_2_2626, %var_2_2625
; Matched:%var_2_543:  %var_2_543 = icmp eq i32 %var_2_542, 2
; %var_2_2628 = icmp eq i32 %var_2_2627, 2
; Matched:%var_2_544:  %var_2_544 = zext i1 %var_2_543 to i8
; %var_2_2629 = zext i1 %var_2_2628 to i8
; Matched:\<badref\>:  store i8 %var_2_544, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2629, i8* %var_2_38, align 1
%.v159 = select i1 %var_2_2619, i64 18, i64 75
%var_2_2630 = add i64 %var_2_2532, %.v159
; Matched:\<badref\>:  store i64 %var_2_511, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2630, i64* %var_2_3, align 8
br i1 %var_2_2619, label %block_401547, label %block_.L_401580

block_401547:                                     ; preds = %block_.L_401535
; Matched:%var_2_775:  %var_2_775 = add i64 %var_2_511, 4
; %var_2_2631 = add i64 %var_2_2630, 4
; Matched:\<badref\>:  store i64 %var_2_775, i64* %PC, align 8
; store i64 %var_2_2631, i64* %var_2_3, align 8
; Matched:%var_2_776:  %var_2_776 = load i64, i64* %var_2_282, align 8
; %var_2_2632 = load i64, i64* %var_2_2503, align 8
; Matched:\<badref\>:  store i64 %var_2_776, i64* %RDI, align 8, !tbaa !1261
; store i64 %var_2_2632, i64* %RDI.i1206, align 8
%var_2_2633 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
%var_2_2634 = sext i32 %var_2_2633 to i64
store i64 %var_2_2634, i64* %RSI.i1110, align 8
%var_2_2635 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
%var_2_2636 = sext i32 %var_2_2635 to i64
store i64 %var_2_2636, i64* %RDX.i596, align 8
%var_2_2637 = add i64 %var_2_2496, -144
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_511, 28
; %var_2_2638 = add i64 %var_2_2630, 28
; Matched:\<badref\>:  store i64 %var_2_782, i64* %PC, align 8
; store i64 %var_2_2638, i64* %var_2_3, align 8
%var_2_2639 = inttoptr i64 %var_2_2637 to i64*
%var_2_2640 = load i64, i64* %var_2_2639, align 8
; Matched:\<badref\>:  store i64 %var_2_416, i64* %var_2_2695, align 1, !tbaa !1284
; store i64 %var_2_2640, i64* %var_2_302, align 1
store double 0.000000e+00, double* %var_2_304, align 1
; Matched:%var_2_785:  %var_2_785 = add i64 %var_2_511, 36
; %var_2_2641 = add i64 %var_2_2630, 36
; Matched:\<badref\>:  store i64 %var_2_785, i64* %PC, align 8
; store i64 %var_2_2641, i64* %var_2_3, align 8
%var_2_2642 = load i64, i64* %var_2_2639, align 8
; Matched:\<badref\>:  store i64 %var_2_2453, i64* %var_2_2699, align 1, !tbaa !1284
; store i64 %var_2_2642, i64* %var_2_307, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2701, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_309, align 1
; Matched:%var_2_787:  %var_2_787 = add i64 %var_2_511, 44
; %var_2_2643 = add i64 %var_2_2630, 44
; Matched:\<badref\>:  store i64 %var_2_787, i64* %PC, align 8
; store i64 %var_2_2643, i64* %var_2_3, align 8
; Matched:%var_2_788:  %var_2_788 = load i64, i64* %var_2_783, align 8
; %var_2_2644 = load i64, i64* %var_2_2639, align 8
; Matched:\<badref\>:  store i64 %var_2_788, i64* %var_2_2703, align 1, !tbaa !1284
; store i64 %var_2_2644, i64* %var_2_312, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2705, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_314, align 1
; Matched:%var_2_789:  %var_2_789 = add i64 %var_2_511, 52
; %var_2_2645 = add i64 %var_2_2630, 52
; Matched:\<badref\>:  store i64 %var_2_789, i64* %PC, align 8
; store i64 %var_2_2645, i64* %var_2_3, align 8
%var_2_2646 = load i64, i64* %var_2_2639, align 8
store i64 %var_2_2646, i64* %var_2_329, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_2708, align 1, !tbaa !1284
; store double 0.000000e+00, double* %var_2_318, align 1
%var_2_2647 = add i64 %var_2_2630, 169
; Matched:%var_2_792:  %var_2_792 = add i64 %var_2_511, 57
; %var_2_2648 = add i64 %var_2_2630, 57
%var_2_2649 = load i64, i64* %var_2_6, align 8
%var_2_2650 = add i64 %var_2_2649, -8
; Matched:%var_2_795:  %var_2_795 = inttoptr i64 %var_2_794 to i64*
; %var_2_2651 = inttoptr i64 %var_2_2650 to i64*
; Matched:\<badref\>:  store i64 %var_2_792, i64* %var_2_795, align 8
; store i64 %var_2_2648, i64* %var_2_2651, align 8
; Matched:\<badref\>:  store i64 %var_2_2623, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2650, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_791, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2647, i64* %var_2_3, align 8
%call2_40157b = tail call %struct.Memory* @sub_4015f0.POUT(%struct.State* nonnull %0, i64 %var_2_2647, %struct.Memory* %MEMORY.26)
  %.pre126 = load i64, i64* %RBP.i, align 8
; Matched:  %.pre438 = load i64, i64* %PC, align 8
; %.pre127 = load i64, i64* %var_2_3, align 8
  br label %block_.L_401580

block_.L_401580:                                  ; preds = %block_.L_401535, %block_401547
; Matched:%var_2_2748:  %var_2_2748 = phi i64 [ %var_2_511, %block_401535 ], [ %.pre438, %block_401547 ]
; %var_2_2652 = phi i64 [ %var_2_2630, %block_.L_401535 ], [ %.pre127, %block_401547 ]
; Matched:%var_2_2749:  %var_2_2749 = phi i64 [ %var_2_275, %block_401535 ], [ %.pre437, %block_401547 ]
; %var_2_2653 = phi i64 [ %var_2_2496, %block_.L_401535 ], [ %.pre126, %block_401547 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_401535 ], [ %call2_40157b, %block_401547 ]
; Matched:%var_2_2750:  %var_2_2750 = add i64 %var_2_2749, -176
; %var_2_2654 = add i64 %var_2_2653, -176
; Matched:%var_2_2751:  %var_2_2751 = add i64 %var_2_2748, 6
; %var_2_2655 = add i64 %var_2_2652, 6
; Matched:\<badref\>:  store i64 %var_2_2751, i64* %PC, align 8
; store i64 %var_2_2655, i64* %var_2_3, align 8
; Matched:%var_2_2752:  %var_2_2752 = inttoptr i64 %var_2_2750 to i32*
; %var_2_2656 = inttoptr i64 %var_2_2654 to i32*
; Matched:%var_2_2753:  %var_2_2753 = load i32, i32* %var_2_2752, align 4
; %var_2_2657 = load i32, i32* %var_2_2656, align 4
; Matched:%var_2_2754:  %var_2_2754 = add i32 %var_2_2753, 1
; %var_2_2658 = add i32 %var_2_2657, 1
; Matched:%var_2_2755:  %var_2_2755 = zext i32 %var_2_2754 to i64
; %var_2_2659 = zext i32 %var_2_2658 to i64
; Matched:\<badref\>:  store i64 %var_2_2755, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2659, i64* %RAX.i1199, align 8
; Matched:%var_2_2756:  %var_2_2756 = icmp eq i32 %var_2_2753, -1
; %var_2_2660 = icmp eq i32 %var_2_2657, -1
; Matched:%var_2_2757:  %var_2_2757 = icmp eq i32 %var_2_2754, 0
; %var_2_2661 = icmp eq i32 %var_2_2658, 0
; Matched:%var_2_2758:  %var_2_2758 = or i1 %var_2_2756, %var_2_2757
; %var_2_2662 = or i1 %var_2_2660, %var_2_2661
; Matched:%var_2_2759:  %var_2_2759 = zext i1 %var_2_2758 to i8
; %var_2_2663 = zext i1 %var_2_2662 to i8
; Matched:\<badref\>:  store i8 %var_2_2759, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2663, i8* %var_2_14, align 1
; Matched:%var_2_2760:  %var_2_2760 = and i32 %var_2_2754, 255
; %var_2_2664 = and i32 %var_2_2658, 255
; Matched:%var_2_2761:  %var_2_2761 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2760) #14
; %var_2_2665 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2664)
; Matched:%var_2_2762:  %var_2_2762 = trunc i32 %var_2_2761 to i8
; %var_2_2666 = trunc i32 %var_2_2665 to i8
; Matched:%var_2_2763:  %var_2_2763 = and i8 %var_2_2762, 1
; %var_2_2667 = and i8 %var_2_2666, 1
; Matched:%var_2_2764:  %var_2_2764 = xor i8 %var_2_2763, 1
; %var_2_2668 = xor i8 %var_2_2667, 1
; Matched:\<badref\>:  store i8 %var_2_2764, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2668, i8* %var_2_21, align 1
; Matched:%var_2_2765:  %var_2_2765 = xor i32 %var_2_2754, %var_2_2753
; %var_2_2669 = xor i32 %var_2_2658, %var_2_2657
; Matched:%var_2_2766:  %var_2_2766 = lshr i32 %var_2_2765, 4
; %var_2_2670 = lshr i32 %var_2_2669, 4
; Matched:%var_2_2767:  %var_2_2767 = trunc i32 %var_2_2766 to i8
; %var_2_2671 = trunc i32 %var_2_2670 to i8
; Matched:%var_2_2768:  %var_2_2768 = and i8 %var_2_2767, 1
; %var_2_2672 = and i8 %var_2_2671, 1
; Matched:\<badref\>:  store i8 %var_2_2768, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2672, i8* %var_2_26, align 1
; Matched:%var_2_2769:  %var_2_2769 = zext i1 %var_2_2757 to i8
; %var_2_2673 = zext i1 %var_2_2661 to i8
; Matched:\<badref\>:  store i8 %var_2_2769, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2673, i8* %var_2_29, align 1
; Matched:%var_2_2770:  %var_2_2770 = lshr i32 %var_2_2754, 31
; %var_2_2674 = lshr i32 %var_2_2658, 31
; Matched:%var_2_2771:  %var_2_2771 = trunc i32 %var_2_2770 to i8
; %var_2_2675 = trunc i32 %var_2_2674 to i8
; Matched:\<badref\>:  store i8 %var_2_2771, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2675, i8* %var_2_32, align 1
; Matched:%var_2_2772:  %var_2_2772 = lshr i32 %var_2_2753, 31
; %var_2_2676 = lshr i32 %var_2_2657, 31
; Matched:%var_2_2773:  %var_2_2773 = xor i32 %var_2_2770, %var_2_2772
; %var_2_2677 = xor i32 %var_2_2674, %var_2_2676
; Matched:%var_2_2774:  %var_2_2774 = add nuw nsw i32 %var_2_2773, %var_2_2770
; %var_2_2678 = add nuw nsw i32 %var_2_2677, %var_2_2674
; Matched:%var_2_2775:  %var_2_2775 = icmp eq i32 %var_2_2774, 2
; %var_2_2679 = icmp eq i32 %var_2_2678, 2
; Matched:%var_2_2776:  %var_2_2776 = zext i1 %var_2_2775 to i8
; %var_2_2680 = zext i1 %var_2_2679 to i8
; Matched:\<badref\>:  store i8 %var_2_2776, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2680, i8* %var_2_38, align 1
; Matched:%var_2_2777:  %var_2_2777 = add i64 %var_2_2748, 15
; %var_2_2681 = add i64 %var_2_2652, 15
; Matched:\<badref\>:  store i64 %var_2_2777, i64* %PC, align 8
; store i64 %var_2_2681, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i32 %var_2_2754, i32* %var_2_2752, align 4
; store i32 %var_2_2658, i32* %var_2_2656, align 4
%var_2_2682 = load i32, i32* %EAX.i1220, align 4
%var_2_2683 = load i64, i64* %RBP.i, align 8
%var_2_2684 = add i64 %var_2_2683, -172
%var_2_2685 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1052:  %var_2_1052 = add i64 %var_2_1051, 6
; %var_2_2686 = add i64 %var_2_2685, 6
; Matched:\<badref\>:  store i64 %var_2_2782, i64* %PC, align 8
; store i64 %var_2_2686, i64* %var_2_3, align 8
%var_2_2687 = inttoptr i64 %var_2_2684 to i32*
%var_2_2688 = load i32, i32* %var_2_2687, align 4
%var_2_2689 = sub i32 %var_2_2682, %var_2_2688
; Matched:%var_2_2786:  %var_2_2786 = icmp ult i32 %var_2_2778, %var_2_2784
; %var_2_2690 = icmp ult i32 %var_2_2682, %var_2_2688
; Matched:%var_2_2787:  %var_2_2787 = zext i1 %var_2_2786 to i8
; %var_2_2691 = zext i1 %var_2_2690 to i8
; Matched:\<badref\>:  store i8 %var_2_2787, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2691, i8* %var_2_14, align 1
; Matched:%var_2_2788:  %var_2_2788 = and i32 %var_2_2785, 255
; %var_2_2692 = and i32 %var_2_2689, 255
; Matched:%var_2_2789:  %var_2_2789 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2788) #14
; %var_2_2693 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2692)
; Matched:%var_2_2790:  %var_2_2790 = trunc i32 %var_2_2789 to i8
; %var_2_2694 = trunc i32 %var_2_2693 to i8
; Matched:%var_2_2791:  %var_2_2791 = and i8 %var_2_2790, 1
; %var_2_2695 = and i8 %var_2_2694, 1
; Matched:%var_2_2792:  %var_2_2792 = xor i8 %var_2_2791, 1
; %var_2_2696 = xor i8 %var_2_2695, 1
; Matched:\<badref\>:  store i8 %var_2_2792, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2696, i8* %var_2_21, align 1
; Matched:%var_2_2793:  %var_2_2793 = xor i32 %var_2_2784, %var_2_2778
; %var_2_2697 = xor i32 %var_2_2688, %var_2_2682
; Matched:%var_2_2794:  %var_2_2794 = xor i32 %var_2_2793, %var_2_2785
; %var_2_2698 = xor i32 %var_2_2697, %var_2_2689
; Matched:%var_2_2795:  %var_2_2795 = lshr i32 %var_2_2794, 4
; %var_2_2699 = lshr i32 %var_2_2698, 4
; Matched:%var_2_2796:  %var_2_2796 = trunc i32 %var_2_2795 to i8
; %var_2_2700 = trunc i32 %var_2_2699 to i8
; Matched:%var_2_2797:  %var_2_2797 = and i8 %var_2_2796, 1
; %var_2_2701 = and i8 %var_2_2700, 1
; Matched:\<badref\>:  store i8 %var_2_2797, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2701, i8* %var_2_26, align 1
%var_2_2702 = icmp eq i32 %var_2_2689, 0
; Matched:%var_2_2799:  %var_2_2799 = zext i1 %var_2_2798 to i8
; %var_2_2703 = zext i1 %var_2_2702 to i8
; Matched:\<badref\>:  store i8 %var_2_2799, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2703, i8* %var_2_29, align 1
%var_2_2704 = lshr i32 %var_2_2689, 31
%var_2_2705 = trunc i32 %var_2_2704 to i8
; Matched:\<badref\>:  store i8 %var_2_2801, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2705, i8* %var_2_32, align 1
%var_2_2706 = lshr i32 %var_2_2682, 31
%var_2_2707 = lshr i32 %var_2_2688, 31
%var_2_2708 = xor i32 %var_2_2707, %var_2_2706
%var_2_2709 = xor i32 %var_2_2704, %var_2_2706
%var_2_2710 = add nuw nsw i32 %var_2_2709, %var_2_2708
%var_2_2711 = icmp eq i32 %var_2_2710, 2
; Matched:%var_2_2808:  %var_2_2808 = zext i1 %var_2_2807 to i8
; %var_2_2712 = zext i1 %var_2_2711 to i8
; Matched:\<badref\>:  store i8 %var_2_2808, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2712, i8* %var_2_38, align 1
%var_2_2713 = icmp ne i8 %var_2_2705, 0
%var_2_2714 = xor i1 %var_2_2713, %var_2_2711
%.demorgan139 = or i1 %var_2_2702, %var_2_2714
  %.v160 = select i1 %.demorgan139, i64 12, i64 17
%var_2_2715 = add i64 %var_2_2685, %.v160
; Matched:\<badref\>:  store i64 %var_2_2811, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2715, i64* %var_2_3, align 8
  br i1 %.demorgan139, label %block_40159b, label %block_.L_4015a0

block_40159b:                                     ; preds = %block_.L_401580
%var_2_2716 = add i64 %var_2_2715, -2992
; Matched:\<badref\>:  store i64 %var_2_1684, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2716, i64* %var_2_3, align 8
  br label %block_.L_4009eb

block_.L_4015a0:                                  ; preds = %block_.L_401580
  store i64 0, i64* %RAX.i1199, align 8
store i8 0, i8* %var_2_14, align 1
store i8 1, i8* %var_2_21, align 1
store i8 1, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_26, align 1
  store i64 0, i64* %RDI.i1206, align 8
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_2811, -3696
; %var_2_2717 = add i64 %var_2_2715, -3696
; Matched:%var_2_682:  %var_2_682 = add i64 %var_2_2811, 9
; %var_2_2718 = add i64 %var_2_2715, 9
%var_2_2719 = load i64, i64* %var_2_6, align 8
%var_2_2720 = add i64 %var_2_2719, -8
; Matched:%var_2_685:  %var_2_685 = inttoptr i64 %var_2_684 to i64*
; %var_2_2721 = inttoptr i64 %var_2_2720 to i64*
; Matched:\<badref\>:  store i64 %var_2_682, i64* %var_2_685, align 8
; store i64 %var_2_2718, i64* %var_2_2721, align 8
; Matched:\<badref\>:  store i64 %var_2_2324, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2720, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_681, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2717, i64* %var_2_3, align 8
%var_2_2722 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.27)
; Matched:%var_2_687:  %var_2_687 = load i64, i64* %PC, align 8
; %var_2_2723 = load i64, i64* %var_2_3, align 8
  store i64 ptrtoint (%G__0x401965_type* @G__0x401965 to i64), i64* %RDI.i1206, align 8
; Matched:%var_2_688:  %var_2_688 = load i64, i64* %RBP, align 8
; %var_2_2724 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_689:  %var_2_689 = add i64 %var_2_688, -200
; %var_2_2725 = add i64 %var_2_2724, -200
; Matched:%var_2_690:  %var_2_690 = load i64, i64* %RAX, align 8
; %var_2_2726 = load i64, i64* %RAX.i1199, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_14, 17
; %var_2_2727 = add i64 %var_2_2723, 17
; Matched:\<badref\>:  store i64 %var_2_44, i64* %PC, align 8
; store i64 %var_2_2727, i64* %var_2_3, align 8
; Matched:%var_2_692:  %var_2_692 = inttoptr i64 %var_2_689 to i64*
; %var_2_2728 = inttoptr i64 %var_2_2725 to i64*
; Matched:\<badref\>:  store i64 %var_2_690, i64* %var_2_692, align 8
; store i64 %var_2_2726, i64* %var_2_2728, align 8
; Matched:%var_2_693:  %var_2_693 = load i64, i64* %PC, align 8
; %var_2_2729 = load i64, i64* %var_2_3, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL, align 1, !tbaa !1291
; store i8 0, i8* %AL.i, align 1
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_693, -3786
; %var_2_2730 = add i64 %var_2_2729, -3786
; Matched:%var_2_695:  %var_2_695 = add i64 %var_2_693, 7
; %var_2_2731 = add i64 %var_2_2729, 7
%var_2_2732 = load i64, i64* %var_2_6, align 8
%var_2_2733 = add i64 %var_2_2732, -8
; Matched:%var_2_698:  %var_2_698 = inttoptr i64 %var_2_697 to i64*
; %var_2_2734 = inttoptr i64 %var_2_2733 to i64*
; Matched:\<badref\>:  store i64 %var_2_695, i64* %var_2_698, align 8
; store i64 %var_2_2731, i64* %var_2_2734, align 8
; Matched:\<badref\>:  store i64 %var_2_794, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2733, i64* %var_2_6, align 8
; Matched:\<badref\>:  store i64 %var_2_694, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2730, i64* %var_2_3, align 8
%var_2_2735 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %var_2_2722)
; Matched:%var_2_700:  %var_2_700 = load i64, i64* %RBP, align 8
; %var_2_2736 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_701:  %var_2_701 = add i64 %var_2_700, -208
; %var_2_2737 = add i64 %var_2_2736, -208
%var_2_2738 = load i64, i64* %var_2_3, align 8
; Matched:%var_2_1046:  %var_2_1046 = add i64 %var_2_1045, 7
; %var_2_2739 = add i64 %var_2_2738, 7
; Matched:\<badref\>:  store i64 %var_2_1046, i64* %PC, align 8
; store i64 %var_2_2739, i64* %var_2_3, align 8
; Matched:%var_2_704:  %var_2_704 = inttoptr i64 %var_2_701 to i32*
; %var_2_2740 = inttoptr i64 %var_2_2737 to i32*
; Matched:%var_2_705:  %var_2_705 = load i32, i32* %var_2_704, align 4
; %var_2_2741 = load i32, i32* %var_2_2740, align 4
store i8 0, i8* %var_2_14, align 1
; Matched:%var_2_706:  %var_2_706 = and i32 %var_2_705, 255
; %var_2_2742 = and i32 %var_2_2741, 255
; Matched:%var_2_707:  %var_2_707 = tail call i32 @llvm.ctpop.i32(i32 %var_2_706) #14
; %var_2_2743 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2742)
; Matched:%var_2_708:  %var_2_708 = trunc i32 %var_2_707 to i8
; %var_2_2744 = trunc i32 %var_2_2743 to i8
; Matched:%var_2_709:  %var_2_709 = and i8 %var_2_708, 1
; %var_2_2745 = and i8 %var_2_2744, 1
; Matched:%var_2_710:  %var_2_710 = xor i8 %var_2_709, 1
; %var_2_2746 = xor i8 %var_2_2745, 1
; Matched:\<badref\>:  store i8 %var_2_710, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2746, i8* %var_2_21, align 1
store i8 0, i8* %var_2_26, align 1
; Matched:%var_2_711:  %var_2_711 = icmp eq i32 %var_2_705, 0
; %var_2_2747 = icmp eq i32 %var_2_2741, 0
; Matched:%var_2_712:  %var_2_712 = zext i1 %var_2_711 to i8
; %var_2_2748 = zext i1 %var_2_2747 to i8
; Matched:\<badref\>:  store i8 %var_2_712, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2748, i8* %var_2_29, align 1
; Matched:%var_2_713:  %var_2_713 = lshr i32 %var_2_705, 31
; %var_2_2749 = lshr i32 %var_2_2741, 31
; Matched:%var_2_714:  %var_2_714 = trunc i32 %var_2_713 to i8
; %var_2_2750 = trunc i32 %var_2_2749 to i8
; Matched:\<badref\>:  store i8 %var_2_714, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2750, i8* %var_2_32, align 1
store i8 0, i8* %var_2_38, align 1
; Matched:%var_2_715:  %var_2_715 = add i64 %var_2_700, -316
; %var_2_2751 = add i64 %var_2_2736, -316
; Matched:%var_2_716:  %var_2_716 = load i32, i32* %EAX, align 4
; %var_2_2752 = load i32, i32* %EAX.i1220, align 4
; Matched:%var_2_717:  %var_2_717 = add i64 %var_2_702, 13
; %var_2_2753 = add i64 %var_2_2738, 13
; Matched:\<badref\>:  store i64 %var_2_717, i64* %PC, align 8
; store i64 %var_2_2753, i64* %var_2_3, align 8
; Matched:%var_2_718:  %var_2_718 = inttoptr i64 %var_2_715 to i32*
; %var_2_2754 = inttoptr i64 %var_2_2751 to i32*
; Matched:\<badref\>:  store i32 %var_2_716, i32* %var_2_718, align 4
; store i32 %var_2_2752, i32* %var_2_2754, align 4
%var_2_2755 = load i64, i64* %var_2_3, align 8
%var_2_2756 = load i8, i8* %var_2_29, align 1
%var_2_2757 = icmp ne i8 %var_2_2756, 0
%.v212 = select i1 %var_2_2757, i64 11, i64 6
%var_2_2758 = add i64 %var_2_2755, %.v212
; Matched:\<badref\>:  store i64 %var_2_722, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2758, i64* %var_2_3, align 8
%cmpBr_4015ce = icmp eq i8 %var_2_2756, 1
  br i1 %cmpBr_4015ce, label %block_.L_4015d9, label %block_4015d4

block_4015d4:                                     ; preds = %block_.L_4015a0
; Matched:%var_2_724:  %var_2_724 = add i64 %var_2_722, -3150
; %var_2_2759 = add i64 %var_2_2758, -3150
%var_2_2760 = add i64 %var_2_2758, 5
store i64 %var_2_2760, i64* %var_2_3, align 8
; Matched:  %.pre406 = load i64, i64* %RAX, align 8
; %.pre95 = load i64, i64* %RAX.i1199, align 8
; Matched:%var_2_725:  %var_2_725 = trunc i64 %.pre406 to i32
; %var_2_2761 = trunc i64 %.pre95 to i32
  br label %block_.L_400986

block_.L_4015d9:                                  ; preds = %block_.L_4015a0
; Matched:%var_2_2358:  %var_2_2358 = load i64, i64* %RBP, align 8
; %var_2_2762 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_2359:  %var_2_2359 = add i64 %var_2_2358, -4
; %var_2_2763 = add i64 %var_2_2762, -4
; Matched:%var_2_2360:  %var_2_2360 = add i64 %var_2_722, 7
; %var_2_2764 = add i64 %var_2_2758, 7
; Matched:\<badref\>:  store i64 %var_2_2360, i64* %PC, align 8
; store i64 %var_2_2764, i64* %var_2_3, align 8
; Matched:%var_2_1047:  %var_2_1047 = inttoptr i64 %var_2_1044 to i32*
; %var_2_2765 = inttoptr i64 %var_2_2763 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_1047, align 4
; store i32 0, i32* %var_2_2765, align 4
; Matched:  %.pre439 = load i64, i64* %PC, align 8
; %.pre128 = load i64, i64* %var_2_3, align 8
  br label %block_.L_4015e0

block_.L_4015e0:                                  ; preds = %block_.L_4015d9, %block_.L_40093d
; Matched:%var_2_210:  %var_2_210 = phi i64 [ %.pre439, %block_4015d9 ], [ %var_2_1055, %block_40093d ]
; %var_2_2766 = phi i64 [ %.pre128, %block_.L_4015d9 ], [ %var_2_266, %block_.L_40093d ]
%MEMORY.28 = phi %struct.Memory* [ %var_2_2735, %block_.L_4015d9 ], [ %var_2_253, %block_.L_40093d ]
; Matched:%var_2_211:  %var_2_211 = load i64, i64* %RBP, align 8
; %var_2_2767 = load i64, i64* %RBP.i, align 8
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, -4
; %var_2_2768 = add i64 %var_2_2767, -4
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_210, 3
; %var_2_2769 = add i64 %var_2_2766, 3
; Matched:\<badref\>:  store i64 %var_2_213, i64* %PC, align 8
; store i64 %var_2_2769, i64* %var_2_3, align 8
; Matched:%var_2_214:  %var_2_214 = inttoptr i64 %var_2_212 to i32*
; %var_2_2770 = inttoptr i64 %var_2_2768 to i32*
; Matched:%var_2_215:  %var_2_215 = load i32, i32* %var_2_214, align 4
; %var_2_2771 = load i32, i32* %var_2_2770, align 4
; Matched:%var_2_216:  %var_2_216 = zext i32 %var_2_215 to i64
; %var_2_2772 = zext i32 %var_2_2771 to i64
; Matched:\<badref\>:  store i64 %var_2_216, i64* %RAX, align 8, !tbaa !1261
; store i64 %var_2_2772, i64* %RAX.i1199, align 8
; Matched:%var_2_217:  %var_2_217 = load i64, i64* %RSP, align 8
; %var_2_2773 = load i64, i64* %var_2_6, align 8
; Matched:%var_2_218:  %var_2_218 = add i64 %var_2_217, 320
; %var_2_2774 = add i64 %var_2_2773, 320
; Matched:\<badref\>:  store i64 %var_2_218, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2774, i64* %var_2_6, align 8
; Matched:%var_2_219:  %var_2_219 = icmp ugt i64 %var_2_217, -321
; %var_2_2775 = icmp ugt i64 %var_2_2773, -321
; Matched:%var_2_220:  %var_2_220 = zext i1 %var_2_219 to i8
; %var_2_2776 = zext i1 %var_2_2775 to i8
; Matched:\<badref\>:  store i8 %var_2_220, i8* %var_2_18, align 1, !tbaa !1265
; store i8 %var_2_2776, i8* %var_2_14, align 1
; Matched:%var_2_221:  %var_2_221 = trunc i64 %var_2_218 to i32
; %var_2_2777 = trunc i64 %var_2_2774 to i32
; Matched:%var_2_222:  %var_2_222 = and i32 %var_2_221, 255
; %var_2_2778 = and i32 %var_2_2777, 255
; Matched:%var_2_223:  %var_2_223 = tail call i32 @llvm.ctpop.i32(i32 %var_2_222) #14
; %var_2_2779 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2778)
; Matched:%var_2_224:  %var_2_224 = trunc i32 %var_2_223 to i8
; %var_2_2780 = trunc i32 %var_2_2779 to i8
; Matched:%var_2_225:  %var_2_225 = and i8 %var_2_224, 1
; %var_2_2781 = and i8 %var_2_2780, 1
; Matched:%var_2_226:  %var_2_226 = xor i8 %var_2_225, 1
; %var_2_2782 = xor i8 %var_2_2781, 1
; Matched:\<badref\>:  store i8 %var_2_226, i8* %var_2_25, align 1, !tbaa !1279
; store i8 %var_2_2782, i8* %var_2_21, align 1
; Matched:%var_2_227:  %var_2_227 = xor i64 %var_2_218, %var_2_217
; %var_2_2783 = xor i64 %var_2_2774, %var_2_2773
; Matched:%var_2_228:  %var_2_228 = lshr i64 %var_2_227, 4
; %var_2_2784 = lshr i64 %var_2_2783, 4
; Matched:%var_2_229:  %var_2_229 = trunc i64 %var_2_228 to i8
; %var_2_2785 = trunc i64 %var_2_2784 to i8
; Matched:%var_2_230:  %var_2_230 = and i8 %var_2_229, 1
; %var_2_2786 = and i8 %var_2_2785, 1
; Matched:\<badref\>:  store i8 %var_2_230, i8* %var_2_30, align 1, !tbaa !1280
; store i8 %var_2_2786, i8* %var_2_26, align 1
; Matched:%var_2_231:  %var_2_231 = icmp eq i64 %var_2_218, 0
; %var_2_2787 = icmp eq i64 %var_2_2774, 0
; Matched:%var_2_232:  %var_2_232 = zext i1 %var_2_231 to i8
; %var_2_2788 = zext i1 %var_2_2787 to i8
; Matched:\<badref\>:  store i8 %var_2_232, i8* %var_2_33, align 1, !tbaa !1281
; store i8 %var_2_2788, i8* %var_2_29, align 1
; Matched:%var_2_233:  %var_2_233 = lshr i64 %var_2_218, 63
; %var_2_2789 = lshr i64 %var_2_2774, 63
; Matched:%var_2_234:  %var_2_234 = trunc i64 %var_2_233 to i8
; %var_2_2790 = trunc i64 %var_2_2789 to i8
; Matched:\<badref\>:  store i8 %var_2_234, i8* %var_2_36, align 1, !tbaa !1282
; store i8 %var_2_2790, i8* %var_2_32, align 1
; Matched:%var_2_235:  %var_2_235 = lshr i64 %var_2_217, 63
; %var_2_2791 = lshr i64 %var_2_2773, 63
; Matched:%var_2_236:  %var_2_236 = xor i64 %var_2_233, %var_2_235
; %var_2_2792 = xor i64 %var_2_2789, %var_2_2791
; Matched:%var_2_237:  %var_2_237 = add nuw nsw i64 %var_2_236, %var_2_233
; %var_2_2793 = add nuw nsw i64 %var_2_2792, %var_2_2789
; Matched:%var_2_238:  %var_2_238 = icmp eq i64 %var_2_237, 2
; %var_2_2794 = icmp eq i64 %var_2_2793, 2
; Matched:%var_2_239:  %var_2_239 = zext i1 %var_2_238 to i8
; %var_2_2795 = zext i1 %var_2_2794 to i8
; Matched:\<badref\>:  store i8 %var_2_239, i8* %var_2_42, align 1, !tbaa !1283
; store i8 %var_2_2795, i8* %var_2_38, align 1
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_210, 11
; %var_2_2796 = add i64 %var_2_2766, 11
; Matched:\<badref\>:  store i64 %var_2_240, i64* %PC, align 8
; store i64 %var_2_2796, i64* %var_2_3, align 8
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_217, 328
; %var_2_2797 = add i64 %var_2_2773, 328
; Matched:%var_2_242:  %var_2_242 = inttoptr i64 %var_2_218 to i64*
; %var_2_2798 = inttoptr i64 %var_2_2774 to i64*
; Matched:%var_2_243:  %var_2_243 = load i64, i64* %var_2_242, align 8
; %var_2_2799 = load i64, i64* %var_2_2798, align 8
; Matched:\<badref\>:  store i64 %var_2_243, i64* %RBP, align 8, !tbaa !1261
; store i64 %var_2_2799, i64* %RBP.i, align 8
; Matched:\<badref\>:  store i64 %var_2_241, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2797, i64* %var_2_6, align 8
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_210, 12
; %var_2_2800 = add i64 %var_2_2766, 12
; Matched:\<badref\>:  store i64 %var_2_244, i64* %PC, align 8
; store i64 %var_2_2800, i64* %var_2_3, align 8
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_241 to i64*
; %var_2_2801 = inttoptr i64 %var_2_2797 to i64*
; Matched:%var_2_246:  %var_2_246 = load i64, i64* %var_2_245, align 8
; %var_2_2802 = load i64, i64* %var_2_2801, align 8
; Matched:\<badref\>:  store i64 %var_2_246, i64* %PC, align 8, !tbaa !1261
; store i64 %var_2_2802, i64* %var_2_3, align 8
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_217, 336
; %var_2_2803 = add i64 %var_2_2773, 336
; Matched:\<badref\>:  store i64 %var_2_247, i64* %RSP, align 8, !tbaa !1261
; store i64 %var_2_2803, i64* %var_2_6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 320
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movq__0x186a0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 100000, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_400981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401948___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401948_type* @G__0x401948 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4008f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x63___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -99
  %8 = icmp ult i32 %4, 99
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4008ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40096d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atol_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40093d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400968(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40194b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40194b_type* @G__0x40194b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400898(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400986(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.time_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xf71__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf71__rip__type* @G_0xf71__rip_ to i64)
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
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__0x602098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xf2d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xc__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 12
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 252
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xe__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 14
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
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
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x159__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 345
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0xd2__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 210
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
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
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x383__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 899
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x268__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 616
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 248
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
define %struct.Memory* @routine_movq__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5d__MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 93
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_jg_.L_400b66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_mulsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jne_.L_400ba0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.POUT(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd78__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xd78__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd78__rip__type* @G_0xd78__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm1__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_jg_.L_400cea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6020c8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_0x6020e0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_0x6020d0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020d8___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020e0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_jg_.L_400d67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6020c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.PA(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400d39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400dae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_jg_.L_400e60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_400e16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400e4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400ea2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x602090___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x602090___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_jg_.L_400fce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020a8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020ac___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x602090___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6020a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x6020c0___rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 1
  %10 = inttoptr i64 %5 to i64*
  store i64 %9, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x6020a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6020ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ecb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40101d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x6020ac___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x90b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x90b__rip__type* @G_0x90b__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_jg_.L_401234(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x8d5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x602098___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6020b0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_callq_.sin_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_callq_.cos_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_callq_.atan_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x7fd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movsd_0x602098___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movsd_MINUS0x138__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
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
define %struct.Memory* @routine_movsd_MINUS0x130__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_jmpq_.L_40103d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40127f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6a1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64)
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
define %struct.Memory* @routine_jg_.L_4012e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.P3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4012a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40132d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x603__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x603__rip__type* @G_0x603__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x5cb__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x5e3__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm2__0x6020c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x6020d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_jg_.L_4013ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.P0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401389(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4013fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6020ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_jg_.L_401494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x602090___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40141a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4014d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x462__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x462__rip__type* @G_0x462__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_jg_.L_401535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd_0x6020a0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4015a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4009eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401965___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401965_type* @G__0x401965 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4015d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_addq__0x140___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -321
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
