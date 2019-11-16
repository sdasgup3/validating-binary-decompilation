; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x342ff__rip__type = type <{ [4 x i8] }>
%G_0x3438c__rip__type = type <{ [4 x i8] }>
%G_0x34431__rip__type = type <{ [4 x i8] }>
%G_0x344c0__rip__type = type <{ [4 x i8] }>
%G_0x34529__rip__type = type <{ [4 x i8] }>
%G_0x345aa__rip__type = type <{ [4 x i8] }>
%G_0x34638__rip__type = type <{ [4 x i8] }>
%G_0x34881__rip__type = type <{ [4 x i8] }>
%G_0x348c9__rip__type = type <{ [4 x i8] }>
%G_0x34a70__rip__type = type <{ [4 x i8] }>
%G_0x34b94__rip__type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x4577ce_type = type <{ [8 x i8] }>
%G__0x457830_type = type <{ [8 x i8] }>
%G__0x457899_type = type <{ [8 x i8] }>
%G__0x457914_type = type <{ [4 x i8] }>
%G__0x457947_type = type <{ [4 x i8] }>
%G__0x45794d_type = type <{ [4 x i8] }>
%G__0x457955_type = type <{ [4 x i8] }>
%G__0x676fe0_type = type <{ [8 x i8] }>
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
@G_0x342ff__rip_ = global %G_0x342ff__rip__type zeroinitializer
@G_0x3438c__rip_ = global %G_0x3438c__rip__type zeroinitializer
@G_0x34431__rip_ = global %G_0x34431__rip__type zeroinitializer
@G_0x344c0__rip_ = global %G_0x344c0__rip__type zeroinitializer
@G_0x34529__rip_ = global %G_0x34529__rip__type zeroinitializer
@G_0x345aa__rip_ = global %G_0x345aa__rip__type zeroinitializer
@G_0x34638__rip_ = global %G_0x34638__rip__type zeroinitializer
@G_0x34881__rip_ = global %G_0x34881__rip__type zeroinitializer
@G_0x348c9__rip_ = global %G_0x348c9__rip__type zeroinitializer
@G_0x34a70__rip_ = global %G_0x34a70__rip__type zeroinitializer
@G_0x34b94__rip_ = global %G_0x34b94__rip__type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x4577ce = global %G__0x4577ce_type zeroinitializer
@G__0x457830 = global %G__0x457830_type zeroinitializer
@G__0x457899 = global %G__0x457899_type zeroinitializer
@G__0x457914 = global %G__0x457914_type zeroinitializer
@G__0x457947 = global %G__0x457947_type zeroinitializer
@G__0x45794d = global %G__0x45794d_type zeroinitializer
@G__0x457955 = global %G__0x457955_type zeroinitializer
@G__0x676fe0 = global %G__0x676fe0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428c70.Getword(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446010.s2upper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_421780.ascii2prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4329f0.ZeroPlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445df0.Strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432e50.Plan7SetCtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @read_asc19hmm(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -632
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 624
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
  %RDI.i1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i1148, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %RSI.i1177, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -32
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 8
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -16
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %RSI.i1177, align 8
  %61 = add i64 %57, 7
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RSI.i1177, align 8
  %64 = add i64 %55, -40
  %65 = add i64 %57, 11
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -40
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RDI.i1148, align 8
  %73 = add i64 %69, -123814
  %74 = add i64 %69, 9
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %call2_41f93a = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64 %73, %struct.Memory* %2)
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1382 = bitcast %union.anon* %78 to i32*
  %79 = load i32, i32* %EAX.i1382, align 4
  %80 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %81 = and i32 %79, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81)
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %86 = icmp eq i32 %79, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %30, align 1
  %88 = lshr i32 %79, 31
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %86, i64 9, i64 40
  %90 = add i64 %80, %.v
  store i64 %90, i64* %3, align 8
  br i1 %86, label %block_41f948, label %entry.block_.L_41f967_crit_edge

entry.block_.L_41f967_crit_edge:                  ; preds = %entry
  %.pre536 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  br label %block_.L_41f967

block_41f948:                                     ; preds = %entry
  store i64 512, i64* %RSI.i1177, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -560
  store i64 %92, i64* %RDI.i1148, align 8
  %RDX.i1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %93 = add i64 %91, -40
  %94 = add i64 %90, 16
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RDX.i1373, align 8
  %97 = add i64 %90, -123912
  %98 = add i64 %90, 21
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %6, align 8
  store i64 %97, i64* %3, align 8
  %call2_41f958 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %97, %struct.Memory* %call2_41f93a)
  %RAX.i1370 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %102 = load i64, i64* %RAX.i1370, align 8
  %103 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %110 = icmp eq i64 %102, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %30, align 1
  %112 = lshr i64 %102, 63
  %113 = trunc i64 %112 to i8
  store i8 %113, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v540 = select i1 %110, i64 10, i64 22
  %114 = add i64 %103, %.v540
  store i64 %114, i64* %3, align 8
  br i1 %110, label %block_.L_41f967, label %block_.L_41f973

block_.L_41f967:                                  ; preds = %block_41f948, %entry.block_.L_41f967_crit_edge
  %.pre535.pre-phi = phi i64* [ %.pre536, %entry.block_.L_41f967_crit_edge ], [ %RAX.i1370, %block_41f948 ]
  %115 = phi i64 [ %90, %entry.block_.L_41f967_crit_edge ], [ %114, %block_41f948 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_41f93a, %entry.block_.L_41f967_crit_edge ], [ %call2_41f958, %block_41f948 ]
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -4
  %118 = add i64 %115, 7
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  store i32 0, i32* %119, align 4
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 3405
  store i64 %121, i64* %3, align 8
  br label %block_.L_4206bb

block_.L_41f973:                                  ; preds = %block_41f948
  store i64 ptrtoint (%G__0x4577ce_type* @G__0x4577ce to i64), i64* %RSI.i1177, align 8
  store i64 10, i64* %RAX.i1370, align 8
  store i64 10, i64* %RDX.i1373, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -560
  store i64 %123, i64* %RDI.i1148, align 8
  %124 = add i64 %114, -124323
  %125 = add i64 %114, 29
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %129 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_41f958)
  %130 = load i32, i32* %EAX.i1382, align 4
  %131 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %132 = and i32 %130, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %137 = icmp eq i32 %130, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %30, align 1
  %139 = lshr i32 %130, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v541 = select i1 %137, i64 14, i64 9
  %141 = add i64 %131, %.v541
  store i64 %141, i64* %3, align 8
  br i1 %137, label %block_.L_41f99e, label %block_41f999

block_41f999:                                     ; preds = %block_.L_41f973
  %142 = add i64 %141, 3324
  br label %block_.L_420695

block_.L_41f99e:                                  ; preds = %block_.L_41f973
  %143 = add i64 %141, 74690
  %144 = add i64 %141, 5
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %call2_41f99e = tail call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* nonnull %0, i64 %143, %struct.Memory* %129)
  %148 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i1177, align 8
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -32
  %151 = load i64, i64* %RAX.i1370, align 8
  %152 = add i64 %148, 9
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i64*
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -40
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDI.i1148, align 8
  %160 = add i64 %156, 37572
  %161 = add i64 %156, 9
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  %call2_41f9b0 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %160, %struct.Memory* %call2_41f99e)
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -568
  %167 = load i64, i64* %RAX.i1370, align 8
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 7
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %170, align 8
  %171 = load i64, i64* %RAX.i1370, align 8
  %172 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %173 = trunc i64 %171 to i32
  %174 = and i32 %173, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %179 = icmp eq i64 %171, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %30, align 1
  %181 = lshr i64 %171, 63
  %182 = trunc i64 %181 to i8
  store i8 %182, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v543 = select i1 %179, i64 10, i64 15
  %183 = add i64 %172, %.v543
  store i64 %183, i64* %3, align 8
  br i1 %179, label %block_41f9c6, label %block_.L_41f9cb

block_41f9c6:                                     ; preds = %block_.L_41f99e
  %184 = add i64 %183, 3279
  br label %block_.L_420695

block_.L_41f9cb:                                  ; preds = %block_.L_41f99e
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -568
  %187 = add i64 %183, 7
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RDI.i1148, align 8
  %190 = add i64 %183, -123691
  %191 = add i64 %183, 12
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %6, align 8
  store i64 %190, i64* %3, align 8
  %195 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_41f9b0)
  %196 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i1177, align 8
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -572
  %199 = load i32, i32* %EAX.i1382, align 4
  %200 = add i64 %196, 11
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %198 to i32*
  store i32 %199, i32* %201, align 4
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -40
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 4
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %203 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RDI.i1148, align 8
  %208 = add i64 %204, 37518
  %209 = add i64 %204, 9
  %210 = load i64, i64* %6, align 8
  %211 = add i64 %210, -8
  %212 = inttoptr i64 %211 to i64*
  store i64 %209, i64* %212, align 8
  store i64 %211, i64* %6, align 8
  store i64 %208, i64* %3, align 8
  %call2_41f9e6 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %208, %struct.Memory* %195)
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -568
  %215 = load i64, i64* %RAX.i1370, align 8
  %216 = load i64, i64* %3, align 8
  %217 = add i64 %216, 7
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %214 to i64*
  store i64 %215, i64* %218, align 8
  %219 = load i64, i64* %RAX.i1370, align 8
  %220 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %221 = trunc i64 %219 to i32
  %222 = and i32 %221, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %227 = icmp eq i64 %219, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i64 %219, 63
  %230 = trunc i64 %229 to i8
  store i8 %230, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v544 = select i1 %227, i64 10, i64 15
  %231 = add i64 %220, %.v544
  store i64 %231, i64* %3, align 8
  br i1 %227, label %block_41f9fc, label %block_.L_41fa01

block_41f9fc:                                     ; preds = %block_.L_41f9cb
  %232 = add i64 %231, 3225
  br label %block_.L_420695

block_.L_41fa01:                                  ; preds = %block_.L_41f9cb
  store i64 4, i64* %RSI.i1177, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -40
  %235 = add i64 %231, 9
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RDI.i1148, align 8
  %238 = add i64 %231, 37487
  %239 = add i64 %231, 14
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, -8
  %242 = inttoptr i64 %241 to i64*
  store i64 %239, i64* %242, align 8
  store i64 %241, i64* %6, align 8
  store i64 %238, i64* %3, align 8
  %call2_41fa0a = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %238, %struct.Memory* %call2_41f9e6)
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -568
  %245 = load i64, i64* %RAX.i1370, align 8
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %244 to i64*
  store i64 %245, i64* %248, align 8
  %249 = load i64, i64* %RAX.i1370, align 8
  %250 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %251 = trunc i64 %249 to i32
  %252 = and i32 %251, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %257 = icmp eq i64 %249, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %30, align 1
  %259 = lshr i64 %249, 63
  %260 = trunc i64 %259 to i8
  store i8 %260, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v545 = select i1 %257, i64 10, i64 15
  %261 = add i64 %250, %.v545
  store i64 %261, i64* %3, align 8
  br i1 %257, label %block_41fa20, label %block_.L_41fa25

block_41fa20:                                     ; preds = %block_.L_41fa01
  %262 = add i64 %261, 3189
  br label %block_.L_420695

block_.L_41fa25:                                  ; preds = %block_.L_41fa01
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -32
  %265 = add i64 %261, 4
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RDI.i1148, align 8
  %268 = add i64 %263, -568
  %269 = add i64 %261, 11
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RSI.i1177, align 8
  %272 = add i64 %261, 78171
  %273 = add i64 %261, 16
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %call2_41fa30 = tail call %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* nonnull %0, i64 %272, %struct.Memory* %call2_41fa0a)
  %277 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1177, align 8
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -40
  %280 = add i64 %277, 9
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RDI.i1148, align 8
  %283 = add i64 %277, 37435
  %284 = add i64 %277, 14
  %285 = load i64, i64* %6, align 8
  %286 = add i64 %285, -8
  %287 = inttoptr i64 %286 to i64*
  store i64 %284, i64* %287, align 8
  store i64 %286, i64* %6, align 8
  store i64 %283, i64* %3, align 8
  %call2_41fa3e = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %283, %struct.Memory* %call2_41fa30)
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -568
  %290 = load i64, i64* %RAX.i1370, align 8
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 7
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %289 to i64*
  store i64 %290, i64* %293, align 8
  %294 = load i64, i64* %RAX.i1370, align 8
  %295 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %296 = trunc i64 %294 to i32
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %302 = icmp eq i64 %294, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %30, align 1
  %304 = lshr i64 %294, 63
  %305 = trunc i64 %304 to i8
  store i8 %305, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v546 = select i1 %302, i64 10, i64 15
  %306 = add i64 %295, %.v546
  store i64 %306, i64* %3, align 8
  br i1 %302, label %block_41fa54, label %block_.L_41fa59

block_41fa54:                                     ; preds = %block_.L_41fa25
  %307 = add i64 %306, 3137
  br label %block_.L_420695

block_.L_41fa59:                                  ; preds = %block_.L_41fa25
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -568
  %310 = add i64 %306, 7
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RDI.i1148, align 8
  %313 = add i64 %306, 157111
  %314 = add i64 %306, 12
  %315 = load i64, i64* %6, align 8
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %6, align 8
  store i64 %313, i64* %3, align 8
  %call2_41fa60 = tail call %struct.Memory* @sub_446010.s2upper(%struct.State* nonnull %0, i64 %313, %struct.Memory* %call2_41fa3e)
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -568
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 7
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RDI.i1148, align 8
  store i64 and (i64 ptrtoint (%G__0x457947_type* @G__0x457947 to i64), i64 4294967295), i64* %RAX.i1370, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457947_type* @G__0x457947 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1177, align 8
  %324 = add i64 %320, -124165
  %325 = add i64 %320, 19
  %326 = load i64, i64* %6, align 8
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %325, i64* %328, align 8
  store i64 %327, i64* %6, align 8
  store i64 %324, i64* %3, align 8
  %329 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_41fa60)
  %330 = load i32, i32* %EAX.i1382, align 4
  %331 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %332 = and i32 %330, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %337 = icmp eq i32 %330, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %30, align 1
  %339 = lshr i32 %330, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v547 = select i1 %337, i64 9, i64 24
  %341 = add i64 %331, %.v547
  store i64 %341, i64* %3, align 8
  %342 = load i64, i64* %RBP.i, align 8
  br i1 %337, label %block_41fa81, label %block_.L_41fa90

block_41fa81:                                     ; preds = %block_.L_41fa59
  %343 = add i64 %342, -584
  %344 = add i64 %341, 10
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  store i32 3, i32* %345, align 4
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 58
  br label %block_.L_41fac5

block_.L_41fa90:                                  ; preds = %block_.L_41fa59
  %348 = add i64 %342, -568
  %349 = add i64 %341, 7
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RDI.i1148, align 8
  store i64 and (i64 ptrtoint (%G__0x45794d_type* @G__0x45794d to i64), i64 4294967295), i64* %RAX.i1370, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x45794d_type* @G__0x45794d to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1177, align 8
  %352 = add i64 %341, -124208
  %353 = add i64 %341, 19
  %354 = load i64, i64* %6, align 8
  %355 = add i64 %354, -8
  %356 = inttoptr i64 %355 to i64*
  store i64 %353, i64* %356, align 8
  store i64 %355, i64* %6, align 8
  store i64 %352, i64* %3, align 8
  %357 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %329)
  %358 = load i32, i32* %EAX.i1382, align 4
  %359 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %360 = and i32 %358, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %365 = icmp eq i32 %358, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1
  %367 = lshr i32 %358, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v548 = select i1 %365, i64 9, i64 24
  %369 = add i64 %359, %.v548
  store i64 %369, i64* %3, align 8
  br i1 %365, label %block_41faac, label %block_.L_41fabb

block_41faac:                                     ; preds = %block_.L_41fa90
  %370 = load i64, i64* %RBP.i, align 8
  %371 = add i64 %370, -584
  %372 = add i64 %369, 10
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 2, i32* %373, align 4
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 15
  store i64 %375, i64* %3, align 8
  br label %block_.L_41fac5

block_.L_41fabb:                                  ; preds = %block_.L_41fa90
  %376 = add i64 %369, 3034
  br label %block_.L_420695

block_.L_41fac5:                                  ; preds = %block_41faac, %block_41fa81
  %storemerge = phi i64 [ %347, %block_41fa81 ], [ %375, %block_41faac ]
  %MEMORY.1 = phi %struct.Memory* [ %329, %block_41fa81 ], [ %357, %block_41faac ]
  %377 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %378 = and i32 %377, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %383 = icmp eq i32 %377, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %30, align 1
  %385 = lshr i32 %377, 31
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v549 = select i1 %383, i64 14, i64 30
  %387 = add i64 %storemerge, %.v549
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -584
  %390 = add i64 %387, 6
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  br i1 %383, label %block_41fad3, label %block_.L_41fae3

block_41fad3:                                     ; preds = %block_.L_41fac5
  store i64 %393, i64* %RDI.i1148, align 8
  %394 = add i64 %387, -110131
  %395 = add i64 %387, 11
  %396 = load i64, i64* %6, align 8
  %397 = add i64 %396, -8
  %398 = inttoptr i64 %397 to i64*
  store i64 %395, i64* %398, align 8
  store i64 %397, i64* %6, align 8
  store i64 %394, i64* %3, align 8
  %call2_41fad9 = tail call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* nonnull %0, i64 %394, %struct.Memory* %MEMORY.1)
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 86
  br label %block_.L_41fb34

block_.L_41fae3:                                  ; preds = %block_.L_41fac5
  store i64 %393, i64* %RAX.i1370, align 8
  %401 = sub i32 %392, %377
  %402 = icmp ult i32 %392, %377
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %14, align 1
  %404 = and i32 %401, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  %409 = xor i32 %377, %392
  %410 = xor i32 %409, %401
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %27, align 1
  %414 = icmp eq i32 %401, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %30, align 1
  %416 = lshr i32 %401, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %33, align 1
  %418 = lshr i32 %392, 31
  %419 = xor i32 %385, %418
  %420 = xor i32 %416, %418
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %39, align 1
  %.v550 = select i1 %414, i64 76, i64 19
  %424 = add i64 %387, %.v550
  store i64 %424, i64* %3, align 8
  br i1 %414, label %block_.L_41fb2f, label %block_41faf6

block_41faf6:                                     ; preds = %block_.L_41fae3
  %425 = zext i32 %377 to i64
  store i64 %425, i64* %RDI.i1148, align 8
  %426 = add i64 %424, -60566
  %427 = add i64 %424, 12
  %428 = load i64, i64* %6, align 8
  %429 = add i64 %428, -8
  %430 = inttoptr i64 %429 to i64*
  store i64 %427, i64* %430, align 8
  store i64 %429, i64* %6, align 8
  store i64 %426, i64* %3, align 8
  %call2_41fafd = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %426, %struct.Memory* %MEMORY.1)
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -584
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 6
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RDI.i1148, align 8
  %438 = add i64 %431, -592
  %439 = load i64, i64* %RAX.i1370, align 8
  %440 = add i64 %433, 13
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %438 to i64*
  store i64 %439, i64* %441, align 8
  %442 = load i64, i64* %3, align 8
  %443 = add i64 %442, -60591
  %444 = add i64 %442, 5
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %444, i64* %447, align 8
  store i64 %446, i64* %6, align 8
  store i64 %443, i64* %3, align 8
  %call2_41fb0f = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %443, %struct.Memory* %call2_41fafd)
  %448 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI.i1148, align 8
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -592
  %451 = add i64 %448, 17
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RSI.i1177, align 8
  %454 = load i64, i64* %RAX.i1370, align 8
  store i64 %454, i64* %RDX.i1373, align 8
  %AL.i = bitcast %union.anon* %78 to i8*
  store i8 0, i8* %AL.i, align 1
  %455 = add i64 %448, 126716
  %456 = add i64 %448, 27
  %457 = load i64, i64* %6, align 8
  %458 = add i64 %457, -8
  %459 = inttoptr i64 %458 to i64*
  store i64 %456, i64* %459, align 8
  store i64 %458, i64* %6, align 8
  store i64 %455, i64* %3, align 8
  %call2_41fb2a = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %455, %struct.Memory* %call2_41fb0f)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41fb2f

block_.L_41fb2f:                                  ; preds = %block_41faf6, %block_.L_41fae3
  %460 = phi i64 [ %424, %block_.L_41fae3 ], [ %.pre, %block_41faf6 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_41fae3 ], [ %call2_41fb2a, %block_41faf6 ]
  %461 = add i64 %460, 5
  store i64 %461, i64* %3, align 8
  br label %block_.L_41fb34

block_.L_41fb34:                                  ; preds = %block_.L_41fb2f, %block_41fad3
  %storemerge68 = phi i64 [ %400, %block_41fad3 ], [ %461, %block_.L_41fb2f ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_41fad9, %block_41fad3 ], [ %MEMORY.2, %block_.L_41fb2f ]
  store i64 4, i64* %RSI.i1177, align 8
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -40
  %464 = add i64 %storemerge68, 9
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RDI.i1148, align 8
  %467 = add i64 %storemerge68, 37180
  %468 = add i64 %storemerge68, 14
  %469 = load i64, i64* %6, align 8
  %470 = add i64 %469, -8
  %471 = inttoptr i64 %470 to i64*
  store i64 %468, i64* %471, align 8
  store i64 %470, i64* %6, align 8
  store i64 %467, i64* %3, align 8
  %call2_41fb3d = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %467, %struct.Memory* %MEMORY.3)
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -568
  %474 = load i64, i64* %RAX.i1370, align 8
  %475 = load i64, i64* %3, align 8
  %476 = add i64 %475, 7
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %473 to i64*
  store i64 %474, i64* %477, align 8
  %478 = load i64, i64* %RAX.i1370, align 8
  %479 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %480 = trunc i64 %478 to i32
  %481 = and i32 %480, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %486 = icmp eq i64 %478, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %30, align 1
  %488 = lshr i64 %478, 63
  %489 = trunc i64 %488 to i8
  store i8 %489, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v551 = select i1 %486, i64 10, i64 15
  %490 = add i64 %479, %.v551
  store i64 %490, i64* %3, align 8
  br i1 %486, label %block_41fb53, label %block_.L_41fb58

block_41fb53:                                     ; preds = %block_.L_41fb34
  %491 = add i64 %490, 2882
  br label %block_.L_420695

block_.L_41fb58:                                  ; preds = %block_.L_41fb34
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RSI.i1177, align 8
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -568
  %494 = add i64 %490, 17
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RDI.i1148, align 8
  %497 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RDX.i1373, align 8
  %499 = add i64 %490, -124808
  %500 = add i64 %490, 30
  %501 = load i64, i64* %6, align 8
  %502 = add i64 %501, -8
  %503 = inttoptr i64 %502 to i64*
  store i64 %500, i64* %503, align 8
  store i64 %502, i64* %6, align 8
  store i64 %499, i64* %3, align 8
  %504 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_41fb3d)
  %505 = load i32, i32* %EAX.i1382, align 4
  %506 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %507 = and i32 %505, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %512 = icmp eq i32 %505, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %505, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v552 = select i1 %512, i64 14, i64 9
  %516 = add i64 %506, %.v552
  store i64 %516, i64* %3, align 8
  br i1 %512, label %block_.L_41fb84, label %block_41fb7f

block_41fb7f:                                     ; preds = %block_.L_41fb58
  %517 = add i64 %516, 2838
  br label %block_.L_420695

block_.L_41fb84:                                  ; preds = %block_.L_41fb58
  store i64 4, i64* %RSI.i1177, align 8
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -40
  %520 = add i64 %516, 9
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RDI.i1148, align 8
  %523 = add i64 %516, 37100
  %524 = add i64 %516, 14
  %525 = load i64, i64* %6, align 8
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %6, align 8
  store i64 %523, i64* %3, align 8
  %call2_41fb8d = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %523, %struct.Memory* %504)
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -568
  %530 = load i64, i64* %RAX.i1370, align 8
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, 7
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %529 to i64*
  store i64 %530, i64* %533, align 8
  %534 = load i64, i64* %RAX.i1370, align 8
  %535 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %536 = trunc i64 %534 to i32
  %537 = and i32 %536, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %542 = icmp eq i64 %534, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %30, align 1
  %544 = lshr i64 %534, 63
  %545 = trunc i64 %544 to i8
  store i8 %545, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v553 = select i1 %542, i64 10, i64 15
  %546 = add i64 %535, %.v553
  store i64 %546, i64* %3, align 8
  br i1 %542, label %block_41fba3, label %block_.L_41fba8

block_41fba3:                                     ; preds = %block_.L_41fb84
  %547 = add i64 %546, 2802
  br label %block_.L_420695

block_.L_41fba8:                                  ; preds = %block_.L_41fb84
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -568
  %550 = add i64 %546, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDI.i1148, align 8
  store i64 and (i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 4294967295), i64* %RAX.i1370, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1177, align 8
  %553 = add i64 %546, -124488
  %554 = add i64 %546, 19
  %555 = load i64, i64* %6, align 8
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %6, align 8
  store i64 %553, i64* %3, align 8
  %558 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_41fb8d)
  %559 = load i32, i32* %EAX.i1382, align 4
  %560 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %561 = and i32 %559, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %566 = icmp eq i32 %559, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %30, align 1
  %568 = lshr i32 %559, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v554 = select i1 %566, i64 9, i64 28
  %570 = add i64 %560, %.v554
  store i64 %570, i64* %3, align 8
  br i1 %566, label %block_41fbc4, label %block_.L_41fbd7

block_41fbc4:                                     ; preds = %block_.L_41fba8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -32
  %573 = add i64 %570, 4
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RAX.i1370, align 8
  %RCX.i1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %576 = add i64 %575, 456
  %577 = add i64 %570, 10
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = or i32 %579, 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RCX.i1140, align 8
  store i8 0, i8* %14, align 1
  %582 = and i32 %580, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %587 = lshr i32 %579, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %589 = add i64 %570, 19
  store i64 %589, i64* %3, align 8
  store i32 %580, i32* %578, align 4
  %.pre500 = load i64, i64* %3, align 8
  br label %block_.L_41fbd7

block_.L_41fbd7:                                  ; preds = %block_.L_41fba8, %block_41fbc4
  %590 = phi i64 [ %.pre500, %block_41fbc4 ], [ %570, %block_.L_41fba8 ]
  store i64 4, i64* %RSI.i1177, align 8
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -40
  %593 = add i64 %590, 9
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %RDI.i1148, align 8
  %596 = add i64 %590, 37017
  %597 = add i64 %590, 14
  %598 = load i64, i64* %6, align 8
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %6, align 8
  store i64 %596, i64* %3, align 8
  %call2_41fbe0 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %596, %struct.Memory* %558)
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -568
  %603 = load i64, i64* %RAX.i1370, align 8
  %604 = load i64, i64* %3, align 8
  %605 = add i64 %604, 7
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %602 to i64*
  store i64 %603, i64* %606, align 8
  %607 = load i64, i64* %RAX.i1370, align 8
  %608 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %609 = trunc i64 %607 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %615 = icmp eq i64 %607, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %30, align 1
  %617 = lshr i64 %607, 63
  %618 = trunc i64 %617 to i8
  store i8 %618, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v555 = select i1 %615, i64 10, i64 15
  %619 = add i64 %608, %.v555
  store i64 %619, i64* %3, align 8
  br i1 %615, label %block_41fbf6, label %block_.L_41fbfb

block_41fbf6:                                     ; preds = %block_.L_41fbd7
  %620 = add i64 %619, 2719
  br label %block_.L_420695

block_.L_41fbfb:                                  ; preds = %block_.L_41fbd7
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -568
  %623 = add i64 %619, 7
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i64*
  %625 = load i64, i64* %624, align 8
  store i64 %625, i64* %RDI.i1148, align 8
  store i64 and (i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 4294967295), i64* %RAX.i1370, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1177, align 8
  %626 = add i64 %619, -124571
  %627 = add i64 %619, 19
  %628 = load i64, i64* %6, align 8
  %629 = add i64 %628, -8
  %630 = inttoptr i64 %629 to i64*
  store i64 %627, i64* %630, align 8
  store i64 %629, i64* %6, align 8
  store i64 %626, i64* %3, align 8
  %631 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_41fbe0)
  %632 = load i32, i32* %EAX.i1382, align 4
  %633 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %634 = and i32 %632, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %639 = icmp eq i32 %632, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %30, align 1
  %641 = lshr i32 %632, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v556 = select i1 %639, i64 9, i64 28
  %643 = add i64 %633, %.v556
  store i64 %643, i64* %3, align 8
  br i1 %639, label %block_41fc17, label %block_.L_41fc2a

block_41fc17:                                     ; preds = %block_.L_41fbfb
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -32
  %646 = add i64 %643, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RAX.i1370, align 8
  %RCX.i1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %649 = add i64 %648, 456
  %650 = add i64 %643, 10
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = or i32 %652, 8
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RCX.i1102, align 8
  store i8 0, i8* %14, align 1
  %655 = and i32 %653, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %660 = lshr i32 %652, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %662 = add i64 %643, 19
  store i64 %662, i64* %3, align 8
  store i32 %653, i32* %651, align 4
  %.pre501 = load i64, i64* %3, align 8
  br label %block_.L_41fc2a

block_.L_41fc2a:                                  ; preds = %block_.L_41fbfb, %block_41fc17
  %663 = phi i64 [ %.pre501, %block_41fc17 ], [ %643, %block_.L_41fbfb ]
  store i64 4, i64* %RSI.i1177, align 8
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -40
  %666 = add i64 %663, 9
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RDI.i1148, align 8
  %669 = add i64 %663, 36934
  %670 = add i64 %663, 14
  %671 = load i64, i64* %6, align 8
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %673, align 8
  store i64 %672, i64* %6, align 8
  store i64 %669, i64* %3, align 8
  %call2_41fc33 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %669, %struct.Memory* %631)
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -568
  %676 = load i64, i64* %RAX.i1370, align 8
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 7
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %675 to i64*
  store i64 %676, i64* %679, align 8
  %680 = load i64, i64* %RAX.i1370, align 8
  %681 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %682 = trunc i64 %680 to i32
  %683 = and i32 %682, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %688 = icmp eq i64 %680, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %30, align 1
  %690 = lshr i64 %680, 63
  %691 = trunc i64 %690 to i8
  store i8 %691, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v557 = select i1 %688, i64 10, i64 15
  %692 = add i64 %681, %.v557
  store i64 %692, i64* %3, align 8
  br i1 %688, label %block_41fc49, label %block_.L_41fc4e

block_41fc49:                                     ; preds = %block_.L_41fc2a
  %693 = add i64 %692, 2636
  br label %block_.L_420695

block_.L_41fc4e:                                  ; preds = %block_.L_41fc2a
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -568
  %696 = add i64 %692, 7
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RDI.i1148, align 8
  store i64 and (i64 ptrtoint (%G__0x457955_type* @G__0x457955 to i64), i64 4294967295), i64* %RAX.i1370, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457955_type* @G__0x457955 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i1177, align 8
  %699 = add i64 %692, -124654
  %700 = add i64 %692, 19
  %701 = load i64, i64* %6, align 8
  %702 = add i64 %701, -8
  %703 = inttoptr i64 %702 to i64*
  store i64 %700, i64* %703, align 8
  store i64 %702, i64* %6, align 8
  store i64 %699, i64* %3, align 8
  %704 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_41fc33)
  %705 = load i32, i32* %EAX.i1382, align 4
  %706 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %707 = and i32 %705, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %712 = icmp eq i32 %705, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %30, align 1
  %714 = lshr i32 %705, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v558 = select i1 %712, i64 14, i64 9
  %716 = add i64 %706, %.v558
  store i64 %716, i64* %3, align 8
  br i1 %712, label %block_.L_41fc6f, label %block_41fc6a

block_41fc6a:                                     ; preds = %block_.L_41fc4e
  %717 = add i64 %716, 2603
  br label %block_.L_420695

block_.L_41fc6f:                                  ; preds = %block_.L_41fc4e
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -580
  %720 = add i64 %716, 10
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  store i32 0, i32* %721, align 4
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %723 = bitcast %union.VectorReg* %722 to i8*
  %724 = bitcast %union.VectorReg* %722 to i32*
  %725 = getelementptr inbounds i8, i8* %723, i64 4
  %726 = bitcast i8* %725 to float*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %728 = bitcast i64* %727 to float*
  %729 = getelementptr inbounds i8, i8* %723, i64 12
  %730 = bitcast i8* %729 to float*
  %731 = bitcast %union.VectorReg* %722 to <2 x float>*
  %.pre502 = load i64, i64* %3, align 8
  br label %block_.L_41fc79

block_.L_41fc79:                                  ; preds = %block_.L_41fcb0, %block_.L_41fc6f
  %732 = phi i64 [ %859, %block_.L_41fcb0 ], [ %.pre502, %block_.L_41fc6f ]
  %733 = load i64, i64* %RBP.i, align 8
  %734 = add i64 %733, -580
  %735 = add i64 %732, 6
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i1370, align 8
  %739 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %740 = sub i32 %737, %739
  %741 = icmp ult i32 %737, %739
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %14, align 1
  %743 = and i32 %740, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i32 %739, %737
  %749 = xor i32 %748, %740
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1
  %753 = icmp eq i32 %740, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i32 %740, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = lshr i32 %737, 31
  %758 = lshr i32 %739, 31
  %759 = xor i32 %758, %757
  %760 = xor i32 %755, %757
  %761 = add nuw nsw i32 %760, %759
  %762 = icmp eq i32 %761, 2
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %39, align 1
  %764 = icmp ne i8 %756, 0
  %765 = xor i1 %764, %762
  %.v559 = select i1 %765, i64 19, i64 115
  %766 = add i64 %732, %.v559
  store i64 %766, i64* %3, align 8
  br i1 %765, label %block_41fc8c, label %block_.L_41fcec

block_41fc8c:                                     ; preds = %block_.L_41fc79
  store i64 1, i64* %RSI.i1177, align 8
  %767 = add i64 %733, -40
  %768 = add i64 %766, 9
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %RDI.i1148, align 8
  %771 = add i64 %766, 36836
  %772 = add i64 %766, 14
  %773 = load i64, i64* %6, align 8
  %774 = add i64 %773, -8
  %775 = inttoptr i64 %774 to i64*
  store i64 %772, i64* %775, align 8
  store i64 %774, i64* %6, align 8
  store i64 %771, i64* %3, align 8
  %call2_41fc95 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %771, %struct.Memory* %704)
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -568
  %778 = load i64, i64* %RAX.i1370, align 8
  %779 = load i64, i64* %3, align 8
  %780 = add i64 %779, 7
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %777 to i64*
  store i64 %778, i64* %781, align 8
  %782 = load i64, i64* %RAX.i1370, align 8
  %783 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %784 = trunc i64 %782 to i32
  %785 = and i32 %784, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %790 = icmp eq i64 %782, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %30, align 1
  %792 = lshr i64 %782, 63
  %793 = trunc i64 %792 to i8
  store i8 %793, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v605 = select i1 %790, i64 10, i64 15
  %794 = add i64 %783, %.v605
  store i64 %794, i64* %3, align 8
  br i1 %790, label %block_41fcab, label %block_.L_41fcb0

block_41fcab:                                     ; preds = %block_41fc8c
  %795 = add i64 %794, 2538
  br label %block_.L_420695

block_.L_41fcb0:                                  ; preds = %block_41fc8c
  %796 = add i64 %794, ptrtoint (%G_0x34a70__rip__type* @G_0x34a70__rip_ to i64)
  %797 = add i64 %794, 8
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  store i32 %799, i32* %724, align 1
  store float 0.000000e+00, float* %726, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %730, align 1
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -568
  %802 = add i64 %794, 15
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RDI.i1148, align 8
  %805 = add i64 %794, 6864
  %806 = add i64 %794, 20
  %807 = load i64, i64* %6, align 8
  %808 = add i64 %807, -8
  %809 = inttoptr i64 %808 to i64*
  store i64 %806, i64* %809, align 8
  store i64 %808, i64* %6, align 8
  store i64 %805, i64* %3, align 8
  %call2_41fcbf = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %805, %struct.Memory* %704)
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -32
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 4
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RDI.i1148, align 8
  %816 = add i64 %810, -580
  %817 = add i64 %812, 11
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RAX.i1370, align 8
  %821 = shl nsw i64 %820, 2
  %822 = add i64 %815, 224
  %823 = add i64 %822, %821
  %824 = add i64 %812, 20
  store i64 %824, i64* %3, align 8
  %825 = load <2 x float>, <2 x float>* %731, align 1
  %826 = extractelement <2 x float> %825, i32 0
  %827 = inttoptr i64 %823 to float*
  store float %826, float* %827, align 4
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -580
  %830 = load i64, i64* %3, align 8
  %831 = add i64 %830, 6
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = add i32 %833, 1
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX.i1370, align 8
  %836 = icmp eq i32 %833, -1
  %837 = icmp eq i32 %834, 0
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %834, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %834, %833
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %27, align 1
  %849 = zext i1 %837 to i8
  store i8 %849, i8* %30, align 1
  %850 = lshr i32 %834, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %33, align 1
  %852 = lshr i32 %833, 31
  %853 = xor i32 %850, %852
  %854 = add nuw nsw i32 %853, %850
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %39, align 1
  %857 = add i64 %830, 15
  store i64 %857, i64* %3, align 8
  store i32 %834, i32* %832, align 4
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, -110
  store i64 %859, i64* %3, align 8
  br label %block_.L_41fc79

block_.L_41fcec:                                  ; preds = %block_.L_41fc79
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %861 = bitcast [32 x %union.VectorReg]* %860 to i8*
  %862 = add i64 %766, ptrtoint (%G_0x34b94__rip__type* @G_0x34b94__rip_ to i64)
  %863 = add i64 %766, 8
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  %866 = bitcast [32 x %union.VectorReg]* %860 to double*
  %867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %860, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %865, i64* %867, align 1
  %868 = bitcast i64* %727 to double*
  store double 0.000000e+00, double* %868, align 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %870 = bitcast %union.VectorReg* %869 to i8*
  %871 = add i64 %766, add (i64 ptrtoint (%G_0x34b94__rip__type* @G_0x34b94__rip_ to i64), i64 8)
  %872 = add i64 %766, 16
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  %875 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %869, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %874, i64* %875, align 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %877 = bitcast i64* %876 to double*
  store double 0.000000e+00, double* %877, align 1
  %878 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %879 = add i32 %878, -3
  %880 = icmp ult i32 %878, 3
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %14, align 1
  %882 = and i32 %879, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i32 %879, %878
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %27, align 1
  %891 = icmp eq i32 %879, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %30, align 1
  %893 = lshr i32 %879, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %33, align 1
  %895 = lshr i32 %878, 31
  %896 = xor i32 %893, %895
  %897 = add nuw nsw i32 %896, %895
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %39, align 1
  %900 = add i64 %733, -600
  %901 = add i64 %766, 32
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i64*
  store i64 %874, i64* %902, align 8
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -608
  %905 = load i64, i64* %3, align 8
  %906 = add i64 %905, 8
  store i64 %906, i64* %3, align 8
  %907 = load i64, i64* %867, align 1
  %908 = inttoptr i64 %904 to i64*
  store i64 %907, i64* %908, align 8
  %909 = load i64, i64* %3, align 8
  %910 = load i8, i8* %30, align 1
  %911 = icmp ne i8 %910, 0
  %.v799 = select i1 %911, i64 22, i64 6
  %912 = add i64 %909, %.v799
  store i64 %912, i64* %3, align 8
  %cmpBr_41fd14 = icmp eq i8 %910, 1
  br i1 %cmpBr_41fd14, label %block_.L_41fd2a, label %block_41fd1a

block_41fd1a:                                     ; preds = %block_.L_41fcec
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -600
  %915 = add i64 %912, 8
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %867, align 1
  store double 0.000000e+00, double* %868, align 1
  %918 = add i64 %913, -608
  %919 = add i64 %912, 16
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i64*
  store i64 %917, i64* %920, align 8
  %.pre503 = load i64, i64* %3, align 8
  br label %block_.L_41fd2a

block_.L_41fd2a:                                  ; preds = %block_41fd1a, %block_.L_41fcec
  %921 = phi i64 [ %.pre503, %block_41fd1a ], [ %912, %block_.L_41fcec ]
  %922 = load i64, i64* %RBP.i, align 8
  %923 = add i64 %922, -608
  %924 = add i64 %921, 8
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  %.cast = bitcast i64 %926 to <2 x i32>
  %927 = bitcast i64* %727 to <2 x i32>*
  %.cast74 = bitcast i64 %926 to double
  %928 = fptrunc double %.cast74 to float
  %929 = bitcast [32 x %union.VectorReg]* %860 to float*
  store float %928, float* %929, align 1
  %930 = extractelement <2 x i32> %.cast, i32 1
  %931 = getelementptr inbounds i8, i8* %861, i64 4
  %932 = bitcast i8* %931 to i32*
  store i32 %930, i32* %932, align 1
  %933 = bitcast i64* %727 to i32*
  store i32 0, i32* %933, align 1
  %934 = getelementptr inbounds i8, i8* %861, i64 12
  %935 = bitcast i8* %934 to i32*
  store i32 0, i32* %935, align 1
  %936 = add i64 %922, -32
  %937 = add i64 %921, 16
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX.i1370, align 8
  %940 = add i64 %939, 304
  %941 = add i64 %921, 24
  store i64 %941, i64* %3, align 8
  %942 = bitcast [32 x %union.VectorReg]* %860 to <2 x float>*
  %943 = load <2 x float>, <2 x float>* %942, align 1
  %944 = extractelement <2 x float> %943, i32 0
  %945 = inttoptr i64 %940 to float*
  store float %944, float* %945, align 4
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -16
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 4
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %947 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %RAX.i1370, align 8
  %952 = add i64 %948, 7
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RDI.i1148, align 8
  %955 = add i64 %948, -124850
  %956 = add i64 %948, 12
  %957 = load i64, i64* %6, align 8
  %958 = add i64 %957, -8
  %959 = inttoptr i64 %958 to i64*
  store i64 %956, i64* %959, align 8
  store i64 %958, i64* %6, align 8
  store i64 %955, i64* %3, align 8
  %call2_41fd49 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %955, %struct.Memory* %704)
  %960 = load i32, i32* %EAX.i1382, align 4
  %961 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %962 = and i32 %960, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %967 = icmp eq i32 %960, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %30, align 1
  %969 = lshr i32 %960, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v560 = select i1 %967, i64 14, i64 9
  %971 = add i64 %961, %.v560
  store i64 %971, i64* %3, align 8
  br i1 %967, label %block_.L_41fd5c, label %block_41fd57

block_41fd57:                                     ; preds = %block_.L_41fd2a
  %972 = add i64 %971, 2366
  br label %block_.L_420695

block_.L_41fd5c:                                  ; preds = %block_.L_41fd2a
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -572
  %975 = add i64 %971, 7
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, -1
  %979 = icmp eq i32 %977, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %14, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %21, align 1
  %986 = xor i32 %978, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %27, align 1
  %990 = icmp eq i32 %978, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %30, align 1
  %992 = lshr i32 %978, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %33, align 1
  %994 = lshr i32 %977, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %39, align 1
  %999 = icmp ne i8 %993, 0
  %1000 = xor i1 %999, %997
  %.v561 = select i1 %1000, i64 13, i64 18
  %1001 = add i64 %971, %.v561
  store i64 %1001, i64* %3, align 8
  br i1 %1000, label %block_41fd69, label %block_.L_41fd6e

block_41fd69:                                     ; preds = %block_.L_41fd5c
  %1002 = add i64 %1001, 2348
  br label %block_.L_420695

block_.L_41fd6e:                                  ; preds = %block_.L_41fd5c
  %1003 = add i64 %973, -32
  %1004 = add i64 %1001, 4
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i64*
  %1006 = load i64, i64* %1005, align 8
  store i64 %1006, i64* %RAX.i1370, align 8
  %1007 = add i64 %1001, 8
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i8 0, i8* %14, align 1
  %1010 = trunc i64 %1009 to i32
  %1011 = and i32 %1010, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1016 = icmp eq i64 %1009, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %30, align 1
  %1018 = lshr i64 %1009, 63
  %1019 = trunc i64 %1018 to i8
  store i8 %1019, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v562 = select i1 %1016, i64 14, i64 19
  %1020 = add i64 %1001, %.v562
  store i64 %1020, i64* %3, align 8
  br i1 %1016, label %block_41fd7c, label %block_.L_41fd81

block_41fd7c:                                     ; preds = %block_.L_41fd6e
  %1021 = add i64 %1020, 2329
  br label %block_.L_420695

block_.L_41fd81:                                  ; preds = %block_.L_41fd6e
  %1022 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1023 = and i32 %1022, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1028 = icmp eq i32 %1022, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %30, align 1
  %1030 = lshr i32 %1022, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v563 = select i1 %1028, i64 14, i64 19
  %1032 = add i64 %1020, %.v563
  store i64 %1032, i64* %3, align 8
  br i1 %1028, label %block_41fd8f, label %block_.L_41fd94

block_41fd8f:                                     ; preds = %block_.L_41fd81
  %1033 = add i64 %1032, 2310
  br label %block_.L_420695

block_.L_41fd94:                                  ; preds = %block_.L_41fd81
  %1034 = add i64 %1032, 4
  store i64 %1034, i64* %3, align 8
  %1035 = load i64, i64* %1005, align 8
  store i64 %1035, i64* %RDI.i1148, align 8
  %1036 = add i64 %1032, 10
  store i64 %1036, i64* %3, align 8
  %1037 = load i32, i32* %976, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RSI.i1177, align 8
  %1039 = add i64 %1032, 74300
  %1040 = add i64 %1032, 15
  %1041 = load i64, i64* %6, align 8
  %1042 = add i64 %1041, -8
  %1043 = inttoptr i64 %1042 to i64*
  store i64 %1040, i64* %1043, align 8
  store i64 %1042, i64* %6, align 8
  store i64 %1039, i64* %3, align 8
  %call2_41fd9e = tail call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* nonnull %0, i64 %1039, %struct.Memory* %call2_41fd49)
  %1044 = load i64, i64* %RBP.i, align 8
  %1045 = add i64 %1044, -32
  %1046 = load i64, i64* %3, align 8
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1045 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %RDI.i1148, align 8
  %1050 = add i64 %1046, 76877
  %1051 = add i64 %1046, 9
  %1052 = load i64, i64* %6, align 8
  %1053 = add i64 %1052, -8
  %1054 = inttoptr i64 %1053 to i64*
  store i64 %1051, i64* %1054, align 8
  store i64 %1053, i64* %6, align 8
  store i64 %1050, i64* %3, align 8
  %call2_41fda7 = tail call %struct.Memory* @sub_4329f0.ZeroPlan7(%struct.State* nonnull %0, i64 %1050, %struct.Memory* %call2_41fd9e)
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -32
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %RDI.i1148, align 8
  %1061 = add i64 %1057, 83140
  %1062 = add i64 %1057, 9
  %1063 = load i64, i64* %6, align 8
  %1064 = add i64 %1063, -8
  %1065 = inttoptr i64 %1064 to i64*
  store i64 %1062, i64* %1065, align 8
  store i64 %1064, i64* %6, align 8
  store i64 %1061, i64* %3, align 8
  %call2_41fdb0 = tail call %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* nonnull %0, i64 %1061, %struct.Memory* %call2_41fda7)
  %1066 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i1177, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -40
  %1069 = add i64 %1066, 9
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RDI.i1148, align 8
  %1072 = add i64 %1066, 36539
  %1073 = add i64 %1066, 14
  %1074 = load i64, i64* %6, align 8
  %1075 = add i64 %1074, -8
  %1076 = inttoptr i64 %1075 to i64*
  store i64 %1073, i64* %1076, align 8
  store i64 %1075, i64* %6, align 8
  store i64 %1072, i64* %3, align 8
  %call2_41fdbe = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1072, %struct.Memory* %call2_41fdb0)
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -568
  %1079 = load i64, i64* %RAX.i1370, align 8
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 7
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1078 to i64*
  store i64 %1079, i64* %1082, align 8
  %1083 = load i64, i64* %RAX.i1370, align 8
  %1084 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1085 = trunc i64 %1083 to i32
  %1086 = and i32 %1085, 255
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  store i8 %1090, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1091 = icmp eq i64 %1083, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %30, align 1
  %1093 = lshr i64 %1083, 63
  %1094 = trunc i64 %1093 to i8
  store i8 %1094, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v564 = select i1 %1091, i64 10, i64 15
  %1095 = add i64 %1084, %.v564
  store i64 %1095, i64* %3, align 8
  br i1 %1091, label %block_41fdd4, label %block_.L_41fdd9

block_41fdd4:                                     ; preds = %block_.L_41fd94
  %1096 = add i64 %1095, 2241
  br label %block_.L_420695

block_.L_41fdd9:                                  ; preds = %block_.L_41fd94
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -580
  %1099 = add i64 %1095, 10
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  store i32 0, i32* %1100, align 4
  %.pre504 = load i64, i64* %3, align 8
  br label %block_.L_41fde3

block_.L_41fde3:                                  ; preds = %block_.L_41fe1a, %block_.L_41fdd9
  %1101 = phi i64 [ %1195, %block_.L_41fe1a ], [ %.pre504, %block_.L_41fdd9 ]
  %1102 = load i64, i64* %RBP.i, align 8
  %1103 = add i64 %1102, -580
  %1104 = add i64 %1101, 6
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX.i1370, align 8
  %1108 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1109 = sub i32 %1106, %1108
  %1110 = icmp ult i32 %1106, %1108
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %14, align 1
  %1112 = and i32 %1109, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112)
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %21, align 1
  %1117 = xor i32 %1108, %1106
  %1118 = xor i32 %1117, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %27, align 1
  %1122 = icmp eq i32 %1109, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1109, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  %1126 = lshr i32 %1106, 31
  %1127 = lshr i32 %1108, 31
  %1128 = xor i32 %1127, %1126
  %1129 = xor i32 %1124, %1126
  %1130 = add nuw nsw i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %39, align 1
  %1133 = icmp ne i8 %1125, 0
  %1134 = xor i1 %1133, %1131
  %.v565 = select i1 %1134, i64 19, i64 80
  %1135 = add i64 %1101, %.v565
  store i64 1, i64* %RSI.i1177, align 8
  %1136 = add i64 %1102, -40
  %1137 = add i64 %1135, 9
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RDI.i1148, align 8
  br i1 %1134, label %block_41fdf6, label %block_.L_41fe33

block_41fdf6:                                     ; preds = %block_.L_41fde3
  %1140 = add i64 %1135, 36474
  %1141 = add i64 %1135, 14
  %1142 = load i64, i64* %6, align 8
  %1143 = add i64 %1142, -8
  %1144 = inttoptr i64 %1143 to i64*
  store i64 %1141, i64* %1144, align 8
  store i64 %1143, i64* %6, align 8
  store i64 %1140, i64* %3, align 8
  %call2_41fdff = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1140, %struct.Memory* %call2_41fdbe)
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -568
  %1147 = load i64, i64* %RAX.i1370, align 8
  %1148 = load i64, i64* %3, align 8
  %1149 = add i64 %1148, 7
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1146 to i64*
  store i64 %1147, i64* %1150, align 8
  %1151 = load i64, i64* %RAX.i1370, align 8
  %1152 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1153 = trunc i64 %1151 to i32
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1159 = icmp eq i64 %1151, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %30, align 1
  %1161 = lshr i64 %1151, 63
  %1162 = trunc i64 %1161 to i8
  store i8 %1162, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v604 = select i1 %1159, i64 10, i64 15
  %1163 = add i64 %1152, %.v604
  store i64 %1163, i64* %3, align 8
  br i1 %1159, label %block_41fe15, label %block_.L_41fe1a

block_41fe15:                                     ; preds = %block_41fdf6
  %1164 = add i64 %1163, 2176
  br label %block_.L_420695

block_.L_41fe1a:                                  ; preds = %block_41fdf6
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -580
  %1167 = add i64 %1163, 11
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = add i32 %1169, 1
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RAX.i1370, align 8
  %1172 = icmp eq i32 %1169, -1
  %1173 = icmp eq i32 %1170, 0
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %14, align 1
  %1176 = and i32 %1170, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %21, align 1
  %1181 = xor i32 %1170, %1169
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %27, align 1
  %1185 = zext i1 %1173 to i8
  store i8 %1185, i8* %30, align 1
  %1186 = lshr i32 %1170, 31
  %1187 = trunc i32 %1186 to i8
  store i8 %1187, i8* %33, align 1
  %1188 = lshr i32 %1169, 31
  %1189 = xor i32 %1186, %1188
  %1190 = add nuw nsw i32 %1189, %1186
  %1191 = icmp eq i32 %1190, 2
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %39, align 1
  %1193 = add i64 %1163, 20
  store i64 %1193, i64* %3, align 8
  store i32 %1170, i32* %1168, align 4
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, -75
  store i64 %1195, i64* %3, align 8
  br label %block_.L_41fde3

block_.L_41fe33:                                  ; preds = %block_.L_41fde3
  %1196 = add i64 %1135, 36413
  %1197 = add i64 %1135, 14
  %1198 = load i64, i64* %6, align 8
  %1199 = add i64 %1198, -8
  %1200 = inttoptr i64 %1199 to i64*
  store i64 %1197, i64* %1200, align 8
  store i64 %1199, i64* %6, align 8
  store i64 %1196, i64* %3, align 8
  %call2_41fe3c = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1196, %struct.Memory* %call2_41fdbe)
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -568
  %1203 = load i64, i64* %RAX.i1370, align 8
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, 7
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1202 to i64*
  store i64 %1203, i64* %1206, align 8
  %1207 = load i64, i64* %RAX.i1370, align 8
  %1208 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1209 = trunc i64 %1207 to i32
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1215 = icmp eq i64 %1207, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %30, align 1
  %1217 = lshr i64 %1207, 63
  %1218 = trunc i64 %1217 to i8
  store i8 %1218, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v566 = select i1 %1215, i64 10, i64 15
  %1219 = add i64 %1208, %.v566
  store i64 %1219, i64* %3, align 8
  br i1 %1215, label %block_41fe52, label %block_.L_41fe57

block_41fe52:                                     ; preds = %block_.L_41fe33
  %1220 = add i64 %1219, 2115
  br label %block_.L_420695

block_.L_41fe57:                                  ; preds = %block_.L_41fe33
  %1221 = add i64 %1219, ptrtoint (%G_0x348c9__rip__type* @G_0x348c9__rip_ to i64)
  %1222 = add i64 %1219, 8
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = bitcast [32 x %union.VectorReg]* %860 to i32*
  store i32 %1224, i32* %1225, align 1
  %1226 = bitcast i8* %931 to float*
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  %1227 = bitcast i8* %934 to float*
  store float 0.000000e+00, float* %1227, align 1
  %1228 = load i64, i64* %RBP.i, align 8
  %1229 = add i64 %1228, -568
  %1230 = add i64 %1219, 15
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %RDI.i1148, align 8
  %1233 = add i64 %1219, 6441
  %1234 = add i64 %1219, 20
  %1235 = load i64, i64* %6, align 8
  %1236 = add i64 %1235, -8
  %1237 = inttoptr i64 %1236 to i64*
  store i64 %1234, i64* %1237, align 8
  store i64 %1236, i64* %6, align 8
  store i64 %1233, i64* %3, align 8
  %call2_41fe66 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %1233, %struct.Memory* %call2_41fe3c)
  %1238 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i1177, align 8
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -32
  %1241 = add i64 %1238, 9
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RDI.i1148, align 8
  %1244 = add i64 %1243, 208
  %1245 = add i64 %1238, 16
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %RDI.i1148, align 8
  %1248 = add i64 %1247, 4
  %1249 = add i64 %1238, 21
  store i64 %1249, i64* %3, align 8
  %1250 = load <2 x float>, <2 x float>* %942, align 1
  %1251 = extractelement <2 x float> %1250, i32 0
  %1252 = inttoptr i64 %1248 to float*
  store float %1251, float* %1252, align 4
  %1253 = load i64, i64* %RBP.i, align 8
  %1254 = add i64 %1253, -40
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1254 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RDI.i1148, align 8
  %1259 = add i64 %1255, 36336
  %1260 = add i64 %1255, 9
  %1261 = load i64, i64* %6, align 8
  %1262 = add i64 %1261, -8
  %1263 = inttoptr i64 %1262 to i64*
  store i64 %1260, i64* %1263, align 8
  store i64 %1262, i64* %6, align 8
  store i64 %1259, i64* %3, align 8
  %call2_41fe84 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1259, %struct.Memory* %call2_41fe66)
  %1264 = load i64, i64* %RBP.i, align 8
  %1265 = add i64 %1264, -568
  %1266 = load i64, i64* %RAX.i1370, align 8
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 7
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1265 to i64*
  store i64 %1266, i64* %1269, align 8
  %1270 = load i64, i64* %RAX.i1370, align 8
  %1271 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1272 = trunc i64 %1270 to i32
  %1273 = and i32 %1272, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1278 = icmp eq i64 %1270, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %30, align 1
  %1280 = lshr i64 %1270, 63
  %1281 = trunc i64 %1280 to i8
  store i8 %1281, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v567 = select i1 %1278, i64 10, i64 15
  %1282 = add i64 %1271, %.v567
  store i64 %1282, i64* %3, align 8
  br i1 %1278, label %block_41fe9a, label %block_.L_41fe9f

block_41fe9a:                                     ; preds = %block_.L_41fe57
  %1283 = add i64 %1282, 2043
  br label %block_.L_420695

block_.L_41fe9f:                                  ; preds = %block_.L_41fe57
  %1284 = add i64 %1282, ptrtoint (%G_0x34881__rip__type* @G_0x34881__rip_ to i64)
  %1285 = add i64 %1282, 8
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  store i32 %1287, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -568
  %1290 = add i64 %1282, 15
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RDI.i1148, align 8
  %1293 = add i64 %1282, 6369
  %1294 = add i64 %1282, 20
  %1295 = load i64, i64* %6, align 8
  %1296 = add i64 %1295, -8
  %1297 = inttoptr i64 %1296 to i64*
  store i64 %1294, i64* %1297, align 8
  store i64 %1296, i64* %6, align 8
  store i64 %1293, i64* %3, align 8
  %call2_41feae = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %1293, %struct.Memory* %call2_41fe84)
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -32
  %1300 = load i64, i64* %3, align 8
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1299 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDI.i1148, align 8
  %1304 = add i64 %1303, 168
  %1305 = add i64 %1300, 12
  store i64 %1305, i64* %3, align 8
  %1306 = load <2 x float>, <2 x float>* %942, align 1
  %1307 = extractelement <2 x float> %1306, i32 0
  %1308 = inttoptr i64 %1304 to float*
  store float %1307, float* %1308, align 4
  %1309 = load i64, i64* %RBP.i, align 8
  %1310 = add i64 %1309, -32
  %1311 = load i64, i64* %3, align 8
  %1312 = add i64 %1311, 4
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1310 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RDI.i1148, align 8
  %1315 = add i64 %1314, 208
  %1316 = add i64 %1311, 11
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i64*
  %1318 = load i64, i64* %1317, align 8
  store i64 %1318, i64* %RDI.i1148, align 8
  %1319 = add i64 %1318, 4
  %1320 = add i64 %1311, 16
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  store i32 %1322, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %1323 = add i64 %1311, 20
  store i64 %1323, i64* %3, align 8
  %1324 = load i64, i64* %1313, align 8
  store i64 %1324, i64* %RDI.i1148, align 8
  %1325 = add i64 %1324, 208
  %1326 = add i64 %1311, 27
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i64*
  %1328 = load i64, i64* %1327, align 8
  store i64 %1328, i64* %RDI.i1148, align 8
  %1329 = add i64 %1328, 4
  %1330 = add i64 %1311, 32
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  %1332 = load i32, i32* %1331, align 4
  %1333 = bitcast %union.VectorReg* %869 to float*
  %1334 = bitcast %union.VectorReg* %869 to i32*
  store i32 %1332, i32* %1334, align 1
  %1335 = getelementptr inbounds i8, i8* %870, i64 4
  %1336 = bitcast i8* %1335 to float*
  store float 0.000000e+00, float* %1336, align 1
  %1337 = bitcast i64* %876 to float*
  store float 0.000000e+00, float* %1337, align 1
  %1338 = getelementptr inbounds i8, i8* %870, i64 12
  %1339 = bitcast i8* %1338 to float*
  store float 0.000000e+00, float* %1339, align 1
  %1340 = add i64 %1311, 36
  store i64 %1340, i64* %3, align 8
  %1341 = load i64, i64* %1313, align 8
  store i64 %1341, i64* %RDI.i1148, align 8
  %1342 = add i64 %1341, 168
  %1343 = add i64 %1311, 44
  store i64 %1343, i64* %3, align 8
  %1344 = bitcast %union.VectorReg* %869 to <2 x float>*
  %1345 = load <2 x float>, <2 x float>* %1344, align 1
  %1346 = bitcast i64* %876 to <2 x i32>*
  %1347 = load <2 x i32>, <2 x i32>* %1346, align 1
  %1348 = inttoptr i64 %1342 to float*
  %1349 = load float, float* %1348, align 4
  %1350 = extractelement <2 x float> %1345, i32 0
  %1351 = fadd float %1350, %1349
  store float %1351, float* %1333, align 1
  %1352 = bitcast <2 x float> %1345 to <2 x i32>
  %1353 = extractelement <2 x i32> %1352, i32 1
  %1354 = bitcast i8* %1335 to i32*
  store i32 %1353, i32* %1354, align 1
  %1355 = extractelement <2 x i32> %1347, i32 0
  %1356 = bitcast i64* %876 to i32*
  store i32 %1355, i32* %1356, align 1
  %1357 = extractelement <2 x i32> %1347, i32 1
  %1358 = bitcast i8* %1338 to i32*
  store i32 %1357, i32* %1358, align 1
  %1359 = load <2 x float>, <2 x float>* %942, align 1
  %1360 = load <2 x i32>, <2 x i32>* %927, align 1
  %1361 = load <2 x float>, <2 x float>* %1344, align 1
  %1362 = extractelement <2 x float> %1359, i32 0
  %1363 = extractelement <2 x float> %1361, i32 0
  %1364 = fdiv float %1362, %1363
  store float %1364, float* %929, align 1
  %1365 = bitcast <2 x float> %1359 to <2 x i32>
  %1366 = extractelement <2 x i32> %1365, i32 1
  store i32 %1366, i32* %932, align 1
  %1367 = extractelement <2 x i32> %1360, i32 0
  store i32 %1367, i32* %933, align 1
  %1368 = extractelement <2 x i32> %1360, i32 1
  store i32 %1368, i32* %935, align 1
  %1369 = add i64 %1311, 52
  store i64 %1369, i64* %3, align 8
  %1370 = load i64, i64* %1313, align 8
  store i64 %1370, i64* %RDI.i1148, align 8
  %1371 = add i64 %1370, 208
  %1372 = add i64 %1311, 59
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RDI.i1148, align 8
  %1375 = add i64 %1374, 4
  %1376 = add i64 %1311, 64
  store i64 %1376, i64* %3, align 8
  %1377 = load <2 x float>, <2 x float>* %942, align 1
  %1378 = extractelement <2 x float> %1377, i32 0
  %1379 = inttoptr i64 %1375 to float*
  store float %1378, float* %1379, align 4
  %1380 = load i64, i64* %RBP.i, align 8
  %1381 = add i64 %1380, -32
  %1382 = load i64, i64* %3, align 8
  %1383 = add i64 %1382, 4
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1381 to i64*
  %1385 = load i64, i64* %1384, align 8
  store i64 %1385, i64* %RDI.i1148, align 8
  %1386 = add i64 %1385, 168
  %1387 = add i64 %1382, 12
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  store i32 %1389, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %1390 = add i64 %1382, 16
  store i64 %1390, i64* %3, align 8
  %1391 = load i64, i64* %1384, align 8
  store i64 %1391, i64* %RDI.i1148, align 8
  %1392 = add i64 %1391, 208
  %1393 = add i64 %1382, 23
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RDI.i1148, align 8
  %1396 = add i64 %1395, 4
  %1397 = add i64 %1382, 28
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  store i32 %1399, i32* %1334, align 1
  store float 0.000000e+00, float* %1336, align 1
  store float 0.000000e+00, float* %1337, align 1
  store float 0.000000e+00, float* %1339, align 1
  %1400 = add i64 %1382, 32
  store i64 %1400, i64* %3, align 8
  %1401 = load i64, i64* %1384, align 8
  store i64 %1401, i64* %RDI.i1148, align 8
  %1402 = add i64 %1401, 168
  %1403 = add i64 %1382, 40
  store i64 %1403, i64* %3, align 8
  %1404 = load <2 x float>, <2 x float>* %1344, align 1
  %1405 = load <2 x i32>, <2 x i32>* %1346, align 1
  %1406 = inttoptr i64 %1402 to float*
  %1407 = load float, float* %1406, align 4
  %1408 = extractelement <2 x float> %1404, i32 0
  %1409 = fadd float %1408, %1407
  store float %1409, float* %1333, align 1
  %1410 = bitcast <2 x float> %1404 to <2 x i32>
  %1411 = extractelement <2 x i32> %1410, i32 1
  store i32 %1411, i32* %1354, align 1
  %1412 = extractelement <2 x i32> %1405, i32 0
  store i32 %1412, i32* %1356, align 1
  %1413 = extractelement <2 x i32> %1405, i32 1
  store i32 %1413, i32* %1358, align 1
  %1414 = load <2 x float>, <2 x float>* %942, align 1
  %1415 = load <2 x i32>, <2 x i32>* %927, align 1
  %1416 = load <2 x float>, <2 x float>* %1344, align 1
  %1417 = extractelement <2 x float> %1414, i32 0
  %1418 = extractelement <2 x float> %1416, i32 0
  %1419 = fdiv float %1417, %1418
  store float %1419, float* %929, align 1
  %1420 = bitcast <2 x float> %1414 to <2 x i32>
  %1421 = extractelement <2 x i32> %1420, i32 1
  store i32 %1421, i32* %932, align 1
  %1422 = extractelement <2 x i32> %1415, i32 0
  store i32 %1422, i32* %933, align 1
  %1423 = extractelement <2 x i32> %1415, i32 1
  store i32 %1423, i32* %935, align 1
  %1424 = add i64 %1382, 48
  store i64 %1424, i64* %3, align 8
  %1425 = load i64, i64* %1384, align 8
  store i64 %1425, i64* %RDI.i1148, align 8
  %1426 = add i64 %1425, 168
  %1427 = add i64 %1382, 56
  store i64 %1427, i64* %3, align 8
  %1428 = load <2 x float>, <2 x float>* %942, align 1
  %1429 = extractelement <2 x float> %1428, i32 0
  %1430 = inttoptr i64 %1426 to float*
  store float %1429, float* %1430, align 4
  %1431 = load i64, i64* %RBP.i, align 8
  %1432 = add i64 %1431, -580
  %1433 = load i64, i64* %3, align 8
  %1434 = add i64 %1433, 10
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1432 to i32*
  store i32 0, i32* %1435, align 4
  %.pre505 = load i64, i64* %3, align 8
  br label %block_.L_41ff41

block_.L_41ff41:                                  ; preds = %block_.L_41ff72, %block_.L_41fe9f
  %1436 = phi i64 [ %1526, %block_.L_41ff72 ], [ %.pre505, %block_.L_41fe9f ]
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -580
  %1439 = add i64 %1436, 7
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = add i32 %1441, -7
  %1443 = icmp ult i32 %1441, 7
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1442, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1442, %1441
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %27, align 1
  %1454 = icmp eq i32 %1442, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %30, align 1
  %1456 = lshr i32 %1442, 31
  %1457 = trunc i32 %1456 to i8
  store i8 %1457, i8* %33, align 1
  %1458 = lshr i32 %1441, 31
  %1459 = xor i32 %1456, %1458
  %1460 = add nuw nsw i32 %1459, %1458
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %39, align 1
  %1463 = icmp ne i8 %1457, 0
  %1464 = xor i1 %1463, %1461
  %.v568 = select i1 %1464, i64 13, i64 74
  %1465 = add i64 %1436, %.v568
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %3, align 8
  br i1 %1464, label %block_41ff4e, label %block_.L_41ff8b

block_41ff4e:                                     ; preds = %block_.L_41ff41
  store i64 1, i64* %RSI.i1177, align 8
  %1467 = add i64 %1437, -40
  %1468 = add i64 %1465, 9
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RDI.i1148, align 8
  %1471 = add i64 %1465, 36130
  %1472 = add i64 %1465, 14
  %1473 = load i64, i64* %6, align 8
  %1474 = add i64 %1473, -8
  %1475 = inttoptr i64 %1474 to i64*
  store i64 %1472, i64* %1475, align 8
  store i64 %1474, i64* %6, align 8
  store i64 %1471, i64* %3, align 8
  %call2_41ff57 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1471, %struct.Memory* %call2_41feae)
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -568
  %1478 = load i64, i64* %RAX.i1370, align 8
  %1479 = load i64, i64* %3, align 8
  %1480 = add i64 %1479, 7
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1477 to i64*
  store i64 %1478, i64* %1481, align 8
  %1482 = load i64, i64* %RAX.i1370, align 8
  %1483 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1484 = trunc i64 %1482 to i32
  %1485 = and i32 %1484, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1490 = icmp eq i64 %1482, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %30, align 1
  %1492 = lshr i64 %1482, 63
  %1493 = trunc i64 %1492 to i8
  store i8 %1493, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v603 = select i1 %1490, i64 10, i64 15
  %1494 = add i64 %1483, %.v603
  store i64 %1494, i64* %3, align 8
  br i1 %1490, label %block_41ff6d, label %block_.L_41ff72

block_41ff6d:                                     ; preds = %block_41ff4e
  %1495 = add i64 %1494, 1832
  br label %block_.L_420695

block_.L_41ff72:                                  ; preds = %block_41ff4e
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -580
  %1498 = add i64 %1494, 11
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = add i32 %1500, 1
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RAX.i1370, align 8
  %1503 = icmp eq i32 %1500, -1
  %1504 = icmp eq i32 %1501, 0
  %1505 = or i1 %1503, %1504
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %14, align 1
  %1507 = and i32 %1501, 255
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %21, align 1
  %1512 = xor i32 %1501, %1500
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  store i8 %1515, i8* %27, align 1
  %1516 = zext i1 %1504 to i8
  store i8 %1516, i8* %30, align 1
  %1517 = lshr i32 %1501, 31
  %1518 = trunc i32 %1517 to i8
  store i8 %1518, i8* %33, align 1
  %1519 = lshr i32 %1500, 31
  %1520 = xor i32 %1517, %1519
  %1521 = add nuw nsw i32 %1520, %1517
  %1522 = icmp eq i32 %1521, 2
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %39, align 1
  %1524 = add i64 %1494, 20
  store i64 %1524, i64* %3, align 8
  store i32 %1501, i32* %1499, align 4
  %1525 = load i64, i64* %3, align 8
  %1526 = add i64 %1525, -69
  store i64 %1526, i64* %3, align 8
  br label %block_.L_41ff41

block_.L_41ff8b:                                  ; preds = %block_.L_41ff41
  store i64 4, i64* %RSI.i1177, align 8
  %1527 = add i64 %1437, -40
  %1528 = add i64 %1465, 9
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  store i64 %1530, i64* %RDI.i1148, align 8
  %1531 = add i64 %1465, 36069
  %1532 = add i64 %1465, 14
  %1533 = load i64, i64* %6, align 8
  %1534 = add i64 %1533, -8
  %1535 = inttoptr i64 %1534 to i64*
  store i64 %1532, i64* %1535, align 8
  store i64 %1534, i64* %6, align 8
  store i64 %1531, i64* %3, align 8
  %call2_41ff94 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1531, %struct.Memory* %call2_41feae)
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -568
  %1538 = load i64, i64* %RAX.i1370, align 8
  %1539 = load i64, i64* %3, align 8
  %1540 = add i64 %1539, 7
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1537 to i64*
  store i64 %1538, i64* %1541, align 8
  %1542 = load i64, i64* %RAX.i1370, align 8
  %1543 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1544 = trunc i64 %1542 to i32
  %1545 = and i32 %1544, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1550 = icmp eq i64 %1542, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %30, align 1
  %1552 = lshr i64 %1542, 63
  %1553 = trunc i64 %1552 to i8
  store i8 %1553, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v569 = select i1 %1550, i64 10, i64 15
  %1554 = add i64 %1543, %.v569
  store i64 %1554, i64* %3, align 8
  br i1 %1550, label %block_41ffaa, label %block_.L_41ffaf

block_41ffaa:                                     ; preds = %block_.L_41ff8b
  %1555 = add i64 %1554, 1771
  br label %block_.L_420695

block_.L_41ffaf:                                  ; preds = %block_.L_41ff8b
  store i64 4, i64* %RSI.i1177, align 8
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -40
  %1558 = add i64 %1554, 9
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i64*
  %1560 = load i64, i64* %1559, align 8
  store i64 %1560, i64* %RDI.i1148, align 8
  %1561 = add i64 %1554, 36033
  %1562 = add i64 %1554, 14
  %1563 = load i64, i64* %6, align 8
  %1564 = add i64 %1563, -8
  %1565 = inttoptr i64 %1564 to i64*
  store i64 %1562, i64* %1565, align 8
  store i64 %1564, i64* %6, align 8
  store i64 %1561, i64* %3, align 8
  %call2_41ffb8 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1561, %struct.Memory* %call2_41ff94)
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -568
  %1568 = load i64, i64* %RAX.i1370, align 8
  %1569 = load i64, i64* %3, align 8
  %1570 = add i64 %1569, 7
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1567 to i64*
  store i64 %1568, i64* %1571, align 8
  %1572 = load i64, i64* %RAX.i1370, align 8
  %1573 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1574 = trunc i64 %1572 to i32
  %1575 = and i32 %1574, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1580 = icmp eq i64 %1572, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %30, align 1
  %1582 = lshr i64 %1572, 63
  %1583 = trunc i64 %1582 to i8
  store i8 %1583, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v570 = select i1 %1580, i64 10, i64 15
  %1584 = add i64 %1573, %.v570
  store i64 %1584, i64* %3, align 8
  br i1 %1580, label %block_41ffce, label %block_.L_41ffd3

block_41ffce:                                     ; preds = %block_.L_41ffaf
  %1585 = add i64 %1584, 1735
  br label %block_.L_420695

block_.L_41ffd3:                                  ; preds = %block_.L_41ffaf
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -576
  %1588 = add i64 %1584, 10
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  store i32 1, i32* %1589, align 4
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i733 = getelementptr inbounds %union.anon, %union.anon* %1590, i64 0, i32 0
  %CL.i197 = bitcast %union.anon* %1590 to i8*
  %.pre506 = load i64, i64* %3, align 8
  %1591 = bitcast [32 x %union.VectorReg]* %860 to <4 x i32>*
  %1592 = bitcast [32 x %union.VectorReg]* %860 to <4 x i32>*
  br label %block_.L_41ffdd

block_.L_41ffdd:                                  ; preds = %block_.L_4204fa, %block_.L_41ffd3
  %1593 = phi i64 [ %.pre506, %block_.L_41ffd3 ], [ %2922, %block_.L_4204fa ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_41ffb8, %block_.L_41ffd3 ], [ %call2_4204ae, %block_.L_4204fa ]
  %1594 = load i64, i64* %RBP.i, align 8
  %1595 = add i64 %1594, -576
  %1596 = add i64 %1593, 6
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX.i1370, align 8
  %1600 = add i64 %1594, -32
  %1601 = add i64 %1593, 10
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RCX.i733, align 8
  %1604 = add i64 %1603, 136
  %1605 = add i64 %1593, 16
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sub i32 %1598, %1607
  %1609 = icmp ult i32 %1598, %1607
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = and i32 %1608, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i32 %1607, %1598
  %1617 = xor i32 %1616, %1608
  %1618 = lshr i32 %1617, 4
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %27, align 1
  %1621 = icmp eq i32 %1608, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %30, align 1
  %1623 = lshr i32 %1608, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %33, align 1
  %1625 = lshr i32 %1598, 31
  %1626 = lshr i32 %1607, 31
  %1627 = xor i32 %1626, %1625
  %1628 = xor i32 %1623, %1625
  %1629 = add nuw nsw i32 %1628, %1627
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %39, align 1
  %1632 = icmp ne i8 %1624, 0
  %1633 = xor i1 %1632, %1630
  %.demorgan = or i1 %1621, %1633
  %.v571 = select i1 %.demorgan, i64 22, i64 1334
  %1634 = add i64 %1593, %.v571
  store i64 %1634, i64* %3, align 8
  br i1 %.demorgan, label %block_41fff3, label %block_.L_420513

block_41fff3:                                     ; preds = %block_.L_41ffdd
  store i64 1, i64* %RSI.i1177, align 8
  %1635 = add i64 %1594, -40
  %1636 = add i64 %1634, 9
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  %1638 = load i64, i64* %1637, align 8
  store i64 %1638, i64* %RDI.i1148, align 8
  %1639 = add i64 %1634, 35965
  %1640 = add i64 %1634, 14
  %1641 = load i64, i64* %6, align 8
  %1642 = add i64 %1641, -8
  %1643 = inttoptr i64 %1642 to i64*
  store i64 %1640, i64* %1643, align 8
  store i64 %1642, i64* %6, align 8
  store i64 %1639, i64* %3, align 8
  %call2_41fffc = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1639, %struct.Memory* %MEMORY.10)
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -568
  %1646 = load i64, i64* %RAX.i1370, align 8
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, 7
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1645 to i64*
  store i64 %1646, i64* %1649, align 8
  %1650 = load i64, i64* %RAX.i1370, align 8
  %1651 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1652 = trunc i64 %1650 to i32
  %1653 = and i32 %1652, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1658 = icmp eq i64 %1650, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %30, align 1
  %1660 = lshr i64 %1650, 63
  %1661 = trunc i64 %1660 to i8
  store i8 %1661, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v578 = select i1 %1658, i64 10, i64 15
  %1662 = add i64 %1651, %.v578
  store i64 %1662, i64* %3, align 8
  br i1 %1658, label %block_420012, label %block_.L_420017

block_420012:                                     ; preds = %block_41fff3
  %1663 = add i64 %1662, 1667
  br label %block_.L_420695

block_.L_420017:                                  ; preds = %block_41fff3
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -580
  %1666 = add i64 %1662, 10
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  store i32 0, i32* %1667, align 4
  %.pre507 = load i64, i64* %3, align 8
  br label %block_.L_420021

block_.L_420021:                                  ; preds = %block_.L_420058, %block_.L_420017
  %1668 = phi i64 [ %1819, %block_.L_420058 ], [ %.pre507, %block_.L_420017 ]
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -580
  %1671 = add i64 %1668, 6
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RAX.i1370, align 8
  %1675 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1676 = sub i32 %1673, %1675
  %1677 = icmp ult i32 %1673, %1675
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %14, align 1
  %1679 = and i32 %1676, 255
  %1680 = tail call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  store i8 %1683, i8* %21, align 1
  %1684 = xor i32 %1675, %1673
  %1685 = xor i32 %1684, %1676
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  store i8 %1688, i8* %27, align 1
  %1689 = icmp eq i32 %1676, 0
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %30, align 1
  %1691 = lshr i32 %1676, 31
  %1692 = trunc i32 %1691 to i8
  store i8 %1692, i8* %33, align 1
  %1693 = lshr i32 %1673, 31
  %1694 = lshr i32 %1675, 31
  %1695 = xor i32 %1694, %1693
  %1696 = xor i32 %1691, %1693
  %1697 = add nuw nsw i32 %1696, %1695
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %39, align 1
  %1700 = icmp ne i8 %1692, 0
  %1701 = xor i1 %1700, %1698
  %.v579 = select i1 %1701, i64 19, i64 141
  %1702 = add i64 %1668, %.v579
  store i64 1, i64* %RSI.i1177, align 8
  %1703 = add i64 %1669, -40
  %1704 = add i64 %1702, 9
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RDI.i1148, align 8
  br i1 %1701, label %block_420034, label %block_.L_4200ae

block_420034:                                     ; preds = %block_.L_420021
  %1707 = add i64 %1702, 35900
  %1708 = add i64 %1702, 14
  %1709 = load i64, i64* %6, align 8
  %1710 = add i64 %1709, -8
  %1711 = inttoptr i64 %1710 to i64*
  store i64 %1708, i64* %1711, align 8
  store i64 %1710, i64* %6, align 8
  store i64 %1707, i64* %3, align 8
  %call2_42003d = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1707, %struct.Memory* %MEMORY.10)
  %1712 = load i64, i64* %RBP.i, align 8
  %1713 = add i64 %1712, -568
  %1714 = load i64, i64* %RAX.i1370, align 8
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 7
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1713 to i64*
  store i64 %1714, i64* %1717, align 8
  %1718 = load i64, i64* %RAX.i1370, align 8
  %1719 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1720 = trunc i64 %1718 to i32
  %1721 = and i32 %1720, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1726 = icmp eq i64 %1718, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %30, align 1
  %1728 = lshr i64 %1718, 63
  %1729 = trunc i64 %1728 to i8
  store i8 %1729, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v602 = select i1 %1726, i64 10, i64 15
  %1730 = add i64 %1719, %.v602
  store i64 %1730, i64* %3, align 8
  br i1 %1726, label %block_420053, label %block_.L_420058

block_420053:                                     ; preds = %block_420034
  %1731 = add i64 %1730, 1602
  br label %block_.L_420695

block_.L_420058:                                  ; preds = %block_420034
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -568
  %1734 = add i64 %1730, 7
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i64*
  %1736 = load i64, i64* %1735, align 8
  store i64 %1736, i64* %RDI.i1148, align 8
  %1737 = add i64 %1732, -32
  %1738 = add i64 %1730, 11
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i64*
  %1740 = load i64, i64* %1739, align 8
  store i64 %1740, i64* %RAX.i1370, align 8
  %1741 = add i64 %1732, -580
  %1742 = add i64 %1730, 18
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i733, align 8
  %1746 = shl nsw i64 %1745, 2
  %1747 = add i64 %1740, 224
  %1748 = add i64 %1747, %1746
  %1749 = add i64 %1730, 27
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  store i32 %1751, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %1752 = add i64 %1730, 5928
  %1753 = add i64 %1730, 32
  %1754 = load i64, i64* %6, align 8
  %1755 = add i64 %1754, -8
  %1756 = inttoptr i64 %1755 to i64*
  store i64 %1753, i64* %1756, align 8
  store i64 %1755, i64* %6, align 8
  store i64 %1752, i64* %3, align 8
  %call2_420073 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %1752, %struct.Memory* %MEMORY.10)
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -32
  %1759 = load i64, i64* %3, align 8
  %1760 = add i64 %1759, 4
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1758 to i64*
  %1762 = load i64, i64* %1761, align 8
  store i64 %1762, i64* %RAX.i1370, align 8
  %1763 = add i64 %1762, 152
  %1764 = add i64 %1759, 11
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RAX.i1370, align 8
  %1767 = add i64 %1757, -576
  %1768 = add i64 %1759, 18
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = sext i32 %1770 to i64
  store i64 %1771, i64* %RCX.i733, align 8
  %1772 = shl nsw i64 %1771, 3
  %1773 = add i64 %1772, %1766
  %1774 = add i64 %1759, 22
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RAX.i1370, align 8
  %1777 = add i64 %1757, -580
  %1778 = add i64 %1759, 29
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = sext i32 %1780 to i64
  store i64 %1781, i64* %RCX.i733, align 8
  %1782 = shl nsw i64 %1781, 2
  %1783 = add i64 %1782, %1776
  %1784 = add i64 %1759, 34
  store i64 %1784, i64* %3, align 8
  %1785 = load <2 x float>, <2 x float>* %942, align 1
  %1786 = extractelement <2 x float> %1785, i32 0
  %1787 = inttoptr i64 %1783 to float*
  store float %1786, float* %1787, align 4
  %1788 = load i64, i64* %RBP.i, align 8
  %1789 = add i64 %1788, -580
  %1790 = load i64, i64* %3, align 8
  %1791 = add i64 %1790, 6
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1789 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = add i32 %1793, 1
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RAX.i1370, align 8
  %1796 = icmp eq i32 %1793, -1
  %1797 = icmp eq i32 %1794, 0
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %14, align 1
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i32 %1794, %1793
  %1806 = lshr i32 %1805, 4
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %27, align 1
  %1809 = zext i1 %1797 to i8
  store i8 %1809, i8* %30, align 1
  %1810 = lshr i32 %1794, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %33, align 1
  %1812 = lshr i32 %1793, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %39, align 1
  %1817 = add i64 %1790, 15
  store i64 %1817, i64* %3, align 8
  store i32 %1794, i32* %1792, align 4
  %1818 = load i64, i64* %3, align 8
  %1819 = add i64 %1818, -136
  store i64 %1819, i64* %3, align 8
  br label %block_.L_420021

block_.L_4200ae:                                  ; preds = %block_.L_420021
  %1820 = add i64 %1702, 35778
  %1821 = add i64 %1702, 14
  %1822 = load i64, i64* %6, align 8
  %1823 = add i64 %1822, -8
  %1824 = inttoptr i64 %1823 to i64*
  store i64 %1821, i64* %1824, align 8
  store i64 %1823, i64* %6, align 8
  store i64 %1820, i64* %3, align 8
  %call2_4200b7 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1820, %struct.Memory* %MEMORY.10)
  %1825 = load i64, i64* %RBP.i, align 8
  %1826 = add i64 %1825, -568
  %1827 = load i64, i64* %RAX.i1370, align 8
  %1828 = load i64, i64* %3, align 8
  %1829 = add i64 %1828, 7
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1826 to i64*
  store i64 %1827, i64* %1830, align 8
  %1831 = load i64, i64* %RAX.i1370, align 8
  %1832 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1833 = trunc i64 %1831 to i32
  %1834 = and i32 %1833, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1839 = icmp eq i64 %1831, 0
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %30, align 1
  %1841 = lshr i64 %1831, 63
  %1842 = trunc i64 %1841 to i8
  store i8 %1842, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v580 = select i1 %1839, i64 10, i64 15
  %1843 = add i64 %1832, %.v580
  store i64 %1843, i64* %3, align 8
  br i1 %1839, label %block_4200cd, label %block_.L_4200d2

block_4200cd:                                     ; preds = %block_.L_4200ae
  %1844 = add i64 %1843, 1480
  br label %block_.L_420695

block_.L_4200d2:                                  ; preds = %block_.L_4200ae
  %1845 = load i64, i64* %RBP.i, align 8
  %1846 = add i64 %1845, -576
  %1847 = add i64 %1843, 6
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = zext i32 %1849 to i64
  store i64 %1850, i64* %RAX.i1370, align 8
  %1851 = add i64 %1845, -32
  %1852 = add i64 %1843, 10
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %RCX.i733, align 8
  %1855 = add i64 %1854, 136
  %1856 = add i64 %1843, 16
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = sub i32 %1849, %1858
  %1860 = icmp ult i32 %1849, %1858
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %14, align 1
  %1862 = and i32 %1859, 255
  %1863 = tail call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %21, align 1
  %1867 = xor i32 %1858, %1849
  %1868 = xor i32 %1867, %1859
  %1869 = lshr i32 %1868, 4
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %27, align 1
  %1872 = icmp eq i32 %1859, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %30, align 1
  %1874 = lshr i32 %1859, 31
  %1875 = trunc i32 %1874 to i8
  store i8 %1875, i8* %33, align 1
  %1876 = lshr i32 %1849, 31
  %1877 = lshr i32 %1858, 31
  %1878 = xor i32 %1877, %1876
  %1879 = xor i32 %1874, %1876
  %1880 = add nuw nsw i32 %1879, %1878
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %39, align 1
  %1883 = icmp ne i8 %1875, 0
  %1884 = xor i1 %1883, %1881
  %.v581 = select i1 %1884, i64 22, i64 68
  %1885 = add i64 %1843, %.v581
  store i64 %1885, i64* %3, align 8
  br i1 %1884, label %block_4200e8, label %block_.L_420116

block_4200e8:                                     ; preds = %block_.L_4200d2
  %1886 = add i64 %1885, ptrtoint (%G_0x34638__rip__type* @G_0x34638__rip_ to i64)
  %1887 = add i64 %1885, 8
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  store i32 %1889, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %1890 = add i64 %1845, -568
  %1891 = add i64 %1885, 15
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RDI.i1148, align 8
  %1894 = add i64 %1885, 5784
  %1895 = add i64 %1885, 20
  %1896 = load i64, i64* %6, align 8
  %1897 = add i64 %1896, -8
  %1898 = inttoptr i64 %1897 to i64*
  store i64 %1895, i64* %1898, align 8
  store i64 %1897, i64* %6, align 8
  store i64 %1894, i64* %3, align 8
  %call2_4200f7 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %1894, %struct.Memory* %MEMORY.10)
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -32
  %1901 = load i64, i64* %3, align 8
  %1902 = add i64 %1901, 4
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1900 to i64*
  %1904 = load i64, i64* %1903, align 8
  store i64 %1904, i64* %RDI.i1148, align 8
  %1905 = add i64 %1904, 144
  %1906 = add i64 %1901, 11
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i64*
  %1908 = load i64, i64* %1907, align 8
  store i64 %1908, i64* %RDI.i1148, align 8
  %1909 = add i64 %1899, -576
  %1910 = add i64 %1901, 18
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = sext i32 %1912 to i64
  store i64 %1913, i64* %RAX.i1370, align 8
  %1914 = shl nsw i64 %1913, 3
  %1915 = add i64 %1914, %1908
  %1916 = add i64 %1901, 22
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RAX.i1370, align 8
  %1919 = add i64 %1901, 26
  store i64 %1919, i64* %3, align 8
  %1920 = load <2 x float>, <2 x float>* %942, align 1
  %1921 = extractelement <2 x float> %1920, i32 0
  %1922 = inttoptr i64 %1918 to float*
  store float %1921, float* %1922, align 4
  %.pre508 = load i64, i64* %3, align 8
  %.pre509 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420116

block_.L_420116:                                  ; preds = %block_.L_4200d2, %block_4200e8
  %1923 = phi i64 [ %1845, %block_.L_4200d2 ], [ %.pre509, %block_4200e8 ]
  %1924 = phi i64 [ %1885, %block_.L_4200d2 ], [ %.pre508, %block_4200e8 ]
  store i64 1, i64* %RSI.i1177, align 8
  %1925 = add i64 %1923, -40
  %1926 = add i64 %1924, 9
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i64*
  %1928 = load i64, i64* %1927, align 8
  store i64 %1928, i64* %RDI.i1148, align 8
  %1929 = add i64 %1924, 35674
  %1930 = add i64 %1924, 14
  %1931 = load i64, i64* %6, align 8
  %1932 = add i64 %1931, -8
  %1933 = inttoptr i64 %1932 to i64*
  store i64 %1930, i64* %1933, align 8
  store i64 %1932, i64* %6, align 8
  store i64 %1929, i64* %3, align 8
  %call2_42011f = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %1929, %struct.Memory* %MEMORY.10)
  %1934 = load i64, i64* %RBP.i, align 8
  %1935 = add i64 %1934, -568
  %1936 = load i64, i64* %RAX.i1370, align 8
  %1937 = load i64, i64* %3, align 8
  %1938 = add i64 %1937, 7
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1935 to i64*
  store i64 %1936, i64* %1939, align 8
  %1940 = load i64, i64* %RAX.i1370, align 8
  %1941 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1942 = trunc i64 %1940 to i32
  %1943 = and i32 %1942, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1948 = icmp eq i64 %1940, 0
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %30, align 1
  %1950 = lshr i64 %1940, 63
  %1951 = trunc i64 %1950 to i8
  store i8 %1951, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v582 = select i1 %1948, i64 10, i64 15
  %1952 = add i64 %1941, %.v582
  store i64 %1952, i64* %3, align 8
  br i1 %1948, label %block_420135, label %block_.L_42013a

block_420135:                                     ; preds = %block_.L_420116
  %1953 = add i64 %1952, 1376
  br label %block_.L_420695

block_.L_42013a:                                  ; preds = %block_.L_420116
  %1954 = load i64, i64* %RBP.i, align 8
  %1955 = add i64 %1954, -576
  %1956 = add i64 %1952, 6
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i32*
  %1958 = load i32, i32* %1957, align 4
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RAX.i1370, align 8
  %1960 = add i64 %1954, -32
  %1961 = add i64 %1952, 10
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i64*
  %1963 = load i64, i64* %1962, align 8
  store i64 %1963, i64* %RCX.i733, align 8
  %1964 = add i64 %1963, 136
  %1965 = add i64 %1952, 16
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i32*
  %1967 = load i32, i32* %1966, align 4
  %1968 = sub i32 %1958, %1967
  %1969 = icmp ult i32 %1958, %1967
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %14, align 1
  %1971 = and i32 %1968, 255
  %1972 = tail call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  store i8 %1975, i8* %21, align 1
  %1976 = xor i32 %1967, %1958
  %1977 = xor i32 %1976, %1968
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %27, align 1
  %1981 = icmp eq i32 %1968, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %30, align 1
  %1983 = lshr i32 %1968, 31
  %1984 = trunc i32 %1983 to i8
  store i8 %1984, i8* %33, align 1
  %1985 = lshr i32 %1958, 31
  %1986 = lshr i32 %1967, 31
  %1987 = xor i32 %1986, %1985
  %1988 = xor i32 %1983, %1985
  %1989 = add nuw nsw i32 %1988, %1987
  %1990 = icmp eq i32 %1989, 2
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %39, align 1
  %1992 = icmp ne i8 %1984, 0
  %1993 = xor i1 %1992, %1990
  %.v583 = select i1 %1993, i64 22, i64 131
  %1994 = add i64 %1952, %.v583
  store i64 %1994, i64* %3, align 8
  br i1 %1993, label %block_420150, label %block_.L_4201bd

block_420150:                                     ; preds = %block_.L_42013a
  %1995 = add i64 %1994, 6
  store i64 %1995, i64* %3, align 8
  %1996 = load i32, i32* %1957, align 4
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RAX.i1370, align 8
  %1998 = add i64 %1994, 10
  store i64 %1998, i64* %3, align 8
  %1999 = load i64, i64* %1962, align 8
  store i64 %1999, i64* %RCX.i733, align 8
  %2000 = add i64 %1999, 136
  %2001 = add i64 %1994, 16
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = sub i32 %1996, %2003
  %2005 = icmp ult i32 %1996, %2003
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %14, align 1
  %2007 = and i32 %2004, 255
  %2008 = tail call i32 @llvm.ctpop.i32(i32 %2007)
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  store i8 %2011, i8* %21, align 1
  %2012 = xor i32 %2003, %1996
  %2013 = xor i32 %2012, %2004
  %2014 = lshr i32 %2013, 4
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  store i8 %2016, i8* %27, align 1
  %2017 = icmp eq i32 %2004, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %30, align 1
  %2019 = lshr i32 %2004, 31
  %2020 = trunc i32 %2019 to i8
  store i8 %2020, i8* %33, align 1
  %2021 = lshr i32 %1996, 31
  %2022 = lshr i32 %2003, 31
  %2023 = xor i32 %2022, %2021
  %2024 = xor i32 %2019, %2021
  %2025 = add nuw nsw i32 %2024, %2023
  %2026 = icmp eq i32 %2025, 2
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %39, align 1
  %.v601 = select i1 %2017, i64 22, i64 38
  %2028 = add i64 %1994, %.v601
  store i64 %2028, i64* %3, align 8
  br i1 %2017, label %block_420166, label %block_.L_420176

block_420166:                                     ; preds = %block_420150
  store <4 x i32> zeroinitializer, <4 x i32>* %1591, align 1
  %2029 = add i64 %1954, -616
  %2030 = add i64 %2028, 11
  store i64 %2030, i64* %3, align 8
  %2031 = load i64, i64* %867, align 1
  %2032 = inttoptr i64 %2029 to i64*
  store i64 %2031, i64* %2032, align 8
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, 37
  store i64 %2034, i64* %3, align 8
  br label %block_.L_420196

block_.L_420176:                                  ; preds = %block_420150
  %2035 = add i64 %2028, ptrtoint (%G_0x345aa__rip__type* @G_0x345aa__rip_ to i64)
  %2036 = add i64 %2028, 8
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  store i32 %2038, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2039 = add i64 %1954, -568
  %2040 = add i64 %2028, 15
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  store i64 %2042, i64* %RDI.i1148, align 8
  %2043 = add i64 %2028, 5642
  %2044 = add i64 %2028, 20
  %2045 = load i64, i64* %6, align 8
  %2046 = add i64 %2045, -8
  %2047 = inttoptr i64 %2046 to i64*
  store i64 %2044, i64* %2047, align 8
  store i64 %2046, i64* %6, align 8
  store i64 %2043, i64* %3, align 8
  %call2_420185 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2043, %struct.Memory* %call2_42011f)
  %2048 = load i64, i64* %3, align 8
  %2049 = load <2 x float>, <2 x float>* %942, align 1
  %2050 = extractelement <2 x float> %2049, i32 0
  %2051 = fpext float %2050 to double
  store double %2051, double* %866, align 1
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -616
  %2054 = add i64 %2048, 12
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to double*
  store double %2051, double* %2055, align 8
  %.pre510 = load i64, i64* %3, align 8
  br label %block_.L_420196

block_.L_420196:                                  ; preds = %block_.L_420176, %block_420166
  %2056 = phi i64 [ %.pre510, %block_.L_420176 ], [ %2034, %block_420166 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_420185, %block_.L_420176 ], [ %call2_42011f, %block_420166 ]
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -616
  %2059 = add i64 %2056, 8
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i64*
  %2061 = load i64, i64* %2060, align 8
  %.cast69 = bitcast i64 %2061 to <2 x i32>
  %.cast70 = bitcast i64 %2061 to double
  %2062 = fptrunc double %.cast70 to float
  store float %2062, float* %929, align 1
  %2063 = extractelement <2 x i32> %.cast69, i32 1
  store i32 %2063, i32* %932, align 1
  store i32 0, i32* %933, align 1
  store i32 0, i32* %935, align 1
  %2064 = add i64 %2057, -32
  %2065 = add i64 %2056, 16
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RAX.i1370, align 8
  %2068 = add i64 %2067, 144
  %2069 = add i64 %2056, 23
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i64*
  %2071 = load i64, i64* %2070, align 8
  store i64 %2071, i64* %RAX.i1370, align 8
  %2072 = add i64 %2057, -576
  %2073 = add i64 %2056, 30
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i733, align 8
  %2077 = shl nsw i64 %2076, 3
  %2078 = add i64 %2077, %2071
  %2079 = add i64 %2056, 34
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i64*
  %2081 = load i64, i64* %2080, align 8
  store i64 %2081, i64* %RAX.i1370, align 8
  %2082 = add i64 %2081, 8
  %2083 = add i64 %2056, 39
  store i64 %2083, i64* %3, align 8
  %2084 = load <2 x float>, <2 x float>* %942, align 1
  %2085 = extractelement <2 x float> %2084, i32 0
  %2086 = inttoptr i64 %2082 to float*
  store float %2085, float* %2086, align 4
  %.pre511 = load i64, i64* %3, align 8
  %.pre512 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4201bd

block_.L_4201bd:                                  ; preds = %block_.L_42013a, %block_.L_420196
  %2087 = phi i64 [ %1954, %block_.L_42013a ], [ %.pre512, %block_.L_420196 ]
  %2088 = phi i64 [ %1994, %block_.L_42013a ], [ %.pre511, %block_.L_420196 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_42011f, %block_.L_42013a ], [ %MEMORY.13, %block_.L_420196 ]
  store i64 1, i64* %RSI.i1177, align 8
  %2089 = add i64 %2087, -40
  %2090 = add i64 %2088, 9
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i64*
  %2092 = load i64, i64* %2091, align 8
  store i64 %2092, i64* %RDI.i1148, align 8
  %2093 = add i64 %2088, 35507
  %2094 = add i64 %2088, 14
  %2095 = load i64, i64* %6, align 8
  %2096 = add i64 %2095, -8
  %2097 = inttoptr i64 %2096 to i64*
  store i64 %2094, i64* %2097, align 8
  store i64 %2096, i64* %6, align 8
  store i64 %2093, i64* %3, align 8
  %call2_4201c6 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2093, %struct.Memory* %MEMORY.14)
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -568
  %2100 = load i64, i64* %RAX.i1370, align 8
  %2101 = load i64, i64* %3, align 8
  %2102 = add i64 %2101, 7
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2099 to i64*
  store i64 %2100, i64* %2103, align 8
  %2104 = load i64, i64* %RAX.i1370, align 8
  %2105 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2106 = trunc i64 %2104 to i32
  %2107 = and i32 %2106, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2112 = icmp eq i64 %2104, 0
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %30, align 1
  %2114 = lshr i64 %2104, 63
  %2115 = trunc i64 %2114 to i8
  store i8 %2115, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v584 = select i1 %2112, i64 10, i64 15
  %2116 = add i64 %2105, %.v584
  store i64 %2116, i64* %3, align 8
  br i1 %2112, label %block_4201dc, label %block_.L_4201e1

block_4201dc:                                     ; preds = %block_.L_4201bd
  %2117 = add i64 %2116, 1209
  br label %block_.L_420695

block_.L_4201e1:                                  ; preds = %block_.L_4201bd
  %2118 = load i64, i64* %RBP.i, align 8
  %2119 = add i64 %2118, -576
  %2120 = add i64 %2116, 6
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RAX.i1370, align 8
  %2124 = add i64 %2118, -32
  %2125 = add i64 %2116, 10
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RCX.i733, align 8
  %2128 = add i64 %2127, 136
  %2129 = add i64 %2116, 16
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = sub i32 %2122, %2131
  %2133 = icmp ult i32 %2122, %2131
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %14, align 1
  %2135 = and i32 %2132, 255
  %2136 = tail call i32 @llvm.ctpop.i32(i32 %2135)
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = xor i8 %2138, 1
  store i8 %2139, i8* %21, align 1
  %2140 = xor i32 %2131, %2122
  %2141 = xor i32 %2140, %2132
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %27, align 1
  %2145 = icmp eq i32 %2132, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %30, align 1
  %2147 = lshr i32 %2132, 31
  %2148 = trunc i32 %2147 to i8
  store i8 %2148, i8* %33, align 1
  %2149 = lshr i32 %2122, 31
  %2150 = lshr i32 %2131, 31
  %2151 = xor i32 %2150, %2149
  %2152 = xor i32 %2147, %2149
  %2153 = add nuw nsw i32 %2152, %2151
  %2154 = icmp eq i32 %2153, 2
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %39, align 1
  %2156 = icmp ne i8 %2148, 0
  %2157 = xor i1 %2156, %2154
  %.v585 = select i1 %2157, i64 22, i64 69
  %2158 = add i64 %2116, %.v585
  store i64 %2158, i64* %3, align 8
  br i1 %2157, label %block_4201f7, label %block_.L_420226

block_4201f7:                                     ; preds = %block_.L_4201e1
  %2159 = add i64 %2158, ptrtoint (%G_0x34529__rip__type* @G_0x34529__rip_ to i64)
  %2160 = add i64 %2158, 8
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  store i32 %2162, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2163 = add i64 %2118, -568
  %2164 = add i64 %2158, 15
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i64*
  %2166 = load i64, i64* %2165, align 8
  store i64 %2166, i64* %RDI.i1148, align 8
  %2167 = add i64 %2158, 5513
  %2168 = add i64 %2158, 20
  %2169 = load i64, i64* %6, align 8
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2168, i64* %2171, align 8
  store i64 %2170, i64* %6, align 8
  store i64 %2167, i64* %3, align 8
  %call2_420206 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2167, %struct.Memory* %call2_4201c6)
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -32
  %2174 = load i64, i64* %3, align 8
  %2175 = add i64 %2174, 4
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2173 to i64*
  %2177 = load i64, i64* %2176, align 8
  store i64 %2177, i64* %RDI.i1148, align 8
  %2178 = add i64 %2177, 144
  %2179 = add i64 %2174, 11
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %RDI.i1148, align 8
  %2182 = add i64 %2172, -576
  %2183 = add i64 %2174, 18
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = sext i32 %2185 to i64
  store i64 %2186, i64* %RAX.i1370, align 8
  %2187 = shl nsw i64 %2186, 3
  %2188 = add i64 %2187, %2181
  %2189 = add i64 %2174, 22
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i64*
  %2191 = load i64, i64* %2190, align 8
  store i64 %2191, i64* %RAX.i1370, align 8
  %2192 = add i64 %2191, 4
  %2193 = add i64 %2174, 27
  store i64 %2193, i64* %3, align 8
  %2194 = load <2 x float>, <2 x float>* %942, align 1
  %2195 = extractelement <2 x float> %2194, i32 0
  %2196 = inttoptr i64 %2192 to float*
  store float %2195, float* %2196, align 4
  %.pre513 = load i64, i64* %3, align 8
  %.pre514 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420226

block_.L_420226:                                  ; preds = %block_.L_4201e1, %block_4201f7
  %2197 = phi i64 [ %2118, %block_.L_4201e1 ], [ %.pre514, %block_4201f7 ]
  %2198 = phi i64 [ %2158, %block_.L_4201e1 ], [ %.pre513, %block_4201f7 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_4201c6, %block_.L_4201e1 ], [ %call2_420206, %block_4201f7 ]
  store i64 1, i64* %RSI.i1177, align 8
  %2199 = add i64 %2197, -40
  %2200 = add i64 %2198, 9
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RDI.i1148, align 8
  %2203 = add i64 %2198, 35402
  %2204 = add i64 %2198, 14
  %2205 = load i64, i64* %6, align 8
  %2206 = add i64 %2205, -8
  %2207 = inttoptr i64 %2206 to i64*
  store i64 %2204, i64* %2207, align 8
  store i64 %2206, i64* %6, align 8
  store i64 %2203, i64* %3, align 8
  %call2_42022f = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2203, %struct.Memory* %MEMORY.15)
  %2208 = load i64, i64* %RBP.i, align 8
  %2209 = add i64 %2208, -568
  %2210 = load i64, i64* %RAX.i1370, align 8
  %2211 = load i64, i64* %3, align 8
  %2212 = add i64 %2211, 7
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2209 to i64*
  store i64 %2210, i64* %2213, align 8
  %2214 = load i64, i64* %RAX.i1370, align 8
  %2215 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2216 = trunc i64 %2214 to i32
  %2217 = and i32 %2216, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2222 = icmp eq i64 %2214, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %30, align 1
  %2224 = lshr i64 %2214, 63
  %2225 = trunc i64 %2224 to i8
  store i8 %2225, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v586 = select i1 %2222, i64 10, i64 15
  %2226 = add i64 %2215, %.v586
  store i64 %2226, i64* %3, align 8
  br i1 %2222, label %block_420245, label %block_.L_42024a

block_420245:                                     ; preds = %block_.L_420226
  %2227 = add i64 %2226, 1104
  br label %block_.L_420695

block_.L_42024a:                                  ; preds = %block_.L_420226
  %2228 = load i64, i64* %RBP.i, align 8
  %2229 = add i64 %2228, -576
  %2230 = add i64 %2226, 6
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RAX.i1370, align 8
  %2234 = add i64 %2228, -32
  %2235 = add i64 %2226, 10
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i64*
  %2237 = load i64, i64* %2236, align 8
  store i64 %2237, i64* %RCX.i733, align 8
  %2238 = add i64 %2237, 136
  %2239 = add i64 %2226, 16
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = sub i32 %2232, %2241
  %2243 = icmp ult i32 %2232, %2241
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = and i32 %2242, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %21, align 1
  %2250 = xor i32 %2241, %2232
  %2251 = xor i32 %2250, %2242
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %27, align 1
  %2255 = icmp eq i32 %2242, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %30, align 1
  %2257 = lshr i32 %2242, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %33, align 1
  %2259 = lshr i32 %2232, 31
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2260, %2259
  %2262 = xor i32 %2257, %2259
  %2263 = add nuw nsw i32 %2262, %2261
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %39, align 1
  %2266 = icmp ne i8 %2258, 0
  %2267 = xor i1 %2266, %2264
  %.v587 = select i1 %2267, i64 22, i64 69
  %2268 = add i64 %2226, %.v587
  store i64 %2268, i64* %3, align 8
  br i1 %2267, label %block_420260, label %block_.L_42028f

block_420260:                                     ; preds = %block_.L_42024a
  %2269 = add i64 %2268, ptrtoint (%G_0x344c0__rip__type* @G_0x344c0__rip_ to i64)
  %2270 = add i64 %2268, 8
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i32*
  %2272 = load i32, i32* %2271, align 4
  store i32 %2272, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2273 = add i64 %2228, -568
  %2274 = add i64 %2268, 15
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i64*
  %2276 = load i64, i64* %2275, align 8
  store i64 %2276, i64* %RDI.i1148, align 8
  %2277 = add i64 %2268, 5408
  %2278 = add i64 %2268, 20
  %2279 = load i64, i64* %6, align 8
  %2280 = add i64 %2279, -8
  %2281 = inttoptr i64 %2280 to i64*
  store i64 %2278, i64* %2281, align 8
  store i64 %2280, i64* %6, align 8
  store i64 %2277, i64* %3, align 8
  %call2_42026f = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2277, %struct.Memory* %call2_42022f)
  %2282 = load i64, i64* %RBP.i, align 8
  %2283 = add i64 %2282, -32
  %2284 = load i64, i64* %3, align 8
  %2285 = add i64 %2284, 4
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2283 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RDI.i1148, align 8
  %2288 = add i64 %2287, 144
  %2289 = add i64 %2284, 11
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i64*
  %2291 = load i64, i64* %2290, align 8
  store i64 %2291, i64* %RDI.i1148, align 8
  %2292 = add i64 %2282, -576
  %2293 = add i64 %2284, 18
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = sext i32 %2295 to i64
  store i64 %2296, i64* %RAX.i1370, align 8
  %2297 = shl nsw i64 %2296, 3
  %2298 = add i64 %2297, %2291
  %2299 = add i64 %2284, 22
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i64*
  %2301 = load i64, i64* %2300, align 8
  store i64 %2301, i64* %RAX.i1370, align 8
  %2302 = add i64 %2301, 20
  %2303 = add i64 %2284, 27
  store i64 %2303, i64* %3, align 8
  %2304 = load <2 x float>, <2 x float>* %942, align 1
  %2305 = extractelement <2 x float> %2304, i32 0
  %2306 = inttoptr i64 %2302 to float*
  store float %2305, float* %2306, align 4
  %.pre515 = load i64, i64* %3, align 8
  %.pre516 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42028f

block_.L_42028f:                                  ; preds = %block_.L_42024a, %block_420260
  %2307 = phi i64 [ %2228, %block_.L_42024a ], [ %.pre516, %block_420260 ]
  %2308 = phi i64 [ %2268, %block_.L_42024a ], [ %.pre515, %block_420260 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_42022f, %block_.L_42024a ], [ %call2_42026f, %block_420260 ]
  store i64 1, i64* %RSI.i1177, align 8
  %2309 = add i64 %2307, -40
  %2310 = add i64 %2308, 9
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RDI.i1148, align 8
  %2313 = add i64 %2308, 35297
  %2314 = add i64 %2308, 14
  %2315 = load i64, i64* %6, align 8
  %2316 = add i64 %2315, -8
  %2317 = inttoptr i64 %2316 to i64*
  store i64 %2314, i64* %2317, align 8
  store i64 %2316, i64* %6, align 8
  store i64 %2313, i64* %3, align 8
  %call2_420298 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2313, %struct.Memory* %MEMORY.16)
  %2318 = load i64, i64* %RBP.i, align 8
  %2319 = add i64 %2318, -568
  %2320 = load i64, i64* %RAX.i1370, align 8
  %2321 = load i64, i64* %3, align 8
  %2322 = add i64 %2321, 7
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2319 to i64*
  store i64 %2320, i64* %2323, align 8
  %2324 = load i64, i64* %RAX.i1370, align 8
  %2325 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2326 = trunc i64 %2324 to i32
  %2327 = and i32 %2326, 255
  %2328 = tail call i32 @llvm.ctpop.i32(i32 %2327)
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  store i8 %2331, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2332 = icmp eq i64 %2324, 0
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %30, align 1
  %2334 = lshr i64 %2324, 63
  %2335 = trunc i64 %2334 to i8
  store i8 %2335, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v588 = select i1 %2332, i64 10, i64 15
  %2336 = add i64 %2325, %.v588
  store i64 %2336, i64* %3, align 8
  br i1 %2332, label %block_4202ae, label %block_.L_4202b3

block_4202ae:                                     ; preds = %block_.L_42028f
  %2337 = add i64 %2336, 999
  br label %block_.L_420695

block_.L_4202b3:                                  ; preds = %block_.L_42028f
  %2338 = load i64, i64* %RBP.i, align 8
  %2339 = add i64 %2338, -576
  %2340 = add i64 %2336, 6
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RAX.i1370, align 8
  %2344 = add i64 %2338, -32
  %2345 = add i64 %2336, 10
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i64*
  %2347 = load i64, i64* %2346, align 8
  store i64 %2347, i64* %RCX.i733, align 8
  %2348 = add i64 %2347, 136
  %2349 = add i64 %2336, 16
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = sub i32 %2342, %2351
  %2353 = icmp ult i32 %2342, %2351
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %14, align 1
  %2355 = and i32 %2352, 255
  %2356 = tail call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  store i8 %2359, i8* %21, align 1
  %2360 = xor i32 %2351, %2342
  %2361 = xor i32 %2360, %2352
  %2362 = lshr i32 %2361, 4
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  store i8 %2364, i8* %27, align 1
  %2365 = icmp eq i32 %2352, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %30, align 1
  %2367 = lshr i32 %2352, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %33, align 1
  %2369 = lshr i32 %2342, 31
  %2370 = lshr i32 %2351, 31
  %2371 = xor i32 %2370, %2369
  %2372 = xor i32 %2367, %2369
  %2373 = add nuw nsw i32 %2372, %2371
  %2374 = icmp eq i32 %2373, 2
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %39, align 1
  %2376 = icmp ne i8 %2368, 0
  %2377 = xor i1 %2376, %2374
  %.v589 = select i1 %2377, i64 22, i64 131
  %2378 = add i64 %2336, %.v589
  store i64 %2378, i64* %3, align 8
  br i1 %2377, label %block_4202c9, label %block_.L_420336

block_4202c9:                                     ; preds = %block_.L_4202b3
  %2379 = add i64 %2378, 6
  store i64 %2379, i64* %3, align 8
  %2380 = load i32, i32* %2341, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i1370, align 8
  %2382 = add i64 %2378, 10
  store i64 %2382, i64* %3, align 8
  %2383 = load i64, i64* %2346, align 8
  store i64 %2383, i64* %RCX.i733, align 8
  %2384 = add i64 %2383, 136
  %2385 = add i64 %2378, 16
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = sub i32 %2380, %2387
  %2389 = icmp ult i32 %2380, %2387
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %14, align 1
  %2391 = and i32 %2388, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %21, align 1
  %2396 = xor i32 %2387, %2380
  %2397 = xor i32 %2396, %2388
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  store i8 %2400, i8* %27, align 1
  %2401 = icmp eq i32 %2388, 0
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %30, align 1
  %2403 = lshr i32 %2388, 31
  %2404 = trunc i32 %2403 to i8
  store i8 %2404, i8* %33, align 1
  %2405 = lshr i32 %2380, 31
  %2406 = lshr i32 %2387, 31
  %2407 = xor i32 %2406, %2405
  %2408 = xor i32 %2403, %2405
  %2409 = add nuw nsw i32 %2408, %2407
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %39, align 1
  %.v600 = select i1 %2401, i64 22, i64 38
  %2412 = add i64 %2378, %.v600
  store i64 %2412, i64* %3, align 8
  br i1 %2401, label %block_4202df, label %block_.L_4202ef

block_4202df:                                     ; preds = %block_4202c9
  store <4 x i32> zeroinitializer, <4 x i32>* %1592, align 1
  %2413 = add i64 %2338, -624
  %2414 = add i64 %2412, 11
  store i64 %2414, i64* %3, align 8
  %2415 = load i64, i64* %867, align 1
  %2416 = inttoptr i64 %2413 to i64*
  store i64 %2415, i64* %2416, align 8
  %2417 = load i64, i64* %3, align 8
  %2418 = add i64 %2417, 37
  store i64 %2418, i64* %3, align 8
  br label %block_.L_42030f

block_.L_4202ef:                                  ; preds = %block_4202c9
  %2419 = add i64 %2412, ptrtoint (%G_0x34431__rip__type* @G_0x34431__rip_ to i64)
  %2420 = add i64 %2412, 8
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  store i32 %2422, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2423 = add i64 %2338, -568
  %2424 = add i64 %2412, 15
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2423 to i64*
  %2426 = load i64, i64* %2425, align 8
  store i64 %2426, i64* %RDI.i1148, align 8
  %2427 = add i64 %2412, 5265
  %2428 = add i64 %2412, 20
  %2429 = load i64, i64* %6, align 8
  %2430 = add i64 %2429, -8
  %2431 = inttoptr i64 %2430 to i64*
  store i64 %2428, i64* %2431, align 8
  store i64 %2430, i64* %6, align 8
  store i64 %2427, i64* %3, align 8
  %call2_4202fe = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2427, %struct.Memory* %call2_420298)
  %2432 = load i64, i64* %3, align 8
  %2433 = load <2 x float>, <2 x float>* %942, align 1
  %2434 = extractelement <2 x float> %2433, i32 0
  %2435 = fpext float %2434 to double
  store double %2435, double* %866, align 1
  %2436 = load i64, i64* %RBP.i, align 8
  %2437 = add i64 %2436, -624
  %2438 = add i64 %2432, 12
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to double*
  store double %2435, double* %2439, align 8
  %.pre517 = load i64, i64* %3, align 8
  br label %block_.L_42030f

block_.L_42030f:                                  ; preds = %block_.L_4202ef, %block_4202df
  %2440 = phi i64 [ %.pre517, %block_.L_4202ef ], [ %2418, %block_4202df ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_4202fe, %block_.L_4202ef ], [ %call2_420298, %block_4202df ]
  %2441 = load i64, i64* %RBP.i, align 8
  %2442 = add i64 %2441, -624
  %2443 = add i64 %2440, 8
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  %2445 = load i64, i64* %2444, align 8
  %.cast71 = bitcast i64 %2445 to <2 x i32>
  %.cast72 = bitcast i64 %2445 to double
  %2446 = fptrunc double %.cast72 to float
  store float %2446, float* %929, align 1
  %2447 = extractelement <2 x i32> %.cast71, i32 1
  store i32 %2447, i32* %932, align 1
  store i32 0, i32* %933, align 1
  store i32 0, i32* %935, align 1
  %2448 = add i64 %2441, -32
  %2449 = add i64 %2440, 16
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i64*
  %2451 = load i64, i64* %2450, align 8
  store i64 %2451, i64* %RAX.i1370, align 8
  %2452 = add i64 %2451, 144
  %2453 = add i64 %2440, 23
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i64*
  %2455 = load i64, i64* %2454, align 8
  store i64 %2455, i64* %RAX.i1370, align 8
  %2456 = add i64 %2441, -576
  %2457 = add i64 %2440, 30
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = sext i32 %2459 to i64
  store i64 %2460, i64* %RCX.i733, align 8
  %2461 = shl nsw i64 %2460, 3
  %2462 = add i64 %2461, %2455
  %2463 = add i64 %2440, 34
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RAX.i1370, align 8
  %2466 = add i64 %2465, 24
  %2467 = add i64 %2440, 39
  store i64 %2467, i64* %3, align 8
  %2468 = load <2 x float>, <2 x float>* %942, align 1
  %2469 = extractelement <2 x float> %2468, i32 0
  %2470 = inttoptr i64 %2466 to float*
  store float %2469, float* %2470, align 4
  %.pre518 = load i64, i64* %3, align 8
  %.pre519 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420336

block_.L_420336:                                  ; preds = %block_.L_4202b3, %block_.L_42030f
  %2471 = phi i64 [ %2338, %block_.L_4202b3 ], [ %.pre519, %block_.L_42030f ]
  %2472 = phi i64 [ %2378, %block_.L_4202b3 ], [ %.pre518, %block_.L_42030f ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_420298, %block_.L_4202b3 ], [ %MEMORY.17, %block_.L_42030f ]
  store i64 1, i64* %RSI.i1177, align 8
  %2473 = add i64 %2471, -40
  %2474 = add i64 %2472, 9
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i64*
  %2476 = load i64, i64* %2475, align 8
  store i64 %2476, i64* %RDI.i1148, align 8
  %2477 = add i64 %2472, 35130
  %2478 = add i64 %2472, 14
  %2479 = load i64, i64* %6, align 8
  %2480 = add i64 %2479, -8
  %2481 = inttoptr i64 %2480 to i64*
  store i64 %2478, i64* %2481, align 8
  store i64 %2480, i64* %6, align 8
  store i64 %2477, i64* %3, align 8
  %call2_42033f = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2477, %struct.Memory* %MEMORY.18)
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -568
  %2484 = load i64, i64* %RAX.i1370, align 8
  %2485 = load i64, i64* %3, align 8
  %2486 = add i64 %2485, 7
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2483 to i64*
  store i64 %2484, i64* %2487, align 8
  %2488 = load i64, i64* %RAX.i1370, align 8
  %2489 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2490 = trunc i64 %2488 to i32
  %2491 = and i32 %2490, 255
  %2492 = tail call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  store i8 %2495, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2496 = icmp eq i64 %2488, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %30, align 1
  %2498 = lshr i64 %2488, 63
  %2499 = trunc i64 %2498 to i8
  store i8 %2499, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v590 = select i1 %2496, i64 10, i64 15
  %2500 = add i64 %2489, %.v590
  store i64 %2500, i64* %3, align 8
  br i1 %2496, label %block_420355, label %block_.L_42035a

block_420355:                                     ; preds = %block_.L_420336
  %2501 = add i64 %2500, 832
  br label %block_.L_420695

block_.L_42035a:                                  ; preds = %block_.L_420336
  store i64 1, i64* %RSI.i1177, align 8
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -40
  %2504 = add i64 %2500, 9
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i64*
  %2506 = load i64, i64* %2505, align 8
  store i64 %2506, i64* %RDI.i1148, align 8
  %2507 = add i64 %2500, 35094
  %2508 = add i64 %2500, 14
  %2509 = load i64, i64* %6, align 8
  %2510 = add i64 %2509, -8
  %2511 = inttoptr i64 %2510 to i64*
  store i64 %2508, i64* %2511, align 8
  store i64 %2510, i64* %6, align 8
  store i64 %2507, i64* %3, align 8
  %call2_420363 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2507, %struct.Memory* %call2_42033f)
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -568
  %2514 = load i64, i64* %RAX.i1370, align 8
  %2515 = load i64, i64* %3, align 8
  %2516 = add i64 %2515, 7
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2513 to i64*
  store i64 %2514, i64* %2517, align 8
  %2518 = load i64, i64* %RAX.i1370, align 8
  %2519 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2520 = trunc i64 %2518 to i32
  %2521 = and i32 %2520, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2526 = icmp eq i64 %2518, 0
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %30, align 1
  %2528 = lshr i64 %2518, 63
  %2529 = trunc i64 %2528 to i8
  store i8 %2529, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v591 = select i1 %2526, i64 10, i64 15
  %2530 = add i64 %2519, %.v591
  store i64 %2530, i64* %3, align 8
  br i1 %2526, label %block_420379, label %block_.L_42037e

block_420379:                                     ; preds = %block_.L_42035a
  %2531 = add i64 %2530, 796
  br label %block_.L_420695

block_.L_42037e:                                  ; preds = %block_.L_42035a
  %2532 = load i64, i64* %RBP.i, align 8
  %2533 = add i64 %2532, -576
  %2534 = add i64 %2530, 6
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i32*
  %2536 = load i32, i32* %2535, align 4
  %2537 = zext i32 %2536 to i64
  store i64 %2537, i64* %RAX.i1370, align 8
  %2538 = add i64 %2532, -32
  %2539 = add i64 %2530, 10
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RCX.i733, align 8
  %2542 = add i64 %2541, 136
  %2543 = add i64 %2530, 16
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = sub i32 %2536, %2545
  %2547 = icmp ult i32 %2536, %2545
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %14, align 1
  %2549 = and i32 %2546, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %21, align 1
  %2554 = xor i32 %2545, %2536
  %2555 = xor i32 %2554, %2546
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %27, align 1
  %2559 = icmp eq i32 %2546, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %30, align 1
  %2561 = lshr i32 %2546, 31
  %2562 = trunc i32 %2561 to i8
  store i8 %2562, i8* %33, align 1
  %2563 = lshr i32 %2536, 31
  %2564 = lshr i32 %2545, 31
  %2565 = xor i32 %2564, %2563
  %2566 = xor i32 %2561, %2563
  %2567 = add nuw nsw i32 %2566, %2565
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %39, align 1
  %2570 = icmp ne i8 %2562, 0
  %2571 = xor i1 %2570, %2568
  %.v592 = select i1 %2571, i64 22, i64 69
  %2572 = add i64 %2530, %.v592
  store i64 %2572, i64* %3, align 8
  br i1 %2571, label %block_420394, label %block_.L_4203c3

block_420394:                                     ; preds = %block_.L_42037e
  %2573 = add i64 %2572, ptrtoint (%G_0x3438c__rip__type* @G_0x3438c__rip_ to i64)
  %2574 = add i64 %2572, 8
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  store i32 %2576, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2577 = add i64 %2532, -568
  %2578 = add i64 %2572, 15
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RDI.i1148, align 8
  %2581 = add i64 %2572, 5100
  %2582 = add i64 %2572, 20
  %2583 = load i64, i64* %6, align 8
  %2584 = add i64 %2583, -8
  %2585 = inttoptr i64 %2584 to i64*
  store i64 %2582, i64* %2585, align 8
  store i64 %2584, i64* %6, align 8
  store i64 %2581, i64* %3, align 8
  %call2_4203a3 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2581, %struct.Memory* %call2_420363)
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -32
  %2588 = load i64, i64* %3, align 8
  %2589 = add i64 %2588, 4
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2587 to i64*
  %2591 = load i64, i64* %2590, align 8
  store i64 %2591, i64* %RDI.i1148, align 8
  %2592 = add i64 %2591, 144
  %2593 = add i64 %2588, 11
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i64*
  %2595 = load i64, i64* %2594, align 8
  store i64 %2595, i64* %RDI.i1148, align 8
  %2596 = add i64 %2586, -576
  %2597 = add i64 %2588, 18
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = sext i32 %2599 to i64
  store i64 %2600, i64* %RAX.i1370, align 8
  %2601 = shl nsw i64 %2600, 3
  %2602 = add i64 %2601, %2595
  %2603 = add i64 %2588, 22
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i64*
  %2605 = load i64, i64* %2604, align 8
  store i64 %2605, i64* %RAX.i1370, align 8
  %2606 = add i64 %2605, 12
  %2607 = add i64 %2588, 27
  store i64 %2607, i64* %3, align 8
  %2608 = load <2 x float>, <2 x float>* %942, align 1
  %2609 = extractelement <2 x float> %2608, i32 0
  %2610 = inttoptr i64 %2606 to float*
  store float %2609, float* %2610, align 4
  %.pre520 = load i64, i64* %3, align 8
  %.pre521 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4203c3

block_.L_4203c3:                                  ; preds = %block_.L_42037e, %block_420394
  %2611 = phi i64 [ %2532, %block_.L_42037e ], [ %.pre521, %block_420394 ]
  %2612 = phi i64 [ %2572, %block_.L_42037e ], [ %.pre520, %block_420394 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_420363, %block_.L_42037e ], [ %call2_4203a3, %block_420394 ]
  store i64 1, i64* %RSI.i1177, align 8
  %2613 = add i64 %2611, -40
  %2614 = add i64 %2612, 9
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i64*
  %2616 = load i64, i64* %2615, align 8
  store i64 %2616, i64* %RDI.i1148, align 8
  %2617 = add i64 %2612, 34989
  %2618 = add i64 %2612, 14
  %2619 = load i64, i64* %6, align 8
  %2620 = add i64 %2619, -8
  %2621 = inttoptr i64 %2620 to i64*
  store i64 %2618, i64* %2621, align 8
  store i64 %2620, i64* %6, align 8
  store i64 %2617, i64* %3, align 8
  %call2_4203cc = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2617, %struct.Memory* %MEMORY.19)
  %2622 = load i64, i64* %RBP.i, align 8
  %2623 = add i64 %2622, -568
  %2624 = load i64, i64* %RAX.i1370, align 8
  %2625 = load i64, i64* %3, align 8
  %2626 = add i64 %2625, 7
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2623 to i64*
  store i64 %2624, i64* %2627, align 8
  %2628 = load i64, i64* %RAX.i1370, align 8
  %2629 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2630 = trunc i64 %2628 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2636 = icmp eq i64 %2628, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %30, align 1
  %2638 = lshr i64 %2628, 63
  %2639 = trunc i64 %2638 to i8
  store i8 %2639, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v593 = select i1 %2636, i64 10, i64 15
  %2640 = add i64 %2629, %.v593
  store i64 %2640, i64* %3, align 8
  br i1 %2636, label %block_4203e2, label %block_.L_4203e7

block_4203e2:                                     ; preds = %block_.L_4203c3
  %2641 = add i64 %2640, 691
  br label %block_.L_420695

block_.L_4203e7:                                  ; preds = %block_.L_4203c3
  store i64 1, i64* %RSI.i1177, align 8
  %2642 = load i64, i64* %RBP.i, align 8
  %2643 = add i64 %2642, -40
  %2644 = add i64 %2640, 9
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i64*
  %2646 = load i64, i64* %2645, align 8
  store i64 %2646, i64* %RDI.i1148, align 8
  %2647 = add i64 %2640, 34953
  %2648 = add i64 %2640, 14
  %2649 = load i64, i64* %6, align 8
  %2650 = add i64 %2649, -8
  %2651 = inttoptr i64 %2650 to i64*
  store i64 %2648, i64* %2651, align 8
  store i64 %2650, i64* %6, align 8
  store i64 %2647, i64* %3, align 8
  %call2_4203f0 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2647, %struct.Memory* %call2_4203cc)
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -568
  %2654 = load i64, i64* %RAX.i1370, align 8
  %2655 = load i64, i64* %3, align 8
  %2656 = add i64 %2655, 7
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2653 to i64*
  store i64 %2654, i64* %2657, align 8
  %2658 = load i64, i64* %RAX.i1370, align 8
  %2659 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2660 = trunc i64 %2658 to i32
  %2661 = and i32 %2660, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2666 = icmp eq i64 %2658, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %30, align 1
  %2668 = lshr i64 %2658, 63
  %2669 = trunc i64 %2668 to i8
  store i8 %2669, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v594 = select i1 %2666, i64 10, i64 15
  %2670 = add i64 %2659, %.v594
  store i64 %2670, i64* %3, align 8
  br i1 %2666, label %block_420406, label %block_.L_42040b

block_420406:                                     ; preds = %block_.L_4203e7
  %2671 = add i64 %2670, 655
  br label %block_.L_420695

block_.L_42040b:                                  ; preds = %block_.L_4203e7
  %2672 = load i64, i64* %RBP.i, align 8
  %2673 = add i64 %2672, -576
  %2674 = add i64 %2670, 6
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RAX.i1370, align 8
  %2678 = add i64 %2672, -32
  %2679 = add i64 %2670, 10
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i64*
  %2681 = load i64, i64* %2680, align 8
  store i64 %2681, i64* %RCX.i733, align 8
  %2682 = add i64 %2681, 136
  %2683 = add i64 %2670, 16
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sub i32 %2676, %2685
  %2687 = icmp ult i32 %2676, %2685
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %14, align 1
  %2689 = and i32 %2686, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %21, align 1
  %2694 = xor i32 %2685, %2676
  %2695 = xor i32 %2694, %2686
  %2696 = lshr i32 %2695, 4
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  store i8 %2698, i8* %27, align 1
  %2699 = icmp eq i32 %2686, 0
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %30, align 1
  %2701 = lshr i32 %2686, 31
  %2702 = trunc i32 %2701 to i8
  store i8 %2702, i8* %33, align 1
  %2703 = lshr i32 %2676, 31
  %2704 = lshr i32 %2685, 31
  %2705 = xor i32 %2704, %2703
  %2706 = xor i32 %2701, %2703
  %2707 = add nuw nsw i32 %2706, %2705
  %2708 = icmp eq i32 %2707, 2
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %39, align 1
  %2710 = icmp ne i8 %2702, 0
  %2711 = xor i1 %2710, %2708
  %.v595 = select i1 %2711, i64 22, i64 69
  %2712 = add i64 %2670, %.v595
  store i64 %2712, i64* %3, align 8
  br i1 %2711, label %block_420421, label %block_.L_420450

block_420421:                                     ; preds = %block_.L_42040b
  %2713 = add i64 %2712, ptrtoint (%G_0x342ff__rip__type* @G_0x342ff__rip_ to i64)
  %2714 = add i64 %2712, 8
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  store i32 %2716, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %2717 = add i64 %2672, -568
  %2718 = add i64 %2712, 15
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i64*
  %2720 = load i64, i64* %2719, align 8
  store i64 %2720, i64* %RDI.i1148, align 8
  %2721 = add i64 %2712, 4959
  %2722 = add i64 %2712, 20
  %2723 = load i64, i64* %6, align 8
  %2724 = add i64 %2723, -8
  %2725 = inttoptr i64 %2724 to i64*
  store i64 %2722, i64* %2725, align 8
  store i64 %2724, i64* %6, align 8
  store i64 %2721, i64* %3, align 8
  %call2_420430 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2721, %struct.Memory* %call2_4203f0)
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -32
  %2728 = load i64, i64* %3, align 8
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2727 to i64*
  %2731 = load i64, i64* %2730, align 8
  store i64 %2731, i64* %RDI.i1148, align 8
  %2732 = add i64 %2731, 144
  %2733 = add i64 %2728, 11
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i64*
  %2735 = load i64, i64* %2734, align 8
  store i64 %2735, i64* %RDI.i1148, align 8
  %2736 = add i64 %2726, -576
  %2737 = add i64 %2728, 18
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i32*
  %2739 = load i32, i32* %2738, align 4
  %2740 = sext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i1370, align 8
  %2741 = shl nsw i64 %2740, 3
  %2742 = add i64 %2741, %2735
  %2743 = add i64 %2728, 22
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i64*
  %2745 = load i64, i64* %2744, align 8
  store i64 %2745, i64* %RAX.i1370, align 8
  %2746 = add i64 %2745, 16
  %2747 = add i64 %2728, 27
  store i64 %2747, i64* %3, align 8
  %2748 = load <2 x float>, <2 x float>* %942, align 1
  %2749 = extractelement <2 x float> %2748, i32 0
  %2750 = inttoptr i64 %2746 to float*
  store float %2749, float* %2750, align 4
  %.pre522 = load i64, i64* %3, align 8
  %.pre523 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420450

block_.L_420450:                                  ; preds = %block_.L_42040b, %block_420421
  %2751 = phi i64 [ %2672, %block_.L_42040b ], [ %.pre523, %block_420421 ]
  %2752 = phi i64 [ %2712, %block_.L_42040b ], [ %.pre522, %block_420421 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_4203f0, %block_.L_42040b ], [ %call2_420430, %block_420421 ]
  store i64 4, i64* %RSI.i1177, align 8
  %2753 = add i64 %2751, -40
  %2754 = add i64 %2752, 9
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RDI.i1148, align 8
  %2757 = add i64 %2752, 34848
  %2758 = add i64 %2752, 14
  %2759 = load i64, i64* %6, align 8
  %2760 = add i64 %2759, -8
  %2761 = inttoptr i64 %2760 to i64*
  store i64 %2758, i64* %2761, align 8
  store i64 %2760, i64* %6, align 8
  store i64 %2757, i64* %3, align 8
  %call2_420459 = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2757, %struct.Memory* %MEMORY.20)
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -568
  %2764 = load i64, i64* %RAX.i1370, align 8
  %2765 = load i64, i64* %3, align 8
  %2766 = add i64 %2765, 7
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2763 to i64*
  store i64 %2764, i64* %2767, align 8
  %2768 = load i64, i64* %RAX.i1370, align 8
  %2769 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2770 = trunc i64 %2768 to i32
  %2771 = and i32 %2770, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2776 = icmp eq i64 %2768, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %30, align 1
  %2778 = lshr i64 %2768, 63
  %2779 = trunc i64 %2778 to i8
  store i8 %2779, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v596 = select i1 %2776, i64 10, i64 15
  %2780 = add i64 %2769, %.v596
  store i64 %2780, i64* %3, align 8
  br i1 %2776, label %block_42046f, label %block_.L_420474

block_42046f:                                     ; preds = %block_.L_420450
  %2781 = add i64 %2780, 550
  br label %block_.L_420695

block_.L_420474:                                  ; preds = %block_.L_420450
  %2782 = load i64, i64* %RBP.i, align 8
  %2783 = add i64 %2782, -32
  %2784 = add i64 %2780, 4
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i64*
  %2786 = load i64, i64* %2785, align 8
  store i64 %2786, i64* %RAX.i1370, align 8
  %2787 = add i64 %2786, 456
  %2788 = add i64 %2780, 10
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = and i32 %2790, 4
  %2792 = zext i32 %2791 to i64
  store i64 %2792, i64* %RCX.i733, align 8
  store i8 0, i8* %14, align 1
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2794 = trunc i32 %2793 to i8
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2796 = icmp eq i32 %2791, 0
  %.lobit537 = lshr exact i32 %2791, 2
  %2797 = trunc i32 %.lobit537 to i8
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v597 = select i1 %2796, i64 49, i64 22
  %2799 = add i64 %2780, %.v597
  store i64 %2799, i64* %3, align 8
  br i1 %2796, label %block_.L_4204a5, label %block_42048a

block_42048a:                                     ; preds = %block_.L_420474
  %2800 = add i64 %2782, -568
  %2801 = add i64 %2799, 7
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2800 to i64*
  %2803 = load i64, i64* %2802, align 8
  store i64 %2803, i64* %RAX.i1370, align 8
  %2804 = add i64 %2799, 9
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i8*
  %2806 = load i8, i8* %2805, align 1
  store i8 %2806, i8* %CL.i197, align 1
  %2807 = add i64 %2799, 13
  store i64 %2807, i64* %3, align 8
  %2808 = load i64, i64* %2785, align 8
  store i64 %2808, i64* %RAX.i1370, align 8
  %2809 = add i64 %2808, 24
  %2810 = add i64 %2799, 17
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i64*
  %2812 = load i64, i64* %2811, align 8
  store i64 %2812, i64* %RAX.i1370, align 8
  %2813 = add i64 %2782, -576
  %2814 = add i64 %2799, 24
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = sext i32 %2816 to i64
  store i64 %2817, i64* %RDX.i1373, align 8
  %2818 = add i64 %2812, %2817
  %2819 = add i64 %2799, 27
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i8*
  store i8 %2806, i8* %2820, align 1
  %.pre524 = load i64, i64* %3, align 8
  %.pre525 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4204a5

block_.L_4204a5:                                  ; preds = %block_42048a, %block_.L_420474
  %2821 = phi i64 [ %.pre525, %block_42048a ], [ %2782, %block_.L_420474 ]
  %2822 = phi i64 [ %.pre524, %block_42048a ], [ %2799, %block_.L_420474 ]
  store i64 4, i64* %RSI.i1177, align 8
  %2823 = add i64 %2821, -40
  %2824 = add i64 %2822, 9
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i64*
  %2826 = load i64, i64* %2825, align 8
  store i64 %2826, i64* %RDI.i1148, align 8
  %2827 = add i64 %2822, 34763
  %2828 = add i64 %2822, 14
  %2829 = load i64, i64* %6, align 8
  %2830 = add i64 %2829, -8
  %2831 = inttoptr i64 %2830 to i64*
  store i64 %2828, i64* %2831, align 8
  store i64 %2830, i64* %6, align 8
  store i64 %2827, i64* %3, align 8
  %call2_4204ae = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2827, %struct.Memory* %call2_420459)
  %2832 = load i64, i64* %RBP.i, align 8
  %2833 = add i64 %2832, -568
  %2834 = load i64, i64* %RAX.i1370, align 8
  %2835 = load i64, i64* %3, align 8
  %2836 = add i64 %2835, 7
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2833 to i64*
  store i64 %2834, i64* %2837, align 8
  %2838 = load i64, i64* %RAX.i1370, align 8
  %2839 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2840 = trunc i64 %2838 to i32
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2846 = icmp eq i64 %2838, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %30, align 1
  %2848 = lshr i64 %2838, 63
  %2849 = trunc i64 %2848 to i8
  store i8 %2849, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v598 = select i1 %2846, i64 10, i64 15
  %2850 = add i64 %2839, %.v598
  store i64 %2850, i64* %3, align 8
  br i1 %2846, label %block_4204c4, label %block_.L_4204c9

block_4204c4:                                     ; preds = %block_.L_4204a5
  %2851 = add i64 %2850, 465
  br label %block_.L_420695

block_.L_4204c9:                                  ; preds = %block_.L_4204a5
  %2852 = load i64, i64* %RBP.i, align 8
  %2853 = add i64 %2852, -32
  %2854 = add i64 %2850, 4
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i64*
  %2856 = load i64, i64* %2855, align 8
  store i64 %2856, i64* %RAX.i1370, align 8
  %2857 = add i64 %2856, 456
  %2858 = add i64 %2850, 10
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = and i32 %2860, 8
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RCX.i733, align 8
  store i8 0, i8* %14, align 1
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2861)
  %2864 = trunc i32 %2863 to i8
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2866 = icmp eq i32 %2861, 0
  %.lobit538 = lshr exact i32 %2861, 3
  %2867 = trunc i32 %.lobit538 to i8
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v599 = select i1 %2866, i64 49, i64 22
  %2869 = add i64 %2850, %.v599
  store i64 %2869, i64* %3, align 8
  br i1 %2866, label %block_.L_4204fa, label %block_4204df

block_4204df:                                     ; preds = %block_.L_4204c9
  %2870 = add i64 %2852, -568
  %2871 = add i64 %2869, 7
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i64*
  %2873 = load i64, i64* %2872, align 8
  store i64 %2873, i64* %RAX.i1370, align 8
  %2874 = add i64 %2869, 9
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i8*
  %2876 = load i8, i8* %2875, align 1
  store i8 %2876, i8* %CL.i197, align 1
  %2877 = add i64 %2869, 13
  store i64 %2877, i64* %3, align 8
  %2878 = load i64, i64* %2855, align 8
  store i64 %2878, i64* %RAX.i1370, align 8
  %2879 = add i64 %2878, 32
  %2880 = add i64 %2869, 17
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i64*
  %2882 = load i64, i64* %2881, align 8
  store i64 %2882, i64* %RAX.i1370, align 8
  %2883 = add i64 %2852, -576
  %2884 = add i64 %2869, 24
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = sext i32 %2886 to i64
  store i64 %2887, i64* %RDX.i1373, align 8
  %2888 = add i64 %2882, %2887
  %2889 = add i64 %2869, 27
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i8*
  store i8 %2876, i8* %2890, align 1
  %.pre526 = load i64, i64* %3, align 8
  %.pre527 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4204fa

block_.L_4204fa:                                  ; preds = %block_4204df, %block_.L_4204c9
  %2891 = phi i64 [ %.pre527, %block_4204df ], [ %2852, %block_.L_4204c9 ]
  %2892 = phi i64 [ %.pre526, %block_4204df ], [ %2869, %block_.L_4204c9 ]
  %2893 = add i64 %2891, -576
  %2894 = add i64 %2892, 11
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i32*
  %2896 = load i32, i32* %2895, align 4
  %2897 = add i32 %2896, 1
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RAX.i1370, align 8
  %2899 = icmp eq i32 %2896, -1
  %2900 = icmp eq i32 %2897, 0
  %2901 = or i1 %2899, %2900
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %14, align 1
  %2903 = and i32 %2897, 255
  %2904 = tail call i32 @llvm.ctpop.i32(i32 %2903)
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  store i8 %2907, i8* %21, align 1
  %2908 = xor i32 %2897, %2896
  %2909 = lshr i32 %2908, 4
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  store i8 %2911, i8* %27, align 1
  %2912 = zext i1 %2900 to i8
  store i8 %2912, i8* %30, align 1
  %2913 = lshr i32 %2897, 31
  %2914 = trunc i32 %2913 to i8
  store i8 %2914, i8* %33, align 1
  %2915 = lshr i32 %2896, 31
  %2916 = xor i32 %2913, %2915
  %2917 = add nuw nsw i32 %2916, %2913
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %39, align 1
  %2920 = add i64 %2892, 20
  store i64 %2920, i64* %3, align 8
  store i32 %2897, i32* %2895, align 4
  %2921 = load i64, i64* %3, align 8
  %2922 = add i64 %2921, -1329
  store i64 %2922, i64* %3, align 8
  br label %block_.L_41ffdd

block_.L_420513:                                  ; preds = %block_.L_41ffdd
  %2923 = add i64 %1634, 10
  store i64 %2923, i64* %3, align 8
  store i32 0, i32* %1597, align 4
  %.pre528 = load i64, i64* %3, align 8
  br label %block_.L_42051d

block_.L_42051d:                                  ; preds = %block_.L_420616, %block_.L_420513
  %2924 = phi i64 [ %3233, %block_.L_420616 ], [ %.pre528, %block_.L_420513 ]
  %2925 = load i64, i64* %RBP.i, align 8
  %2926 = add i64 %2925, -576
  %2927 = add i64 %2924, 6
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RAX.i1370, align 8
  %2931 = add i64 %2925, -32
  %2932 = add i64 %2924, 10
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i64*
  %2934 = load i64, i64* %2933, align 8
  store i64 %2934, i64* %RCX.i733, align 8
  %2935 = add i64 %2934, 136
  %2936 = add i64 %2924, 16
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i32*
  %2938 = load i32, i32* %2937, align 4
  %2939 = sub i32 %2929, %2938
  %2940 = icmp ult i32 %2929, %2938
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %14, align 1
  %2942 = and i32 %2939, 255
  %2943 = tail call i32 @llvm.ctpop.i32(i32 %2942)
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = xor i8 %2945, 1
  store i8 %2946, i8* %21, align 1
  %2947 = xor i32 %2938, %2929
  %2948 = xor i32 %2947, %2939
  %2949 = lshr i32 %2948, 4
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  store i8 %2951, i8* %27, align 1
  %2952 = icmp eq i32 %2939, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %30, align 1
  %2954 = lshr i32 %2939, 31
  %2955 = trunc i32 %2954 to i8
  store i8 %2955, i8* %33, align 1
  %2956 = lshr i32 %2929, 31
  %2957 = lshr i32 %2938, 31
  %2958 = xor i32 %2957, %2956
  %2959 = xor i32 %2954, %2956
  %2960 = add nuw nsw i32 %2959, %2958
  %2961 = icmp eq i32 %2960, 2
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %39, align 1
  %2963 = icmp ne i8 %2955, 0
  %2964 = xor i1 %2963, %2961
  %.demorgan539 = or i1 %2952, %2964
  %.v572 = select i1 %.demorgan539, i64 22, i64 274
  %2965 = add i64 %2924, %.v572
  store i64 %2965, i64* %3, align 8
  br i1 %.demorgan539, label %block_420533, label %block_.L_42062f

block_420533:                                     ; preds = %block_.L_42051d
  store i64 1, i64* %RSI.i1177, align 8
  %2966 = add i64 %2925, -40
  %2967 = add i64 %2965, 9
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to i64*
  %2969 = load i64, i64* %2968, align 8
  store i64 %2969, i64* %RDI.i1148, align 8
  %2970 = add i64 %2965, 34621
  %2971 = add i64 %2965, 14
  %2972 = load i64, i64* %6, align 8
  %2973 = add i64 %2972, -8
  %2974 = inttoptr i64 %2973 to i64*
  store i64 %2971, i64* %2974, align 8
  store i64 %2973, i64* %6, align 8
  store i64 %2970, i64* %3, align 8
  %call2_42053c = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %2970, %struct.Memory* %MEMORY.10)
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -568
  %2977 = load i64, i64* %RAX.i1370, align 8
  %2978 = load i64, i64* %3, align 8
  %2979 = add i64 %2978, 7
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2976 to i64*
  store i64 %2977, i64* %2980, align 8
  %2981 = load i64, i64* %RAX.i1370, align 8
  %2982 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2983 = trunc i64 %2981 to i32
  %2984 = and i32 %2983, 255
  %2985 = tail call i32 @llvm.ctpop.i32(i32 %2984)
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = xor i8 %2987, 1
  store i8 %2988, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2989 = icmp eq i64 %2981, 0
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %30, align 1
  %2991 = lshr i64 %2981, 63
  %2992 = trunc i64 %2991 to i8
  store i8 %2992, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v573 = select i1 %2989, i64 10, i64 15
  %2993 = add i64 %2982, %.v573
  store i64 %2993, i64* %3, align 8
  br i1 %2989, label %block_420552, label %block_.L_420557

block_420552:                                     ; preds = %block_420533
  %2994 = add i64 %2993, 323
  br label %block_.L_420695

block_.L_420557:                                  ; preds = %block_420533
  %2995 = load i64, i64* %RBP.i, align 8
  %2996 = add i64 %2995, -580
  %2997 = add i64 %2993, 10
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  store i32 0, i32* %2998, align 4
  %.pre529 = load i64, i64* %3, align 8
  br label %block_.L_420561

block_.L_420561:                                  ; preds = %block_.L_4205fd, %block_.L_420557
  %2999 = phi i64 [ %3203, %block_.L_4205fd ], [ %.pre529, %block_.L_420557 ]
  %3000 = load i64, i64* %RBP.i, align 8
  %3001 = add i64 %3000, -580
  %3002 = add i64 %2999, 6
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RAX.i1370, align 8
  %3006 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3007 = sub i32 %3004, %3006
  %3008 = icmp ult i32 %3004, %3006
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %14, align 1
  %3010 = and i32 %3007, 255
  %3011 = tail call i32 @llvm.ctpop.i32(i32 %3010)
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = xor i8 %3013, 1
  store i8 %3014, i8* %21, align 1
  %3015 = xor i32 %3006, %3004
  %3016 = xor i32 %3015, %3007
  %3017 = lshr i32 %3016, 4
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  store i8 %3019, i8* %27, align 1
  %3020 = icmp eq i32 %3007, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %30, align 1
  %3022 = lshr i32 %3007, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %33, align 1
  %3024 = lshr i32 %3004, 31
  %3025 = lshr i32 %3006, 31
  %3026 = xor i32 %3025, %3024
  %3027 = xor i32 %3022, %3024
  %3028 = add nuw nsw i32 %3027, %3026
  %3029 = icmp eq i32 %3028, 2
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %39, align 1
  %3031 = icmp ne i8 %3023, 0
  %3032 = xor i1 %3031, %3029
  %.v574 = select i1 %3032, i64 19, i64 181
  %3033 = add i64 %2999, %.v574
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %3, align 8
  br i1 %3032, label %block_420574, label %block_.L_420616

block_420574:                                     ; preds = %block_.L_420561
  store i64 1, i64* %RSI.i1177, align 8
  %3035 = add i64 %3000, -40
  %3036 = add i64 %3033, 9
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i64*
  %3038 = load i64, i64* %3037, align 8
  store i64 %3038, i64* %RDI.i1148, align 8
  %3039 = add i64 %3033, 34556
  %3040 = add i64 %3033, 14
  %3041 = load i64, i64* %6, align 8
  %3042 = add i64 %3041, -8
  %3043 = inttoptr i64 %3042 to i64*
  store i64 %3040, i64* %3043, align 8
  store i64 %3042, i64* %6, align 8
  store i64 %3039, i64* %3, align 8
  %call2_42057d = tail call %struct.Memory* @sub_428c70.Getword(%struct.State* nonnull %0, i64 %3039, %struct.Memory* %MEMORY.10)
  %3044 = load i64, i64* %RBP.i, align 8
  %3045 = add i64 %3044, -568
  %3046 = load i64, i64* %RAX.i1370, align 8
  %3047 = load i64, i64* %3, align 8
  %3048 = add i64 %3047, 7
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3045 to i64*
  store i64 %3046, i64* %3049, align 8
  %3050 = load i64, i64* %RAX.i1370, align 8
  %3051 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3052 = trunc i64 %3050 to i32
  %3053 = and i32 %3052, 255
  %3054 = tail call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3058 = icmp eq i64 %3050, 0
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %30, align 1
  %3060 = lshr i64 %3050, 63
  %3061 = trunc i64 %3060 to i8
  store i8 %3061, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v575 = select i1 %3058, i64 10, i64 15
  %3062 = add i64 %3051, %.v575
  store i64 %3062, i64* %3, align 8
  br i1 %3058, label %block_420593, label %block_.L_420598

block_420593:                                     ; preds = %block_420574
  %3063 = add i64 %3062, 258
  br label %block_.L_420695

block_.L_420598:                                  ; preds = %block_420574
  %3064 = load i64, i64* %RBP.i, align 8
  %3065 = add i64 %3064, -576
  %3066 = add i64 %3062, 7
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i32*
  %3068 = load i32, i32* %3067, align 4
  store i8 0, i8* %14, align 1
  %3069 = and i32 %3068, 255
  %3070 = tail call i32 @llvm.ctpop.i32(i32 %3069)
  %3071 = trunc i32 %3070 to i8
  %3072 = and i8 %3071, 1
  %3073 = xor i8 %3072, 1
  store i8 %3073, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3074 = icmp eq i32 %3068, 0
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %30, align 1
  %3076 = lshr i32 %3068, 31
  %3077 = trunc i32 %3076 to i8
  store i8 %3077, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3078 = icmp ne i8 %3077, 0
  %3079 = or i1 %3074, %3078
  %.v576 = select i1 %3079, i64 101, i64 13
  %3080 = add i64 %3062, %.v576
  store i64 %3080, i64* %3, align 8
  br i1 %3079, label %block_.L_4205fd, label %block_4205a5

block_4205a5:                                     ; preds = %block_.L_420598
  %3081 = add i64 %3080, 6
  store i64 %3081, i64* %3, align 8
  %3082 = load i32, i32* %3067, align 4
  %3083 = zext i32 %3082 to i64
  store i64 %3083, i64* %RAX.i1370, align 8
  %3084 = add i64 %3064, -32
  %3085 = add i64 %3080, 10
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i64*
  %3087 = load i64, i64* %3086, align 8
  store i64 %3087, i64* %RCX.i733, align 8
  %3088 = add i64 %3087, 136
  %3089 = add i64 %3080, 16
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3088 to i32*
  %3091 = load i32, i32* %3090, align 4
  %3092 = sub i32 %3082, %3091
  %3093 = icmp ult i32 %3082, %3091
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %14, align 1
  %3095 = and i32 %3092, 255
  %3096 = tail call i32 @llvm.ctpop.i32(i32 %3095)
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = xor i8 %3098, 1
  store i8 %3099, i8* %21, align 1
  %3100 = xor i32 %3091, %3082
  %3101 = xor i32 %3100, %3092
  %3102 = lshr i32 %3101, 4
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  store i8 %3104, i8* %27, align 1
  %3105 = icmp eq i32 %3092, 0
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %30, align 1
  %3107 = lshr i32 %3092, 31
  %3108 = trunc i32 %3107 to i8
  store i8 %3108, i8* %33, align 1
  %3109 = lshr i32 %3082, 31
  %3110 = lshr i32 %3091, 31
  %3111 = xor i32 %3110, %3109
  %3112 = xor i32 %3107, %3109
  %3113 = add nuw nsw i32 %3112, %3111
  %3114 = icmp eq i32 %3113, 2
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %39, align 1
  %3116 = icmp ne i8 %3108, 0
  %3117 = xor i1 %3116, %3114
  %.v577 = select i1 %3117, i64 22, i64 88
  %3118 = add i64 %3080, %.v577
  store i64 %3118, i64* %3, align 8
  br i1 %3117, label %block_4205bb, label %block_.L_4205fd

block_4205bb:                                     ; preds = %block_4205a5
  %3119 = add i64 %3064, -568
  %3120 = add i64 %3118, 7
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3119 to i64*
  %3122 = load i64, i64* %3121, align 8
  store i64 %3122, i64* %RDI.i1148, align 8
  %3123 = add i64 %3118, 11
  store i64 %3123, i64* %3, align 8
  %3124 = load i64, i64* %3086, align 8
  store i64 %3124, i64* %RAX.i1370, align 8
  %3125 = add i64 %3064, -580
  %3126 = add i64 %3118, 18
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3125 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %RCX.i733, align 8
  %3130 = shl nsw i64 %3129, 2
  %3131 = add i64 %3124, 224
  %3132 = add i64 %3131, %3130
  %3133 = add i64 %3118, 27
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  %3135 = load i32, i32* %3134, align 4
  store i32 %3135, i32* %1225, align 1
  store float 0.000000e+00, float* %1226, align 1
  store float 0.000000e+00, float* %728, align 1
  store float 0.000000e+00, float* %1227, align 1
  %3136 = add i64 %3118, 4549
  %3137 = add i64 %3118, 32
  %3138 = load i64, i64* %6, align 8
  %3139 = add i64 %3138, -8
  %3140 = inttoptr i64 %3139 to i64*
  store i64 %3137, i64* %3140, align 8
  store i64 %3139, i64* %6, align 8
  store i64 %3136, i64* %3, align 8
  %call2_4205d6 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %3136, %struct.Memory* %MEMORY.10)
  %3141 = load i64, i64* %RBP.i, align 8
  %3142 = add i64 %3141, -32
  %3143 = load i64, i64* %3, align 8
  %3144 = add i64 %3143, 4
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3142 to i64*
  %3146 = load i64, i64* %3145, align 8
  store i64 %3146, i64* %RAX.i1370, align 8
  %3147 = add i64 %3146, 160
  %3148 = add i64 %3143, 11
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i64*
  %3150 = load i64, i64* %3149, align 8
  store i64 %3150, i64* %RAX.i1370, align 8
  %3151 = add i64 %3141, -576
  %3152 = add i64 %3143, 18
  store i64 %3152, i64* %3, align 8
  %3153 = inttoptr i64 %3151 to i32*
  %3154 = load i32, i32* %3153, align 4
  %3155 = sext i32 %3154 to i64
  store i64 %3155, i64* %RCX.i733, align 8
  %3156 = shl nsw i64 %3155, 3
  %3157 = add i64 %3156, %3150
  %3158 = add i64 %3143, 22
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i64*
  %3160 = load i64, i64* %3159, align 8
  store i64 %3160, i64* %RAX.i1370, align 8
  %3161 = add i64 %3141, -580
  %3162 = add i64 %3143, 29
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i32*
  %3164 = load i32, i32* %3163, align 4
  %3165 = sext i32 %3164 to i64
  store i64 %3165, i64* %RCX.i733, align 8
  %3166 = shl nsw i64 %3165, 2
  %3167 = add i64 %3166, %3160
  %3168 = add i64 %3143, 34
  store i64 %3168, i64* %3, align 8
  %3169 = load <2 x float>, <2 x float>* %942, align 1
  %3170 = extractelement <2 x float> %3169, i32 0
  %3171 = inttoptr i64 %3167 to float*
  store float %3170, float* %3171, align 4
  %.pre530 = load i64, i64* %3, align 8
  %.pre531 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4205fd

block_.L_4205fd:                                  ; preds = %block_4205a5, %block_4205bb, %block_.L_420598
  %3172 = phi i64 [ %3064, %block_4205a5 ], [ %.pre531, %block_4205bb ], [ %3064, %block_.L_420598 ]
  %3173 = phi i64 [ %3118, %block_4205a5 ], [ %.pre530, %block_4205bb ], [ %3080, %block_.L_420598 ]
  %3174 = add i64 %3172, -580
  %3175 = add i64 %3173, 11
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3174 to i32*
  %3177 = load i32, i32* %3176, align 4
  %3178 = add i32 %3177, 1
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RAX.i1370, align 8
  %3180 = icmp eq i32 %3177, -1
  %3181 = icmp eq i32 %3178, 0
  %3182 = or i1 %3180, %3181
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %14, align 1
  %3184 = and i32 %3178, 255
  %3185 = tail call i32 @llvm.ctpop.i32(i32 %3184)
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  store i8 %3188, i8* %21, align 1
  %3189 = xor i32 %3178, %3177
  %3190 = lshr i32 %3189, 4
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  store i8 %3192, i8* %27, align 1
  %3193 = zext i1 %3181 to i8
  store i8 %3193, i8* %30, align 1
  %3194 = lshr i32 %3178, 31
  %3195 = trunc i32 %3194 to i8
  store i8 %3195, i8* %33, align 1
  %3196 = lshr i32 %3177, 31
  %3197 = xor i32 %3194, %3196
  %3198 = add nuw nsw i32 %3197, %3194
  %3199 = icmp eq i32 %3198, 2
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %39, align 1
  %3201 = add i64 %3173, 20
  store i64 %3201, i64* %3, align 8
  store i32 %3178, i32* %3176, align 4
  %3202 = load i64, i64* %3, align 8
  %3203 = add i64 %3202, -176
  store i64 %3203, i64* %3, align 8
  br label %block_.L_420561

block_.L_420616:                                  ; preds = %block_.L_420561
  %3204 = add i64 %3000, -576
  %3205 = add i64 %3033, 11
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  %3208 = add i32 %3207, 1
  %3209 = zext i32 %3208 to i64
  store i64 %3209, i64* %RAX.i1370, align 8
  %3210 = icmp eq i32 %3207, -1
  %3211 = icmp eq i32 %3208, 0
  %3212 = or i1 %3210, %3211
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %14, align 1
  %3214 = and i32 %3208, 255
  %3215 = tail call i32 @llvm.ctpop.i32(i32 %3214)
  %3216 = trunc i32 %3215 to i8
  %3217 = and i8 %3216, 1
  %3218 = xor i8 %3217, 1
  store i8 %3218, i8* %21, align 1
  %3219 = xor i32 %3208, %3207
  %3220 = lshr i32 %3219, 4
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  store i8 %3222, i8* %27, align 1
  %3223 = zext i1 %3211 to i8
  store i8 %3223, i8* %30, align 1
  %3224 = lshr i32 %3208, 31
  %3225 = trunc i32 %3224 to i8
  store i8 %3225, i8* %33, align 1
  %3226 = lshr i32 %3207, 31
  %3227 = xor i32 %3224, %3226
  %3228 = add nuw nsw i32 %3227, %3224
  %3229 = icmp eq i32 %3228, 2
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %39, align 1
  %3231 = add i64 %3033, 20
  store i64 %3231, i64* %3, align 8
  store i32 %3208, i32* %3206, align 4
  %3232 = load i64, i64* %3, align 8
  %3233 = add i64 %3232, -269
  store i64 %3233, i64* %3, align 8
  br label %block_.L_42051d

block_.L_42062f:                                  ; preds = %block_.L_42051d
  %3234 = add i64 %2965, 4
  store i64 %3234, i64* %3, align 8
  %3235 = load i64, i64* %2933, align 8
  store i64 %3235, i64* %RAX.i1370, align 8
  %3236 = add i64 %3235, 456
  %3237 = add i64 %2965, 10
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3236 to i32*
  %3239 = load i32, i32* %3238, align 4
  %3240 = or i32 %3239, 32
  %3241 = zext i32 %3240 to i64
  store i64 %3241, i64* %RCX.i733, align 8
  store i8 0, i8* %14, align 1
  %3242 = and i32 %3240, 255
  %3243 = tail call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %3247 = lshr i32 %3239, 31
  %3248 = trunc i32 %3247 to i8
  store i8 %3248, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3249 = add i64 %2965, 19
  store i64 %3249, i64* %3, align 8
  store i32 %3240, i32* %3238, align 4
  %3250 = load i64, i64* %RBP.i, align 8
  %3251 = add i64 %3250, -32
  %3252 = load i64, i64* %3, align 8
  %3253 = add i64 %3252, 4
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3251 to i64*
  %3255 = load i64, i64* %3254, align 8
  store i64 %3255, i64* %RAX.i1370, align 8
  %3256 = add i64 %3255, 456
  %3257 = add i64 %3252, 10
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i32*
  %3259 = load i32, i32* %3258, align 4
  %3260 = and i32 %3259, -2
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RCX.i733, align 8
  store i8 0, i8* %14, align 1
  %3262 = and i32 %3259, 254
  %3263 = tail call i32 @llvm.ctpop.i32(i32 %3262)
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = xor i8 %3265, 1
  store i8 %3266, i8* %21, align 1
  %3267 = icmp ult i32 %3259, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %30, align 1
  %3269 = lshr i32 %3259, 31
  %3270 = trunc i32 %3269 to i8
  store i8 %3270, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3271 = add i64 %3252, 19
  store i64 %3271, i64* %3, align 8
  store i32 %3260, i32* %3258, align 4
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -32
  %3274 = load i64, i64* %3, align 8
  %3275 = add i64 %3274, 4
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3273 to i64*
  %3277 = load i64, i64* %3276, align 8
  store i64 %3277, i64* %RDI.i1148, align 8
  %3278 = add i64 %3274, 79323
  %3279 = add i64 %3274, 9
  %3280 = load i64, i64* %6, align 8
  %3281 = add i64 %3280, -8
  %3282 = inttoptr i64 %3281 to i64*
  store i64 %3279, i64* %3282, align 8
  store i64 %3281, i64* %6, align 8
  store i64 %3278, i64* %3, align 8
  %call2_420659 = tail call %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* nonnull %0, i64 %3278, %struct.Memory* %MEMORY.10)
  %3283 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457830_type* @G__0x457830 to i64), i64* %RDI.i1148, align 8
  %3284 = add i64 %3283, 153490
  %3285 = add i64 %3283, 15
  %3286 = load i64, i64* %6, align 8
  %3287 = add i64 %3286, -8
  %3288 = inttoptr i64 %3287 to i64*
  store i64 %3285, i64* %3288, align 8
  store i64 %3287, i64* %6, align 8
  store i64 %3284, i64* %3, align 8
  %call2_420668 = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %3284, %struct.Memory* %call2_420659)
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -32
  %3291 = load i64, i64* %3, align 8
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3290 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RDI.i1148, align 8
  %3295 = add i64 %3294, 48
  %3296 = load i64, i64* %RAX.i1370, align 8
  %3297 = add i64 %3291, 8
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3295 to i64*
  store i64 %3296, i64* %3298, align 8
  %3299 = load i64, i64* %RBP.i, align 8
  %3300 = add i64 %3299, -32
  %3301 = load i64, i64* %3, align 8
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3300 to i64*
  %3304 = load i64, i64* %3303, align 8
  store i64 %3304, i64* %RDI.i1148, align 8
  %3305 = add i64 %3301, 75739
  %3306 = add i64 %3301, 9
  %3307 = load i64, i64* %6, align 8
  %3308 = add i64 %3307, -8
  %3309 = inttoptr i64 %3308 to i64*
  store i64 %3306, i64* %3309, align 8
  store i64 %3308, i64* %6, align 8
  store i64 %3305, i64* %3, align 8
  %call2_420679 = tail call %struct.Memory* @sub_432e50.Plan7SetCtime(%struct.State* nonnull %0, i64 %3305, %struct.Memory* %call2_420668)
  %3310 = load i64, i64* %RBP.i, align 8
  %3311 = add i64 %3310, -32
  %3312 = load i64, i64* %3, align 8
  %3313 = add i64 %3312, 4
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3311 to i64*
  %3315 = load i64, i64* %3314, align 8
  store i64 %3315, i64* %RAX.i1370, align 8
  %3316 = add i64 %3310, -24
  %3317 = add i64 %3312, 8
  store i64 %3317, i64* %3, align 8
  %3318 = inttoptr i64 %3316 to i64*
  %3319 = load i64, i64* %3318, align 8
  store i64 %3319, i64* %RDI.i1148, align 8
  %3320 = add i64 %3312, 11
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i64*
  store i64 %3315, i64* %3321, align 8
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -4
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, 7
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3323 to i32*
  store i32 1, i32* %3326, align 4
  %3327 = load i64, i64* %3, align 8
  %3328 = add i64 %3327, 43
  store i64 %3328, i64* %3, align 8
  br label %block_.L_4206bb

block_.L_420695:                                  ; preds = %block_420593, %block_420552, %block_4204c4, %block_42046f, %block_420406, %block_4203e2, %block_420379, %block_420355, %block_4202ae, %block_420245, %block_4201dc, %block_420135, %block_4200cd, %block_420053, %block_420012, %block_41ffce, %block_41ffaa, %block_41ff6d, %block_41fe9a, %block_41fe52, %block_41fe15, %block_41fdd4, %block_41fd8f, %block_41fd7c, %block_41fd69, %block_41fd57, %block_41fcab, %block_41fc6a, %block_41fc49, %block_41fbf6, %block_41fba3, %block_41fb7f, %block_41fb53, %block_.L_41fabb, %block_41fa54, %block_41fa20, %block_41f9fc, %block_41f9c6, %block_41f999
  %.sink = phi i64 [ %3063, %block_420593 ], [ %2994, %block_420552 ], [ %2851, %block_4204c4 ], [ %2781, %block_42046f ], [ %2671, %block_420406 ], [ %2641, %block_4203e2 ], [ %2531, %block_420379 ], [ %2501, %block_420355 ], [ %2337, %block_4202ae ], [ %2227, %block_420245 ], [ %2117, %block_4201dc ], [ %1953, %block_420135 ], [ %1844, %block_4200cd ], [ %1731, %block_420053 ], [ %1663, %block_420012 ], [ %1585, %block_41ffce ], [ %1555, %block_41ffaa ], [ %1495, %block_41ff6d ], [ %1283, %block_41fe9a ], [ %1220, %block_41fe52 ], [ %1164, %block_41fe15 ], [ %1096, %block_41fdd4 ], [ %1033, %block_41fd8f ], [ %1021, %block_41fd7c ], [ %1002, %block_41fd69 ], [ %972, %block_41fd57 ], [ %795, %block_41fcab ], [ %717, %block_41fc6a ], [ %693, %block_41fc49 ], [ %620, %block_41fbf6 ], [ %547, %block_41fba3 ], [ %517, %block_41fb7f ], [ %491, %block_41fb53 ], [ %376, %block_.L_41fabb ], [ %307, %block_41fa54 ], [ %262, %block_41fa20 ], [ %232, %block_41f9fc ], [ %184, %block_41f9c6 ], [ %142, %block_41f999 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.10, %block_420593 ], [ %MEMORY.10, %block_420552 ], [ %call2_4204ae, %block_4204c4 ], [ %call2_420459, %block_42046f ], [ %call2_4203f0, %block_420406 ], [ %call2_4203cc, %block_4203e2 ], [ %call2_420363, %block_420379 ], [ %call2_42033f, %block_420355 ], [ %call2_420298, %block_4202ae ], [ %call2_42022f, %block_420245 ], [ %call2_4201c6, %block_4201dc ], [ %call2_42011f, %block_420135 ], [ %MEMORY.10, %block_4200cd ], [ %MEMORY.10, %block_420053 ], [ %MEMORY.10, %block_420012 ], [ %call2_41ffb8, %block_41ffce ], [ %call2_41ff94, %block_41ffaa ], [ %call2_41feae, %block_41ff6d ], [ %call2_41fe84, %block_41fe9a ], [ %call2_41fe3c, %block_41fe52 ], [ %call2_41fdbe, %block_41fe15 ], [ %call2_41fdbe, %block_41fdd4 ], [ %call2_41fd49, %block_41fd8f ], [ %call2_41fd49, %block_41fd7c ], [ %call2_41fd49, %block_41fd69 ], [ %call2_41fd49, %block_41fd57 ], [ %704, %block_41fcab ], [ %704, %block_41fc6a ], [ %call2_41fc33, %block_41fc49 ], [ %call2_41fbe0, %block_41fbf6 ], [ %call2_41fb8d, %block_41fba3 ], [ %504, %block_41fb7f ], [ %call2_41fb3d, %block_41fb53 ], [ %357, %block_.L_41fabb ], [ %call2_41fa3e, %block_41fa54 ], [ %call2_41fa0a, %block_41fa20 ], [ %call2_41f9e6, %block_41f9fc ], [ %call2_41f9b0, %block_41f9c6 ], [ %129, %block_41f999 ]
  %3329 = load i64, i64* %RBP.i, align 8
  %3330 = add i64 %3329, -32
  %3331 = add i64 %.sink, 5
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i64*
  %3333 = load i64, i64* %3332, align 8
  store i8 0, i8* %14, align 1
  %3334 = trunc i64 %3333 to i32
  %3335 = and i32 %3334, 255
  %3336 = tail call i32 @llvm.ctpop.i32(i32 %3335)
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  store i8 %3339, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3340 = icmp eq i64 %3333, 0
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %30, align 1
  %3342 = lshr i64 %3333, 63
  %3343 = trunc i64 %3342 to i8
  store i8 %3343, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v542 = select i1 %3340, i64 20, i64 11
  %3344 = add i64 %.sink, %.v542
  store i64 %3344, i64* %3, align 8
  br i1 %3340, label %block_.L_4206a9, label %block_4206a0

block_4206a0:                                     ; preds = %block_.L_420695
  %3345 = add i64 %3344, 4
  store i64 %3345, i64* %3, align 8
  %3346 = load i64, i64* %3332, align 8
  store i64 %3346, i64* %RDI.i1148, align 8
  %3347 = add i64 %3344, 73520
  %3348 = add i64 %3344, 9
  %3349 = load i64, i64* %6, align 8
  %3350 = add i64 %3349, -8
  %3351 = inttoptr i64 %3350 to i64*
  store i64 %3348, i64* %3351, align 8
  store i64 %3350, i64* %6, align 8
  store i64 %3347, i64* %3, align 8
  %call2_4206a4 = tail call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* nonnull %0, i64 %3347, %struct.Memory* %MEMORY.26)
  %.pre532 = load i64, i64* %RBP.i, align 8
  %.pre533 = load i64, i64* %3, align 8
  br label %block_.L_4206a9

block_.L_4206a9:                                  ; preds = %block_4206a0, %block_.L_420695
  %3352 = phi i64 [ %3344, %block_.L_420695 ], [ %.pre533, %block_4206a0 ]
  %3353 = phi i64 [ %3329, %block_.L_420695 ], [ %.pre532, %block_4206a0 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_420695 ], [ %call2_4206a4, %block_4206a0 ]
  %3354 = add i64 %3353, -24
  %3355 = add i64 %3352, 4
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3354 to i64*
  %3357 = load i64, i64* %3356, align 8
  store i64 %3357, i64* %RAX.i1370, align 8
  %3358 = add i64 %3352, 11
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i64*
  store i64 0, i64* %3359, align 8
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -4
  %3362 = load i64, i64* %3, align 8
  %3363 = add i64 %3362, 7
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3361 to i32*
  store i32 1, i32* %3364, align 4
  %.pre534 = load i64, i64* %3, align 8
  br label %block_.L_4206bb

block_.L_4206bb:                                  ; preds = %block_.L_4206a9, %block_.L_42062f, %block_.L_41f967
  %RAX.i.pre-phi = phi i64* [ %RAX.i1370, %block_.L_4206a9 ], [ %RAX.i1370, %block_.L_42062f ], [ %.pre535.pre-phi, %block_.L_41f967 ]
  %3365 = phi i64 [ %.pre534, %block_.L_4206a9 ], [ %3328, %block_.L_42062f ], [ %121, %block_.L_41f967 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.27, %block_.L_4206a9 ], [ %call2_420679, %block_.L_42062f ], [ %MEMORY.0, %block_.L_41f967 ]
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -4
  %3368 = add i64 %3365, 3
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RAX.i.pre-phi, align 8
  %3372 = load i64, i64* %6, align 8
  %3373 = add i64 %3372, 624
  store i64 %3373, i64* %6, align 8
  %3374 = icmp ugt i64 %3372, -625
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %14, align 1
  %3376 = trunc i64 %3373 to i32
  %3377 = and i32 %3376, 255
  %3378 = tail call i32 @llvm.ctpop.i32(i32 %3377)
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = xor i8 %3380, 1
  store i8 %3381, i8* %21, align 1
  %3382 = xor i64 %3372, 16
  %3383 = xor i64 %3382, %3373
  %3384 = lshr i64 %3383, 4
  %3385 = trunc i64 %3384 to i8
  %3386 = and i8 %3385, 1
  store i8 %3386, i8* %27, align 1
  %3387 = icmp eq i64 %3373, 0
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %30, align 1
  %3389 = lshr i64 %3373, 63
  %3390 = trunc i64 %3389 to i8
  store i8 %3390, i8* %33, align 1
  %3391 = lshr i64 %3372, 63
  %3392 = xor i64 %3389, %3391
  %3393 = add nuw nsw i64 %3392, %3389
  %3394 = icmp eq i64 %3393, 2
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %39, align 1
  %3396 = add i64 %3365, 11
  store i64 %3396, i64* %3, align 8
  %3397 = add i64 %3372, 632
  %3398 = inttoptr i64 %3373 to i64*
  %3399 = load i64, i64* %3398, align 8
  store i64 %3399, i64* %RBP.i, align 8
  store i64 %3397, i64* %6, align 8
  %3400 = add i64 %3365, 12
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3397 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %3, align 8
  %3403 = add i64 %3372, 640
  store i64 %3403, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x270___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 624
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
define %struct.Memory* @routine_movq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_callq_.feof_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f967(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f973(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4206bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577ce___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577ce_type* @G__0x4577ce to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_41f99e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420695(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.Getword(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f9cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x23c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -572
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fa01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fa25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x238__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Plan7SetName(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fa59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.s2upper(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x457947___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457947_type* @G__0x457947 to i64), i64 4294967295), i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fa90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41fac5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x45794d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x45794d_type* @G__0x45794d to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fabb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41fac0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_41fae3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x248__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41fb34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_41fb2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x250__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_41fb58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x676fe0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41fb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x457914___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fbd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_orl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 4
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fbfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fc2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 8
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
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
define %struct.Memory* @routine_jne_.L_41fc4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x457955___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457955_type* @G__0x457955 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41fc6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
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
define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_41fcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fcb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34a70__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34a70__rip__type* @G_0x34a70__rip_ to i64)
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
define %struct.Memory* @routine_callq_.ascii2prob(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xe0__rdi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 224
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41fc79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x34b94__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34b94__rip__type* @G_0x34b94__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x34b94__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x34b94__rip__type* @G_0x34b94__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x260__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -608
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
define %struct.Memory* @routine_je_.L_41fd2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movsd_MINUS0x260__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -608
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x130__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 304
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
define %struct.Memory* @routine_je_.L_41fd5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x23c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
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
define %struct.Memory* @routine_jge_.L_41fd6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i64 %7, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %7, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fd81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
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
define %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.ZeroPlan7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Plan7LSConfig(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fdd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41fe33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41fe1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41fe1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41fde3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41fe57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x348c9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x348c9__rip__type* @G_0x348c9__rip_ to i64)
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
define %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_jne_.L_41fe9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34881__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34881__rip__type* @G_0x34881__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 168
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
define %struct.Memory* @routine_movss_0x4__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movss_0x4__rdi____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss_0xa8__rdi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, 168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jge_.L_41ff8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ff72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ff77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ff41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ffaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ffd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
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
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_420513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420017(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4200ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
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
define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 224
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
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
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4200d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420116(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34638__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34638__rip__type* @G_0x34638__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42013a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4201bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420176(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x268__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
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
define %struct.Memory* @routine_jmpq_.L_420196(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x345aa__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x345aa__rip__type* @G_0x345aa__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x268__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
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
define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_jne_.L_4201e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420226(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34529__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34529__rip__type* @G_0x34529__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_jne_.L_42024a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42028f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x344c0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x344c0__rip__type* @G_0x344c0__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_jne_.L_4202b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420336(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4202ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x270__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
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
define %struct.Memory* @routine_jmpq_.L_42030f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x34431__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34431__rip__type* @G_0x34431__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x270__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
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
define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_jne_.L_42035a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42037e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4203c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x3438c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3438c__rip__type* @G_0x3438c__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_4203e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42040b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420450(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x342ff__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x342ff__rip__type* @G_0x342ff__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_jne_.L_420474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_4204a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x238__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = load i8, i8* %5, align 1
  store i8 %8, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %CL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4204c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4204fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4204ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -576
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ffdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42062f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_420616(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
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
define %struct.Memory* @routine_jle_.L_4205fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4205fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420602(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42061b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42051d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 32
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xfffffffe___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967294
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 254
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp ult i32 %6, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %6, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457830___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457830_type* @G__0x457830 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Strdup(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Plan7SetCtime(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4206a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.FreePlan7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x270___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -625
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
