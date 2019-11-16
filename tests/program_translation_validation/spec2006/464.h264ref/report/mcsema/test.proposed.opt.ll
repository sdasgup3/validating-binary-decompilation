; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x294aa2__rip__type = type <{ [8 x i8] }>
%G_0x294b43__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb908_type = type <{ [8 x i8] }>
%G_0x6cb910_type = type <{ [8 x i8] }>
%G_0x6cbe00_type = type <{ [8 x i8] }>
%G_0x6cee50_type = type <{ [4 x i8] }>
%G_0x6f8edc_type = type <{ [4 x i8] }>
%G_0x6f968c_type = type <{ [4 x i8] }>
%G_0x70d198_type = type <{ [8 x i8] }>
%G_0x722ca8_type = type <{ [4 x i8] }>
%G_0x725260_type = type <{ [4 x i8] }>
%G_0x7b214__rip__type = type <{ [8 x i8] }>
%G_0x7b245__rip__type = type <{ [8 x i8] }>
%G_0x864f9__rip__type = type <{ [4 x i8] }>
%G_0x86629__rip__type = type <{ [4 x i8] }>
%G_0x86790__rip__type = type <{ [4 x i8] }>
%G__0x4bdcdc_type = type <{ [4 x i8] }>
%G__0x4be20a_type = type <{ [8 x i8] }>
%G__0x4c04eb_type = type <{ [8 x i8] }>
%G__0x4c04ff_type = type <{ [8 x i8] }>
%G__0x4c054d_type = type <{ [8 x i8] }>
%G__0x4c0609_type = type <{ [8 x i8] }>
%G__0x4c0635_type = type <{ [8 x i8] }>
%G__0x4c0669_type = type <{ [8 x i8] }>
%G__0x4c0694_type = type <{ [8 x i8] }>
%G__0x4c06c3_type = type <{ [8 x i8] }>
%G__0x4c06ef_type = type <{ [8 x i8] }>
%G__0x4c0718_type = type <{ [8 x i8] }>
%G__0x4c0742_type = type <{ [8 x i8] }>
%G__0x4c076b_type = type <{ [8 x i8] }>
%G__0x4c0794_type = type <{ [8 x i8] }>
%G__0x4c07bd_type = type <{ [8 x i8] }>
%G__0x4c07e6_type = type <{ [8 x i8] }>
%G__0x4c080f_type = type <{ [8 x i8] }>
%G__0x4c083f_type = type <{ [8 x i8] }>
%G__0x4c086f_type = type <{ [8 x i8] }>
%G__0x4c0894_type = type <{ [8 x i8] }>
%G__0x4c08b6_type = type <{ [8 x i8] }>
%G__0x4c08ba_type = type <{ [8 x i8] }>
%G__0x4c08bd_type = type <{ [8 x i8] }>
%G__0x4c08c0_type = type <{ [8 x i8] }>
%G__0x4c08de_type = type <{ [8 x i8] }>
%G__0x4c08fb_type = type <{ [8 x i8] }>
%G__0x4c0914_type = type <{ [8 x i8] }>
%G__0x4c0940_type = type <{ [8 x i8] }>
%G__0x4c096c_type = type <{ [8 x i8] }>
%G__0x4c0998_type = type <{ [8 x i8] }>
%G__0x4c09c6_type = type <{ [8 x i8] }>
%G__0x4c09f1_type = type <{ [8 x i8] }>
%G__0x4c0a2e_type = type <{ [8 x i8] }>
%G__0x4c0a7e_type = type <{ [8 x i8] }>
%G__0x4c0aa9_type = type <{ [8 x i8] }>
%G__0x4c0ad8_type = type <{ [8 x i8] }>
%G__0x4c0b0b_type = type <{ [8 x i8] }>
%G__0x4c0b3f_type = type <{ [8 x i8] }>
%G__0x4c0b73_type = type <{ [8 x i8] }>
%G__0x4c0bb7_type = type <{ [8 x i8] }>
%G__0x4c0bf5_type = type <{ [8 x i8] }>
%G__0x4c0c29_type = type <{ [8 x i8] }>
%G__0x4c0c54_type = type <{ [8 x i8] }>
%G__0x4c0c83_type = type <{ [8 x i8] }>
%G__0x4c0cd4_type = type <{ [8 x i8] }>
%G__0x4c0d00_type = type <{ [8 x i8] }>
%G__0x4c0d2c_type = type <{ [8 x i8] }>
%G__0x4c0d58_type = type <{ [8 x i8] }>
%G__0x4c0d9e_type = type <{ [8 x i8] }>
%G__0x4c0dca_type = type <{ [8 x i8] }>
%G__0x4c0e0b_type = type <{ [8 x i8] }>
%G__0x4c0e35_type = type <{ [8 x i8] }>
%G__0x4c0e5f_type = type <{ [8 x i8] }>
%G__0x4c0e7a_type = type <{ [8 x i8] }>
%G__0x4c0e84_type = type <{ [8 x i8] }>
%G__0x4c0e88_type = type <{ [8 x i8] }>
%G__0x4c0e97_type = type <{ [8 x i8] }>
%G__0x4c0eaa_type = type <{ [8 x i8] }>
%G__0x720c60_type = type <{ [8 x i8] }>
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
@G_0x294aa2__rip_ = global %G_0x294aa2__rip__type zeroinitializer
@G_0x294b43__rip_ = global %G_0x294b43__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = local_unnamed_addr global %G_0x6cb908_type zeroinitializer
@G_0x6cb910 = local_unnamed_addr global %G_0x6cb910_type zeroinitializer
@G_0x6cbe00 = local_unnamed_addr global %G_0x6cbe00_type zeroinitializer
@G_0x6cee50 = local_unnamed_addr global %G_0x6cee50_type zeroinitializer
@G_0x6f8edc = local_unnamed_addr global %G_0x6f8edc_type zeroinitializer
@G_0x6f968c = local_unnamed_addr global %G_0x6f968c_type zeroinitializer
@G_0x70d198 = local_unnamed_addr global %G_0x70d198_type zeroinitializer
@G_0x722ca8 = local_unnamed_addr global %G_0x722ca8_type zeroinitializer
@G_0x725260 = local_unnamed_addr global %G_0x725260_type zeroinitializer
@G_0x7b214__rip_ = global %G_0x7b214__rip__type zeroinitializer
@G_0x7b245__rip_ = global %G_0x7b245__rip__type zeroinitializer
@G_0x864f9__rip_ = global %G_0x864f9__rip__type zeroinitializer
@G_0x86629__rip_ = global %G_0x86629__rip__type zeroinitializer
@G_0x86790__rip_ = global %G_0x86790__rip__type zeroinitializer
@G__0x4bdcdc = global %G__0x4bdcdc_type zeroinitializer
@G__0x4be20a = global %G__0x4be20a_type zeroinitializer
@G__0x4c04eb = global %G__0x4c04eb_type zeroinitializer
@G__0x4c04ff = global %G__0x4c04ff_type zeroinitializer
@G__0x4c054d = global %G__0x4c054d_type zeroinitializer
@G__0x4c0609 = global %G__0x4c0609_type zeroinitializer
@G__0x4c0635 = global %G__0x4c0635_type zeroinitializer
@G__0x4c0669 = global %G__0x4c0669_type zeroinitializer
@G__0x4c0694 = global %G__0x4c0694_type zeroinitializer
@G__0x4c06c3 = global %G__0x4c06c3_type zeroinitializer
@G__0x4c06ef = global %G__0x4c06ef_type zeroinitializer
@G__0x4c0718 = global %G__0x4c0718_type zeroinitializer
@G__0x4c0742 = global %G__0x4c0742_type zeroinitializer
@G__0x4c076b = global %G__0x4c076b_type zeroinitializer
@G__0x4c0794 = global %G__0x4c0794_type zeroinitializer
@G__0x4c07bd = global %G__0x4c07bd_type zeroinitializer
@G__0x4c07e6 = global %G__0x4c07e6_type zeroinitializer
@G__0x4c080f = global %G__0x4c080f_type zeroinitializer
@G__0x4c083f = global %G__0x4c083f_type zeroinitializer
@G__0x4c086f = global %G__0x4c086f_type zeroinitializer
@G__0x4c0894 = global %G__0x4c0894_type zeroinitializer
@G__0x4c08b6 = global %G__0x4c08b6_type zeroinitializer
@G__0x4c08ba = global %G__0x4c08ba_type zeroinitializer
@G__0x4c08bd = global %G__0x4c08bd_type zeroinitializer
@G__0x4c08c0 = global %G__0x4c08c0_type zeroinitializer
@G__0x4c08de = global %G__0x4c08de_type zeroinitializer
@G__0x4c08fb = global %G__0x4c08fb_type zeroinitializer
@G__0x4c0914 = global %G__0x4c0914_type zeroinitializer
@G__0x4c0940 = global %G__0x4c0940_type zeroinitializer
@G__0x4c096c = global %G__0x4c096c_type zeroinitializer
@G__0x4c0998 = global %G__0x4c0998_type zeroinitializer
@G__0x4c09c6 = global %G__0x4c09c6_type zeroinitializer
@G__0x4c09f1 = global %G__0x4c09f1_type zeroinitializer
@G__0x4c0a2e = global %G__0x4c0a2e_type zeroinitializer
@G__0x4c0a7e = global %G__0x4c0a7e_type zeroinitializer
@G__0x4c0aa9 = global %G__0x4c0aa9_type zeroinitializer
@G__0x4c0ad8 = global %G__0x4c0ad8_type zeroinitializer
@G__0x4c0b0b = global %G__0x4c0b0b_type zeroinitializer
@G__0x4c0b3f = global %G__0x4c0b3f_type zeroinitializer
@G__0x4c0b73 = global %G__0x4c0b73_type zeroinitializer
@G__0x4c0bb7 = global %G__0x4c0bb7_type zeroinitializer
@G__0x4c0bf5 = global %G__0x4c0bf5_type zeroinitializer
@G__0x4c0c29 = global %G__0x4c0c29_type zeroinitializer
@G__0x4c0c54 = global %G__0x4c0c54_type zeroinitializer
@G__0x4c0c83 = global %G__0x4c0c83_type zeroinitializer
@G__0x4c0cd4 = global %G__0x4c0cd4_type zeroinitializer
@G__0x4c0d00 = global %G__0x4c0d00_type zeroinitializer
@G__0x4c0d2c = global %G__0x4c0d2c_type zeroinitializer
@G__0x4c0d58 = global %G__0x4c0d58_type zeroinitializer
@G__0x4c0d9e = global %G__0x4c0d9e_type zeroinitializer
@G__0x4c0dca = global %G__0x4c0dca_type zeroinitializer
@G__0x4c0e0b = global %G__0x4c0e0b_type zeroinitializer
@G__0x4c0e35 = global %G__0x4c0e35_type zeroinitializer
@G__0x4c0e5f = global %G__0x4c0e5f_type zeroinitializer
@G__0x4c0e7a = global %G__0x4c0e7a_type zeroinitializer
@G__0x4c0e84 = global %G__0x4c0e84_type zeroinitializer
@G__0x4c0e88 = global %G__0x4c0e88_type zeroinitializer
@G__0x4c0e97 = global %G__0x4c0e97_type zeroinitializer
@G__0x4c0eaa = global %G__0x4c0eaa_type zeroinitializer
@G__0x720c60 = global %G__0x720c60_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4011a0.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401050.snprintf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401020.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @report(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -1736
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i67 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %19 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RAX.i67, align 8
  %EAX.i83 = bitcast %union.anon* %18 to i32*
  %21 = add i64 %7, -40
  %22 = add i64 %10, 20
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %21 to i32*
  store i32 %19, i32* %23, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %26 = add i32 %25, -1
  %27 = icmp eq i32 %25, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %12, align 1
  %29 = and i32 %26, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %13, align 1
  %34 = xor i32 %26, %25
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %14, align 1
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %15, align 1
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %16, align 1
  %42 = lshr i32 %25, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %17, align 1
  %47 = icmp ne i8 %41, 0
  %48 = xor i1 %47, %45
  %49 = or i1 %38, %48
  %.v85 = select i1 %49, i64 32, i64 14
  %50 = add i64 %24, %.v85
  store i64 %50, i64* %3, align 8
  br i1 %49, label %block_.L_436095, label %block_436083

block_436083:                                     ; preds = %entry
  %51 = zext i32 %25 to i64
  store i64 %51, i64* %RAX.i67, align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -1212
  %54 = add i64 %50, 13
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i32*
  store i32 %25, i32* %55, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 21
  br label %block_.L_4360a5

block_.L_436095:                                  ; preds = %entry
  store i64 1, i64* %RAX.i67, align 8
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -1212
  %60 = add i64 %50, 11
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  store i32 1, i32* %61, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 5
  store i64 %63, i64* %3, align 8
  br label %block_.L_4360a5

block_.L_4360a5:                                  ; preds = %block_.L_436095, %block_436083
  %storemerge = phi i64 [ %57, %block_436083 ], [ %63, %block_.L_436095 ]
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -1212
  %66 = add i64 %storemerge, 6
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = add i64 %64, -48
  %70 = add i64 %storemerge, 9
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  store i32 %68, i32* %71, align 4
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX.i67, align 8
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -40
  %77 = add i64 %72, 10
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  store i32 %73, i32* %78, align 4
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -56
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 7
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i32*
  store i32 0, i32* %83, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4360bf

block_.L_4360bf:                                  ; preds = %block_4360c9, %block_.L_4360a5
  %84 = phi i64 [ %153, %block_4360c9 ], [ %.pre, %block_.L_4360a5 ]
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -56
  %87 = add i64 %84, 4
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, -5
  %91 = icmp ult i32 %89, 5
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %12, align 1
  %93 = and i32 %90, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %13, align 1
  %98 = xor i32 %90, %89
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %14, align 1
  %102 = icmp eq i32 %90, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %15, align 1
  %104 = lshr i32 %90, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %16, align 1
  %106 = lshr i32 %89, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %17, align 1
  %111 = icmp ne i8 %105, 0
  %112 = xor i1 %111, %109
  %.v86 = select i1 %112, i64 10, i64 36
  %113 = add i64 %84, %.v86
  store i64 %113, i64* %3, align 8
  br i1 %112, label %block_4360c9, label %block_.L_4360e3

block_4360c9:                                     ; preds = %block_.L_4360bf
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %88, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %RAX.i67, align 8
  %117 = shl nsw i64 %116, 3
  %118 = add i64 %85, -44
  %119 = add i64 %118, %117
  %120 = add i64 %113, 12
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 0, i32* %121, align 4
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -56
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 3
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RAX.i67, align 8
  %130 = icmp eq i32 %127, -1
  %131 = icmp eq i32 %128, 0
  %132 = or i1 %130, %131
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %12, align 1
  %134 = and i32 %128, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %13, align 1
  %139 = xor i32 %128, %127
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %14, align 1
  %143 = zext i1 %131 to i8
  store i8 %143, i8* %15, align 1
  %144 = lshr i32 %128, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %16, align 1
  %146 = lshr i32 %127, 31
  %147 = xor i32 %144, %146
  %148 = add nuw nsw i32 %147, %144
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1
  %151 = add i64 %124, 9
  store i64 %151, i64* %3, align 8
  store i32 %128, i32* %126, align 4
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, -31
  store i64 %153, i64* %3, align 8
  br label %block_.L_4360bf

block_.L_4360e3:                                  ; preds = %block_.L_4360bf
  %154 = add i64 %113, 7
  store i64 %154, i64* %3, align 8
  store i32 0, i32* %88, align 4
  %RCX.i931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_4360ea

block_.L_4360ea:                                  ; preds = %block_.L_43613f, %block_.L_4360e3
  %155 = phi i64 [ %771, %block_.L_43613f ], [ %.pre56, %block_.L_4360e3 ]
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -56
  %158 = add i64 %155, 4
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, -5
  %162 = icmp ult i32 %160, 5
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %12, align 1
  %164 = and i32 %161, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %13, align 1
  %169 = xor i32 %161, %160
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %14, align 1
  %173 = icmp eq i32 %161, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %15, align 1
  %175 = lshr i32 %161, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %16, align 1
  %177 = lshr i32 %160, 31
  %178 = xor i32 %175, %177
  %179 = add nuw nsw i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %17, align 1
  %182 = icmp ne i8 %176, 0
  %183 = xor i1 %182, %180
  %.v87 = select i1 %183, i64 10, i64 316
  %184 = add i64 %155, %.v87
  store i64 %184, i64* %3, align 8
  br i1 %183, label %block_4360f4, label %block_.L_436226

block_4360f4:                                     ; preds = %block_.L_4360ea
  %185 = add i64 %156, -52
  %186 = add i64 %184, 7
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  store i32 0, i32* %187, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_4360fb

block_.L_4360fb:                                  ; preds = %block_436105, %block_4360f4
  %188 = phi i64 [ %357, %block_436105 ], [ %.pre83, %block_4360f4 ]
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -52
  %191 = add i64 %188, 4
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, -15
  %195 = icmp ult i32 %193, 15
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %12, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %13, align 1
  %202 = xor i32 %194, %193
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %14, align 1
  %206 = icmp eq i32 %194, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %15, align 1
  %208 = lshr i32 %194, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %16, align 1
  %210 = lshr i32 %193, 31
  %211 = xor i32 %208, %210
  %212 = add nuw nsw i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %17, align 1
  %215 = icmp ne i8 %209, 0
  %216 = xor i1 %215, %213
  %.v105 = select i1 %216, i64 10, i64 68
  %217 = add i64 %188, %.v105
  %218 = add i64 %217, 8
  store i64 %218, i64* %3, align 8
  %219 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %219, i64* %RAX.i67, align 8
  br i1 %216, label %block_436105, label %block_.L_43613f

block_436105:                                     ; preds = %block_.L_4360fb
  %220 = add i64 %219, 1028
  store i64 %220, i64* %RAX.i67, align 8
  %221 = icmp ugt i64 %219, -1029
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %12, align 1
  %223 = trunc i64 %220 to i32
  %224 = and i32 %223, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %13, align 1
  %229 = xor i64 %220, %219
  %230 = lshr i64 %229, 4
  %231 = trunc i64 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %14, align 1
  %233 = icmp eq i64 %220, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %15, align 1
  %235 = lshr i64 %220, 63
  %236 = trunc i64 %235 to i8
  store i8 %236, i8* %16, align 1
  %237 = lshr i64 %219, 63
  %238 = xor i64 %235, %237
  %239 = add nuw nsw i64 %238, %235
  %240 = icmp eq i64 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %17, align 1
  %242 = add i64 %189, -56
  %243 = add i64 %217, 18
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %246, 60
  store i64 %247, i64* %RCX.i931, align 8
  %248 = lshr i64 %247, 63
  %249 = add i64 %247, %220
  store i64 %249, i64* %RAX.i67, align 8
  %250 = icmp ult i64 %249, %220
  %251 = icmp ult i64 %249, %247
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %12, align 1
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %13, align 1
  %260 = xor i64 %247, %220
  %261 = xor i64 %260, %249
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %14, align 1
  %265 = icmp eq i64 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %15, align 1
  %267 = lshr i64 %249, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %16, align 1
  %269 = xor i64 %267, %235
  %270 = xor i64 %267, %248
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %17, align 1
  %274 = add i64 %217, 29
  store i64 %274, i64* %3, align 8
  %275 = load i32, i32* %192, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %RCX.i931, align 8
  %277 = shl nsw i64 %276, 2
  %278 = add i64 %277, %249
  %279 = add i64 %217, 32
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RDX.i1187, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -56
  %285 = add i64 %217, 36
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %RAX.i67, align 8
  %289 = shl nsw i64 %288, 3
  %290 = add nsw i64 %289, -44
  %291 = add i64 %290, %283
  %292 = add i64 %217, 40
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, %281
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RDX.i1187, align 8
  %297 = icmp ult i32 %295, %281
  %298 = icmp ult i32 %295, %294
  %299 = or i1 %297, %298
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %12, align 1
  %301 = and i32 %295, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %13, align 1
  %306 = xor i32 %294, %281
  %307 = xor i32 %306, %295
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %14, align 1
  %311 = icmp eq i32 %295, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %15, align 1
  %313 = lshr i32 %295, 31
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* %16, align 1
  %315 = lshr i32 %281, 31
  %316 = lshr i32 %294, 31
  %317 = xor i32 %313, %315
  %318 = xor i32 %313, %316
  %319 = add nuw nsw i32 %317, %318
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %17, align 1
  %322 = add i64 %283, -44
  %323 = add i64 %322, %289
  %324 = add i64 %217, 44
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  store i32 %295, i32* %325, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -52
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 3
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i67, align 8
  %334 = icmp eq i32 %331, -1
  %335 = icmp eq i32 %332, 0
  %336 = or i1 %334, %335
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %12, align 1
  %338 = and i32 %332, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %13, align 1
  %343 = xor i32 %332, %331
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %14, align 1
  %347 = zext i1 %335 to i8
  store i8 %347, i8* %15, align 1
  %348 = lshr i32 %332, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %16, align 1
  %350 = lshr i32 %331, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %17, align 1
  %355 = add i64 %328, 9
  store i64 %355, i64* %3, align 8
  store i32 %332, i32* %330, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, -63
  store i64 %357, i64* %3, align 8
  br label %block_.L_4360fb

block_.L_43613f:                                  ; preds = %block_.L_4360fb
  %358 = add i64 %189, -56
  %359 = add i64 %217, 12
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  store i64 %362, i64* %RCX.i931, align 8
  %363 = shl nsw i64 %362, 2
  %364 = add i64 %219, 1368
  %365 = add i64 %364, %363
  %366 = add i64 %217, 19
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RDX.i1187, align 8
  %370 = add i64 %217, 23
  store i64 %370, i64* %3, align 8
  %371 = load i32, i32* %360, align 4
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RAX.i67, align 8
  %373 = shl nsw i64 %372, 3
  %374 = add nsw i64 %373, -44
  %375 = add i64 %374, %189
  %376 = add i64 %217, 27
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, %368
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RDX.i1187, align 8
  %381 = icmp ult i32 %379, %368
  %382 = icmp ult i32 %379, %378
  %383 = or i1 %381, %382
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %12, align 1
  %385 = and i32 %379, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %13, align 1
  %390 = xor i32 %378, %368
  %391 = xor i32 %390, %379
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %14, align 1
  %395 = icmp eq i32 %379, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %15, align 1
  %397 = lshr i32 %379, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %16, align 1
  %399 = lshr i32 %368, 31
  %400 = lshr i32 %378, 31
  %401 = xor i32 %397, %399
  %402 = xor i32 %397, %400
  %403 = add nuw nsw i32 %401, %402
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %17, align 1
  %406 = add i64 %189, -44
  %407 = add i64 %406, %373
  %408 = add i64 %217, 31
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 %379, i32* %409, align 4
  %410 = load i64, i64* %3, align 8
  %411 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %411, i64* %RAX.i67, align 8
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -56
  %414 = add i64 %410, 12
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %RCX.i931, align 8
  %418 = shl nsw i64 %417, 2
  %419 = add i64 %411, 1348
  %420 = add i64 %419, %418
  %421 = add i64 %410, 19
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RDX.i1187, align 8
  %425 = add i64 %410, 23
  store i64 %425, i64* %3, align 8
  %426 = load i32, i32* %415, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RAX.i67, align 8
  %428 = shl nsw i64 %427, 3
  %429 = add nsw i64 %428, -44
  %430 = add i64 %429, %412
  %431 = add i64 %410, 27
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, %423
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RDX.i1187, align 8
  %436 = icmp ult i32 %434, %423
  %437 = icmp ult i32 %434, %433
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %12, align 1
  %440 = and i32 %434, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %13, align 1
  %445 = xor i32 %433, %423
  %446 = xor i32 %445, %434
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %14, align 1
  %450 = icmp eq i32 %434, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %15, align 1
  %452 = lshr i32 %434, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %16, align 1
  %454 = lshr i32 %423, 31
  %455 = lshr i32 %433, 31
  %456 = xor i32 %452, %454
  %457 = xor i32 %452, %455
  %458 = add nuw nsw i32 %456, %457
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %17, align 1
  %461 = add i64 %412, -44
  %462 = add i64 %461, %428
  %463 = add i64 %410, 31
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  store i32 %434, i32* %464, align 4
  %465 = load i64, i64* %3, align 8
  %466 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %466, i64* %RAX.i67, align 8
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -56
  %469 = add i64 %465, 12
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RCX.i931, align 8
  %473 = shl nsw i64 %472, 2
  %474 = add i64 %466, 1388
  %475 = add i64 %474, %473
  %476 = add i64 %465, 19
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RDX.i1187, align 8
  %480 = add i64 %465, 23
  store i64 %480, i64* %3, align 8
  %481 = load i32, i32* %470, align 4
  %482 = sext i32 %481 to i64
  store i64 %482, i64* %RAX.i67, align 8
  %483 = shl nsw i64 %482, 3
  %484 = add nsw i64 %483, -44
  %485 = add i64 %484, %467
  %486 = add i64 %465, 27
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, %478
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RDX.i1187, align 8
  %491 = icmp ult i32 %489, %478
  %492 = icmp ult i32 %489, %488
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %12, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %13, align 1
  %500 = xor i32 %488, %478
  %501 = xor i32 %500, %489
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %14, align 1
  %505 = icmp eq i32 %489, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %15, align 1
  %507 = lshr i32 %489, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %16, align 1
  %509 = lshr i32 %478, 31
  %510 = lshr i32 %488, 31
  %511 = xor i32 %507, %509
  %512 = xor i32 %507, %510
  %513 = add nuw nsw i32 %511, %512
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %17, align 1
  %516 = add i64 %467, -44
  %517 = add i64 %516, %483
  %518 = add i64 %465, 31
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  store i32 %489, i32* %519, align 4
  %520 = load i64, i64* %3, align 8
  %521 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %521, i64* %RAX.i67, align 8
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -56
  %524 = add i64 %520, 12
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = sext i32 %526 to i64
  store i64 %527, i64* %RCX.i931, align 8
  %528 = shl nsw i64 %527, 2
  %529 = add i64 %521, 1408
  %530 = add i64 %529, %528
  %531 = add i64 %520, 19
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RDX.i1187, align 8
  %535 = add i64 %520, 23
  store i64 %535, i64* %3, align 8
  %536 = load i32, i32* %525, align 4
  %537 = sext i32 %536 to i64
  store i64 %537, i64* %RAX.i67, align 8
  %538 = shl nsw i64 %537, 3
  %539 = add nsw i64 %538, -44
  %540 = add i64 %539, %522
  %541 = add i64 %520, 27
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = add i32 %543, %533
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RDX.i1187, align 8
  %546 = icmp ult i32 %544, %533
  %547 = icmp ult i32 %544, %543
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %12, align 1
  %550 = and i32 %544, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %13, align 1
  %555 = xor i32 %543, %533
  %556 = xor i32 %555, %544
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %14, align 1
  %560 = icmp eq i32 %544, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %15, align 1
  %562 = lshr i32 %544, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %16, align 1
  %564 = lshr i32 %533, 31
  %565 = lshr i32 %543, 31
  %566 = xor i32 %562, %564
  %567 = xor i32 %562, %565
  %568 = add nuw nsw i32 %566, %567
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %17, align 1
  %571 = add i64 %522, -44
  %572 = add i64 %571, %538
  %573 = add i64 %520, 31
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 %544, i32* %574, align 4
  %575 = load i64, i64* %3, align 8
  %576 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %576, i64* %RAX.i67, align 8
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -56
  %579 = add i64 %575, 12
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  store i64 %582, i64* %RCX.i931, align 8
  %583 = shl nsw i64 %582, 2
  %584 = add i64 %576, 1428
  %585 = add i64 %584, %583
  %586 = add i64 %575, 19
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RDX.i1187, align 8
  %590 = add i64 %575, 23
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %580, align 4
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RAX.i67, align 8
  %593 = shl nsw i64 %592, 3
  %594 = add nsw i64 %593, -44
  %595 = add i64 %594, %577
  %596 = add i64 %575, 27
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = add i32 %598, %588
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RDX.i1187, align 8
  %601 = icmp ult i32 %599, %588
  %602 = icmp ult i32 %599, %598
  %603 = or i1 %601, %602
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %12, align 1
  %605 = and i32 %599, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %13, align 1
  %610 = xor i32 %598, %588
  %611 = xor i32 %610, %599
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %14, align 1
  %615 = icmp eq i32 %599, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %15, align 1
  %617 = lshr i32 %599, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %16, align 1
  %619 = lshr i32 %588, 31
  %620 = lshr i32 %598, 31
  %621 = xor i32 %617, %619
  %622 = xor i32 %617, %620
  %623 = add nuw nsw i32 %621, %622
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %17, align 1
  %626 = add i64 %577, -44
  %627 = add i64 %626, %593
  %628 = add i64 %575, 31
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  store i32 %599, i32* %629, align 4
  %630 = load i64, i64* %3, align 8
  %631 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %631, i64* %RAX.i67, align 8
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -56
  %634 = add i64 %630, 12
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %RCX.i931, align 8
  %638 = shl nsw i64 %637, 2
  %639 = add i64 %631, 1448
  %640 = add i64 %639, %638
  %641 = add i64 %630, 19
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RDX.i1187, align 8
  %645 = add i64 %630, 23
  store i64 %645, i64* %3, align 8
  %646 = load i32, i32* %635, align 4
  %647 = sext i32 %646 to i64
  store i64 %647, i64* %RAX.i67, align 8
  %648 = shl nsw i64 %647, 3
  %649 = add nsw i64 %648, -44
  %650 = add i64 %649, %632
  %651 = add i64 %630, 27
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %653, %643
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDX.i1187, align 8
  %656 = icmp ult i32 %654, %643
  %657 = icmp ult i32 %654, %653
  %658 = or i1 %656, %657
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %12, align 1
  %660 = and i32 %654, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %13, align 1
  %665 = xor i32 %653, %643
  %666 = xor i32 %665, %654
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %14, align 1
  %670 = icmp eq i32 %654, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %15, align 1
  %672 = lshr i32 %654, 31
  %673 = trunc i32 %672 to i8
  store i8 %673, i8* %16, align 1
  %674 = lshr i32 %643, 31
  %675 = lshr i32 %653, 31
  %676 = xor i32 %672, %674
  %677 = xor i32 %672, %675
  %678 = add nuw nsw i32 %676, %677
  %679 = icmp eq i32 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %17, align 1
  %681 = add i64 %632, -44
  %682 = add i64 %681, %648
  %683 = add i64 %630, 31
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  store i32 %654, i32* %684, align 4
  %685 = load i64, i64* %3, align 8
  %686 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %686, i64* %RAX.i67, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -56
  %689 = add i64 %685, 12
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = sext i32 %691 to i64
  store i64 %692, i64* %RCX.i931, align 8
  %693 = shl nsw i64 %692, 2
  %694 = add i64 %686, 1328
  %695 = add i64 %694, %693
  %696 = add i64 %685, 19
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RDX.i1187, align 8
  %700 = add i64 %685, 23
  store i64 %700, i64* %3, align 8
  %701 = load i32, i32* %690, align 4
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RAX.i67, align 8
  %703 = shl nsw i64 %702, 3
  %704 = add nsw i64 %703, -44
  %705 = add i64 %704, %687
  %706 = add i64 %685, 27
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = add i32 %708, %698
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RDX.i1187, align 8
  %711 = icmp ult i32 %709, %698
  %712 = icmp ult i32 %709, %708
  %713 = or i1 %711, %712
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %12, align 1
  %715 = and i32 %709, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %13, align 1
  %720 = xor i32 %708, %698
  %721 = xor i32 %720, %709
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %14, align 1
  %725 = icmp eq i32 %709, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %15, align 1
  %727 = lshr i32 %709, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %16, align 1
  %729 = lshr i32 %698, 31
  %730 = lshr i32 %708, 31
  %731 = xor i32 %727, %729
  %732 = xor i32 %727, %730
  %733 = add nuw nsw i32 %731, %732
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %17, align 1
  %736 = add i64 %687, -44
  %737 = add i64 %736, %703
  %738 = add i64 %685, 31
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  store i32 %709, i32* %739, align 4
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -56
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 3
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %741 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = add i32 %745, 1
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i67, align 8
  %748 = icmp eq i32 %745, -1
  %749 = icmp eq i32 %746, 0
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %12, align 1
  %752 = and i32 %746, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %13, align 1
  %757 = xor i32 %746, %745
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %14, align 1
  %761 = zext i1 %749 to i8
  store i8 %761, i8* %15, align 1
  %762 = lshr i32 %746, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %16, align 1
  %764 = lshr i32 %745, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %762
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %17, align 1
  %769 = add i64 %742, 9
  store i64 %769, i64* %3, align 8
  store i32 %746, i32* %744, align 4
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, -311
  store i64 %771, i64* %3, align 8
  br label %block_.L_4360ea

block_.L_436226:                                  ; preds = %block_.L_4360ea
  %RSI.i1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI.i1995, align 8
  %772 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %772, i64* %RAX.i67, align 8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %774 = bitcast [32 x %union.VectorReg]* %773 to i8*
  %775 = add i64 %772, 48
  %776 = add i64 %184, 23
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = bitcast [32 x %union.VectorReg]* %773 to float*
  %780 = bitcast [32 x %union.VectorReg]* %773 to i32*
  store i32 %778, i32* %780, align 1
  %781 = getelementptr inbounds i8, i8* %774, i64 4
  %782 = bitcast i8* %781 to float*
  store float 0.000000e+00, float* %782, align 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %784 = bitcast i64* %783 to float*
  store float 0.000000e+00, float* %784, align 1
  %785 = getelementptr inbounds i8, i8* %774, i64 12
  %786 = bitcast i8* %785 to float*
  store float 0.000000e+00, float* %786, align 1
  %787 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %787, i64* %RAX.i67, align 8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1986 = getelementptr inbounds %union.anon, %union.anon* %788, i64 0, i32 0
  %789 = add i64 %787, 1236
  %790 = add i64 %184, 37
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = add i32 %792, 1
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RCX.i1986, align 8
  %795 = icmp eq i32 %792, -1
  %796 = icmp eq i32 %793, 0
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %12, align 1
  %799 = and i32 %793, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %13, align 1
  %804 = xor i32 %793, %792
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %14, align 1
  %808 = zext i1 %796 to i8
  store i8 %808, i8* %15, align 1
  %809 = lshr i32 %793, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %16, align 1
  %811 = lshr i32 %792, 31
  %812 = xor i32 %809, %811
  %813 = add nuw nsw i32 %812, %809
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %17, align 1
  %ECX.i1980 = bitcast %union.anon* %788 to i32*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %817 = bitcast %union.VectorReg* %816 to i8*
  %818 = bitcast %union.VectorReg* %816 to <2 x i32>*
  %819 = load <2 x i32>, <2 x i32>* %818, align 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %821 = bitcast i64* %820 to <2 x i32>*
  %822 = load <2 x i32>, <2 x i32>* %821, align 1
  %823 = sitofp i32 %793 to float
  %824 = bitcast %union.VectorReg* %816 to float*
  store float %823, float* %824, align 1
  %825 = extractelement <2 x i32> %819, i32 1
  %826 = getelementptr inbounds i8, i8* %817, i64 4
  %827 = bitcast i8* %826 to i32*
  store i32 %825, i32* %827, align 1
  %828 = extractelement <2 x i32> %822, i32 0
  %829 = bitcast i64* %820 to i32*
  store i32 %828, i32* %829, align 1
  %830 = extractelement <2 x i32> %822, i32 1
  %831 = getelementptr inbounds i8, i8* %817, i64 12
  %832 = bitcast i8* %831 to i32*
  store i32 %830, i32* %832, align 1
  %833 = bitcast [32 x %union.VectorReg]* %773 to <2 x float>*
  %834 = load <2 x float>, <2 x float>* %833, align 1
  %835 = bitcast i64* %783 to <2 x i32>*
  %836 = load <2 x i32>, <2 x i32>* %835, align 1
  %837 = bitcast %union.VectorReg* %816 to <2 x float>*
  %838 = load <2 x float>, <2 x float>* %837, align 1
  %839 = extractelement <2 x float> %834, i32 0
  %840 = extractelement <2 x float> %838, i32 0
  %841 = fmul float %839, %840
  store float %841, float* %779, align 1
  %842 = bitcast <2 x float> %834 to <2 x i32>
  %843 = extractelement <2 x i32> %842, i32 1
  %844 = bitcast i8* %781 to i32*
  store i32 %843, i32* %844, align 1
  %845 = extractelement <2 x i32> %836, i32 0
  %846 = bitcast i64* %783 to i32*
  store i32 %845, i32* %846, align 1
  %847 = extractelement <2 x i32> %836, i32 1
  %848 = bitcast i8* %785 to i32*
  store i32 %847, i32* %848, align 1
  store i64 %787, i64* %RAX.i67, align 8
  %849 = add i64 %787, 20
  %850 = add i64 %184, 59
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, 1
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RCX.i1986, align 8
  %855 = icmp eq i32 %852, -1
  %856 = icmp eq i32 %853, 0
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %12, align 1
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %13, align 1
  %864 = xor i32 %853, %852
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %14, align 1
  %868 = zext i1 %856 to i8
  store i8 %868, i8* %15, align 1
  %869 = lshr i32 %853, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %16, align 1
  %871 = lshr i32 %852, 31
  %872 = xor i32 %869, %871
  %873 = add nuw nsw i32 %872, %869
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %17, align 1
  %876 = bitcast <2 x float> %838 to <2 x i32>
  %877 = load <2 x i32>, <2 x i32>* %821, align 1
  %878 = sitofp i32 %853 to float
  store float %878, float* %824, align 1
  %879 = extractelement <2 x i32> %876, i32 1
  store i32 %879, i32* %827, align 1
  %880 = extractelement <2 x i32> %877, i32 0
  store i32 %880, i32* %829, align 1
  %881 = extractelement <2 x i32> %877, i32 1
  store i32 %881, i32* %832, align 1
  %882 = load <2 x float>, <2 x float>* %833, align 1
  %883 = load <2 x i32>, <2 x i32>* %835, align 1
  %884 = load <2 x float>, <2 x float>* %837, align 1
  %885 = extractelement <2 x float> %882, i32 0
  %886 = extractelement <2 x float> %884, i32 0
  %887 = fdiv float %885, %886
  store float %887, float* %779, align 1
  %888 = bitcast <2 x float> %882 to <2 x i32>
  %889 = extractelement <2 x i32> %888, i32 1
  store i32 %889, i32* %844, align 1
  %890 = extractelement <2 x i32> %883, i32 0
  store i32 %890, i32* %846, align 1
  %891 = extractelement <2 x i32> %883, i32 1
  store i32 %891, i32* %848, align 1
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -88
  %894 = add i64 %184, 75
  store i64 %894, i64* %3, align 8
  %895 = load <2 x float>, <2 x float>* %833, align 1
  %896 = extractelement <2 x float> %895, i32 0
  %897 = inttoptr i64 %893 to float*
  store float %896, float* %897, align 4
  %898 = load i64, i64* %3, align 8
  %899 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %899, i64* %RAX.i67, align 8
  %900 = add i64 %899, 704
  %901 = add i64 %898, 16
  store i64 %901, i64* %3, align 8
  %902 = bitcast [32 x %union.VectorReg]* %773 to <2 x i32>*
  %903 = load <2 x i32>, <2 x i32>* %902, align 1
  %904 = load <2 x i32>, <2 x i32>* %835, align 1
  %905 = inttoptr i64 %900 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = sitofp i32 %906 to float
  store float %907, float* %779, align 1
  %908 = extractelement <2 x i32> %903, i32 1
  store i32 %908, i32* %844, align 1
  %909 = extractelement <2 x i32> %904, i32 0
  store i32 %909, i32* %846, align 1
  %910 = extractelement <2 x i32> %904, i32 1
  store i32 %910, i32* %848, align 1
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -88
  %913 = add i64 %898, 21
  store i64 %913, i64* %3, align 8
  %914 = load <2 x float>, <2 x float>* %833, align 1
  %915 = load <2 x i32>, <2 x i32>* %835, align 1
  %916 = inttoptr i64 %912 to float*
  %917 = load float, float* %916, align 4
  %918 = extractelement <2 x float> %914, i32 0
  %919 = fmul float %918, %917
  store float %919, float* %779, align 1
  %920 = bitcast <2 x float> %914 to <2 x i32>
  %921 = extractelement <2 x i32> %920, i32 1
  store i32 %921, i32* %844, align 1
  %922 = extractelement <2 x i32> %915, i32 0
  store i32 %922, i32* %846, align 1
  %923 = extractelement <2 x i32> %915, i32 1
  store i32 %923, i32* %848, align 1
  %924 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %924, i64* %RAX.i67, align 8
  %925 = add i64 %924, 8
  %926 = add i64 %898, 32
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %930 = add i32 %929, %928
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RCX.i1986, align 8
  %932 = icmp ult i32 %930, %928
  %933 = icmp ult i32 %930, %929
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %12, align 1
  %936 = and i32 %930, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %13, align 1
  %941 = xor i32 %929, %928
  %942 = xor i32 %941, %930
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %14, align 1
  %946 = icmp eq i32 %930, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %15, align 1
  %948 = lshr i32 %930, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %16, align 1
  %950 = lshr i32 %928, 31
  %951 = lshr i32 %929, 31
  %952 = xor i32 %948, %950
  %953 = xor i32 %948, %951
  %954 = add nuw nsw i32 %952, %953
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %17, align 1
  %957 = load <2 x i32>, <2 x i32>* %818, align 1
  %958 = load <2 x i32>, <2 x i32>* %821, align 1
  %959 = sitofp i32 %930 to float
  store float %959, float* %824, align 1
  %960 = extractelement <2 x i32> %957, i32 1
  store i32 %960, i32* %827, align 1
  %961 = extractelement <2 x i32> %958, i32 0
  store i32 %961, i32* %829, align 1
  %962 = extractelement <2 x i32> %958, i32 1
  store i32 %962, i32* %832, align 1
  %963 = load <2 x float>, <2 x float>* %833, align 1
  %964 = load <2 x i32>, <2 x i32>* %835, align 1
  %965 = load <2 x float>, <2 x float>* %837, align 1
  %966 = extractelement <2 x float> %963, i32 0
  %967 = extractelement <2 x float> %965, i32 0
  %968 = fdiv float %966, %967
  store float %968, float* %779, align 1
  %969 = bitcast <2 x float> %963 to <2 x i32>
  %970 = extractelement <2 x i32> %969, i32 1
  store i32 %970, i32* %844, align 1
  %971 = extractelement <2 x i32> %964, i32 0
  store i32 %971, i32* %846, align 1
  %972 = extractelement <2 x i32> %964, i32 1
  store i32 %972, i32* %848, align 1
  %973 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %974 = add i64 %973, 716
  %975 = add i64 %898, 63
  store i64 %975, i64* %3, align 8
  %976 = load <2 x float>, <2 x float>* %833, align 1
  %977 = extractelement <2 x float> %976, i32 0
  %978 = inttoptr i64 %974 to float*
  store float %977, float* %978, align 4
  %979 = load i64, i64* %3, align 8
  %980 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %980, i64* %RAX.i67, align 8
  %981 = add i64 %980, 708
  %982 = add i64 %979, 16
  store i64 %982, i64* %3, align 8
  %983 = load <2 x i32>, <2 x i32>* %902, align 1
  %984 = load <2 x i32>, <2 x i32>* %835, align 1
  %985 = inttoptr i64 %981 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = sitofp i32 %986 to float
  store float %987, float* %779, align 1
  %988 = extractelement <2 x i32> %983, i32 1
  store i32 %988, i32* %844, align 1
  %989 = extractelement <2 x i32> %984, i32 0
  store i32 %989, i32* %846, align 1
  %990 = extractelement <2 x i32> %984, i32 1
  store i32 %990, i32* %848, align 1
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -88
  %993 = add i64 %979, 21
  store i64 %993, i64* %3, align 8
  %994 = load <2 x float>, <2 x float>* %833, align 1
  %995 = load <2 x i32>, <2 x i32>* %835, align 1
  %996 = inttoptr i64 %992 to float*
  %997 = load float, float* %996, align 4
  %998 = extractelement <2 x float> %994, i32 0
  %999 = fmul float %998, %997
  store float %999, float* %779, align 1
  %1000 = bitcast <2 x float> %994 to <2 x i32>
  %1001 = extractelement <2 x i32> %1000, i32 1
  store i32 %1001, i32* %844, align 1
  %1002 = extractelement <2 x i32> %995, i32 0
  store i32 %1002, i32* %846, align 1
  %1003 = extractelement <2 x i32> %995, i32 1
  store i32 %1003, i32* %848, align 1
  %1004 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1004, i64* %RAX.i67, align 8
  %1005 = add i64 %1004, 8
  %1006 = add i64 %979, 32
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %1010 = add i32 %1009, %1008
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RCX.i1986, align 8
  %1012 = icmp ult i32 %1010, %1008
  %1013 = icmp ult i32 %1010, %1009
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %12, align 1
  %1016 = and i32 %1010, 255
  %1017 = tail call i32 @llvm.ctpop.i32(i32 %1016)
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  store i8 %1020, i8* %13, align 1
  %1021 = xor i32 %1009, %1008
  %1022 = xor i32 %1021, %1010
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %14, align 1
  %1026 = icmp eq i32 %1010, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %15, align 1
  %1028 = lshr i32 %1010, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %16, align 1
  %1030 = lshr i32 %1008, 31
  %1031 = lshr i32 %1009, 31
  %1032 = xor i32 %1028, %1030
  %1033 = xor i32 %1028, %1031
  %1034 = add nuw nsw i32 %1032, %1033
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %17, align 1
  %1037 = load <2 x i32>, <2 x i32>* %818, align 1
  %1038 = load <2 x i32>, <2 x i32>* %821, align 1
  %1039 = sitofp i32 %1010 to float
  store float %1039, float* %824, align 1
  %1040 = extractelement <2 x i32> %1037, i32 1
  store i32 %1040, i32* %827, align 1
  %1041 = extractelement <2 x i32> %1038, i32 0
  store i32 %1041, i32* %829, align 1
  %1042 = extractelement <2 x i32> %1038, i32 1
  store i32 %1042, i32* %832, align 1
  %1043 = load <2 x float>, <2 x float>* %833, align 1
  %1044 = load <2 x i32>, <2 x i32>* %835, align 1
  %1045 = load <2 x float>, <2 x float>* %837, align 1
  %1046 = extractelement <2 x float> %1043, i32 0
  %1047 = extractelement <2 x float> %1045, i32 0
  %1048 = fdiv float %1046, %1047
  store float %1048, float* %779, align 1
  %1049 = bitcast <2 x float> %1043 to <2 x i32>
  %1050 = extractelement <2 x i32> %1049, i32 1
  store i32 %1050, i32* %844, align 1
  %1051 = extractelement <2 x i32> %1044, i32 0
  store i32 %1051, i32* %846, align 1
  %1052 = extractelement <2 x i32> %1044, i32 1
  store i32 %1052, i32* %848, align 1
  %1053 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %1054 = add i64 %1053, 720
  %1055 = add i64 %979, 63
  store i64 %1055, i64* %3, align 8
  %1056 = load <2 x float>, <2 x float>* %833, align 1
  %1057 = extractelement <2 x float> %1056, i32 0
  %1058 = inttoptr i64 %1054 to float*
  store float %1057, float* %1058, align 4
  %1059 = load i64, i64* %3, align 8
  %1060 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %1060, i64* %RAX.i67, align 8
  %1061 = add i64 %1060, 712
  %1062 = add i64 %1059, 16
  store i64 %1062, i64* %3, align 8
  %1063 = load <2 x i32>, <2 x i32>* %902, align 1
  %1064 = load <2 x i32>, <2 x i32>* %835, align 1
  %1065 = inttoptr i64 %1061 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sitofp i32 %1066 to float
  store float %1067, float* %779, align 1
  %1068 = extractelement <2 x i32> %1063, i32 1
  store i32 %1068, i32* %844, align 1
  %1069 = extractelement <2 x i32> %1064, i32 0
  store i32 %1069, i32* %846, align 1
  %1070 = extractelement <2 x i32> %1064, i32 1
  store i32 %1070, i32* %848, align 1
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -88
  %1073 = add i64 %1059, 21
  store i64 %1073, i64* %3, align 8
  %1074 = load <2 x float>, <2 x float>* %833, align 1
  %1075 = load <2 x i32>, <2 x i32>* %835, align 1
  %1076 = inttoptr i64 %1072 to float*
  %1077 = load float, float* %1076, align 4
  %1078 = extractelement <2 x float> %1074, i32 0
  %1079 = fmul float %1078, %1077
  store float %1079, float* %779, align 1
  %1080 = bitcast <2 x float> %1074 to <2 x i32>
  %1081 = extractelement <2 x i32> %1080, i32 1
  store i32 %1081, i32* %844, align 1
  %1082 = extractelement <2 x i32> %1075, i32 0
  store i32 %1082, i32* %846, align 1
  %1083 = extractelement <2 x i32> %1075, i32 1
  store i32 %1083, i32* %848, align 1
  %1084 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1084, i64* %RAX.i67, align 8
  %1085 = add i64 %1084, 8
  %1086 = add i64 %1059, 32
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %1090 = add i32 %1089, %1088
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i1986, align 8
  %1092 = icmp ult i32 %1090, %1088
  %1093 = icmp ult i32 %1090, %1089
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %12, align 1
  %1096 = and i32 %1090, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %13, align 1
  %1101 = xor i32 %1089, %1088
  %1102 = xor i32 %1101, %1090
  %1103 = lshr i32 %1102, 4
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  store i8 %1105, i8* %14, align 1
  %1106 = icmp eq i32 %1090, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %15, align 1
  %1108 = lshr i32 %1090, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %16, align 1
  %1110 = lshr i32 %1088, 31
  %1111 = lshr i32 %1089, 31
  %1112 = xor i32 %1108, %1110
  %1113 = xor i32 %1108, %1111
  %1114 = add nuw nsw i32 %1112, %1113
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %17, align 1
  %1117 = load <2 x i32>, <2 x i32>* %818, align 1
  %1118 = load <2 x i32>, <2 x i32>* %821, align 1
  %1119 = sitofp i32 %1090 to float
  store float %1119, float* %824, align 1
  %1120 = extractelement <2 x i32> %1117, i32 1
  store i32 %1120, i32* %827, align 1
  %1121 = extractelement <2 x i32> %1118, i32 0
  store i32 %1121, i32* %829, align 1
  %1122 = extractelement <2 x i32> %1118, i32 1
  store i32 %1122, i32* %832, align 1
  %1123 = load <2 x float>, <2 x float>* %833, align 1
  %1124 = load <2 x i32>, <2 x i32>* %835, align 1
  %1125 = load <2 x float>, <2 x float>* %837, align 1
  %1126 = extractelement <2 x float> %1123, i32 0
  %1127 = extractelement <2 x float> %1125, i32 0
  %1128 = fdiv float %1126, %1127
  store float %1128, float* %779, align 1
  %1129 = bitcast <2 x float> %1123 to <2 x i32>
  %1130 = extractelement <2 x i32> %1129, i32 1
  store i32 %1130, i32* %844, align 1
  %1131 = extractelement <2 x i32> %1124, i32 0
  store i32 %1131, i32* %846, align 1
  %1132 = extractelement <2 x i32> %1124, i32 1
  store i32 %1132, i32* %848, align 1
  %1133 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %1133, i64* %RAX.i67, align 8
  %1134 = add i64 %1133, 724
  %1135 = add i64 %1059, 63
  store i64 %1135, i64* %3, align 8
  %1136 = load <2 x float>, <2 x float>* %833, align 1
  %1137 = extractelement <2 x float> %1136, i32 0
  %1138 = inttoptr i64 %1134 to float*
  store float %1137, float* %1138, align 4
  %RDI.i1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %1139 = load i64, i64* %3, align 8
  %1140 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1140, i64* %RDI.i1881, align 8
  %AL.i1879 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1879, align 1
  %1141 = add i64 %1139, -217630
  %1142 = add i64 %1139, 15
  %1143 = load i64, i64* %6, align 8
  %1144 = add i64 %1143, -8
  %1145 = inttoptr i64 %1144 to i64*
  store i64 %1142, i64* %1145, align 8
  store i64 %1144, i64* %6, align 8
  store i64 %1141, i64* %3, align 8
  %1146 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %1147 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0609_type* @G__0x4c0609 to i64), i64* %RSI.i1995, align 8
  %1148 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1148, i64* %RDI.i1881, align 8
  %1149 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1149, i64* %RDX.i1187, align 8
  %1150 = add i64 %1149, 48
  %1151 = add i64 %1147, 31
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  store i32 %1153, i32* %780, align 1
  store float 0.000000e+00, float* %782, align 1
  store float 0.000000e+00, float* %784, align 1
  store float 0.000000e+00, float* %786, align 1
  %1154 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1154, i64* %RDX.i1187, align 8
  %1155 = add i64 %1154, 20
  %1156 = add i64 %1147, 42
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = add i32 %1158, 1
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RCX.i1986, align 8
  %1161 = icmp eq i32 %1158, -1
  %1162 = icmp eq i32 %1159, 0
  %1163 = or i1 %1161, %1162
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %12, align 1
  %1165 = and i32 %1159, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %13, align 1
  %1170 = xor i32 %1159, %1158
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %14, align 1
  %1174 = zext i1 %1162 to i8
  store i8 %1174, i8* %15, align 1
  %1175 = lshr i32 %1159, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %16, align 1
  %1177 = lshr i32 %1158, 31
  %1178 = xor i32 %1175, %1177
  %1179 = add nuw nsw i32 %1178, %1175
  %1180 = icmp eq i32 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %17, align 1
  %1182 = load <2 x i32>, <2 x i32>* %818, align 1
  %1183 = load <2 x i32>, <2 x i32>* %821, align 1
  %1184 = sitofp i32 %1159 to float
  store float %1184, float* %824, align 1
  %1185 = extractelement <2 x i32> %1182, i32 1
  store i32 %1185, i32* %827, align 1
  %1186 = extractelement <2 x i32> %1183, i32 0
  store i32 %1186, i32* %829, align 1
  %1187 = extractelement <2 x i32> %1183, i32 1
  store i32 %1187, i32* %832, align 1
  %1188 = load <2 x float>, <2 x float>* %833, align 1
  %1189 = load <2 x i32>, <2 x i32>* %835, align 1
  %1190 = load <2 x float>, <2 x float>* %837, align 1
  %1191 = extractelement <2 x float> %1188, i32 0
  %1192 = extractelement <2 x float> %1190, i32 0
  %1193 = fdiv float %1191, %1192
  store float %1193, float* %779, align 1
  %1194 = bitcast <2 x float> %1188 to <2 x i32>
  %1195 = extractelement <2 x i32> %1194, i32 1
  store i32 %1195, i32* %844, align 1
  %1196 = extractelement <2 x i32> %1189, i32 0
  store i32 %1196, i32* %846, align 1
  %1197 = extractelement <2 x i32> %1189, i32 1
  store i32 %1197, i32* %848, align 1
  %1198 = load <2 x float>, <2 x float>* %833, align 1
  %1199 = extractelement <2 x float> %1198, i32 0
  %1200 = fpext float %1199 to double
  %1201 = bitcast [32 x %union.VectorReg]* %773 to double*
  store double %1200, double* %1201, align 1
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -1216
  %1204 = load i32, i32* %EAX.i83, align 4
  %1205 = add i64 %1147, 63
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1203 to i32*
  store i32 %1204, i32* %1206, align 4
  %1207 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1879, align 1
  %1208 = add i64 %1207, -217708
  %1209 = add i64 %1207, 7
  %1210 = load i64, i64* %6, align 8
  %1211 = add i64 %1210, -8
  %1212 = inttoptr i64 %1211 to i64*
  store i64 %1209, i64* %1212, align 8
  store i64 %1211, i64* %6, align 8
  store i64 %1208, i64* %3, align 8
  %1213 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1146)
  %1214 = load i64, i64* %3, align 8
  %1215 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1215, i64* %RDX.i1187, align 8
  %1216 = add i64 %1215, 24
  %1217 = add i64 %1214, 12
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  store i8 0, i8* %12, align 1
  %1220 = and i32 %1219, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1225 = icmp eq i32 %1219, 0
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %15, align 1
  %1227 = lshr i32 %1219, 31
  %1228 = trunc i32 %1227 to i8
  store i8 %1228, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -1220
  %1231 = load i32, i32* %EAX.i83, align 4
  %1232 = add i64 %1214, 18
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1230 to i32*
  store i32 %1231, i32* %1233, align 4
  %1234 = load i64, i64* %3, align 8
  %1235 = load i8, i8* %15, align 1
  %1236 = icmp ne i8 %1235, 0
  %.v115 = select i1 %1236, i64 96, i64 6
  %1237 = add i64 %1234, %.v115
  store i64 %1237, i64* %3, align 8
  %cmpBr_436395 = icmp eq i8 %1235, 1
  br i1 %cmpBr_436395, label %block_.L_4363f5, label %block_43639b

block_43639b:                                     ; preds = %block_.L_436226
  %1238 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1238, i64* %RAX.i67, align 8
  %1239 = add i64 %1238, 28
  %1240 = add i64 %1237, 12
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  store i8 0, i8* %12, align 1
  %1243 = and i32 %1242, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1248 = icmp eq i32 %1242, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %15, align 1
  %1250 = lshr i32 %1242, 31
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v88 = select i1 %1248, i64 54, i64 18
  %1252 = add i64 %1237, %.v88
  %1253 = add i64 %1252, 10
  store i64 %1253, i64* %3, align 8
  br i1 %1248, label %block_.L_4363d1, label %block_4363ad

block_4363ad:                                     ; preds = %block_43639b
  store i64 ptrtoint (%G__0x4c0635_type* @G__0x4c0635 to i64), i64* %RSI.i1995, align 8
  %1254 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1254, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1255 = add i64 %1252, -217757
  %1256 = add i64 %1252, 25
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %1260 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1213)
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -1224
  %1263 = load i32, i32* %EAX.i83, align 4
  %1264 = load i64, i64* %3, align 8
  %1265 = add i64 %1264, 6
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1262 to i32*
  store i32 %1263, i32* %1266, align 4
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 36
  store i64 %1268, i64* %3, align 8
  br label %block_.L_4363f0

block_.L_4363d1:                                  ; preds = %block_43639b
  store i64 ptrtoint (%G__0x4c0669_type* @G__0x4c0669 to i64), i64* %RSI.i1995, align 8
  %1269 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1269, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1270 = add i64 %1252, -217793
  %1271 = add i64 %1252, 25
  %1272 = load i64, i64* %6, align 8
  %1273 = add i64 %1272, -8
  %1274 = inttoptr i64 %1273 to i64*
  store i64 %1271, i64* %1274, align 8
  store i64 %1273, i64* %6, align 8
  store i64 %1270, i64* %3, align 8
  %1275 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1213)
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -1228
  %1278 = load i32, i32* %EAX.i83, align 4
  %1279 = load i64, i64* %3, align 8
  %1280 = add i64 %1279, 6
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1277 to i32*
  store i32 %1278, i32* %1281, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_4363f0

block_.L_4363f0:                                  ; preds = %block_.L_4363d1, %block_4363ad
  %1282 = phi i64 [ %.pre57, %block_.L_4363d1 ], [ %1268, %block_4363ad ]
  %MEMORY.4 = phi %struct.Memory* [ %1275, %block_.L_4363d1 ], [ %1260, %block_4363ad ]
  %1283 = add i64 %1282, 36
  store i64 %1283, i64* %3, align 8
  br label %block_.L_436414

block_.L_4363f5:                                  ; preds = %block_.L_436226
  store i64 ptrtoint (%G__0x4c0694_type* @G__0x4c0694 to i64), i64* %RSI.i1995, align 8
  %1284 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1284, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1285 = add i64 %1237, -217829
  %1286 = add i64 %1237, 25
  %1287 = load i64, i64* %6, align 8
  %1288 = add i64 %1287, -8
  %1289 = inttoptr i64 %1288 to i64*
  store i64 %1286, i64* %1289, align 8
  store i64 %1288, i64* %6, align 8
  store i64 %1285, i64* %3, align 8
  %1290 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1213)
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -1232
  %1293 = load i32, i32* %EAX.i83, align 4
  %1294 = load i64, i64* %3, align 8
  %1295 = add i64 %1294, 6
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1292 to i32*
  store i32 %1293, i32* %1296, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_436414

block_.L_436414:                                  ; preds = %block_.L_4363f5, %block_.L_4363f0
  %1297 = phi i64 [ %.pre58, %block_.L_4363f5 ], [ %1283, %block_.L_4363f0 ]
  %MEMORY.5 = phi %struct.Memory* [ %1290, %block_.L_4363f5 ], [ %MEMORY.4, %block_.L_4363f0 ]
  store i64 ptrtoint (%G__0x4c06c3_type* @G__0x4c06c3 to i64), i64* %RSI.i1995, align 8
  %1298 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1298, i64* %RDI.i1881, align 8
  %1299 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1299, i64* %RAX.i67, align 8
  %1300 = add i64 %1299, 64
  %1301 = add i64 %1297, 29
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RDX.i1187, align 8
  store i64 %1299, i64* %RAX.i67, align 8
  %1305 = add i64 %1299, 68
  %1306 = add i64 %1297, 40
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1310 = add i64 %1297, -217860
  %1311 = add i64 %1297, 47
  %1312 = load i64, i64* %6, align 8
  %1313 = add i64 %1312, -8
  %1314 = inttoptr i64 %1313 to i64*
  store i64 %1311, i64* %1314, align 8
  store i64 %1313, i64* %6, align 8
  store i64 %1310, i64* %3, align 8
  %1315 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.5)
  %1316 = load i64, i64* %3, align 8
  %1317 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1317, i64* %RSI.i1995, align 8
  %1318 = add i64 %1317, 76
  %1319 = add i64 %1316, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  store i8 0, i8* %12, align 1
  %1322 = and i32 %1321, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1327 = icmp eq i32 %1321, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %15, align 1
  %1329 = lshr i32 %1321, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1331 = load i64, i64* %RBP.i, align 8
  %1332 = add i64 %1331, -1236
  %1333 = load i32, i32* %EAX.i83, align 4
  %1334 = add i64 %1316, 18
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1332 to i32*
  store i32 %1333, i32* %1335, align 4
  %1336 = load i64, i64* %3, align 8
  %1337 = load i8, i8* %15, align 1
  %1338 = icmp ne i8 %1337, 0
  %.v116 = select i1 %1338, i64 42, i64 6
  %1339 = add i64 %1336, %.v116
  %cmpBr_436455 = icmp eq i8 %1337, 1
  %1340 = add i64 %1339, 10
  store i64 %1340, i64* %3, align 8
  br i1 %cmpBr_436455, label %block_.L_43647f, label %block_43645b

block_43645b:                                     ; preds = %block_.L_436414
  store i64 ptrtoint (%G__0x4c06ef_type* @G__0x4c06ef to i64), i64* %RSI.i1995, align 8
  %1341 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1341, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1342 = add i64 %1339, -217931
  %1343 = add i64 %1339, 25
  %1344 = load i64, i64* %6, align 8
  %1345 = add i64 %1344, -8
  %1346 = inttoptr i64 %1345 to i64*
  store i64 %1343, i64* %1346, align 8
  store i64 %1345, i64* %6, align 8
  store i64 %1342, i64* %3, align 8
  %1347 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1315)
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -1240
  %1350 = load i32, i32* %EAX.i83, align 4
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 6
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1349 to i32*
  store i32 %1350, i32* %1353, align 4
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, 36
  store i64 %1355, i64* %3, align 8
  br label %block_.L_43649e

block_.L_43647f:                                  ; preds = %block_.L_436414
  store i64 ptrtoint (%G__0x4c0718_type* @G__0x4c0718 to i64), i64* %RSI.i1995, align 8
  %1356 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1356, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1357 = add i64 %1339, -217967
  %1358 = add i64 %1339, 25
  %1359 = load i64, i64* %6, align 8
  %1360 = add i64 %1359, -8
  %1361 = inttoptr i64 %1360 to i64*
  store i64 %1358, i64* %1361, align 8
  store i64 %1360, i64* %6, align 8
  store i64 %1357, i64* %3, align 8
  %1362 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1315)
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -1244
  %1365 = load i32, i32* %EAX.i83, align 4
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 6
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1364 to i32*
  store i32 %1365, i32* %1368, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_43649e

block_.L_43649e:                                  ; preds = %block_.L_43647f, %block_43645b
  %1369 = phi i64 [ %.pre59, %block_.L_43647f ], [ %1355, %block_43645b ]
  %MEMORY.6 = phi %struct.Memory* [ %1362, %block_.L_43647f ], [ %1347, %block_43645b ]
  store i64 ptrtoint (%G__0x4c0742_type* @G__0x4c0742 to i64), i64* %RSI.i1995, align 8
  %1370 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1370, i64* %RDI.i1881, align 8
  %1371 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1371, i64* %RAX.i67, align 8
  %1372 = add i64 %1371, 32
  %1373 = add i64 %1369, 29
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RDX.i1187, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1377 = add i64 %1369, -217998
  %1378 = add i64 %1369, 36
  %1379 = load i64, i64* %6, align 8
  %1380 = add i64 %1379, -8
  %1381 = inttoptr i64 %1380 to i64*
  store i64 %1378, i64* %1381, align 8
  store i64 %1380, i64* %6, align 8
  store i64 %1377, i64* %3, align 8
  %1382 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.6)
  %1383 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c076b_type* @G__0x4c076b to i64), i64* %RSI.i1995, align 8
  %1384 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1384, i64* %RDI.i1881, align 8
  %1385 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1385, i64* %RCX.i1986, align 8
  %1386 = add i64 %1385, 36
  %1387 = add i64 %1383, 29
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RDX.i1187, align 8
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -1248
  %1393 = load i32, i32* %EAX.i83, align 4
  %1394 = add i64 %1383, 35
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1392 to i32*
  store i32 %1393, i32* %1395, align 4
  %1396 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1397 = add i64 %1396, -218069
  %1398 = add i64 %1396, 7
  %1399 = load i64, i64* %6, align 8
  %1400 = add i64 %1399, -8
  %1401 = inttoptr i64 %1400 to i64*
  store i64 %1398, i64* %1401, align 8
  store i64 %1400, i64* %6, align 8
  store i64 %1397, i64* %3, align 8
  %1402 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1382)
  %1403 = load i64, i64* %3, align 8
  %1404 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1404, i64* %RDI.i1881, align 8
  %1405 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1405, i64* %RCX.i1986, align 8
  %1406 = add i64 %1405, 40
  %1407 = add i64 %1403, 20
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  store i8 0, i8* %12, align 1
  %1410 = and i32 %1409, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1415 = icmp eq i32 %1409, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %15, align 1
  %1417 = lshr i32 %1409, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -1252
  %1421 = load i32, i32* %EAX.i83, align 4
  %1422 = add i64 %1403, 26
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1420 to i32*
  store i32 %1421, i32* %1423, align 4
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -1264
  %1426 = load i64, i64* %RDI.i1881, align 8
  %1427 = load i64, i64* %3, align 8
  %1428 = add i64 %1427, 7
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1425 to i64*
  store i64 %1426, i64* %1429, align 8
  %1430 = load i64, i64* %3, align 8
  %1431 = load i8, i8* %15, align 1
  %1432 = icmp ne i8 %1431, 0
  %.v117 = select i1 %1432, i64 28, i64 6
  %1433 = add i64 %1430, %.v117
  %cmpBr_43650d = icmp eq i8 %1431, 1
  %1434 = add i64 %1433, 8
  store i64 %1434, i64* %3, align 8
  %1435 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1435, i64* %RAX.i67, align 8
  br i1 %cmpBr_43650d, label %block_.L_436529, label %block_436513

block_436513:                                     ; preds = %block_.L_43649e
  %1436 = add i64 %1435, 40
  %1437 = add i64 %1433, 11
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RCX.i1986, align 8
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -1268
  %1443 = add i64 %1433, 17
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  store i32 %1439, i32* %1444, align 4
  %1445 = load i64, i64* %3, align 8
  %1446 = add i64 %1445, 22
  store i64 %1446, i64* %3, align 8
  br label %block_.L_43653a

block_.L_436529:                                  ; preds = %block_.L_43649e
  %1447 = add i64 %1435, 36
  %1448 = add i64 %1433, 11
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RCX.i1986, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -1268
  %1454 = add i64 %1433, 17
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  store i32 %1450, i32* %1455, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_43653a

block_.L_43653a:                                  ; preds = %block_.L_436529, %block_436513
  %1456 = phi i64 [ %.pre60, %block_.L_436529 ], [ %1446, %block_436513 ]
  %1457 = load i64, i64* %RBP.i, align 8
  %1458 = add i64 %1457, -1268
  %1459 = add i64 %1456, 6
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i32*
  %1461 = load i32, i32* %1460, align 4
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c0794_type* @G__0x4c0794 to i64), i64* %RSI.i1995, align 8
  %1463 = add i64 %1457, -1264
  %1464 = add i64 %1456, 23
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i64*
  %1466 = load i64, i64* %1465, align 8
  store i64 %1466, i64* %RDI.i1881, align 8
  store i64 %1462, i64* %RDX.i1187, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1467 = add i64 %1456, -218154
  %1468 = add i64 %1456, 32
  %1469 = load i64, i64* %6, align 8
  %1470 = add i64 %1469, -8
  %1471 = inttoptr i64 %1470 to i64*
  store i64 %1468, i64* %1471, align 8
  store i64 %1470, i64* %6, align 8
  store i64 %1467, i64* %3, align 8
  %1472 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1402)
  %1473 = load i64, i64* %3, align 8
  %1474 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1474, i64* %RSI.i1995, align 8
  %1475 = add i64 %1474, 1236
  %1476 = add i64 %1473, 15
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  store i8 0, i8* %12, align 1
  %1479 = and i32 %1478, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1484 = icmp eq i32 %1478, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %15, align 1
  %1486 = lshr i32 %1478, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1488 = load i64, i64* %RBP.i, align 8
  %1489 = add i64 %1488, -1272
  %1490 = load i32, i32* %EAX.i83, align 4
  %1491 = add i64 %1473, 21
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1489 to i32*
  store i32 %1490, i32* %1492, align 4
  %1493 = load i64, i64* %3, align 8
  %1494 = load i8, i8* %15, align 1
  %1495 = icmp ne i8 %1494, 0
  %.v118 = select i1 %1495, i64 226, i64 6
  %1496 = add i64 %1493, %.v118
  store i64 %1496, i64* %3, align 8
  %cmpBr_43656f = icmp eq i8 %1494, 1
  br i1 %cmpBr_43656f, label %block_.L_436651, label %block_436575

block_436575:                                     ; preds = %block_.L_43653a
  %1497 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1497, i64* %RDI.i1881, align 8
  %1498 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1498, i64* %RAX.i67, align 8
  %1499 = add i64 %1498, 44
  %1500 = add i64 %1496, 20
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  store i8 0, i8* %12, align 1
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1508 = icmp eq i32 %1502, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %15, align 1
  %1510 = lshr i32 %1502, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1512 = load i64, i64* %RBP.i, align 8
  %1513 = add i64 %1512, -1280
  %1514 = add i64 %1496, 27
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i64*
  store i64 %1497, i64* %1515, align 8
  %1516 = load i64, i64* %3, align 8
  %1517 = load i8, i8* %15, align 1
  %1518 = icmp ne i8 %1517, 0
  %.v119 = select i1 %1518, i64 28, i64 6
  %1519 = add i64 %1516, %.v119
  %cmpBr_436590 = icmp eq i8 %1517, 1
  %1520 = add i64 %1519, 8
  store i64 %1520, i64* %3, align 8
  %1521 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1521, i64* %RAX.i67, align 8
  br i1 %cmpBr_436590, label %block_.L_4365ac, label %block_436596

block_436596:                                     ; preds = %block_436575
  %1522 = add i64 %1521, 44
  %1523 = add i64 %1519, 11
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RCX.i1986, align 8
  %1527 = load i64, i64* %RBP.i, align 8
  %1528 = add i64 %1527, -1284
  %1529 = add i64 %1519, 17
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  store i32 %1525, i32* %1530, align 4
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1531, 22
  store i64 %1532, i64* %3, align 8
  br label %block_.L_4365bd

block_.L_4365ac:                                  ; preds = %block_436575
  %1533 = add i64 %1521, 36
  %1534 = add i64 %1519, 11
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i1986, align 8
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -1284
  %1540 = add i64 %1519, 17
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  store i32 %1536, i32* %1541, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4365bd

block_.L_4365bd:                                  ; preds = %block_.L_4365ac, %block_436596
  %1542 = phi i64 [ %.pre61, %block_.L_4365ac ], [ %1532, %block_436596 ]
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -1284
  %1545 = add i64 %1542, 6
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c07bd_type* @G__0x4c07bd to i64), i64* %RSI.i1995, align 8
  %1549 = add i64 %1543, -1280
  %1550 = add i64 %1542, 23
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RDI.i1881, align 8
  store i64 %1548, i64* %RDX.i1187, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1553 = add i64 %1542, -218285
  %1554 = add i64 %1542, 32
  %1555 = load i64, i64* %6, align 8
  %1556 = add i64 %1555, -8
  %1557 = inttoptr i64 %1556 to i64*
  store i64 %1554, i64* %1557, align 8
  store i64 %1556, i64* %6, align 8
  store i64 %1553, i64* %3, align 8
  %1558 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1472)
  %1559 = load i64, i64* %3, align 8
  %1560 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1560, i64* %RDI.i1881, align 8
  %1561 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1561, i64* %RSI.i1995, align 8
  %1562 = add i64 %1561, 48
  %1563 = add i64 %1559, 20
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  store i8 0, i8* %12, align 1
  %1566 = and i32 %1565, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1571 = icmp eq i32 %1565, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %15, align 1
  %1573 = lshr i32 %1565, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -1288
  %1577 = load i32, i32* %EAX.i83, align 4
  %1578 = add i64 %1559, 26
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1576 to i32*
  store i32 %1577, i32* %1579, align 4
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -1296
  %1582 = load i64, i64* %RDI.i1881, align 8
  %1583 = load i64, i64* %3, align 8
  %1584 = add i64 %1583, 7
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1581 to i64*
  store i64 %1582, i64* %1585, align 8
  %1586 = load i64, i64* %3, align 8
  %1587 = load i8, i8* %15, align 1
  %1588 = icmp ne i8 %1587, 0
  %.v120 = select i1 %1588, i64 28, i64 6
  %1589 = add i64 %1586, %.v120
  %cmpBr_4365fe = icmp eq i8 %1587, 1
  %1590 = add i64 %1589, 8
  store i64 %1590, i64* %3, align 8
  %1591 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1591, i64* %RAX.i67, align 8
  br i1 %cmpBr_4365fe, label %block_.L_43661a, label %block_436604

block_436604:                                     ; preds = %block_.L_4365bd
  %1592 = add i64 %1591, 48
  %1593 = add i64 %1589, 11
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RCX.i1986, align 8
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -1300
  %1599 = add i64 %1589, 17
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  store i32 %1595, i32* %1600, align 4
  %1601 = load i64, i64* %3, align 8
  %1602 = add i64 %1601, 22
  store i64 %1602, i64* %3, align 8
  br label %block_.L_43662b

block_.L_43661a:                                  ; preds = %block_.L_4365bd
  %1603 = add i64 %1591, 36
  %1604 = add i64 %1589, 11
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RCX.i1986, align 8
  %1608 = load i64, i64* %RBP.i, align 8
  %1609 = add i64 %1608, -1300
  %1610 = add i64 %1589, 17
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  store i32 %1606, i32* %1611, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_43662b

block_.L_43662b:                                  ; preds = %block_.L_43661a, %block_436604
  %1612 = phi i64 [ %.pre62, %block_.L_43661a ], [ %1602, %block_436604 ]
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -1300
  %1615 = add i64 %1612, 6
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c07e6_type* @G__0x4c07e6 to i64), i64* %RSI.i1995, align 8
  %1619 = add i64 %1613, -1296
  %1620 = add i64 %1612, 23
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i64*
  %1622 = load i64, i64* %1621, align 8
  store i64 %1622, i64* %RDI.i1881, align 8
  store i64 %1618, i64* %RDX.i1187, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1623 = add i64 %1612, -218395
  %1624 = add i64 %1612, 32
  %1625 = load i64, i64* %6, align 8
  %1626 = add i64 %1625, -8
  %1627 = inttoptr i64 %1626 to i64*
  store i64 %1624, i64* %1627, align 8
  store i64 %1626, i64* %6, align 8
  store i64 %1623, i64* %3, align 8
  %1628 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1558)
  %1629 = load i64, i64* %RBP.i, align 8
  %1630 = add i64 %1629, -1304
  %1631 = load i32, i32* %EAX.i83, align 4
  %1632 = load i64, i64* %3, align 8
  %1633 = add i64 %1632, 6
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1630 to i32*
  store i32 %1631, i32* %1634, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_436651

block_.L_436651:                                  ; preds = %block_.L_43662b, %block_.L_43653a
  %1635 = phi i64 [ %1496, %block_.L_43653a ], [ %.pre63, %block_.L_43662b ]
  %MEMORY.10 = phi %struct.Memory* [ %1472, %block_.L_43653a ], [ %1628, %block_.L_43662b ]
  store i64 ptrtoint (%G__0x4c080f_type* @G__0x4c080f to i64), i64* %RSI.i1995, align 8
  %1636 = add i64 %1635, add (i64 ptrtoint (%G_0x7b245__rip__type* @G_0x7b245__rip_ to i64), i64 10)
  %1637 = add i64 %1635, 18
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to double*
  %1639 = load double, double* %1638, align 8
  %1640 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1640, i64* %RDI.i1881, align 8
  %1641 = load i32, i32* bitcast (%G_0x725260_type* @G_0x725260 to i32*), align 8
  %1642 = sitofp i32 %1641 to double
  %1643 = bitcast %union.VectorReg* %816 to double*
  %1644 = bitcast i64* %820 to <2 x i32>*
  %1645 = load <2 x i32>, <2 x i32>* %1644, align 1
  %1646 = fmul double %1642, %1639
  store double %1646, double* %1643, align 1
  %.cast = bitcast double %1646 to <2 x i32>
  %1647 = extractelement <2 x i32> %.cast, i32 0
  store i32 %1647, i32* %780, align 1
  %1648 = extractelement <2 x i32> %.cast, i32 1
  store i32 %1648, i32* %844, align 1
  %1649 = extractelement <2 x i32> %1645, i32 0
  store i32 %1649, i32* %846, align 1
  %1650 = extractelement <2 x i32> %1645, i32 1
  store i32 %1650, i32* %848, align 1
  store i8 1, i8* %AL.i1879, align 1
  %1651 = add i64 %1635, -218433
  %1652 = add i64 %1635, 49
  %1653 = load i64, i64* %6, align 8
  %1654 = add i64 %1653, -8
  %1655 = inttoptr i64 %1654 to i64*
  store i64 %1652, i64* %1655, align 8
  store i64 %1654, i64* %6, align 8
  store i64 %1651, i64* %3, align 8
  %1656 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.10)
  %1657 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c083f_type* @G__0x4c083f to i64), i64* %RSI.i1995, align 8
  %1658 = add i64 %1657, add (i64 ptrtoint (%G_0x7b214__rip__type* @G_0x7b214__rip_ to i64), i64 10)
  %1659 = add i64 %1657, 18
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to double*
  %1661 = load double, double* %1660, align 8
  %1662 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1662, i64* %RDI.i1881, align 8
  %1663 = load i32, i32* bitcast (%G_0x6f968c_type* @G_0x6f968c to i32*), align 8
  %1664 = sitofp i32 %1663 to double
  %1665 = bitcast i64* %820 to <2 x i32>*
  %1666 = load <2 x i32>, <2 x i32>* %1665, align 1
  %1667 = fmul double %1664, %1661
  store double %1667, double* %1643, align 1
  %.cast38 = bitcast double %1667 to <2 x i32>
  %1668 = extractelement <2 x i32> %.cast38, i32 0
  store i32 %1668, i32* %780, align 1
  %1669 = extractelement <2 x i32> %.cast38, i32 1
  store i32 %1669, i32* %844, align 1
  %1670 = extractelement <2 x i32> %1666, i32 0
  store i32 %1670, i32* %846, align 1
  %1671 = extractelement <2 x i32> %1666, i32 1
  store i32 %1671, i32* %848, align 1
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -1308
  %1674 = load i32, i32* %EAX.i83, align 4
  %1675 = add i64 %1657, 48
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1673 to i32*
  store i32 %1674, i32* %1676, align 4
  %1677 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1879, align 1
  %1678 = add i64 %1677, -218530
  %1679 = add i64 %1677, 7
  %1680 = load i64, i64* %6, align 8
  %1681 = add i64 %1680, -8
  %1682 = inttoptr i64 %1681 to i64*
  store i64 %1679, i64* %1682, align 8
  store i64 %1681, i64* %6, align 8
  store i64 %1678, i64* %3, align 8
  %1683 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1656)
  %1684 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c086f_type* @G__0x4c086f to i64), i64* %RSI.i1995, align 8
  %1685 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1685, i64* %RDI.i1881, align 8
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -1312
  %1688 = load i32, i32* %EAX.i83, align 4
  %1689 = add i64 %1684, 24
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1687 to i32*
  store i32 %1688, i32* %1690, align 4
  %1691 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1692 = add i64 %1691, -218561
  %1693 = add i64 %1691, 7
  %1694 = load i64, i64* %6, align 8
  %1695 = add i64 %1694, -8
  %1696 = inttoptr i64 %1695 to i64*
  store i64 %1693, i64* %1696, align 8
  store i64 %1695, i64* %6, align 8
  store i64 %1692, i64* %3, align 8
  %1697 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1683)
  %1698 = load i64, i64* %3, align 8
  %1699 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1699, i64* %RSI.i1995, align 8
  %1700 = add i64 %1699, 1236
  %1701 = add i64 %1698, 15
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  store i8 0, i8* %12, align 1
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1709 = icmp eq i32 %1703, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %15, align 1
  %1711 = lshr i32 %1703, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -1316
  %1715 = load i32, i32* %EAX.i83, align 4
  %1716 = add i64 %1698, 21
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1714 to i32*
  store i32 %1715, i32* %1717, align 4
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 100
  %1720 = add i64 %1718, 6
  %1721 = load i8, i8* %15, align 1
  %1722 = icmp ne i8 %1721, 0
  %1723 = load i8, i8* %16, align 1
  %1724 = icmp ne i8 %1723, 0
  %1725 = load i8, i8* %17, align 1
  %1726 = icmp ne i8 %1725, 0
  %1727 = xor i1 %1724, %1726
  %1728 = or i1 %1722, %1727
  %1729 = select i1 %1728, i64 %1719, i64 %1720
  store i64 %1729, i64* %3, align 8
  %.pre64 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  br i1 %1728, label %block_.L_436751, label %block_4366f3

block_4366f3:                                     ; preds = %block_.L_436651
  store i64 %.pre64, i64* %RAX.i67, align 8
  %1730 = add i64 %.pre64, 1320
  %1731 = add i64 %1729, 15
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  store i8 0, i8* %12, align 1
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1739 = icmp eq i32 %1733, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %15, align 1
  %1741 = lshr i32 %1733, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v89 = select i1 %1739, i64 94, i64 21
  %1743 = add i64 %1729, %.v89
  store i64 %1743, i64* %3, align 8
  br i1 %1739, label %block_.L_436751, label %block_436708

block_436708:                                     ; preds = %block_4366f3
  store i64 ptrtoint (%G__0x4c0894_type* @G__0x4c0894 to i64), i64* %RSI.i1995, align 8
  %1744 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %1744, i64* %RDI.i1881, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %1745 = add i64 %.pre64, 12
  %1746 = add i64 %1743, 29
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RDX.i1187, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %1750 = add i64 %.pre64, 16
  %1751 = add i64 %1743, 40
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = zext i32 %1753 to i64
  store i64 %1754, i64* %RCX.i1986, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1756 = add i64 %.pre64, 1240
  %1757 = add i64 %1743, 55
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %1755, align 8
  store i8 0, i8* %AL.i1879, align 1
  %1761 = add i64 %1743, -218616
  %1762 = add i64 %1743, 62
  %1763 = load i64, i64* %6, align 8
  %1764 = add i64 %1763, -8
  %1765 = inttoptr i64 %1764 to i64*
  store i64 %1762, i64* %1765, align 8
  store i64 %1764, i64* %6, align 8
  store i64 %1761, i64* %3, align 8
  %1766 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1697)
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -1320
  %1769 = load i32, i32* %EAX.i83, align 4
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, 6
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1768 to i32*
  store i32 %1769, i32* %1772, align 4
  %1773 = load i64, i64* %3, align 8
  %1774 = add i64 %1773, 1256
  br label %block_.L_436c34

block_.L_436751:                                  ; preds = %block_.L_436651, %block_4366f3
  %1775 = phi i64 [ %1743, %block_4366f3 ], [ %1719, %block_.L_436651 ]
  store i64 %.pre64, i64* %RAX.i67, align 8
  %1776 = add i64 %.pre64, 1236
  %1777 = add i64 %1775, 15
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  store i8 0, i8* %12, align 1
  %1780 = and i32 %1779, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1785 = icmp eq i32 %1779, 0
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %15, align 1
  %1787 = lshr i32 %1779, 31
  %1788 = trunc i32 %1787 to i8
  store i8 %1788, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1789 = icmp ne i8 %1788, 0
  %1790 = or i1 %1785, %1789
  %.v96 = select i1 %1790, i64 1058, i64 21
  %1791 = add i64 %1775, %.v96
  store i64 %1791, i64* %3, align 8
  br i1 %1790, label %block_.L_436b73, label %block_436766

block_436766:                                     ; preds = %block_.L_436751
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -1200
  store i64 %1793, i64* %RDI.i1881, align 8
  store i64 and (i64 ptrtoint (%G__0x4bdcdc_type* @G__0x4bdcdc to i64), i64 4294967295), i64* %RAX.i67, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4bdcdc_type* @G__0x4bdcdc to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1995, align 8
  %1794 = add i64 %1791, -219046
  %1795 = add i64 %1791, 19
  %1796 = load i64, i64* %6, align 8
  %1797 = add i64 %1796, -8
  %1798 = inttoptr i64 %1797 to i64*
  store i64 %1795, i64* %1798, align 8
  store i64 %1797, i64* %6, align 8
  store i64 %1794, i64* %3, align 8
  %1799 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %1697)
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -1208
  %1802 = load i64, i64* %3, align 8
  %1803 = add i64 %1802, 10
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1801 to i32*
  store i32 0, i32* %1804, align 4
  %1805 = load i64, i64* %RBP.i, align 8
  %1806 = add i64 %1805, -1328
  %1807 = load i64, i64* %RAX.i67, align 8
  %1808 = load i64, i64* %3, align 8
  %1809 = add i64 %1808, 7
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1806 to i64*
  store i64 %1807, i64* %1810, align 8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1276 = bitcast %union.anon* %1811 to i32*
  %1812 = getelementptr inbounds %union.anon, %union.anon* %1811, i64 0, i32 0
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_43678a

block_.L_43678a:                                  ; preds = %block_.L_4369bd, %block_436766
  %1813 = phi i64 [ %.pre65, %block_436766 ], [ %2448, %block_.L_4369bd ]
  %MEMORY.12 = phi %struct.Memory* [ %1799, %block_436766 ], [ %call2_4369d7, %block_.L_4369bd ]
  %1814 = load i64, i64* %RBP.i, align 8
  %1815 = add i64 %1814, -1208
  %1816 = add i64 %1813, 7
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  %1818 = load i32, i32* %1817, align 4
  %1819 = add i32 %1818, -2
  %1820 = icmp ult i32 %1818, 2
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %12, align 1
  %1822 = and i32 %1819, 255
  %1823 = tail call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  store i8 %1826, i8* %13, align 1
  %1827 = xor i32 %1819, %1818
  %1828 = lshr i32 %1827, 4
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  store i8 %1830, i8* %14, align 1
  %1831 = icmp eq i32 %1819, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %15, align 1
  %1833 = lshr i32 %1819, 31
  %1834 = trunc i32 %1833 to i8
  store i8 %1834, i8* %16, align 1
  %1835 = lshr i32 %1818, 31
  %1836 = xor i32 %1833, %1835
  %1837 = add nuw nsw i32 %1836, %1835
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %17, align 1
  %1840 = icmp ne i8 %1834, 0
  %1841 = xor i1 %1840, %1838
  %.v97 = select i1 %1841, i64 13, i64 621
  %1842 = add i64 %1813, %.v97
  store i64 %1842, i64* %3, align 8
  br i1 %1841, label %block_436797, label %block_.L_4369f7

block_436797:                                     ; preds = %block_.L_43678a
  %1843 = add i64 %1814, -1204
  %1844 = add i64 %1842, 10
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  store i32 0, i32* %1845, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4367a1

block_.L_4367a1:                                  ; preds = %block_.L_436923, %block_436797
  %1846 = phi i64 [ %.pre69, %block_436797 ], [ %2252, %block_.L_436923 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_436797 ], [ %MEMORY.16, %block_.L_436923 ]
  %1847 = load i64, i64* %RBP.i, align 8
  %1848 = add i64 %1847, -1204
  %1849 = add i64 %1846, 6
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RAX.i67, align 8
  %1853 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1853, i64* %RCX.i1986, align 8
  %1854 = add i64 %1853, 1236
  %1855 = add i64 %1846, 20
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = sub i32 %1851, %1857
  %1859 = icmp ult i32 %1851, %1857
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %12, align 1
  %1861 = and i32 %1858, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %13, align 1
  %1866 = xor i32 %1857, %1851
  %1867 = xor i32 %1866, %1858
  %1868 = lshr i32 %1867, 4
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  store i8 %1870, i8* %14, align 1
  %1871 = icmp eq i32 %1858, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %15, align 1
  %1873 = lshr i32 %1858, 31
  %1874 = trunc i32 %1873 to i8
  store i8 %1874, i8* %16, align 1
  %1875 = lshr i32 %1851, 31
  %1876 = lshr i32 %1857, 31
  %1877 = xor i32 %1876, %1875
  %1878 = xor i32 %1873, %1875
  %1879 = add nuw nsw i32 %1878, %1877
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %17, align 1
  %1882 = icmp ne i8 %1874, 0
  %1883 = xor i1 %1882, %1880
  %.v84 = select i1 %1883, i64 26, i64 411
  %1884 = add i64 %1846, %.v84
  store i64 %1884, i64* %3, align 8
  br i1 %1883, label %block_4367bb, label %block_.L_43693c

block_4367bb:                                     ; preds = %block_.L_4367a1
  store i64 %1853, i64* %RAX.i67, align 8
  %1885 = add i64 %1853, 1316
  %1886 = add i64 %1884, 15
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = icmp eq i32 %1888, 0
  %.v = select i1 %1889, i64 193, i64 21
  %1890 = add i64 %1884, %.v
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 79, i64* %RCX.i1986, align 8
  store i64 79, i64* %RDX.i1187, align 8
  %1891 = add i64 %1847, -1200
  store i64 %1891, i64* %RSI.i1995, align 8
  %1892 = add i64 %1890, 19
  store i64 %1892, i64* %3, align 8
  store i64 %1891, i64* %RDI.i1881, align 8
  br i1 %1889, label %block_.L_43687c, label %block_4367d0

block_4367d0:                                     ; preds = %block_4367bb
  %1893 = add i64 %1847, -1332
  %1894 = add i64 %1890, 25
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  store i32 0, i32* %1895, align 4
  %1896 = load i64, i64* %RBP.i, align 8
  %1897 = add i64 %1896, -1344
  %1898 = load i64, i64* %RDX.i1187, align 8
  %1899 = load i64, i64* %3, align 8
  %1900 = add i64 %1899, 7
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1897 to i64*
  store i64 %1898, i64* %1901, align 8
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -1352
  %1904 = load i64, i64* %RSI.i1995, align 8
  %1905 = load i64, i64* %3, align 8
  %1906 = add i64 %1905, 7
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1903 to i64*
  store i64 %1904, i64* %1907, align 8
  %1908 = load i64, i64* %3, align 8
  %1909 = add i64 %1908, -219079
  %1910 = add i64 %1908, 5
  %1911 = load i64, i64* %6, align 8
  %1912 = add i64 %1911, -8
  %1913 = inttoptr i64 %1912 to i64*
  store i64 %1910, i64* %1913, align 8
  store i64 %1912, i64* %6, align 8
  store i64 %1909, i64* %3, align 8
  %1914 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.13)
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -1344
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 7
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1916 to i64*
  %1920 = load i64, i64* %1919, align 8
  %1921 = load i64, i64* %RAX.i67, align 8
  %1922 = sub i64 %1920, %1921
  store i64 %1922, i64* %RDX.i1187, align 8
  %1923 = icmp ult i64 %1920, %1921
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %12, align 1
  %1925 = trunc i64 %1922 to i32
  %1926 = and i32 %1925, 255
  %1927 = tail call i32 @llvm.ctpop.i32(i32 %1926)
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  %1930 = xor i8 %1929, 1
  store i8 %1930, i8* %13, align 1
  %1931 = xor i64 %1921, %1920
  %1932 = xor i64 %1931, %1922
  %1933 = lshr i64 %1932, 4
  %1934 = trunc i64 %1933 to i8
  %1935 = and i8 %1934, 1
  store i8 %1935, i8* %14, align 1
  %1936 = icmp eq i64 %1922, 0
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %15, align 1
  %1938 = lshr i64 %1922, 63
  %1939 = trunc i64 %1938 to i8
  store i8 %1939, i8* %16, align 1
  %1940 = lshr i64 %1920, 63
  %1941 = lshr i64 %1921, 63
  %1942 = xor i64 %1941, %1940
  %1943 = xor i64 %1938, %1940
  %1944 = add nuw nsw i64 %1943, %1942
  %1945 = icmp eq i64 %1944, 2
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %17, align 1
  %1947 = and i64 %1922, 4294967295
  store i64 %1947, i64* %RCX.i1986, align 8
  %1948 = add i64 %1915, -1332
  %1949 = add i64 %1917, 19
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %1812, align 8
  %1953 = sub i32 %1951, %1925
  %1954 = icmp ult i32 %1951, %1925
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %12, align 1
  %1956 = and i32 %1953, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %13, align 1
  %1961 = xor i32 %1925, %1951
  %1962 = xor i32 %1961, %1953
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %14, align 1
  %1966 = icmp eq i32 %1953, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %15, align 1
  %1968 = lshr i32 %1953, 31
  %1969 = trunc i32 %1968 to i8
  store i8 %1969, i8* %16, align 1
  %1970 = lshr i32 %1951, 31
  %1971 = lshr i32 %1925, 31
  %1972 = xor i32 %1971, %1970
  %1973 = xor i32 %1968, %1970
  %1974 = add nuw nsw i32 %1973, %1972
  %1975 = icmp eq i32 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %17, align 1
  %1977 = icmp ne i8 %1969, 0
  %1978 = xor i1 %1977, %1975
  %1979 = or i1 %1966, %1978
  %.v101 = select i1 %1979, i64 41, i64 28
  %1980 = add i64 %1917, %.v101
  store i64 %1980, i64* %3, align 8
  br i1 %1979, label %block_.L_436825, label %block_436818

block_436818:                                     ; preds = %block_4367d0
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1981 = add i64 %1915, -1356
  %1982 = add i64 %1980, 8
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  store i32 0, i32* %1983, align 4
  %1984 = load i64, i64* %3, align 8
  %1985 = add i64 %1984, 49
  store i64 %1985, i64* %3, align 8
  br label %block_.L_436851

block_.L_436825:                                  ; preds = %block_4367d0
  store i64 79, i64* %RAX.i67, align 8
  store i64 79, i64* %RCX.i1986, align 8
  %1986 = add i64 %1915, -1200
  store i64 %1986, i64* %RDI.i1881, align 8
  %1987 = add i64 %1915, -1368
  %1988 = add i64 %1980, 21
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i64*
  store i64 79, i64* %1989, align 8
  %1990 = load i64, i64* %3, align 8
  %1991 = add i64 %1990, -219146
  %1992 = add i64 %1990, 5
  %1993 = load i64, i64* %6, align 8
  %1994 = add i64 %1993, -8
  %1995 = inttoptr i64 %1994 to i64*
  store i64 %1992, i64* %1995, align 8
  store i64 %1994, i64* %6, align 8
  store i64 %1991, i64* %3, align 8
  %1996 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1914)
  %1997 = load i64, i64* %RBP.i, align 8
  %1998 = add i64 %1997, -1368
  %1999 = load i64, i64* %3, align 8
  %2000 = add i64 %1999, 7
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1998 to i64*
  %2002 = load i64, i64* %2001, align 8
  %2003 = load i64, i64* %RAX.i67, align 8
  %2004 = sub i64 %2002, %2003
  store i64 %2004, i64* %RCX.i1986, align 8
  %2005 = icmp ult i64 %2002, %2003
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %12, align 1
  %2007 = trunc i64 %2004 to i32
  %2008 = and i32 %2007, 255
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %13, align 1
  %2013 = xor i64 %2003, %2002
  %2014 = xor i64 %2013, %2004
  %2015 = lshr i64 %2014, 4
  %2016 = trunc i64 %2015 to i8
  %2017 = and i8 %2016, 1
  store i8 %2017, i8* %14, align 1
  %2018 = icmp eq i64 %2004, 0
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %15, align 1
  %2020 = lshr i64 %2004, 63
  %2021 = trunc i64 %2020 to i8
  store i8 %2021, i8* %16, align 1
  %2022 = lshr i64 %2002, 63
  %2023 = lshr i64 %2003, 63
  %2024 = xor i64 %2023, %2022
  %2025 = xor i64 %2020, %2022
  %2026 = add nuw nsw i64 %2025, %2024
  %2027 = icmp eq i64 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %17, align 1
  %2029 = and i64 %2004, 4294967295
  store i64 %2029, i64* %RDX.i1187, align 8
  %2030 = add i64 %1997, -1356
  %2031 = add i64 %1999, 18
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  store i32 %2007, i32* %2032, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_436851

block_.L_436851:                                  ; preds = %block_.L_436825, %block_436818
  %2033 = phi i64 [ %.pre71, %block_.L_436825 ], [ %1985, %block_436818 ]
  %MEMORY.14 = phi %struct.Memory* [ %1996, %block_.L_436825 ], [ %1914, %block_436818 ]
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, -1356
  %2036 = add i64 %2033, 6
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c08b6_type* @G__0x4c08b6 to i64), i64* %RSI.i1995, align 8
  %2040 = sext i32 %2038 to i64
  store i64 %2040, i64* %RDX.i1187, align 8
  %2041 = add i64 %2034, -1352
  %2042 = add i64 %2033, 26
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i64*
  %2044 = load i64, i64* %2043, align 8
  store i64 %2044, i64* %RDI.i1881, align 8
  %2045 = add i64 %2033, -219057
  %2046 = add i64 %2033, 31
  %2047 = load i64, i64* %6, align 8
  %2048 = add i64 %2047, -8
  %2049 = inttoptr i64 %2048 to i64*
  store i64 %2046, i64* %2049, align 8
  store i64 %2048, i64* %6, align 8
  store i64 %2045, i64* %3, align 8
  %call2_43686b = tail call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* nonnull %0, i64 %2045, %struct.Memory* %MEMORY.14)
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -1376
  %2052 = load i64, i64* %RAX.i67, align 8
  %2053 = load i64, i64* %3, align 8
  %2054 = add i64 %2053, 7
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2051 to i64*
  store i64 %2052, i64* %2055, align 8
  %2056 = load i64, i64* %3, align 8
  %2057 = add i64 %2056, 172
  store i64 %2057, i64* %3, align 8
  br label %block_.L_436923

block_.L_43687c:                                  ; preds = %block_4367bb
  %2058 = add i64 %1847, -1380
  %2059 = add i64 %1890, 25
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  store i32 0, i32* %2060, align 4
  %2061 = load i64, i64* %RBP.i, align 8
  %2062 = add i64 %2061, -1392
  %2063 = load i64, i64* %RDX.i1187, align 8
  %2064 = load i64, i64* %3, align 8
  %2065 = add i64 %2064, 7
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2062 to i64*
  store i64 %2063, i64* %2066, align 8
  %2067 = load i64, i64* %RBP.i, align 8
  %2068 = add i64 %2067, -1400
  %2069 = load i64, i64* %RSI.i1995, align 8
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 7
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2068 to i64*
  store i64 %2069, i64* %2072, align 8
  %2073 = load i64, i64* %3, align 8
  %2074 = add i64 %2073, -219251
  %2075 = add i64 %2073, 5
  %2076 = load i64, i64* %6, align 8
  %2077 = add i64 %2076, -8
  %2078 = inttoptr i64 %2077 to i64*
  store i64 %2075, i64* %2078, align 8
  store i64 %2077, i64* %6, align 8
  store i64 %2074, i64* %3, align 8
  %2079 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.13)
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -1392
  %2082 = load i64, i64* %3, align 8
  %2083 = add i64 %2082, 7
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2081 to i64*
  %2085 = load i64, i64* %2084, align 8
  %2086 = load i64, i64* %RAX.i67, align 8
  %2087 = sub i64 %2085, %2086
  store i64 %2087, i64* %RDX.i1187, align 8
  %2088 = icmp ult i64 %2085, %2086
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %12, align 1
  %2090 = trunc i64 %2087 to i32
  %2091 = and i32 %2090, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %13, align 1
  %2096 = xor i64 %2086, %2085
  %2097 = xor i64 %2096, %2087
  %2098 = lshr i64 %2097, 4
  %2099 = trunc i64 %2098 to i8
  %2100 = and i8 %2099, 1
  store i8 %2100, i8* %14, align 1
  %2101 = icmp eq i64 %2087, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %15, align 1
  %2103 = lshr i64 %2087, 63
  %2104 = trunc i64 %2103 to i8
  store i8 %2104, i8* %16, align 1
  %2105 = lshr i64 %2085, 63
  %2106 = lshr i64 %2086, 63
  %2107 = xor i64 %2106, %2105
  %2108 = xor i64 %2103, %2105
  %2109 = add nuw nsw i64 %2108, %2107
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %17, align 1
  %2112 = and i64 %2087, 4294967295
  store i64 %2112, i64* %RCX.i1986, align 8
  %2113 = add i64 %2080, -1380
  %2114 = add i64 %2082, 19
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %1812, align 8
  %2118 = sub i32 %2116, %2090
  %2119 = icmp ult i32 %2116, %2090
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %12, align 1
  %2121 = and i32 %2118, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %13, align 1
  %2126 = xor i32 %2090, %2116
  %2127 = xor i32 %2126, %2118
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %14, align 1
  %2131 = icmp eq i32 %2118, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %15, align 1
  %2133 = lshr i32 %2118, 31
  %2134 = trunc i32 %2133 to i8
  store i8 %2134, i8* %16, align 1
  %2135 = lshr i32 %2116, 31
  %2136 = lshr i32 %2090, 31
  %2137 = xor i32 %2136, %2135
  %2138 = xor i32 %2133, %2135
  %2139 = add nuw nsw i32 %2138, %2137
  %2140 = icmp eq i32 %2139, 2
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %17, align 1
  %2142 = icmp ne i8 %2134, 0
  %2143 = xor i1 %2142, %2140
  %2144 = or i1 %2131, %2143
  %.v102 = select i1 %2144, i64 41, i64 28
  %2145 = add i64 %2082, %.v102
  store i64 %2145, i64* %3, align 8
  br i1 %2144, label %block_.L_4368d1, label %block_4368c4

block_4368c4:                                     ; preds = %block_.L_43687c
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2146 = add i64 %2080, -1404
  %2147 = add i64 %2145, 8
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  store i32 0, i32* %2148, align 4
  %2149 = load i64, i64* %3, align 8
  %2150 = add i64 %2149, 49
  store i64 %2150, i64* %3, align 8
  br label %block_.L_4368fd

block_.L_4368d1:                                  ; preds = %block_.L_43687c
  store i64 79, i64* %RAX.i67, align 8
  store i64 79, i64* %RCX.i1986, align 8
  %2151 = add i64 %2080, -1200
  store i64 %2151, i64* %RDI.i1881, align 8
  %2152 = add i64 %2080, -1416
  %2153 = add i64 %2145, 21
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i64*
  store i64 79, i64* %2154, align 8
  %2155 = load i64, i64* %3, align 8
  %2156 = add i64 %2155, -219318
  %2157 = add i64 %2155, 5
  %2158 = load i64, i64* %6, align 8
  %2159 = add i64 %2158, -8
  %2160 = inttoptr i64 %2159 to i64*
  store i64 %2157, i64* %2160, align 8
  store i64 %2159, i64* %6, align 8
  store i64 %2156, i64* %3, align 8
  %2161 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2079)
  %2162 = load i64, i64* %RBP.i, align 8
  %2163 = add i64 %2162, -1416
  %2164 = load i64, i64* %3, align 8
  %2165 = add i64 %2164, 7
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2163 to i64*
  %2167 = load i64, i64* %2166, align 8
  %2168 = load i64, i64* %RAX.i67, align 8
  %2169 = sub i64 %2167, %2168
  store i64 %2169, i64* %RCX.i1986, align 8
  %2170 = icmp ult i64 %2167, %2168
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %12, align 1
  %2172 = trunc i64 %2169 to i32
  %2173 = and i32 %2172, 255
  %2174 = tail call i32 @llvm.ctpop.i32(i32 %2173)
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  %2177 = xor i8 %2176, 1
  store i8 %2177, i8* %13, align 1
  %2178 = xor i64 %2168, %2167
  %2179 = xor i64 %2178, %2169
  %2180 = lshr i64 %2179, 4
  %2181 = trunc i64 %2180 to i8
  %2182 = and i8 %2181, 1
  store i8 %2182, i8* %14, align 1
  %2183 = icmp eq i64 %2169, 0
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %15, align 1
  %2185 = lshr i64 %2169, 63
  %2186 = trunc i64 %2185 to i8
  store i8 %2186, i8* %16, align 1
  %2187 = lshr i64 %2167, 63
  %2188 = lshr i64 %2168, 63
  %2189 = xor i64 %2188, %2187
  %2190 = xor i64 %2185, %2187
  %2191 = add nuw nsw i64 %2190, %2189
  %2192 = icmp eq i64 %2191, 2
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %17, align 1
  %2194 = and i64 %2169, 4294967295
  store i64 %2194, i64* %RDX.i1187, align 8
  %2195 = add i64 %2162, -1404
  %2196 = add i64 %2164, 18
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  store i32 %2172, i32* %2197, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4368fd

block_.L_4368fd:                                  ; preds = %block_.L_4368d1, %block_4368c4
  %2198 = phi i64 [ %.pre72, %block_.L_4368d1 ], [ %2150, %block_4368c4 ]
  %MEMORY.15 = phi %struct.Memory* [ %2161, %block_.L_4368d1 ], [ %2079, %block_4368c4 ]
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -1404
  %2201 = add i64 %2198, 6
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c08ba_type* @G__0x4c08ba to i64), i64* %RSI.i1995, align 8
  %2205 = sext i32 %2203 to i64
  store i64 %2205, i64* %RDX.i1187, align 8
  %2206 = add i64 %2199, -1400
  %2207 = add i64 %2198, 26
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RDI.i1881, align 8
  %2210 = add i64 %2198, -219229
  %2211 = add i64 %2198, 31
  %2212 = load i64, i64* %6, align 8
  %2213 = add i64 %2212, -8
  %2214 = inttoptr i64 %2213 to i64*
  store i64 %2211, i64* %2214, align 8
  store i64 %2213, i64* %6, align 8
  store i64 %2210, i64* %3, align 8
  %call2_436917 = tail call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* nonnull %0, i64 %2210, %struct.Memory* %MEMORY.15)
  %2215 = load i64, i64* %RBP.i, align 8
  %2216 = add i64 %2215, -1424
  %2217 = load i64, i64* %RAX.i67, align 8
  %2218 = load i64, i64* %3, align 8
  %2219 = add i64 %2218, 7
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2216 to i64*
  store i64 %2217, i64* %2220, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_436923

block_.L_436923:                                  ; preds = %block_.L_4368fd, %block_.L_436851
  %2221 = phi i64 [ %.pre73, %block_.L_4368fd ], [ %2057, %block_.L_436851 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_436917, %block_.L_4368fd ], [ %call2_43686b, %block_.L_436851 ]
  %2222 = load i64, i64* %RBP.i, align 8
  %2223 = add i64 %2222, -1204
  %2224 = add i64 %2221, 11
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = add i32 %2226, 1
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RAX.i67, align 8
  %2229 = icmp eq i32 %2226, -1
  %2230 = icmp eq i32 %2227, 0
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %12, align 1
  %2233 = and i32 %2227, 255
  %2234 = tail call i32 @llvm.ctpop.i32(i32 %2233)
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = xor i8 %2236, 1
  store i8 %2237, i8* %13, align 1
  %2238 = xor i32 %2227, %2226
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %14, align 1
  %2242 = zext i1 %2230 to i8
  store i8 %2242, i8* %15, align 1
  %2243 = lshr i32 %2227, 31
  %2244 = trunc i32 %2243 to i8
  store i8 %2244, i8* %16, align 1
  %2245 = lshr i32 %2226, 31
  %2246 = xor i32 %2243, %2245
  %2247 = add nuw nsw i32 %2246, %2243
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %17, align 1
  %2250 = add i64 %2221, 20
  store i64 %2250, i64* %3, align 8
  store i32 %2227, i32* %2225, align 4
  %2251 = load i64, i64* %3, align 8
  %2252 = add i64 %2251, -406
  store i64 %2252, i64* %3, align 8
  br label %block_.L_4367a1

block_.L_43693c:                                  ; preds = %block_.L_4367a1
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 79, i64* %RCX.i1986, align 8
  store i64 79, i64* %RDX.i1187, align 8
  %2253 = add i64 %1847, -1200
  store i64 %2253, i64* %RSI.i1995, align 8
  store i64 %2253, i64* %RDI.i1881, align 8
  %2254 = add i64 %1847, -1428
  %2255 = add i64 %1884, 25
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  store i32 0, i32* %2256, align 4
  %2257 = load i64, i64* %RBP.i, align 8
  %2258 = add i64 %2257, -1440
  %2259 = load i64, i64* %RDX.i1187, align 8
  %2260 = load i64, i64* %3, align 8
  %2261 = add i64 %2260, 7
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2258 to i64*
  store i64 %2259, i64* %2262, align 8
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -1448
  %2265 = load i64, i64* %RSI.i1995, align 8
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, 7
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2264 to i64*
  store i64 %2265, i64* %2268, align 8
  %2269 = load i64, i64* %3, align 8
  %2270 = add i64 %2269, -219443
  %2271 = add i64 %2269, 5
  %2272 = load i64, i64* %6, align 8
  %2273 = add i64 %2272, -8
  %2274 = inttoptr i64 %2273 to i64*
  store i64 %2271, i64* %2274, align 8
  store i64 %2273, i64* %6, align 8
  store i64 %2270, i64* %3, align 8
  %2275 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.13)
  %2276 = load i64, i64* %RBP.i, align 8
  %2277 = add i64 %2276, -1440
  %2278 = load i64, i64* %3, align 8
  %2279 = add i64 %2278, 7
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2277 to i64*
  %2281 = load i64, i64* %2280, align 8
  %2282 = load i64, i64* %RAX.i67, align 8
  %2283 = sub i64 %2281, %2282
  store i64 %2283, i64* %RDX.i1187, align 8
  %2284 = icmp ult i64 %2281, %2282
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %12, align 1
  %2286 = trunc i64 %2283 to i32
  %2287 = and i32 %2286, 255
  %2288 = tail call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  store i8 %2291, i8* %13, align 1
  %2292 = xor i64 %2282, %2281
  %2293 = xor i64 %2292, %2283
  %2294 = lshr i64 %2293, 4
  %2295 = trunc i64 %2294 to i8
  %2296 = and i8 %2295, 1
  store i8 %2296, i8* %14, align 1
  %2297 = icmp eq i64 %2283, 0
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %15, align 1
  %2299 = lshr i64 %2283, 63
  %2300 = trunc i64 %2299 to i8
  store i8 %2300, i8* %16, align 1
  %2301 = lshr i64 %2281, 63
  %2302 = lshr i64 %2282, 63
  %2303 = xor i64 %2302, %2301
  %2304 = xor i64 %2299, %2301
  %2305 = add nuw nsw i64 %2304, %2303
  %2306 = icmp eq i64 %2305, 2
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %17, align 1
  %2308 = and i64 %2283, 4294967295
  store i64 %2308, i64* %RCX.i1986, align 8
  %2309 = add i64 %2276, -1428
  %2310 = add i64 %2278, 19
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %1812, align 8
  %2314 = sub i32 %2312, %2286
  %2315 = icmp ult i32 %2312, %2286
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %12, align 1
  %2317 = and i32 %2314, 255
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %13, align 1
  %2322 = xor i32 %2286, %2312
  %2323 = xor i32 %2322, %2314
  %2324 = lshr i32 %2323, 4
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  store i8 %2326, i8* %14, align 1
  %2327 = icmp eq i32 %2314, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %15, align 1
  %2329 = lshr i32 %2314, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %16, align 1
  %2331 = lshr i32 %2312, 31
  %2332 = lshr i32 %2286, 31
  %2333 = xor i32 %2332, %2331
  %2334 = xor i32 %2329, %2331
  %2335 = add nuw nsw i32 %2334, %2333
  %2336 = icmp eq i32 %2335, 2
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %17, align 1
  %2338 = icmp ne i8 %2330, 0
  %2339 = xor i1 %2338, %2336
  %2340 = or i1 %2327, %2339
  %.v100 = select i1 %2340, i64 41, i64 28
  %2341 = add i64 %2278, %.v100
  store i64 %2341, i64* %3, align 8
  br i1 %2340, label %block_.L_436991, label %block_436984

block_436984:                                     ; preds = %block_.L_43693c
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2342 = add i64 %2276, -1452
  %2343 = add i64 %2341, 8
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  store i32 0, i32* %2344, align 4
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, 49
  store i64 %2346, i64* %3, align 8
  br label %block_.L_4369bd

block_.L_436991:                                  ; preds = %block_.L_43693c
  store i64 79, i64* %RAX.i67, align 8
  store i64 79, i64* %RCX.i1986, align 8
  %2347 = add i64 %2276, -1200
  store i64 %2347, i64* %RDI.i1881, align 8
  %2348 = add i64 %2276, -1464
  %2349 = add i64 %2341, 21
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i64*
  store i64 79, i64* %2350, align 8
  %2351 = load i64, i64* %3, align 8
  %2352 = add i64 %2351, -219510
  %2353 = add i64 %2351, 5
  %2354 = load i64, i64* %6, align 8
  %2355 = add i64 %2354, -8
  %2356 = inttoptr i64 %2355 to i64*
  store i64 %2353, i64* %2356, align 8
  store i64 %2355, i64* %6, align 8
  store i64 %2352, i64* %3, align 8
  %2357 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2275)
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -1464
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 7
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i64*
  %2363 = load i64, i64* %2362, align 8
  %2364 = load i64, i64* %RAX.i67, align 8
  %2365 = sub i64 %2363, %2364
  store i64 %2365, i64* %RCX.i1986, align 8
  %2366 = icmp ult i64 %2363, %2364
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %12, align 1
  %2368 = trunc i64 %2365 to i32
  %2369 = and i32 %2368, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %13, align 1
  %2374 = xor i64 %2364, %2363
  %2375 = xor i64 %2374, %2365
  %2376 = lshr i64 %2375, 4
  %2377 = trunc i64 %2376 to i8
  %2378 = and i8 %2377, 1
  store i8 %2378, i8* %14, align 1
  %2379 = icmp eq i64 %2365, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %15, align 1
  %2381 = lshr i64 %2365, 63
  %2382 = trunc i64 %2381 to i8
  store i8 %2382, i8* %16, align 1
  %2383 = lshr i64 %2363, 63
  %2384 = lshr i64 %2364, 63
  %2385 = xor i64 %2384, %2383
  %2386 = xor i64 %2381, %2383
  %2387 = add nuw nsw i64 %2386, %2385
  %2388 = icmp eq i64 %2387, 2
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %17, align 1
  %2390 = and i64 %2365, 4294967295
  store i64 %2390, i64* %RDX.i1187, align 8
  %2391 = add i64 %2358, -1452
  %2392 = add i64 %2360, 18
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i32*
  store i32 %2368, i32* %2393, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4369bd

block_.L_4369bd:                                  ; preds = %block_.L_436991, %block_436984
  %2394 = phi i64 [ %.pre70, %block_.L_436991 ], [ %2346, %block_436984 ]
  %MEMORY.17 = phi %struct.Memory* [ %2357, %block_.L_436991 ], [ %2275, %block_436984 ]
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -1452
  %2397 = add i64 %2394, 6
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c08bd_type* @G__0x4c08bd to i64), i64* %RSI.i1995, align 8
  %2401 = sext i32 %2399 to i64
  store i64 %2401, i64* %RDX.i1187, align 8
  %2402 = add i64 %2395, -1448
  %2403 = add i64 %2394, 26
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i64*
  %2405 = load i64, i64* %2404, align 8
  store i64 %2405, i64* %RDI.i1881, align 8
  %2406 = add i64 %2394, -219421
  %2407 = add i64 %2394, 31
  %2408 = load i64, i64* %6, align 8
  %2409 = add i64 %2408, -8
  %2410 = inttoptr i64 %2409 to i64*
  store i64 %2407, i64* %2410, align 8
  store i64 %2409, i64* %6, align 8
  store i64 %2406, i64* %3, align 8
  %call2_4369d7 = tail call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* nonnull %0, i64 %2406, %struct.Memory* %MEMORY.17)
  %2411 = load i64, i64* %RBP.i, align 8
  %2412 = add i64 %2411, -1472
  %2413 = load i64, i64* %RAX.i67, align 8
  %2414 = load i64, i64* %3, align 8
  %2415 = add i64 %2414, 7
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2412 to i64*
  store i64 %2413, i64* %2416, align 8
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -1208
  %2419 = load i64, i64* %3, align 8
  %2420 = add i64 %2419, 6
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2418 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = add i32 %2422, 1
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RAX.i67, align 8
  %2425 = icmp eq i32 %2422, -1
  %2426 = icmp eq i32 %2423, 0
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %12, align 1
  %2429 = and i32 %2423, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %13, align 1
  %2434 = xor i32 %2423, %2422
  %2435 = lshr i32 %2434, 4
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %14, align 1
  %2438 = zext i1 %2426 to i8
  store i8 %2438, i8* %15, align 1
  %2439 = lshr i32 %2423, 31
  %2440 = trunc i32 %2439 to i8
  store i8 %2440, i8* %16, align 1
  %2441 = lshr i32 %2422, 31
  %2442 = xor i32 %2439, %2441
  %2443 = add nuw nsw i32 %2442, %2439
  %2444 = icmp eq i32 %2443, 2
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %17, align 1
  %2446 = add i64 %2419, 15
  store i64 %2446, i64* %3, align 8
  store i32 %2423, i32* %2421, align 4
  %2447 = load i64, i64* %3, align 8
  %2448 = add i64 %2447, -616
  store i64 %2448, i64* %3, align 8
  br label %block_.L_43678a

block_.L_4369f7:                                  ; preds = %block_.L_43678a
  %2449 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2450 = add i64 %2449, 1316
  %2451 = add i64 %1842, 15
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  store i8 0, i8* %12, align 1
  %2454 = and i32 %2453, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2459 = icmp eq i32 %2453, 0
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %15, align 1
  %2461 = lshr i32 %2453, 31
  %2462 = trunc i32 %2461 to i8
  store i8 %2462, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v98 = select i1 %2459, i64 299, i64 21
  %2463 = add i64 %1842, %.v98
  store i64 %2463, i64* %3, align 8
  br i1 %2459, label %block_.L_436b22, label %block_436a0c

block_436a0c:                                     ; preds = %block_.L_4369f7
  %2464 = add i64 %1814, -1200
  store i64 %2464, i64* %RDX.i1187, align 8
  %2465 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2465, i64* %RDI.i1881, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2466 = add i64 %2449, 12
  %2467 = add i64 %2463, 26
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i1986, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2471 = add i64 %2449, 16
  %2472 = add i64 %2463, 38
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %1812, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2476 = add i64 %2449, 1240
  %2477 = add i64 %2463, 52
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RSI.i1995, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2481 = add i64 %2449, 1244
  %2482 = add i64 %2463, 66
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = add i32 %2484, %2479
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RSI.i1995, align 8
  %2487 = and i32 %2485, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  %2492 = icmp eq i32 %2485, 0
  %2493 = zext i1 %2492 to i8
  %2494 = lshr i32 %2485, 31
  %2495 = trunc i32 %2494 to i8
  store i8 0, i8* %12, align 1
  store i8 %2491, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %2493, i8* %15, align 1
  store i8 %2495, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2496 = add i64 %1814, -1480
  %2497 = add i64 %2463, 76
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i64*
  store i64 %2464, i64* %2498, align 8
  %2499 = load i64, i64* %RBP.i, align 8
  %2500 = add i64 %2499, -1488
  %2501 = load i64, i64* %RDI.i1881, align 8
  %2502 = load i64, i64* %3, align 8
  %2503 = add i64 %2502, 7
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2500 to i64*
  store i64 %2501, i64* %2504, align 8
  %2505 = load i64, i64* %RBP.i, align 8
  %2506 = add i64 %2505, -1492
  %2507 = load i32, i32* %ECX.i1980, align 4
  %2508 = load i64, i64* %3, align 8
  %2509 = add i64 %2508, 6
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2506 to i32*
  store i32 %2507, i32* %2510, align 4
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -1496
  %2513 = load i32, i32* %R8D.i1276, align 4
  %2514 = load i64, i64* %3, align 8
  %2515 = add i64 %2514, 7
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2512 to i32*
  store i32 %2513, i32* %2516, align 4
  %2517 = load i64, i64* %3, align 8
  %2518 = load i8, i8* %16, align 1
  %2519 = icmp ne i8 %2518, 0
  %2520 = load i8, i8* %17, align 1
  %2521 = icmp ne i8 %2520, 0
  %2522 = xor i1 %2519, %2521
  %.v128 = select i1 %2522, i64 6, i64 19
  %2523 = add i64 %2517, %.v128
  store i64 %2523, i64* %3, align 8
  br i1 %2522, label %block_436a72, label %block_.L_436a7f

block_436a72:                                     ; preds = %block_436a0c
  store i64 0, i64* %RAX.i67, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2524 = load i64, i64* %RBP.i, align 8
  %2525 = add i64 %2524, -1500
  %2526 = add i64 %2523, 8
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  store i32 0, i32* %2527, align 4
  %2528 = load i64, i64* %3, align 8
  %2529 = add i64 %2528, 104
  store i64 %2529, i64* %3, align 8
  br label %block_.L_436ae2

block_.L_436a7f:                                  ; preds = %block_436a0c
  %2530 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2530, i64* %RAX.i67, align 8
  %2531 = add i64 %2530, 1240
  %2532 = add i64 %2523, 14
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RCX.i1986, align 8
  store i64 %2530, i64* %RAX.i67, align 8
  %2536 = add i64 %2530, 1244
  %2537 = add i64 %2523, 28
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i32 %2539, %2534
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RCX.i1986, align 8
  %2542 = lshr i32 %2540, 31
  %2543 = add i32 %2540, -51
  %2544 = icmp ult i32 %2540, 51
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %12, align 1
  %2546 = and i32 %2543, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %13, align 1
  %2551 = xor i32 %2540, 16
  %2552 = xor i32 %2551, %2543
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %14, align 1
  %2556 = icmp eq i32 %2543, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %15, align 1
  %2558 = lshr i32 %2543, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %16, align 1
  %2560 = xor i32 %2558, %2542
  %2561 = add nuw nsw i32 %2560, %2542
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %17, align 1
  %2564 = icmp ne i8 %2559, 0
  %2565 = xor i1 %2564, %2562
  %2566 = or i1 %2556, %2565
  %.v99 = select i1 %2566, i64 53, i64 37
  %2567 = add i64 %2523, %.v99
  store i64 %2567, i64* %3, align 8
  br i1 %2566, label %block_.L_436ab4, label %block_436aa4

block_436aa4:                                     ; preds = %block_.L_436a7f
  store i64 51, i64* %RAX.i67, align 8
  %2568 = load i64, i64* %RBP.i, align 8
  %2569 = add i64 %2568, -1504
  %2570 = add i64 %2567, 11
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  store i32 51, i32* %2571, align 4
  %2572 = load i64, i64* %3, align 8
  %2573 = add i64 %2572, 39
  store i64 %2573, i64* %3, align 8
  br label %block_.L_436ad6

block_.L_436ab4:                                  ; preds = %block_.L_436a7f
  store i64 %2530, i64* %RAX.i67, align 8
  %2574 = add i64 %2567, 14
  store i64 %2574, i64* %3, align 8
  %2575 = load i32, i32* %2533, align 4
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RCX.i1986, align 8
  store i64 %2530, i64* %RAX.i67, align 8
  %2577 = add i64 %2567, 28
  store i64 %2577, i64* %3, align 8
  %2578 = load i32, i32* %2538, align 4
  %2579 = add i32 %2578, %2575
  %2580 = zext i32 %2579 to i64
  store i64 %2580, i64* %RCX.i1986, align 8
  %2581 = icmp ult i32 %2579, %2575
  %2582 = icmp ult i32 %2579, %2578
  %2583 = or i1 %2581, %2582
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %12, align 1
  %2585 = and i32 %2579, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %13, align 1
  %2590 = xor i32 %2578, %2575
  %2591 = xor i32 %2590, %2579
  %2592 = lshr i32 %2591, 4
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  store i8 %2594, i8* %14, align 1
  %2595 = icmp eq i32 %2579, 0
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %15, align 1
  %2597 = lshr i32 %2579, 31
  %2598 = trunc i32 %2597 to i8
  store i8 %2598, i8* %16, align 1
  %2599 = lshr i32 %2575, 31
  %2600 = lshr i32 %2578, 31
  %2601 = xor i32 %2597, %2599
  %2602 = xor i32 %2597, %2600
  %2603 = add nuw nsw i32 %2601, %2602
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %17, align 1
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -1504
  %2608 = add i64 %2567, 34
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  store i32 %2579, i32* %2609, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_436ad6

block_.L_436ad6:                                  ; preds = %block_.L_436ab4, %block_436aa4
  %2610 = phi i64 [ %.pre66, %block_.L_436ab4 ], [ %2573, %block_436aa4 ]
  %2611 = load i64, i64* %RBP.i, align 8
  %2612 = add i64 %2611, -1504
  %2613 = add i64 %2610, 6
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i67, align 8
  %2617 = add i64 %2611, -1500
  %2618 = add i64 %2610, 12
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  store i32 %2615, i32* %2619, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_436ae2

block_.L_436ae2:                                  ; preds = %block_.L_436ad6, %block_436a72
  %2620 = phi i64 [ %.pre67, %block_.L_436ad6 ], [ %2529, %block_436a72 ]
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -1500
  %2623 = add i64 %2620, 6
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = zext i32 %2625 to i64
  store i64 %2626, i64* %RAX.i67, align 8
  store i64 ptrtoint (%G__0x4c08c0_type* @G__0x4c08c0 to i64), i64* %RSI.i1995, align 8
  %2627 = add i64 %2621, -1488
  %2628 = add i64 %2620, 23
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i64*
  %2630 = load i64, i64* %2629, align 8
  store i64 %2630, i64* %RDI.i1881, align 8
  %2631 = add i64 %2621, -1480
  %2632 = add i64 %2620, 30
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i64*
  %2634 = load i64, i64* %2633, align 8
  store i64 %2634, i64* %RDX.i1187, align 8
  %2635 = add i64 %2621, -1492
  %2636 = add i64 %2620, 36
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RCX.i1986, align 8
  %2640 = add i64 %2621, -1496
  %2641 = add i64 %2620, 43
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %1812, align 8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 %2626, i64* %2645, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2646 = add i64 %2620, -219602
  %2647 = add i64 %2620, 53
  %2648 = load i64, i64* %6, align 8
  %2649 = add i64 %2648, -8
  %2650 = inttoptr i64 %2649 to i64*
  store i64 %2647, i64* %2650, align 8
  store i64 %2649, i64* %6, align 8
  store i64 %2646, i64* %3, align 8
  %2651 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -1508
  %2654 = load i32, i32* %EAX.i83, align 4
  %2655 = load i64, i64* %3, align 8
  %2656 = add i64 %2655, 6
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2653 to i32*
  store i32 %2654, i32* %2657, align 4
  %2658 = load i64, i64* %3, align 8
  %2659 = add i64 %2658, 81
  store i64 %2659, i64* %3, align 8
  br label %block_.L_436b6e

block_.L_436b22:                                  ; preds = %block_.L_4369f7
  store i64 ptrtoint (%G__0x4c08de_type* @G__0x4c08de to i64), i64* %RSI.i1995, align 8
  %2660 = add i64 %1814, -1200
  store i64 %2660, i64* %RDX.i1187, align 8
  %2661 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2661, i64* %RDI.i1881, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2662 = add i64 %2449, 12
  %2663 = add i64 %2463, 36
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RCX.i1986, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2668 = add i64 %2449, 16
  %2669 = add i64 %2463, 48
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i32*
  %2671 = load i32, i32* %2670, align 4
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %2667, align 8
  store i64 %2449, i64* %RAX.i67, align 8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2674 = add i64 %2449, 1240
  %2675 = add i64 %2463, 63
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %2673, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2679 = add i64 %2463, -219666
  %2680 = add i64 %2463, 70
  %2681 = load i64, i64* %6, align 8
  %2682 = add i64 %2681, -8
  %2683 = inttoptr i64 %2682 to i64*
  store i64 %2680, i64* %2683, align 8
  store i64 %2682, i64* %6, align 8
  store i64 %2679, i64* %3, align 8
  %2684 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -1512
  %2687 = load i32, i32* %EAX.i83, align 4
  %2688 = load i64, i64* %3, align 8
  %2689 = add i64 %2688, 6
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2686 to i32*
  store i32 %2687, i32* %2690, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_436b6e

block_.L_436b6e:                                  ; preds = %block_.L_436b22, %block_.L_436ae2
  %2691 = phi i64 [ %.pre68, %block_.L_436b22 ], [ %2659, %block_.L_436ae2 ]
  %MEMORY.20 = phi %struct.Memory* [ %2684, %block_.L_436b22 ], [ %2651, %block_.L_436ae2 ]
  %2692 = add i64 %2691, 193
  br label %block_.L_436c2f

block_.L_436b73:                                  ; preds = %block_.L_436751
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2693 = add i64 %1791, 15
  store i64 %2693, i64* %3, align 8
  %2694 = load i32, i32* %1778, align 4
  store i8 0, i8* %12, align 1
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2700 = icmp eq i32 %2694, 0
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %15, align 1
  %2702 = lshr i32 %2694, 31
  %2703 = trunc i32 %2702 to i8
  store i8 %2703, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v103 = select i1 %2700, i64 21, i64 100
  %2704 = add i64 %1791, %.v103
  store i64 %2704, i64* %3, align 8
  br i1 %2700, label %block_436b88, label %block_.L_436bd7

block_436b88:                                     ; preds = %block_.L_436b73
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2705 = add i64 %.pre64, 1272
  %2706 = add i64 %2704, 15
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  store i8 0, i8* %12, align 1
  %2709 = and i32 %2708, 255
  %2710 = tail call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  store i8 %2713, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2714 = icmp eq i32 %2708, 0
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %15, align 1
  %2716 = lshr i32 %2708, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v104 = select i1 %2714, i64 21, i64 79
  %2718 = add i64 %2704, %.v104
  store i64 %2718, i64* %3, align 8
  br i1 %2714, label %block_436b9d, label %block_.L_436bd7

block_436b9d:                                     ; preds = %block_436b88
  store i64 ptrtoint (%G__0x4c08fb_type* @G__0x4c08fb to i64), i64* %RSI.i1995, align 8
  %2719 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2719, i64* %RDI.i1881, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2720 = add i64 %.pre64, 12
  %2721 = add i64 %2718, 29
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RDX.i1187, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2725 = add i64 %.pre64, 16
  %2726 = add i64 %2718, 40
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2730 = add i64 %2718, -219789
  %2731 = add i64 %2718, 47
  %2732 = load i64, i64* %6, align 8
  %2733 = add i64 %2732, -8
  %2734 = inttoptr i64 %2733 to i64*
  store i64 %2731, i64* %2734, align 8
  store i64 %2733, i64* %6, align 8
  store i64 %2730, i64* %3, align 8
  %2735 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1697)
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -1516
  %2738 = load i32, i32* %EAX.i83, align 4
  %2739 = load i64, i64* %3, align 8
  %2740 = add i64 %2739, 6
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2737 to i32*
  store i32 %2738, i32* %2741, align 4
  %2742 = load i64, i64* %3, align 8
  %2743 = add i64 %2742, 88
  store i64 %2743, i64* %3, align 8
  br label %block_.L_436c2a

block_.L_436bd7:                                  ; preds = %block_436b88, %block_.L_436b73
  %2744 = phi i64 [ %2718, %block_436b88 ], [ %2704, %block_.L_436b73 ]
  store i64 ptrtoint (%G__0x4c0914_type* @G__0x4c0914 to i64), i64* %RSI.i1995, align 8
  %2745 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2745, i64* %RDI.i1881, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2746 = add i64 %.pre64, 12
  %2747 = add i64 %2744, 29
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = zext i32 %2749 to i64
  store i64 %2750, i64* %RDX.i1187, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2751 = add i64 %.pre64, 16
  %2752 = add i64 %2744, 40
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i1986, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2757 = add i64 %.pre64, 1276
  %2758 = add i64 %2744, 55
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %2756, align 8
  store i64 %.pre64, i64* %RAX.i67, align 8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2763 = add i64 %.pre64, 1280
  %2764 = add i64 %2744, 70
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %2762, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2768 = add i64 %2744, -219847
  %2769 = add i64 %2744, 77
  %2770 = load i64, i64* %6, align 8
  %2771 = add i64 %2770, -8
  %2772 = inttoptr i64 %2771 to i64*
  store i64 %2769, i64* %2772, align 8
  store i64 %2771, i64* %6, align 8
  store i64 %2768, i64* %3, align 8
  %2773 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1697)
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -1520
  %2776 = load i32, i32* %EAX.i83, align 4
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, 6
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2775 to i32*
  store i32 %2776, i32* %2779, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_436c2a

block_.L_436c2a:                                  ; preds = %block_.L_436bd7, %block_436b9d
  %2780 = phi i64 [ %.pre74, %block_.L_436bd7 ], [ %2743, %block_436b9d ]
  %MEMORY.22 = phi %struct.Memory* [ %2773, %block_.L_436bd7 ], [ %2735, %block_436b9d ]
  %2781 = add i64 %2780, 5
  store i64 %2781, i64* %3, align 8
  br label %block_.L_436c2f

block_.L_436c2f:                                  ; preds = %block_.L_436c2a, %block_.L_436b6e
  %storemerge43 = phi i64 [ %2692, %block_.L_436b6e ], [ %2781, %block_.L_436c2a ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.20, %block_.L_436b6e ], [ %MEMORY.22, %block_.L_436c2a ]
  %2782 = add i64 %storemerge43, 5
  store i64 %2782, i64* %3, align 8
  br label %block_.L_436c34

block_.L_436c34:                                  ; preds = %block_.L_436c2f, %block_436708
  %storemerge40 = phi i64 [ %1774, %block_436708 ], [ %2782, %block_.L_436c2f ]
  %MEMORY.24 = phi %struct.Memory* [ %1766, %block_436708 ], [ %MEMORY.23, %block_.L_436c2f ]
  %2783 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2783, i64* %RAX.i67, align 8
  %2784 = add i64 %2783, 2356
  %2785 = add i64 %storemerge40, 15
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  store i8 0, i8* %12, align 1
  %2788 = and i32 %2787, 255
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2793 = icmp eq i32 %2787, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %15, align 1
  %2795 = lshr i32 %2787, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v90 = select i1 %2793, i64 21, i64 57
  %2797 = add i64 %storemerge40, %.v90
  %2798 = add i64 %2797, 10
  store i64 %2798, i64* %3, align 8
  br i1 %2793, label %block_436c49, label %block_.L_436c6d

block_436c49:                                     ; preds = %block_.L_436c34
  store i64 ptrtoint (%G__0x4c0940_type* @G__0x4c0940 to i64), i64* %RSI.i1995, align 8
  %2799 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2799, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2800 = add i64 %2797, -219961
  %2801 = add i64 %2797, 25
  %2802 = load i64, i64* %6, align 8
  %2803 = add i64 %2802, -8
  %2804 = inttoptr i64 %2803 to i64*
  store i64 %2801, i64* %2804, align 8
  store i64 %2803, i64* %6, align 8
  store i64 %2800, i64* %3, align 8
  %2805 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.24)
  %2806 = load i64, i64* %RBP.i, align 8
  %2807 = add i64 %2806, -1524
  %2808 = load i32, i32* %EAX.i83, align 4
  %2809 = load i64, i64* %3, align 8
  %2810 = add i64 %2809, 6
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2807 to i32*
  store i32 %2808, i32* %2811, align 4
  %2812 = load i64, i64* %3, align 8
  %2813 = add i64 %2812, 36
  store i64 %2813, i64* %3, align 8
  br label %block_.L_436c8c

block_.L_436c6d:                                  ; preds = %block_.L_436c34
  store i64 ptrtoint (%G__0x4c096c_type* @G__0x4c096c to i64), i64* %RSI.i1995, align 8
  %2814 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2814, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2815 = add i64 %2797, -219997
  %2816 = add i64 %2797, 25
  %2817 = load i64, i64* %6, align 8
  %2818 = add i64 %2817, -8
  %2819 = inttoptr i64 %2818 to i64*
  store i64 %2816, i64* %2819, align 8
  store i64 %2818, i64* %6, align 8
  store i64 %2815, i64* %3, align 8
  %2820 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.24)
  %2821 = load i64, i64* %RBP.i, align 8
  %2822 = add i64 %2821, -1528
  %2823 = load i32, i32* %EAX.i83, align 4
  %2824 = load i64, i64* %3, align 8
  %2825 = add i64 %2824, 6
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2822 to i32*
  store i32 %2823, i32* %2826, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_436c8c

block_.L_436c8c:                                  ; preds = %block_.L_436c6d, %block_436c49
  %2827 = phi i64 [ %.pre75, %block_.L_436c6d ], [ %2813, %block_436c49 ]
  %MEMORY.25 = phi %struct.Memory* [ %2820, %block_.L_436c6d ], [ %2805, %block_436c49 ]
  store i64 ptrtoint (%G__0x4c0998_type* @G__0x4c0998 to i64), i64* %RSI.i1995, align 8
  %2828 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2828, i64* %RDI.i1881, align 8
  %2829 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2829, i64* %RAX.i67, align 8
  %2830 = add i64 %2827, 28
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i32*
  %2832 = load i32, i32* %2831, align 4
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RDX.i1187, align 8
  store i64 %2829, i64* %RAX.i67, align 8
  %2834 = add i64 %2829, 4
  %2835 = add i64 %2827, 39
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = zext i32 %2837 to i64
  store i64 %2838, i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2839 = add i64 %2827, -220028
  %2840 = add i64 %2827, 46
  %2841 = load i64, i64* %6, align 8
  %2842 = add i64 %2841, -8
  %2843 = inttoptr i64 %2842 to i64*
  store i64 %2840, i64* %2843, align 8
  store i64 %2842, i64* %6, align 8
  store i64 %2839, i64* %3, align 8
  %2844 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.25)
  %2845 = load i64, i64* %3, align 8
  %2846 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2846, i64* %RSI.i1995, align 8
  %2847 = add i64 %2846, 2436
  %2848 = add i64 %2845, 15
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  %2851 = add i32 %2850, -2
  %2852 = icmp ult i32 %2850, 2
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %12, align 1
  %2854 = and i32 %2851, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %13, align 1
  %2859 = xor i32 %2851, %2850
  %2860 = lshr i32 %2859, 4
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  store i8 %2862, i8* %14, align 1
  %2863 = icmp eq i32 %2851, 0
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %15, align 1
  %2865 = lshr i32 %2851, 31
  %2866 = trunc i32 %2865 to i8
  store i8 %2866, i8* %16, align 1
  %2867 = lshr i32 %2850, 31
  %2868 = xor i32 %2865, %2867
  %2869 = add nuw nsw i32 %2868, %2867
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %17, align 1
  %2872 = load i64, i64* %RBP.i, align 8
  %2873 = add i64 %2872, -1532
  %2874 = load i32, i32* %EAX.i83, align 4
  %2875 = add i64 %2845, 21
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2873 to i32*
  store i32 %2874, i32* %2876, align 4
  %2877 = load i64, i64* %3, align 8
  %2878 = load i8, i8* %15, align 1
  %2879 = icmp eq i8 %2878, 0
  %.v121 = select i1 %2879, i64 42, i64 6
  %2880 = add i64 %2877, %.v121
  store i64 %2880, i64* %3, align 8
  br i1 %2879, label %block_.L_436cf9, label %block_436cd5

block_436cd5:                                     ; preds = %block_.L_436c8c
  store i64 ptrtoint (%G__0x4c09c6_type* @G__0x4c09c6 to i64), i64* %RSI.i1995, align 8
  %2881 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2881, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2882 = add i64 %2880, -220101
  %2883 = add i64 %2880, 25
  %2884 = load i64, i64* %6, align 8
  %2885 = add i64 %2884, -8
  %2886 = inttoptr i64 %2885 to i64*
  store i64 %2883, i64* %2886, align 8
  store i64 %2885, i64* %6, align 8
  store i64 %2882, i64* %3, align 8
  %2887 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2844)
  %2888 = load i64, i64* %RBP.i, align 8
  %2889 = add i64 %2888, -1536
  %2890 = load i32, i32* %EAX.i83, align 4
  %2891 = load i64, i64* %3, align 8
  %2892 = add i64 %2891, 6
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2889 to i32*
  store i32 %2890, i32* %2893, align 4
  %2894 = load i64, i64* %3, align 8
  %2895 = add i64 %2894, 98
  br label %block_.L_436d56

block_.L_436cf9:                                  ; preds = %block_.L_436c8c
  %2896 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2896, i64* %RAX.i67, align 8
  %2897 = add i64 %2896, 2436
  %2898 = add i64 %2880, 15
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = add i32 %2900, -1
  %2902 = icmp eq i32 %2900, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %12, align 1
  %2904 = and i32 %2901, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %13, align 1
  %2909 = xor i32 %2901, %2900
  %2910 = lshr i32 %2909, 4
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  store i8 %2912, i8* %14, align 1
  %2913 = icmp eq i32 %2901, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %15, align 1
  %2915 = lshr i32 %2901, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %16, align 1
  %2917 = lshr i32 %2900, 31
  %2918 = xor i32 %2915, %2917
  %2919 = add nuw nsw i32 %2918, %2917
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %17, align 1
  %.v95 = select i1 %2913, i64 21, i64 57
  %2922 = add i64 %2880, %.v95
  %2923 = add i64 %2922, 10
  store i64 %2923, i64* %3, align 8
  br i1 %2913, label %block_436d0e, label %block_.L_436d32

block_436d0e:                                     ; preds = %block_.L_436cf9
  store i64 ptrtoint (%G__0x4c09f1_type* @G__0x4c09f1 to i64), i64* %RSI.i1995, align 8
  %2924 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2924, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2925 = add i64 %2922, -220158
  %2926 = add i64 %2922, 25
  %2927 = load i64, i64* %6, align 8
  %2928 = add i64 %2927, -8
  %2929 = inttoptr i64 %2928 to i64*
  store i64 %2926, i64* %2929, align 8
  store i64 %2928, i64* %6, align 8
  store i64 %2925, i64* %3, align 8
  %2930 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2844)
  %2931 = load i64, i64* %RBP.i, align 8
  %2932 = add i64 %2931, -1540
  %2933 = load i32, i32* %EAX.i83, align 4
  %2934 = load i64, i64* %3, align 8
  %2935 = add i64 %2934, 6
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2932 to i32*
  store i32 %2933, i32* %2936, align 4
  %2937 = load i64, i64* %3, align 8
  %2938 = add i64 %2937, 36
  store i64 %2938, i64* %3, align 8
  br label %block_.L_436d51

block_.L_436d32:                                  ; preds = %block_.L_436cf9
  store i64 ptrtoint (%G__0x4c0a2e_type* @G__0x4c0a2e to i64), i64* %RSI.i1995, align 8
  %2939 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2939, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2940 = add i64 %2922, -220194
  %2941 = add i64 %2922, 25
  %2942 = load i64, i64* %6, align 8
  %2943 = add i64 %2942, -8
  %2944 = inttoptr i64 %2943 to i64*
  store i64 %2941, i64* %2944, align 8
  store i64 %2943, i64* %6, align 8
  store i64 %2940, i64* %3, align 8
  %2945 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2844)
  %2946 = load i64, i64* %RBP.i, align 8
  %2947 = add i64 %2946, -1544
  %2948 = load i32, i32* %EAX.i83, align 4
  %2949 = load i64, i64* %3, align 8
  %2950 = add i64 %2949, 6
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2947 to i32*
  store i32 %2948, i32* %2951, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_436d51

block_.L_436d51:                                  ; preds = %block_.L_436d32, %block_436d0e
  %2952 = phi i64 [ %.pre76, %block_.L_436d32 ], [ %2938, %block_436d0e ]
  %MEMORY.26 = phi %struct.Memory* [ %2945, %block_.L_436d32 ], [ %2930, %block_436d0e ]
  %2953 = add i64 %2952, 5
  store i64 %2953, i64* %3, align 8
  br label %block_.L_436d56

block_.L_436d56:                                  ; preds = %block_.L_436d51, %block_436cd5
  %storemerge41 = phi i64 [ %2895, %block_436cd5 ], [ %2953, %block_.L_436d51 ]
  %MEMORY.27 = phi %struct.Memory* [ %2887, %block_436cd5 ], [ %MEMORY.26, %block_.L_436d51 ]
  %2954 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2954, i64* %RAX.i67, align 8
  %2955 = add i64 %2954, 2464
  %2956 = add i64 %storemerge41, 15
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  store i8 0, i8* %12, align 1
  %2959 = and i32 %2958, 255
  %2960 = tail call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  store i8 %2963, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2964 = icmp eq i32 %2958, 0
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %15, align 1
  %2966 = lshr i32 %2958, 31
  %2967 = trunc i32 %2966 to i8
  store i8 %2967, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v91 = select i1 %2964, i64 57, i64 21
  %2968 = add i64 %storemerge41, %.v91
  %2969 = add i64 %2968, 10
  store i64 %2969, i64* %3, align 8
  br i1 %2964, label %block_.L_436d8f, label %block_436d6b

block_436d6b:                                     ; preds = %block_.L_436d56
  store i64 ptrtoint (%G__0x4c0a7e_type* @G__0x4c0a7e to i64), i64* %RSI.i1995, align 8
  %2970 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2970, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2971 = add i64 %2968, -220251
  %2972 = add i64 %2968, 25
  %2973 = load i64, i64* %6, align 8
  %2974 = add i64 %2973, -8
  %2975 = inttoptr i64 %2974 to i64*
  store i64 %2972, i64* %2975, align 8
  store i64 %2974, i64* %6, align 8
  store i64 %2971, i64* %3, align 8
  %2976 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2977 = load i64, i64* %RBP.i, align 8
  %2978 = add i64 %2977, -1548
  %2979 = load i32, i32* %EAX.i83, align 4
  %2980 = load i64, i64* %3, align 8
  %2981 = add i64 %2980, 6
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2978 to i32*
  store i32 %2979, i32* %2982, align 4
  %2983 = load i64, i64* %3, align 8
  %2984 = add i64 %2983, 36
  store i64 %2984, i64* %3, align 8
  br label %block_.L_436dae

block_.L_436d8f:                                  ; preds = %block_.L_436d56
  store i64 ptrtoint (%G__0x4c0aa9_type* @G__0x4c0aa9 to i64), i64* %RSI.i1995, align 8
  %2985 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %2985, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %2986 = add i64 %2968, -220287
  %2987 = add i64 %2968, 25
  %2988 = load i64, i64* %6, align 8
  %2989 = add i64 %2988, -8
  %2990 = inttoptr i64 %2989 to i64*
  store i64 %2987, i64* %2990, align 8
  store i64 %2989, i64* %6, align 8
  store i64 %2986, i64* %3, align 8
  %2991 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.27)
  %2992 = load i64, i64* %RBP.i, align 8
  %2993 = add i64 %2992, -1552
  %2994 = load i32, i32* %EAX.i83, align 4
  %2995 = load i64, i64* %3, align 8
  %2996 = add i64 %2995, 6
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2993 to i32*
  store i32 %2994, i32* %2997, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_436dae

block_.L_436dae:                                  ; preds = %block_.L_436d8f, %block_436d6b
  %2998 = phi i64 [ %.pre77, %block_.L_436d8f ], [ %2984, %block_436d6b ]
  %MEMORY.28 = phi %struct.Memory* [ %2991, %block_.L_436d8f ], [ %2976, %block_436d6b ]
  %2999 = add i64 %2998, ptrtoint (%G_0x294b43__rip__type* @G_0x294b43__rip_ to i64)
  %3000 = add i64 %2998, 7
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i64*
  %3002 = load i64, i64* %3001, align 8
  store i64 %3002, i64* %RAX.i67, align 8
  %3003 = add i64 %3002, 2364
  %3004 = add i64 %2998, 13
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3003 to i32*
  %3006 = load i32, i32* %3005, align 4
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RCX.i1986, align 8
  store i8 0, i8* %12, align 1
  %3008 = and i32 %3006, 255
  %3009 = tail call i32 @llvm.ctpop.i32(i32 %3008)
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = xor i8 %3011, 1
  store i8 %3012, i8* %13, align 1
  %3013 = icmp eq i32 %3006, 0
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %15, align 1
  %3015 = lshr i32 %3006, 31
  %3016 = trunc i32 %3015 to i8
  store i8 %3016, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3017 = load i64, i64* %RBP.i, align 8
  %3018 = add i64 %3017, -1556
  %3019 = add i64 %2998, 21
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i32*
  store i32 %3006, i32* %3020, align 4
  %3021 = load i64, i64* %3, align 8
  %3022 = load i8, i8* %15, align 1
  %3023 = icmp ne i8 %3022, 0
  %.v122 = select i1 %3023, i64 37, i64 6
  %3024 = add i64 %3021, %.v122
  store i64 %3024, i64* %3, align 8
  %cmpBr_436dc3 = icmp eq i8 %3022, 1
  br i1 %cmpBr_436dc3, label %block_.L_436de8, label %block_436dc9

block_436dc9:                                     ; preds = %block_.L_436dae
  %3025 = load i64, i64* %RBP.i, align 8
  %3026 = add i64 %3025, -1556
  %3027 = add i64 %3024, 11
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  %3029 = load i32, i32* %3028, align 4
  %3030 = add i32 %3029, -1
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RAX.i67, align 8
  %3032 = icmp eq i32 %3029, 0
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %12, align 1
  %3034 = and i32 %3030, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %13, align 1
  %3039 = xor i32 %3030, %3029
  %3040 = lshr i32 %3039, 4
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  store i8 %3042, i8* %14, align 1
  %3043 = icmp eq i32 %3030, 0
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %15, align 1
  %3045 = lshr i32 %3030, 31
  %3046 = trunc i32 %3045 to i8
  store i8 %3046, i8* %16, align 1
  %3047 = lshr i32 %3029, 31
  %3048 = xor i32 %3045, %3047
  %3049 = add nuw nsw i32 %3048, %3047
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %17, align 1
  %3052 = add i64 %3025, -1560
  %3053 = add i64 %3024, 20
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  store i32 %3030, i32* %3054, align 4
  %3055 = load i64, i64* %3, align 8
  %3056 = load i8, i8* %15, align 1
  %3057 = icmp ne i8 %3056, 0
  %.v123 = select i1 %3057, i64 47, i64 6
  %3058 = add i64 %3055, %.v123
  store i64 %3058, i64* %3, align 8
  %cmpBr_436ddd = icmp eq i8 %3056, 1
  br i1 %cmpBr_436ddd, label %block_.L_436e0c, label %block_436de3

block_436de3:                                     ; preds = %block_436dc9
  store i64 ptrtoint (%G__0x4c0b3f_type* @G__0x4c0b3f to i64), i64* %RSI.i1995, align 8
  %3059 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3059, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3060 = add i64 %3058, -220371
  %3061 = add i64 %3058, 102
  %3062 = load i64, i64* %6, align 8
  %3063 = add i64 %3062, -8
  %3064 = inttoptr i64 %3063 to i64*
  store i64 %3061, i64* %3064, align 8
  store i64 %3063, i64* %6, align 8
  store i64 %3060, i64* %3, align 8
  %3065 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.28)
  %3066 = load i64, i64* %RBP.i, align 8
  %3067 = add i64 %3066, -1572
  %3068 = load i32, i32* %EAX.i83, align 4
  %3069 = load i64, i64* %3, align 8
  %3070 = add i64 %3069, 6
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3067 to i32*
  store i32 %3068, i32* %3071, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_436e4f

block_.L_436de8:                                  ; preds = %block_.L_436dae
  store i64 ptrtoint (%G__0x4c0ad8_type* @G__0x4c0ad8 to i64), i64* %RSI.i1995, align 8
  %3072 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3072, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3073 = add i64 %3024, -220376
  %3074 = add i64 %3024, 25
  %3075 = load i64, i64* %6, align 8
  %3076 = add i64 %3075, -8
  %3077 = inttoptr i64 %3076 to i64*
  store i64 %3074, i64* %3077, align 8
  store i64 %3076, i64* %6, align 8
  store i64 %3073, i64* %3, align 8
  %3078 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.28)
  %3079 = load i64, i64* %RBP.i, align 8
  %3080 = add i64 %3079, -1564
  %3081 = load i32, i32* %EAX.i83, align 4
  %3082 = load i64, i64* %3, align 8
  %3083 = add i64 %3082, 6
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3080 to i32*
  store i32 %3081, i32* %3084, align 4
  %3085 = load i64, i64* %3, align 8
  %3086 = add i64 %3085, 72
  store i64 %3086, i64* %3, align 8
  br label %block_.L_436e4f

block_.L_436e0c:                                  ; preds = %block_436dc9
  store i64 ptrtoint (%G__0x4c0b0b_type* @G__0x4c0b0b to i64), i64* %RSI.i1995, align 8
  %3087 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3087, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3088 = add i64 %3058, -220412
  %3089 = add i64 %3058, 25
  %3090 = load i64, i64* %6, align 8
  %3091 = add i64 %3090, -8
  %3092 = inttoptr i64 %3091 to i64*
  store i64 %3089, i64* %3092, align 8
  store i64 %3091, i64* %6, align 8
  store i64 %3088, i64* %3, align 8
  %3093 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.28)
  %3094 = load i64, i64* %RBP.i, align 8
  %3095 = add i64 %3094, -1568
  %3096 = load i32, i32* %EAX.i83, align 4
  %3097 = load i64, i64* %3, align 8
  %3098 = add i64 %3097, 6
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3095 to i32*
  store i32 %3096, i32* %3099, align 4
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 36
  store i64 %3101, i64* %3, align 8
  br label %block_.L_436e4f

block_.L_436e4f:                                  ; preds = %block_436de3, %block_.L_436e0c, %block_.L_436de8
  %3102 = phi i64 [ %3086, %block_.L_436de8 ], [ %3101, %block_.L_436e0c ], [ %.pre78, %block_436de3 ]
  %MEMORY.29 = phi %struct.Memory* [ %3078, %block_.L_436de8 ], [ %3093, %block_.L_436e0c ], [ %3065, %block_436de3 ]
  %3103 = add i64 %3102, ptrtoint (%G_0x294aa2__rip__type* @G_0x294aa2__rip_ to i64)
  %3104 = add i64 %3102, 7
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3103 to i64*
  %3106 = load i64, i64* %3105, align 8
  store i64 %3106, i64* %RAX.i67, align 8
  %3107 = add i64 %3106, 2360
  %3108 = add i64 %3102, 13
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RCX.i1986, align 8
  store i8 0, i8* %12, align 1
  %3112 = and i32 %3110, 255
  %3113 = tail call i32 @llvm.ctpop.i32(i32 %3112)
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  %3116 = xor i8 %3115, 1
  store i8 %3116, i8* %13, align 1
  %3117 = icmp eq i32 %3110, 0
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %15, align 1
  %3119 = lshr i32 %3110, 31
  %3120 = trunc i32 %3119 to i8
  store i8 %3120, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3121 = load i64, i64* %RBP.i, align 8
  %3122 = add i64 %3121, -1576
  %3123 = add i64 %3102, 21
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  store i32 %3110, i32* %3124, align 4
  %3125 = load i64, i64* %3, align 8
  %3126 = load i8, i8* %15, align 1
  %3127 = icmp ne i8 %3126, 0
  %.v124 = select i1 %3127, i64 37, i64 6
  %3128 = add i64 %3125, %.v124
  store i64 %3128, i64* %3, align 8
  %cmpBr_436e64 = icmp eq i8 %3126, 1
  br i1 %cmpBr_436e64, label %block_.L_436e89, label %block_436e6a

block_436e6a:                                     ; preds = %block_.L_436e4f
  %3129 = load i64, i64* %RBP.i, align 8
  %3130 = add i64 %3129, -1576
  %3131 = add i64 %3128, 11
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = add i32 %3133, -1
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i67, align 8
  %3136 = icmp eq i32 %3133, 0
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %12, align 1
  %3138 = and i32 %3134, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %13, align 1
  %3143 = xor i32 %3134, %3133
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %14, align 1
  %3147 = icmp eq i32 %3134, 0
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %15, align 1
  %3149 = lshr i32 %3134, 31
  %3150 = trunc i32 %3149 to i8
  store i8 %3150, i8* %16, align 1
  %3151 = lshr i32 %3133, 31
  %3152 = xor i32 %3149, %3151
  %3153 = add nuw nsw i32 %3152, %3151
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %17, align 1
  %3156 = add i64 %3129, -1580
  %3157 = add i64 %3128, 20
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i32*
  store i32 %3134, i32* %3158, align 4
  %3159 = load i64, i64* %3, align 8
  %3160 = load i8, i8* %15, align 1
  %3161 = icmp ne i8 %3160, 0
  %.v125 = select i1 %3161, i64 47, i64 6
  %3162 = add i64 %3159, %.v125
  store i64 %3162, i64* %3, align 8
  %cmpBr_436e7e = icmp eq i8 %3160, 1
  br i1 %cmpBr_436e7e, label %block_.L_436ead, label %block_436e84

block_436e84:                                     ; preds = %block_436e6a
  store i64 ptrtoint (%G__0x4c0bf5_type* @G__0x4c0bf5 to i64), i64* %RSI.i1995, align 8
  %3163 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3163, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3164 = add i64 %3162, -220532
  %3165 = add i64 %3162, 102
  %3166 = load i64, i64* %6, align 8
  %3167 = add i64 %3166, -8
  %3168 = inttoptr i64 %3167 to i64*
  store i64 %3165, i64* %3168, align 8
  store i64 %3167, i64* %6, align 8
  store i64 %3164, i64* %3, align 8
  %3169 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %3170 = load i64, i64* %RBP.i, align 8
  %3171 = add i64 %3170, -1592
  %3172 = load i32, i32* %EAX.i83, align 4
  %3173 = load i64, i64* %3, align 8
  %3174 = add i64 %3173, 6
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3171 to i32*
  store i32 %3172, i32* %3175, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_436ef0

block_.L_436e89:                                  ; preds = %block_.L_436e4f
  store i64 ptrtoint (%G__0x4c0b73_type* @G__0x4c0b73 to i64), i64* %RSI.i1995, align 8
  %3176 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3176, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3177 = add i64 %3128, -220537
  %3178 = add i64 %3128, 25
  %3179 = load i64, i64* %6, align 8
  %3180 = add i64 %3179, -8
  %3181 = inttoptr i64 %3180 to i64*
  store i64 %3178, i64* %3181, align 8
  store i64 %3180, i64* %6, align 8
  store i64 %3177, i64* %3, align 8
  %3182 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -1584
  %3185 = load i32, i32* %EAX.i83, align 4
  %3186 = load i64, i64* %3, align 8
  %3187 = add i64 %3186, 6
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3184 to i32*
  store i32 %3185, i32* %3188, align 4
  %3189 = load i64, i64* %3, align 8
  %3190 = add i64 %3189, 72
  store i64 %3190, i64* %3, align 8
  br label %block_.L_436ef0

block_.L_436ead:                                  ; preds = %block_436e6a
  store i64 ptrtoint (%G__0x4c0bb7_type* @G__0x4c0bb7 to i64), i64* %RSI.i1995, align 8
  %3191 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3191, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3192 = add i64 %3162, -220573
  %3193 = add i64 %3162, 25
  %3194 = load i64, i64* %6, align 8
  %3195 = add i64 %3194, -8
  %3196 = inttoptr i64 %3195 to i64*
  store i64 %3193, i64* %3196, align 8
  store i64 %3195, i64* %6, align 8
  store i64 %3192, i64* %3, align 8
  %3197 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -1588
  %3200 = load i32, i32* %EAX.i83, align 4
  %3201 = load i64, i64* %3, align 8
  %3202 = add i64 %3201, 6
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3199 to i32*
  store i32 %3200, i32* %3203, align 4
  %3204 = load i64, i64* %3, align 8
  %3205 = add i64 %3204, 36
  store i64 %3205, i64* %3, align 8
  br label %block_.L_436ef0

block_.L_436ef0:                                  ; preds = %block_436e84, %block_.L_436ead, %block_.L_436e89
  %3206 = phi i64 [ %3190, %block_.L_436e89 ], [ %3205, %block_.L_436ead ], [ %.pre79, %block_436e84 ]
  %MEMORY.30 = phi %struct.Memory* [ %3182, %block_.L_436e89 ], [ %3197, %block_.L_436ead ], [ %3169, %block_436e84 ]
  %3207 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3207, i64* %RAX.i67, align 8
  %3208 = add i64 %3207, 3328
  %3209 = add i64 %3206, 15
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i32*
  %3211 = load i32, i32* %3210, align 4
  store i8 0, i8* %12, align 1
  %3212 = and i32 %3211, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3217 = icmp eq i32 %3211, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %15, align 1
  %3219 = lshr i32 %3211, 31
  %3220 = trunc i32 %3219 to i8
  store i8 %3220, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v92 = select i1 %3217, i64 57, i64 21
  %3221 = add i64 %3206, %.v92
  %3222 = add i64 %3221, 10
  store i64 %3222, i64* %3, align 8
  br i1 %3217, label %block_.L_436f29, label %block_436f05

block_436f05:                                     ; preds = %block_.L_436ef0
  store i64 ptrtoint (%G__0x4c0c29_type* @G__0x4c0c29 to i64), i64* %RSI.i1995, align 8
  %3223 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3223, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3224 = add i64 %3221, -220661
  %3225 = add i64 %3221, 25
  %3226 = load i64, i64* %6, align 8
  %3227 = add i64 %3226, -8
  %3228 = inttoptr i64 %3227 to i64*
  store i64 %3225, i64* %3228, align 8
  store i64 %3227, i64* %6, align 8
  store i64 %3224, i64* %3, align 8
  %3229 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.30)
  %3230 = load i64, i64* %RBP.i, align 8
  %3231 = add i64 %3230, -1596
  %3232 = load i32, i32* %EAX.i83, align 4
  %3233 = load i64, i64* %3, align 8
  %3234 = add i64 %3233, 6
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3231 to i32*
  store i32 %3232, i32* %3235, align 4
  %3236 = load i64, i64* %3, align 8
  %3237 = add i64 %3236, 36
  store i64 %3237, i64* %3, align 8
  br label %block_.L_436f48

block_.L_436f29:                                  ; preds = %block_.L_436ef0
  store i64 ptrtoint (%G__0x4c0c54_type* @G__0x4c0c54 to i64), i64* %RSI.i1995, align 8
  %3238 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3238, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3239 = add i64 %3221, -220697
  %3240 = add i64 %3221, 25
  %3241 = load i64, i64* %6, align 8
  %3242 = add i64 %3241, -8
  %3243 = inttoptr i64 %3242 to i64*
  store i64 %3240, i64* %3243, align 8
  store i64 %3242, i64* %6, align 8
  store i64 %3239, i64* %3, align 8
  %3244 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.30)
  %3245 = load i64, i64* %RBP.i, align 8
  %3246 = add i64 %3245, -1600
  %3247 = load i32, i32* %EAX.i83, align 4
  %3248 = load i64, i64* %3, align 8
  %3249 = add i64 %3248, 6
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3246 to i32*
  store i32 %3247, i32* %3250, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_436f48

block_.L_436f48:                                  ; preds = %block_.L_436f29, %block_436f05
  %3251 = phi i64 [ %.pre80, %block_.L_436f29 ], [ %3237, %block_436f05 ]
  %MEMORY.31 = phi %struct.Memory* [ %3244, %block_.L_436f29 ], [ %3229, %block_436f05 ]
  store i64 ptrtoint (%G__0x4c0c83_type* @G__0x4c0c83 to i64), i64* %RSI.i1995, align 8
  %3252 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3252, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3253 = add i64 %3251, -220728
  %3254 = add i64 %3251, 25
  %3255 = load i64, i64* %6, align 8
  %3256 = add i64 %3255, -8
  %3257 = inttoptr i64 %3256 to i64*
  store i64 %3254, i64* %3257, align 8
  store i64 %3256, i64* %6, align 8
  store i64 %3253, i64* %3, align 8
  %3258 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.31)
  %3259 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0cd4_type* @G__0x4c0cd4 to i64), i64* %RSI.i1995, align 8
  %3260 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3260, i64* %RDI.i1881, align 8
  %3261 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3261, i64* %RCX.i1986, align 8
  %3262 = add i64 %3261, 60
  %3263 = add i64 %3259, 31
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to float*
  %3265 = load float, float* %3264, align 4
  %3266 = fpext float %3265 to double
  store double %3266, double* %1201, align 1
  %3267 = load i64, i64* %RBP.i, align 8
  %3268 = add i64 %3267, -1604
  %3269 = load i32, i32* %EAX.i83, align 4
  %3270 = add i64 %3259, 37
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3268 to i32*
  store i32 %3269, i32* %3271, align 4
  %3272 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1879, align 1
  %3273 = add i64 %3272, -220790
  %3274 = add i64 %3272, 7
  %3275 = load i64, i64* %6, align 8
  %3276 = add i64 %3275, -8
  %3277 = inttoptr i64 %3276 to i64*
  store i64 %3274, i64* %3277, align 8
  store i64 %3276, i64* %6, align 8
  store i64 %3273, i64* %3, align 8
  %3278 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3258)
  %3279 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0d00_type* @G__0x4c0d00 to i64), i64* %RSI.i1995, align 8
  %3280 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3280, i64* %RDI.i1881, align 8
  %3281 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3281, i64* %RCX.i1986, align 8
  %3282 = add i64 %3281, 64
  %3283 = add i64 %3279, 31
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to float*
  %3285 = load float, float* %3284, align 4
  %3286 = fpext float %3285 to double
  store double %3286, double* %1201, align 1
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -1608
  %3289 = load i32, i32* %EAX.i83, align 4
  %3290 = add i64 %3279, 37
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3288 to i32*
  store i32 %3289, i32* %3291, align 4
  %3292 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1879, align 1
  %3293 = add i64 %3292, -220834
  %3294 = add i64 %3292, 7
  %3295 = load i64, i64* %6, align 8
  %3296 = add i64 %3295, -8
  %3297 = inttoptr i64 %3296 to i64*
  store i64 %3294, i64* %3297, align 8
  store i64 %3296, i64* %6, align 8
  store i64 %3293, i64* %3, align 8
  %3298 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3278)
  %3299 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0d2c_type* @G__0x4c0d2c to i64), i64* %RSI.i1995, align 8
  %3300 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3300, i64* %RDI.i1881, align 8
  %3301 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %3301, i64* %RCX.i1986, align 8
  %3302 = add i64 %3301, 68
  %3303 = add i64 %3299, 31
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to float*
  %3305 = load float, float* %3304, align 4
  %3306 = fpext float %3305 to double
  store double %3306, double* %1201, align 1
  %3307 = load i64, i64* %RBP.i, align 8
  %3308 = add i64 %3307, -1612
  %3309 = load i32, i32* %EAX.i83, align 4
  %3310 = add i64 %3299, 37
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3308 to i32*
  store i32 %3309, i32* %3311, align 4
  %3312 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1879, align 1
  %3313 = add i64 %3312, -220878
  %3314 = add i64 %3312, 7
  %3315 = load i64, i64* %6, align 8
  %3316 = add i64 %3315, -8
  %3317 = inttoptr i64 %3316 to i64*
  store i64 %3314, i64* %3317, align 8
  store i64 %3316, i64* %6, align 8
  store i64 %3313, i64* %3, align 8
  %3318 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3298)
  %3319 = load i64, i64* %3, align 8
  %3320 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3321 = and i32 %3320, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3326 = icmp eq i32 %3320, 0
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %15, align 1
  %3328 = lshr i32 %3320, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3330 = load i64, i64* %RBP.i, align 8
  %3331 = add i64 %3330, -1616
  %3332 = load i32, i32* %EAX.i83, align 4
  %3333 = add i64 %3319, 14
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3331 to i32*
  store i32 %3332, i32* %3334, align 4
  %3335 = load i64, i64* %3, align 8
  %3336 = load i8, i8* %15, align 1
  %3337 = icmp ne i8 %3336, 0
  %.v126 = select i1 %3337, i64 377, i64 6
  %3338 = add i64 %3335, %.v126
  store i64 %3338, i64* %3, align 8
  %cmpBr_436ff3 = icmp eq i8 %3336, 1
  br i1 %cmpBr_436ff3, label %block_.L_43716c, label %block_436ff9

block_436ff9:                                     ; preds = %block_.L_436f48
  store i64 ptrtoint (%G__0x4c0d58_type* @G__0x4c0d58 to i64), i64* %RSI.i1995, align 8
  %3339 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3339, i64* %RDI.i1881, align 8
  %3340 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %3340, i64* %RAX.i67, align 8
  %3341 = add i64 %3340, 708
  %3342 = add i64 %3338, 32
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RCX.i1986, align 8
  store i64 %3340, i64* %RAX.i67, align 8
  %3346 = add i64 %3340, 704
  %3347 = add i64 %3338, 46
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to i32*
  %3349 = load i32, i32* %3348, align 4
  %3350 = add i32 %3349, %3344
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %RCX.i1986, align 8
  %3352 = icmp ult i32 %3350, %3344
  %3353 = icmp ult i32 %3350, %3349
  %3354 = or i1 %3352, %3353
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %12, align 1
  %3356 = and i32 %3350, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %13, align 1
  %3361 = xor i32 %3349, %3344
  %3362 = xor i32 %3361, %3350
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  store i8 %3365, i8* %14, align 1
  %3366 = icmp eq i32 %3350, 0
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %15, align 1
  %3368 = lshr i32 %3350, 31
  %3369 = trunc i32 %3368 to i8
  store i8 %3369, i8* %16, align 1
  %3370 = lshr i32 %3344, 31
  %3371 = lshr i32 %3349, 31
  %3372 = xor i32 %3368, %3370
  %3373 = xor i32 %3368, %3371
  %3374 = add nuw nsw i32 %3372, %3373
  %3375 = icmp eq i32 %3374, 2
  %3376 = zext i1 %3375 to i8
  store i8 %3376, i8* %17, align 1
  store i64 %3340, i64* %RAX.i67, align 8
  %3377 = add i64 %3340, 712
  %3378 = add i64 %3338, 60
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3377 to i32*
  %3380 = load i32, i32* %3379, align 4
  %3381 = add i32 %3380, %3350
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RCX.i1986, align 8
  %3383 = icmp ult i32 %3381, %3350
  %3384 = icmp ult i32 %3381, %3380
  %3385 = or i1 %3383, %3384
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %12, align 1
  %3387 = and i32 %3381, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %13, align 1
  %3392 = xor i32 %3380, %3350
  %3393 = xor i32 %3392, %3381
  %3394 = lshr i32 %3393, 4
  %3395 = trunc i32 %3394 to i8
  %3396 = and i8 %3395, 1
  store i8 %3396, i8* %14, align 1
  %3397 = icmp eq i32 %3381, 0
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %15, align 1
  %3399 = lshr i32 %3381, 31
  %3400 = trunc i32 %3399 to i8
  store i8 %3400, i8* %16, align 1
  %3401 = lshr i32 %3380, 31
  %3402 = xor i32 %3399, %3368
  %3403 = xor i32 %3399, %3401
  %3404 = add nuw nsw i32 %3402, %3403
  %3405 = icmp eq i32 %3404, 2
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %17, align 1
  store i64 %3340, i64* %RAX.i67, align 8
  %3407 = add i64 %3340, 1488
  %3408 = add i64 %3338, 74
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = add i32 %3410, %3381
  %3412 = zext i32 %3411 to i64
  store i64 %3412, i64* %RCX.i1986, align 8
  %3413 = icmp ult i32 %3411, %3381
  %3414 = icmp ult i32 %3411, %3410
  %3415 = or i1 %3413, %3414
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %12, align 1
  %3417 = and i32 %3411, 255
  %3418 = tail call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  store i8 %3421, i8* %13, align 1
  %3422 = xor i32 %3410, %3381
  %3423 = xor i32 %3422, %3411
  %3424 = lshr i32 %3423, 4
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  store i8 %3426, i8* %14, align 1
  %3427 = icmp eq i32 %3411, 0
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %15, align 1
  %3429 = lshr i32 %3411, 31
  %3430 = trunc i32 %3429 to i8
  store i8 %3430, i8* %16, align 1
  %3431 = lshr i32 %3410, 31
  %3432 = xor i32 %3429, %3399
  %3433 = xor i32 %3429, %3431
  %3434 = add nuw nsw i32 %3432, %3433
  %3435 = icmp eq i32 %3434, 2
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %17, align 1
  %3437 = load i64, i64* %RBP.i, align 8
  %3438 = add i64 %3437, -84
  %3439 = add i64 %3338, 77
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  store i32 %3411, i32* %3440, align 4
  %3441 = load i64, i64* %3, align 8
  %3442 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %3442, i64* %RAX.i67, align 8
  %3443 = add i64 %3442, 704
  %3444 = add i64 %3441, 14
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RDX.i1187, align 8
  store i64 %3442, i64* %RAX.i67, align 8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3449 = add i64 %3442, 708
  %3450 = add i64 %3441, 29
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %3448, align 8
  store i64 %3442, i64* %RAX.i67, align 8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3455 = add i64 %3442, 712
  %3456 = add i64 %3441, 44
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i32*
  %3458 = load i32, i32* %3457, align 4
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %3454, align 8
  store i64 %3442, i64* %RAX.i67, align 8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i497 = bitcast %union.anon* %3460 to i32*
  %3461 = getelementptr inbounds %union.anon, %union.anon* %3460, i64 0, i32 0
  %3462 = add i64 %3442, 1488
  %3463 = add i64 %3441, 59
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to i32*
  %3465 = load i32, i32* %3464, align 4
  %3466 = zext i32 %3465 to i64
  store i64 %3466, i64* %3461, align 8
  %3467 = load i64, i64* %RBP.i, align 8
  %3468 = add i64 %3467, -1620
  %3469 = add i64 %3441, 65
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3468 to i32*
  store i32 %3446, i32* %3470, align 4
  %3471 = load i32, i32* %ECX.i1980, align 4
  %3472 = zext i32 %3471 to i64
  %3473 = load i64, i64* %3, align 8
  store i64 %3472, i64* %RDX.i1187, align 8
  %3474 = load i64, i64* %RBP.i, align 8
  %3475 = add i64 %3474, -1620
  %3476 = add i64 %3473, 8
  store i64 %3476, i64* %3, align 8
  %3477 = inttoptr i64 %3475 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = zext i32 %3478 to i64
  store i64 %3479, i64* %RCX.i1986, align 8
  %3480 = bitcast i64* %6 to i32**
  %3481 = load i32*, i32** %3480, align 8
  %3482 = load i32, i32* %R10D.i497, align 4
  %3483 = add i64 %3473, 12
  store i64 %3483, i64* %3, align 8
  store i32 %3482, i32* %3481, align 4
  %3484 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3485 = add i64 %3484, -221059
  %3486 = add i64 %3484, 7
  %3487 = load i64, i64* %6, align 8
  %3488 = add i64 %3487, -8
  %3489 = inttoptr i64 %3488 to i64*
  store i64 %3486, i64* %3489, align 8
  store i64 %3488, i64* %6, align 8
  store i64 %3485, i64* %3, align 8
  %3490 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3318)
  %3491 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0d9e_type* @G__0x4c0d9e to i64), i64* %RSI.i1995, align 8
  %3492 = add i64 %3491, add (i64 ptrtoint (%G_0x86790__rip__type* @G_0x86790__rip_ to i64), i64 10)
  %3493 = add i64 %3491, 18
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3492 to i32*
  %3495 = load i32, i32* %3494, align 4
  store i32 %3495, i32* %780, align 1
  store float 0.000000e+00, float* %782, align 1
  store float 0.000000e+00, float* %784, align 1
  store float 0.000000e+00, float* %786, align 1
  %3496 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3496, i64* %RDI.i1881, align 8
  %3497 = add i64 %3496, 48
  %3498 = add i64 %3491, 31
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = bitcast %union.VectorReg* %816 to i32*
  store i32 %3500, i32* %3501, align 1
  %3502 = bitcast i8* %826 to float*
  store float 0.000000e+00, float* %3502, align 1
  %3503 = bitcast i64* %820 to float*
  store float 0.000000e+00, float* %3503, align 1
  %3504 = bitcast i8* %831 to float*
  store float 0.000000e+00, float* %3504, align 1
  %3505 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3505, i64* %RDI.i1881, align 8
  %3506 = add i64 %3505, 1236
  %3507 = add i64 %3491, 45
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = add i32 %3509, 1
  %3511 = zext i32 %3510 to i64
  store i64 %3511, i64* %RCX.i1986, align 8
  %3512 = icmp eq i32 %3509, -1
  %3513 = icmp eq i32 %3510, 0
  %3514 = or i1 %3512, %3513
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %12, align 1
  %3516 = and i32 %3510, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516)
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %13, align 1
  %3521 = xor i32 %3510, %3509
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  store i8 %3524, i8* %14, align 1
  %3525 = zext i1 %3513 to i8
  store i8 %3525, i8* %15, align 1
  %3526 = lshr i32 %3510, 31
  %3527 = trunc i32 %3526 to i8
  store i8 %3527, i8* %16, align 1
  %3528 = lshr i32 %3509, 31
  %3529 = xor i32 %3526, %3528
  %3530 = add nuw nsw i32 %3529, %3526
  %3531 = icmp eq i32 %3530, 2
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %17, align 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %3534 = bitcast %union.VectorReg* %3533 to i8*
  %3535 = bitcast %union.VectorReg* %3533 to <2 x i32>*
  %3536 = load <2 x i32>, <2 x i32>* %3535, align 1
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %3538 = bitcast i64* %3537 to <2 x i32>*
  %3539 = load <2 x i32>, <2 x i32>* %3538, align 1
  %3540 = sitofp i32 %3510 to float
  %3541 = bitcast %union.VectorReg* %3533 to float*
  store float %3540, float* %3541, align 1
  %3542 = extractelement <2 x i32> %3536, i32 1
  %3543 = getelementptr inbounds i8, i8* %3534, i64 4
  %3544 = bitcast i8* %3543 to i32*
  store i32 %3542, i32* %3544, align 1
  %3545 = extractelement <2 x i32> %3539, i32 0
  %3546 = bitcast i64* %3537 to i32*
  store i32 %3545, i32* %3546, align 1
  %3547 = extractelement <2 x i32> %3539, i32 1
  %3548 = getelementptr inbounds i8, i8* %3534, i64 12
  %3549 = bitcast i8* %3548 to i32*
  store i32 %3547, i32* %3549, align 1
  %3550 = load <2 x float>, <2 x float>* %837, align 1
  %3551 = load <2 x i32>, <2 x i32>* %821, align 1
  %3552 = bitcast %union.VectorReg* %3533 to <2 x float>*
  %3553 = load <2 x float>, <2 x float>* %3552, align 1
  %3554 = extractelement <2 x float> %3550, i32 0
  %3555 = extractelement <2 x float> %3553, i32 0
  %3556 = fmul float %3554, %3555
  store float %3556, float* %824, align 1
  %3557 = bitcast <2 x float> %3550 to <2 x i32>
  %3558 = extractelement <2 x i32> %3557, i32 1
  store i32 %3558, i32* %827, align 1
  %3559 = extractelement <2 x i32> %3551, i32 0
  store i32 %3559, i32* %829, align 1
  %3560 = extractelement <2 x i32> %3551, i32 1
  store i32 %3560, i32* %832, align 1
  store i64 %3505, i64* %RDI.i1881, align 8
  %3561 = add i64 %3505, 20
  %3562 = add i64 %3491, 67
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  %3564 = load i32, i32* %3563, align 4
  %3565 = add i32 %3564, 1
  %3566 = zext i32 %3565 to i64
  store i64 %3566, i64* %RCX.i1986, align 8
  %3567 = icmp eq i32 %3564, -1
  %3568 = icmp eq i32 %3565, 0
  %3569 = or i1 %3567, %3568
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %12, align 1
  %3571 = and i32 %3565, 255
  %3572 = tail call i32 @llvm.ctpop.i32(i32 %3571)
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = xor i8 %3574, 1
  store i8 %3575, i8* %13, align 1
  %3576 = xor i32 %3565, %3564
  %3577 = lshr i32 %3576, 4
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  store i8 %3579, i8* %14, align 1
  %3580 = zext i1 %3568 to i8
  store i8 %3580, i8* %15, align 1
  %3581 = lshr i32 %3565, 31
  %3582 = trunc i32 %3581 to i8
  store i8 %3582, i8* %16, align 1
  %3583 = lshr i32 %3564, 31
  %3584 = xor i32 %3581, %3583
  %3585 = add nuw nsw i32 %3584, %3581
  %3586 = icmp eq i32 %3585, 2
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %17, align 1
  %3588 = bitcast <2 x float> %3553 to <2 x i32>
  %3589 = load <2 x i32>, <2 x i32>* %3538, align 1
  %3590 = sitofp i32 %3565 to float
  store float %3590, float* %3541, align 1
  %3591 = extractelement <2 x i32> %3588, i32 1
  store i32 %3591, i32* %3544, align 1
  %3592 = extractelement <2 x i32> %3589, i32 0
  store i32 %3592, i32* %3546, align 1
  %3593 = extractelement <2 x i32> %3589, i32 1
  store i32 %3593, i32* %3549, align 1
  %3594 = load <2 x float>, <2 x float>* %837, align 1
  %3595 = load <2 x i32>, <2 x i32>* %821, align 1
  %3596 = load <2 x float>, <2 x float>* %3552, align 1
  %3597 = extractelement <2 x float> %3594, i32 0
  %3598 = extractelement <2 x float> %3596, i32 0
  %3599 = fdiv float %3597, %3598
  store float %3599, float* %824, align 1
  %3600 = bitcast <2 x float> %3594 to <2 x i32>
  %3601 = extractelement <2 x i32> %3600, i32 1
  store i32 %3601, i32* %827, align 1
  %3602 = extractelement <2 x i32> %3595, i32 0
  store i32 %3602, i32* %829, align 1
  %3603 = extractelement <2 x i32> %3595, i32 1
  store i32 %3603, i32* %832, align 1
  %3604 = load i64, i64* %RBP.i, align 8
  %3605 = add i64 %3604, -88
  %3606 = add i64 %3491, 83
  store i64 %3606, i64* %3, align 8
  %3607 = load <2 x float>, <2 x float>* %837, align 1
  %3608 = extractelement <2 x float> %3607, i32 0
  %3609 = inttoptr i64 %3605 to float*
  store float %3608, float* %3609, align 4
  %3610 = load i64, i64* %RBP.i, align 8
  %3611 = add i64 %3610, -84
  %3612 = load i64, i64* %3, align 8
  %3613 = add i64 %3612, 5
  store i64 %3613, i64* %3, align 8
  %3614 = load <2 x i32>, <2 x i32>* %818, align 1
  %3615 = load <2 x i32>, <2 x i32>* %821, align 1
  %3616 = inttoptr i64 %3611 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = sitofp i32 %3617 to float
  store float %3618, float* %824, align 1
  %3619 = extractelement <2 x i32> %3614, i32 1
  store i32 %3619, i32* %827, align 1
  %3620 = extractelement <2 x i32> %3615, i32 0
  store i32 %3620, i32* %829, align 1
  %3621 = extractelement <2 x i32> %3615, i32 1
  store i32 %3621, i32* %832, align 1
  %3622 = add i64 %3610, -88
  %3623 = add i64 %3612, 10
  store i64 %3623, i64* %3, align 8
  %3624 = load <2 x float>, <2 x float>* %837, align 1
  %3625 = load <2 x i32>, <2 x i32>* %821, align 1
  %3626 = inttoptr i64 %3622 to float*
  %3627 = load float, float* %3626, align 4
  %3628 = extractelement <2 x float> %3624, i32 0
  %3629 = fmul float %3628, %3627
  store float %3629, float* %824, align 1
  %3630 = bitcast <2 x float> %3624 to <2 x i32>
  %3631 = extractelement <2 x i32> %3630, i32 1
  store i32 %3631, i32* %827, align 1
  %3632 = extractelement <2 x i32> %3625, i32 0
  store i32 %3632, i32* %829, align 1
  %3633 = extractelement <2 x i32> %3625, i32 1
  store i32 %3633, i32* %832, align 1
  %3634 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3634, i64* %RDI.i1881, align 8
  %3635 = add i64 %3634, 8
  %3636 = add i64 %3612, 21
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %3640 = add i32 %3639, %3638
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RCX.i1986, align 8
  %3642 = icmp ult i32 %3640, %3638
  %3643 = icmp ult i32 %3640, %3639
  %3644 = or i1 %3642, %3643
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %12, align 1
  %3646 = and i32 %3640, 255
  %3647 = tail call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  store i8 %3650, i8* %13, align 1
  %3651 = xor i32 %3639, %3638
  %3652 = xor i32 %3651, %3640
  %3653 = lshr i32 %3652, 4
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  store i8 %3655, i8* %14, align 1
  %3656 = icmp eq i32 %3640, 0
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %15, align 1
  %3658 = lshr i32 %3640, 31
  %3659 = trunc i32 %3658 to i8
  store i8 %3659, i8* %16, align 1
  %3660 = lshr i32 %3638, 31
  %3661 = lshr i32 %3639, 31
  %3662 = xor i32 %3658, %3660
  %3663 = xor i32 %3658, %3661
  %3664 = add nuw nsw i32 %3662, %3663
  %3665 = icmp eq i32 %3664, 2
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %17, align 1
  %3667 = load <2 x i32>, <2 x i32>* %3535, align 1
  %3668 = load <2 x i32>, <2 x i32>* %3538, align 1
  %3669 = sitofp i32 %3640 to float
  store float %3669, float* %3541, align 1
  %3670 = extractelement <2 x i32> %3667, i32 1
  store i32 %3670, i32* %3544, align 1
  %3671 = extractelement <2 x i32> %3668, i32 0
  store i32 %3671, i32* %3546, align 1
  %3672 = extractelement <2 x i32> %3668, i32 1
  store i32 %3672, i32* %3549, align 1
  %3673 = load <2 x float>, <2 x float>* %837, align 1
  %3674 = load <2 x i32>, <2 x i32>* %821, align 1
  %3675 = load <2 x float>, <2 x float>* %3552, align 1
  %3676 = extractelement <2 x float> %3673, i32 0
  %3677 = extractelement <2 x float> %3675, i32 0
  %3678 = fdiv float %3676, %3677
  store float %3678, float* %824, align 1
  %3679 = bitcast <2 x float> %3673 to <2 x i32>
  %3680 = extractelement <2 x i32> %3679, i32 1
  store i32 %3680, i32* %827, align 1
  %3681 = extractelement <2 x i32> %3674, i32 0
  store i32 %3681, i32* %829, align 1
  %3682 = extractelement <2 x i32> %3674, i32 1
  store i32 %3682, i32* %832, align 1
  %3683 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %3684 = add i64 %3683, 12
  %3685 = add i64 %3612, 49
  store i64 %3685, i64* %3, align 8
  %3686 = load <2 x float>, <2 x float>* %837, align 1
  %3687 = extractelement <2 x float> %3686, i32 0
  %3688 = inttoptr i64 %3684 to float*
  store float %3687, float* %3688, align 4
  %3689 = load i64, i64* %3, align 8
  %3690 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3690, i64* %RDI.i1881, align 8
  %3691 = load i64, i64* %RBP.i, align 8
  %3692 = add i64 %3691, -88
  %3693 = add i64 %3689, 13
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to float*
  %3695 = load float, float* %3694, align 4
  %3696 = fpext float %3695 to double
  store double %3696, double* %1643, align 1
  %R11.i413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3697 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %3697, i64* %R11.i413, align 8
  %3698 = add i64 %3697, 12
  %3699 = add i64 %3689, 27
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = bitcast %union.VectorReg* %3533 to i32*
  store i32 %3701, i32* %3702, align 1
  %3703 = bitcast i8* %3543 to float*
  store float 0.000000e+00, float* %3703, align 1
  %3704 = bitcast i64* %3537 to float*
  store float 0.000000e+00, float* %3704, align 1
  %3705 = bitcast i8* %3548 to float*
  store float 0.000000e+00, float* %3705, align 1
  %3706 = load <2 x float>, <2 x float>* %3552, align 1
  %3707 = load <2 x i32>, <2 x i32>* %3538, align 1
  %3708 = load <2 x float>, <2 x float>* %833, align 1
  %3709 = extractelement <2 x float> %3706, i32 0
  %3710 = extractelement <2 x float> %3708, i32 0
  %3711 = fdiv float %3709, %3710
  store float %3711, float* %3541, align 1
  %3712 = bitcast <2 x float> %3706 to <2 x i32>
  %3713 = extractelement <2 x i32> %3712, i32 1
  store i32 %3713, i32* %3544, align 1
  %3714 = extractelement <2 x i32> %3707, i32 0
  store i32 %3714, i32* %3546, align 1
  %3715 = extractelement <2 x i32> %3707, i32 1
  store i32 %3715, i32* %3549, align 1
  %3716 = load <2 x float>, <2 x float>* %3552, align 1
  %3717 = extractelement <2 x float> %3716, i32 0
  %3718 = fpext float %3717 to double
  %3719 = add i64 %3691, -1632
  %3720 = add i64 %3689, 43
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to double*
  store double %3718, double* %3721, align 8
  %3722 = load i64, i64* %3, align 8
  %3723 = load <2 x i32>, <2 x i32>* %818, align 1
  %3724 = load <2 x i32>, <2 x i32>* %821, align 1
  %3725 = extractelement <2 x i32> %3723, i32 0
  store i32 %3725, i32* %780, align 1
  %3726 = extractelement <2 x i32> %3723, i32 1
  store i32 %3726, i32* %844, align 1
  %3727 = extractelement <2 x i32> %3724, i32 0
  store i32 %3727, i32* %846, align 1
  %3728 = extractelement <2 x i32> %3724, i32 1
  store i32 %3728, i32* %848, align 1
  %3729 = load i64, i64* %RBP.i, align 8
  %3730 = add i64 %3729, -1632
  %3731 = add i64 %3722, 11
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3730 to i64*
  %3733 = load i64, i64* %3732, align 8
  %3734 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %816, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3733, i64* %3734, align 1
  %3735 = bitcast i64* %820 to double*
  store double 0.000000e+00, double* %3735, align 1
  %3736 = add i64 %3729, -1636
  %3737 = load i32, i32* %EAX.i83, align 4
  %3738 = add i64 %3722, 17
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3736 to i32*
  store i32 %3737, i32* %3739, align 4
  %3740 = load i64, i64* %3, align 8
  store i8 2, i8* %AL.i1879, align 1
  %3741 = add i64 %3740, -221258
  %3742 = add i64 %3740, 7
  %3743 = load i64, i64* %6, align 8
  %3744 = add i64 %3743, -8
  %3745 = inttoptr i64 %3744 to i64*
  store i64 %3742, i64* %3745, align 8
  store i64 %3744, i64* %6, align 8
  store i64 %3741, i64* %3, align 8
  %3746 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3490)
  %3747 = load i64, i64* %RBP.i, align 8
  %3748 = add i64 %3747, -1640
  %3749 = load i32, i32* %EAX.i83, align 4
  %3750 = load i64, i64* %3, align 8
  %3751 = add i64 %3750, 6
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3748 to i32*
  store i32 %3749, i32* %3752, align 4
  %3753 = load i64, i64* %3, align 8
  %3754 = add i64 %3753, 634
  br label %block_.L_4373e1

block_.L_43716c:                                  ; preds = %block_.L_436f48
  %3755 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3755, i64* %RAX.i67, align 8
  %3756 = add i64 %3755, 1272
  %3757 = add i64 %3338, 15
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i32*
  %3759 = load i32, i32* %3758, align 4
  store i8 0, i8* %12, align 1
  %3760 = and i32 %3759, 255
  %3761 = tail call i32 @llvm.ctpop.i32(i32 %3760)
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  store i8 %3764, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3765 = icmp eq i32 %3759, 0
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %15, align 1
  %3767 = lshr i32 %3759, 31
  %3768 = trunc i32 %3767 to i8
  store i8 %3768, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v94 = select i1 %3765, i64 21, i64 325
  %3769 = add i64 %3338, %.v94
  store i64 ptrtoint (%G__0x4c0dca_type* @G__0x4c0dca to i64), i64* %RSI.i1995, align 8
  %3770 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %3770, i64* %RDI.i1881, align 8
  %3771 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %3771, i64* %RAX.i67, align 8
  %3772 = add i64 %3771, 708
  %3773 = add i64 %3769, 32
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i32*
  %3775 = load i32, i32* %3774, align 4
  %3776 = zext i32 %3775 to i64
  store i64 %3776, i64* %RCX.i1986, align 8
  store i64 %3771, i64* %RAX.i67, align 8
  %3777 = add i64 %3771, 704
  %3778 = add i64 %3769, 46
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = add i32 %3780, %3775
  %3782 = zext i32 %3781 to i64
  store i64 %3782, i64* %RCX.i1986, align 8
  %3783 = icmp ult i32 %3781, %3775
  %3784 = icmp ult i32 %3781, %3780
  %3785 = or i1 %3783, %3784
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %12, align 1
  %3787 = and i32 %3781, 255
  %3788 = tail call i32 @llvm.ctpop.i32(i32 %3787)
  %3789 = trunc i32 %3788 to i8
  %3790 = and i8 %3789, 1
  %3791 = xor i8 %3790, 1
  store i8 %3791, i8* %13, align 1
  %3792 = xor i32 %3780, %3775
  %3793 = xor i32 %3792, %3781
  %3794 = lshr i32 %3793, 4
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  store i8 %3796, i8* %14, align 1
  %3797 = icmp eq i32 %3781, 0
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %15, align 1
  %3799 = lshr i32 %3781, 31
  %3800 = trunc i32 %3799 to i8
  store i8 %3800, i8* %16, align 1
  %3801 = lshr i32 %3775, 31
  %3802 = lshr i32 %3780, 31
  %3803 = xor i32 %3799, %3801
  %3804 = xor i32 %3799, %3802
  %3805 = add nuw nsw i32 %3803, %3804
  %3806 = icmp eq i32 %3805, 2
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %17, align 1
  store i64 %3771, i64* %RAX.i67, align 8
  %3808 = add i64 %3771, 1488
  %3809 = add i64 %3769, 60
  store i64 %3809, i64* %3, align 8
  %3810 = inttoptr i64 %3808 to i32*
  %3811 = load i32, i32* %3810, align 4
  %3812 = add i32 %3811, %3781
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RCX.i1986, align 8
  %3814 = icmp ult i32 %3812, %3781
  %3815 = icmp ult i32 %3812, %3811
  %3816 = or i1 %3814, %3815
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %12, align 1
  %3818 = and i32 %3812, 255
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818)
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %13, align 1
  %3823 = xor i32 %3811, %3781
  %3824 = xor i32 %3823, %3812
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %14, align 1
  %3828 = icmp eq i32 %3812, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %15, align 1
  %3830 = lshr i32 %3812, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %16, align 1
  %3832 = lshr i32 %3811, 31
  %3833 = xor i32 %3830, %3799
  %3834 = xor i32 %3830, %3832
  %3835 = add nuw nsw i32 %3833, %3834
  %3836 = icmp eq i32 %3835, 2
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %17, align 1
  %3838 = load i64, i64* %RBP.i, align 8
  %3839 = add i64 %3838, -84
  %3840 = add i64 %3769, 63
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  store i32 %3812, i32* %3841, align 4
  %3842 = load i64, i64* %3, align 8
  %3843 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %3843, i64* %RAX.i67, align 8
  %3844 = add i64 %3843, 704
  %3845 = add i64 %3842, 14
  store i64 %3845, i64* %3, align 8
  %3846 = inttoptr i64 %3844 to i32*
  %3847 = load i32, i32* %3846, align 4
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RDX.i1187, align 8
  store i64 %3843, i64* %RAX.i67, align 8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3850 = add i64 %3843, 708
  %3851 = add i64 %3842, 29
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = zext i32 %3853 to i64
  store i64 %3854, i64* %3849, align 8
  store i64 %3843, i64* %RAX.i67, align 8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3856 = add i64 %3843, 1488
  %3857 = add i64 %3842, 44
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i32*
  %3859 = load i32, i32* %3858, align 4
  %3860 = zext i32 %3859 to i64
  store i64 %3860, i64* %3855, align 8
  %3861 = load i64, i64* %RBP.i, align 8
  br i1 %3765, label %block_437181, label %block_.L_4372b1

block_437181:                                     ; preds = %block_.L_43716c
  %3862 = add i64 %3861, -1644
  %3863 = add i64 %3842, 50
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  store i32 %3847, i32* %3864, align 4
  %3865 = load i32, i32* %ECX.i1980, align 4
  %3866 = zext i32 %3865 to i64
  %3867 = load i64, i64* %3, align 8
  store i64 %3866, i64* %RDX.i1187, align 8
  %3868 = load i64, i64* %RBP.i, align 8
  %3869 = add i64 %3868, -1644
  %3870 = add i64 %3867, 8
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = zext i32 %3872 to i64
  store i64 %3873, i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %3874 = add i64 %3867, -221410
  %3875 = add i64 %3867, 15
  %3876 = load i64, i64* %6, align 8
  %3877 = add i64 %3876, -8
  %3878 = inttoptr i64 %3877 to i64*
  store i64 %3875, i64* %3878, align 8
  store i64 %3877, i64* %6, align 8
  store i64 %3874, i64* %3, align 8
  %3879 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3318)
  %3880 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0d9e_type* @G__0x4c0d9e to i64), i64* %RSI.i1995, align 8
  %3881 = add i64 %3880, add (i64 ptrtoint (%G_0x86629__rip__type* @G_0x86629__rip_ to i64), i64 10)
  %3882 = add i64 %3880, 18
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i32*
  %3884 = load i32, i32* %3883, align 4
  store i32 %3884, i32* %780, align 1
  store float 0.000000e+00, float* %782, align 1
  store float 0.000000e+00, float* %784, align 1
  store float 0.000000e+00, float* %786, align 1
  %3885 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3885, i64* %RDI.i1881, align 8
  %3886 = add i64 %3885, 48
  %3887 = add i64 %3880, 31
  store i64 %3887, i64* %3, align 8
  %3888 = inttoptr i64 %3886 to i32*
  %3889 = load i32, i32* %3888, align 4
  %3890 = bitcast %union.VectorReg* %816 to i32*
  store i32 %3889, i32* %3890, align 1
  %3891 = bitcast i8* %826 to float*
  store float 0.000000e+00, float* %3891, align 1
  %3892 = bitcast i64* %820 to float*
  store float 0.000000e+00, float* %3892, align 1
  %3893 = bitcast i8* %831 to float*
  store float 0.000000e+00, float* %3893, align 1
  %3894 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3894, i64* %RDI.i1881, align 8
  %3895 = add i64 %3894, 20
  %3896 = add i64 %3880, 42
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = add i32 %3898, 1
  %3900 = zext i32 %3899 to i64
  store i64 %3900, i64* %RCX.i1986, align 8
  %3901 = icmp eq i32 %3898, -1
  %3902 = icmp eq i32 %3899, 0
  %3903 = or i1 %3901, %3902
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %12, align 1
  %3905 = and i32 %3899, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905)
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %13, align 1
  %3910 = xor i32 %3899, %3898
  %3911 = lshr i32 %3910, 4
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  store i8 %3913, i8* %14, align 1
  %3914 = zext i1 %3902 to i8
  store i8 %3914, i8* %15, align 1
  %3915 = lshr i32 %3899, 31
  %3916 = trunc i32 %3915 to i8
  store i8 %3916, i8* %16, align 1
  %3917 = lshr i32 %3898, 31
  %3918 = xor i32 %3915, %3917
  %3919 = add nuw nsw i32 %3918, %3915
  %3920 = icmp eq i32 %3919, 2
  %3921 = zext i1 %3920 to i8
  store i8 %3921, i8* %17, align 1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %3923 = bitcast %union.VectorReg* %3922 to i8*
  %3924 = bitcast %union.VectorReg* %3922 to <2 x i32>*
  %3925 = load <2 x i32>, <2 x i32>* %3924, align 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %3927 = bitcast i64* %3926 to <2 x i32>*
  %3928 = load <2 x i32>, <2 x i32>* %3927, align 1
  %3929 = sitofp i32 %3899 to float
  %3930 = bitcast %union.VectorReg* %3922 to float*
  store float %3929, float* %3930, align 1
  %3931 = extractelement <2 x i32> %3925, i32 1
  %3932 = getelementptr inbounds i8, i8* %3923, i64 4
  %3933 = bitcast i8* %3932 to i32*
  store i32 %3931, i32* %3933, align 1
  %3934 = extractelement <2 x i32> %3928, i32 0
  %3935 = bitcast i64* %3926 to i32*
  store i32 %3934, i32* %3935, align 1
  %3936 = extractelement <2 x i32> %3928, i32 1
  %3937 = getelementptr inbounds i8, i8* %3923, i64 12
  %3938 = bitcast i8* %3937 to i32*
  store i32 %3936, i32* %3938, align 1
  %3939 = load <2 x float>, <2 x float>* %837, align 1
  %3940 = load <2 x i32>, <2 x i32>* %821, align 1
  %3941 = bitcast %union.VectorReg* %3922 to <2 x float>*
  %3942 = load <2 x float>, <2 x float>* %3941, align 1
  %3943 = extractelement <2 x float> %3939, i32 0
  %3944 = extractelement <2 x float> %3942, i32 0
  %3945 = fdiv float %3943, %3944
  store float %3945, float* %824, align 1
  %3946 = bitcast <2 x float> %3939 to <2 x i32>
  %3947 = extractelement <2 x i32> %3946, i32 1
  store i32 %3947, i32* %827, align 1
  %3948 = extractelement <2 x i32> %3940, i32 0
  store i32 %3948, i32* %829, align 1
  %3949 = extractelement <2 x i32> %3940, i32 1
  store i32 %3949, i32* %832, align 1
  %3950 = load i64, i64* %RBP.i, align 8
  %3951 = add i64 %3950, -88
  %3952 = add i64 %3880, 58
  store i64 %3952, i64* %3, align 8
  %3953 = load <2 x float>, <2 x float>* %837, align 1
  %3954 = extractelement <2 x float> %3953, i32 0
  %3955 = inttoptr i64 %3951 to float*
  store float %3954, float* %3955, align 4
  %3956 = load i64, i64* %RBP.i, align 8
  %3957 = add i64 %3956, -84
  %3958 = load i64, i64* %3, align 8
  %3959 = add i64 %3958, 5
  store i64 %3959, i64* %3, align 8
  %3960 = load <2 x i32>, <2 x i32>* %818, align 1
  %3961 = load <2 x i32>, <2 x i32>* %821, align 1
  %3962 = inttoptr i64 %3957 to i32*
  %3963 = load i32, i32* %3962, align 4
  %3964 = sitofp i32 %3963 to float
  store float %3964, float* %824, align 1
  %3965 = extractelement <2 x i32> %3960, i32 1
  store i32 %3965, i32* %827, align 1
  %3966 = extractelement <2 x i32> %3961, i32 0
  store i32 %3966, i32* %829, align 1
  %3967 = extractelement <2 x i32> %3961, i32 1
  store i32 %3967, i32* %832, align 1
  %3968 = add i64 %3956, -88
  %3969 = add i64 %3958, 10
  store i64 %3969, i64* %3, align 8
  %3970 = load <2 x float>, <2 x float>* %837, align 1
  %3971 = load <2 x i32>, <2 x i32>* %821, align 1
  %3972 = inttoptr i64 %3968 to float*
  %3973 = load float, float* %3972, align 4
  %3974 = extractelement <2 x float> %3970, i32 0
  %3975 = fmul float %3974, %3973
  store float %3975, float* %824, align 1
  %3976 = bitcast <2 x float> %3970 to <2 x i32>
  %3977 = extractelement <2 x i32> %3976, i32 1
  store i32 %3977, i32* %827, align 1
  %3978 = extractelement <2 x i32> %3971, i32 0
  store i32 %3978, i32* %829, align 1
  %3979 = extractelement <2 x i32> %3971, i32 1
  store i32 %3979, i32* %832, align 1
  %3980 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3980, i64* %RDI.i1881, align 8
  %3981 = add i64 %3980, 8
  %3982 = add i64 %3958, 23
  store i64 %3982, i64* %3, align 8
  %3983 = load <2 x i32>, <2 x i32>* %3924, align 1
  %3984 = load <2 x i32>, <2 x i32>* %3927, align 1
  %3985 = inttoptr i64 %3981 to i32*
  %3986 = load i32, i32* %3985, align 4
  %3987 = sitofp i32 %3986 to float
  store float %3987, float* %3930, align 1
  %3988 = extractelement <2 x i32> %3983, i32 1
  store i32 %3988, i32* %3933, align 1
  %3989 = extractelement <2 x i32> %3984, i32 0
  store i32 %3989, i32* %3935, align 1
  %3990 = extractelement <2 x i32> %3984, i32 1
  store i32 %3990, i32* %3938, align 1
  %3991 = load <2 x float>, <2 x float>* %837, align 1
  %3992 = load <2 x i32>, <2 x i32>* %821, align 1
  %3993 = load <2 x float>, <2 x float>* %3941, align 1
  %3994 = extractelement <2 x float> %3991, i32 0
  %3995 = extractelement <2 x float> %3993, i32 0
  %3996 = fdiv float %3994, %3995
  store float %3996, float* %824, align 1
  %3997 = bitcast <2 x float> %3991 to <2 x i32>
  %3998 = extractelement <2 x i32> %3997, i32 1
  store i32 %3998, i32* %827, align 1
  %3999 = extractelement <2 x i32> %3992, i32 0
  store i32 %3999, i32* %829, align 1
  %4000 = extractelement <2 x i32> %3992, i32 1
  store i32 %4000, i32* %832, align 1
  %4001 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %4002 = add i64 %4001, 12
  %4003 = add i64 %3958, 40
  store i64 %4003, i64* %3, align 8
  %4004 = load <2 x float>, <2 x float>* %837, align 1
  %4005 = extractelement <2 x float> %4004, i32 0
  %4006 = inttoptr i64 %4002 to float*
  store float %4005, float* %4006, align 4
  %4007 = load i64, i64* %3, align 8
  %4008 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4008, i64* %RDI.i1881, align 8
  %4009 = load i64, i64* %RBP.i, align 8
  %4010 = add i64 %4009, -88
  %4011 = add i64 %4007, 13
  store i64 %4011, i64* %3, align 8
  %4012 = inttoptr i64 %4010 to float*
  %4013 = load float, float* %4012, align 4
  %4014 = fpext float %4013 to double
  store double %4014, double* %1643, align 1
  %R10.i276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4015 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %4015, i64* %R10.i276, align 8
  %4016 = add i64 %4015, 12
  %4017 = add i64 %4007, 27
  store i64 %4017, i64* %3, align 8
  %4018 = inttoptr i64 %4016 to i32*
  %4019 = load i32, i32* %4018, align 4
  %4020 = bitcast %union.VectorReg* %3922 to i32*
  store i32 %4019, i32* %4020, align 1
  %4021 = bitcast i8* %3932 to float*
  store float 0.000000e+00, float* %4021, align 1
  %4022 = bitcast i64* %3926 to float*
  store float 0.000000e+00, float* %4022, align 1
  %4023 = bitcast i8* %3937 to float*
  store float 0.000000e+00, float* %4023, align 1
  %4024 = load <2 x float>, <2 x float>* %3941, align 1
  %4025 = load <2 x i32>, <2 x i32>* %3927, align 1
  %4026 = load <2 x float>, <2 x float>* %833, align 1
  %4027 = extractelement <2 x float> %4024, i32 0
  %4028 = extractelement <2 x float> %4026, i32 0
  %4029 = fdiv float %4027, %4028
  store float %4029, float* %3930, align 1
  %4030 = bitcast <2 x float> %4024 to <2 x i32>
  %4031 = extractelement <2 x i32> %4030, i32 1
  store i32 %4031, i32* %3933, align 1
  %4032 = extractelement <2 x i32> %4025, i32 0
  store i32 %4032, i32* %3935, align 1
  %4033 = extractelement <2 x i32> %4025, i32 1
  store i32 %4033, i32* %3938, align 1
  %4034 = load <2 x float>, <2 x float>* %3941, align 1
  %4035 = extractelement <2 x float> %4034, i32 0
  %4036 = fpext float %4035 to double
  %4037 = add i64 %4009, -1656
  %4038 = add i64 %4007, 43
  store i64 %4038, i64* %3, align 8
  %4039 = inttoptr i64 %4037 to double*
  store double %4036, double* %4039, align 8
  %4040 = load i64, i64* %3, align 8
  %4041 = load <2 x i32>, <2 x i32>* %818, align 1
  %4042 = load <2 x i32>, <2 x i32>* %821, align 1
  %4043 = extractelement <2 x i32> %4041, i32 0
  store i32 %4043, i32* %780, align 1
  %4044 = extractelement <2 x i32> %4041, i32 1
  store i32 %4044, i32* %844, align 1
  %4045 = extractelement <2 x i32> %4042, i32 0
  store i32 %4045, i32* %846, align 1
  %4046 = extractelement <2 x i32> %4042, i32 1
  store i32 %4046, i32* %848, align 1
  %4047 = load i64, i64* %RBP.i, align 8
  %4048 = add i64 %4047, -1656
  %4049 = add i64 %4040, 11
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4048 to i64*
  %4051 = load i64, i64* %4050, align 8
  %4052 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %816, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %4051, i64* %4052, align 1
  %4053 = bitcast i64* %820 to double*
  store double 0.000000e+00, double* %4053, align 1
  %4054 = add i64 %4047, -1660
  %4055 = load i32, i32* %EAX.i83, align 4
  %4056 = add i64 %4040, 17
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4054 to i32*
  store i32 %4055, i32* %4057, align 4
  %4058 = load i64, i64* %3, align 8
  store i8 2, i8* %AL.i1879, align 1
  %4059 = add i64 %4058, -221583
  %4060 = add i64 %4058, 7
  %4061 = load i64, i64* %6, align 8
  %4062 = add i64 %4061, -8
  %4063 = inttoptr i64 %4062 to i64*
  store i64 %4060, i64* %4063, align 8
  store i64 %4062, i64* %6, align 8
  store i64 %4059, i64* %3, align 8
  %4064 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3879)
  %4065 = load i64, i64* %RBP.i, align 8
  %4066 = add i64 %4065, -1664
  %4067 = load i32, i32* %EAX.i83, align 4
  %4068 = load i64, i64* %3, align 8
  %4069 = add i64 %4068, 6
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4066 to i32*
  store i32 %4067, i32* %4070, align 4
  %4071 = load i64, i64* %3, align 8
  %4072 = add i64 %4071, 304
  store i64 %4072, i64* %3, align 8
  br label %block_.L_4373dc

block_.L_4372b1:                                  ; preds = %block_.L_43716c
  %4073 = add i64 %3861, -1668
  %4074 = add i64 %3842, 50
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4073 to i32*
  store i32 %3847, i32* %4075, align 4
  %4076 = load i32, i32* %ECX.i1980, align 4
  %4077 = zext i32 %4076 to i64
  %4078 = load i64, i64* %3, align 8
  store i64 %4077, i64* %RDX.i1187, align 8
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -1668
  %4081 = add i64 %4078, 8
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4085 = add i64 %4078, -221714
  %4086 = add i64 %4078, 15
  %4087 = load i64, i64* %6, align 8
  %4088 = add i64 %4087, -8
  %4089 = inttoptr i64 %4088 to i64*
  store i64 %4086, i64* %4089, align 8
  store i64 %4088, i64* %6, align 8
  store i64 %4085, i64* %3, align 8
  %4090 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3318)
  %4091 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0d9e_type* @G__0x4c0d9e to i64), i64* %RSI.i1995, align 8
  %4092 = add i64 %4091, add (i64 ptrtoint (%G_0x864f9__rip__type* @G_0x864f9__rip_ to i64), i64 10)
  %4093 = add i64 %4091, 18
  store i64 %4093, i64* %3, align 8
  %4094 = inttoptr i64 %4092 to i32*
  %4095 = load i32, i32* %4094, align 4
  store i32 %4095, i32* %780, align 1
  store float 0.000000e+00, float* %782, align 1
  store float 0.000000e+00, float* %784, align 1
  store float 0.000000e+00, float* %786, align 1
  %4096 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4096, i64* %RDI.i1881, align 8
  %4097 = add i64 %4096, 48
  %4098 = add i64 %4091, 31
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i32*
  %4100 = load i32, i32* %4099, align 4
  %4101 = bitcast %union.VectorReg* %816 to i32*
  store i32 %4100, i32* %4101, align 1
  %4102 = bitcast i8* %826 to float*
  store float 0.000000e+00, float* %4102, align 1
  %4103 = bitcast i64* %820 to float*
  store float 0.000000e+00, float* %4103, align 1
  %4104 = bitcast i8* %831 to float*
  store float 0.000000e+00, float* %4104, align 1
  %4105 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4105, i64* %RDI.i1881, align 8
  %4106 = add i64 %4105, 20
  %4107 = add i64 %4091, 42
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = add i32 %4109, 1
  %4111 = zext i32 %4110 to i64
  store i64 %4111, i64* %RCX.i1986, align 8
  %4112 = icmp eq i32 %4109, -1
  %4113 = icmp eq i32 %4110, 0
  %4114 = or i1 %4112, %4113
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %12, align 1
  %4116 = and i32 %4110, 255
  %4117 = tail call i32 @llvm.ctpop.i32(i32 %4116)
  %4118 = trunc i32 %4117 to i8
  %4119 = and i8 %4118, 1
  %4120 = xor i8 %4119, 1
  store i8 %4120, i8* %13, align 1
  %4121 = xor i32 %4110, %4109
  %4122 = lshr i32 %4121, 4
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  store i8 %4124, i8* %14, align 1
  %4125 = zext i1 %4113 to i8
  store i8 %4125, i8* %15, align 1
  %4126 = lshr i32 %4110, 31
  %4127 = trunc i32 %4126 to i8
  store i8 %4127, i8* %16, align 1
  %4128 = lshr i32 %4109, 31
  %4129 = xor i32 %4126, %4128
  %4130 = add nuw nsw i32 %4129, %4126
  %4131 = icmp eq i32 %4130, 2
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %17, align 1
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4134 = bitcast %union.VectorReg* %4133 to i8*
  %4135 = bitcast %union.VectorReg* %4133 to <2 x i32>*
  %4136 = load <2 x i32>, <2 x i32>* %4135, align 1
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %4138 = bitcast i64* %4137 to <2 x i32>*
  %4139 = load <2 x i32>, <2 x i32>* %4138, align 1
  %4140 = sitofp i32 %4110 to float
  %4141 = bitcast %union.VectorReg* %4133 to float*
  store float %4140, float* %4141, align 1
  %4142 = extractelement <2 x i32> %4136, i32 1
  %4143 = getelementptr inbounds i8, i8* %4134, i64 4
  %4144 = bitcast i8* %4143 to i32*
  store i32 %4142, i32* %4144, align 1
  %4145 = extractelement <2 x i32> %4139, i32 0
  %4146 = bitcast i64* %4137 to i32*
  store i32 %4145, i32* %4146, align 1
  %4147 = extractelement <2 x i32> %4139, i32 1
  %4148 = getelementptr inbounds i8, i8* %4134, i64 12
  %4149 = bitcast i8* %4148 to i32*
  store i32 %4147, i32* %4149, align 1
  %4150 = load <2 x float>, <2 x float>* %837, align 1
  %4151 = load <2 x i32>, <2 x i32>* %821, align 1
  %4152 = bitcast %union.VectorReg* %4133 to <2 x float>*
  %4153 = load <2 x float>, <2 x float>* %4152, align 1
  %4154 = extractelement <2 x float> %4150, i32 0
  %4155 = extractelement <2 x float> %4153, i32 0
  %4156 = fdiv float %4154, %4155
  store float %4156, float* %824, align 1
  %4157 = bitcast <2 x float> %4150 to <2 x i32>
  %4158 = extractelement <2 x i32> %4157, i32 1
  store i32 %4158, i32* %827, align 1
  %4159 = extractelement <2 x i32> %4151, i32 0
  store i32 %4159, i32* %829, align 1
  %4160 = extractelement <2 x i32> %4151, i32 1
  store i32 %4160, i32* %832, align 1
  %4161 = load i64, i64* %RBP.i, align 8
  %4162 = add i64 %4161, -88
  %4163 = add i64 %4091, 58
  store i64 %4163, i64* %3, align 8
  %4164 = load <2 x float>, <2 x float>* %837, align 1
  %4165 = extractelement <2 x float> %4164, i32 0
  %4166 = inttoptr i64 %4162 to float*
  store float %4165, float* %4166, align 4
  %4167 = load i64, i64* %RBP.i, align 8
  %4168 = add i64 %4167, -84
  %4169 = load i64, i64* %3, align 8
  %4170 = add i64 %4169, 5
  store i64 %4170, i64* %3, align 8
  %4171 = load <2 x i32>, <2 x i32>* %818, align 1
  %4172 = load <2 x i32>, <2 x i32>* %821, align 1
  %4173 = inttoptr i64 %4168 to i32*
  %4174 = load i32, i32* %4173, align 4
  %4175 = sitofp i32 %4174 to float
  store float %4175, float* %824, align 1
  %4176 = extractelement <2 x i32> %4171, i32 1
  store i32 %4176, i32* %827, align 1
  %4177 = extractelement <2 x i32> %4172, i32 0
  store i32 %4177, i32* %829, align 1
  %4178 = extractelement <2 x i32> %4172, i32 1
  store i32 %4178, i32* %832, align 1
  %4179 = add i64 %4167, -88
  %4180 = add i64 %4169, 10
  store i64 %4180, i64* %3, align 8
  %4181 = load <2 x float>, <2 x float>* %837, align 1
  %4182 = load <2 x i32>, <2 x i32>* %821, align 1
  %4183 = inttoptr i64 %4179 to float*
  %4184 = load float, float* %4183, align 4
  %4185 = extractelement <2 x float> %4181, i32 0
  %4186 = fmul float %4185, %4184
  store float %4186, float* %824, align 1
  %4187 = bitcast <2 x float> %4181 to <2 x i32>
  %4188 = extractelement <2 x i32> %4187, i32 1
  store i32 %4188, i32* %827, align 1
  %4189 = extractelement <2 x i32> %4182, i32 0
  store i32 %4189, i32* %829, align 1
  %4190 = extractelement <2 x i32> %4182, i32 1
  store i32 %4190, i32* %832, align 1
  %4191 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4191, i64* %RDI.i1881, align 8
  %4192 = add i64 %4191, 8
  %4193 = add i64 %4169, 23
  store i64 %4193, i64* %3, align 8
  %4194 = load <2 x i32>, <2 x i32>* %4135, align 1
  %4195 = load <2 x i32>, <2 x i32>* %4138, align 1
  %4196 = inttoptr i64 %4192 to i32*
  %4197 = load i32, i32* %4196, align 4
  %4198 = sitofp i32 %4197 to float
  store float %4198, float* %4141, align 1
  %4199 = extractelement <2 x i32> %4194, i32 1
  store i32 %4199, i32* %4144, align 1
  %4200 = extractelement <2 x i32> %4195, i32 0
  store i32 %4200, i32* %4146, align 1
  %4201 = extractelement <2 x i32> %4195, i32 1
  store i32 %4201, i32* %4149, align 1
  %4202 = load <2 x float>, <2 x float>* %837, align 1
  %4203 = load <2 x i32>, <2 x i32>* %821, align 1
  %4204 = load <2 x float>, <2 x float>* %4152, align 1
  %4205 = extractelement <2 x float> %4202, i32 0
  %4206 = extractelement <2 x float> %4204, i32 0
  %4207 = fdiv float %4205, %4206
  store float %4207, float* %824, align 1
  %4208 = bitcast <2 x float> %4202 to <2 x i32>
  %4209 = extractelement <2 x i32> %4208, i32 1
  store i32 %4209, i32* %827, align 1
  %4210 = extractelement <2 x i32> %4203, i32 0
  store i32 %4210, i32* %829, align 1
  %4211 = extractelement <2 x i32> %4203, i32 1
  store i32 %4211, i32* %832, align 1
  %4212 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  %4213 = add i64 %4212, 12
  %4214 = add i64 %4169, 40
  store i64 %4214, i64* %3, align 8
  %4215 = load <2 x float>, <2 x float>* %837, align 1
  %4216 = extractelement <2 x float> %4215, i32 0
  %4217 = inttoptr i64 %4213 to float*
  store float %4216, float* %4217, align 4
  %4218 = load i64, i64* %3, align 8
  %4219 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4219, i64* %RDI.i1881, align 8
  %4220 = load i64, i64* %RBP.i, align 8
  %4221 = add i64 %4220, -88
  %4222 = add i64 %4218, 13
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to float*
  %4224 = load float, float* %4223, align 4
  %4225 = fpext float %4224 to double
  store double %4225, double* %1643, align 1
  %R10.i148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4226 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %4226, i64* %R10.i148, align 8
  %4227 = add i64 %4226, 12
  %4228 = add i64 %4218, 27
  store i64 %4228, i64* %3, align 8
  %4229 = inttoptr i64 %4227 to i32*
  %4230 = load i32, i32* %4229, align 4
  %4231 = bitcast %union.VectorReg* %4133 to i32*
  store i32 %4230, i32* %4231, align 1
  %4232 = bitcast i8* %4143 to float*
  store float 0.000000e+00, float* %4232, align 1
  %4233 = bitcast i64* %4137 to float*
  store float 0.000000e+00, float* %4233, align 1
  %4234 = bitcast i8* %4148 to float*
  store float 0.000000e+00, float* %4234, align 1
  %4235 = load <2 x float>, <2 x float>* %4152, align 1
  %4236 = load <2 x i32>, <2 x i32>* %4138, align 1
  %4237 = load <2 x float>, <2 x float>* %833, align 1
  %4238 = extractelement <2 x float> %4235, i32 0
  %4239 = extractelement <2 x float> %4237, i32 0
  %4240 = fdiv float %4238, %4239
  store float %4240, float* %4141, align 1
  %4241 = bitcast <2 x float> %4235 to <2 x i32>
  %4242 = extractelement <2 x i32> %4241, i32 1
  store i32 %4242, i32* %4144, align 1
  %4243 = extractelement <2 x i32> %4236, i32 0
  store i32 %4243, i32* %4146, align 1
  %4244 = extractelement <2 x i32> %4236, i32 1
  store i32 %4244, i32* %4149, align 1
  %4245 = load <2 x float>, <2 x float>* %4152, align 1
  %4246 = extractelement <2 x float> %4245, i32 0
  %4247 = fpext float %4246 to double
  %4248 = add i64 %4220, -1680
  %4249 = add i64 %4218, 43
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to double*
  store double %4247, double* %4250, align 8
  %4251 = load i64, i64* %3, align 8
  %4252 = load <2 x i32>, <2 x i32>* %818, align 1
  %4253 = load <2 x i32>, <2 x i32>* %821, align 1
  %4254 = extractelement <2 x i32> %4252, i32 0
  store i32 %4254, i32* %780, align 1
  %4255 = extractelement <2 x i32> %4252, i32 1
  store i32 %4255, i32* %844, align 1
  %4256 = extractelement <2 x i32> %4253, i32 0
  store i32 %4256, i32* %846, align 1
  %4257 = extractelement <2 x i32> %4253, i32 1
  store i32 %4257, i32* %848, align 1
  %4258 = load i64, i64* %RBP.i, align 8
  %4259 = add i64 %4258, -1680
  %4260 = add i64 %4251, 11
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i64*
  %4262 = load i64, i64* %4261, align 8
  %4263 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %816, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %4262, i64* %4263, align 1
  %4264 = bitcast i64* %820 to double*
  store double 0.000000e+00, double* %4264, align 1
  %4265 = add i64 %4258, -1684
  %4266 = load i32, i32* %EAX.i83, align 4
  %4267 = add i64 %4251, 17
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4265 to i32*
  store i32 %4266, i32* %4268, align 4
  %4269 = load i64, i64* %3, align 8
  store i8 2, i8* %AL.i1879, align 1
  %4270 = add i64 %4269, -221887
  %4271 = add i64 %4269, 7
  %4272 = load i64, i64* %6, align 8
  %4273 = add i64 %4272, -8
  %4274 = inttoptr i64 %4273 to i64*
  store i64 %4271, i64* %4274, align 8
  store i64 %4273, i64* %6, align 8
  store i64 %4270, i64* %3, align 8
  %4275 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %4090)
  %4276 = load i64, i64* %RBP.i, align 8
  %4277 = add i64 %4276, -1688
  %4278 = load i32, i32* %EAX.i83, align 4
  %4279 = load i64, i64* %3, align 8
  %4280 = add i64 %4279, 6
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4277 to i32*
  store i32 %4278, i32* %4281, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4373dc

block_.L_4373dc:                                  ; preds = %block_.L_4372b1, %block_437181
  %4282 = phi i64 [ %.pre81, %block_.L_4372b1 ], [ %4072, %block_437181 ]
  %MEMORY.32 = phi %struct.Memory* [ %4275, %block_.L_4372b1 ], [ %4064, %block_437181 ]
  %4283 = add i64 %4282, 5
  store i64 %4283, i64* %3, align 8
  br label %block_.L_4373e1

block_.L_4373e1:                                  ; preds = %block_.L_4373dc, %block_436ff9
  %storemerge42 = phi i64 [ %3754, %block_436ff9 ], [ %4283, %block_.L_4373dc ]
  %MEMORY.33 = phi %struct.Memory* [ %3746, %block_436ff9 ], [ %MEMORY.32, %block_.L_4373dc ]
  store i64 ptrtoint (%G__0x4c0e0b_type* @G__0x4c0e0b to i64), i64* %RSI.i1995, align 8
  %4284 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4284, i64* %RDI.i1881, align 8
  %4285 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %4285, i64* %RAX.i67, align 8
  %4286 = add i64 %4285, 28
  %4287 = add i64 %storemerge42, 29
  store i64 %4287, i64* %3, align 8
  %4288 = inttoptr i64 %4286 to i32*
  %4289 = load i32, i32* %4288, align 4
  %4290 = zext i32 %4289 to i64
  store i64 %4290, i64* %RDX.i1187, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4291 = add i64 %storemerge42, -221905
  %4292 = add i64 %storemerge42, 36
  %4293 = load i64, i64* %6, align 8
  %4294 = add i64 %4293, -8
  %4295 = inttoptr i64 %4294 to i64*
  store i64 %4292, i64* %4295, align 8
  store i64 %4294, i64* %6, align 8
  store i64 %4291, i64* %3, align 8
  %4296 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.33)
  %4297 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0e35_type* @G__0x4c0e35 to i64), i64* %RSI.i1995, align 8
  %4298 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4298, i64* %RDI.i1881, align 8
  %4299 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %4299, i64* %RCX.i1986, align 8
  %4300 = add i64 %4299, 1488
  %4301 = add i64 %4297, 32
  store i64 %4301, i64* %3, align 8
  %4302 = inttoptr i64 %4300 to i32*
  %4303 = load i32, i32* %4302, align 4
  %4304 = zext i32 %4303 to i64
  store i64 %4304, i64* %RDX.i1187, align 8
  %4305 = load i64, i64* %RBP.i, align 8
  %4306 = add i64 %4305, -1692
  %4307 = load i32, i32* %EAX.i83, align 4
  %4308 = add i64 %4297, 38
  store i64 %4308, i64* %3, align 8
  %4309 = inttoptr i64 %4306 to i32*
  store i32 %4307, i32* %4309, align 4
  %4310 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4311 = add i64 %4310, -221979
  %4312 = add i64 %4310, 7
  %4313 = load i64, i64* %6, align 8
  %4314 = add i64 %4313, -8
  %4315 = inttoptr i64 %4314 to i64*
  store i64 %4312, i64* %4315, align 8
  store i64 %4314, i64* %6, align 8
  store i64 %4311, i64* %3, align 8
  %4316 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %4296)
  %4317 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI.i1995, align 8
  %4318 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4318, i64* %RDI.i1881, align 8
  %4319 = load i64, i64* %RBP.i, align 8
  %4320 = add i64 %4319, -1696
  %4321 = load i32, i32* %EAX.i83, align 4
  %4322 = add i64 %4317, 24
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4320 to i32*
  store i32 %4321, i32* %4323, align 4
  %4324 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4325 = add i64 %4324, -222010
  %4326 = add i64 %4324, 7
  %4327 = load i64, i64* %6, align 8
  %4328 = add i64 %4327, -8
  %4329 = inttoptr i64 %4328 to i64*
  store i64 %4326, i64* %4329, align 8
  store i64 %4328, i64* %6, align 8
  store i64 %4325, i64* %3, align 8
  %4330 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %4316)
  %4331 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c0e5f_type* @G__0x4c0e5f to i64), i64* %RSI.i1995, align 8
  store i64 ptrtoint (%G__0x4c0e7a_type* @G__0x4c0e7a to i64), i64* %RDX.i1187, align 8
  store i64 ptrtoint (%G__0x4c0e84_type* @G__0x4c0e84 to i64), i64* %RCX.i1986, align 8
  %4332 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4332, i64* %RDI.i1881, align 8
  %4333 = load i64, i64* %RBP.i, align 8
  %4334 = add i64 %4333, -1700
  %4335 = load i32, i32* %EAX.i83, align 4
  %4336 = add i64 %4331, 44
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4334 to i32*
  store i32 %4335, i32* %4337, align 4
  %4338 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4339 = add i64 %4338, -222061
  %4340 = add i64 %4338, 7
  %4341 = load i64, i64* %6, align 8
  %4342 = add i64 %4341, -8
  %4343 = inttoptr i64 %4342 to i64*
  store i64 %4340, i64* %4343, align 8
  store i64 %4342, i64* %6, align 8
  store i64 %4339, i64* %3, align 8
  %4344 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %4330)
  %4345 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c04ff_type* @G__0x4c04ff to i64), i64* %RSI.i1995, align 8
  %4346 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %4346, i64* %RDI.i1881, align 8
  %4347 = load i64, i64* %RBP.i, align 8
  %4348 = add i64 %4347, -1704
  %4349 = load i32, i32* %EAX.i83, align 4
  %4350 = add i64 %4345, 24
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4348 to i32*
  store i32 %4349, i32* %4351, align 4
  %4352 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4353 = add i64 %4352, -222092
  %4354 = add i64 %4352, 7
  %4355 = load i64, i64* %6, align 8
  %4356 = add i64 %4355, -8
  %4357 = inttoptr i64 %4356 to i64*
  store i64 %4354, i64* %4357, align 8
  store i64 %4356, i64* %6, align 8
  store i64 %4353, i64* %3, align 8
  %4358 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %4344)
  %4359 = load i64, i64* %3, align 8
  %4360 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4360, i64* %RCX.i1986, align 8
  %4361 = add i64 %4360, 3228
  %4362 = add i64 %4359, 15
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  store i8 0, i8* %12, align 1
  %4365 = and i32 %4364, 255
  %4366 = tail call i32 @llvm.ctpop.i32(i32 %4365)
  %4367 = trunc i32 %4366 to i8
  %4368 = and i8 %4367, 1
  %4369 = xor i8 %4368, 1
  store i8 %4369, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4370 = icmp eq i32 %4364, 0
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %15, align 1
  %4372 = lshr i32 %4364, 31
  %4373 = trunc i32 %4372 to i8
  store i8 %4373, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %4374 = load i64, i64* %RBP.i, align 8
  %4375 = add i64 %4374, -1708
  %4376 = load i32, i32* %EAX.i83, align 4
  %4377 = add i64 %4359, 21
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4375 to i32*
  store i32 %4376, i32* %4378, align 4
  %4379 = load i64, i64* %3, align 8
  %4380 = load i8, i8* %15, align 1
  %4381 = icmp ne i8 %4380, 0
  %.v127 = select i1 %4381, i64 159, i64 6
  %4382 = add i64 %4379, %.v127
  store i64 %4382, i64* %3, align 8
  %cmpBr_4374b8 = icmp eq i8 %4380, 1
  br i1 %cmpBr_4374b8, label %block_.L_437557, label %block_4374be

block_4374be:                                     ; preds = %block_.L_4373e1
  store i64 ptrtoint (%G__0x4c0e88_type* @G__0x4c0e88 to i64), i64* %RDI.i1881, align 8
  store i64 ptrtoint (%G__0x4be20a_type* @G__0x4be20a to i64), i64* %RSI.i1995, align 8
  %4383 = add i64 %4382, -221982
  %4384 = add i64 %4382, 25
  %4385 = load i64, i64* %6, align 8
  %4386 = add i64 %4385, -8
  %4387 = inttoptr i64 %4386 to i64*
  store i64 %4384, i64* %4387, align 8
  store i64 %4386, i64* %6, align 8
  store i64 %4383, i64* %3, align 8
  %call2_4374d2 = tail call %struct.Memory* @sub_4011a0.fopen_plt(%struct.State* nonnull %0, i64 %4383, %struct.Memory* %4358)
  %4388 = load i64, i64* %RAX.i67, align 8
  %4389 = load i64, i64* %3, align 8
  store i64 %4388, i64* bitcast (%G_0x70d198_type* @G_0x70d198 to i64*), align 8
  store i8 0, i8* %12, align 1
  %4390 = trunc i64 %4388 to i32
  %4391 = and i32 %4390, 255
  %4392 = tail call i32 @llvm.ctpop.i32(i32 %4391)
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = xor i8 %4394, 1
  store i8 %4395, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4396 = icmp eq i64 %4388, 0
  %4397 = zext i1 %4396 to i8
  store i8 %4397, i8* %15, align 1
  %4398 = lshr i64 %4388, 63
  %4399 = trunc i64 %4398 to i8
  store i8 %4399, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v93 = select i1 %4396, i64 18, i64 73
  %4400 = add i64 %4389, %.v93
  %4401 = add i64 %4400, 10
  store i64 %4401, i64* %3, align 8
  br i1 %4396, label %block_4374e9, label %block_.L_437520

block_4374e9:                                     ; preds = %block_4374be
  store i64 ptrtoint (%G__0x720c60_type* @G__0x720c60 to i64), i64* %RDI.i1881, align 8
  store i64 300, i64* %RAX.i67, align 8
  store i64 300, i64* %RSI.i1995, align 8
  store i64 ptrtoint (%G__0x4c04eb_type* @G__0x4c04eb to i64), i64* %RDX.i1187, align 8
  store i64 ptrtoint (%G__0x4c0e97_type* @G__0x4c0e97 to i64), i64* %RCX.i1986, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4402 = add i64 %4400, -222361
  %4403 = add i64 %4400, 44
  %4404 = load i64, i64* %6, align 8
  %4405 = add i64 %4404, -8
  %4406 = inttoptr i64 %4405 to i64*
  store i64 %4403, i64* %4406, align 8
  store i64 %4405, i64* %6, align 8
  store i64 %4402, i64* %3, align 8
  %call2_437510 = tail call %struct.Memory* @sub_401050.snprintf_plt(%struct.State* nonnull %0, i64 %4402, %struct.Memory* %call2_4374d2)
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -1712
  %4409 = load i32, i32* %EAX.i83, align 4
  %4410 = load i64, i64* %3, align 8
  %4411 = add i64 %4410, 6
  store i64 %4411, i64* %3, align 8
  %4412 = inttoptr i64 %4408 to i32*
  store i32 %4409, i32* %4412, align 4
  %4413 = load i64, i64* %3, align 8
  %4414 = add i64 %4413, 55
  store i64 %4414, i64* %3, align 8
  br label %block_.L_437552

block_.L_437520:                                  ; preds = %block_4374be
  store i64 ptrtoint (%G__0x4c0eaa_type* @G__0x4c0eaa to i64), i64* %RSI.i1995, align 8
  store i64 %4388, i64* %RDI.i1881, align 8
  store i8 0, i8* %AL.i1879, align 1
  %4415 = add i64 %4400, -222224
  %4416 = add i64 %4400, 25
  %4417 = load i64, i64* %6, align 8
  %4418 = add i64 %4417, -8
  %4419 = inttoptr i64 %4418 to i64*
  store i64 %4416, i64* %4419, align 8
  store i64 %4418, i64* %6, align 8
  store i64 %4415, i64* %3, align 8
  %4420 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4374d2)
  %4421 = load i64, i64* %3, align 8
  %4422 = load i64, i64* bitcast (%G_0x70d198_type* @G_0x70d198 to i64*), align 8
  store i64 %4422, i64* %RDI.i1881, align 8
  %4423 = load i64, i64* %RBP.i, align 8
  %4424 = add i64 %4423, -1716
  %4425 = load i32, i32* %EAX.i83, align 4
  %4426 = add i64 %4421, 14
  store i64 %4426, i64* %3, align 8
  %4427 = inttoptr i64 %4424 to i32*
  store i32 %4425, i32* %4427, align 4
  %4428 = load i64, i64* %3, align 8
  %4429 = add i64 %4428, -222503
  %4430 = add i64 %4428, 5
  %4431 = load i64, i64* %6, align 8
  %4432 = add i64 %4431, -8
  %4433 = inttoptr i64 %4432 to i64*
  store i64 %4430, i64* %4433, align 8
  store i64 %4432, i64* %6, align 8
  store i64 %4429, i64* %3, align 8
  %call2_437547 = tail call %struct.Memory* @sub_401020.fclose_plt(%struct.State* nonnull %0, i64 %4429, %struct.Memory* %4420)
  %4434 = load i64, i64* %RBP.i, align 8
  %4435 = add i64 %4434, -1720
  %4436 = load i32, i32* %EAX.i83, align 4
  %4437 = load i64, i64* %3, align 8
  %4438 = add i64 %4437, 6
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4435 to i32*
  store i32 %4436, i32* %4439, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_437552

block_.L_437552:                                  ; preds = %block_.L_437520, %block_4374e9
  %4440 = phi i64 [ %.pre82, %block_.L_437520 ], [ %4414, %block_4374e9 ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_437547, %block_.L_437520 ], [ %call2_437510, %block_4374e9 ]
  %4441 = add i64 %4440, 5
  store i64 %4441, i64* %3, align 8
  br label %block_.L_437557

block_.L_437557:                                  ; preds = %block_.L_437552, %block_.L_4373e1
  %4442 = phi i64 [ %4382, %block_.L_4373e1 ], [ %4441, %block_.L_437552 ]
  %MEMORY.35 = phi %struct.Memory* [ %4358, %block_.L_4373e1 ], [ %MEMORY.34, %block_.L_437552 ]
  %4443 = load i64, i64* %6, align 8
  %4444 = add i64 %4443, 1728
  store i64 %4444, i64* %6, align 8
  %4445 = icmp ugt i64 %4443, -1729
  %4446 = zext i1 %4445 to i8
  store i8 %4446, i8* %12, align 1
  %4447 = trunc i64 %4444 to i32
  %4448 = and i32 %4447, 255
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %13, align 1
  %4453 = xor i64 %4444, %4443
  %4454 = lshr i64 %4453, 4
  %4455 = trunc i64 %4454 to i8
  %4456 = and i8 %4455, 1
  store i8 %4456, i8* %14, align 1
  %4457 = icmp eq i64 %4444, 0
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %15, align 1
  %4459 = lshr i64 %4444, 63
  %4460 = trunc i64 %4459 to i8
  store i8 %4460, i8* %16, align 1
  %4461 = lshr i64 %4443, 63
  %4462 = xor i64 %4459, %4461
  %4463 = add nuw nsw i64 %4462, %4459
  %4464 = icmp eq i64 %4463, 2
  %4465 = zext i1 %4464 to i8
  store i8 %4465, i8* %17, align 1
  %4466 = add i64 %4442, 8
  store i64 %4466, i64* %3, align 8
  %4467 = add i64 %4443, 1736
  %4468 = inttoptr i64 %4444 to i64*
  %4469 = load i64, i64* %4468, align 8
  store i64 %4469, i64* %RBP.i, align 8
  store i64 %4467, i64* %6, align 8
  %4470 = add i64 %4442, 9
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4467 to i64*
  %4472 = load i64, i64* %4471, align 8
  store i64 %4472, i64* %3, align 8
  %4473 = add i64 %4443, 1744
  store i64 %4473, i64* %6, align 8
  ret %struct.Memory* %MEMORY.35
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
define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1728
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
define %struct.Memory* @routine_movl_0x6f8edc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6f8edc_type* @G_0x6f8edc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x6cee50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_436095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x6cee50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cee50_type* @G_0x6cee50 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4360a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x722ca8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4360e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp__rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -44
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4360bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_436226(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -15
  %10 = icmp ult i32 %8, 15
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43613f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x404___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1028
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1029
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_imulq__0x3c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 60
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -44
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -44
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4360fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x558__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1368
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x544__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1348
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x56c__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1388
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x580__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1408
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x594__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1428
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5a8__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1448
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x530__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4360ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x2c0__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 704
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
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
define %struct.Memory* @routine_movss__xmm0__0x2cc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 716
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x2c4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 708
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x2d0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 720
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x2c8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 712
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x2d4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 724
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
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
define %struct.Memory* @routine_movq__0x4c0609___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0609_type* @G__0x4c0609 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4363f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_4363d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0635___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0635_type* @G__0x4c0635 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4363f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0669___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0669_type* @G__0x4c0669 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436414(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0694___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0694_type* @G__0x4c0694 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c06c3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c06c3_type* @G__0x4c06c3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4c__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43647f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c06ef___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c06ef_type* @G__0x4c06ef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43649e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0718___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0718_type* @G__0x4c0718 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0742___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0742_type* @G__0x4c0742 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c076b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c076b_type* @G__0x4c076b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x28__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x4f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1264
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436529(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1268
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43653a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movl_MINUS0x4f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0794___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0794_type* @G__0x4c0794 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4f0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4d4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movl__eax__MINUS0x4f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436651(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movq__rdi__MINUS0x500__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1280
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4365ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_movl__ecx__MINUS0x504__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1284
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4365bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x504__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1284
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c07bd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c07bd_type* @G__0x4c07bd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x500__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x30__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x508__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x510__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1296
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43661a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl__ecx__MINUS0x514__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1300
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43662b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x514__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c07e6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c07e6_type* @G__0x4c07e6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x510__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x518__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c080f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c080f_type* @G__0x4c080f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x7b245__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x7b245__rip__type* @G_0x7b245__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x725260___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x725260_type* @G_0x725260 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
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
define %struct.Memory* @routine_movq__0x4c083f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c083f_type* @G__0x4c083f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x7b214__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x7b214__rip__type* @G_0x7b214__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_0x6f968c___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6f968c_type* @G_0x6f968c to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x51c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c086f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c086f_type* @G__0x4c086f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x520__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x524__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436751(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1320
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
define %struct.Memory* @routine_je_.L_436751(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0894___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0894_type* @G__0x4c0894 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_0x4d8__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1240
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x528__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436c34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_jle_.L_436b73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4bdcdc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4bdcdc_type* @G__0x4bdcdc to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4369f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
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
define %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 1236
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
define %struct.Memory* @routine_jge_.L_43693c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1316
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
define %struct.Memory* @routine_je_.L_43687c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 79, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x534__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x540__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1344
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x548__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1352
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x540__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x534__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1332
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %R8D, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
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
define %struct.Memory* @routine_jle_.L_436825(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x54c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436851(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 79, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x558__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x558__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x54c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1356
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1356
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c08b6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08b6_type* @G__0x4c08b6 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x548__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncat_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x560__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1376
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436923(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x564__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x570__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1392
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x578__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1400
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x570__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x564__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1380
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4368d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x57c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1404
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4368fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x588__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1416
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x588__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x57c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1404
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x57c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c08ba___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08ba_type* @G__0x4c08ba to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x578__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x590__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1424
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436928(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4367a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x594__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x5a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1440
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x5a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1448
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5a0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x594__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1428
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436991(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4369bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x5b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1464
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5b8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1452
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c08bd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08bd_type* @G__0x4c08bd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5a8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x5c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1472
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43678a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436b22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_0x10__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4dc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1244
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movq__rdx__MINUS0x5c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1480
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x5d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1488
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1492
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1496
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_436a7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1244
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -51
  %8 = icmp ult i32 %4, 51
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436ab4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x33___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 51, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436ad6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1504
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1500
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c08c0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08c0_type* @G__0x4c08c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5d0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5c8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1496
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436b6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c08de___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08de_type* @G__0x4c08de to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d8__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1240
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1512
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436c2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_436bd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4f8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1272
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
define %struct.Memory* @routine_movq__0x4c08fb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c08fb_type* @G__0x4c08fb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1516
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436c2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0914___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0914_type* @G__0x4c0914 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4fc__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1276
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x500__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1280
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1520
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x934__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2356
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
define %struct.Memory* @routine_jne_.L_436c6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0940___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0940_type* @G__0x4c0940 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1524
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436c8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c096c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c096c_type* @G__0x4c096c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1528
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0998___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0998_type* @G__0x4c0998 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl__0x2__0x984__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 2436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1532
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_436cf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c09c6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c09c6_type* @G__0x4c09c6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x600__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1536
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436d56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x984__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_436d32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c09f1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c09f1_type* @G__0x4c09f1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1540
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436d51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0a2e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0a2e_type* @G__0x4c0a2e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x608__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1544
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x9a0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2464
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
define %struct.Memory* @routine_je_.L_436d8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0a7e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0a7e_type* @G__0x4c0a7e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1548
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436dae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0aa9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0aa9_type* @G__0x4c0aa9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1552
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x294b43__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x294b43__rip__type* @G_0x294b43__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x93c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
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
  %14 = icmp eq i32 %4, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %4, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1556
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436dce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1556
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
define %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1560
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436e0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436e30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0ad8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0ad8_type* @G__0x4c0ad8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1564
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436e4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0b0b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0b0b_type* @G__0x4c0b0b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1568
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0b3f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0b3f_type* @G__0x4c0b3f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x624__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1572
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x294aa2__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x294aa2__rip__type* @G_0x294aa2__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x938__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x628__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1576
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436e89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436e6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x628__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x62c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_436ead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436ed1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0b73___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0b73_type* @G__0x4c0b73 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x630__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1584
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436ef0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0bb7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0bb7_type* @G__0x4c0bb7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x634__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1588
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0bf5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0bf5_type* @G__0x4c0bf5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x638__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3328
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
define %struct.Memory* @routine_je_.L_436f29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0c29___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0c29_type* @G__0x4c0c29 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x63c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436f48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0c54___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0c54_type* @G__0x4c0c54 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x640__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1600
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0c83___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0c83_type* @G__0x4c0c83 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0cd4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0cd4_type* @G__0x4c0cd4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb910_type* @G_0x6cb910 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x3c__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x644__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1604
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0d00___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0d00_type* @G__0x4c0d00 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x40__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0d2c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0d2c_type* @G__0x4c0d2c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x44__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x722ca8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722ca8_type* @G_0x722ca8 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x650__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1616
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43716c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0d58___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0d58_type* @G__0x4c0d58 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x2c0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x2c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x5d0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c0__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c4__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 708
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c8__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5d0__rax____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1620
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0d9e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0d9e_type* @G__0x4c0d9e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x86790__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x86790__rip__type* @G_0x86790__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30__rdi____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x54__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq_0x6cb908___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0xc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb908___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__r11____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %R11, align 8
  %6 = add i64 %5, 12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = fpext float %9 to double
  %11 = bitcast [32 x %union.VectorReg]* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
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
define %struct.Memory* @routine_movsd_MINUS0x660__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
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
define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1636
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1640
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4373e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4372b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0dca___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0dca_type* @G__0x4c0dca to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5d0__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x66c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1644
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x66c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x86629__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x86629__rip__type* @G_0x86629__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x8__rdi____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb908___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__r10____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %R10, align 8
  %6 = add i64 %5, 12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_movsd_MINUS0x678__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1660
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4373dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x684__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x864f9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x864f9__rip__type* @G_0x864f9__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
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
define %struct.Memory* @routine_movsd_MINUS0x690__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
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
define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e0b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e0b_type* @G__0x4c0e0b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e35___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e35_type* @G__0x4c0e35 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5d0__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e5f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e5f_type* @G__0x4c0e5f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e7a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e7a_type* @G__0x4c0e7a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e84___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e84_type* @G__0x4c0e84 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c04ff___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c04ff_type* @G__0x4c04ff to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3228
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
define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_437557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c0e88___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e88_type* @G__0x4c0e88 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4be20a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4be20a_type* @G__0x4be20a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fopen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x70d198(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x70d198_type* @G_0x70d198 to i64*), align 8
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
define %struct.Memory* @routine_jne_.L_437520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x720c60___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x720c60_type* @G__0x720c60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x12c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 300, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c04eb___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c04eb_type* @G__0x4c04eb to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0e97___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0e97_type* @G__0x4c0e97 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.snprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437552(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4c0eaa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c0eaa_type* @G__0x4c0eaa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70d198___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70d198_type* @G_0x70d198 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fclose_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_437557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1729
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
