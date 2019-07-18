; ModuleID = 'xor_%rax,_%rax.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_3df0__init_array_type = type <{ i64, i64 }>
%seg_3fc0__got_type = type <{ [24 x i8], i64, i64, i64, i64, i64 }>
%seg_4000__data_type = type <{ [8 x i8], i64 }>
%__bss_start_type = type <{ [8 x i8] }>
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

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_3df0__init_array = internal global %seg_3df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_1130_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_10f0___do_global_dtors_aux to i64) }>
@seg_3fc0__got = internal global %seg_3fc0__got_type <{ [24 x i8] c"\00>\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @_ITM_deregisterTMCloneTable to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64), i64 ptrtoint (i64 (i64, i64)* @_ITM_registerTMCloneTable to i64), i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64) }>
@seg_4000__data = internal global %seg_4000__data_type <{ [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%seg_4000__data_type* @seg_4000__data to i64), i64 8) }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_1130_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_10f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_11a0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_1140___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_deregisterTMCloneTable(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_finalize(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_registerTMCloneTable(i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_11a0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
block_11a0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !1240
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8, !tbaa !1240
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1080_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_10a8:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %5, align 8, !tbaa !1240
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %4, align 8, !tbaa !1240
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1, !tbaa !1244
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1, !tbaa !1258
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 4) to i8), i8 1), i8* %8, align 1, !tbaa !1259
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %9, align 1, !tbaa !1260
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %10, align 1, !tbaa !1261
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63))), i64 2) to i8), i8* %11, align 1, !tbaa !1262
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !1240
  %14 = inttoptr i64 %13 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %3, align 8, !tbaa !1240
  %16 = add i64 %13, 8
  store i64 %16, i64* %12, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_10f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_10f0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1, !tbaa !1244
  %8 = zext i8 %6 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #6
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1, !tbaa !1258
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1, !tbaa !1259
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1, !tbaa !1260
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1, !tbaa !1261
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1, !tbaa !1262
  %21 = select i1 %15, i64 9, i64 56
  %22 = add i64 %21, %1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br i1 %15, label %block_10f9, label %block_1128

block_10f9:                                       ; preds = %block_10f0
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %23, align 8, !tbaa !1240
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %24, i64* %27
  %28 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_3fc0__got_type* @seg_3fc0__got to i64), i64 56) to i64*)
  store i8 0, i8* %7, align 1, !tbaa !1244
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #6
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1, !tbaa !1258
  store i8 0, i8* %14, align 1, !tbaa !1259
  %35 = icmp eq i64 %28, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %17, align 1, !tbaa !1260
  %37 = lshr i64 %28, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %19, align 1, !tbaa !1261
  store i8 0, i8* %20, align 1, !tbaa !1262
  store i64 %26, i64* %5, align 8, !tbaa !1240
  %39 = select i1 %35, i64 26, i64 14
  %40 = add i64 %22, %39
  br i1 %35, label %block_1113, label %block_1107

block_1107:                                       ; preds = %block_10f9
  %41 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4000__data_type* @seg_4000__data to i64), i64 8) to i64*)
  store i64 %41, i64* %4, align 8, !tbaa !1240
  %42 = add i64 %40, -215
  %43 = add i64 %40, 12
  %44 = add i64 %25, -16
  %45 = inttoptr i64 %44 to i64*
  store i64 %43, i64* %45
  store i64 %44, i64* %23, align 8, !tbaa !1240
  %46 = tail call %struct.Memory* @sub_1030___cxa_finalize(%struct.State* nonnull %0, i64 %42, %struct.Memory* %2)
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %23, align 8, !tbaa !1240
  br label %block_1113

block_1113:                                       ; preds = %block_1107, %block_10f9
  %49 = phi i64 [ %26, %block_10f9 ], [ %48, %block_1107 ]
  %50 = phi i64 [ %40, %block_10f9 ], [ %47, %block_1107 ]
  %51 = phi %struct.Memory* [ %2, %block_10f9 ], [ %46, %block_1107 ]
  %52 = add i64 %50, -147
  %53 = add i64 %50, 5
  %54 = add i64 %49, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %53, i64* %55
  store i64 %54, i64* %23, align 8, !tbaa !1240
  %56 = tail call %struct.Memory* @sub_1080_deregister_tm_clones(%struct.State* nonnull %0, i64 %52, %struct.Memory* %51)
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %57 = load i64, i64* %23, align 8, !tbaa !1240
  %58 = add i64 %57, 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59
  store i64 %60, i64* %5, align 8, !tbaa !1240
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %3, align 8, !tbaa !1240
  %63 = add i64 %57, 16
  store i64 %63, i64* %23, align 8, !tbaa !1240
  ret %struct.Memory* %56

block_1128:                                       ; preds = %block_10f0
  %64 = load i64, i64* %23, align 8, !tbaa !1240
  %65 = inttoptr i64 %64 to i64*
  %66 = load i64, i64* %65
  store i64 %66, i64* %3, align 8, !tbaa !1240
  %67 = add i64 %64, 8
  store i64 %67, i64* %23, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1040_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
block_1040:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 0, i64* %4, align 8, !tbaa !1240
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1, !tbaa !1244
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1, !tbaa !1258
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1, !tbaa !1260
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1, !tbaa !1261
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1, !tbaa !1262
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1, !tbaa !1259
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !1240
  %13 = inttoptr i64 %12 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %3, align 8, !tbaa !1240
  %15 = add i64 %12, 8
  store i64 %15, i64* %11, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1050__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_1050:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %10, align 8, !tbaa !1240
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %12, align 8, !tbaa !1240
  %20 = load i64, i64* %9, align 8, !tbaa !1240
  %21 = add i64 %20, 8
  %22 = inttoptr i64 %20 to i64*
  %23 = load i64, i64* %22
  store i64 %23, i64* %7, align 8, !tbaa !1240
  store i64 %21, i64* %6, align 8, !tbaa !1240
  %24 = and i64 %21, -16
  store i8 0, i8* %13, align 1, !tbaa !1244
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 240
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %14, align 1, !tbaa !1258
  %31 = icmp eq i64 %24, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !1260
  %33 = lshr i64 %21, 63
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %16, align 1, !tbaa !1261
  store i8 0, i8* %17, align 1, !tbaa !1262
  store i8 0, i8* %18, align 1, !tbaa !1259
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %24, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37
  %38 = add i64 %24, -16
  %39 = inttoptr i64 %38 to i64*
  store i64 %36, i64* %39
  store i64 ptrtoint (void ()* @callback_sub_11a0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1240
  store i64 ptrtoint (void ()* @callback_sub_1140___libc_csu_init to i64), i64* %5, align 8, !tbaa !1240
  store i64 ptrtoint (void ()* @main to i64), i64* %8, align 8, !tbaa !1240
  %40 = add i64 %1, 42
  %41 = add i64 %24, -24
  %42 = inttoptr i64 %41 to i64*
  store i64 %40, i64* %42
  store i64 %41, i64* %9, align 8, !tbaa !1240
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_3fc0__got_type* @seg_3fc0__got to i64), i64 32) to i64*)
  store i64 %43, i64* %3, align 8, !tbaa !1240
  %44 = tail call fastcc %struct.Memory* @ext_4018___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  %47 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %46, %struct.Memory* %44)
  ret %struct.Memory* %47
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1140___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_1140:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %11 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %12, align 8, !tbaa !1240
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %17, align 8, !tbaa !1240
  %23 = load i64, i64* %16, align 8
  %24 = add i64 %19, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %16, align 8, !tbaa !1240
  %27 = load i64, i64* %15, align 8
  %28 = add i64 %19, -24
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %15, align 8, !tbaa !1240
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %19, -32
  %34 = inttoptr i64 %33 to i64*
  store i64 %32, i64* %34
  store i64 ptrtoint (%seg_3df0__init_array_type* @seg_3df0__init_array to i64), i64* %14, align 8, !tbaa !1240
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %19, -40
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %19, -48
  %40 = inttoptr i64 %39 to i64*
  store i64 %38, i64* %40
  store i64 sub (i64 add (i64 ptrtoint (%seg_3df0__init_array_type* @seg_3df0__init_array to i64), i64 8), i64 ptrtoint (%seg_3df0__init_array_type* @seg_3df0__init_array to i64)), i64* %13, align 8, !tbaa !1240
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %47 = add i64 %1, -320
  %48 = add i64 %1, 45
  %49 = add i64 %19, -64
  %50 = inttoptr i64 %49 to i64*
  store i64 %48, i64* %50
  store i64 %49, i64* %12, align 8, !tbaa !1240
  %51 = tail call %struct.Memory* @sub_1000__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %3, align 8
  %54 = ashr i64 %52, 3
  store i64 %54, i64* %13, align 8, !tbaa !1240
  %55 = icmp eq i64 %54, 0
  %56 = select i1 %55, i64 33, i64 6
  %57 = add i64 %53, %56
  br i1 %55, label %block_118e, label %block_1173

block_118e.loopexit:                              ; preds = %block_1178
  br label %block_118e

block_118e:                                       ; preds = %block_118e.loopexit, %block_1140
  %58 = phi %struct.Memory* [ %51, %block_1140 ], [ %120, %block_118e.loopexit ]
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 8
  %61 = icmp ugt i64 %59, -9
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %41, align 1, !tbaa !1244
  %63 = trunc i64 %60 to i32
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #6
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %42, align 1, !tbaa !1258
  %69 = xor i64 %60, %59
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %43, align 1, !tbaa !1259
  %73 = icmp eq i64 %60, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %44, align 1, !tbaa !1260
  %75 = lshr i64 %60, 63
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %45, align 1, !tbaa !1261
  %77 = lshr i64 %59, 63
  %78 = xor i64 %75, %77
  %79 = add nuw nsw i64 %78, %75
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %46, align 1, !tbaa !1262
  %82 = add i64 %59, 16
  %83 = inttoptr i64 %60 to i64*
  %84 = load i64, i64* %83
  store i64 %84, i64* %8, align 8, !tbaa !1240
  %85 = add i64 %59, 24
  %86 = inttoptr i64 %82 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %13, align 8, !tbaa !1240
  %88 = add i64 %59, 32
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89
  store i64 %90, i64* %14, align 8, !tbaa !1240
  %91 = add i64 %59, 40
  %92 = inttoptr i64 %88 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %15, align 8, !tbaa !1240
  %94 = add i64 %59, 48
  %95 = inttoptr i64 %91 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %16, align 8, !tbaa !1240
  %97 = add i64 %59, 56
  %98 = inttoptr i64 %94 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %17, align 8, !tbaa !1240
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100
  store i64 %101, i64* %3, align 8, !tbaa !1240
  %102 = add i64 %59, 64
  store i64 %102, i64* %12, align 8, !tbaa !1240
  ret %struct.Memory* %58

block_1173:                                       ; preds = %block_1140
  store i64 0, i64* %8, align 8, !tbaa !1240
  store i8 0, i8* %41, align 1, !tbaa !1244
  store i8 1, i8* %42, align 1, !tbaa !1258
  store i8 1, i8* %44, align 1, !tbaa !1260
  store i8 0, i8* %45, align 1, !tbaa !1261
  store i8 0, i8* %46, align 1, !tbaa !1262
  store i8 0, i8* %43, align 1, !tbaa !1259
  %103 = add i64 %57, 5
  br label %block_1178

block_1178:                                       ; preds = %block_1178, %block_1173
  %104 = phi i64 [ 0, %block_1173 ], [ %123, %block_1178 ]
  %105 = phi i64 [ %103, %block_1173 ], [ %151, %block_1178 ]
  %106 = phi %struct.Memory* [ %51, %block_1173 ], [ %120, %block_1178 ]
  %107 = load i64, i64* %17, align 8
  store i64 %107, i64* %9, align 8, !tbaa !1240
  %108 = load i64, i64* %16, align 8
  store i64 %108, i64* %10, align 8, !tbaa !1240
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %11, align 8, !tbaa !1240
  %111 = load i64, i64* %14, align 8
  %112 = shl i64 %104, 3
  %113 = add i64 %112, %111
  %114 = add i64 %105, 13
  %115 = load i64, i64* %12, align 8, !tbaa !1240
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117
  store i64 %116, i64* %12, align 8, !tbaa !1240
  %118 = inttoptr i64 %113 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %3, align 8, !tbaa !1240
  %120 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %119, %struct.Memory* %106)
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %121, 1
  store i64 %123, i64* %8, align 8, !tbaa !1240
  %124 = lshr i64 %123, 63
  %125 = load i64, i64* %13, align 8
  %126 = sub i64 %125, %123
  %127 = icmp ult i64 %125, %123
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %41, align 1, !tbaa !1244
  %129 = trunc i64 %126 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #6
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %42, align 1, !tbaa !1258
  %135 = xor i64 %123, %125
  %136 = xor i64 %135, %126
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %43, align 1, !tbaa !1259
  %140 = icmp eq i64 %126, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %44, align 1, !tbaa !1260
  %142 = lshr i64 %126, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %45, align 1, !tbaa !1261
  %144 = lshr i64 %125, 63
  %145 = xor i64 %124, %144
  %146 = xor i64 %142, %144
  %147 = add nuw nsw i64 %146, %145
  %148 = icmp eq i64 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %46, align 1, !tbaa !1262
  %150 = select i1 %140, i64 9, i64 -13
  %151 = add i64 %122, %150
  br i1 %140, label %block_118e.loopexit, label %block_1178
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_11a4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
block_11a4:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9 = xor i64 %6, %5
  %10 = lshr i64 %9, 4
  %11 = trunc i64 %10 to i8
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = lshr i64 %6, 63
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %5, 63
  %18 = xor i64 %15, %17
  %19 = add nuw nsw i64 %18, %17
  %20 = icmp eq i64 %19, 2
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %23 = icmp ult i64 %5, 8
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %7, align 1, !tbaa !1244
  %25 = trunc i64 %5 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %8, align 1, !tbaa !1258
  store i8 %12, i8* %13, align 1, !tbaa !1259
  %31 = icmp eq i64 %5, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %14, align 1, !tbaa !1260
  %33 = trunc i64 %17 to i8
  store i8 %33, i8* %16, align 1, !tbaa !1261
  store i8 %21, i8* %22, align 1, !tbaa !1262
  %34 = inttoptr i64 %5 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %3, align 8, !tbaa !1240
  %36 = add i64 %5, 8
  store i64 %36, i64* %4, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1030___cxa_finalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_1030:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_3fc0__got_type* @seg_3fc0__got to i64), i64 56) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1240
  %5 = tail call fastcc %struct.Memory* @ext_4030___cxa_finalize(%struct.State* nonnull %0, %struct.Memory* %2)
  ret %struct.Memory* %5
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_10b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_10e8:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %6, align 8, !tbaa !1240
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %4, align 8, !tbaa !1240
  store i64 0, i64* %5, align 8, !tbaa !1240
  store i8 0, i8* %7, align 1, !tbaa !1263
  store i8 1, i8* %8, align 1, !tbaa !1263
  store i8 0, i8* %9, align 1, !tbaa !1263
  store i8 1, i8* %10, align 1, !tbaa !1263
  store i8 0, i8* %11, align 1, !tbaa !1263
  store i8 0, i8* %12, align 1, !tbaa !1263
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !1240
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %3, align 8, !tbaa !1240
  %17 = add i64 %14, 8
  store i64 %17, i64* %13, align 8, !tbaa !1240
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1130_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_1130:
  %3 = add i64 %1, -128
  %4 = tail call %struct.Memory* @sub_10b0_register_tm_clones(%struct.State* nonnull %0, i64 %3, %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_1000__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_1000:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %14 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_3fc0__got_type* @seg_3fc0__got to i64), i64 40) to i64*)
  store i64 %14, i64* %4, align 8, !tbaa !1240
  store i8 0, i8* %8, align 1, !tbaa !1244
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #6
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %9, align 1, !tbaa !1258
  %21 = icmp eq i64 %14, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %11, align 1, !tbaa !1260
  %23 = lshr i64 %14, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %12, align 1, !tbaa !1261
  store i8 0, i8* %13, align 1, !tbaa !1262
  store i8 0, i8* %10, align 1, !tbaa !1259
  %25 = select i1 %21, i64 18, i64 16
  %26 = add i64 %25, %1
  br i1 %21, label %block_1012, label %block_1010

block_1010:                                       ; preds = %block_1000
  %27 = add i64 %26, 2
  %28 = add i64 %6, -16
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  store i64 %28, i64* %5, align 8, !tbaa !1240
  store i64 %14, i64* %3, align 8, !tbaa !1240
  %30 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %14, %struct.Memory* %2)
  %31 = load i64, i64* %5, align 8
  br label %block_1012

block_1012:                                       ; preds = %block_1010, %block_1000
  %32 = phi i64 [ %7, %block_1000 ], [ %31, %block_1010 ]
  %33 = phi %struct.Memory* [ %2, %block_1000 ], [ %30, %block_1010 ]
  %34 = add i64 %32, 8
  %35 = icmp ugt i64 %32, -9
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %8, align 1, !tbaa !1244
  %37 = trunc i64 %34 to i32
  %38 = and i32 %37, 255
  %39 = tail call i32 @llvm.ctpop.i32(i32 %38) #6
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %9, align 1, !tbaa !1258
  %43 = xor i64 %34, %32
  %44 = lshr i64 %43, 4
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  store i8 %46, i8* %10, align 1, !tbaa !1259
  %47 = icmp eq i64 %34, 0
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %11, align 1, !tbaa !1260
  %49 = lshr i64 %34, 63
  %50 = trunc i64 %49 to i8
  store i8 %50, i8* %12, align 1, !tbaa !1261
  %51 = lshr i64 %32, 63
  %52 = xor i64 %49, %51
  %53 = add nuw nsw i64 %52, %49
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %13, align 1, !tbaa !1262
  %56 = inttoptr i64 %34 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %3, align 8, !tbaa !1240
  %58 = add i64 %32, 16
  store i64 %58, i64* %5, align 8, !tbaa !1240
  ret %struct.Memory* %33
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_1130_frame_dummy() #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x1130;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_1130_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_1130_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_10f0___do_global_dtors_aux() #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x10f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_10f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_10f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_11a0___libc_csu_fini() #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x11a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_11a0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* returned) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_11a0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_1140___libc_csu_init() #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x1140;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_1140___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_1140___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x1040;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State* nocapture, i64, %struct.Memory* returned) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_1040_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4018___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4030___cxa_finalize(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x1000;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_1000__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x11a4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #6
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* returned) #6 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_11a4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #6 {
  tail call void @callback_sub_11a0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #6 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %2, %0
  tail call void @callback_sub_1140___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { naked nobuiltin noinline nounwind }
attributes #6 = { nounwind }
attributes #7 = { noinline nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1238, !1239}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/deepan/Documents/workspace/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/deepan/Documents/workspace/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/deepan/Documents/workspace/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/deepan/Documents/workspace/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !75, !81, !84, !91, !95, !100, !102, !110, !114, !118, !130, !134, !138, !142, !146, !151, !155, !159, !163, !167, !175, !179, !183, !185, !189, !193, !197, !203, !207, !211, !213, !221, !225, !233, !235, !239, !243, !247, !251, !256, !261, !266, !267, !268, !269, !272, !273, !274, !275, !276, !277, !278, !334, !338, !354, !357, !362, !370, !375, !379, !383, !387, !391, !393, !395, !399, !405, !409, !415, !421, !423, !427, !431, !435, !439, !450, !452, !456, !460, !464, !466, !470, !474, !478, !480, !482, !486, !494, !498, !502, !506, !508, !514, !516, !522, !526, !530, !534, !538, !542, !546, !548, !550, !554, !558, !562, !564, !568, !572, !574, !576, !580, !584, !588, !592, !593, !594, !522, !450, !456, !464, !592, !593, !594, !595, !598, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !626, !627, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !657, !661, !666, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !698, !704, !709, !713, !715, !717, !719, !721, !728, !732, !736, !740, !744, !748, !753, !757, !759, !763, !769, !773, !778, !780, !782, !786, !790, !794, !796, !798, !800, !802, !806, !808, !810, !814, !818, !822, !826, !830, !832, !834, !838, !842, !846, !850, !852, !854, !858, !862, !863, !864, !865, !866, !867, !872, !874, !876, !880, !882, !884, !886, !888, !890, !892, !894, !899, !903, !905, !907, !912, !914, !916, !918, !920, !922, !924, !927, !929, !931, !935, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !963, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !1001, !1005, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1031, !1035, !1039, !1041, !1043, !1045, !1049, !1053, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1085, !1089, !1093, !1095, !1097, !1099, !1101, !1105, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1125, !1129, !1131, !1133, !1135, !1137, !1141, !1145, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1165, !1169, !1173, !1175, !1179, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1199, !1201, !1204, !1209, !1211, !1217, !1219, !1221, !1223, !1228, !1230, !1236, !1195, !1199, !1201, !1204, !1209, !1211, !1217, !1219, !1221, !1223, !1228, !1230, !1236}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !73)
!72 = !DINamespace(name: "__gnu_debug", scope: null)
!73 = !DINamespace(name: "__debug", scope: !74)
!74 = !DINamespace(name: "std", scope: null)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !76)
!76 = !DISubprogram(name: "abs", scope: !77, file: !77, line: 837, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !80}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !77, line: 62, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !77, line: 70, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 66, size: 128, elements: !87, identifier: "_ZTS6ldiv_t")
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !86, file: !77, line: 68, baseType: !89, size: 64)
!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !86, file: !77, line: 69, baseType: !89, size: 64, offset: 64)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !92)
!92 = !DISubprogram(name: "abort", scope: !77, file: !77, line: 588, type: !93, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{null}
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !96)
!96 = !DISubprogram(name: "atexit", scope: !77, file: !77, line: 592, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!80, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !101)
!101 = !DISubprogram(name: "at_quick_exit", scope: !77, file: !77, line: 597, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !103)
!103 = !DISubprogram(name: "atof", scope: !77, file: !77, line: 101, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107}
!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !111)
!111 = !DISubprogram(name: "atoi", scope: !77, file: !77, line: 104, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!80, !107}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !115)
!115 = !DISubprogram(name: "atol", scope: !77, file: !77, line: 107, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!89, !107}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !119)
!119 = !DISubprogram(name: "bsearch", scope: !77, file: !77, line: 817, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !68, !68, !123, !123, !126}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 62, baseType: !125)
!124 = !DIFile(filename: "/home/deepan/Documents/workspace/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !77, line: 805, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!80, !68, !68}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !131)
!131 = !DISubprogram(name: "calloc", scope: !77, file: !77, line: 541, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!122, !123, !123}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !135)
!135 = !DISubprogram(name: "div", scope: !77, file: !77, line: 849, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!82, !80, !80}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !139)
!139 = !DISubprogram(name: "exit", scope: !77, file: !77, line: 614, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !80}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !143)
!143 = !DISubprogram(name: "free", scope: !77, file: !77, line: 563, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !122}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !147)
!147 = !DISubprogram(name: "getenv", scope: !77, file: !77, line: 631, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !107}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !152)
!152 = !DISubprogram(name: "labs", scope: !77, file: !77, line: 838, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!89, !89}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !156)
!156 = !DISubprogram(name: "ldiv", scope: !77, file: !77, line: 851, type: !157, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!85, !89, !89}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !160)
!160 = !DISubprogram(name: "malloc", scope: !77, file: !77, line: 539, type: !161, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!122, !123}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !164)
!164 = !DISubprogram(name: "mblen", scope: !77, file: !77, line: 919, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!80, !107, !123}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !168)
!168 = !DISubprogram(name: "mbstowcs", scope: !77, file: !77, line: 930, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!123, !171, !174, !123}
!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !176)
!176 = !DISubprogram(name: "mbtowc", scope: !77, file: !77, line: 922, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!80, !171, !174, !123}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !180)
!180 = !DISubprogram(name: "qsort", scope: !77, file: !77, line: 827, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !122, !123, !123, !126}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !184)
!184 = !DISubprogram(name: "quick_exit", scope: !77, file: !77, line: 620, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !186)
!186 = !DISubprogram(name: "rand", scope: !77, file: !77, line: 453, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!80}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !190)
!190 = !DISubprogram(name: "realloc", scope: !77, file: !77, line: 549, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!122, !122, !123}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !194)
!194 = !DISubprogram(name: "srand", scope: !77, file: !77, line: 455, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !10}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !198)
!198 = !DISubprogram(name: "strtod", scope: !77, file: !77, line: 117, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!106, !174, !201}
!201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !204)
!204 = !DISubprogram(name: "strtol", scope: !77, file: !77, line: 176, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!89, !174, !201, !80}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !208)
!208 = !DISubprogram(name: "strtoul", scope: !77, file: !77, line: 180, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!125, !174, !201, !80}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !212)
!212 = !DISubprogram(name: "system", scope: !77, file: !77, line: 781, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !214)
!214 = !DISubprogram(name: "wcstombs", scope: !77, file: !77, line: 933, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!123, !217, !218, !123}
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !222)
!222 = !DISubprogram(name: "wctomb", scope: !77, file: !77, line: 926, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!80, !150, !173}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !227)
!226 = !DINamespace(name: "__gnu_cxx", scope: null)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !77, line: 80, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 76, size: 128, elements: !229, identifier: "_ZTS7lldiv_t")
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !228, file: !77, line: 78, baseType: !231, size: 64)
!231 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !228, file: !77, line: 79, baseType: !231, size: 64, offset: 64)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !234)
!234 = !DISubprogram(name: "_Exit", scope: !77, file: !77, line: 626, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !236)
!236 = !DISubprogram(name: "llabs", scope: !77, file: !77, line: 841, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!231, !231}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !240)
!240 = !DISubprogram(name: "lldiv", scope: !77, file: !77, line: 855, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!227, !231, !231}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !244)
!244 = !DISubprogram(name: "atoll", scope: !77, file: !77, line: 112, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!231, !107}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !248)
!248 = !DISubprogram(name: "strtoll", scope: !77, file: !77, line: 200, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!231, !174, !201, !80}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !252)
!252 = !DISubprogram(name: "strtoull", scope: !77, file: !77, line: 205, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !174, !201, !80}
!255 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !257)
!257 = !DISubprogram(name: "strtof", scope: !77, file: !77, line: 123, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !174, !201}
!260 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !262)
!262 = !DISubprogram(name: "strtold", scope: !77, file: !77, line: 126, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !174, !201}
!265 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !227)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !234)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !236)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !270)
!270 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !226, file: !271, line: 213, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/8/../../../../include/c++/8/cstdlib", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !240)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !244)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !257)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !252)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !262)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !281, file: !280, line: 79, size: 64, elements: !282, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!280 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/8/../../../../include/c++/8/bits/exception_ptr.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!281 = !DINamespace(name: "__exception_ptr", scope: !74)
!282 = !{!283, !284, !288, !291, !292, !297, !298, !302, !308, !312, !316, !319, !320, !323, !327}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !279, file: !280, line: 81, baseType: !122, size: 64)
!284 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 83, type: !285, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287, !122}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!288 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !279, file: !280, line: 85, type: !289, scopeLine: 85, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !287}
!291 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !279, file: !280, line: 86, type: !289, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !279, file: !280, line: 88, type: !293, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!122, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!297 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 96, type: !289, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!298 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 98, type: !299, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !287, !301}
!301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !296, size: 64)
!302 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 101, type: !303, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !287, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !74, file: !306, line: 242, baseType: !307)
!306 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/8/../../../../include/x86_64-linux-gnu/c++/8/bits/c++config.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!307 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!308 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 105, type: !309, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !287, !311}
!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !279, size: 64)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !279, file: !280, line: 118, type: !313, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !287, !301}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)
!316 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !279, file: !280, line: 122, type: !317, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!315, !287, !311}
!319 = !DISubprogram(name: "~exception_ptr", scope: !279, file: !280, line: 129, type: !289, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !279, file: !280, line: 132, type: !321, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !287, !315}
!323 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !279, file: !280, line: 144, type: !324, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !295}
!326 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!327 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !279, file: !280, line: 153, type: !328, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !295}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !74, file: !333, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/8/../../../../include/c++/8/typeinfo", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !281, entity: !335)
!335 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !74, file: !280, line: 69, type: !336, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !279}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !340, line: 6, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !342, line: 21, baseType: !343)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 13, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !342, line: 15, baseType: !80, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !342, line: 20, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !342, line: 16, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !342, line: 18, baseType: !10, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !342, line: 19, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !356, line: 20, baseType: !10)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !358)
!358 = !DISubprogram(name: "btowc", scope: !359, file: !359, line: 284, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!360 = !DISubroutineType(types: !361)
!361 = !{!355, !80}
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !363)
!363 = !DISubprogram(name: "fgetwc", scope: !359, file: !359, line: 725, type: !364, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DISubroutineType(types: !365)
!365 = !{!355, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !368, line: 5, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !368, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !371)
!371 = !DISubprogram(name: "fgetws", scope: !359, file: !359, line: 754, type: !372, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!172, !171, !80, !374}
!374 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !366)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !376)
!376 = !DISubprogram(name: "fputwc", scope: !359, file: !359, line: 739, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!355, !173, !366}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !380)
!380 = !DISubprogram(name: "fputws", scope: !359, file: !359, line: 761, type: !381, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!80, !218, !374}
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !384)
!384 = !DISubprogram(name: "fwide", scope: !359, file: !359, line: 573, type: !385, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!80, !366, !80}
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !388)
!388 = !DISubprogram(name: "fwprintf", scope: !359, file: !359, line: 580, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DISubroutineType(types: !390)
!390 = !{!80, !374, !218, null}
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !392)
!392 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !359, file: !359, line: 640, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !394)
!394 = !DISubprogram(name: "getwc", scope: !359, file: !359, line: 726, type: !364, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !396)
!396 = !DISubprogram(name: "getwchar", scope: !359, file: !359, line: 732, type: !397, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{!355}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !400)
!400 = !DISubprogram(name: "mbrlen", scope: !359, file: !359, line: 307, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{!123, !174, !123, !403}
!403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !406)
!406 = !DISubprogram(name: "mbrtowc", scope: !359, file: !359, line: 296, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!123, !171, !174, !123, !403}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !410)
!410 = !DISubprogram(name: "mbsinit", scope: !359, file: !359, line: 292, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!80, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !416)
!416 = !DISubprogram(name: "mbsrtowcs", scope: !359, file: !359, line: 337, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!123, !171, !419, !123, !403}
!419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !422)
!422 = !DISubprogram(name: "putwc", scope: !359, file: !359, line: 740, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !424)
!424 = !DISubprogram(name: "putwchar", scope: !359, file: !359, line: 746, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!355, !173}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !428)
!428 = !DISubprogram(name: "swprintf", scope: !359, file: !359, line: 590, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!80, !171, !123, !218, null}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !432)
!432 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !359, file: !359, line: 647, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!80, !218, !218, null}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !436)
!436 = !DISubprogram(name: "ungetwc", scope: !359, file: !359, line: 769, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!355, !355, !366}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !440)
!440 = !DISubprogram(name: "vfwprintf", scope: !359, file: !359, line: 598, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!80, !374, !218, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !445, identifier: "_ZTS13__va_list_tag")
!445 = !{!446, !447, !448, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !444, file: !2, baseType: !10, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !444, file: !2, baseType: !10, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !444, file: !2, baseType: !122, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !444, file: !2, baseType: !122, size: 64, offset: 128)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !451)
!451 = !DISubprogram(name: "vfwscanf", scope: !359, file: !359, line: 671, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !453)
!453 = !DISubprogram(name: "vswprintf", scope: !359, file: !359, line: 611, type: !454, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DISubroutineType(types: !455)
!455 = !{!80, !171, !123, !218, !443}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !457)
!457 = !DISubprogram(name: "vswscanf", scope: !359, file: !359, line: 683, type: !458, flags: DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{!80, !218, !218, !443}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !461)
!461 = !DISubprogram(name: "vwprintf", scope: !359, file: !359, line: 606, type: !462, flags: DIFlagPrototyped, spFlags: 0)
!462 = !DISubroutineType(types: !463)
!463 = !{!80, !218, !443}
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !465)
!465 = !DISubprogram(name: "vwscanf", scope: !359, file: !359, line: 679, type: !462, flags: DIFlagPrototyped, spFlags: 0)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !467)
!467 = !DISubprogram(name: "wcrtomb", scope: !359, file: !359, line: 301, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!123, !217, !173, !403}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !471)
!471 = !DISubprogram(name: "wcscat", scope: !359, file: !359, line: 97, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!172, !171, !218}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !475)
!475 = !DISubprogram(name: "wcscmp", scope: !359, file: !359, line: 106, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!80, !219, !219}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !479)
!479 = !DISubprogram(name: "wcscoll", scope: !359, file: !359, line: 131, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !481)
!481 = !DISubprogram(name: "wcscpy", scope: !359, file: !359, line: 87, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !483)
!483 = !DISubprogram(name: "wcscspn", scope: !359, file: !359, line: 187, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!123, !219, !219}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !487)
!487 = !DISubprogram(name: "wcsftime", scope: !359, file: !359, line: 833, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!123, !171, !123, !218, !490}
!490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !359, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !495)
!495 = !DISubprogram(name: "wcslen", scope: !359, file: !359, line: 222, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!123, !219}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !499)
!499 = !DISubprogram(name: "wcsncat", scope: !359, file: !359, line: 101, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!172, !171, !218, !123}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !503)
!503 = !DISubprogram(name: "wcsncmp", scope: !359, file: !359, line: 109, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!80, !219, !219, !123}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !507)
!507 = !DISubprogram(name: "wcsncpy", scope: !359, file: !359, line: 92, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !509)
!509 = !DISubprogram(name: "wcsrtombs", scope: !359, file: !359, line: 343, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!123, !217, !512, !123, !403}
!512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !515)
!515 = !DISubprogram(name: "wcsspn", scope: !359, file: !359, line: 191, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !517)
!517 = !DISubprogram(name: "wcstod", scope: !359, file: !359, line: 377, type: !518, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!106, !218, !520}
!520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !523)
!523 = !DISubprogram(name: "wcstof", scope: !359, file: !359, line: 382, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!260, !218, !520}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !527)
!527 = !DISubprogram(name: "wcstok", scope: !359, file: !359, line: 217, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!172, !171, !218, !520}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !531)
!531 = !DISubprogram(name: "wcstol", scope: !359, file: !359, line: 428, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!89, !218, !520, !80}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !535)
!535 = !DISubprogram(name: "wcstoul", scope: !359, file: !359, line: 433, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!125, !218, !520, !80}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !539)
!539 = !DISubprogram(name: "wcsxfrm", scope: !359, file: !359, line: 135, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!123, !171, !218, !123}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !543)
!543 = !DISubprogram(name: "wctob", scope: !359, file: !359, line: 288, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!80, !355}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !547)
!547 = !DISubprogram(name: "wmemcmp", scope: !359, file: !359, line: 258, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !549)
!549 = !DISubprogram(name: "wmemcpy", scope: !359, file: !359, line: 262, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !551)
!551 = !DISubprogram(name: "wmemmove", scope: !359, file: !359, line: 267, type: !552, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!172, !172, !219, !123}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !555)
!555 = !DISubprogram(name: "wmemset", scope: !359, file: !359, line: 271, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!172, !172, !173, !123}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !559)
!559 = !DISubprogram(name: "wprintf", scope: !359, file: !359, line: 587, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!80, !218, null}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !563)
!563 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !359, file: !359, line: 644, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !565)
!565 = !DISubprogram(name: "wcschr", scope: !359, file: !359, line: 164, type: !566, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{!172, !219, !173}
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !569)
!569 = !DISubprogram(name: "wcspbrk", scope: !359, file: !359, line: 201, type: !570, flags: DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{!172, !219, !219}
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !573)
!573 = !DISubprogram(name: "wcsrchr", scope: !359, file: !359, line: 174, type: !566, flags: DIFlagPrototyped, spFlags: 0)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !575)
!575 = !DISubprogram(name: "wcsstr", scope: !359, file: !359, line: 212, type: !570, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !577)
!577 = !DISubprogram(name: "wmemchr", scope: !359, file: !359, line: 253, type: !578, flags: DIFlagPrototyped, spFlags: 0)
!578 = !DISubroutineType(types: !579)
!579 = !{!172, !219, !173, !123}
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !581)
!581 = !DISubprogram(name: "wcstold", scope: !359, file: !359, line: 384, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{!265, !218, !520}
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !585)
!585 = !DISubprogram(name: "wcstoll", scope: !359, file: !359, line: 441, type: !586, flags: DIFlagPrototyped, spFlags: 0)
!586 = !DISubroutineType(types: !587)
!587 = !{!231, !218, !520, !80}
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !589)
!589 = !DISubprogram(name: "wcstoull", scope: !359, file: !359, line: 448, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{!255, !218, !520, !80}
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !581)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !585)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !589)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !597)
!597 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !600)
!600 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !80)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !89)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !596)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !599)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !602)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !604)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !596)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !599)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !602)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !604)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !89)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !604)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !62)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !28)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !8)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !125)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !629)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !629)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !125)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !629)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !74, file: !306, line: 238, baseType: !125)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !74, file: !306, line: 239, baseType: !89)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !656, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!656 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !658)
!658 = !DISubprogram(name: "setlocale", scope: !656, file: !656, line: 122, type: !659, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{!150, !80, !107}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !662)
!662 = !DISubprogram(name: "localeconv", scope: !656, file: !656, line: 125, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !667)
!667 = !DISubprogram(name: "isalnum", scope: !668, file: !668, line: 108, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !670)
!670 = !DISubprogram(name: "isalpha", scope: !668, file: !668, line: 109, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !672)
!672 = !DISubprogram(name: "iscntrl", scope: !668, file: !668, line: 110, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !674)
!674 = !DISubprogram(name: "isdigit", scope: !668, file: !668, line: 111, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !676)
!676 = !DISubprogram(name: "isgraph", scope: !668, file: !668, line: 113, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !678)
!678 = !DISubprogram(name: "islower", scope: !668, file: !668, line: 112, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !680)
!680 = !DISubprogram(name: "isprint", scope: !668, file: !668, line: 114, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !682)
!682 = !DISubprogram(name: "ispunct", scope: !668, file: !668, line: 115, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !684)
!684 = !DISubprogram(name: "isspace", scope: !668, file: !668, line: 116, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !686)
!686 = !DISubprogram(name: "isupper", scope: !668, file: !668, line: 117, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !688)
!688 = !DISubprogram(name: "isxdigit", scope: !668, file: !668, line: 118, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !690)
!690 = !DISubprogram(name: "tolower", scope: !668, file: !668, line: 122, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !692)
!692 = !DISubprogram(name: "toupper", scope: !668, file: !668, line: 125, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !694)
!694 = !DISubprogram(name: "isblank", scope: !668, file: !668, line: 130, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !697, line: 7, baseType: !369)
!697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !700, line: 84, baseType: !701)
!700 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !702, line: 14, baseType: !703)
!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !702, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !705)
!705 = !DISubprogram(name: "clearerr", scope: !700, file: !700, line: 757, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !710)
!710 = !DISubprogram(name: "fclose", scope: !700, file: !700, line: 213, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!80, !708}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !714)
!714 = !DISubprogram(name: "feof", scope: !700, file: !700, line: 759, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !716)
!716 = !DISubprogram(name: "ferror", scope: !700, file: !700, line: 761, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !718)
!718 = !DISubprogram(name: "fflush", scope: !700, file: !700, line: 218, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !720)
!720 = !DISubprogram(name: "fgetc", scope: !700, file: !700, line: 485, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !722)
!722 = !DISubprogram(name: "fgetpos", scope: !700, file: !700, line: 731, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!80, !725, !726}
!725 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !708)
!726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !729)
!729 = !DISubprogram(name: "fgets", scope: !700, file: !700, line: 564, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!150, !217, !80, !725}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !733)
!733 = !DISubprogram(name: "fopen", scope: !700, file: !700, line: 246, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!708, !174, !174}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !737)
!737 = !DISubprogram(name: "fprintf", scope: !700, file: !700, line: 326, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!80, !725, !174, null}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !741)
!741 = !DISubprogram(name: "fputc", scope: !700, file: !700, line: 521, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!80, !80, !708}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !745)
!745 = !DISubprogram(name: "fputs", scope: !700, file: !700, line: 626, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!80, !174, !725}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !749)
!749 = !DISubprogram(name: "fread", scope: !700, file: !700, line: 646, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!123, !752, !123, !123, !725}
!752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !754)
!754 = !DISubprogram(name: "freopen", scope: !700, file: !700, line: 252, type: !755, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!708, !174, !174, !725}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !758)
!758 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !700, file: !700, line: 407, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !760)
!760 = !DISubprogram(name: "fseek", scope: !700, file: !700, line: 684, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{!80, !708, !89, !80}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !764)
!764 = !DISubprogram(name: "fsetpos", scope: !700, file: !700, line: 736, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!80, !708, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !770)
!770 = !DISubprogram(name: "ftell", scope: !700, file: !700, line: 689, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!89, !708}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !774)
!774 = !DISubprogram(name: "fwrite", scope: !700, file: !700, line: 652, type: !775, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{!123, !777, !123, !123, !725}
!777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !779)
!779 = !DISubprogram(name: "getc", scope: !700, file: !700, line: 486, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !781)
!781 = !DISubprogram(name: "getchar", scope: !700, file: !700, line: 492, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !783)
!783 = !DISubprogram(name: "gets", scope: !700, file: !700, line: 577, type: !784, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DISubroutineType(types: !785)
!785 = !{!150, !150}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !787)
!787 = !DISubprogram(name: "perror", scope: !700, file: !700, line: 775, type: !788, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !107}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !791)
!791 = !DISubprogram(name: "printf", scope: !700, file: !700, line: 332, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{!80, !174, null}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !795)
!795 = !DISubprogram(name: "putc", scope: !700, file: !700, line: 522, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !797)
!797 = !DISubprogram(name: "putchar", scope: !700, file: !700, line: 528, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !799)
!799 = !DISubprogram(name: "puts", scope: !700, file: !700, line: 632, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !801)
!801 = !DISubprogram(name: "remove", scope: !700, file: !700, line: 146, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !803)
!803 = !DISubprogram(name: "rename", scope: !700, file: !700, line: 148, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DISubroutineType(types: !805)
!805 = !{!80, !107, !107}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !807)
!807 = !DISubprogram(name: "rewind", scope: !700, file: !700, line: 694, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !809)
!809 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !700, file: !700, line: 410, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !811)
!811 = !DISubprogram(name: "setbuf", scope: !700, file: !700, line: 304, type: !812, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !725, !217}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !815)
!815 = !DISubprogram(name: "setvbuf", scope: !700, file: !700, line: 308, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!80, !725, !217, !80, !123}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !819)
!819 = !DISubprogram(name: "sprintf", scope: !700, file: !700, line: 334, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!80, !217, !174, null}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !823)
!823 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !700, file: !700, line: 412, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DISubroutineType(types: !825)
!825 = !{!80, !174, !174, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !827)
!827 = !DISubprogram(name: "tmpfile", scope: !700, file: !700, line: 173, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!708}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !831)
!831 = !DISubprogram(name: "tmpnam", scope: !700, file: !700, line: 187, type: !784, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !833)
!833 = !DISubprogram(name: "ungetc", scope: !700, file: !700, line: 639, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !835)
!835 = !DISubprogram(name: "vfprintf", scope: !700, file: !700, line: 341, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!80, !725, !174, !443}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !839)
!839 = !DISubprogram(name: "vprintf", scope: !700, file: !700, line: 347, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!80, !174, !443}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !843)
!843 = !DISubprogram(name: "vsprintf", scope: !700, file: !700, line: 349, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!80, !217, !174, !443}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !847)
!847 = !DISubprogram(name: "snprintf", scope: !700, file: !700, line: 354, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{!80, !217, !123, !174, null}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !851)
!851 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !700, file: !700, line: 451, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !853)
!853 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !700, file: !700, line: 456, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !855)
!855 = !DISubprogram(name: "vsnprintf", scope: !700, file: !700, line: 358, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!80, !217, !123, !174, !443}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !859)
!859 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !700, file: !700, line: 459, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!80, !174, !174, !443}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !847)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !851)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !853)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !855)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !859)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !868)
!868 = !DISubprogram(name: "acos", scope: !869, file: !869, line: 53, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!870 = !DISubroutineType(types: !871)
!871 = !{!106, !106}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !873)
!873 = !DISubprogram(name: "asin", scope: !869, file: !869, line: 55, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !875)
!875 = !DISubprogram(name: "atan", scope: !869, file: !869, line: 57, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !877)
!877 = !DISubprogram(name: "atan2", scope: !869, file: !869, line: 59, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!106, !106, !106}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !881)
!881 = !DISubprogram(name: "ceil", scope: !869, file: !869, line: 159, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !883)
!883 = !DISubprogram(name: "cos", scope: !869, file: !869, line: 62, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !885)
!885 = !DISubprogram(name: "cosh", scope: !869, file: !869, line: 71, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !887)
!887 = !DISubprogram(name: "exp", scope: !869, file: !869, line: 95, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !889)
!889 = !DISubprogram(name: "fabs", scope: !869, file: !869, line: 162, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !891)
!891 = !DISubprogram(name: "floor", scope: !869, file: !869, line: 165, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !893)
!893 = !DISubprogram(name: "fmod", scope: !869, file: !869, line: 168, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !895)
!895 = !DISubprogram(name: "frexp", scope: !869, file: !869, line: 98, type: !896, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!106, !106, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !900)
!900 = !DISubprogram(name: "ldexp", scope: !869, file: !869, line: 101, type: !901, flags: DIFlagPrototyped, spFlags: 0)
!901 = !DISubroutineType(types: !902)
!902 = !{!106, !106, !80}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !904)
!904 = !DISubprogram(name: "log", scope: !869, file: !869, line: 104, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !906)
!906 = !DISubprogram(name: "log10", scope: !869, file: !869, line: 107, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !908)
!908 = !DISubprogram(name: "modf", scope: !869, file: !869, line: 110, type: !909, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DISubroutineType(types: !910)
!910 = !{!106, !106, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !913)
!913 = !DISubprogram(name: "pow", scope: !869, file: !869, line: 140, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !915)
!915 = !DISubprogram(name: "sin", scope: !869, file: !869, line: 64, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !917)
!917 = !DISubprogram(name: "sinh", scope: !869, file: !869, line: 73, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !919)
!919 = !DISubprogram(name: "sqrt", scope: !869, file: !869, line: 143, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !921)
!921 = !DISubprogram(name: "tan", scope: !869, file: !869, line: 66, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !923)
!923 = !DISubprogram(name: "tanh", scope: !869, file: !869, line: 75, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !926, line: 150, baseType: !106)
!926 = !DIFile(filename: "/usr/include/math.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !926, line: 149, baseType: !260)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !930)
!930 = !DISubprogram(name: "acosh", scope: !869, file: !869, line: 85, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !932)
!932 = !DISubprogram(name: "acoshf", scope: !869, file: !869, line: 85, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{!260, !260}
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !936)
!936 = !DISubprogram(name: "acoshl", scope: !869, file: !869, line: 85, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DISubroutineType(types: !938)
!938 = !{!265, !265}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !940)
!940 = !DISubprogram(name: "asinh", scope: !869, file: !869, line: 87, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !942)
!942 = !DISubprogram(name: "asinhf", scope: !869, file: !869, line: 87, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !944)
!944 = !DISubprogram(name: "asinhl", scope: !869, file: !869, line: 87, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !946)
!946 = !DISubprogram(name: "atanh", scope: !869, file: !869, line: 89, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !948)
!948 = !DISubprogram(name: "atanhf", scope: !869, file: !869, line: 89, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !950)
!950 = !DISubprogram(name: "atanhl", scope: !869, file: !869, line: 89, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !952)
!952 = !DISubprogram(name: "cbrt", scope: !869, file: !869, line: 152, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !954)
!954 = !DISubprogram(name: "cbrtf", scope: !869, file: !869, line: 152, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !956)
!956 = !DISubprogram(name: "cbrtl", scope: !869, file: !869, line: 152, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !958)
!958 = !DISubprogram(name: "copysign", scope: !869, file: !869, line: 196, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !960)
!960 = !DISubprogram(name: "copysignf", scope: !869, file: !869, line: 196, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DISubroutineType(types: !962)
!962 = !{!260, !260, !260}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !964)
!964 = !DISubprogram(name: "copysignl", scope: !869, file: !869, line: 196, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!265, !265, !265}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !968)
!968 = !DISubprogram(name: "erf", scope: !869, file: !869, line: 228, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !970)
!970 = !DISubprogram(name: "erff", scope: !869, file: !869, line: 228, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !972)
!972 = !DISubprogram(name: "erfl", scope: !869, file: !869, line: 228, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !974)
!974 = !DISubprogram(name: "erfc", scope: !869, file: !869, line: 229, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !976)
!976 = !DISubprogram(name: "erfcf", scope: !869, file: !869, line: 229, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !978)
!978 = !DISubprogram(name: "erfcl", scope: !869, file: !869, line: 229, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !980)
!980 = !DISubprogram(name: "exp2", scope: !869, file: !869, line: 130, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !982)
!982 = !DISubprogram(name: "exp2f", scope: !869, file: !869, line: 130, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !984)
!984 = !DISubprogram(name: "exp2l", scope: !869, file: !869, line: 130, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !986)
!986 = !DISubprogram(name: "expm1", scope: !869, file: !869, line: 119, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !988)
!988 = !DISubprogram(name: "expm1f", scope: !869, file: !869, line: 119, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !990)
!990 = !DISubprogram(name: "expm1l", scope: !869, file: !869, line: 119, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !992)
!992 = !DISubprogram(name: "fdim", scope: !869, file: !869, line: 326, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !994)
!994 = !DISubprogram(name: "fdimf", scope: !869, file: !869, line: 326, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !996)
!996 = !DISubprogram(name: "fdiml", scope: !869, file: !869, line: 326, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !998)
!998 = !DISubprogram(name: "fma", scope: !869, file: !869, line: 335, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!106, !106, !106, !106}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1002)
!1002 = !DISubprogram(name: "fmaf", scope: !869, file: !869, line: 335, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!260, !260, !260, !260}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1006)
!1006 = !DISubprogram(name: "fmal", scope: !869, file: !869, line: 335, type: !1007, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!265, !265, !265, !265}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1010)
!1010 = !DISubprogram(name: "fmax", scope: !869, file: !869, line: 329, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1012)
!1012 = !DISubprogram(name: "fmaxf", scope: !869, file: !869, line: 329, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1014)
!1014 = !DISubprogram(name: "fmaxl", scope: !869, file: !869, line: 329, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1016)
!1016 = !DISubprogram(name: "fmin", scope: !869, file: !869, line: 332, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1018)
!1018 = !DISubprogram(name: "fminf", scope: !869, file: !869, line: 332, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1020)
!1020 = !DISubprogram(name: "fminl", scope: !869, file: !869, line: 332, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1022)
!1022 = !DISubprogram(name: "hypot", scope: !869, file: !869, line: 147, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1024)
!1024 = !DISubprogram(name: "hypotf", scope: !869, file: !869, line: 147, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1026)
!1026 = !DISubprogram(name: "hypotl", scope: !869, file: !869, line: 147, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1028)
!1028 = !DISubprogram(name: "ilogb", scope: !869, file: !869, line: 280, type: !1029, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!80, !106}
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1032)
!1032 = !DISubprogram(name: "ilogbf", scope: !869, file: !869, line: 280, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!80, !260}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1036)
!1036 = !DISubprogram(name: "ilogbl", scope: !869, file: !869, line: 280, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!80, !265}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1040)
!1040 = !DISubprogram(name: "lgamma", scope: !869, file: !869, line: 230, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1042)
!1042 = !DISubprogram(name: "lgammaf", scope: !869, file: !869, line: 230, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1044)
!1044 = !DISubprogram(name: "lgammal", scope: !869, file: !869, line: 230, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1046)
!1046 = !DISubprogram(name: "llrint", scope: !869, file: !869, line: 316, type: !1047, flags: DIFlagPrototyped, spFlags: 0)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!231, !106}
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1050)
!1050 = !DISubprogram(name: "llrintf", scope: !869, file: !869, line: 316, type: !1051, flags: DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!231, !260}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1054)
!1054 = !DISubprogram(name: "llrintl", scope: !869, file: !869, line: 316, type: !1055, flags: DIFlagPrototyped, spFlags: 0)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!231, !265}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1058)
!1058 = !DISubprogram(name: "llround", scope: !869, file: !869, line: 322, type: !1047, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1060)
!1060 = !DISubprogram(name: "llroundf", scope: !869, file: !869, line: 322, type: !1051, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1062)
!1062 = !DISubprogram(name: "llroundl", scope: !869, file: !869, line: 322, type: !1055, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1064)
!1064 = !DISubprogram(name: "log1p", scope: !869, file: !869, line: 122, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1066)
!1066 = !DISubprogram(name: "log1pf", scope: !869, file: !869, line: 122, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1068)
!1068 = !DISubprogram(name: "log1pl", scope: !869, file: !869, line: 122, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1070)
!1070 = !DISubprogram(name: "log2", scope: !869, file: !869, line: 133, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1072)
!1072 = !DISubprogram(name: "log2f", scope: !869, file: !869, line: 133, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1074)
!1074 = !DISubprogram(name: "log2l", scope: !869, file: !869, line: 133, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1076)
!1076 = !DISubprogram(name: "logb", scope: !869, file: !869, line: 125, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1078)
!1078 = !DISubprogram(name: "logbf", scope: !869, file: !869, line: 125, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1080)
!1080 = !DISubprogram(name: "logbl", scope: !869, file: !869, line: 125, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1082)
!1082 = !DISubprogram(name: "lrint", scope: !869, file: !869, line: 314, type: !1083, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!89, !106}
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1086)
!1086 = !DISubprogram(name: "lrintf", scope: !869, file: !869, line: 314, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!89, !260}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1090)
!1090 = !DISubprogram(name: "lrintl", scope: !869, file: !869, line: 314, type: !1091, flags: DIFlagPrototyped, spFlags: 0)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!89, !265}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1094)
!1094 = !DISubprogram(name: "lround", scope: !869, file: !869, line: 320, type: !1083, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1096)
!1096 = !DISubprogram(name: "lroundf", scope: !869, file: !869, line: 320, type: !1087, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1098)
!1098 = !DISubprogram(name: "lroundl", scope: !869, file: !869, line: 320, type: !1091, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1100)
!1100 = !DISubprogram(name: "nan", scope: !869, file: !869, line: 201, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1102)
!1102 = !DISubprogram(name: "nanf", scope: !869, file: !869, line: 201, type: !1103, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!260, !107}
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1106)
!1106 = !DISubprogram(name: "nanl", scope: !869, file: !869, line: 201, type: !1107, flags: DIFlagPrototyped, spFlags: 0)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!265, !107}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1110)
!1110 = !DISubprogram(name: "nearbyint", scope: !869, file: !869, line: 294, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1112)
!1112 = !DISubprogram(name: "nearbyintf", scope: !869, file: !869, line: 294, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1114)
!1114 = !DISubprogram(name: "nearbyintl", scope: !869, file: !869, line: 294, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1116)
!1116 = !DISubprogram(name: "nextafter", scope: !869, file: !869, line: 259, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1118)
!1118 = !DISubprogram(name: "nextafterf", scope: !869, file: !869, line: 259, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1120)
!1120 = !DISubprogram(name: "nextafterl", scope: !869, file: !869, line: 259, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1122)
!1122 = !DISubprogram(name: "nexttoward", scope: !869, file: !869, line: 261, type: !1123, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!106, !106, !265}
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1126)
!1126 = !DISubprogram(name: "nexttowardf", scope: !869, file: !869, line: 261, type: !1127, flags: DIFlagPrototyped, spFlags: 0)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!260, !260, !265}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1130)
!1130 = !DISubprogram(name: "nexttowardl", scope: !869, file: !869, line: 261, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1132)
!1132 = !DISubprogram(name: "remainder", scope: !869, file: !869, line: 272, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1134)
!1134 = !DISubprogram(name: "remainderf", scope: !869, file: !869, line: 272, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1136)
!1136 = !DISubprogram(name: "remainderl", scope: !869, file: !869, line: 272, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1138)
!1138 = !DISubprogram(name: "remquo", scope: !869, file: !869, line: 307, type: !1139, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!106, !106, !106, !898}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1142)
!1142 = !DISubprogram(name: "remquof", scope: !869, file: !869, line: 307, type: !1143, flags: DIFlagPrototyped, spFlags: 0)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!260, !260, !260, !898}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1146)
!1146 = !DISubprogram(name: "remquol", scope: !869, file: !869, line: 307, type: !1147, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!265, !265, !265, !898}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1150)
!1150 = !DISubprogram(name: "rint", scope: !869, file: !869, line: 256, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1152)
!1152 = !DISubprogram(name: "rintf", scope: !869, file: !869, line: 256, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1154)
!1154 = !DISubprogram(name: "rintl", scope: !869, file: !869, line: 256, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1156)
!1156 = !DISubprogram(name: "round", scope: !869, file: !869, line: 298, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1158)
!1158 = !DISubprogram(name: "roundf", scope: !869, file: !869, line: 298, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1160)
!1160 = !DISubprogram(name: "roundl", scope: !869, file: !869, line: 298, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1162)
!1162 = !DISubprogram(name: "scalbln", scope: !869, file: !869, line: 290, type: !1163, flags: DIFlagPrototyped, spFlags: 0)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!106, !106, !89}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1166)
!1166 = !DISubprogram(name: "scalblnf", scope: !869, file: !869, line: 290, type: !1167, flags: DIFlagPrototyped, spFlags: 0)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!260, !260, !89}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1170)
!1170 = !DISubprogram(name: "scalblnl", scope: !869, file: !869, line: 290, type: !1171, flags: DIFlagPrototyped, spFlags: 0)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!265, !265, !89}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1174)
!1174 = !DISubprogram(name: "scalbn", scope: !869, file: !869, line: 276, type: !901, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1176)
!1176 = !DISubprogram(name: "scalbnf", scope: !869, file: !869, line: 276, type: !1177, flags: DIFlagPrototyped, spFlags: 0)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!260, !260, !80}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1180)
!1180 = !DISubprogram(name: "scalbnl", scope: !869, file: !869, line: 276, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!265, !265, !80}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1184)
!1184 = !DISubprogram(name: "tgamma", scope: !869, file: !869, line: 235, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1186)
!1186 = !DISubprogram(name: "tgammaf", scope: !869, file: !869, line: 235, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1188)
!1188 = !DISubprogram(name: "tgammal", scope: !869, file: !869, line: 235, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1190)
!1190 = !DISubprogram(name: "trunc", scope: !869, file: !869, line: 302, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1192)
!1192 = !DISubprogram(name: "truncf", scope: !869, file: !869, line: 302, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1194)
!1194 = !DISubprogram(name: "truncl", scope: !869, file: !869, line: 302, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1197, line: 94, baseType: !1198)
!1197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1197, line: 68, baseType: !29)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1202)
!1202 = !DISubprogram(name: "feclearexcept", scope: !1203, file: !1203, line: 71, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!1203 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/deepan/Documents/workspace/remill/remill-build/remill/Arch/X86/Runtime")
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1205)
!1205 = !DISubprogram(name: "fegetexceptflag", scope: !1203, file: !1203, line: 75, type: !1206, flags: DIFlagPrototyped, spFlags: 0)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!80, !1208, !80}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1210)
!1210 = !DISubprogram(name: "feraiseexcept", scope: !1203, file: !1203, line: 78, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1212)
!1212 = !DISubprogram(name: "fesetexceptflag", scope: !1203, file: !1203, line: 88, type: !1213, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!80, !1215, !80}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1218)
!1218 = !DISubprogram(name: "fetestexcept", scope: !1203, file: !1203, line: 92, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1220)
!1220 = !DISubprogram(name: "fegetround", scope: !1203, file: !1203, line: 104, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1222)
!1222 = !DISubprogram(name: "fesetround", scope: !1203, file: !1203, line: 107, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1224)
!1224 = !DISubprogram(name: "fegetenv", scope: !1203, file: !1203, line: 114, type: !1225, flags: DIFlagPrototyped, spFlags: 0)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!80, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1229)
!1229 = !DISubprogram(name: "feholdexcept", scope: !1203, file: !1203, line: 119, type: !1225, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1231)
!1231 = !DISubprogram(name: "fesetenv", scope: !1203, file: !1203, line: 123, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!80, !1234}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1237)
!1237 = !DISubprogram(name: "feupdateenv", scope: !1203, file: !1203, line: 128, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !{i32 2, !"Dwarf Version", i32 4}
!1239 = !{i32 2, !"Debug Info Version", i32 3}
!1240 = !{!1241, !1241, i64 0}
!1241 = !{!"long", !1242, i64 0}
!1242 = !{!"omnipotent char", !1243, i64 0}
!1243 = !{!"Simple C++ TBAA"}
!1244 = !{!1245, !1242, i64 2065}
!1245 = !{!"_ZTS5State", !1242, i64 16, !1246, i64 2064, !1242, i64 2080, !1247, i64 2088, !1249, i64 2112, !1251, i64 2208, !1252, i64 2480, !1253, i64 2608, !1254, i64 2736, !1242, i64 2760, !1242, i64 2768, !1255, i64 3280}
!1246 = !{!"_ZTS10ArithFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15}
!1247 = !{!"_ZTS8Segments", !1248, i64 0, !1242, i64 2, !1248, i64 4, !1242, i64 6, !1248, i64 8, !1242, i64 10, !1248, i64 12, !1242, i64 14, !1248, i64 16, !1242, i64 18, !1248, i64 20, !1242, i64 22}
!1248 = !{!"short", !1242, i64 0}
!1249 = !{!"_ZTS12AddressSpace", !1241, i64 0, !1250, i64 8, !1241, i64 16, !1250, i64 24, !1241, i64 32, !1250, i64 40, !1241, i64 48, !1250, i64 56, !1241, i64 64, !1250, i64 72, !1241, i64 80, !1250, i64 88}
!1250 = !{!"_ZTS3Reg", !1242, i64 0}
!1251 = !{!"_ZTS3GPR", !1241, i64 0, !1250, i64 8, !1241, i64 16, !1250, i64 24, !1241, i64 32, !1250, i64 40, !1241, i64 48, !1250, i64 56, !1241, i64 64, !1250, i64 72, !1241, i64 80, !1250, i64 88, !1241, i64 96, !1250, i64 104, !1241, i64 112, !1250, i64 120, !1241, i64 128, !1250, i64 136, !1241, i64 144, !1250, i64 152, !1241, i64 160, !1250, i64 168, !1241, i64 176, !1250, i64 184, !1241, i64 192, !1250, i64 200, !1241, i64 208, !1250, i64 216, !1241, i64 224, !1250, i64 232, !1241, i64 240, !1250, i64 248, !1241, i64 256, !1250, i64 264}
!1252 = !{!"_ZTS8X87Stack", !1242, i64 0}
!1253 = !{!"_ZTS3MMX", !1242, i64 0}
!1254 = !{!"_ZTS14FPUStatusFlags", !1242, i64 0, !1242, i64 1, !1242, i64 2, !1242, i64 3, !1242, i64 4, !1242, i64 5, !1242, i64 6, !1242, i64 7, !1242, i64 8, !1242, i64 9, !1242, i64 10, !1242, i64 11, !1242, i64 12, !1242, i64 13, !1242, i64 14, !1242, i64 15, !1242, i64 16, !1242, i64 17, !1242, i64 18, !1242, i64 19, !1242, i64 20}
!1255 = !{!"_ZTS13SegmentCaches", !1256, i64 0, !1256, i64 16, !1256, i64 32, !1256, i64 48, !1256, i64 64, !1256, i64 80}
!1256 = !{!"_ZTS13SegmentShadow", !1242, i64 0, !1257, i64 8, !1257, i64 12}
!1257 = !{!"int", !1242, i64 0}
!1258 = !{!1245, !1242, i64 2067}
!1259 = !{!1245, !1242, i64 2069}
!1260 = !{!1245, !1242, i64 2071}
!1261 = !{!1245, !1242, i64 2073}
!1262 = !{!1245, !1242, i64 2077}
!1263 = !{!1242, !1242, i64 0}
