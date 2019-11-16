; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x661538_type = type <{ [4 x i8] }>
%G_0x66153c_type = type <{ [4 x i8] }>
%G_0x661540_type = type <{ [4 x i8] }>
%G_0x661544_type = type <{ [4 x i8] }>
%G_0x661548_type = type <{ [4 x i8] }>
%G_0x66154c_type = type <{ [4 x i8] }>
%G_0x661550_type = type <{ [4 x i8] }>
%G_0x661554_type = type <{ [4 x i8] }>
%G_0x661558_type = type <{ [4 x i8] }>
%G_0x66155c_type = type <{ [4 x i8] }>
%G__0x41d160_type = type <{ [8 x i8] }>
%G__0x41e0a0_type = type <{ [8 x i8] }>
%G__0x41e1b0_type = type <{ [8 x i8] }>
%G__0x41e2c0_type = type <{ [8 x i8] }>
%G__0x41e3d0_type = type <{ [8 x i8] }>
%G__0x41e4e0_type = type <{ [8 x i8] }>
%G__0x41f910_type = type <{ [8 x i8] }>
%G__0x4206d0_type = type <{ [8 x i8] }>
%G__0x4207c0_type = type <{ [8 x i8] }>
%G__0x4207f0_type = type <{ [8 x i8] }>
%G__0x45763b_type = type <{ [8 x i8] }>
%G__0x4576e8_type = type <{ [8 x i8] }>
%G__0x4576ef_type = type <{ [8 x i8] }>
%G__0x457709_type = type <{ [8 x i8] }>
%G__0x457725_type = type <{ [8 x i8] }>
%G__0x4577c5_type = type <{ [8 x i8] }>
%G__0x4577ce_type = type <{ [8 x i8] }>
%G__0x4577d9_type = type <{ [8 x i8] }>
%G__0x4577e4_type = type <{ [8 x i8] }>
%G__0x4577ef_type = type <{ [8 x i8] }>
%G__0x458380_type = type <{ [8 x i8] }>
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
@G_0x661538 = local_unnamed_addr global %G_0x661538_type zeroinitializer
@G_0x66153c = local_unnamed_addr global %G_0x66153c_type zeroinitializer
@G_0x661540 = local_unnamed_addr global %G_0x661540_type zeroinitializer
@G_0x661544 = local_unnamed_addr global %G_0x661544_type zeroinitializer
@G_0x661548 = local_unnamed_addr global %G_0x661548_type zeroinitializer
@G_0x66154c = local_unnamed_addr global %G_0x66154c_type zeroinitializer
@G_0x661550 = local_unnamed_addr global %G_0x661550_type zeroinitializer
@G_0x661554 = local_unnamed_addr global %G_0x661554_type zeroinitializer
@G_0x661558 = local_unnamed_addr global %G_0x661558_type zeroinitializer
@G_0x66155c = local_unnamed_addr global %G_0x66155c_type zeroinitializer
@G__0x41d160 = global %G__0x41d160_type zeroinitializer
@G__0x41e0a0 = global %G__0x41e0a0_type zeroinitializer
@G__0x41e1b0 = global %G__0x41e1b0_type zeroinitializer
@G__0x41e2c0 = global %G__0x41e2c0_type zeroinitializer
@G__0x41e3d0 = global %G__0x41e3d0_type zeroinitializer
@G__0x41e4e0 = global %G__0x41e4e0_type zeroinitializer
@G__0x41f910 = global %G__0x41f910_type zeroinitializer
@G__0x4206d0 = global %G__0x4206d0_type zeroinitializer
@G__0x4207c0 = global %G__0x4207c0_type zeroinitializer
@G__0x4207f0 = global %G__0x4207f0_type zeroinitializer
@G__0x45763b = global %G__0x45763b_type zeroinitializer
@G__0x4576e8 = global %G__0x4576e8_type zeroinitializer
@G__0x4576ef = global %G__0x4576ef_type zeroinitializer
@G__0x457709 = global %G__0x457709_type zeroinitializer
@G__0x457725 = global %G__0x457725_type zeroinitializer
@G__0x4577c5 = global %G__0x4577c5_type zeroinitializer
@G__0x4577ce = global %G__0x4577ce_type zeroinitializer
@G__0x4577d9 = global %G__0x4577d9_type zeroinitializer
@G__0x4577e4 = global %G__0x4577e4_type zeroinitializer
@G__0x4577ef = global %G__0x4577ef_type zeroinitializer
@G__0x458380 = global %G__0x458380_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401640.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_416580.EnvFileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_416430.FileConcat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446880.SSIOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4480e0.SSIGetFilePosition(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ebe0.Warn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @HMMFileOpen(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -664
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 656
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i94 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RAX.i94, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i125 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 164, i64* %RCX.i125, align 8
  %RDX.i156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 56, i64* %RDX.i156, align 8
  %RDI.i589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -24
  %43 = load i64, i64* %RDI.i589, align 8
  %44 = add i64 %10, 34
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i616 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -24
  %49 = load i64, i64* %RSI.i616, align 8
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %RAX.i94, align 8
  %54 = load i64, i64* %3, align 8
  store i64 %53, i64* %RDI.i589, align 8
  %ECX.i651 = bitcast %union.anon* %41 to i32*
  %55 = load i32, i32* %ECX.i651, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RSI.i616, align 8
  %57 = add i64 %54, 169785
  %58 = add i64 %54, 10
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  store i64 %58, i64* %61, align 8
  store i64 %60, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  %call2_41c92c = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %57, %struct.Memory* %2)
  %62 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x458380_type* @G__0x458380 to i64), i64* %RSI.i616, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %RAX.i94, align 8
  %66 = add i64 %62, 14
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -32
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RAX.i94, align 8
  %74 = add i64 %70, 11
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX.i94, align 8
  %82 = add i64 %81, 16
  %83 = add i64 %78, 12
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -32
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX.i94, align 8
  %91 = add i64 %90, 24
  %92 = add i64 %87, 11
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 0, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -32
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RAX.i94, align 8
  %100 = add i64 %99, 28
  %101 = add i64 %96, 11
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -32
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX.i94, align 8
  %109 = add i64 %108, 32
  %110 = add i64 %105, 11
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  store i32 1, i32* %111, align 4
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -32
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RAX.i94, align 8
  %118 = add i64 %114, 11
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  store i64 0, i64* %119, align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -32
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %121 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RAX.i94, align 8
  %126 = add i64 %125, 8
  %127 = add i64 %122, 12
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i64*
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -16
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RDI.i589, align 8
  %135 = add i64 %131, -111438
  %136 = add i64 %131, 9
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  %call2_41c992 = tail call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64 %135, %struct.Memory* %call2_41c92c)
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -32
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, 4
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RDX.i156, align 8
  %146 = load i64, i64* %RAX.i94, align 8
  %147 = add i64 %142, 7
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %RAX.i94, align 8
  %150 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %151 = trunc i64 %149 to i32
  %152 = and i32 %151, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %157 = icmp eq i64 %149, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %30, align 1
  %159 = lshr i64 %149, 63
  %160 = trunc i64 %159 to i8
  store i8 %160, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v37 = select i1 %157, i64 167, i64 10
  %161 = add i64 %150, %.v37
  store i64 %161, i64* %3, align 8
  br i1 %157, label %block_.L_41ca45, label %block_41c9a8

block_41c9a8:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RDI.i589, align 8
  store i64 181, i64* %RSI.i616, align 8
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -16
  %164 = add i64 %161, 19
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RAX.i94, align 8
  %167 = add i64 %162, -600
  %168 = add i64 %161, 26
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i64*
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %169, align 8
  %170 = load i64, i64* %RAX.i94, align 8
  %171 = load i64, i64* %3, align 8
  store i64 %170, i64* %RDI.i589, align 8
  %ESI.i806 = bitcast %union.anon* %46 to i32*
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -604
  %174 = load i32, i32* %ESI.i806, align 4
  %175 = add i64 %171, 9
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %176, align 4
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, -111979
  %179 = add i64 %177, 5
  %180 = load i64, i64* %6, align 8
  %181 = add i64 %180, -8
  %182 = inttoptr i64 %181 to i64*
  store i64 %179, i64* %182, align 8
  store i64 %181, i64* %6, align 8
  store i64 %178, i64* %3, align 8
  %183 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %call2_41c992)
  %184 = load i64, i64* %RAX.i94, align 8
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %184, 5
  store i64 %186, i64* %RAX.i94, align 8
  %187 = icmp ugt i64 %184, -6
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %14, align 1
  %189 = trunc i64 %186 to i32
  %190 = and i32 %189, 255
  %191 = tail call i32 @llvm.ctpop.i32(i32 %190)
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %21, align 1
  %195 = xor i64 %186, %184
  %196 = lshr i64 %195, 4
  %197 = trunc i64 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %27, align 1
  %199 = icmp eq i64 %186, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %30, align 1
  %201 = lshr i64 %186, 63
  %202 = trunc i64 %201 to i8
  store i8 %202, i8* %33, align 1
  %203 = lshr i64 %184, 63
  %204 = xor i64 %201, %203
  %205 = add nuw nsw i64 %204, %201
  %206 = icmp eq i64 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -600
  %210 = add i64 %185, 15
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RDI.i589, align 8
  %213 = add i64 %208, -604
  %214 = add i64 %185, 21
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RSI.i616, align 8
  store i64 %186, i64* %RDX.i156, align 8
  %218 = add i64 %185, 169616
  %219 = add i64 %185, 29
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %6, align 8
  store i64 %218, i64* %3, align 8
  %call2_41c9e8 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %218, %struct.Memory* %183)
  %223 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4576e8_type* @G__0x4576e8 to i64), i64* %RSI.i616, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -568
  %226 = load i64, i64* %RAX.i94, align 8
  %227 = add i64 %223, 17
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %228, align 8
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -568
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RDI.i589, align 8
  %235 = add i64 %229, -16
  %236 = add i64 %231, 11
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RDX.i156, align 8
  %AL.i775 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i775, align 1
  %239 = add i64 %231, -111422
  %240 = add i64 %231, 18
  %241 = load i64, i64* %6, align 8
  %242 = add i64 %241, -8
  %243 = inttoptr i64 %242 to i64*
  store i64 %240, i64* %243, align 8
  store i64 %242, i64* %6, align 8
  store i64 %239, i64* %3, align 8
  %244 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %call2_41c9e8)
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -16
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RDI.i589, align 8
  %EAX.i765 = bitcast %union.anon* %40 to i32*
  %251 = add i64 %245, -608
  %252 = load i32, i32* %EAX.i765, align 4
  %253 = add i64 %247, 10
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i32*
  store i32 %252, i32* %254, align 4
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 176662
  %257 = add i64 %255, 5
  %258 = load i64, i64* %6, align 8
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %257, i64* %260, align 8
  store i64 %259, i64* %6, align 8
  store i64 %256, i64* %3, align 8
  %call2_41ca1a = tail call %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* nonnull %0, i64 %256, %struct.Memory* %244)
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -32
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 4
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RDX.i156, align 8
  %267 = add i64 %266, 36
  %268 = load i32, i32* %EAX.i765, align 4
  %269 = add i64 %263, 7
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %EAX.i765, align 4
  %272 = load i64, i64* %3, align 8
  %273 = add i32 %271, 1
  %274 = icmp ne i32 %271, -1
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %14, align 1
  %276 = and i32 %273, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %21, align 1
  %281 = xor i32 %271, 16
  %282 = xor i32 %281, %273
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %27, align 1
  %286 = icmp eq i32 %273, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %30, align 1
  %288 = lshr i32 %273, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %33, align 1
  %290 = lshr i32 %271, 31
  %291 = xor i32 %290, 1
  %292 = xor i32 %288, %290
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %39, align 1
  %.v38 = select i1 %286, i64 9, i64 26
  %296 = add i64 %272, %.v38
  store i64 %296, i64* %3, align 8
  br i1 %286, label %block_41ca2f, label %block_.L_41ca40

block_41ca2f:                                     ; preds = %block_41c9a8
  store i64 ptrtoint (%G__0x4576ef_type* @G__0x4576ef to i64), i64* %RDI.i589, align 8
  store i8 0, i8* %AL.i775, align 1
  %297 = add i64 %296, 139233
  %298 = add i64 %296, 17
  %299 = load i64, i64* %6, align 8
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %6, align 8
  store i64 %297, i64* %3, align 8
  %call2_41ca3b = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %297, %struct.Memory* %call2_41ca1a)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41ca40

block_.L_41ca40:                                  ; preds = %block_41c9a8, %block_41ca2f
  %302 = phi i64 [ %296, %block_41c9a8 ], [ %.pre, %block_41ca2f ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_41ca1a, %block_41c9a8 ], [ %call2_41ca3b, %block_41ca2f ]
  %303 = add i64 %302, 313
  br label %block_.L_41cb79

block_.L_41ca45:                                  ; preds = %entry
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -576
  store i64 %305, i64* %RDX.i156, align 8
  %306 = add i64 %304, -16
  %307 = add i64 %161, 11
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %RDI.i589, align 8
  %310 = add i64 %304, -24
  %311 = add i64 %161, 15
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RSI.i616, align 8
  %314 = add i64 %161, -25797
  %315 = add i64 %161, 20
  %316 = load i64, i64* %6, align 8
  %317 = add i64 %316, -8
  %318 = inttoptr i64 %317 to i64*
  store i64 %315, i64* %318, align 8
  store i64 %317, i64* %6, align 8
  store i64 %314, i64* %3, align 8
  %call2_41ca54 = tail call %struct.Memory* @sub_416580.EnvFileOpen(%struct.State* nonnull %0, i64 %314, %struct.Memory* %call2_41c992)
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -32
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, 4
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RDX.i156, align 8
  %325 = load i64, i64* %RAX.i94, align 8
  %326 = add i64 %321, 7
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %324 to i64*
  store i64 %325, i64* %327, align 8
  %328 = load i64, i64* %RAX.i94, align 8
  %329 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %330 = trunc i64 %328 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %336 = icmp eq i64 %328, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %30, align 1
  %338 = lshr i64 %328, 63
  %339 = trunc i64 %338 to i8
  store i8 %339, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v48 = select i1 %336, i64 263, i64 10
  %340 = add i64 %329, %.v48
  store i64 %340, i64* %3, align 8
  %341 = load i64, i64* %RBP.i, align 8
  br i1 %336, label %block_.L_41cb67, label %block_41ca6a

block_41ca6a:                                     ; preds = %block_.L_41ca45
  %342 = add i64 %341, -576
  %343 = add i64 %340, 7
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RDI.i589, align 8
  %346 = add i64 %341, -16
  %347 = add i64 %340, 11
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RSI.i616, align 8
  %350 = add i64 %340, -26170
  %351 = add i64 %340, 16
  %352 = load i64, i64* %6, align 8
  %353 = add i64 %352, -8
  %354 = inttoptr i64 %353 to i64*
  store i64 %351, i64* %354, align 8
  store i64 %353, i64* %6, align 8
  store i64 %350, i64* %3, align 8
  %call2_41ca75 = tail call %struct.Memory* @sub_416430.FileConcat(%struct.State* nonnull %0, i64 %350, %struct.Memory* %call2_41ca54)
  %355 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RDI.i589, align 8
  store i64 192, i64* %RSI.i616, align 8
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -592
  %358 = load i64, i64* %RAX.i94, align 8
  %359 = add i64 %355, 22
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %357 to i64*
  store i64 %358, i64* %360, align 8
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -592
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 7
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i94, align 8
  %367 = add i64 %361, -616
  %368 = load i64, i64* %RDI.i589, align 8
  %369 = add i64 %363, 14
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i64*
  store i64 %368, i64* %370, align 8
  %371 = load i64, i64* %RAX.i94, align 8
  %372 = load i64, i64* %3, align 8
  store i64 %371, i64* %RDI.i589, align 8
  %ESI.i = bitcast %union.anon* %46 to i32*
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -620
  %375 = load i32, i32* %ESI.i, align 4
  %376 = add i64 %372, 9
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %374 to i32*
  store i32 %375, i32* %377, align 4
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, -112199
  %380 = add i64 %378, 5
  %381 = load i64, i64* %6, align 8
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383, align 8
  store i64 %382, i64* %6, align 8
  store i64 %379, i64* %3, align 8
  %384 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %call2_41ca75)
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -16
  %387 = load i64, i64* %3, align 8
  %388 = add i64 %387, 4
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RDI.i589, align 8
  %391 = add i64 %385, -632
  %392 = load i64, i64* %RAX.i94, align 8
  %393 = add i64 %387, 11
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %391 to i64*
  store i64 %392, i64* %394, align 8
  %395 = load i64, i64* %3, align 8
  %396 = add i64 %395, -112215
  %397 = add i64 %395, 5
  %398 = load i64, i64* %6, align 8
  %399 = add i64 %398, -8
  %400 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %400, align 8
  store i64 %399, i64* %6, align 8
  store i64 %396, i64* %3, align 8
  %401 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %384)
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -632
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 7
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %403 to i64*
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %RAX.i94, align 8
  %409 = add i64 %408, %407
  %410 = lshr i64 %409, 63
  %411 = add i64 %409, 5
  store i64 %411, i64* %RDI.i589, align 8
  %412 = icmp ugt i64 %409, -6
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1
  %414 = trunc i64 %411 to i32
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i64 %411, %409
  %421 = lshr i64 %420, 4
  %422 = trunc i64 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %27, align 1
  %424 = icmp eq i64 %411, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %30, align 1
  %426 = lshr i64 %411, 63
  %427 = trunc i64 %426 to i8
  store i8 %427, i8* %33, align 1
  %428 = xor i64 %426, %410
  %429 = add nuw nsw i64 %428, %426
  %430 = icmp eq i64 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %39, align 1
  %432 = add i64 %402, -616
  %433 = add i64 %404, 25
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RAX.i94, align 8
  %436 = add i64 %402, -640
  %437 = add i64 %404, 32
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  store i64 %411, i64* %438, align 8
  %439 = load i64, i64* %RAX.i94, align 8
  %440 = load i64, i64* %3, align 8
  store i64 %439, i64* %RDI.i589, align 8
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -620
  %443 = add i64 %440, 9
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RSI.i616, align 8
  %447 = add i64 %441, -640
  %448 = add i64 %440, 16
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RDX.i156, align 8
  %451 = add i64 %440, 169348
  %452 = add i64 %440, 21
  %453 = load i64, i64* %6, align 8
  %454 = add i64 %453, -8
  %455 = inttoptr i64 %454 to i64*
  store i64 %452, i64* %455, align 8
  store i64 %454, i64* %6, align 8
  store i64 %451, i64* %3, align 8
  %call2_41caec = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %451, %struct.Memory* %401)
  %456 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4576e8_type* @G__0x4576e8 to i64), i64* %RSI.i616, align 8
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -568
  %459 = load i64, i64* %RAX.i94, align 8
  %460 = add i64 %456, 17
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i64*
  store i64 %459, i64* %461, align 8
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -568
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 7
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RDI.i589, align 8
  %468 = add i64 %462, -592
  %469 = add i64 %464, 14
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %RDX.i156, align 8
  %AL.i655 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i655, align 1
  %472 = add i64 %464, -111682
  %473 = add i64 %464, 21
  %474 = load i64, i64* %6, align 8
  %475 = add i64 %474, -8
  %476 = inttoptr i64 %475 to i64*
  store i64 %473, i64* %476, align 8
  store i64 %475, i64* %6, align 8
  store i64 %472, i64* %3, align 8
  %477 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %call2_41caec)
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -592
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, 7
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RDI.i589, align 8
  %EAX.i645 = bitcast %union.anon* %40 to i32*
  %484 = add i64 %478, -644
  %485 = load i32, i32* %EAX.i645, align 4
  %486 = add i64 %480, 13
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %484 to i32*
  store i32 %485, i32* %487, align 4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 176396
  %490 = add i64 %488, 5
  %491 = load i64, i64* %6, align 8
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %6, align 8
  store i64 %489, i64* %3, align 8
  %call2_41cb24 = tail call %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* nonnull %0, i64 %489, %struct.Memory* %477)
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -32
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 4
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RDX.i156, align 8
  %500 = add i64 %499, 36
  %501 = load i32, i32* %EAX.i645, align 4
  %502 = add i64 %496, 7
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %500 to i32*
  store i32 %501, i32* %503, align 4
  %504 = load i32, i32* %EAX.i645, align 4
  %505 = load i64, i64* %3, align 8
  %506 = add i32 %504, 1
  %507 = icmp ne i32 %504, -1
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = and i32 %506, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i32 %504, 16
  %515 = xor i32 %514, %506
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %27, align 1
  %519 = icmp eq i32 %506, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i32 %506, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %33, align 1
  %523 = lshr i32 %504, 31
  %524 = xor i32 %523, 1
  %525 = xor i32 %521, %523
  %526 = add nuw nsw i32 %525, %524
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %.v49 = select i1 %519, i64 9, i64 26
  %529 = add i64 %505, %.v49
  store i64 %529, i64* %3, align 8
  br i1 %519, label %block_41cb39, label %block_.L_41cb4a

block_41cb39:                                     ; preds = %block_41ca6a
  store i64 ptrtoint (%G__0x4576ef_type* @G__0x4576ef to i64), i64* %RDI.i589, align 8
  store i8 0, i8* %AL.i655, align 1
  %530 = add i64 %529, 138967
  %531 = add i64 %529, 17
  %532 = load i64, i64* %6, align 8
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %6, align 8
  store i64 %530, i64* %3, align 8
  %call2_41cb45 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %530, %struct.Memory* %call2_41cb24)
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_41cb4a

block_.L_41cb4a:                                  ; preds = %block_41ca6a, %block_41cb39
  %535 = phi i64 [ %529, %block_41ca6a ], [ %.pre23, %block_41cb39 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_41cb24, %block_41ca6a ], [ %call2_41cb45, %block_41cb39 ]
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -592
  %538 = add i64 %535, 7
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RDI.i589, align 8
  %541 = add i64 %535, -112586
  %542 = add i64 %535, 12
  %543 = load i64, i64* %6, align 8
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %6, align 8
  store i64 %541, i64* %3, align 8
  %546 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.1)
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -576
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDI.i589, align 8
  %553 = add i64 %549, -112598
  %554 = add i64 %549, 12
  %555 = load i64, i64* %6, align 8
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %6, align 8
  store i64 %553, i64* %3, align 8
  %558 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %546)
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 23
  store i64 %560, i64* %3, align 8
  br label %block_.L_41cb79

block_.L_41cb67:                                  ; preds = %block_.L_41ca45
  %561 = add i64 %341, -8
  %562 = add i64 %340, 8
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i64*
  store i64 0, i64* %563, align 8
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 1398
  store i64 %565, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cb79:                                  ; preds = %block_.L_41cb4a, %block_.L_41ca40
  %EAX.i593.pre-phi = phi i32* [ %EAX.i645, %block_.L_41cb4a ], [ %EAX.i765, %block_.L_41ca40 ]
  %storemerge = phi i64 [ %560, %block_.L_41cb4a ], [ %303, %block_.L_41ca40 ]
  %MEMORY.2 = phi %struct.Memory* [ %558, %block_.L_41cb4a ], [ %MEMORY.0, %block_.L_41ca40 ]
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -568
  %568 = add i64 %storemerge, 7
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RDI.i589, align 8
  %571 = add i64 %566, -32
  %572 = add i64 %storemerge, 11
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  %574 = load i64, i64* %573, align 8
  %575 = add i64 %574, 8
  store i64 %575, i64* %RAX.i94, align 8
  %576 = icmp ugt i64 %574, -9
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %14, align 1
  %578 = trunc i64 %575 to i32
  %579 = and i32 %578, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i64 %575, %574
  %585 = lshr i64 %584, 4
  %586 = trunc i64 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %27, align 1
  %588 = icmp eq i64 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %30, align 1
  %590 = lshr i64 %575, 63
  %591 = trunc i64 %590 to i8
  store i8 %591, i8* %33, align 1
  %592 = lshr i64 %574, 63
  %593 = xor i64 %590, %592
  %594 = add nuw nsw i64 %593, %590
  %595 = icmp eq i64 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %39, align 1
  store i64 %575, i64* %RSI.i616, align 8
  %597 = add i64 %storemerge, 171271
  %598 = add i64 %storemerge, 23
  %599 = load i64, i64* %6, align 8
  %600 = add i64 %599, -8
  %601 = inttoptr i64 %600 to i64*
  store i64 %598, i64* %601, align 8
  store i64 %600, i64* %6, align 8
  store i64 %597, i64* %3, align 8
  %call2_41cb8b = tail call %struct.Memory* @sub_446880.SSIOpen(%struct.State* nonnull %0, i64 %597, %struct.Memory* %MEMORY.2)
  %602 = load i64, i64* %RBP.i, align 8
  %603 = add i64 %602, -568
  %604 = load i64, i64* %3, align 8
  %605 = add i64 %604, 7
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %603 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %RDI.i589, align 8
  %608 = add i64 %602, -648
  %609 = load i32, i32* %EAX.i593.pre-phi, align 4
  %610 = add i64 %604, 13
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %608 to i32*
  store i32 %609, i32* %611, align 4
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, -112669
  %614 = add i64 %612, 5
  %615 = load i64, i64* %6, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %617, align 8
  store i64 %616, i64* %6, align 8
  store i64 %613, i64* %3, align 8
  %618 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_41cb8b)
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -32
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 4
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %620 to i64*
  %624 = load i64, i64* %623, align 8
  store i64 %624, i64* %RSI.i616, align 8
  %625 = add i64 %621, 7
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RDI.i589, align 8
  %628 = add i64 %621, 11
  store i64 %628, i64* %3, align 8
  %629 = load i64, i64* %623, align 8
  store i64 %629, i64* %RSI.i616, align 8
  %630 = add i64 %629, 36
  %631 = add i64 %621, 14
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RSI.i616, align 8
  %635 = add i64 %621, 18
  store i64 %635, i64* %3, align 8
  %636 = load i64, i64* %623, align 8
  %637 = add i64 %636, 40
  store i64 %637, i64* %RCX.i125, align 8
  %638 = icmp ugt i64 %636, -41
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = trunc i64 %637 to i32
  %641 = and i32 %640, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %21, align 1
  %646 = xor i64 %637, %636
  %647 = lshr i64 %646, 4
  %648 = trunc i64 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %27, align 1
  %650 = icmp eq i64 %637, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %30, align 1
  %652 = lshr i64 %637, 63
  %653 = trunc i64 %652 to i8
  store i8 %653, i8* %33, align 1
  %654 = lshr i64 %636, 63
  %655 = xor i64 %652, %654
  %656 = add nuw nsw i64 %655, %652
  %657 = icmp eq i64 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %39, align 1
  store i64 %637, i64* %RDX.i156, align 8
  %659 = add i64 %621, 177470
  %660 = add i64 %621, 30
  %661 = load i64, i64* %6, align 8
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %660, i64* %663, align 8
  store i64 %662, i64* %6, align 8
  store i64 %659, i64* %3, align 8
  %call2_41cbbb = tail call %struct.Memory* @sub_4480e0.SSIGetFilePosition(%struct.State* nonnull %0, i64 %659, %struct.Memory* %618)
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -580
  %666 = load i32, i32* %EAX.i593.pre-phi, align 4
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 6
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %665 to i32*
  store i32 %666, i32* %669, align 4
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -580
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 7
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674, align 4
  store i8 0, i8* %14, align 1
  %676 = and i32 %675, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %681 = icmp eq i32 %675, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %30, align 1
  %683 = lshr i32 %675, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v39 = select i1 %681, i64 30, i64 13
  %685 = add i64 %672, %.v39
  store i64 %685, i64* %3, align 8
  br i1 %681, label %block_.L_41cbe4, label %block_41cbd3

block_41cbd3:                                     ; preds = %block_.L_41cb79
  store i64 ptrtoint (%G__0x457709_type* @G__0x457709 to i64), i64* %RDI.i589, align 8
  %AL.i559 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i559, align 1
  %686 = add i64 %685, 138813
  %687 = add i64 %685, 17
  %688 = load i64, i64* %6, align 8
  %689 = add i64 %688, -8
  %690 = inttoptr i64 %689 to i64*
  store i64 %687, i64* %690, align 8
  store i64 %689, i64* %6, align 8
  store i64 %686, i64* %3, align 8
  %call2_41cbdf = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %686, %struct.Memory* %call2_41cbbb)
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41cbe4

block_.L_41cbe4:                                  ; preds = %block_41cbd3, %block_.L_41cb79
  %691 = phi i64 [ %670, %block_.L_41cb79 ], [ %.pre25, %block_41cbd3 ]
  %692 = phi i64 [ %685, %block_.L_41cb79 ], [ %.pre24, %block_41cbd3 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_41cbbb, %block_.L_41cb79 ], [ %call2_41cbdf, %block_41cbd3 ]
  store i64 4, i64* %RSI.i616, align 8
  store i64 1, i64* %RAX.i94, align 8
  store i64 1, i64* %RDX.i156, align 8
  %693 = add i64 %691, -36
  store i64 %693, i64* %RCX.i125, align 8
  %694 = add i64 %691, -32
  %695 = add i64 %692, 22
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RDI.i589, align 8
  %698 = add i64 %692, 25
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  %701 = add i64 %691, -656
  %702 = add i64 %692, 32
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  store i64 %700, i64* %703, align 8
  %704 = load i64, i64* %RCX.i125, align 8
  %705 = load i64, i64* %3, align 8
  store i64 %704, i64* %RDI.i589, align 8
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -656
  %708 = add i64 %705, 10
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RCX.i125, align 8
  %711 = add i64 %705, -112628
  %712 = add i64 %705, 15
  %713 = load i64, i64* %6, align 8
  %714 = add i64 %713, -8
  %715 = inttoptr i64 %714 to i64*
  store i64 %712, i64* %715, align 8
  store i64 %714, i64* %6, align 8
  store i64 %711, i64* %3, align 8
  %call2_41cc0e = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %711, %struct.Memory* %MEMORY.3)
  %716 = load i64, i64* %RAX.i94, align 8
  %717 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %718 = trunc i64 %716 to i32
  %719 = and i32 %718, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %724 = icmp eq i64 %716, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %30, align 1
  %726 = lshr i64 %716, 63
  %727 = trunc i64 %726 to i8
  store i8 %727, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v40 = select i1 %724, i64 10, i64 32
  %728 = add i64 %717, %.v40
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -32
  %731 = add i64 %728, 4
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i64*
  %733 = load i64, i64* %732, align 8
  br i1 %724, label %block_41cc1d, label %block_.L_41cc33

block_41cc1d:                                     ; preds = %block_.L_41cbe4
  store i64 %733, i64* %RDI.i589, align 8
  %734 = add i64 %728, 1251
  %735 = add i64 %728, 9
  %736 = load i64, i64* %6, align 8
  %737 = add i64 %736, -8
  %738 = inttoptr i64 %737 to i64*
  store i64 %735, i64* %738, align 8
  store i64 %737, i64* %6, align 8
  store i64 %734, i64* %3, align 8
  %call2_41cc21 = tail call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* nonnull %0, i64 %734, %struct.Memory* %call2_41cc0e)
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -8
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 8
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  store i64 0, i64* %743, align 8
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 1207
  store i64 %745, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cc33:                                  ; preds = %block_.L_41cbe4
  store i64 %733, i64* %RAX.i94, align 8
  %746 = add i64 %728, 7
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %733 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RDI.i589, align 8
  %749 = add i64 %728, -112531
  %750 = add i64 %728, 12
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_41cc3a = tail call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* nonnull %0, i64 %749, %struct.Memory* %call2_41cc0e)
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -36
  %756 = load i64, i64* %3, align 8
  %757 = add i64 %756, 3
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %755 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RCX.i125, align 8
  %761 = load i32, i32* bitcast (%G_0x661538_type* @G_0x661538 to i32*), align 8
  %762 = sub i32 %759, %761
  %763 = icmp ult i32 %759, %761
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %761, %759
  %771 = xor i32 %770, %762
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %27, align 1
  %775 = icmp eq i32 %762, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %30, align 1
  %777 = lshr i32 %762, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %33, align 1
  %779 = lshr i32 %759, 31
  %780 = lshr i32 %761, 31
  %781 = xor i32 %780, %779
  %782 = xor i32 %777, %779
  %783 = add nuw nsw i32 %782, %781
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %39, align 1
  %.v35 = select i1 %775, i64 16, i64 58
  %786 = add i64 %756, %.v35
  store i64 %786, i64* %3, align 8
  br i1 %775, label %block_41cc4f, label %block_.L_41cc79

block_41cc4f:                                     ; preds = %block_.L_41cc33
  store i64 ptrtoint (%G__0x41d160_type* @G__0x41d160 to i64), i64* %RAX.i94, align 8
  %787 = add i64 %754, -32
  %788 = add i64 %786, 14
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RCX.i125, align 8
  %791 = add i64 %790, 16
  %792 = add i64 %786, 18
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  store i64 ptrtoint (%G__0x41d160_type* @G__0x41d160 to i64), i64* %793, align 8
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -32
  %796 = load i64, i64* %3, align 8
  %797 = add i64 %796, 4
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RAX.i94, align 8
  %800 = add i64 %799, 24
  %801 = add i64 %796, 11
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  store i32 1, i32* %802, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -32
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 4
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RAX.i94, align 8
  %809 = add i64 %803, -8
  %810 = add i64 %805, 8
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  store i64 %808, i64* %811, align 8
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 1137
  store i64 %813, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cc79:                                  ; preds = %block_.L_41cc33
  %814 = add i64 %786, 3
  store i64 %814, i64* %3, align 8
  %815 = load i32, i32* %758, align 4
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i94, align 8
  %817 = load i32, i32* bitcast (%G_0x66153c_type* @G_0x66153c to i32*), align 8
  %818 = sub i32 %815, %817
  %819 = icmp ult i32 %815, %817
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %14, align 1
  %821 = and i32 %818, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i32 %817, %815
  %827 = xor i32 %826, %818
  %828 = lshr i32 %827, 4
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %27, align 1
  %831 = icmp eq i32 %818, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %30, align 1
  %833 = lshr i32 %818, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %33, align 1
  %835 = lshr i32 %815, 31
  %836 = lshr i32 %817, 31
  %837 = xor i32 %836, %835
  %838 = xor i32 %833, %835
  %839 = add nuw nsw i32 %838, %837
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %39, align 1
  %.v34 = select i1 %831, i64 16, i64 69
  %842 = add i64 %786, %.v34
  store i64 %842, i64* %3, align 8
  br i1 %831, label %block_41cc89, label %block_.L_41ccbe

block_41cc89:                                     ; preds = %block_.L_41cc79
  store i64 ptrtoint (%G__0x41d160_type* @G__0x41d160 to i64), i64* %RAX.i94, align 8
  %843 = add i64 %754, -32
  %844 = add i64 %842, 14
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %RCX.i125, align 8
  %847 = add i64 %846, 16
  %848 = add i64 %842, 18
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i64*
  store i64 ptrtoint (%G__0x41d160_type* @G__0x41d160 to i64), i64* %849, align 8
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -32
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, 4
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %851 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %RAX.i94, align 8
  %856 = add i64 %855, 24
  %857 = add i64 %852, 11
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  store i32 1, i32* %858, align 4
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -32
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, 4
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %860 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RAX.i94, align 8
  %865 = add i64 %864, 28
  %866 = add i64 %861, 11
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  store i32 1, i32* %867, align 4
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -32
  %870 = load i64, i64* %3, align 8
  %871 = add i64 %870, 4
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %869 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %RAX.i94, align 8
  %874 = add i64 %868, -8
  %875 = add i64 %870, 8
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  store i64 %873, i64* %876, align 8
  %877 = load i64, i64* %3, align 8
  %878 = add i64 %877, 1068
  store i64 %878, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41ccbe:                                  ; preds = %block_.L_41cc79
  %879 = add i64 %842, 3
  store i64 %879, i64* %3, align 8
  %880 = load i32, i32* %758, align 4
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX.i94, align 8
  %882 = load i32, i32* bitcast (%G_0x661540_type* @G_0x661540 to i32*), align 8
  %883 = sub i32 %880, %882
  %884 = icmp ult i32 %880, %882
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %14, align 1
  %886 = and i32 %883, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %21, align 1
  %891 = xor i32 %882, %880
  %892 = xor i32 %891, %883
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %27, align 1
  %896 = icmp eq i32 %883, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %30, align 1
  %898 = lshr i32 %883, 31
  %899 = trunc i32 %898 to i8
  store i8 %899, i8* %33, align 1
  %900 = lshr i32 %880, 31
  %901 = lshr i32 %882, 31
  %902 = xor i32 %901, %900
  %903 = xor i32 %898, %900
  %904 = add nuw nsw i32 %903, %902
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %39, align 1
  %.v33 = select i1 %896, i64 16, i64 58
  %907 = add i64 %842, %.v33
  store i64 %907, i64* %3, align 8
  br i1 %896, label %block_41ccce, label %block_.L_41ccf8

block_41ccce:                                     ; preds = %block_.L_41ccbe
  store i64 ptrtoint (%G__0x41e0a0_type* @G__0x41e0a0 to i64), i64* %RAX.i94, align 8
  %908 = add i64 %754, -32
  %909 = add i64 %907, 14
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i125, align 8
  %912 = add i64 %911, 16
  %913 = add i64 %907, 18
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i64*
  store i64 ptrtoint (%G__0x41e0a0_type* @G__0x41e0a0 to i64), i64* %914, align 8
  %915 = load i64, i64* %RBP.i, align 8
  %916 = add i64 %915, -32
  %917 = load i64, i64* %3, align 8
  %918 = add i64 %917, 4
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RAX.i94, align 8
  %921 = add i64 %920, 24
  %922 = add i64 %917, 11
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  store i32 1, i32* %923, align 4
  %924 = load i64, i64* %RBP.i, align 8
  %925 = add i64 %924, -32
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, 4
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %925 to i64*
  %929 = load i64, i64* %928, align 8
  store i64 %929, i64* %RAX.i94, align 8
  %930 = add i64 %924, -8
  %931 = add i64 %926, 8
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i64*
  store i64 %929, i64* %932, align 8
  %933 = load i64, i64* %3, align 8
  %934 = add i64 %933, 1010
  store i64 %934, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41ccf8:                                  ; preds = %block_.L_41ccbe
  %935 = add i64 %907, 3
  store i64 %935, i64* %3, align 8
  %936 = load i32, i32* %758, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i94, align 8
  %938 = load i32, i32* bitcast (%G_0x661544_type* @G_0x661544 to i32*), align 8
  %939 = sub i32 %936, %938
  %940 = icmp ult i32 %936, %938
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %14, align 1
  %942 = and i32 %939, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %21, align 1
  %947 = xor i32 %938, %936
  %948 = xor i32 %947, %939
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %27, align 1
  %952 = icmp eq i32 %939, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %30, align 1
  %954 = lshr i32 %939, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %33, align 1
  %956 = lshr i32 %936, 31
  %957 = lshr i32 %938, 31
  %958 = xor i32 %957, %956
  %959 = xor i32 %954, %956
  %960 = add nuw nsw i32 %959, %958
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %39, align 1
  %.v32 = select i1 %952, i64 16, i64 69
  %963 = add i64 %907, %.v32
  store i64 %963, i64* %3, align 8
  br i1 %952, label %block_41cd08, label %block_.L_41cd3d

block_41cd08:                                     ; preds = %block_.L_41ccf8
  store i64 ptrtoint (%G__0x41e0a0_type* @G__0x41e0a0 to i64), i64* %RAX.i94, align 8
  %964 = add i64 %754, -32
  %965 = add i64 %963, 14
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RCX.i125, align 8
  %968 = add i64 %967, 16
  %969 = add i64 %963, 18
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i64*
  store i64 ptrtoint (%G__0x41e0a0_type* @G__0x41e0a0 to i64), i64* %970, align 8
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -32
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, 4
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RAX.i94, align 8
  %977 = add i64 %976, 24
  %978 = add i64 %973, 11
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  store i32 1, i32* %979, align 4
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -32
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 4
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RAX.i94, align 8
  %986 = add i64 %985, 28
  %987 = add i64 %982, 11
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  store i32 1, i32* %988, align 4
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -32
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 4
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RAX.i94, align 8
  %995 = add i64 %989, -8
  %996 = add i64 %991, 8
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  store i64 %994, i64* %997, align 8
  %998 = load i64, i64* %3, align 8
  %999 = add i64 %998, 941
  store i64 %999, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cd3d:                                  ; preds = %block_.L_41ccf8
  %1000 = add i64 %963, 3
  store i64 %1000, i64* %3, align 8
  %1001 = load i32, i32* %758, align 4
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RAX.i94, align 8
  %1003 = load i32, i32* bitcast (%G_0x661548_type* @G_0x661548 to i32*), align 8
  %1004 = sub i32 %1001, %1003
  %1005 = icmp ult i32 %1001, %1003
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %14, align 1
  %1007 = and i32 %1004, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %21, align 1
  %1012 = xor i32 %1003, %1001
  %1013 = xor i32 %1012, %1004
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %27, align 1
  %1017 = icmp eq i32 %1004, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %30, align 1
  %1019 = lshr i32 %1004, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %33, align 1
  %1021 = lshr i32 %1001, 31
  %1022 = lshr i32 %1003, 31
  %1023 = xor i32 %1022, %1021
  %1024 = xor i32 %1019, %1021
  %1025 = add nuw nsw i32 %1024, %1023
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %39, align 1
  %.v31 = select i1 %1017, i64 16, i64 58
  %1028 = add i64 %963, %.v31
  store i64 %1028, i64* %3, align 8
  br i1 %1017, label %block_41cd4d, label %block_.L_41cd77

block_41cd4d:                                     ; preds = %block_.L_41cd3d
  store i64 ptrtoint (%G__0x41e1b0_type* @G__0x41e1b0 to i64), i64* %RAX.i94, align 8
  %1029 = add i64 %754, -32
  %1030 = add i64 %1028, 14
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RCX.i125, align 8
  %1033 = add i64 %1032, 16
  %1034 = add i64 %1028, 18
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i64*
  store i64 ptrtoint (%G__0x41e1b0_type* @G__0x41e1b0 to i64), i64* %1035, align 8
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -32
  %1038 = load i64, i64* %3, align 8
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1037 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RAX.i94, align 8
  %1042 = add i64 %1041, 24
  %1043 = add i64 %1038, 11
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  store i32 1, i32* %1044, align 4
  %1045 = load i64, i64* %RBP.i, align 8
  %1046 = add i64 %1045, -32
  %1047 = load i64, i64* %3, align 8
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1046 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %RAX.i94, align 8
  %1051 = add i64 %1045, -8
  %1052 = add i64 %1047, 8
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i64*
  store i64 %1050, i64* %1053, align 8
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, 883
  store i64 %1055, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cd77:                                  ; preds = %block_.L_41cd3d
  %1056 = add i64 %1028, 3
  store i64 %1056, i64* %3, align 8
  %1057 = load i32, i32* %758, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i94, align 8
  %1059 = load i32, i32* bitcast (%G_0x66154c_type* @G_0x66154c to i32*), align 8
  %1060 = sub i32 %1057, %1059
  %1061 = icmp ult i32 %1057, %1059
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1060, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1059, %1057
  %1069 = xor i32 %1068, %1060
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %27, align 1
  %1073 = icmp eq i32 %1060, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %30, align 1
  %1075 = lshr i32 %1060, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %33, align 1
  %1077 = lshr i32 %1057, 31
  %1078 = lshr i32 %1059, 31
  %1079 = xor i32 %1078, %1077
  %1080 = xor i32 %1075, %1077
  %1081 = add nuw nsw i32 %1080, %1079
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %39, align 1
  %.v30 = select i1 %1073, i64 16, i64 69
  %1084 = add i64 %1028, %.v30
  store i64 %1084, i64* %3, align 8
  br i1 %1073, label %block_41cd87, label %block_.L_41cdbc

block_41cd87:                                     ; preds = %block_.L_41cd77
  store i64 ptrtoint (%G__0x41e1b0_type* @G__0x41e1b0 to i64), i64* %RAX.i94, align 8
  %1085 = add i64 %754, -32
  %1086 = add i64 %1084, 14
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RCX.i125, align 8
  %1089 = add i64 %1088, 16
  %1090 = add i64 %1084, 18
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  store i64 ptrtoint (%G__0x41e1b0_type* @G__0x41e1b0 to i64), i64* %1091, align 8
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -32
  %1094 = load i64, i64* %3, align 8
  %1095 = add i64 %1094, 4
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1093 to i64*
  %1097 = load i64, i64* %1096, align 8
  store i64 %1097, i64* %RAX.i94, align 8
  %1098 = add i64 %1097, 24
  %1099 = add i64 %1094, 11
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  store i32 1, i32* %1100, align 4
  %1101 = load i64, i64* %RBP.i, align 8
  %1102 = add i64 %1101, -32
  %1103 = load i64, i64* %3, align 8
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RAX.i94, align 8
  %1107 = add i64 %1106, 28
  %1108 = add i64 %1103, 11
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  store i32 1, i32* %1109, align 4
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -32
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RAX.i94, align 8
  %1116 = add i64 %1110, -8
  %1117 = add i64 %1112, 8
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  store i64 %1115, i64* %1118, align 8
  %1119 = load i64, i64* %3, align 8
  %1120 = add i64 %1119, 814
  store i64 %1120, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cdbc:                                  ; preds = %block_.L_41cd77
  %1121 = add i64 %1084, 3
  store i64 %1121, i64* %3, align 8
  %1122 = load i32, i32* %758, align 4
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i94, align 8
  %1124 = load i32, i32* bitcast (%G_0x661550_type* @G_0x661550 to i32*), align 8
  %1125 = sub i32 %1122, %1124
  %1126 = icmp ult i32 %1122, %1124
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %14, align 1
  %1128 = and i32 %1125, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %21, align 1
  %1133 = xor i32 %1124, %1122
  %1134 = xor i32 %1133, %1125
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %27, align 1
  %1138 = icmp eq i32 %1125, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %30, align 1
  %1140 = lshr i32 %1125, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %33, align 1
  %1142 = lshr i32 %1122, 31
  %1143 = lshr i32 %1124, 31
  %1144 = xor i32 %1143, %1142
  %1145 = xor i32 %1140, %1142
  %1146 = add nuw nsw i32 %1145, %1144
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %39, align 1
  %.v29 = select i1 %1138, i64 16, i64 58
  %1149 = add i64 %1084, %.v29
  store i64 %1149, i64* %3, align 8
  br i1 %1138, label %block_41cdcc, label %block_.L_41cdf6

block_41cdcc:                                     ; preds = %block_.L_41cdbc
  store i64 ptrtoint (%G__0x41e2c0_type* @G__0x41e2c0 to i64), i64* %RAX.i94, align 8
  %1150 = add i64 %754, -32
  %1151 = add i64 %1149, 14
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RCX.i125, align 8
  %1154 = add i64 %1153, 16
  %1155 = add i64 %1149, 18
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  store i64 ptrtoint (%G__0x41e2c0_type* @G__0x41e2c0 to i64), i64* %1156, align 8
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -32
  %1159 = load i64, i64* %3, align 8
  %1160 = add i64 %1159, 4
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1158 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RAX.i94, align 8
  %1163 = add i64 %1162, 24
  %1164 = add i64 %1159, 11
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  store i32 1, i32* %1165, align 4
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -32
  %1168 = load i64, i64* %3, align 8
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1167 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RAX.i94, align 8
  %1172 = add i64 %1166, -8
  %1173 = add i64 %1168, 8
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i64*
  store i64 %1171, i64* %1174, align 8
  %1175 = load i64, i64* %3, align 8
  %1176 = add i64 %1175, 756
  store i64 %1176, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cdf6:                                  ; preds = %block_.L_41cdbc
  %1177 = add i64 %1149, 3
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %758, align 4
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i94, align 8
  %1180 = load i32, i32* bitcast (%G_0x661554_type* @G_0x661554 to i32*), align 8
  %1181 = sub i32 %1178, %1180
  %1182 = icmp ult i32 %1178, %1180
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %14, align 1
  %1184 = and i32 %1181, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %21, align 1
  %1189 = xor i32 %1180, %1178
  %1190 = xor i32 %1189, %1181
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  store i8 %1193, i8* %27, align 1
  %1194 = icmp eq i32 %1181, 0
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %30, align 1
  %1196 = lshr i32 %1181, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %33, align 1
  %1198 = lshr i32 %1178, 31
  %1199 = lshr i32 %1180, 31
  %1200 = xor i32 %1199, %1198
  %1201 = xor i32 %1196, %1198
  %1202 = add nuw nsw i32 %1201, %1200
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %39, align 1
  %.v28 = select i1 %1194, i64 16, i64 69
  %1205 = add i64 %1149, %.v28
  store i64 %1205, i64* %3, align 8
  br i1 %1194, label %block_41ce06, label %block_.L_41ce3b

block_41ce06:                                     ; preds = %block_.L_41cdf6
  store i64 ptrtoint (%G__0x41e2c0_type* @G__0x41e2c0 to i64), i64* %RAX.i94, align 8
  %1206 = add i64 %754, -32
  %1207 = add i64 %1205, 14
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RCX.i125, align 8
  %1210 = add i64 %1209, 16
  %1211 = add i64 %1205, 18
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  store i64 ptrtoint (%G__0x41e2c0_type* @G__0x41e2c0 to i64), i64* %1212, align 8
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -32
  %1215 = load i64, i64* %3, align 8
  %1216 = add i64 %1215, 4
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RAX.i94, align 8
  %1219 = add i64 %1218, 24
  %1220 = add i64 %1215, 11
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 1, i32* %1221, align 4
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -32
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, 4
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1223 to i64*
  %1227 = load i64, i64* %1226, align 8
  store i64 %1227, i64* %RAX.i94, align 8
  %1228 = add i64 %1227, 28
  %1229 = add i64 %1224, 11
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i32*
  store i32 1, i32* %1230, align 4
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -32
  %1233 = load i64, i64* %3, align 8
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1232 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %RAX.i94, align 8
  %1237 = add i64 %1231, -8
  %1238 = add i64 %1233, 8
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i64*
  store i64 %1236, i64* %1239, align 8
  %1240 = load i64, i64* %3, align 8
  %1241 = add i64 %1240, 687
  store i64 %1241, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41ce3b:                                  ; preds = %block_.L_41cdf6
  %1242 = add i64 %1205, 3
  store i64 %1242, i64* %3, align 8
  %1243 = load i32, i32* %758, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RAX.i94, align 8
  %1245 = load i32, i32* bitcast (%G_0x661558_type* @G_0x661558 to i32*), align 8
  %1246 = sub i32 %1243, %1245
  %1247 = icmp ult i32 %1243, %1245
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1246, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1245, %1243
  %1255 = xor i32 %1254, %1246
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %27, align 1
  %1259 = icmp eq i32 %1246, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %30, align 1
  %1261 = lshr i32 %1246, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %33, align 1
  %1263 = lshr i32 %1243, 31
  %1264 = lshr i32 %1245, 31
  %1265 = xor i32 %1264, %1263
  %1266 = xor i32 %1261, %1263
  %1267 = add nuw nsw i32 %1266, %1265
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %39, align 1
  %.v27 = select i1 %1259, i64 16, i64 58
  %1270 = add i64 %1205, %.v27
  store i64 %1270, i64* %3, align 8
  br i1 %1259, label %block_41ce4b, label %block_.L_41ce75

block_41ce4b:                                     ; preds = %block_.L_41ce3b
  store i64 ptrtoint (%G__0x41e3d0_type* @G__0x41e3d0 to i64), i64* %RAX.i94, align 8
  %1271 = add i64 %754, -32
  %1272 = add i64 %1270, 14
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RCX.i125, align 8
  %1275 = add i64 %1274, 16
  %1276 = add i64 %1270, 18
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i64*
  store i64 ptrtoint (%G__0x41e3d0_type* @G__0x41e3d0 to i64), i64* %1277, align 8
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -32
  %1280 = load i64, i64* %3, align 8
  %1281 = add i64 %1280, 4
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1279 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RAX.i94, align 8
  %1284 = add i64 %1283, 24
  %1285 = add i64 %1280, 11
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  store i32 1, i32* %1286, align 4
  %1287 = load i64, i64* %RBP.i, align 8
  %1288 = add i64 %1287, -32
  %1289 = load i64, i64* %3, align 8
  %1290 = add i64 %1289, 4
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1288 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX.i94, align 8
  %1293 = add i64 %1287, -8
  %1294 = add i64 %1289, 8
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i64*
  store i64 %1292, i64* %1295, align 8
  %1296 = load i64, i64* %3, align 8
  %1297 = add i64 %1296, 629
  store i64 %1297, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41ce75:                                  ; preds = %block_.L_41ce3b
  %1298 = add i64 %1270, 3
  store i64 %1298, i64* %3, align 8
  %1299 = load i32, i32* %758, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX.i94, align 8
  %1301 = load i32, i32* bitcast (%G_0x66155c_type* @G_0x66155c to i32*), align 8
  %1302 = sub i32 %1299, %1301
  %1303 = icmp ult i32 %1299, %1301
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %14, align 1
  %1305 = and i32 %1302, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %21, align 1
  %1310 = xor i32 %1301, %1299
  %1311 = xor i32 %1310, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %27, align 1
  %1315 = icmp eq i32 %1302, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %30, align 1
  %1317 = lshr i32 %1302, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %33, align 1
  %1319 = lshr i32 %1299, 31
  %1320 = lshr i32 %1301, 31
  %1321 = xor i32 %1320, %1319
  %1322 = xor i32 %1317, %1319
  %1323 = add nuw nsw i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %.v = select i1 %1315, i64 16, i64 69
  %1326 = add i64 %1270, %.v
  store i64 %1326, i64* %3, align 8
  br i1 %1315, label %block_41ce85, label %block_.L_41ceba

block_41ce85:                                     ; preds = %block_.L_41ce75
  store i64 ptrtoint (%G__0x41e3d0_type* @G__0x41e3d0 to i64), i64* %RAX.i94, align 8
  %1327 = add i64 %754, -32
  %1328 = add i64 %1326, 14
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RCX.i125, align 8
  %1331 = add i64 %1330, 16
  %1332 = add i64 %1326, 18
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  store i64 ptrtoint (%G__0x41e3d0_type* @G__0x41e3d0 to i64), i64* %1333, align 8
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -32
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1335 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RAX.i94, align 8
  %1340 = add i64 %1339, 24
  %1341 = add i64 %1336, 11
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  store i32 1, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -32
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 4
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i64*
  %1348 = load i64, i64* %1347, align 8
  store i64 %1348, i64* %RAX.i94, align 8
  %1349 = add i64 %1348, 28
  %1350 = add i64 %1345, 11
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  store i32 1, i32* %1351, align 4
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -32
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, 4
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1353 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RAX.i94, align 8
  %1358 = add i64 %1352, -8
  %1359 = add i64 %1354, 8
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  store i64 %1357, i64* %1360, align 8
  %1361 = load i64, i64* %3, align 8
  %1362 = add i64 %1361, 560
  store i64 %1362, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41ceba:                                  ; preds = %block_.L_41ce75
  %1363 = add i64 %1326, 48
  store i64 %1363, i64* %3, align 8
  %1364 = load i32, i32* %758, align 4
  %1365 = and i32 %1364, -2147483648
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i94, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1367 = icmp eq i32 %1365, 0
  %.lobit36 = lshr exact i32 %1365, 31
  %1368 = trunc i32 %.lobit36 to i8
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %30, align 1
  %1370 = lshr exact i32 %1365, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v41 = select i1 %1367, i64 105, i64 62
  %1372 = add i64 %1326, %.v41
  store i64 %1372, i64* %3, align 8
  br i1 %1367, label %block_.L_41cf23, label %block_41cef8

block_41cef8:                                     ; preds = %block_.L_41ceba
  store i64 ptrtoint (%G__0x457725_type* @G__0x457725 to i64), i64* %RDI.i589, align 8
  %1373 = add i64 %754, -16
  %1374 = add i64 %1372, 14
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  store i64 %1376, i64* %RSI.i616, align 8
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i, align 1
  %1377 = add i64 %1372, 138472
  %1378 = add i64 %1372, 21
  %1379 = load i64, i64* %6, align 8
  %1380 = add i64 %1379, -8
  %1381 = inttoptr i64 %1380 to i64*
  store i64 %1378, i64* %1381, align 8
  store i64 %1380, i64* %6, align 8
  store i64 %1377, i64* %3, align 8
  %call2_41cf08 = tail call %struct.Memory* @sub_43ebe0.Warn(%struct.State* nonnull %0, i64 %1377, %struct.Memory* %call2_41cc3a)
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -32
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %RDI.i589, align 8
  %1388 = add i64 %1384, 499
  %1389 = add i64 %1384, 9
  %1390 = load i64, i64* %6, align 8
  %1391 = add i64 %1390, -8
  %1392 = inttoptr i64 %1391 to i64*
  store i64 %1389, i64* %1392, align 8
  store i64 %1391, i64* %6, align 8
  store i64 %1388, i64* %3, align 8
  %call2_41cf11 = tail call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* nonnull %0, i64 %1388, %struct.Memory* %call2_41cf08)
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -8
  %1395 = load i64, i64* %3, align 8
  %1396 = add i64 %1395, 8
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1394 to i64*
  store i64 0, i64* %1397, align 8
  %1398 = load i64, i64* %3, align 8
  %1399 = add i64 %1398, 455
  store i64 %1399, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cf23:                                  ; preds = %block_.L_41ceba
  store i64 512, i64* %RSI.i616, align 8
  %1400 = add i64 %754, -560
  store i64 %1400, i64* %RDI.i589, align 8
  %1401 = add i64 %754, -32
  %1402 = add i64 %1372, 16
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i64 %1404, i64* %RAX.i94, align 8
  %1405 = add i64 %1372, 19
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RDX.i156, align 8
  %1408 = add i64 %1372, -113123
  %1409 = add i64 %1372, 24
  %1410 = load i64, i64* %6, align 8
  %1411 = add i64 %1410, -8
  %1412 = inttoptr i64 %1411 to i64*
  store i64 %1409, i64* %1412, align 8
  store i64 %1411, i64* %6, align 8
  store i64 %1408, i64* %3, align 8
  %call2_41cf36 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %1408, %struct.Memory* %call2_41cc3a)
  %1413 = load i64, i64* %RAX.i94, align 8
  %1414 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1415 = trunc i64 %1413 to i32
  %1416 = and i32 %1415, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1421 = icmp eq i64 %1413, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %30, align 1
  %1423 = lshr i64 %1413, 63
  %1424 = trunc i64 %1423 to i8
  store i8 %1424, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v42 = select i1 %1421, i64 10, i64 32
  %1425 = add i64 %1414, %.v42
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -32
  %1428 = add i64 %1425, 4
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  br i1 %1421, label %block_41cf45, label %block_.L_41cf5b

block_41cf45:                                     ; preds = %block_.L_41cf23
  store i64 %1430, i64* %RDI.i589, align 8
  %1431 = add i64 %1425, 443
  %1432 = add i64 %1425, 9
  %1433 = load i64, i64* %6, align 8
  %1434 = add i64 %1433, -8
  %1435 = inttoptr i64 %1434 to i64*
  store i64 %1432, i64* %1435, align 8
  store i64 %1434, i64* %6, align 8
  store i64 %1431, i64* %3, align 8
  %call2_41cf49 = tail call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* nonnull %0, i64 %1431, %struct.Memory* %call2_41cf36)
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -8
  %1438 = load i64, i64* %3, align 8
  %1439 = add i64 %1438, 8
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1437 to i64*
  store i64 0, i64* %1440, align 8
  %1441 = load i64, i64* %3, align 8
  %1442 = add i64 %1441, 399
  store i64 %1442, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cf5b:                                  ; preds = %block_.L_41cf23
  store i64 %1430, i64* %RAX.i94, align 8
  %1443 = add i64 %1425, 7
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1430 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %RDI.i589, align 8
  %1446 = add i64 %1425, -113339
  %1447 = add i64 %1425, 12
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %call2_41cf62 = tail call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* nonnull %0, i64 %1446, %struct.Memory* %call2_41cf36)
  %1451 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4577c5_type* @G__0x4577c5 to i64), i64* %RDI.i589, align 8
  store i64 8, i64* %RCX.i125, align 8
  store i64 8, i64* %RDX.i156, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -560
  store i64 %1453, i64* %RSI.i616, align 8
  %1454 = add i64 %1451, -113559
  %1455 = add i64 %1451, 29
  %1456 = load i64, i64* %6, align 8
  %1457 = add i64 %1456, -8
  %1458 = inttoptr i64 %1457 to i64*
  store i64 %1455, i64* %1458, align 8
  store i64 %1457, i64* %6, align 8
  store i64 %1454, i64* %3, align 8
  %1459 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_41cf62)
  %1460 = load i32, i32* %EAX.i593.pre-phi, align 4
  %1461 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1462 = and i32 %1460, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1467 = icmp eq i32 %1460, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %30, align 1
  %1469 = lshr i32 %1460, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v43 = select i1 %1467, i64 9, i64 40
  %1471 = add i64 %1461, %.v43
  %1472 = add i64 %1471, 10
  store i64 %1472, i64* %3, align 8
  br i1 %1467, label %block_41cf8d, label %block_.L_41cfac

block_41cf8d:                                     ; preds = %block_.L_41cf5b
  store i64 ptrtoint (%G__0x41e4e0_type* @G__0x41e4e0 to i64), i64* %RAX.i94, align 8
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -32
  %1475 = add i64 %1471, 14
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RCX.i125, align 8
  %1478 = add i64 %1477, 16
  %1479 = add i64 %1471, 18
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i64*
  store i64 ptrtoint (%G__0x41e4e0_type* @G__0x41e4e0 to i64), i64* %1480, align 8
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -32
  %1483 = load i64, i64* %3, align 8
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1482 to i64*
  %1486 = load i64, i64* %1485, align 8
  store i64 %1486, i64* %RAX.i94, align 8
  %1487 = add i64 %1481, -8
  %1488 = add i64 %1483, 8
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i64*
  store i64 %1486, i64* %1489, align 8
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, 318
  store i64 %1491, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cfac:                                  ; preds = %block_.L_41cf5b
  store i64 ptrtoint (%G__0x4577ce_type* @G__0x4577ce to i64), i64* %RDI.i589, align 8
  store i64 10, i64* %RAX.i94, align 8
  store i64 10, i64* %RDX.i156, align 8
  %1492 = load i64, i64* %RBP.i, align 8
  %1493 = add i64 %1492, -560
  store i64 %1493, i64* %RSI.i616, align 8
  %1494 = add i64 %1471, -113628
  %1495 = add i64 %1471, 29
  %1496 = load i64, i64* %6, align 8
  %1497 = add i64 %1496, -8
  %1498 = inttoptr i64 %1497 to i64*
  store i64 %1495, i64* %1498, align 8
  store i64 %1497, i64* %6, align 8
  store i64 %1494, i64* %3, align 8
  %1499 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1459)
  %1500 = load i32, i32* %EAX.i593.pre-phi, align 4
  %1501 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1502 = and i32 %1500, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1507 = icmp eq i32 %1500, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %30, align 1
  %1509 = lshr i32 %1500, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v44 = select i1 %1507, i64 9, i64 40
  %1511 = add i64 %1501, %.v44
  %1512 = add i64 %1511, 10
  store i64 %1512, i64* %3, align 8
  br i1 %1507, label %block_41cfd2, label %block_.L_41cff1

block_41cfd2:                                     ; preds = %block_.L_41cfac
  store i64 ptrtoint (%G__0x41f910_type* @G__0x41f910 to i64), i64* %RAX.i94, align 8
  %1513 = load i64, i64* %RBP.i, align 8
  %1514 = add i64 %1513, -32
  %1515 = add i64 %1511, 14
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RCX.i125, align 8
  %1518 = add i64 %1517, 16
  %1519 = add i64 %1511, 18
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  store i64 ptrtoint (%G__0x41f910_type* @G__0x41f910 to i64), i64* %1520, align 8
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -32
  %1523 = load i64, i64* %3, align 8
  %1524 = add i64 %1523, 4
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i94, align 8
  %1527 = add i64 %1521, -8
  %1528 = add i64 %1523, 8
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  store i64 %1526, i64* %1529, align 8
  %1530 = load i64, i64* %3, align 8
  %1531 = add i64 %1530, 249
  store i64 %1531, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41cff1:                                  ; preds = %block_.L_41cfac
  store i64 ptrtoint (%G__0x4577d9_type* @G__0x4577d9 to i64), i64* %RDI.i589, align 8
  store i64 10, i64* %RAX.i94, align 8
  store i64 10, i64* %RDX.i156, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -560
  store i64 %1533, i64* %RSI.i616, align 8
  %1534 = add i64 %1511, -113697
  %1535 = add i64 %1511, 29
  %1536 = load i64, i64* %6, align 8
  %1537 = add i64 %1536, -8
  %1538 = inttoptr i64 %1537 to i64*
  store i64 %1535, i64* %1538, align 8
  store i64 %1537, i64* %6, align 8
  store i64 %1534, i64* %3, align 8
  %1539 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1499)
  %1540 = load i32, i32* %EAX.i593.pre-phi, align 4
  %1541 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1542 = and i32 %1540, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1547 = icmp eq i32 %1540, 0
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %30, align 1
  %1549 = lshr i32 %1540, 31
  %1550 = trunc i32 %1549 to i8
  store i8 %1550, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v45 = select i1 %1547, i64 9, i64 40
  %1551 = add i64 %1541, %.v45
  %1552 = add i64 %1551, 10
  store i64 %1552, i64* %3, align 8
  br i1 %1547, label %block_41d017, label %block_.L_41d036

block_41d017:                                     ; preds = %block_.L_41cff1
  store i64 ptrtoint (%G__0x4206d0_type* @G__0x4206d0 to i64), i64* %RAX.i94, align 8
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -32
  %1555 = add i64 %1551, 14
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i64*
  %1557 = load i64, i64* %1556, align 8
  store i64 %1557, i64* %RCX.i125, align 8
  %1558 = add i64 %1557, 16
  %1559 = add i64 %1551, 18
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i64*
  store i64 ptrtoint (%G__0x4206d0_type* @G__0x4206d0 to i64), i64* %1560, align 8
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -32
  %1563 = load i64, i64* %3, align 8
  %1564 = add i64 %1563, 4
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1562 to i64*
  %1566 = load i64, i64* %1565, align 8
  store i64 %1566, i64* %RAX.i94, align 8
  %1567 = add i64 %1561, -8
  %1568 = add i64 %1563, 8
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i64*
  store i64 %1566, i64* %1569, align 8
  %1570 = load i64, i64* %3, align 8
  %1571 = add i64 %1570, 180
  store i64 %1571, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41d036:                                  ; preds = %block_.L_41cff1
  store i64 ptrtoint (%G__0x4577e4_type* @G__0x4577e4 to i64), i64* %RDI.i589, align 8
  store i64 10, i64* %RAX.i94, align 8
  store i64 10, i64* %RDX.i156, align 8
  %1572 = load i64, i64* %RBP.i, align 8
  %1573 = add i64 %1572, -560
  store i64 %1573, i64* %RSI.i616, align 8
  %1574 = add i64 %1551, -113766
  %1575 = add i64 %1551, 29
  %1576 = load i64, i64* %6, align 8
  %1577 = add i64 %1576, -8
  %1578 = inttoptr i64 %1577 to i64*
  store i64 %1575, i64* %1578, align 8
  store i64 %1577, i64* %6, align 8
  store i64 %1574, i64* %3, align 8
  %1579 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1539)
  %1580 = load i32, i32* %EAX.i593.pre-phi, align 4
  %1581 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1582 = and i32 %1580, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1587 = icmp eq i32 %1580, 0
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %30, align 1
  %1589 = lshr i32 %1580, 31
  %1590 = trunc i32 %1589 to i8
  store i8 %1590, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v46 = select i1 %1587, i64 9, i64 40
  %1591 = add i64 %1581, %.v46
  %1592 = add i64 %1591, 10
  store i64 %1592, i64* %3, align 8
  br i1 %1587, label %block_41d05c, label %block_.L_41d07b

block_41d05c:                                     ; preds = %block_.L_41d036
  store i64 ptrtoint (%G__0x4207c0_type* @G__0x4207c0 to i64), i64* %RAX.i94, align 8
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -32
  %1595 = add i64 %1591, 14
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RCX.i125, align 8
  %1598 = add i64 %1597, 16
  %1599 = add i64 %1591, 18
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  store i64 ptrtoint (%G__0x4207c0_type* @G__0x4207c0 to i64), i64* %1600, align 8
  %1601 = load i64, i64* %RBP.i, align 8
  %1602 = add i64 %1601, -32
  %1603 = load i64, i64* %3, align 8
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1602 to i64*
  %1606 = load i64, i64* %1605, align 8
  store i64 %1606, i64* %RAX.i94, align 8
  %1607 = add i64 %1601, -8
  %1608 = add i64 %1603, 8
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i64*
  store i64 %1606, i64* %1609, align 8
  %1610 = load i64, i64* %3, align 8
  %1611 = add i64 %1610, 111
  store i64 %1611, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41d07b:                                  ; preds = %block_.L_41d036
  store i64 ptrtoint (%G__0x4577ef_type* @G__0x4577ef to i64), i64* %RDI.i589, align 8
  store i64 10, i64* %RAX.i94, align 8
  store i64 10, i64* %RDX.i156, align 8
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -560
  store i64 %1613, i64* %RSI.i616, align 8
  %1614 = add i64 %1591, -113835
  %1615 = add i64 %1591, 29
  %1616 = load i64, i64* %6, align 8
  %1617 = add i64 %1616, -8
  %1618 = inttoptr i64 %1617 to i64*
  store i64 %1615, i64* %1618, align 8
  store i64 %1617, i64* %6, align 8
  store i64 %1614, i64* %3, align 8
  %1619 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1579)
  %1620 = load i32, i32* %EAX.i593.pre-phi, align 4
  %1621 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1622 = and i32 %1620, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1627 = icmp eq i32 %1620, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %30, align 1
  %1629 = lshr i32 %1620, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v47 = select i1 %1627, i64 9, i64 40
  %1631 = add i64 %1621, %.v47
  store i64 %1631, i64* %3, align 8
  br i1 %1627, label %block_41d0a1, label %block_.L_41d0c0

block_41d0a1:                                     ; preds = %block_.L_41d07b
  store i64 ptrtoint (%G__0x4207f0_type* @G__0x4207f0 to i64), i64* %RAX.i94, align 8
  %1632 = load i64, i64* %RBP.i, align 8
  %1633 = add i64 %1632, -32
  %1634 = add i64 %1631, 14
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i64*
  %1636 = load i64, i64* %1635, align 8
  store i64 %1636, i64* %RCX.i125, align 8
  %1637 = add i64 %1636, 16
  %1638 = add i64 %1631, 18
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i64*
  store i64 ptrtoint (%G__0x4207f0_type* @G__0x4207f0 to i64), i64* %1639, align 8
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -32
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1641 to i64*
  %1645 = load i64, i64* %1644, align 8
  store i64 %1645, i64* %RAX.i94, align 8
  %1646 = add i64 %1640, -8
  %1647 = add i64 %1642, 8
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i64*
  store i64 %1645, i64* %1648, align 8
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 42
  store i64 %1650, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41d0c0:                                  ; preds = %block_.L_41d07b
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -32
  %1653 = add i64 %1631, 24
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RDI.i589, align 8
  %1656 = add i64 %1631, 64
  %1657 = add i64 %1631, 29
  %1658 = load i64, i64* %6, align 8
  %1659 = add i64 %1658, -8
  %1660 = inttoptr i64 %1659 to i64*
  store i64 %1657, i64* %1660, align 8
  store i64 %1659, i64* %6, align 8
  store i64 %1656, i64* %3, align 8
  %call2_41d0d8 = tail call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* nonnull %0, i64 %1656, %struct.Memory* %1619)
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -8
  %1663 = load i64, i64* %3, align 8
  %1664 = add i64 %1663, 8
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1662 to i64*
  store i64 0, i64* %1665, align 8
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_41d0e5

block_.L_41d0e5:                                  ; preds = %block_.L_41d0c0, %block_41d0a1, %block_41d05c, %block_41d017, %block_41cfd2, %block_41cf8d, %block_41cf45, %block_41cef8, %block_41ce85, %block_41ce4b, %block_41ce06, %block_41cdcc, %block_41cd87, %block_41cd4d, %block_41cd08, %block_41ccce, %block_41cc89, %block_41cc4f, %block_41cc1d, %block_.L_41cb67
  %1666 = phi i64 [ %565, %block_.L_41cb67 ], [ %.pre26, %block_.L_41d0c0 ], [ %1650, %block_41d0a1 ], [ %1611, %block_41d05c ], [ %1571, %block_41d017 ], [ %1531, %block_41cfd2 ], [ %1491, %block_41cf8d ], [ %1442, %block_41cf45 ], [ %1399, %block_41cef8 ], [ %1362, %block_41ce85 ], [ %1297, %block_41ce4b ], [ %1241, %block_41ce06 ], [ %1176, %block_41cdcc ], [ %1120, %block_41cd87 ], [ %1055, %block_41cd4d ], [ %999, %block_41cd08 ], [ %934, %block_41ccce ], [ %878, %block_41cc89 ], [ %813, %block_41cc4f ], [ %745, %block_41cc1d ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_41ca54, %block_.L_41cb67 ], [ %call2_41d0d8, %block_.L_41d0c0 ], [ %1619, %block_41d0a1 ], [ %1579, %block_41d05c ], [ %1539, %block_41d017 ], [ %1499, %block_41cfd2 ], [ %1459, %block_41cf8d ], [ %call2_41cf49, %block_41cf45 ], [ %call2_41cf11, %block_41cef8 ], [ %call2_41cc3a, %block_41ce85 ], [ %call2_41cc3a, %block_41ce4b ], [ %call2_41cc3a, %block_41ce06 ], [ %call2_41cc3a, %block_41cdcc ], [ %call2_41cc3a, %block_41cd87 ], [ %call2_41cc3a, %block_41cd4d ], [ %call2_41cc3a, %block_41cd08 ], [ %call2_41cc3a, %block_41ccce ], [ %call2_41cc3a, %block_41cc89 ], [ %call2_41cc3a, %block_41cc4f ], [ %call2_41cc21, %block_41cc1d ]
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -8
  %1669 = add i64 %1666, 4
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i64*
  %1671 = load i64, i64* %1670, align 8
  store i64 %1671, i64* %RAX.i94, align 8
  %1672 = load i64, i64* %6, align 8
  %1673 = add i64 %1672, 656
  store i64 %1673, i64* %6, align 8
  %1674 = icmp ugt i64 %1672, -657
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %14, align 1
  %1676 = trunc i64 %1673 to i32
  %1677 = and i32 %1676, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %21, align 1
  %1682 = xor i64 %1672, 16
  %1683 = xor i64 %1682, %1673
  %1684 = lshr i64 %1683, 4
  %1685 = trunc i64 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %27, align 1
  %1687 = icmp eq i64 %1673, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %30, align 1
  %1689 = lshr i64 %1673, 63
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %33, align 1
  %1691 = lshr i64 %1672, 63
  %1692 = xor i64 %1689, %1691
  %1693 = add nuw nsw i64 %1692, %1689
  %1694 = icmp eq i64 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %39, align 1
  %1696 = add i64 %1666, 12
  store i64 %1696, i64* %3, align 8
  %1697 = add i64 %1672, 664
  %1698 = inttoptr i64 %1673 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RBP.i, align 8
  store i64 %1697, i64* %6, align 8
  %1700 = add i64 %1666, 13
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1697 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %3, align 8
  %1703 = add i64 %1672, 672
  store i64 %1703, i64* %6, align 8
  ret %struct.Memory* %MEMORY.4
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
define %struct.Memory* @routine_subq__0x290___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -656
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 656
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
define %struct.Memory* @routine_movq__0x45763b___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 164, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x38___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 56, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458380___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458380_type* @G__0x458380 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 0, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_je_.L_41ca45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 181, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x25c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -604
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 5
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -6
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
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x258__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x25c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -604
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4576e8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4576e8_type* @G__0x4576e8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x260__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SSIRecommendMode(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x24__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 1
  %8 = icmp ne i32 %4, -1
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
  %30 = xor i32 %29, 1
  %31 = xor i32 %26, %29
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ca40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4576ef___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4576ef_type* @G__0x4576ef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41cb79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x240__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.EnvFileOpen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41cb67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FileConcat(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 192, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x250__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x268__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x26c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -620
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x278__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -632
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x278__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 5
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -6
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
define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x268__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x280__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -640
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x26c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x280__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x250__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x284__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -644
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cb4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41cb74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SSIOpen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x288__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -648
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq___rsi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rsi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x28___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 40
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -41
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
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SSIGetFilePosition(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
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
define %struct.Memory* @routine_je_.L_41cbe4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457709___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457709_type* @G__0x457709 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x290__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x290__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fread_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41cc33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rewind_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_0x661538___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661538_type* @G_0x661538 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41d160___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41d160_type* @G__0x41d160 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_0x66153c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x66153c_type* @G_0x66153c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ccbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x661540___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661540_type* @G_0x661540 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ccf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41e0a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41e0a0_type* @G__0x41e0a0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x661544___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661544_type* @G_0x661544 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cd3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x661548___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661548_type* @G_0x661548 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cd77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41e1b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41e1b0_type* @G__0x41e1b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x66154c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x66154c_type* @G_0x66154c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cdbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x661550___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661550_type* @G_0x661550 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cdf6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41e2c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41e2c0_type* @G__0x41e2c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x661554___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661554_type* @G_0x661554 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ce3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x661558___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x661558_type* @G_0x661558 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ce75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41e3d0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41e3d0_type* @G__0x41e3d0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x66155c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x66155c_type* @G_0x66155c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ceba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41cebf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cec9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cece(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ced3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ced8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cedd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cee2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41cee7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x80000000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 2147483648
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %9, align 1
  %.lobit = lshr i32 %6, 31
  %10 = trunc i32 %.lobit to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
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
define %struct.Memory* @routine_je_.L_41cf23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457725___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457725_type* @G__0x457725 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Warn(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x200___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 512, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fgets_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41cf5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4577c5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577c5_type* @G__0x4577c5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RCX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cfac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41e4e0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41e4e0_type* @G__0x41e4e0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577ce___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577ce_type* @G__0x4577ce to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41cff1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x41f910___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41f910_type* @G__0x41f910 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577d9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577d9_type* @G__0x4577d9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d036(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4206d0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4206d0_type* @G__0x4206d0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577e4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577e4_type* @G__0x4577e4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d07b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4207c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4207c0_type* @G__0x4207c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577ef___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577ef_type* @G__0x4577ef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d0c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4207f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4207f0_type* @G__0x4207f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d0c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d0ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d0cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d0d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x290___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 656
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -657
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
