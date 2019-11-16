; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x34f1e__rip__type = type <{ [4 x i8] }>
%G_0x34f72__rip__type = type <{ [4 x i8] }>
%G_0x34fea__rip__type = type <{ [4 x i8] }>
%G_0x353db__rip__type = type <{ [4 x i8] }>
%G_0x35449__rip__type = type <{ [4 x i8] }>
%G_0x357f5__rip__type = type <{ [8 x i8] }>
%G_0x3583b__rip__type = type <{ [4 x i8] }>
%G_0x35884__rip__type = type <{ [4 x i8] }>
%G_0x35962__rip__type = type <{ [4 x i8] }>
%G_0x676d90_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x45763b_type = type <{ [8 x i8] }>
%G__0x4577c5_type = type <{ [8 x i8] }>
%G__0x457899_type = type <{ [8 x i8] }>
%G__0x457947_type = type <{ [8 x i8] }>
%G__0x45794d_type = type <{ [8 x i8] }>
%G__0x45795a_type = type <{ [8 x i8] }>
%G__0x457960_type = type <{ [8 x i8] }>
%G__0x457966_type = type <{ [8 x i8] }>
%G__0x45796c_type = type <{ [8 x i8] }>
%G__0x457972_type = type <{ [8 x i8] }>
%G__0x457978_type = type <{ [8 x i8] }>
%G__0x45797e_type = type <{ [8 x i8] }>
%G__0x457984_type = type <{ [8 x i8] }>
%G__0x45798a_type = type <{ [8 x i8] }>
%G__0x457990_type = type <{ [8 x i8] }>
%G__0x457996_type = type <{ [8 x i8] }>
%G__0x45799c_type = type <{ [8 x i8] }>
%G__0x4579a2_type = type <{ [8 x i8] }>
%G__0x4579a8_type = type <{ [8 x i8] }>
%G__0x4579ae_type = type <{ [8 x i8] }>
%G__0x4579b4_type = type <{ [8 x i8] }>
%G__0x4579ba_type = type <{ [8 x i8] }>
%G__0x4579c0_type = type <{ [8 x i8] }>
%G__0x4579e9_type = type <{ [8 x i8] }>
%G__0x4579ef_type = type <{ [8 x i8] }>
%G__0x4579f5_type = type <{ [8 x i8] }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45a381_type = type <{ [8 x i8] }>
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
@G_0x34f1e__rip_ = global %G_0x34f1e__rip__type zeroinitializer
@G_0x34f72__rip_ = global %G_0x34f72__rip__type zeroinitializer
@G_0x34fea__rip_ = global %G_0x34fea__rip__type zeroinitializer
@G_0x353db__rip_ = global %G_0x353db__rip__type zeroinitializer
@G_0x35449__rip_ = global %G_0x35449__rip__type zeroinitializer
@G_0x357f5__rip_ = global %G_0x357f5__rip__type zeroinitializer
@G_0x3583b__rip_ = global %G_0x3583b__rip__type zeroinitializer
@G_0x35884__rip_ = global %G_0x35884__rip__type zeroinitializer
@G_0x35962__rip_ = global %G_0x35962__rip__type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x45763b = global %G__0x45763b_type zeroinitializer
@G__0x4577c5 = global %G__0x4577c5_type zeroinitializer
@G__0x457899 = global %G__0x457899_type zeroinitializer
@G__0x457947 = global %G__0x457947_type zeroinitializer
@G__0x45794d = global %G__0x45794d_type zeroinitializer
@G__0x45795a = global %G__0x45795a_type zeroinitializer
@G__0x457960 = global %G__0x457960_type zeroinitializer
@G__0x457966 = global %G__0x457966_type zeroinitializer
@G__0x45796c = global %G__0x45796c_type zeroinitializer
@G__0x457972 = global %G__0x457972_type zeroinitializer
@G__0x457978 = global %G__0x457978_type zeroinitializer
@G__0x45797e = global %G__0x45797e_type zeroinitializer
@G__0x457984 = global %G__0x457984_type zeroinitializer
@G__0x45798a = global %G__0x45798a_type zeroinitializer
@G__0x457990 = global %G__0x457990_type zeroinitializer
@G__0x457996 = global %G__0x457996_type zeroinitializer
@G__0x45799c = global %G__0x45799c_type zeroinitializer
@G__0x4579a2 = global %G__0x4579a2_type zeroinitializer
@G__0x4579a8 = global %G__0x4579a8_type zeroinitializer
@G__0x4579ae = global %G__0x4579ae_type zeroinitializer
@G__0x4579b4 = global %G__0x4579b4_type zeroinitializer
@G__0x4579ba = global %G__0x4579ba_type zeroinitializer
@G__0x4579c0 = global %G__0x4579c0_type zeroinitializer
@G__0x4579e9 = global %G__0x4579e9_type zeroinitializer
@G__0x4579ef = global %G__0x4579ef_type zeroinitializer
@G__0x4579f5 = global %G__0x4579f5_type zeroinitializer
@G__0x45a1f5 = global %G__0x45a1f5_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45a381 = global %G__0x45a381_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432bd0.Plan7SetAccession(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432c40.Plan7SetDescription(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446010.s2upper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_444890.sre_toupper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445e70.StringChop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445df0.Strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401660.strtok_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_421780.ascii2prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @read_asc20hmm(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i535, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i759 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -24
  %47 = load i64, i64* %RSI.i759, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -32
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 8
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RSI.i759, align 8
  %62 = add i64 %58, 7
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RDI.i535, align 8
  %65 = add i64 %58, -118635
  %66 = add i64 %58, 12
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  %call2_41e502 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64 %65, %struct.Memory* %2)
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i886 = bitcast %union.anon* %70 to i32*
  %71 = load i32, i32* %EAX.i886, align 4
  %72 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %73 = and i32 %71, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73)
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %78 = icmp eq i32 %71, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %30, align 1
  %80 = lshr i32 %71, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v586 = select i1 %78, i64 9, i64 43
  %82 = add i64 %72, %.v586
  store i64 %82, i64* %3, align 8
  br i1 %78, label %block_41e510, label %entry.block_.L_41e532_crit_edge

entry.block_.L_41e532_crit_edge:                  ; preds = %entry
  %.pre582 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  br label %block_.L_41e532

block_41e510:                                     ; preds = %entry
  store i64 512, i64* %RSI.i759, align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -544
  store i64 %84, i64* %RDI.i535, align 8
  %RAX.i1226 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %85 = add i64 %83, -16
  %86 = add i64 %82, 16
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RAX.i1226, align 8
  %RDX.i1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %89 = add i64 %82, 19
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RDX.i1259, align 8
  %92 = add i64 %82, -118736
  %93 = add i64 %82, 24
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  %call2_41e523 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %92, %struct.Memory* %call2_41e502)
  %97 = load i64, i64* %RAX.i1226, align 8
  %98 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %99 = trunc i64 %97 to i32
  %100 = and i32 %99, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %105 = icmp eq i64 %97, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %30, align 1
  %107 = lshr i64 %97, 63
  %108 = trunc i64 %107 to i8
  store i8 %108, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v587 = select i1 %105, i64 10, i64 22
  %109 = add i64 %98, %.v587
  store i64 %109, i64* %3, align 8
  br i1 %105, label %block_.L_41e532, label %block_.L_41e53e

block_.L_41e532:                                  ; preds = %block_41e510, %entry.block_.L_41e532_crit_edge
  %.pre581.pre-phi = phi i64* [ %.pre582, %entry.block_.L_41e532_crit_edge ], [ %RAX.i1226, %block_41e510 ]
  %110 = phi i64 [ %82, %entry.block_.L_41e532_crit_edge ], [ %109, %block_41e510 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_41e502, %entry.block_.L_41e532_crit_edge ], [ %call2_41e523, %block_41e510 ]
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -4
  %113 = add i64 %110, 7
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 0, i32* %114, align 4
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 5067
  store i64 %116, i64* %3, align 8
  br label %block_.L_41f904

block_.L_41e53e:                                  ; preds = %block_41e510
  store i64 ptrtoint (%G__0x4577c5_type* @G__0x4577c5 to i64), i64* %RSI.i759, align 8
  store i64 8, i64* %RAX.i1226, align 8
  store i64 8, i64* %RDX.i1259, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -544
  store i64 %118, i64* %RDI.i535, align 8
  %119 = add i64 %109, -119150
  %120 = add i64 %109, 29
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %124 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_41e523)
  %125 = load i32, i32* %EAX.i886, align 4
  %126 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %127 = and i32 %125, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %132 = icmp eq i32 %125, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %30, align 1
  %134 = lshr i32 %125, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v588 = select i1 %132, i64 14, i64 9
  %136 = add i64 %126, %.v588
  store i64 %136, i64* %3, align 8
  br i1 %132, label %block_.L_41e569, label %block_41e564

block_41e564:                                     ; preds = %block_.L_41e53e
  %137 = add i64 %136, 4986
  br label %block_.L_41f8de

block_.L_41e569:                                  ; preds = %block_.L_41e53e
  %138 = add i64 %136, 79863
  %139 = add i64 %136, 5
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %call2_41e569 = tail call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* nonnull %0, i64 %138, %struct.Memory* %124)
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -32
  %145 = load i64, i64* %RAX.i1226, align 8
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148, align 8
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -556
  %151 = load i64, i64* %3, align 8
  %152 = add i64 %151, 10
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i32*
  store i32 -1, i32* %153, align 4
  %RCX.i875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %155 = bitcast %union.VectorReg* %154 to i8*
  %156 = bitcast %union.VectorReg* %154 to <2 x i32>*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %158 = bitcast i64* %157 to <2 x i32>*
  %159 = bitcast %union.VectorReg* %154 to float*
  %160 = getelementptr inbounds i8, i8* %155, i64 4
  %161 = bitcast i8* %160 to i32*
  %162 = bitcast i64* %157 to i32*
  %163 = getelementptr inbounds i8, i8* %155, i64 12
  %164 = bitcast i8* %163 to i32*
  %165 = bitcast %union.VectorReg* %154 to <2 x float>*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %167 = bitcast [32 x %union.VectorReg]* %166 to i8*
  %168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %166, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %169 = bitcast i64* %157 to double*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %171 = bitcast %union.VectorReg* %170 to i8*
  %172 = bitcast %union.VectorReg* %170 to <2 x i32>*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %174 = bitcast i64* %173 to <2 x i32>*
  %175 = bitcast %union.VectorReg* %170 to float*
  %176 = getelementptr inbounds i8, i8* %171, i64 4
  %177 = bitcast i8* %176 to i32*
  %178 = bitcast i64* %173 to i32*
  %179 = getelementptr inbounds i8, i8* %171, i64 12
  %180 = bitcast i8* %179 to i32*
  %181 = bitcast %union.VectorReg* %170 to <2 x float>*
  %182 = bitcast %union.VectorReg* %170 to double*
  %183 = bitcast [32 x %union.VectorReg]* %166 to float*
  %184 = getelementptr inbounds i8, i8* %167, i64 4
  %185 = bitcast i8* %184 to i32*
  %186 = getelementptr inbounds i8, i8* %167, i64 12
  %187 = bitcast i8* %186 to i32*
  %188 = bitcast [32 x %union.VectorReg]* %166 to <2 x float>*
  %AL.i = bitcast %union.anon* %70 to i8*
  %189 = bitcast [32 x %union.VectorReg]* %166 to i32*
  %190 = bitcast i8* %184 to float*
  %191 = bitcast i64* %157 to float*
  %192 = bitcast i8* %186 to float*
  %193 = bitcast %union.VectorReg* %170 to i32*
  %194 = bitcast i8* %176 to float*
  %195 = bitcast i64* %173 to float*
  %196 = bitcast i8* %179 to float*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %198 = bitcast %union.VectorReg* %197 to i8*
  %199 = bitcast %union.VectorReg* %197 to i32*
  %200 = getelementptr inbounds i8, i8* %198, i64 4
  %201 = bitcast i8* %200 to float*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %203 = bitcast i64* %202 to float*
  %204 = getelementptr inbounds i8, i8* %198, i64 12
  %205 = bitcast i8* %204 to float*
  %206 = bitcast %union.VectorReg* %197 to <2 x float>*
  %207 = bitcast %union.VectorReg* %154 to i32*
  %208 = bitcast i8* %160 to float*
  %209 = bitcast i8* %163 to float*
  %ESI.i = bitcast %union.anon* %44 to i32*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1684 = getelementptr inbounds %union.anon, %union.anon* %210, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41e57c

block_.L_41e57c:                                  ; preds = %block_.L_41f1f7, %block_.L_41e569
  %211 = phi i64 [ %.pre, %block_.L_41e569 ], [ %2968, %block_.L_41f1f7 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_41e569, %block_.L_41e569 ], [ %MEMORY.31, %block_.L_41f1f7 ]
  store i64 512, i64* %RSI.i759, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -544
  store i64 %213, i64* %RDI.i535, align 8
  %214 = add i64 %212, -16
  %215 = add i64 %211, 16
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %RAX.i1226, align 8
  %218 = add i64 %211, 19
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RDX.i1259, align 8
  %221 = add i64 %211, -118844
  %222 = add i64 %211, 24
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_41e58f = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %221, %struct.Memory* %MEMORY.1)
  %226 = load i64, i64* %RAX.i1226, align 8
  %227 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %228 = trunc i64 %226 to i32
  %229 = and i32 %228, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %234 = icmp eq i64 %226, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %30, align 1
  %236 = lshr i64 %226, 63
  %237 = trunc i64 %236 to i8
  store i8 %237, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v590 = select i1 %234, i64 3176, i64 10
  %238 = add i64 %227, %.v590
  store i64 %238, i64* %3, align 8
  br i1 %234, label %block_.L_41f1fc.loopexit, label %block_41e59e

block_41e59e:                                     ; preds = %block_.L_41e57c
  store i64 ptrtoint (%G__0x45795a_type* @G__0x45795a to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -544
  store i64 %240, i64* %RDI.i535, align 8
  %241 = add i64 %238, -119246
  %242 = add i64 %238, 29
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %6, align 8
  store i64 %241, i64* %3, align 8
  %246 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.1)
  %247 = load i32, i32* %EAX.i886, align 4
  %248 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %249 = and i32 %247, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %254 = icmp eq i32 %247, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %30, align 1
  %256 = lshr i32 %247, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v591 = select i1 %254, i64 9, i64 37
  %258 = add i64 %248, %.v591
  store i64 %258, i64* %3, align 8
  br i1 %254, label %block_41e5c4, label %block_.L_41e5e0

block_41e5c4:                                     ; preds = %block_41e59e
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -544
  store i64 %260, i64* %RAX.i1226, align 8
  %261 = add i64 %259, -32
  %262 = add i64 %258, 11
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RDI.i535, align 8
  %265 = add i64 %259, -538
  store i64 %265, i64* %RAX.i1226, align 8
  %266 = icmp ugt i64 %260, -7
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %14, align 1
  %268 = trunc i64 %265 to i32
  %269 = and i32 %268, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %21, align 1
  %274 = xor i64 %265, %260
  %275 = lshr i64 %274, 4
  %276 = trunc i64 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %27, align 1
  %278 = icmp eq i64 %265, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %30, align 1
  %280 = lshr i64 %265, 63
  %281 = trunc i64 %280 to i8
  store i8 %281, i8* %33, align 1
  %282 = lshr i64 %260, 63
  %283 = xor i64 %280, %282
  %284 = add nuw nsw i64 %283, %280
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %39, align 1
  store i64 %265, i64* %RSI.i759, align 8
  %287 = add i64 %258, 83388
  %288 = add i64 %258, 23
  %289 = load i64, i64* %6, align 8
  %290 = add i64 %289, -8
  %291 = inttoptr i64 %290 to i64*
  store i64 %288, i64* %291, align 8
  store i64 %290, i64* %6, align 8
  store i64 %287, i64* %3, align 8
  %call2_41e5d6 = tail call %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* nonnull %0, i64 %287, %struct.Memory* %246)
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, 3100
  br label %block_.L_41f1f7

block_.L_41e5e0:                                  ; preds = %block_41e59e
  store i64 ptrtoint (%G__0x457960_type* @G__0x457960 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -544
  store i64 %295, i64* %RDI.i535, align 8
  %296 = add i64 %258, -119312
  %297 = add i64 %258, 29
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %301 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %246)
  %302 = load i32, i32* %EAX.i886, align 4
  %303 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %304 = and i32 %302, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %309 = icmp eq i32 %302, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %30, align 1
  %311 = lshr i32 %302, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v592 = select i1 %309, i64 9, i64 37
  %313 = add i64 %303, %.v592
  store i64 %313, i64* %3, align 8
  br i1 %309, label %block_41e606, label %block_.L_41e622

block_41e606:                                     ; preds = %block_.L_41e5e0
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -544
  store i64 %315, i64* %RAX.i1226, align 8
  %316 = add i64 %314, -32
  %317 = add i64 %313, 11
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RDI.i535, align 8
  %320 = add i64 %314, -538
  store i64 %320, i64* %RAX.i1226, align 8
  %321 = icmp ugt i64 %315, -7
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %14, align 1
  %323 = trunc i64 %320 to i32
  %324 = and i32 %323, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  %329 = xor i64 %320, %315
  %330 = lshr i64 %329, 4
  %331 = trunc i64 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %27, align 1
  %333 = icmp eq i64 %320, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %30, align 1
  %335 = lshr i64 %320, 63
  %336 = trunc i64 %335 to i8
  store i8 %336, i8* %33, align 1
  %337 = lshr i64 %315, 63
  %338 = xor i64 %335, %337
  %339 = add nuw nsw i64 %338, %335
  %340 = icmp eq i64 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %39, align 1
  store i64 %320, i64* %RSI.i759, align 8
  %342 = add i64 %313, 83402
  %343 = add i64 %313, 23
  %344 = load i64, i64* %6, align 8
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %343, i64* %346, align 8
  store i64 %345, i64* %6, align 8
  store i64 %342, i64* %3, align 8
  %call2_41e618 = tail call %struct.Memory* @sub_432bd0.Plan7SetAccession(%struct.State* nonnull %0, i64 %342, %struct.Memory* %301)
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, 3029
  br label %block_.L_41f1f2

block_.L_41e622:                                  ; preds = %block_.L_41e5e0
  store i64 ptrtoint (%G__0x457966_type* @G__0x457966 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -544
  store i64 %350, i64* %RDI.i535, align 8
  %351 = add i64 %313, -119378
  %352 = add i64 %313, 29
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %356 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %301)
  %357 = load i32, i32* %EAX.i886, align 4
  %358 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %359 = and i32 %357, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %364 = icmp eq i32 %357, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %30, align 1
  %366 = lshr i32 %357, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v593 = select i1 %364, i64 9, i64 37
  %368 = add i64 %358, %.v593
  store i64 %368, i64* %3, align 8
  br i1 %364, label %block_41e648, label %block_.L_41e664

block_41e648:                                     ; preds = %block_.L_41e622
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -544
  store i64 %370, i64* %RAX.i1226, align 8
  %371 = add i64 %369, -32
  %372 = add i64 %368, 11
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %RDI.i535, align 8
  %375 = add i64 %369, -538
  store i64 %375, i64* %RAX.i1226, align 8
  %376 = icmp ugt i64 %370, -7
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %14, align 1
  %378 = trunc i64 %375 to i32
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %21, align 1
  %384 = xor i64 %375, %370
  %385 = lshr i64 %384, 4
  %386 = trunc i64 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %27, align 1
  %388 = icmp eq i64 %375, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %30, align 1
  %390 = lshr i64 %375, 63
  %391 = trunc i64 %390 to i8
  store i8 %391, i8* %33, align 1
  %392 = lshr i64 %370, 63
  %393 = xor i64 %390, %392
  %394 = add nuw nsw i64 %393, %390
  %395 = icmp eq i64 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %39, align 1
  store i64 %375, i64* %RSI.i759, align 8
  %397 = add i64 %368, 83448
  %398 = add i64 %368, 23
  %399 = load i64, i64* %6, align 8
  %400 = add i64 %399, -8
  %401 = inttoptr i64 %400 to i64*
  store i64 %398, i64* %401, align 8
  store i64 %400, i64* %6, align 8
  store i64 %397, i64* %3, align 8
  %call2_41e65a = tail call %struct.Memory* @sub_432c40.Plan7SetDescription(%struct.State* nonnull %0, i64 %397, %struct.Memory* %356)
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 2958
  br label %block_.L_41f1ed

block_.L_41e664:                                  ; preds = %block_.L_41e622
  store i64 ptrtoint (%G__0x45796c_type* @G__0x45796c to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %404 = load i64, i64* %RBP.i, align 8
  %405 = add i64 %404, -544
  store i64 %405, i64* %RDI.i535, align 8
  %406 = add i64 %368, -119444
  %407 = add i64 %368, 29
  %408 = load i64, i64* %6, align 8
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %6, align 8
  store i64 %406, i64* %3, align 8
  %411 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %356)
  %412 = load i32, i32* %EAX.i886, align 4
  %413 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %414 = and i32 %412, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %419 = icmp eq i32 %412, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %30, align 1
  %421 = lshr i32 %412, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v594 = select i1 %419, i64 9, i64 39
  %423 = add i64 %413, %.v594
  store i64 %423, i64* %3, align 8
  br i1 %419, label %block_41e68a, label %block_.L_41e6a8

block_41e68a:                                     ; preds = %block_.L_41e664
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -544
  %426 = add i64 %424, -538
  store i64 %426, i64* %RAX.i1226, align 8
  %427 = icmp ult i64 %426, %425
  %428 = icmp ult i64 %426, 6
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = trunc i64 %426 to i32
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  %437 = xor i64 %425, %426
  %438 = lshr i64 %437, 4
  %439 = trunc i64 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %27, align 1
  %441 = icmp eq i64 %426, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %30, align 1
  %443 = lshr i64 %426, 63
  %444 = trunc i64 %443 to i8
  store i8 %444, i8* %33, align 1
  %445 = lshr i64 %425, 63
  %446 = xor i64 %443, %445
  %447 = add nuw nsw i64 %446, %443
  %448 = icmp eq i64 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %39, align 1
  store i64 %426, i64* %RDI.i535, align 8
  %450 = add i64 %423, -118762
  %451 = add i64 %423, 19
  %452 = load i64, i64* %6, align 8
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %6, align 8
  store i64 %450, i64* %3, align 8
  %455 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %411)
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -556
  %458 = load i32, i32* %EAX.i886, align 4
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 6
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %457 to i32*
  store i32 %458, i32* %461, align 4
  %462 = load i64, i64* %3, align 8
  %463 = add i64 %462, 2885
  br label %block_.L_41f1e8

block_.L_41e6a8:                                  ; preds = %block_.L_41e664
  store i64 ptrtoint (%G__0x457972_type* @G__0x457972 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -544
  store i64 %465, i64* %RDI.i535, align 8
  %466 = add i64 %423, -119512
  %467 = add i64 %423, 29
  %468 = load i64, i64* %6, align 8
  %469 = add i64 %468, -8
  %470 = inttoptr i64 %469 to i64*
  store i64 %467, i64* %470, align 8
  store i64 %469, i64* %6, align 8
  store i64 %466, i64* %3, align 8
  %471 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %411)
  %472 = load i32, i32* %EAX.i886, align 4
  %473 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %474 = and i32 %472, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %479 = icmp eq i32 %472, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %30, align 1
  %481 = lshr i32 %472, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v595 = select i1 %479, i64 9, i64 40
  %483 = add i64 %473, %.v595
  store i64 %483, i64* %3, align 8
  br i1 %479, label %block_41e6ce, label %block_.L_41e6ed

block_41e6ce:                                     ; preds = %block_.L_41e6a8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -544
  %486 = add i64 %484, -538
  store i64 %486, i64* %RAX.i1226, align 8
  %487 = icmp ult i64 %486, %485
  %488 = icmp ult i64 %486, 6
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = trunc i64 %486 to i32
  %492 = and i32 %491, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %21, align 1
  %497 = xor i64 %485, %486
  %498 = lshr i64 %497, 4
  %499 = trunc i64 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %27, align 1
  %501 = icmp eq i64 %486, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %30, align 1
  %503 = lshr i64 %486, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %33, align 1
  %505 = lshr i64 %485, 63
  %506 = xor i64 %503, %505
  %507 = add nuw nsw i64 %506, %503
  %508 = icmp eq i64 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %39, align 1
  store i64 %486, i64* %RDI.i535, align 8
  %510 = add i64 %483, -118830
  %511 = add i64 %483, 19
  %512 = load i64, i64* %6, align 8
  %513 = add i64 %512, -8
  %514 = inttoptr i64 %513 to i64*
  store i64 %511, i64* %514, align 8
  store i64 %513, i64* %6, align 8
  store i64 %510, i64* %3, align 8
  %515 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %471)
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -32
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, 4
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %517 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RDI.i535, align 8
  %522 = add i64 %521, 56
  %523 = load i32, i32* %EAX.i886, align 4
  %524 = add i64 %518, 7
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 %523, i32* %525, align 4
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 2811
  br label %block_.L_41f1e3

block_.L_41e6ed:                                  ; preds = %block_.L_41e6a8
  store i64 ptrtoint (%G__0x457978_type* @G__0x457978 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -544
  store i64 %529, i64* %RDI.i535, align 8
  %530 = add i64 %483, -119581
  %531 = add i64 %483, 29
  %532 = load i64, i64* %6, align 8
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %6, align 8
  store i64 %530, i64* %3, align 8
  %535 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %471)
  %536 = load i32, i32* %EAX.i886, align 4
  %537 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %538 = and i32 %536, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %543 = icmp eq i32 %536, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %30, align 1
  %545 = lshr i32 %536, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v596 = select i1 %543, i64 9, i64 274
  %547 = add i64 %537, %.v596
  store i64 %547, i64* %3, align 8
  br i1 %543, label %block_41e713, label %block_.L_41e81c

block_41e713:                                     ; preds = %block_.L_41e6ed
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -544
  %550 = add i64 %548, -538
  store i64 %550, i64* %RAX.i1226, align 8
  %551 = icmp ult i64 %550, %549
  %552 = icmp ult i64 %550, 6
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %14, align 1
  %555 = trunc i64 %550 to i32
  %556 = and i32 %555, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  %561 = xor i64 %549, %550
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %27, align 1
  %565 = icmp eq i64 %550, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %30, align 1
  %567 = lshr i64 %550, 63
  %568 = trunc i64 %567 to i8
  store i8 %568, i8* %33, align 1
  %569 = lshr i64 %549, 63
  %570 = xor i64 %567, %569
  %571 = add nuw nsw i64 %570, %567
  %572 = icmp eq i64 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %39, align 1
  store i64 %550, i64* %RDI.i535, align 8
  %574 = add i64 %547, 162045
  %575 = add i64 %547, 19
  %576 = load i64, i64* %6, align 8
  %577 = add i64 %576, -8
  %578 = inttoptr i64 %577 to i64*
  store i64 %575, i64* %578, align 8
  store i64 %577, i64* %6, align 8
  store i64 %574, i64* %3, align 8
  %call2_41e721 = tail call %struct.Memory* @sub_446010.s2upper(%struct.State* nonnull %0, i64 %574, %struct.Memory* %535)
  %579 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457947_type* @G__0x457947 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RCX.i1684, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -544
  %582 = add i64 %580, -538
  store i64 %582, i64* %RAX.i1226, align 8
  %583 = icmp ult i64 %582, %581
  %584 = icmp ult i64 %582, 6
  %585 = or i1 %583, %584
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %14, align 1
  %587 = trunc i64 %582 to i32
  %588 = and i32 %587, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  %593 = xor i64 %581, %582
  %594 = lshr i64 %593, 4
  %595 = trunc i64 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %27, align 1
  %597 = icmp eq i64 %582, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %30, align 1
  %599 = lshr i64 %582, 63
  %600 = trunc i64 %599 to i8
  store i8 %600, i8* %33, align 1
  %601 = lshr i64 %581, 63
  %602 = xor i64 %599, %601
  %603 = add nuw nsw i64 %602, %599
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %39, align 1
  store i64 %582, i64* %RDI.i535, align 8
  %606 = add i64 %579, -119638
  %607 = add i64 %579, 36
  %608 = load i64, i64* %6, align 8
  %609 = add i64 %608, -8
  %610 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %610, align 8
  store i64 %609, i64* %6, align 8
  store i64 %606, i64* %3, align 8
  %611 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_41e721)
  %612 = load i32, i32* %EAX.i886, align 4
  %613 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %614 = and i32 %612, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %619 = icmp eq i32 %612, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %30, align 1
  %621 = lshr i32 %612, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v664 = select i1 %619, i64 9, i64 24
  %623 = add i64 %613, %.v664
  store i64 %623, i64* %3, align 8
  br i1 %619, label %block_41e753, label %block_.L_41e762

block_41e753:                                     ; preds = %block_41e713
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -572
  %626 = add i64 %623, 10
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  store i32 3, i32* %627, align 4
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, 75
  br label %block_.L_41e7a8

block_.L_41e762:                                  ; preds = %block_41e713
  store i64 ptrtoint (%G__0x45794d_type* @G__0x45794d to i64), i64* %RSI.i759, align 8
  store i64 7, i64* %RAX.i1226, align 8
  store i64 7, i64* %RDX.i1259, align 8
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -544
  %632 = add i64 %630, -538
  store i64 %632, i64* %RCX.i1684, align 8
  %633 = icmp ult i64 %632, %631
  %634 = icmp ult i64 %632, 6
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %14, align 1
  %637 = trunc i64 %632 to i32
  %638 = and i32 %637, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %21, align 1
  %643 = xor i64 %631, %632
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %27, align 1
  %647 = icmp eq i64 %632, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %30, align 1
  %649 = lshr i64 %632, 63
  %650 = trunc i64 %649 to i8
  store i8 %650, i8* %33, align 1
  %651 = lshr i64 %631, 63
  %652 = xor i64 %649, %651
  %653 = add nuw nsw i64 %652, %649
  %654 = icmp eq i64 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %39, align 1
  store i64 %632, i64* %RDI.i535, align 8
  %656 = add i64 %623, -119698
  %657 = add i64 %623, 36
  %658 = load i64, i64* %6, align 8
  %659 = add i64 %658, -8
  %660 = inttoptr i64 %659 to i64*
  store i64 %657, i64* %660, align 8
  store i64 %659, i64* %6, align 8
  store i64 %656, i64* %3, align 8
  %661 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %611)
  %662 = load i32, i32* %EAX.i886, align 4
  %663 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %664 = and i32 %662, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %669 = icmp eq i32 %662, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %30, align 1
  %671 = lshr i32 %662, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v665 = select i1 %669, i64 9, i64 24
  %673 = add i64 %663, %.v665
  store i64 %673, i64* %3, align 8
  br i1 %669, label %block_41e78f, label %block_.L_41e79e

block_41e78f:                                     ; preds = %block_.L_41e762
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -572
  %676 = add i64 %673, 10
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  store i32 2, i32* %677, align 4
  %678 = load i64, i64* %3, align 8
  %679 = add i64 %678, 15
  store i64 %679, i64* %3, align 8
  br label %block_.L_41e7a8

block_.L_41e79e:                                  ; preds = %block_.L_41e762
  %680 = add i64 %673, 4416
  br label %block_.L_41f8de

block_.L_41e7a8:                                  ; preds = %block_41e78f, %block_41e753
  %storemerge87 = phi i64 [ %629, %block_41e753 ], [ %679, %block_41e78f ]
  %MEMORY.2 = phi %struct.Memory* [ %611, %block_41e753 ], [ %661, %block_41e78f ]
  %681 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %682 = and i32 %681, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %687 = icmp eq i32 %681, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %30, align 1
  %689 = lshr i32 %681, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v666 = select i1 %687, i64 14, i64 30
  %691 = add i64 %storemerge87, %.v666
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -572
  %694 = add i64 %691, 6
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = zext i32 %696 to i64
  br i1 %687, label %block_41e7b6, label %block_.L_41e7c6

block_41e7b6:                                     ; preds = %block_.L_41e7a8
  store i64 %697, i64* %RDI.i535, align 8
  %698 = add i64 %691, -105238
  %699 = add i64 %691, 11
  %700 = load i64, i64* %6, align 8
  %701 = add i64 %700, -8
  %702 = inttoptr i64 %701 to i64*
  store i64 %699, i64* %702, align 8
  store i64 %701, i64* %6, align 8
  store i64 %698, i64* %3, align 8
  %call2_41e7bc = tail call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* nonnull %0, i64 %698, %struct.Memory* %MEMORY.2)
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 86
  br label %block_.L_41e817

block_.L_41e7c6:                                  ; preds = %block_.L_41e7a8
  store i64 %697, i64* %RAX.i1226, align 8
  %705 = sub i32 %696, %681
  %706 = icmp ult i32 %696, %681
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %705, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %681, %696
  %714 = xor i32 %713, %705
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %27, align 1
  %718 = icmp eq i32 %705, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %30, align 1
  %720 = lshr i32 %705, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %33, align 1
  %722 = lshr i32 %696, 31
  %723 = xor i32 %689, %722
  %724 = xor i32 %720, %722
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %.v667 = select i1 %718, i64 76, i64 19
  %728 = add i64 %691, %.v667
  store i64 %728, i64* %3, align 8
  br i1 %718, label %block_.L_41e812, label %block_41e7d9

block_41e7d9:                                     ; preds = %block_.L_41e7c6
  %729 = zext i32 %681 to i64
  store i64 %729, i64* %RDI.i535, align 8
  %730 = add i64 %728, -55673
  %731 = add i64 %728, 12
  %732 = load i64, i64* %6, align 8
  %733 = add i64 %732, -8
  %734 = inttoptr i64 %733 to i64*
  store i64 %731, i64* %734, align 8
  store i64 %733, i64* %6, align 8
  store i64 %730, i64* %3, align 8
  %call2_41e7e0 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %730, %struct.Memory* %MEMORY.2)
  %735 = load i64, i64* %RBP.i, align 8
  %736 = add i64 %735, -572
  %737 = load i64, i64* %3, align 8
  %738 = add i64 %737, 6
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739, align 4
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RDI.i535, align 8
  %742 = add i64 %735, -584
  %743 = load i64, i64* %RAX.i1226, align 8
  %744 = add i64 %737, 13
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %742 to i64*
  store i64 %743, i64* %745, align 8
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, -55698
  %748 = add i64 %746, 5
  %749 = load i64, i64* %6, align 8
  %750 = add i64 %749, -8
  %751 = inttoptr i64 %750 to i64*
  store i64 %748, i64* %751, align 8
  store i64 %750, i64* %6, align 8
  store i64 %747, i64* %3, align 8
  %call2_41e7f2 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %747, %struct.Memory* %call2_41e7e0)
  %752 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI.i535, align 8
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -584
  %755 = add i64 %752, 17
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RSI.i759, align 8
  %758 = load i64, i64* %RAX.i1226, align 8
  store i64 %758, i64* %RDX.i1259, align 8
  store i8 0, i8* %AL.i, align 1
  %759 = add i64 %752, 131609
  %760 = add i64 %752, 27
  %761 = load i64, i64* %6, align 8
  %762 = add i64 %761, -8
  %763 = inttoptr i64 %762 to i64*
  store i64 %760, i64* %763, align 8
  store i64 %762, i64* %6, align 8
  store i64 %759, i64* %3, align 8
  %call2_41e80d = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %759, %struct.Memory* %call2_41e7f2)
  %.pre556 = load i64, i64* %3, align 8
  br label %block_.L_41e812

block_.L_41e812:                                  ; preds = %block_41e7d9, %block_.L_41e7c6
  %764 = phi i64 [ %728, %block_.L_41e7c6 ], [ %.pre556, %block_41e7d9 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41e7c6 ], [ %call2_41e80d, %block_41e7d9 ]
  %765 = add i64 %764, 5
  store i64 %765, i64* %3, align 8
  br label %block_.L_41e817

block_.L_41e817:                                  ; preds = %block_.L_41e812, %block_41e7b6
  %storemerge88 = phi i64 [ %704, %block_41e7b6 ], [ %765, %block_.L_41e812 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_41e7bc, %block_41e7b6 ], [ %MEMORY.3, %block_.L_41e812 ]
  %766 = add i64 %storemerge88, 2503
  br label %block_.L_41f1de

block_.L_41e81c:                                  ; preds = %block_.L_41e6ed
  store i64 ptrtoint (%G__0x45797e_type* @G__0x45797e to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -544
  store i64 %768, i64* %RDI.i535, align 8
  %769 = add i64 %547, -119884
  %770 = add i64 %547, 29
  %771 = load i64, i64* %6, align 8
  %772 = add i64 %771, -8
  %773 = inttoptr i64 %772 to i64*
  store i64 %770, i64* %773, align 8
  store i64 %772, i64* %6, align 8
  store i64 %769, i64* %3, align 8
  %774 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %535)
  %775 = load i32, i32* %EAX.i886, align 4
  %776 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %777 = and i32 %775, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %782 = icmp eq i32 %775, 0
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %30, align 1
  %784 = lshr i32 %775, 31
  %785 = trunc i32 %784 to i8
  store i8 %785, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v597 = select i1 %782, i64 9, i64 54
  %786 = add i64 %776, %.v597
  store i64 %786, i64* %3, align 8
  br i1 %782, label %block_41e842, label %block_.L_41e86f

block_41e842:                                     ; preds = %block_.L_41e81c
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -538
  %789 = add i64 %786, 7
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i8*
  %791 = load i8, i8* %790, align 1
  %792 = sext i8 %791 to i64
  %793 = and i64 %792, 4294967295
  store i64 %793, i64* %RDI.i535, align 8
  %794 = add i64 %786, 155726
  %795 = add i64 %786, 12
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_41e849 = tail call %struct.Memory* @sub_444890.sre_toupper(%struct.State* nonnull %0, i64 %794, %struct.Memory* %774)
  %799 = load i32, i32* %EAX.i886, align 4
  %800 = load i64, i64* %3, align 8
  %801 = add i32 %799, -89
  %802 = icmp ult i32 %799, 89
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %14, align 1
  %804 = and i32 %801, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  %809 = xor i32 %799, 16
  %810 = xor i32 %809, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %27, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %30, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %33, align 1
  %818 = lshr i32 %799, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %818
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %39, align 1
  %.v663 = select i1 %814, i64 9, i64 28
  %823 = add i64 %800, %.v663
  store i64 %823, i64* %3, align 8
  br i1 %814, label %block_41e857, label %block_.L_41e86a

block_41e857:                                     ; preds = %block_41e842
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -32
  %826 = add i64 %823, 4
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RAX.i1226, align 8
  %829 = add i64 %828, 456
  %830 = add i64 %823, 10
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = or i32 %832, 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  %835 = and i32 %833, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %840 = lshr i32 %832, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %842 = add i64 %823, 19
  store i64 %842, i64* %3, align 8
  store i32 %833, i32* %831, align 4
  %.pre557 = load i64, i64* %3, align 8
  br label %block_.L_41e86a

block_.L_41e86a:                                  ; preds = %block_41e842, %block_41e857
  %843 = phi i64 [ %.pre557, %block_41e857 ], [ %823, %block_41e842 ]
  %844 = add i64 %843, 2415
  br label %block_.L_41f1d9

block_.L_41e86f:                                  ; preds = %block_.L_41e81c
  store i64 ptrtoint (%G__0x457984_type* @G__0x457984 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -544
  store i64 %846, i64* %RDI.i535, align 8
  %847 = add i64 %786, -119967
  %848 = add i64 %786, 29
  %849 = load i64, i64* %6, align 8
  %850 = add i64 %849, -8
  %851 = inttoptr i64 %850 to i64*
  store i64 %848, i64* %851, align 8
  store i64 %850, i64* %6, align 8
  store i64 %847, i64* %3, align 8
  %852 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %774)
  %853 = load i32, i32* %EAX.i886, align 4
  %854 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %855 = and i32 %853, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %860 = icmp eq i32 %853, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %30, align 1
  %862 = lshr i32 %853, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v598 = select i1 %860, i64 9, i64 54
  %864 = add i64 %854, %.v598
  store i64 %864, i64* %3, align 8
  br i1 %860, label %block_41e895, label %block_.L_41e8c2

block_41e895:                                     ; preds = %block_.L_41e86f
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -538
  %867 = add i64 %864, 7
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i8*
  %869 = load i8, i8* %868, align 1
  %870 = sext i8 %869 to i64
  %871 = and i64 %870, 4294967295
  store i64 %871, i64* %RDI.i535, align 8
  %872 = add i64 %864, 155643
  %873 = add i64 %864, 12
  %874 = load i64, i64* %6, align 8
  %875 = add i64 %874, -8
  %876 = inttoptr i64 %875 to i64*
  store i64 %873, i64* %876, align 8
  store i64 %875, i64* %6, align 8
  store i64 %872, i64* %3, align 8
  %call2_41e89c = tail call %struct.Memory* @sub_444890.sre_toupper(%struct.State* nonnull %0, i64 %872, %struct.Memory* %852)
  %877 = load i32, i32* %EAX.i886, align 4
  %878 = load i64, i64* %3, align 8
  %879 = add i32 %877, -89
  %880 = icmp ult i32 %877, 89
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %14, align 1
  %882 = and i32 %879, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i32 %877, 16
  %888 = xor i32 %887, %879
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %27, align 1
  %892 = icmp eq i32 %879, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %30, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %33, align 1
  %896 = lshr i32 %877, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %39, align 1
  %.v662 = select i1 %892, i64 9, i64 28
  %901 = add i64 %878, %.v662
  store i64 %901, i64* %3, align 8
  br i1 %892, label %block_41e8aa, label %block_.L_41e8bd

block_41e8aa:                                     ; preds = %block_41e895
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -32
  %904 = add i64 %901, 4
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RAX.i1226, align 8
  %907 = add i64 %906, 456
  %908 = add i64 %901, 10
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = or i32 %910, 8
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  %913 = and i32 %911, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %918 = lshr i32 %910, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %920 = add i64 %901, 19
  store i64 %920, i64* %3, align 8
  store i32 %911, i32* %909, align 4
  %.pre558 = load i64, i64* %3, align 8
  br label %block_.L_41e8bd

block_.L_41e8bd:                                  ; preds = %block_41e895, %block_41e8aa
  %921 = phi i64 [ %.pre558, %block_41e8aa ], [ %901, %block_41e895 ]
  %922 = add i64 %921, 2327
  br label %block_.L_41f1d4

block_.L_41e8c2:                                  ; preds = %block_.L_41e86f
  store i64 ptrtoint (%G__0x45798a_type* @G__0x45798a to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -544
  store i64 %924, i64* %RDI.i535, align 8
  %925 = add i64 %864, -120050
  %926 = add i64 %864, 29
  %927 = load i64, i64* %6, align 8
  %928 = add i64 %927, -8
  %929 = inttoptr i64 %928 to i64*
  store i64 %926, i64* %929, align 8
  store i64 %928, i64* %6, align 8
  store i64 %925, i64* %3, align 8
  %930 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %852)
  %931 = load i32, i32* %EAX.i886, align 4
  %932 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %933 = and i32 %931, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %938 = icmp eq i32 %931, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %30, align 1
  %940 = lshr i32 %931, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v599 = select i1 %938, i64 9, i64 57
  %942 = add i64 %932, %.v599
  store i64 %942, i64* %3, align 8
  br i1 %938, label %block_41e8e8, label %block_.L_41e918

block_41e8e8:                                     ; preds = %block_.L_41e8c2
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -538
  %945 = add i64 %942, 7
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i8*
  %947 = load i8, i8* %946, align 1
  %948 = sext i8 %947 to i64
  %949 = and i64 %948, 4294967295
  store i64 %949, i64* %RDI.i535, align 8
  %950 = add i64 %942, 155560
  %951 = add i64 %942, 12
  %952 = load i64, i64* %6, align 8
  %953 = add i64 %952, -8
  %954 = inttoptr i64 %953 to i64*
  store i64 %951, i64* %954, align 8
  store i64 %953, i64* %6, align 8
  store i64 %950, i64* %3, align 8
  %call2_41e8ef = tail call %struct.Memory* @sub_444890.sre_toupper(%struct.State* nonnull %0, i64 %950, %struct.Memory* %930)
  %955 = load i32, i32* %EAX.i886, align 4
  %956 = load i64, i64* %3, align 8
  %957 = add i32 %955, -89
  %958 = icmp ult i32 %955, 89
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %957, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %955, 16
  %966 = xor i32 %965, %957
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %27, align 1
  %970 = icmp eq i32 %957, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %30, align 1
  %972 = lshr i32 %957, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %33, align 1
  %974 = lshr i32 %955, 31
  %975 = xor i32 %972, %974
  %976 = add nuw nsw i32 %975, %974
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %39, align 1
  %.v661 = select i1 %970, i64 9, i64 31
  %979 = add i64 %956, %.v661
  store i64 %979, i64* %3, align 8
  br i1 %970, label %block_41e8fd, label %block_.L_41e913

block_41e8fd:                                     ; preds = %block_41e8e8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -32
  %982 = add i64 %979, 4
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RAX.i1226, align 8
  %985 = add i64 %984, 456
  %986 = add i64 %979, 10
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = or i32 %988, 256
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  %991 = and i32 %988, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %996 = lshr i32 %988, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %998 = add i64 %979, 22
  store i64 %998, i64* %3, align 8
  store i32 %989, i32* %987, align 4
  %.pre559 = load i64, i64* %3, align 8
  br label %block_.L_41e913

block_.L_41e913:                                  ; preds = %block_41e8e8, %block_41e8fd
  %999 = phi i64 [ %.pre559, %block_41e8fd ], [ %979, %block_41e8e8 ]
  %1000 = add i64 %999, 2236
  br label %block_.L_41f1cf

block_.L_41e918:                                  ; preds = %block_.L_41e8c2
  store i64 ptrtoint (%G__0x457990_type* @G__0x457990 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1001 = load i64, i64* %RBP.i, align 8
  %1002 = add i64 %1001, -544
  store i64 %1002, i64* %RDI.i535, align 8
  %1003 = add i64 %942, -120136
  %1004 = add i64 %942, 29
  %1005 = load i64, i64* %6, align 8
  %1006 = add i64 %1005, -8
  %1007 = inttoptr i64 %1006 to i64*
  store i64 %1004, i64* %1007, align 8
  store i64 %1006, i64* %6, align 8
  store i64 %1003, i64* %3, align 8
  %1008 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %930)
  %1009 = load i32, i32* %EAX.i886, align 4
  %1010 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1011 = and i32 %1009, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1016 = icmp eq i32 %1009, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %30, align 1
  %1018 = lshr i32 %1009, 31
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v600 = select i1 %1016, i64 9, i64 294
  %1020 = add i64 %1010, %.v600
  store i64 %1020, i64* %3, align 8
  br i1 %1016, label %block_41e93e, label %block_.L_41ea5b

block_41e93e:                                     ; preds = %block_.L_41e918
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -544
  %1023 = add i64 %1021, -538
  store i64 %1023, i64* %RAX.i1226, align 8
  %1024 = icmp ult i64 %1023, %1022
  %1025 = icmp ult i64 %1023, 6
  %1026 = or i1 %1024, %1025
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = trunc i64 %1023 to i32
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i64 %1022, %1023
  %1035 = lshr i64 %1034, 4
  %1036 = trunc i64 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %27, align 1
  %1038 = icmp eq i64 %1023, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %30, align 1
  %1040 = lshr i64 %1023, 63
  %1041 = trunc i64 %1040 to i8
  store i8 %1041, i8* %33, align 1
  %1042 = lshr i64 %1022, 63
  %1043 = xor i64 %1040, %1042
  %1044 = add nuw nsw i64 %1043, %1040
  %1045 = icmp eq i64 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %39, align 1
  store i64 %1023, i64* %RDI.i535, align 8
  %1047 = add i64 %1020, 161074
  %1048 = add i64 %1020, 19
  %1049 = load i64, i64* %6, align 8
  %1050 = add i64 %1049, -8
  %1051 = inttoptr i64 %1050 to i64*
  store i64 %1048, i64* %1051, align 8
  store i64 %1050, i64* %6, align 8
  store i64 %1047, i64* %3, align 8
  %call2_41e94c = tail call %struct.Memory* @sub_445e70.StringChop(%struct.State* nonnull %0, i64 %1047, %struct.Memory* %1008)
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -32
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, 4
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1053 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RAX.i1226, align 8
  %1058 = add i64 %1057, 48
  %1059 = add i64 %1054, 9
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i8 0, i8* %14, align 1
  %1062 = trunc i64 %1061 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1068 = icmp eq i64 %1061, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %30, align 1
  %1070 = lshr i64 %1061, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v660 = select i1 %1068, i64 15, i64 47
  %1072 = add i64 %1054, %.v660
  store i64 %1072, i64* %3, align 8
  br i1 %1068, label %block_41e960, label %block_.L_41e980

block_41e960:                                     ; preds = %block_41e93e
  %1073 = add i64 %1052, -544
  %1074 = add i64 %1052, -538
  store i64 %1074, i64* %RAX.i1226, align 8
  %1075 = icmp ult i64 %1074, %1073
  %1076 = icmp ult i64 %1074, 6
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %14, align 1
  %1079 = trunc i64 %1074 to i32
  %1080 = and i32 %1079, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i64 %1073, %1074
  %1086 = lshr i64 %1085, 4
  %1087 = trunc i64 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %27, align 1
  %1089 = icmp eq i64 %1074, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %30, align 1
  %1091 = lshr i64 %1074, 63
  %1092 = trunc i64 %1091 to i8
  store i8 %1092, i8* %33, align 1
  %1093 = lshr i64 %1073, 63
  %1094 = xor i64 %1091, %1093
  %1095 = add nuw nsw i64 %1094, %1091
  %1096 = icmp eq i64 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %39, align 1
  store i64 %1074, i64* %RDI.i535, align 8
  %1098 = add i64 %1072, 160912
  %1099 = add i64 %1072, 19
  %1100 = load i64, i64* %6, align 8
  %1101 = add i64 %1100, -8
  %1102 = inttoptr i64 %1101 to i64*
  store i64 %1099, i64* %1102, align 8
  store i64 %1101, i64* %6, align 8
  store i64 %1098, i64* %3, align 8
  %call2_41e96e = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %1098, %struct.Memory* %call2_41e94c)
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -32
  %1105 = load i64, i64* %3, align 8
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RDI.i535, align 8
  %1109 = add i64 %1108, 48
  %1110 = load i64, i64* %RAX.i1226, align 8
  %1111 = add i64 %1105, 8
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i64*
  store i64 %1110, i64* %1112, align 8
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, 219
  store i64 %1114, i64* %3, align 8
  br label %block_.L_41ea56

block_.L_41e980:                                  ; preds = %block_41e93e
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RDI.i535, align 8
  store i64 624, i64* %RSI.i759, align 8
  %1115 = add i64 %1052, -544
  store i64 %1115, i64* %RAX.i1226, align 8
  %1116 = add i64 %1072, 26
  store i64 %1116, i64* %3, align 8
  %1117 = load i64, i64* %1056, align 8
  store i64 %1117, i64* %RCX.i875, align 8
  %1118 = add i64 %1117, 48
  %1119 = add i64 %1072, 30
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RDX.i1259, align 8
  %1122 = add i64 %1072, 34
  store i64 %1122, i64* %3, align 8
  %1123 = load i64, i64* %1056, align 8
  store i64 %1123, i64* %RCX.i875, align 8
  %1124 = add i64 %1123, 48
  %1125 = add i64 %1072, 38
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i64*
  %1127 = load i64, i64* %1126, align 8
  store i64 %1127, i64* %RCX.i875, align 8
  %1128 = add i64 %1052, -592
  %1129 = add i64 %1072, 45
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %1130, align 8
  %1131 = load i64, i64* %RCX.i875, align 8
  %1132 = load i64, i64* %3, align 8
  store i64 %1131, i64* %RDI.i535, align 8
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -600
  %1135 = load i64, i64* %RDX.i1259, align 8
  %1136 = add i64 %1132, 10
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1134 to i64*
  store i64 %1135, i64* %1137, align 8
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -604
  %1140 = load i32, i32* %ESI.i, align 4
  %1141 = load i64, i64* %3, align 8
  %1142 = add i64 %1141, 6
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1139 to i32*
  store i32 %1140, i32* %1143, align 4
  %1144 = load i64, i64* %RBP.i, align 8
  %1145 = add i64 %1144, -616
  %1146 = load i64, i64* %RAX.i1226, align 8
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 7
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1145 to i64*
  store i64 %1146, i64* %1149, align 8
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, -120164
  %1152 = add i64 %1150, 5
  %1153 = load i64, i64* %6, align 8
  %1154 = add i64 %1153, -8
  %1155 = inttoptr i64 %1154 to i64*
  store i64 %1152, i64* %1155, align 8
  store i64 %1154, i64* %6, align 8
  store i64 %1151, i64* %3, align 8
  %1156 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %call2_41e94c)
  %1157 = load i64, i64* %RAX.i1226, align 8
  %1158 = load i64, i64* %3, align 8
  %1159 = add i64 %1157, 1
  store i64 %1159, i64* %RAX.i1226, align 8
  %1160 = icmp eq i64 %1157, -1
  %1161 = icmp eq i64 %1159, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %14, align 1
  %1164 = trunc i64 %1159 to i32
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %21, align 1
  %1170 = xor i64 %1159, %1157
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %27, align 1
  %1174 = zext i1 %1161 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = lshr i64 %1159, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %33, align 1
  %1177 = lshr i64 %1157, 63
  %1178 = xor i64 %1175, %1177
  %1179 = add nuw nsw i64 %1178, %1175
  %1180 = icmp eq i64 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %39, align 1
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -616
  %1184 = add i64 %1158, 11
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  %1187 = add i64 %1186, 6
  store i64 %1187, i64* %RCX.i875, align 8
  %1188 = icmp ugt i64 %1186, -7
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = trunc i64 %1187 to i32
  %1191 = and i32 %1190, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  %1196 = xor i64 %1187, %1186
  %1197 = lshr i64 %1196, 4
  %1198 = trunc i64 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %27, align 1
  %1200 = icmp eq i64 %1187, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %30, align 1
  %1202 = lshr i64 %1187, 63
  %1203 = trunc i64 %1202 to i8
  store i8 %1203, i8* %33, align 1
  %1204 = lshr i64 %1186, 63
  %1205 = xor i64 %1202, %1204
  %1206 = add nuw nsw i64 %1205, %1202
  %1207 = icmp eq i64 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %39, align 1
  store i64 %1187, i64* %RDI.i535, align 8
  %1209 = add i64 %1182, -624
  %1210 = add i64 %1158, 25
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i64*
  store i64 %1159, i64* %1211, align 8
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, -120194
  %1214 = add i64 %1212, 5
  %1215 = load i64, i64* %6, align 8
  %1216 = add i64 %1215, -8
  %1217 = inttoptr i64 %1216 to i64*
  store i64 %1214, i64* %1217, align 8
  store i64 %1216, i64* %6, align 8
  store i64 %1213, i64* %3, align 8
  %1218 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1156)
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -624
  %1221 = load i64, i64* %3, align 8
  %1222 = add i64 %1221, 7
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1220 to i64*
  %1224 = load i64, i64* %1223, align 8
  %1225 = load i64, i64* %RAX.i1226, align 8
  %1226 = add i64 %1225, %1224
  %1227 = shl i64 %1226, 3
  store i64 %1227, i64* %RCX.i875, align 8
  %1228 = lshr i64 %1226, 61
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %14, align 1
  %1231 = trunc i64 %1227 to i32
  %1232 = and i32 %1231, 248
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1237 = icmp eq i64 %1227, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %30, align 1
  %1239 = lshr i64 %1226, 60
  %1240 = trunc i64 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1242 = add i64 %1219, -592
  %1243 = add i64 %1221, 21
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RDI.i535, align 8
  %1246 = add i64 %1219, -604
  %1247 = add i64 %1221, 27
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RSI.i759, align 8
  %1251 = add i64 %1219, -600
  %1252 = add i64 %1221, 34
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RDX.i1259, align 8
  %1255 = add i64 %1221, 161481
  %1256 = add i64 %1221, 39
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %call2_41ea09 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %1255, %struct.Memory* %1218)
  %1260 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i759, align 8
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -32
  %1263 = add i64 %1260, 14
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i64*
  %1265 = load i64, i64* %1264, align 8
  store i64 %1265, i64* %RCX.i875, align 8
  %1266 = add i64 %1265, 48
  %1267 = load i64, i64* %RAX.i1226, align 8
  %1268 = add i64 %1260, 18
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i64*
  store i64 %1267, i64* %1269, align 8
  %1270 = load i64, i64* %RBP.i, align 8
  %1271 = add i64 %1270, -32
  %1272 = load i64, i64* %3, align 8
  %1273 = add i64 %1272, 4
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1271 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RAX.i1226, align 8
  %1276 = add i64 %1275, 48
  %1277 = add i64 %1272, 8
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %RDI.i535, align 8
  %1280 = add i64 %1272, -119664
  %1281 = add i64 %1272, 13
  %1282 = load i64, i64* %6, align 8
  %1283 = add i64 %1282, -8
  %1284 = inttoptr i64 %1283 to i64*
  store i64 %1281, i64* %1284, align 8
  store i64 %1283, i64* %6, align 8
  store i64 %1280, i64* %3, align 8
  %1285 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %call2_41ea09)
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -544
  %1288 = load i64, i64* %3, align 8
  store i64 %1287, i64* %RCX.i875, align 8
  %1289 = add i64 %1286, -32
  %1290 = add i64 %1288, 11
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RDX.i1259, align 8
  %1293 = add i64 %1292, 48
  %1294 = add i64 %1288, 15
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i64*
  %1296 = load i64, i64* %1295, align 8
  store i64 %1296, i64* %RDI.i535, align 8
  %1297 = add i64 %1286, -538
  store i64 %1297, i64* %RCX.i875, align 8
  %1298 = icmp ugt i64 %1287, -7
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %14, align 1
  %1300 = trunc i64 %1297 to i32
  %1301 = and i32 %1300, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i64 %1297, %1287
  %1307 = lshr i64 %1306, 4
  %1308 = trunc i64 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %27, align 1
  %1310 = icmp eq i64 %1297, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %30, align 1
  %1312 = lshr i64 %1297, 63
  %1313 = trunc i64 %1312 to i8
  store i8 %1313, i8* %33, align 1
  %1314 = lshr i64 %1287, 63
  %1315 = xor i64 %1312, %1314
  %1316 = add nuw nsw i64 %1315, %1312
  %1317 = icmp eq i64 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %39, align 1
  store i64 %1297, i64* %RSI.i759, align 8
  %1319 = add i64 %1286, -632
  %1320 = load i64, i64* %RAX.i1226, align 8
  %1321 = add i64 %1288, 29
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i64*
  store i64 %1320, i64* %1322, align 8
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, -119706
  %1325 = add i64 %1323, 5
  %1326 = load i64, i64* %6, align 8
  %1327 = add i64 %1326, -8
  %1328 = inttoptr i64 %1327 to i64*
  store i64 %1325, i64* %1328, align 8
  store i64 %1327, i64* %6, align 8
  store i64 %1324, i64* %3, align 8
  %1329 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcat to i64), %struct.Memory* %1285)
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -640
  %1332 = load i64, i64* %RAX.i1226, align 8
  %1333 = load i64, i64* %3, align 8
  %1334 = add i64 %1333, 7
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1331 to i64*
  store i64 %1332, i64* %1335, align 8
  %.pre560 = load i64, i64* %3, align 8
  br label %block_.L_41ea56

block_.L_41ea56:                                  ; preds = %block_.L_41e980, %block_41e960
  %1336 = phi i64 [ %.pre560, %block_.L_41e980 ], [ %1114, %block_41e960 ]
  %MEMORY.8 = phi %struct.Memory* [ %1329, %block_.L_41e980 ], [ %call2_41e96e, %block_41e960 ]
  %1337 = add i64 %1336, 1908
  br label %block_.L_41f1ca

block_.L_41ea5b:                                  ; preds = %block_.L_41e918
  store i64 ptrtoint (%G__0x457996_type* @G__0x457996 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -544
  store i64 %1339, i64* %RDI.i535, align 8
  %1340 = add i64 %1020, -120459
  %1341 = add i64 %1020, 29
  %1342 = load i64, i64* %6, align 8
  %1343 = add i64 %1342, -8
  %1344 = inttoptr i64 %1343 to i64*
  store i64 %1341, i64* %1344, align 8
  store i64 %1343, i64* %6, align 8
  store i64 %1340, i64* %3, align 8
  %1345 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1008)
  %1346 = load i32, i32* %EAX.i886, align 4
  %1347 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1348 = and i32 %1346, 255
  %1349 = tail call i32 @llvm.ctpop.i32(i32 %1348)
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = xor i8 %1351, 1
  store i8 %1352, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1353 = icmp eq i32 %1346, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %30, align 1
  %1355 = lshr i32 %1346, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v601 = select i1 %1353, i64 9, i64 60
  %1357 = add i64 %1347, %.v601
  store i64 %1357, i64* %3, align 8
  br i1 %1353, label %block_41ea81, label %block_.L_41eab4

block_41ea81:                                     ; preds = %block_.L_41ea5b
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -544
  %1360 = add i64 %1358, -538
  store i64 %1360, i64* %RAX.i1226, align 8
  %1361 = icmp ult i64 %1360, %1359
  %1362 = icmp ult i64 %1360, 6
  %1363 = or i1 %1361, %1362
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %14, align 1
  %1365 = trunc i64 %1360 to i32
  %1366 = and i32 %1365, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %21, align 1
  %1371 = xor i64 %1359, %1360
  %1372 = lshr i64 %1371, 4
  %1373 = trunc i64 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %27, align 1
  %1375 = icmp eq i64 %1360, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %30, align 1
  %1377 = lshr i64 %1360, 63
  %1378 = trunc i64 %1377 to i8
  store i8 %1378, i8* %33, align 1
  %1379 = lshr i64 %1359, 63
  %1380 = xor i64 %1377, %1379
  %1381 = add nuw nsw i64 %1380, %1377
  %1382 = icmp eq i64 %1381, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %39, align 1
  store i64 %1360, i64* %RDI.i535, align 8
  %1384 = add i64 %1357, 160751
  %1385 = add i64 %1357, 19
  %1386 = load i64, i64* %6, align 8
  %1387 = add i64 %1386, -8
  %1388 = inttoptr i64 %1387 to i64*
  store i64 %1385, i64* %1388, align 8
  store i64 %1387, i64* %6, align 8
  store i64 %1384, i64* %3, align 8
  %call2_41ea8f = tail call %struct.Memory* @sub_445e70.StringChop(%struct.State* nonnull %0, i64 %1384, %struct.Memory* %1345)
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -544
  %1391 = load i64, i64* %3, align 8
  %1392 = add i64 %1389, -538
  store i64 %1392, i64* %RAX.i1226, align 8
  %1393 = icmp ult i64 %1392, %1390
  %1394 = icmp ult i64 %1392, 6
  %1395 = or i1 %1393, %1394
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = trunc i64 %1392 to i32
  %1398 = and i32 %1397, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i64 %1390, %1392
  %1404 = lshr i64 %1403, 4
  %1405 = trunc i64 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i64 %1392, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i64 %1392, 63
  %1410 = trunc i64 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i64 %1390, 63
  %1412 = xor i64 %1409, %1411
  %1413 = add nuw nsw i64 %1412, %1409
  %1414 = icmp eq i64 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %39, align 1
  store i64 %1392, i64* %RDI.i535, align 8
  %1416 = add i64 %1391, 160604
  %1417 = add i64 %1391, 19
  %1418 = load i64, i64* %6, align 8
  %1419 = add i64 %1418, -8
  %1420 = inttoptr i64 %1419 to i64*
  store i64 %1417, i64* %1420, align 8
  store i64 %1419, i64* %6, align 8
  store i64 %1416, i64* %3, align 8
  %call2_41eaa2 = tail call %struct.Memory* @sub_445df0.Strdup(%struct.State* nonnull %0, i64 %1416, %struct.Memory* %call2_41ea8f)
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -32
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RDI.i535, align 8
  %1427 = add i64 %1426, 64
  %1428 = load i64, i64* %RAX.i1226, align 8
  %1429 = add i64 %1423, 8
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1427 to i64*
  store i64 %1428, i64* %1430, align 8
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 1814
  br label %block_.L_41f1c5

block_.L_41eab4:                                  ; preds = %block_.L_41ea5b
  store i64 ptrtoint (%G__0x45799c_type* @G__0x45799c to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -544
  store i64 %1434, i64* %RDI.i535, align 8
  %1435 = add i64 %1357, -120548
  %1436 = add i64 %1357, 29
  %1437 = load i64, i64* %6, align 8
  %1438 = add i64 %1437, -8
  %1439 = inttoptr i64 %1438 to i64*
  store i64 %1436, i64* %1439, align 8
  store i64 %1438, i64* %6, align 8
  store i64 %1435, i64* %3, align 8
  %1440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1345)
  %1441 = load i32, i32* %EAX.i886, align 4
  %1442 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1443 = and i32 %1441, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1448 = icmp eq i32 %1441, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %30, align 1
  %1450 = lshr i32 %1441, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v602 = select i1 %1448, i64 9, i64 177
  %1452 = add i64 %1442, %.v602
  %1453 = add i64 %1452, 10
  store i64 %1453, i64* %3, align 8
  br i1 %1448, label %block_41eada, label %block_.L_41eb82

block_41eada:                                     ; preds = %block_.L_41eab4
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -544
  %1456 = add i64 %1454, -538
  store i64 %1456, i64* %RAX.i1226, align 8
  %1457 = icmp ult i64 %1456, %1455
  %1458 = icmp ult i64 %1456, 6
  %1459 = or i1 %1457, %1458
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = trunc i64 %1456 to i32
  %1462 = and i32 %1461, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %21, align 1
  %1467 = xor i64 %1455, %1456
  %1468 = lshr i64 %1467, 4
  %1469 = trunc i64 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %27, align 1
  %1471 = icmp eq i64 %1456, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %30, align 1
  %1473 = lshr i64 %1456, 63
  %1474 = trunc i64 %1473 to i8
  store i8 %1474, i8* %33, align 1
  %1475 = lshr i64 %1455, 63
  %1476 = xor i64 %1473, %1475
  %1477 = add nuw nsw i64 %1476, %1473
  %1478 = icmp eq i64 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %39, align 1
  store i64 %1456, i64* %RDI.i535, align 8
  %1480 = add i64 %1452, -119930
  %1481 = add i64 %1452, 29
  %1482 = load i64, i64* %6, align 8
  %1483 = add i64 %1482, -8
  %1484 = inttoptr i64 %1483 to i64*
  store i64 %1481, i64* %1484, align 8
  store i64 %1483, i64* %6, align 8
  store i64 %1480, i64* %3, align 8
  %call2_41eaf2 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1480, %struct.Memory* %1440)
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -552
  %1487 = load i64, i64* %RAX.i1226, align 8
  %1488 = load i64, i64* %3, align 8
  %1489 = add i64 %1488, 7
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1486 to i64*
  store i64 %1487, i64* %1490, align 8
  %1491 = load i64, i64* %RAX.i1226, align 8
  %1492 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1493 = trunc i64 %1491 to i32
  %1494 = and i32 %1493, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1499 = icmp eq i64 %1491, 0
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %30, align 1
  %1501 = lshr i64 %1491, 63
  %1502 = trunc i64 %1501 to i8
  store i8 %1502, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v658 = select i1 %1499, i64 10, i64 15
  %1503 = add i64 %1492, %.v658
  store i64 %1503, i64* %3, align 8
  br i1 %1499, label %block_41eb08, label %block_.L_41eb0d

block_41eb08:                                     ; preds = %block_41eada
  %1504 = add i64 %1503, 3542
  br label %block_.L_41f8de

block_.L_41eb0d:                                  ; preds = %block_41eada
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -552
  %1507 = add i64 %1503, 7
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i64*
  %1509 = load i64, i64* %1508, align 8
  store i64 %1509, i64* %RDI.i535, align 8
  %1510 = add i64 %1503, -120541
  %1511 = add i64 %1503, 12
  %1512 = load i64, i64* %6, align 8
  %1513 = add i64 %1512, -8
  %1514 = inttoptr i64 %1513 to i64*
  store i64 %1511, i64* %1514, align 8
  store i64 %1513, i64* %6, align 8
  store i64 %1510, i64* %3, align 8
  %1515 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41eaf2)
  %1516 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1517 = load <2 x i32>, <2 x i32>* %156, align 1
  %1518 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast = bitcast <2 x i32> %1517 to double
  %1519 = fptrunc double %.cast to float
  store float %1519, float* %159, align 1
  %1520 = extractelement <2 x i32> %1517, i32 1
  store i32 %1520, i32* %161, align 1
  %1521 = extractelement <2 x i32> %1518, i32 0
  store i32 %1521, i32* %162, align 1
  %1522 = extractelement <2 x i32> %1518, i32 1
  store i32 %1522, i32* %164, align 1
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -32
  %1525 = add i64 %1516, 22
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i64*
  %1527 = load i64, i64* %1526, align 8
  store i64 %1527, i64* %RCX.i875, align 8
  %1528 = add i64 %1527, 112
  %1529 = add i64 %1516, 27
  store i64 %1529, i64* %3, align 8
  %1530 = load <2 x float>, <2 x float>* %165, align 1
  %1531 = extractelement <2 x float> %1530, i32 0
  %1532 = inttoptr i64 %1528 to float*
  store float %1531, float* %1532, align 4
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, -120020
  %1535 = add i64 %1533, 5
  %1536 = load i64, i64* %6, align 8
  %1537 = add i64 %1536, -8
  %1538 = inttoptr i64 %1537 to i64*
  store i64 %1535, i64* %1538, align 8
  store i64 %1537, i64* %6, align 8
  store i64 %1534, i64* %3, align 8
  %call2_41eb34 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1534, %struct.Memory* %1515)
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -552
  %1541 = load i64, i64* %RAX.i1226, align 8
  %1542 = load i64, i64* %3, align 8
  %1543 = add i64 %1542, 7
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1540 to i64*
  store i64 %1541, i64* %1544, align 8
  %1545 = load i64, i64* %RAX.i1226, align 8
  %1546 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1547 = trunc i64 %1545 to i32
  %1548 = and i32 %1547, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1553 = icmp eq i64 %1545, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %30, align 1
  %1555 = lshr i64 %1545, 63
  %1556 = trunc i64 %1555 to i8
  store i8 %1556, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v659 = select i1 %1553, i64 10, i64 15
  %1557 = add i64 %1546, %.v659
  store i64 %1557, i64* %3, align 8
  br i1 %1553, label %block_41eb4a, label %block_.L_41eb4f

block_41eb4a:                                     ; preds = %block_.L_41eb0d
  %1558 = add i64 %1557, 3476
  br label %block_.L_41f8de

block_.L_41eb4f:                                  ; preds = %block_.L_41eb0d
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -552
  %1561 = add i64 %1557, 7
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i64*
  %1563 = load i64, i64* %1562, align 8
  store i64 %1563, i64* %RDI.i535, align 8
  %1564 = add i64 %1557, -120607
  %1565 = add i64 %1557, 12
  %1566 = load i64, i64* %6, align 8
  %1567 = add i64 %1566, -8
  %1568 = inttoptr i64 %1567 to i64*
  store i64 %1565, i64* %1568, align 8
  store i64 %1567, i64* %6, align 8
  store i64 %1564, i64* %3, align 8
  %1569 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41eb34)
  %1570 = load i64, i64* %3, align 8
  %1571 = load <2 x i32>, <2 x i32>* %156, align 1
  %1572 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast95 = bitcast <2 x i32> %1571 to double
  %1573 = fptrunc double %.cast95 to float
  store float %1573, float* %159, align 1
  %1574 = extractelement <2 x i32> %1571, i32 1
  store i32 %1574, i32* %161, align 1
  %1575 = extractelement <2 x i32> %1572, i32 0
  store i32 %1575, i32* %162, align 1
  %1576 = extractelement <2 x i32> %1572, i32 1
  store i32 %1576, i32* %164, align 1
  %1577 = load i64, i64* %RBP.i, align 8
  %1578 = add i64 %1577, -32
  %1579 = add i64 %1570, 8
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i64*
  %1581 = load i64, i64* %1580, align 8
  store i64 %1581, i64* %RDI.i535, align 8
  %1582 = add i64 %1581, 116
  %1583 = add i64 %1570, 13
  store i64 %1583, i64* %3, align 8
  %1584 = load <2 x float>, <2 x float>* %165, align 1
  %1585 = extractelement <2 x float> %1584, i32 0
  %1586 = inttoptr i64 %1582 to float*
  store float %1585, float* %1586, align 4
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -32
  %1589 = load i64, i64* %3, align 8
  %1590 = add i64 %1589, 4
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1588 to i64*
  %1592 = load i64, i64* %1591, align 8
  store i64 %1592, i64* %RDI.i535, align 8
  %1593 = add i64 %1592, 456
  %1594 = add i64 %1589, 10
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = or i32 %1596, 1024
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  %1599 = and i32 %1596, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1604 = lshr i32 %1596, 31
  %1605 = trunc i32 %1604 to i8
  store i8 %1605, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1606 = add i64 %1589, 21
  store i64 %1606, i64* %3, align 8
  store i32 %1597, i32* %1595, align 4
  %1607 = load i64, i64* %3, align 8
  %1608 = add i64 %1607, 1603
  br label %block_.L_41f1c0

block_.L_41eb82:                                  ; preds = %block_.L_41eab4
  store i64 ptrtoint (%G__0x4579a2_type* @G__0x4579a2 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1609 = load i64, i64* %RBP.i, align 8
  %1610 = add i64 %1609, -544
  store i64 %1610, i64* %RDI.i535, align 8
  %1611 = add i64 %1452, -120754
  %1612 = add i64 %1452, 29
  %1613 = load i64, i64* %6, align 8
  %1614 = add i64 %1613, -8
  %1615 = inttoptr i64 %1614 to i64*
  store i64 %1612, i64* %1615, align 8
  store i64 %1614, i64* %6, align 8
  store i64 %1611, i64* %3, align 8
  %1616 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1440)
  %1617 = load i32, i32* %EAX.i886, align 4
  %1618 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1619 = and i32 %1617, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1624 = icmp eq i32 %1617, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %30, align 1
  %1626 = lshr i32 %1617, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v603 = select i1 %1624, i64 9, i64 177
  %1628 = add i64 %1618, %.v603
  %1629 = add i64 %1628, 10
  store i64 %1629, i64* %3, align 8
  br i1 %1624, label %block_41eba8, label %block_.L_41ec50

block_41eba8:                                     ; preds = %block_.L_41eb82
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -544
  %1632 = add i64 %1630, -538
  store i64 %1632, i64* %RAX.i1226, align 8
  %1633 = icmp ult i64 %1632, %1631
  %1634 = icmp ult i64 %1632, 6
  %1635 = or i1 %1633, %1634
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %14, align 1
  %1637 = trunc i64 %1632 to i32
  %1638 = and i32 %1637, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  %1643 = xor i64 %1631, %1632
  %1644 = lshr i64 %1643, 4
  %1645 = trunc i64 %1644 to i8
  %1646 = and i8 %1645, 1
  store i8 %1646, i8* %27, align 1
  %1647 = icmp eq i64 %1632, 0
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %30, align 1
  %1649 = lshr i64 %1632, 63
  %1650 = trunc i64 %1649 to i8
  store i8 %1650, i8* %33, align 1
  %1651 = lshr i64 %1631, 63
  %1652 = xor i64 %1649, %1651
  %1653 = add nuw nsw i64 %1652, %1649
  %1654 = icmp eq i64 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %39, align 1
  store i64 %1632, i64* %RDI.i535, align 8
  %1656 = add i64 %1628, -120136
  %1657 = add i64 %1628, 29
  %1658 = load i64, i64* %6, align 8
  %1659 = add i64 %1658, -8
  %1660 = inttoptr i64 %1659 to i64*
  store i64 %1657, i64* %1660, align 8
  store i64 %1659, i64* %6, align 8
  store i64 %1656, i64* %3, align 8
  %call2_41ebc0 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1656, %struct.Memory* %1616)
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -552
  %1663 = load i64, i64* %RAX.i1226, align 8
  %1664 = load i64, i64* %3, align 8
  %1665 = add i64 %1664, 7
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1662 to i64*
  store i64 %1663, i64* %1666, align 8
  %1667 = load i64, i64* %RAX.i1226, align 8
  %1668 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1669 = trunc i64 %1667 to i32
  %1670 = and i32 %1669, 255
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1675 = icmp eq i64 %1667, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %30, align 1
  %1677 = lshr i64 %1667, 63
  %1678 = trunc i64 %1677 to i8
  store i8 %1678, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v656 = select i1 %1675, i64 10, i64 15
  %1679 = add i64 %1668, %.v656
  store i64 %1679, i64* %3, align 8
  br i1 %1675, label %block_41ebd6, label %block_.L_41ebdb

block_41ebd6:                                     ; preds = %block_41eba8
  %1680 = add i64 %1679, 3336
  br label %block_.L_41f8de

block_.L_41ebdb:                                  ; preds = %block_41eba8
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -552
  %1683 = add i64 %1679, 7
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i64*
  %1685 = load i64, i64* %1684, align 8
  store i64 %1685, i64* %RDI.i535, align 8
  %1686 = add i64 %1679, -120747
  %1687 = add i64 %1679, 12
  %1688 = load i64, i64* %6, align 8
  %1689 = add i64 %1688, -8
  %1690 = inttoptr i64 %1689 to i64*
  store i64 %1687, i64* %1690, align 8
  store i64 %1689, i64* %6, align 8
  store i64 %1686, i64* %3, align 8
  %1691 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41ebc0)
  %1692 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1693 = load <2 x i32>, <2 x i32>* %156, align 1
  %1694 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast97 = bitcast <2 x i32> %1693 to double
  %1695 = fptrunc double %.cast97 to float
  store float %1695, float* %159, align 1
  %1696 = extractelement <2 x i32> %1693, i32 1
  store i32 %1696, i32* %161, align 1
  %1697 = extractelement <2 x i32> %1694, i32 0
  store i32 %1697, i32* %162, align 1
  %1698 = extractelement <2 x i32> %1694, i32 1
  store i32 %1698, i32* %164, align 1
  %1699 = load i64, i64* %RBP.i, align 8
  %1700 = add i64 %1699, -32
  %1701 = add i64 %1692, 22
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RCX.i875, align 8
  %1704 = add i64 %1703, 120
  %1705 = add i64 %1692, 27
  store i64 %1705, i64* %3, align 8
  %1706 = load <2 x float>, <2 x float>* %165, align 1
  %1707 = extractelement <2 x float> %1706, i32 0
  %1708 = inttoptr i64 %1704 to float*
  store float %1707, float* %1708, align 4
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, -120226
  %1711 = add i64 %1709, 5
  %1712 = load i64, i64* %6, align 8
  %1713 = add i64 %1712, -8
  %1714 = inttoptr i64 %1713 to i64*
  store i64 %1711, i64* %1714, align 8
  store i64 %1713, i64* %6, align 8
  store i64 %1710, i64* %3, align 8
  %call2_41ec02 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1710, %struct.Memory* %1691)
  %1715 = load i64, i64* %RBP.i, align 8
  %1716 = add i64 %1715, -552
  %1717 = load i64, i64* %RAX.i1226, align 8
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 7
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1716 to i64*
  store i64 %1717, i64* %1720, align 8
  %1721 = load i64, i64* %RAX.i1226, align 8
  %1722 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1723 = trunc i64 %1721 to i32
  %1724 = and i32 %1723, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1729 = icmp eq i64 %1721, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %30, align 1
  %1731 = lshr i64 %1721, 63
  %1732 = trunc i64 %1731 to i8
  store i8 %1732, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v657 = select i1 %1729, i64 10, i64 15
  %1733 = add i64 %1722, %.v657
  store i64 %1733, i64* %3, align 8
  br i1 %1729, label %block_41ec18, label %block_.L_41ec1d

block_41ec18:                                     ; preds = %block_.L_41ebdb
  %1734 = add i64 %1733, 3270
  br label %block_.L_41f8de

block_.L_41ec1d:                                  ; preds = %block_.L_41ebdb
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -552
  %1737 = add i64 %1733, 7
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i64*
  %1739 = load i64, i64* %1738, align 8
  store i64 %1739, i64* %RDI.i535, align 8
  %1740 = add i64 %1733, -120813
  %1741 = add i64 %1733, 12
  %1742 = load i64, i64* %6, align 8
  %1743 = add i64 %1742, -8
  %1744 = inttoptr i64 %1743 to i64*
  store i64 %1741, i64* %1744, align 8
  store i64 %1743, i64* %6, align 8
  store i64 %1740, i64* %3, align 8
  %1745 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41ec02)
  %1746 = load i64, i64* %3, align 8
  %1747 = load <2 x i32>, <2 x i32>* %156, align 1
  %1748 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast98 = bitcast <2 x i32> %1747 to double
  %1749 = fptrunc double %.cast98 to float
  store float %1749, float* %159, align 1
  %1750 = extractelement <2 x i32> %1747, i32 1
  store i32 %1750, i32* %161, align 1
  %1751 = extractelement <2 x i32> %1748, i32 0
  store i32 %1751, i32* %162, align 1
  %1752 = extractelement <2 x i32> %1748, i32 1
  store i32 %1752, i32* %164, align 1
  %1753 = load i64, i64* %RBP.i, align 8
  %1754 = add i64 %1753, -32
  %1755 = add i64 %1746, 8
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i64*
  %1757 = load i64, i64* %1756, align 8
  store i64 %1757, i64* %RDI.i535, align 8
  %1758 = add i64 %1757, 124
  %1759 = add i64 %1746, 13
  store i64 %1759, i64* %3, align 8
  %1760 = load <2 x float>, <2 x float>* %165, align 1
  %1761 = extractelement <2 x float> %1760, i32 0
  %1762 = inttoptr i64 %1758 to float*
  store float %1761, float* %1762, align 4
  %1763 = load i64, i64* %RBP.i, align 8
  %1764 = add i64 %1763, -32
  %1765 = load i64, i64* %3, align 8
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1764 to i64*
  %1768 = load i64, i64* %1767, align 8
  store i64 %1768, i64* %RDI.i535, align 8
  %1769 = add i64 %1768, 456
  %1770 = add i64 %1765, 10
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = or i32 %1772, 2048
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  %1775 = and i32 %1772, 255
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1780 = lshr i32 %1772, 31
  %1781 = trunc i32 %1780 to i8
  store i8 %1781, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1782 = add i64 %1765, 21
  store i64 %1782, i64* %3, align 8
  store i32 %1773, i32* %1771, align 4
  %1783 = load i64, i64* %3, align 8
  %1784 = add i64 %1783, 1392
  br label %block_.L_41f1bb

block_.L_41ec50:                                  ; preds = %block_.L_41eb82
  store i64 ptrtoint (%G__0x4579a8_type* @G__0x4579a8 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -544
  store i64 %1786, i64* %RDI.i535, align 8
  %1787 = add i64 %1628, -120960
  %1788 = add i64 %1628, 29
  %1789 = load i64, i64* %6, align 8
  %1790 = add i64 %1789, -8
  %1791 = inttoptr i64 %1790 to i64*
  store i64 %1788, i64* %1791, align 8
  store i64 %1790, i64* %6, align 8
  store i64 %1787, i64* %3, align 8
  %1792 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1616)
  %1793 = load i32, i32* %EAX.i886, align 4
  %1794 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1795 = and i32 %1793, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1800 = icmp eq i32 %1793, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %30, align 1
  %1802 = lshr i32 %1793, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v604 = select i1 %1800, i64 9, i64 183
  %1804 = add i64 %1794, %.v604
  %1805 = add i64 %1804, 10
  store i64 %1805, i64* %3, align 8
  br i1 %1800, label %block_41ec76, label %block_.L_41ed24

block_41ec76:                                     ; preds = %block_.L_41ec50
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1806 = load i64, i64* %RBP.i, align 8
  %1807 = add i64 %1806, -544
  %1808 = add i64 %1806, -538
  store i64 %1808, i64* %RAX.i1226, align 8
  %1809 = icmp ult i64 %1808, %1807
  %1810 = icmp ult i64 %1808, 6
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = trunc i64 %1808 to i32
  %1814 = and i32 %1813, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %21, align 1
  %1819 = xor i64 %1807, %1808
  %1820 = lshr i64 %1819, 4
  %1821 = trunc i64 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %27, align 1
  %1823 = icmp eq i64 %1808, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %30, align 1
  %1825 = lshr i64 %1808, 63
  %1826 = trunc i64 %1825 to i8
  store i8 %1826, i8* %33, align 1
  %1827 = lshr i64 %1807, 63
  %1828 = xor i64 %1825, %1827
  %1829 = add nuw nsw i64 %1828, %1825
  %1830 = icmp eq i64 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %39, align 1
  store i64 %1808, i64* %RDI.i535, align 8
  %1832 = add i64 %1804, -120342
  %1833 = add i64 %1804, 29
  %1834 = load i64, i64* %6, align 8
  %1835 = add i64 %1834, -8
  %1836 = inttoptr i64 %1835 to i64*
  store i64 %1833, i64* %1836, align 8
  store i64 %1835, i64* %6, align 8
  store i64 %1832, i64* %3, align 8
  %call2_41ec8e = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1832, %struct.Memory* %1792)
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -552
  %1839 = load i64, i64* %RAX.i1226, align 8
  %1840 = load i64, i64* %3, align 8
  %1841 = add i64 %1840, 7
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1838 to i64*
  store i64 %1839, i64* %1842, align 8
  %1843 = load i64, i64* %RAX.i1226, align 8
  %1844 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1845 = trunc i64 %1843 to i32
  %1846 = and i32 %1845, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1851 = icmp eq i64 %1843, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %30, align 1
  %1853 = lshr i64 %1843, 63
  %1854 = trunc i64 %1853 to i8
  store i8 %1854, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v654 = select i1 %1851, i64 10, i64 15
  %1855 = add i64 %1844, %.v654
  store i64 %1855, i64* %3, align 8
  br i1 %1851, label %block_41eca4, label %block_.L_41eca9

block_41eca4:                                     ; preds = %block_41ec76
  %1856 = add i64 %1855, 3130
  br label %block_.L_41f8de

block_.L_41eca9:                                  ; preds = %block_41ec76
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -552
  %1859 = add i64 %1855, 7
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RDI.i535, align 8
  %1862 = add i64 %1855, -120953
  %1863 = add i64 %1855, 12
  %1864 = load i64, i64* %6, align 8
  %1865 = add i64 %1864, -8
  %1866 = inttoptr i64 %1865 to i64*
  store i64 %1863, i64* %1866, align 8
  store i64 %1865, i64* %6, align 8
  store i64 %1862, i64* %3, align 8
  %1867 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41ec8e)
  %1868 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1869 = load <2 x i32>, <2 x i32>* %156, align 1
  %1870 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast100 = bitcast <2 x i32> %1869 to double
  %1871 = fptrunc double %.cast100 to float
  store float %1871, float* %159, align 1
  %1872 = extractelement <2 x i32> %1869, i32 1
  store i32 %1872, i32* %161, align 1
  %1873 = extractelement <2 x i32> %1870, i32 0
  store i32 %1873, i32* %162, align 1
  %1874 = extractelement <2 x i32> %1870, i32 1
  store i32 %1874, i32* %164, align 1
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -32
  %1877 = add i64 %1868, 22
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i64*
  %1879 = load i64, i64* %1878, align 8
  store i64 %1879, i64* %RCX.i875, align 8
  %1880 = add i64 %1879, 128
  %1881 = add i64 %1868, 30
  store i64 %1881, i64* %3, align 8
  %1882 = load <2 x float>, <2 x float>* %165, align 1
  %1883 = extractelement <2 x float> %1882, i32 0
  %1884 = inttoptr i64 %1880 to float*
  store float %1883, float* %1884, align 4
  %1885 = load i64, i64* %3, align 8
  %1886 = add i64 %1885, -120435
  %1887 = add i64 %1885, 5
  %1888 = load i64, i64* %6, align 8
  %1889 = add i64 %1888, -8
  %1890 = inttoptr i64 %1889 to i64*
  store i64 %1887, i64* %1890, align 8
  store i64 %1889, i64* %6, align 8
  store i64 %1886, i64* %3, align 8
  %call2_41ecd3 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1886, %struct.Memory* %1867)
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -552
  %1893 = load i64, i64* %RAX.i1226, align 8
  %1894 = load i64, i64* %3, align 8
  %1895 = add i64 %1894, 7
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1892 to i64*
  store i64 %1893, i64* %1896, align 8
  %1897 = load i64, i64* %RAX.i1226, align 8
  %1898 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1899 = trunc i64 %1897 to i32
  %1900 = and i32 %1899, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1905 = icmp eq i64 %1897, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %30, align 1
  %1907 = lshr i64 %1897, 63
  %1908 = trunc i64 %1907 to i8
  store i8 %1908, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v655 = select i1 %1905, i64 10, i64 15
  %1909 = add i64 %1898, %.v655
  store i64 %1909, i64* %3, align 8
  br i1 %1905, label %block_41ece9, label %block_.L_41ecee

block_41ece9:                                     ; preds = %block_.L_41eca9
  %1910 = add i64 %1909, 3061
  br label %block_.L_41f8de

block_.L_41ecee:                                  ; preds = %block_.L_41eca9
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -552
  %1913 = add i64 %1909, 7
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i64*
  %1915 = load i64, i64* %1914, align 8
  store i64 %1915, i64* %RDI.i535, align 8
  %1916 = add i64 %1909, -121022
  %1917 = add i64 %1909, 12
  %1918 = load i64, i64* %6, align 8
  %1919 = add i64 %1918, -8
  %1920 = inttoptr i64 %1919 to i64*
  store i64 %1917, i64* %1920, align 8
  store i64 %1919, i64* %6, align 8
  store i64 %1916, i64* %3, align 8
  %1921 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41ecd3)
  %1922 = load i64, i64* %3, align 8
  %1923 = load <2 x i32>, <2 x i32>* %156, align 1
  %1924 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast101 = bitcast <2 x i32> %1923 to double
  %1925 = fptrunc double %.cast101 to float
  store float %1925, float* %159, align 1
  %1926 = extractelement <2 x i32> %1923, i32 1
  store i32 %1926, i32* %161, align 1
  %1927 = extractelement <2 x i32> %1924, i32 0
  store i32 %1927, i32* %162, align 1
  %1928 = extractelement <2 x i32> %1924, i32 1
  store i32 %1928, i32* %164, align 1
  %1929 = load i64, i64* %RBP.i, align 8
  %1930 = add i64 %1929, -32
  %1931 = add i64 %1922, 8
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i64*
  %1933 = load i64, i64* %1932, align 8
  store i64 %1933, i64* %RDI.i535, align 8
  %1934 = add i64 %1933, 132
  %1935 = add i64 %1922, 16
  store i64 %1935, i64* %3, align 8
  %1936 = load <2 x float>, <2 x float>* %165, align 1
  %1937 = extractelement <2 x float> %1936, i32 0
  %1938 = inttoptr i64 %1934 to float*
  store float %1937, float* %1938, align 4
  %1939 = load i64, i64* %RBP.i, align 8
  %1940 = add i64 %1939, -32
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1940 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RDI.i535, align 8
  %1945 = add i64 %1944, 456
  %1946 = add i64 %1941, 10
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = or i32 %1948, 4096
  %1950 = zext i32 %1949 to i64
  store i64 %1950, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  %1951 = and i32 %1948, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951)
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %1956 = lshr i32 %1948, 31
  %1957 = trunc i32 %1956 to i8
  store i8 %1957, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1958 = add i64 %1941, 21
  store i64 %1958, i64* %3, align 8
  store i32 %1949, i32* %1947, align 4
  %1959 = load i64, i64* %3, align 8
  %1960 = add i64 %1959, 1175
  br label %block_.L_41f1b6

block_.L_41ed24:                                  ; preds = %block_.L_41ec50
  store i64 ptrtoint (%G__0x4579ae_type* @G__0x4579ae to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %1961 = load i64, i64* %RBP.i, align 8
  %1962 = add i64 %1961, -544
  store i64 %1962, i64* %RDI.i535, align 8
  %1963 = add i64 %1804, -121172
  %1964 = add i64 %1804, 29
  %1965 = load i64, i64* %6, align 8
  %1966 = add i64 %1965, -8
  %1967 = inttoptr i64 %1966 to i64*
  store i64 %1964, i64* %1967, align 8
  store i64 %1966, i64* %6, align 8
  store i64 %1963, i64* %3, align 8
  %1968 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1792)
  %1969 = load i32, i32* %EAX.i886, align 4
  %1970 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1971 = and i32 %1969, 255
  %1972 = tail call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  store i8 %1975, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1976 = icmp eq i32 %1969, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %30, align 1
  %1978 = lshr i32 %1969, 31
  %1979 = trunc i32 %1978 to i8
  store i8 %1979, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v605 = select i1 %1976, i64 9, i64 258
  %1980 = add i64 %1970, %.v605
  %1981 = add i64 %1980, 10
  store i64 %1981, i64* %3, align 8
  br i1 %1976, label %block_41ed4a, label %block_.L_41ee43

block_41ed4a:                                     ; preds = %block_.L_41ed24
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %1982 = load i64, i64* %RBP.i, align 8
  %1983 = add i64 %1982, -544
  %1984 = add i64 %1982, -538
  store i64 %1984, i64* %RAX.i1226, align 8
  %1985 = icmp ult i64 %1984, %1983
  %1986 = icmp ult i64 %1984, 6
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %14, align 1
  %1989 = trunc i64 %1984 to i32
  %1990 = and i32 %1989, 255
  %1991 = tail call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  store i8 %1994, i8* %21, align 1
  %1995 = xor i64 %1983, %1984
  %1996 = lshr i64 %1995, 4
  %1997 = trunc i64 %1996 to i8
  %1998 = and i8 %1997, 1
  store i8 %1998, i8* %27, align 1
  %1999 = icmp eq i64 %1984, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %30, align 1
  %2001 = lshr i64 %1984, 63
  %2002 = trunc i64 %2001 to i8
  store i8 %2002, i8* %33, align 1
  %2003 = lshr i64 %1983, 63
  %2004 = xor i64 %2001, %2003
  %2005 = add nuw nsw i64 %2004, %2001
  %2006 = icmp eq i64 %2005, 2
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %39, align 1
  store i64 %1984, i64* %RDI.i535, align 8
  %2008 = add i64 %1980, -120554
  %2009 = add i64 %1980, 29
  %2010 = load i64, i64* %6, align 8
  %2011 = add i64 %2010, -8
  %2012 = inttoptr i64 %2011 to i64*
  store i64 %2009, i64* %2012, align 8
  store i64 %2011, i64* %6, align 8
  store i64 %2008, i64* %3, align 8
  %call2_41ed62 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2008, %struct.Memory* %1968)
  %2013 = load i64, i64* %RBP.i, align 8
  %2014 = add i64 %2013, -552
  %2015 = load i64, i64* %RAX.i1226, align 8
  %2016 = load i64, i64* %3, align 8
  %2017 = add i64 %2016, 7
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2014 to i64*
  store i64 %2015, i64* %2018, align 8
  %2019 = load i64, i64* %RAX.i1226, align 8
  %2020 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2021 = trunc i64 %2019 to i32
  %2022 = and i32 %2021, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2027 = icmp eq i64 %2019, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %30, align 1
  %2029 = lshr i64 %2019, 63
  %2030 = trunc i64 %2029 to i8
  store i8 %2030, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v651 = select i1 %2027, i64 10, i64 15
  %2031 = add i64 %2020, %.v651
  store i64 %2031, i64* %3, align 8
  br i1 %2027, label %block_41ed78, label %block_.L_41ed7d

block_41ed78:                                     ; preds = %block_41ed4a
  %2032 = add i64 %2031, 2918
  br label %block_.L_41f8de

block_.L_41ed7d:                                  ; preds = %block_41ed4a
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -564
  %2035 = add i64 %2031, 10
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i32*
  store i32 0, i32* %2036, align 4
  %.pre561 = load i64, i64* %3, align 8
  br label %block_.L_41ed87

block_.L_41ed87:                                  ; preds = %block_.L_41ee25, %block_.L_41ed7d
  %2037 = phi i64 [ %2273, %block_.L_41ee25 ], [ %.pre561, %block_.L_41ed7d ]
  %2038 = load i64, i64* %RBP.i, align 8
  %2039 = add i64 %2038, -564
  %2040 = add i64 %2037, 7
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = add i32 %2042, -4
  %2044 = icmp ult i32 %2042, 4
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %14, align 1
  %2046 = and i32 %2043, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %21, align 1
  %2051 = xor i32 %2043, %2042
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %27, align 1
  %2055 = icmp eq i32 %2043, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %30, align 1
  %2057 = lshr i32 %2043, 31
  %2058 = trunc i32 %2057 to i8
  store i8 %2058, i8* %33, align 1
  %2059 = lshr i32 %2042, 31
  %2060 = xor i32 %2057, %2059
  %2061 = add nuw nsw i32 %2060, %2059
  %2062 = icmp eq i32 %2061, 2
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %39, align 1
  %2064 = icmp ne i8 %2058, 0
  %2065 = xor i1 %2064, %2062
  %.v652 = select i1 %2065, i64 13, i64 183
  %2066 = add i64 %2037, %.v652
  store i64 %2066, i64* %3, align 8
  br i1 %2065, label %block_41ed94, label %block_.L_41ee3e

block_41ed94:                                     ; preds = %block_.L_41ed87
  %2067 = add i64 %2038, -568
  %2068 = add i64 %2066, 10
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  store i32 0, i32* %2069, align 4
  %.pre562 = load i64, i64* %3, align 8
  br label %block_.L_41ed9e

block_.L_41ed9e:                                  ; preds = %block_.L_41edbe, %block_41ed94
  %2070 = phi i64 [ %2243, %block_.L_41edbe ], [ %.pre562, %block_41ed94 ]
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -568
  %2073 = add i64 %2070, 7
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = add i32 %2075, -2
  %2077 = icmp ult i32 %2075, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %14, align 1
  %2079 = and i32 %2076, 255
  %2080 = tail call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  store i8 %2083, i8* %21, align 1
  %2084 = xor i32 %2076, %2075
  %2085 = lshr i32 %2084, 4
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  store i8 %2087, i8* %27, align 1
  %2088 = icmp eq i32 %2076, 0
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %30, align 1
  %2090 = lshr i32 %2076, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %33, align 1
  %2092 = lshr i32 %2075, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2092
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %39, align 1
  %2097 = icmp ne i8 %2091, 0
  %2098 = xor i1 %2097, %2095
  %.v = select i1 %2098, i64 13, i64 135
  %2099 = add i64 %2070, %.v
  store i64 %2099, i64* %3, align 8
  br i1 %2098, label %block_41edab, label %block_.L_41ee25

block_41edab:                                     ; preds = %block_.L_41ed9e
  %2100 = add i64 %2071, -552
  %2101 = add i64 %2099, 8
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i64*
  %2103 = load i64, i64* %2102, align 8
  store i8 0, i8* %14, align 1
  %2104 = trunc i64 %2103 to i32
  %2105 = and i32 %2104, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2110 = icmp eq i64 %2103, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %30, align 1
  %2112 = lshr i64 %2103, 63
  %2113 = trunc i64 %2112 to i8
  store i8 %2113, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v653 = select i1 %2110, i64 14, i64 19
  %2114 = add i64 %2099, %.v653
  store i64 %2114, i64* %3, align 8
  br i1 %2110, label %block_41edb9, label %block_.L_41edbe

block_41edb9:                                     ; preds = %block_41edab
  %2115 = add i64 %2114, 2853
  br label %block_.L_41f8de

block_.L_41edbe:                                  ; preds = %block_41edab
  %2116 = add i64 %2114, ptrtoint (%G_0x35962__rip__type* @G_0x35962__rip_ to i64)
  %2117 = add i64 %2114, 8
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  store i32 %2119, i32* %207, align 1
  store float 0.000000e+00, float* %208, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %209, align 1
  %2120 = add i64 %2114, 15
  store i64 %2120, i64* %3, align 8
  %2121 = load i64, i64* %2102, align 8
  store i64 %2121, i64* %RDI.i535, align 8
  %2122 = add i64 %2114, 10690
  %2123 = add i64 %2114, 20
  %2124 = load i64, i64* %6, align 8
  %2125 = add i64 %2124, -8
  %2126 = inttoptr i64 %2125 to i64*
  store i64 %2123, i64* %2126, align 8
  store i64 %2125, i64* %6, align 8
  store i64 %2122, i64* %3, align 8
  %call2_41edcd = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2122, %struct.Memory* %call2_41ed62)
  %2127 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -32
  %2130 = add i64 %2127, 18
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i64*
  %2132 = load i64, i64* %2131, align 8
  %2133 = add i64 %2132, 172
  store i64 %2133, i64* %RCX.i875, align 8
  %2134 = icmp ugt i64 %2132, -173
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %14, align 1
  %2136 = trunc i64 %2133 to i32
  %2137 = and i32 %2136, 255
  %2138 = tail call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %21, align 1
  %2142 = xor i64 %2133, %2132
  %2143 = lshr i64 %2142, 4
  %2144 = trunc i64 %2143 to i8
  %2145 = and i8 %2144, 1
  store i8 %2145, i8* %27, align 1
  %2146 = icmp eq i64 %2133, 0
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %30, align 1
  %2148 = lshr i64 %2133, 63
  %2149 = trunc i64 %2148 to i8
  store i8 %2149, i8* %33, align 1
  %2150 = lshr i64 %2132, 63
  %2151 = xor i64 %2148, %2150
  %2152 = add nuw nsw i64 %2151, %2148
  %2153 = icmp eq i64 %2152, 2
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %39, align 1
  %2155 = add i64 %2128, -564
  %2156 = add i64 %2127, 32
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = sext i32 %2158 to i64
  %2160 = shl nsw i64 %2159, 3
  store i64 %2160, i64* %RDX.i1259, align 8
  %2161 = add i64 %2160, %2133
  store i64 %2161, i64* %RCX.i875, align 8
  %2162 = icmp ult i64 %2161, %2133
  %2163 = icmp ult i64 %2161, %2160
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %14, align 1
  %2166 = trunc i64 %2161 to i32
  %2167 = and i32 %2166, 255
  %2168 = tail call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %21, align 1
  %2172 = xor i64 %2160, %2133
  %2173 = xor i64 %2172, %2161
  %2174 = lshr i64 %2173, 4
  %2175 = trunc i64 %2174 to i8
  %2176 = and i8 %2175, 1
  store i8 %2176, i8* %27, align 1
  %2177 = icmp eq i64 %2161, 0
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %30, align 1
  %2179 = lshr i64 %2161, 63
  %2180 = trunc i64 %2179 to i8
  store i8 %2180, i8* %33, align 1
  %2181 = lshr i64 %2159, 60
  %2182 = and i64 %2181, 1
  %2183 = xor i64 %2179, %2148
  %2184 = xor i64 %2179, %2182
  %2185 = add nuw nsw i64 %2183, %2184
  %2186 = icmp eq i64 %2185, 2
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %39, align 1
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -568
  %2190 = add i64 %2127, 46
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = sext i32 %2192 to i64
  store i64 %2193, i64* %RDX.i1259, align 8
  %2194 = shl nsw i64 %2193, 2
  %2195 = add i64 %2194, %2161
  %2196 = add i64 %2127, 51
  store i64 %2196, i64* %3, align 8
  %2197 = load <2 x float>, <2 x float>* %165, align 1
  %2198 = extractelement <2 x float> %2197, i32 0
  %2199 = inttoptr i64 %2195 to float*
  store float %2198, float* %2199, align 4
  %2200 = load i64, i64* %3, align 8
  %2201 = add i64 %2200, -120741
  %2202 = add i64 %2200, 5
  %2203 = load i64, i64* %6, align 8
  %2204 = add i64 %2203, -8
  %2205 = inttoptr i64 %2204 to i64*
  store i64 %2202, i64* %2205, align 8
  store i64 %2204, i64* %6, align 8
  store i64 %2201, i64* %3, align 8
  %call2_41ee05 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2201, %struct.Memory* %call2_41ed62)
  %2206 = load i64, i64* %RBP.i, align 8
  %2207 = add i64 %2206, -552
  %2208 = load i64, i64* %RAX.i1226, align 8
  %2209 = load i64, i64* %3, align 8
  %2210 = add i64 %2209, 7
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2207 to i64*
  store i64 %2208, i64* %2211, align 8
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -568
  %2214 = load i64, i64* %3, align 8
  %2215 = add i64 %2214, 6
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2213 to i32*
  %2217 = load i32, i32* %2216, align 4
  %2218 = add i32 %2217, 1
  %2219 = zext i32 %2218 to i64
  store i64 %2219, i64* %RAX.i1226, align 8
  %2220 = icmp eq i32 %2217, -1
  %2221 = icmp eq i32 %2218, 0
  %2222 = or i1 %2220, %2221
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %14, align 1
  %2224 = and i32 %2218, 255
  %2225 = tail call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  store i8 %2228, i8* %21, align 1
  %2229 = xor i32 %2218, %2217
  %2230 = lshr i32 %2229, 4
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  store i8 %2232, i8* %27, align 1
  %2233 = zext i1 %2221 to i8
  store i8 %2233, i8* %30, align 1
  %2234 = lshr i32 %2218, 31
  %2235 = trunc i32 %2234 to i8
  store i8 %2235, i8* %33, align 1
  %2236 = lshr i32 %2217, 31
  %2237 = xor i32 %2234, %2236
  %2238 = add nuw nsw i32 %2237, %2234
  %2239 = icmp eq i32 %2238, 2
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %39, align 1
  %2241 = add i64 %2214, 15
  store i64 %2241, i64* %3, align 8
  store i32 %2218, i32* %2216, align 4
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, -130
  store i64 %2243, i64* %3, align 8
  br label %block_.L_41ed9e

block_.L_41ee25:                                  ; preds = %block_.L_41ed9e
  %2244 = add i64 %2071, -564
  %2245 = add i64 %2099, 11
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = add i32 %2247, 1
  %2249 = zext i32 %2248 to i64
  store i64 %2249, i64* %RAX.i1226, align 8
  %2250 = icmp eq i32 %2247, -1
  %2251 = icmp eq i32 %2248, 0
  %2252 = or i1 %2250, %2251
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %14, align 1
  %2254 = and i32 %2248, 255
  %2255 = tail call i32 @llvm.ctpop.i32(i32 %2254)
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  %2258 = xor i8 %2257, 1
  store i8 %2258, i8* %21, align 1
  %2259 = xor i32 %2248, %2247
  %2260 = lshr i32 %2259, 4
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  store i8 %2262, i8* %27, align 1
  %2263 = zext i1 %2251 to i8
  store i8 %2263, i8* %30, align 1
  %2264 = lshr i32 %2248, 31
  %2265 = trunc i32 %2264 to i8
  store i8 %2265, i8* %33, align 1
  %2266 = lshr i32 %2247, 31
  %2267 = xor i32 %2264, %2266
  %2268 = add nuw nsw i32 %2267, %2264
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %39, align 1
  %2271 = add i64 %2099, 20
  store i64 %2271, i64* %3, align 8
  store i32 %2248, i32* %2246, align 4
  %2272 = load i64, i64* %3, align 8
  %2273 = add i64 %2272, -178
  store i64 %2273, i64* %3, align 8
  br label %block_.L_41ed87

block_.L_41ee3e:                                  ; preds = %block_.L_41ed87
  %2274 = add i64 %2066, 883
  br label %block_.L_41f1b1

block_.L_41ee43:                                  ; preds = %block_.L_41ed24
  store i64 ptrtoint (%G__0x4579b4_type* @G__0x4579b4 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -544
  store i64 %2276, i64* %RDI.i535, align 8
  %2277 = add i64 %1980, -121459
  %2278 = add i64 %1980, 29
  %2279 = load i64, i64* %6, align 8
  %2280 = add i64 %2279, -8
  %2281 = inttoptr i64 %2280 to i64*
  store i64 %2278, i64* %2281, align 8
  store i64 %2280, i64* %6, align 8
  store i64 %2277, i64* %3, align 8
  %2282 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1968)
  %2283 = load i32, i32* %EAX.i886, align 4
  %2284 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2285 = and i32 %2283, 255
  %2286 = tail call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  store i8 %2289, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2290 = icmp eq i32 %2283, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %30, align 1
  %2292 = lshr i32 %2283, 31
  %2293 = trunc i32 %2292 to i8
  store i8 %2293, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v606 = select i1 %2290, i64 9, i64 234
  %2294 = add i64 %2284, %.v606
  %2295 = add i64 %2294, 10
  store i64 %2295, i64* %3, align 8
  br i1 %2290, label %block_41ee69, label %block_.L_41ef4a

block_41ee69:                                     ; preds = %block_.L_41ee43
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2296 = load i64, i64* %RBP.i, align 8
  %2297 = add i64 %2296, -544
  %2298 = add i64 %2296, -538
  store i64 %2298, i64* %RAX.i1226, align 8
  %2299 = icmp ult i64 %2298, %2297
  %2300 = icmp ult i64 %2298, 6
  %2301 = or i1 %2299, %2300
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %14, align 1
  %2303 = trunc i64 %2298 to i32
  %2304 = and i32 %2303, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i64 %2297, %2298
  %2310 = lshr i64 %2309, 4
  %2311 = trunc i64 %2310 to i8
  %2312 = and i8 %2311, 1
  store i8 %2312, i8* %27, align 1
  %2313 = icmp eq i64 %2298, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %30, align 1
  %2315 = lshr i64 %2298, 63
  %2316 = trunc i64 %2315 to i8
  store i8 %2316, i8* %33, align 1
  %2317 = lshr i64 %2297, 63
  %2318 = xor i64 %2315, %2317
  %2319 = add nuw nsw i64 %2318, %2315
  %2320 = icmp eq i64 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %39, align 1
  store i64 %2298, i64* %RDI.i535, align 8
  %2322 = add i64 %2294, -120841
  %2323 = add i64 %2294, 29
  %2324 = load i64, i64* %6, align 8
  %2325 = add i64 %2324, -8
  %2326 = inttoptr i64 %2325 to i64*
  store i64 %2323, i64* %2326, align 8
  store i64 %2325, i64* %6, align 8
  store i64 %2322, i64* %3, align 8
  %call2_41ee81 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2322, %struct.Memory* %2282)
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -552
  %2329 = load i64, i64* %RAX.i1226, align 8
  %2330 = load i64, i64* %3, align 8
  %2331 = add i64 %2330, 7
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2328 to i64*
  store i64 %2329, i64* %2332, align 8
  %2333 = load i64, i64* %RAX.i1226, align 8
  %2334 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2335 = trunc i64 %2333 to i32
  %2336 = and i32 %2335, 255
  %2337 = tail call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  store i8 %2340, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2341 = icmp eq i64 %2333, 0
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %30, align 1
  %2343 = lshr i64 %2333, 63
  %2344 = trunc i64 %2343 to i8
  store i8 %2344, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v649 = select i1 %2341, i64 10, i64 15
  %2345 = add i64 %2334, %.v649
  store i64 %2345, i64* %3, align 8
  br i1 %2341, label %block_41ee97, label %block_.L_41ee9c

block_41ee97:                                     ; preds = %block_41ee69
  %2346 = add i64 %2345, 2631
  br label %block_.L_41f8de

block_.L_41ee9c:                                  ; preds = %block_41ee69
  %2347 = add i64 %2345, ptrtoint (%G_0x35884__rip__type* @G_0x35884__rip_ to i64)
  %2348 = add i64 %2345, 8
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  store i32 %2350, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %2351 = load i64, i64* %RBP.i, align 8
  %2352 = add i64 %2351, -552
  %2353 = add i64 %2345, 15
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i64*
  %2355 = load i64, i64* %2354, align 8
  store i64 %2355, i64* %RDI.i535, align 8
  %2356 = add i64 %2345, 10468
  %2357 = add i64 %2345, 20
  %2358 = load i64, i64* %6, align 8
  %2359 = add i64 %2358, -8
  %2360 = inttoptr i64 %2359 to i64*
  store i64 %2357, i64* %2360, align 8
  store i64 %2359, i64* %6, align 8
  store i64 %2356, i64* %3, align 8
  %call2_41eeab = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2356, %struct.Memory* %call2_41ee81)
  %2361 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2362 = load i64, i64* %RBP.i, align 8
  %2363 = add i64 %2362, -32
  %2364 = add i64 %2361, 18
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i64*
  %2366 = load i64, i64* %2365, align 8
  store i64 %2366, i64* %RCX.i875, align 8
  %2367 = add i64 %2366, 304
  %2368 = add i64 %2361, 26
  store i64 %2368, i64* %3, align 8
  %2369 = load <2 x float>, <2 x float>* %188, align 1
  %2370 = extractelement <2 x float> %2369, i32 0
  %2371 = inttoptr i64 %2367 to float*
  store float %2370, float* %2371, align 4
  %2372 = load i64, i64* %3, align 8
  %2373 = add i64 %2372, -120938
  %2374 = add i64 %2372, 5
  %2375 = load i64, i64* %6, align 8
  %2376 = add i64 %2375, -8
  %2377 = inttoptr i64 %2376 to i64*
  store i64 %2374, i64* %2377, align 8
  store i64 %2376, i64* %6, align 8
  store i64 %2373, i64* %3, align 8
  %call2_41eeca = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2373, %struct.Memory* %call2_41eeab)
  %2378 = load i64, i64* %RBP.i, align 8
  %2379 = add i64 %2378, -552
  %2380 = load i64, i64* %RAX.i1226, align 8
  %2381 = load i64, i64* %3, align 8
  %2382 = add i64 %2381, 7
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2379 to i64*
  store i64 %2380, i64* %2383, align 8
  %2384 = load i64, i64* %RAX.i1226, align 8
  %2385 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2386 = trunc i64 %2384 to i32
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2392 = icmp eq i64 %2384, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %30, align 1
  %2394 = lshr i64 %2384, 63
  %2395 = trunc i64 %2394 to i8
  store i8 %2395, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v650 = select i1 %2392, i64 10, i64 15
  %2396 = add i64 %2385, %.v650
  store i64 %2396, i64* %3, align 8
  br i1 %2392, label %block_41eee0, label %block_.L_41eee5

block_41eee0:                                     ; preds = %block_.L_41ee9c
  %2397 = add i64 %2396, 2558
  br label %block_.L_41f8de

block_.L_41eee5:                                  ; preds = %block_.L_41ee9c
  %2398 = add i64 %2396, ptrtoint (%G_0x3583b__rip__type* @G_0x3583b__rip_ to i64)
  %2399 = add i64 %2396, 8
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  store i32 %2401, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %2402 = load i64, i64* %RBP.i, align 8
  %2403 = add i64 %2402, -32
  %2404 = add i64 %2396, 12
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i64*
  %2406 = load i64, i64* %2405, align 8
  store i64 %2406, i64* %RAX.i1226, align 8
  %2407 = add i64 %2406, 304
  %2408 = add i64 %2396, 20
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  store i32 %2410, i32* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  store float 0.000000e+00, float* %196, align 1
  %2411 = add i64 %2396, 24
  store i64 %2411, i64* %3, align 8
  %2412 = load i64, i64* %2405, align 8
  store i64 %2412, i64* %RAX.i1226, align 8
  %2413 = add i64 %2412, 304
  %2414 = add i64 %2396, 32
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  store i32 %2416, i32* %199, align 1
  store float 0.000000e+00, float* %201, align 1
  store float 0.000000e+00, float* %203, align 1
  store float 0.000000e+00, float* %205, align 1
  %2417 = add i64 %2402, -552
  %2418 = add i64 %2396, 39
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i64*
  %2420 = load i64, i64* %2419, align 8
  store i64 %2420, i64* %RDI.i535, align 8
  %2421 = add i64 %2402, -644
  %2422 = add i64 %2396, 47
  store i64 %2422, i64* %3, align 8
  %2423 = load <2 x float>, <2 x float>* %206, align 1
  %2424 = extractelement <2 x float> %2423, i32 0
  %2425 = inttoptr i64 %2421 to float*
  store float %2424, float* %2425, align 4
  %2426 = load i64, i64* %RBP.i, align 8
  %2427 = add i64 %2426, -648
  %2428 = load i64, i64* %3, align 8
  %2429 = add i64 %2428, 8
  store i64 %2429, i64* %3, align 8
  %2430 = load <2 x float>, <2 x float>* %181, align 1
  %2431 = extractelement <2 x float> %2430, i32 0
  %2432 = inttoptr i64 %2427 to float*
  store float %2431, float* %2432, align 4
  %2433 = load i64, i64* %3, align 8
  %2434 = add i64 %2433, 10340
  %2435 = add i64 %2433, 5
  %2436 = load i64, i64* %6, align 8
  %2437 = add i64 %2436, -8
  %2438 = inttoptr i64 %2437 to i64*
  store i64 %2435, i64* %2438, align 8
  store i64 %2437, i64* %6, align 8
  store i64 %2434, i64* %3, align 8
  %call2_41ef1c = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2434, %struct.Memory* %call2_41eeca)
  %2439 = load i64, i64* %RBP.i, align 8
  %2440 = add i64 %2439, -644
  %2441 = load i64, i64* %3, align 8
  %2442 = add i64 %2441, 8
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2440 to i32*
  %2444 = load i32, i32* %2443, align 4
  store i32 %2444, i32* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  store float 0.000000e+00, float* %196, align 1
  %2445 = load <2 x float>, <2 x float>* %181, align 1
  %2446 = load <2 x i32>, <2 x i32>* %174, align 1
  %2447 = load <2 x float>, <2 x float>* %188, align 1
  %2448 = extractelement <2 x float> %2445, i32 0
  %2449 = extractelement <2 x float> %2447, i32 0
  %2450 = fadd float %2448, %2449
  store float %2450, float* %175, align 1
  %2451 = bitcast <2 x float> %2445 to <2 x i32>
  %2452 = extractelement <2 x i32> %2451, i32 1
  store i32 %2452, i32* %177, align 1
  %2453 = extractelement <2 x i32> %2446, i32 0
  store i32 %2453, i32* %178, align 1
  %2454 = extractelement <2 x i32> %2446, i32 1
  store i32 %2454, i32* %180, align 1
  %2455 = add i64 %2439, -648
  %2456 = add i64 %2441, 20
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  store i32 %2458, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %2459 = load <2 x float>, <2 x float>* %188, align 1
  %2460 = load <2 x i32>, <2 x i32>* %158, align 1
  %2461 = load <2 x float>, <2 x float>* %181, align 1
  %2462 = extractelement <2 x float> %2459, i32 0
  %2463 = extractelement <2 x float> %2461, i32 0
  %2464 = fdiv float %2462, %2463
  store float %2464, float* %183, align 1
  %2465 = bitcast <2 x float> %2459 to <2 x i32>
  %2466 = extractelement <2 x i32> %2465, i32 1
  store i32 %2466, i32* %185, align 1
  %2467 = extractelement <2 x i32> %2460, i32 0
  store i32 %2467, i32* %162, align 1
  %2468 = extractelement <2 x i32> %2460, i32 1
  store i32 %2468, i32* %187, align 1
  %2469 = add i64 %2439, -32
  %2470 = add i64 %2441, 28
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i64 %2472, i64* %RAX.i1226, align 8
  %2473 = add i64 %2472, 304
  %2474 = add i64 %2441, 36
  store i64 %2474, i64* %3, align 8
  %2475 = load <2 x float>, <2 x float>* %188, align 1
  %2476 = extractelement <2 x float> %2475, i32 0
  %2477 = inttoptr i64 %2473 to float*
  store float %2476, float* %2477, align 4
  %2478 = load i64, i64* %3, align 8
  %2479 = add i64 %2478, 615
  br label %block_.L_41f1ac

block_.L_41ef4a:                                  ; preds = %block_.L_41ee43
  store i64 ptrtoint (%G__0x4579ba_type* @G__0x4579ba to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %2480 = load i64, i64* %RBP.i, align 8
  %2481 = add i64 %2480, -544
  store i64 %2481, i64* %RDI.i535, align 8
  %2482 = add i64 %2294, -121722
  %2483 = add i64 %2294, 29
  %2484 = load i64, i64* %6, align 8
  %2485 = add i64 %2484, -8
  %2486 = inttoptr i64 %2485 to i64*
  store i64 %2483, i64* %2486, align 8
  store i64 %2485, i64* %6, align 8
  store i64 %2482, i64* %3, align 8
  %2487 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2282)
  %2488 = load i32, i32* %EAX.i886, align 4
  %2489 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2490 = and i32 %2488, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2495 = icmp eq i32 %2488, 0
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %30, align 1
  %2497 = lshr i32 %2488, 31
  %2498 = trunc i32 %2497 to i8
  store i8 %2498, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v607 = select i1 %2495, i64 9, i64 236
  %2499 = add i64 %2489, %.v607
  store i64 %2499, i64* %3, align 8
  br i1 %2495, label %block_41ef70, label %block_.L_41f053

block_41ef70:                                     ; preds = %block_.L_41ef4a
  %2500 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2501 = and i32 %2500, 255
  %2502 = tail call i32 @llvm.ctpop.i32(i32 %2501)
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  %2505 = xor i8 %2504, 1
  store i8 %2505, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2506 = icmp eq i32 %2500, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %30, align 1
  %2508 = lshr i32 %2500, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v646 = select i1 %2506, i64 14, i64 31
  %2510 = add i64 %2499, %.v646
  store i64 %2510, i64* %3, align 8
  br i1 %2506, label %block_41ef7e, label %block_.L_41ef8f

block_41ef7e:                                     ; preds = %block_41ef70
  store i64 ptrtoint (%G__0x4579c0_type* @G__0x4579c0 to i64), i64* %RDI.i535, align 8
  store i8 0, i8* %AL.i, align 1
  %2511 = add i64 %2510, 129682
  %2512 = add i64 %2510, 17
  %2513 = load i64, i64* %6, align 8
  %2514 = add i64 %2513, -8
  %2515 = inttoptr i64 %2514 to i64*
  store i64 %2512, i64* %2515, align 8
  store i64 %2514, i64* %6, align 8
  store i64 %2511, i64* %3, align 8
  %call2_41ef8a = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %2511, %struct.Memory* %2487)
  %.pre563 = load i64, i64* %3, align 8
  br label %block_.L_41ef8f

block_.L_41ef8f:                                  ; preds = %block_41ef70, %block_41ef7e
  %2516 = phi i64 [ %2510, %block_41ef70 ], [ %.pre563, %block_41ef7e ]
  %MEMORY.11 = phi %struct.Memory* [ %2487, %block_41ef70 ], [ %call2_41ef8a, %block_41ef7e ]
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2517 = load i64, i64* %RBP.i, align 8
  %2518 = add i64 %2517, -544
  %2519 = add i64 %2517, -538
  store i64 %2519, i64* %RAX.i1226, align 8
  %2520 = icmp ult i64 %2519, %2518
  %2521 = icmp ult i64 %2519, 6
  %2522 = or i1 %2520, %2521
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %14, align 1
  %2524 = trunc i64 %2519 to i32
  %2525 = and i32 %2524, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %21, align 1
  %2530 = xor i64 %2518, %2519
  %2531 = lshr i64 %2530, 4
  %2532 = trunc i64 %2531 to i8
  %2533 = and i8 %2532, 1
  store i8 %2533, i8* %27, align 1
  %2534 = icmp eq i64 %2519, 0
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %30, align 1
  %2536 = lshr i64 %2519, 63
  %2537 = trunc i64 %2536 to i8
  store i8 %2537, i8* %33, align 1
  %2538 = lshr i64 %2518, 63
  %2539 = xor i64 %2536, %2538
  %2540 = add nuw nsw i64 %2539, %2536
  %2541 = icmp eq i64 %2540, 2
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %39, align 1
  store i64 %2519, i64* %RDI.i535, align 8
  %2543 = add i64 %2516, -121135
  %2544 = add i64 %2516, 29
  %2545 = load i64, i64* %6, align 8
  %2546 = add i64 %2545, -8
  %2547 = inttoptr i64 %2546 to i64*
  store i64 %2544, i64* %2547, align 8
  store i64 %2546, i64* %6, align 8
  store i64 %2543, i64* %3, align 8
  %call2_41efa7 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2543, %struct.Memory* %MEMORY.11)
  %2548 = load i64, i64* %RBP.i, align 8
  %2549 = add i64 %2548, -552
  %2550 = load i64, i64* %RAX.i1226, align 8
  %2551 = load i64, i64* %3, align 8
  %2552 = add i64 %2551, 7
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2549 to i64*
  store i64 %2550, i64* %2553, align 8
  %2554 = load i64, i64* %RBP.i, align 8
  %2555 = add i64 %2554, -568
  %2556 = load i64, i64* %3, align 8
  %2557 = add i64 %2556, 10
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2555 to i32*
  store i32 0, i32* %2558, align 4
  %.pre564 = load i64, i64* %3, align 8
  br label %block_.L_41efbd

block_.L_41efbd:                                  ; preds = %block_.L_41efe3, %block_.L_41ef8f
  %2559 = phi i64 [ %2695, %block_.L_41efe3 ], [ %.pre564, %block_.L_41ef8f ]
  %2560 = load i64, i64* %RBP.i, align 8
  %2561 = add i64 %2560, -568
  %2562 = add i64 %2559, 6
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i32*
  %2564 = load i32, i32* %2563, align 4
  %2565 = zext i32 %2564 to i64
  store i64 %2565, i64* %RAX.i1226, align 8
  %2566 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2567 = sub i32 %2564, %2566
  %2568 = icmp ult i32 %2564, %2566
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %14, align 1
  %2570 = and i32 %2567, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  %2575 = xor i32 %2566, %2564
  %2576 = xor i32 %2575, %2567
  %2577 = lshr i32 %2576, 4
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  store i8 %2579, i8* %27, align 1
  %2580 = icmp eq i32 %2567, 0
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %30, align 1
  %2582 = lshr i32 %2567, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %33, align 1
  %2584 = lshr i32 %2564, 31
  %2585 = lshr i32 %2566, 31
  %2586 = xor i32 %2585, %2584
  %2587 = xor i32 %2582, %2584
  %2588 = add nuw nsw i32 %2587, %2586
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %39, align 1
  %2591 = icmp ne i8 %2583, 0
  %2592 = xor i1 %2591, %2589
  %.v647 = select i1 %2592, i64 19, i64 145
  %2593 = add i64 %2559, %.v647
  store i64 %2593, i64* %3, align 8
  br i1 %2592, label %block_41efd0, label %block_.L_41f04e

block_41efd0:                                     ; preds = %block_.L_41efbd
  %2594 = add i64 %2560, -552
  %2595 = add i64 %2593, 8
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i64*
  %2597 = load i64, i64* %2596, align 8
  store i8 0, i8* %14, align 1
  %2598 = trunc i64 %2597 to i32
  %2599 = and i32 %2598, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2604 = icmp eq i64 %2597, 0
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %30, align 1
  %2606 = lshr i64 %2597, 63
  %2607 = trunc i64 %2606 to i8
  store i8 %2607, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v648 = select i1 %2604, i64 14, i64 19
  %2608 = add i64 %2593, %.v648
  store i64 %2608, i64* %3, align 8
  br i1 %2604, label %block_41efde, label %block_.L_41efe3

block_41efde:                                     ; preds = %block_41efd0
  %2609 = add i64 %2608, 2304
  br label %block_.L_41f8de

block_.L_41efe3:                                  ; preds = %block_41efd0
  %2610 = add i64 %2608, ptrtoint (%G_0x357f5__rip__type* @G_0x357f5__rip_ to i64)
  %2611 = add i64 %2608, 8
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i64*
  %2613 = load i64, i64* %2612, align 8
  store i64 %2613, i64* %168, align 1
  store double 0.000000e+00, double* %169, align 1
  %2614 = add i64 %2608, 15
  store i64 %2614, i64* %3, align 8
  %2615 = load i64, i64* %2596, align 8
  store i64 %2615, i64* %RDI.i535, align 8
  %2616 = load <2 x i32>, <2 x i32>* %172, align 1
  %2617 = load <2 x i32>, <2 x i32>* %174, align 1
  %2618 = sitofp i32 %2566 to float
  store float %2618, float* %175, align 1
  %2619 = extractelement <2 x i32> %2616, i32 1
  store i32 %2619, i32* %177, align 1
  %2620 = extractelement <2 x i32> %2617, i32 0
  store i32 %2620, i32* %178, align 1
  %2621 = extractelement <2 x i32> %2617, i32 1
  store i32 %2621, i32* %180, align 1
  %2622 = load <2 x float>, <2 x float>* %181, align 1
  %2623 = extractelement <2 x float> %2622, i32 0
  %2624 = fpext float %2623 to double
  store double %2624, double* %182, align 1
  %2625 = bitcast i64 %2613 to double
  %2626 = fdiv double %2625, %2624
  %.cast115 = bitcast double %2626 to <2 x i32>
  %2627 = fptrunc double %2626 to float
  store float %2627, float* %183, align 1
  %2628 = extractelement <2 x i32> %.cast115, i32 1
  store i32 %2628, i32* %185, align 1
  store i32 0, i32* %162, align 1
  store i32 0, i32* %187, align 1
  %2629 = add i64 %2608, 10141
  %2630 = add i64 %2608, 41
  %2631 = load i64, i64* %6, align 8
  %2632 = add i64 %2631, -8
  %2633 = inttoptr i64 %2632 to i64*
  store i64 %2630, i64* %2633, align 8
  store i64 %2632, i64* %6, align 8
  store i64 %2629, i64* %3, align 8
  %call2_41f007 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %2629, %struct.Memory* %call2_41efa7)
  %2634 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -32
  %2637 = add i64 %2634, 18
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2636 to i64*
  %2639 = load i64, i64* %2638, align 8
  store i64 %2639, i64* %RCX.i875, align 8
  %2640 = add i64 %2635, -568
  %2641 = add i64 %2634, 25
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i32*
  %2643 = load i32, i32* %2642, align 4
  %2644 = sext i32 %2643 to i64
  store i64 %2644, i64* %RDX.i1259, align 8
  %2645 = shl nsw i64 %2644, 2
  %2646 = add i64 %2639, 224
  %2647 = add i64 %2646, %2645
  %2648 = add i64 %2634, 34
  store i64 %2648, i64* %3, align 8
  %2649 = load <2 x float>, <2 x float>* %188, align 1
  %2650 = extractelement <2 x float> %2649, i32 0
  %2651 = inttoptr i64 %2647 to float*
  store float %2650, float* %2651, align 4
  %2652 = load i64, i64* %3, align 8
  %2653 = add i64 %2652, -121294
  %2654 = add i64 %2652, 5
  %2655 = load i64, i64* %6, align 8
  %2656 = add i64 %2655, -8
  %2657 = inttoptr i64 %2656 to i64*
  store i64 %2654, i64* %2657, align 8
  store i64 %2656, i64* %6, align 8
  store i64 %2653, i64* %3, align 8
  %call2_41f02e = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2653, %struct.Memory* %call2_41efa7)
  %2658 = load i64, i64* %RBP.i, align 8
  %2659 = add i64 %2658, -552
  %2660 = load i64, i64* %RAX.i1226, align 8
  %2661 = load i64, i64* %3, align 8
  %2662 = add i64 %2661, 7
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2659 to i64*
  store i64 %2660, i64* %2663, align 8
  %2664 = load i64, i64* %RBP.i, align 8
  %2665 = add i64 %2664, -568
  %2666 = load i64, i64* %3, align 8
  %2667 = add i64 %2666, 6
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2665 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = add i32 %2669, 1
  %2671 = zext i32 %2670 to i64
  store i64 %2671, i64* %RAX.i1226, align 8
  %2672 = icmp eq i32 %2669, -1
  %2673 = icmp eq i32 %2670, 0
  %2674 = or i1 %2672, %2673
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %14, align 1
  %2676 = and i32 %2670, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %21, align 1
  %2681 = xor i32 %2670, %2669
  %2682 = lshr i32 %2681, 4
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  store i8 %2684, i8* %27, align 1
  %2685 = zext i1 %2673 to i8
  store i8 %2685, i8* %30, align 1
  %2686 = lshr i32 %2670, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %33, align 1
  %2688 = lshr i32 %2669, 31
  %2689 = xor i32 %2686, %2688
  %2690 = add nuw nsw i32 %2689, %2686
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %39, align 1
  %2693 = add i64 %2666, 15
  store i64 %2693, i64* %3, align 8
  store i32 %2670, i32* %2668, align 4
  %2694 = load i64, i64* %3, align 8
  %2695 = add i64 %2694, -140
  store i64 %2695, i64* %3, align 8
  br label %block_.L_41efbd

block_.L_41f04e:                                  ; preds = %block_.L_41efbd
  %2696 = add i64 %2593, 345
  br label %block_.L_41f1a7

block_.L_41f053:                                  ; preds = %block_.L_41ef4a
  store i64 ptrtoint (%G__0x4579e9_type* @G__0x4579e9 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -544
  store i64 %2698, i64* %RDI.i535, align 8
  %2699 = add i64 %2499, -121987
  %2700 = add i64 %2499, 29
  %2701 = load i64, i64* %6, align 8
  %2702 = add i64 %2701, -8
  %2703 = inttoptr i64 %2702 to i64*
  store i64 %2700, i64* %2703, align 8
  store i64 %2702, i64* %6, align 8
  store i64 %2699, i64* %3, align 8
  %2704 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2487)
  %2705 = load i32, i32* %EAX.i886, align 4
  %2706 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2707 = and i32 %2705, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2712 = icmp eq i32 %2705, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %30, align 1
  %2714 = lshr i32 %2705, 31
  %2715 = trunc i32 %2714 to i8
  store i8 %2715, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v608 = select i1 %2712, i64 9, i64 184
  %2716 = add i64 %2706, %.v608
  %2717 = add i64 %2716, 10
  store i64 %2717, i64* %3, align 8
  br i1 %2712, label %block_41f079, label %block_.L_41f128

block_41f079:                                     ; preds = %block_.L_41f053
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -544
  store i64 %2719, i64* %RAX.i1226, align 8
  %2720 = add i64 %2718, -32
  %2721 = add i64 %2716, 21
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i64*
  %2723 = load i64, i64* %2722, align 8
  store i64 %2723, i64* %RCX.i875, align 8
  %2724 = add i64 %2723, 456
  %2725 = add i64 %2716, 27
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = or i32 %2727, 128
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RDX.i1259, align 8
  %2730 = add i64 %2716, 39
  store i64 %2730, i64* %3, align 8
  store i32 %2728, i32* %2726, align 4
  %2731 = load i64, i64* %RAX.i1226, align 8
  %2732 = load i64, i64* %3, align 8
  %2733 = add i64 %2731, 6
  store i64 %2733, i64* %RAX.i1226, align 8
  %2734 = icmp ugt i64 %2731, -7
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %14, align 1
  %2736 = trunc i64 %2733 to i32
  %2737 = and i32 %2736, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737)
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  store i8 %2741, i8* %21, align 1
  %2742 = xor i64 %2733, %2731
  %2743 = lshr i64 %2742, 4
  %2744 = trunc i64 %2743 to i8
  %2745 = and i8 %2744, 1
  store i8 %2745, i8* %27, align 1
  %2746 = icmp eq i64 %2733, 0
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %30, align 1
  %2748 = lshr i64 %2733, 63
  %2749 = trunc i64 %2748 to i8
  store i8 %2749, i8* %33, align 1
  %2750 = lshr i64 %2731, 63
  %2751 = xor i64 %2748, %2750
  %2752 = add nuw nsw i64 %2751, %2748
  %2753 = icmp eq i64 %2752, 2
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %39, align 1
  store i64 %2733, i64* %RDI.i535, align 8
  %2755 = add i64 %2732, -121408
  %2756 = add i64 %2732, 12
  %2757 = load i64, i64* %6, align 8
  %2758 = add i64 %2757, -8
  %2759 = inttoptr i64 %2758 to i64*
  store i64 %2756, i64* %2759, align 8
  store i64 %2758, i64* %6, align 8
  store i64 %2755, i64* %3, align 8
  %call2_41f0a7 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2755, %struct.Memory* %2704)
  %2760 = load i64, i64* %RBP.i, align 8
  %2761 = add i64 %2760, -552
  %2762 = load i64, i64* %RAX.i1226, align 8
  %2763 = load i64, i64* %3, align 8
  %2764 = add i64 %2763, 7
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2761 to i64*
  store i64 %2762, i64* %2765, align 8
  %2766 = load i64, i64* %RAX.i1226, align 8
  %2767 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2768 = trunc i64 %2766 to i32
  %2769 = and i32 %2768, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2774 = icmp eq i64 %2766, 0
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %30, align 1
  %2776 = lshr i64 %2766, 63
  %2777 = trunc i64 %2776 to i8
  store i8 %2777, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v644 = select i1 %2774, i64 10, i64 15
  %2778 = add i64 %2767, %.v644
  store i64 %2778, i64* %3, align 8
  br i1 %2774, label %block_41f0bd, label %block_.L_41f0c2

block_41f0bd:                                     ; preds = %block_41f079
  %2779 = add i64 %2778, 2081
  br label %block_.L_41f8de

block_.L_41f0c2:                                  ; preds = %block_41f079
  %2780 = load i64, i64* %RBP.i, align 8
  %2781 = add i64 %2780, -552
  %2782 = add i64 %2778, 7
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i64*
  %2784 = load i64, i64* %2783, align 8
  store i64 %2784, i64* %RDI.i535, align 8
  %2785 = add i64 %2778, -122002
  %2786 = add i64 %2778, 12
  %2787 = load i64, i64* %6, align 8
  %2788 = add i64 %2787, -8
  %2789 = inttoptr i64 %2788 to i64*
  store i64 %2786, i64* %2789, align 8
  store i64 %2788, i64* %6, align 8
  store i64 %2785, i64* %3, align 8
  %2790 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41f0a7)
  %2791 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %2792 = load <2 x i32>, <2 x i32>* %156, align 1
  %2793 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast107 = bitcast <2 x i32> %2792 to double
  %2794 = fptrunc double %.cast107 to float
  store float %2794, float* %159, align 1
  %2795 = extractelement <2 x i32> %2792, i32 1
  store i32 %2795, i32* %161, align 1
  %2796 = extractelement <2 x i32> %2793, i32 0
  store i32 %2796, i32* %162, align 1
  %2797 = extractelement <2 x i32> %2793, i32 1
  store i32 %2797, i32* %164, align 1
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -32
  %2800 = add i64 %2791, 22
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i64*
  %2802 = load i64, i64* %2801, align 8
  store i64 %2802, i64* %RCX.i875, align 8
  %2803 = add i64 %2802, 448
  %2804 = add i64 %2791, 30
  store i64 %2804, i64* %3, align 8
  %2805 = load <2 x float>, <2 x float>* %165, align 1
  %2806 = extractelement <2 x float> %2805, i32 0
  %2807 = inttoptr i64 %2803 to float*
  store float %2806, float* %2807, align 4
  %2808 = load i64, i64* %3, align 8
  %2809 = add i64 %2808, -121484
  %2810 = add i64 %2808, 5
  %2811 = load i64, i64* %6, align 8
  %2812 = add i64 %2811, -8
  %2813 = inttoptr i64 %2812 to i64*
  store i64 %2810, i64* %2813, align 8
  store i64 %2812, i64* %6, align 8
  store i64 %2809, i64* %3, align 8
  %call2_41f0ec = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2809, %struct.Memory* %2790)
  %2814 = load i64, i64* %RBP.i, align 8
  %2815 = add i64 %2814, -552
  %2816 = load i64, i64* %RAX.i1226, align 8
  %2817 = load i64, i64* %3, align 8
  %2818 = add i64 %2817, 7
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2815 to i64*
  store i64 %2816, i64* %2819, align 8
  %2820 = load i64, i64* %RAX.i1226, align 8
  %2821 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2822 = trunc i64 %2820 to i32
  %2823 = and i32 %2822, 255
  %2824 = tail call i32 @llvm.ctpop.i32(i32 %2823)
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = xor i8 %2826, 1
  store i8 %2827, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2828 = icmp eq i64 %2820, 0
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %30, align 1
  %2830 = lshr i64 %2820, 63
  %2831 = trunc i64 %2830 to i8
  store i8 %2831, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v645 = select i1 %2828, i64 10, i64 15
  %2832 = add i64 %2821, %.v645
  store i64 %2832, i64* %3, align 8
  br i1 %2828, label %block_41f102, label %block_.L_41f107

block_41f102:                                     ; preds = %block_.L_41f0c2
  %2833 = add i64 %2832, 2012
  br label %block_.L_41f8de

block_.L_41f107:                                  ; preds = %block_.L_41f0c2
  %2834 = load i64, i64* %RBP.i, align 8
  %2835 = add i64 %2834, -552
  %2836 = add i64 %2832, 7
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i64*
  %2838 = load i64, i64* %2837, align 8
  store i64 %2838, i64* %RDI.i535, align 8
  %2839 = add i64 %2832, -122071
  %2840 = add i64 %2832, 12
  %2841 = load i64, i64* %6, align 8
  %2842 = add i64 %2841, -8
  %2843 = inttoptr i64 %2842 to i64*
  store i64 %2840, i64* %2843, align 8
  store i64 %2842, i64* %6, align 8
  store i64 %2839, i64* %3, align 8
  %2844 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_41f0ec)
  %2845 = load i64, i64* %3, align 8
  %2846 = load <2 x i32>, <2 x i32>* %156, align 1
  %2847 = load <2 x i32>, <2 x i32>* %158, align 1
  %.cast108 = bitcast <2 x i32> %2846 to double
  %2848 = fptrunc double %.cast108 to float
  store float %2848, float* %159, align 1
  %2849 = extractelement <2 x i32> %2846, i32 1
  store i32 %2849, i32* %161, align 1
  %2850 = extractelement <2 x i32> %2847, i32 0
  store i32 %2850, i32* %162, align 1
  %2851 = extractelement <2 x i32> %2847, i32 1
  store i32 %2851, i32* %164, align 1
  %2852 = load i64, i64* %RBP.i, align 8
  %2853 = add i64 %2852, -32
  %2854 = add i64 %2845, 8
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i64*
  %2856 = load i64, i64* %2855, align 8
  store i64 %2856, i64* %RDI.i535, align 8
  %2857 = add i64 %2856, 452
  %2858 = add i64 %2845, 16
  store i64 %2858, i64* %3, align 8
  %2859 = load <2 x float>, <2 x float>* %165, align 1
  %2860 = extractelement <2 x float> %2859, i32 0
  %2861 = inttoptr i64 %2857 to float*
  store float %2860, float* %2861, align 4
  %2862 = load i64, i64* %3, align 8
  %2863 = add i64 %2862, 127
  br label %block_.L_41f1a2

block_.L_41f128:                                  ; preds = %block_.L_41f053
  store i64 ptrtoint (%G__0x4579ef_type* @G__0x4579ef to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %2864 = load i64, i64* %RBP.i, align 8
  %2865 = add i64 %2864, -544
  store i64 %2865, i64* %RDI.i535, align 8
  %2866 = add i64 %2716, -122200
  %2867 = add i64 %2716, 29
  %2868 = load i64, i64* %6, align 8
  %2869 = add i64 %2868, -8
  %2870 = inttoptr i64 %2869 to i64*
  store i64 %2867, i64* %2870, align 8
  store i64 %2869, i64* %6, align 8
  store i64 %2866, i64* %3, align 8
  %2871 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2704)
  %2872 = load i32, i32* %EAX.i886, align 4
  %2873 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2874 = and i32 %2872, 255
  %2875 = tail call i32 @llvm.ctpop.i32(i32 %2874)
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  store i8 %2878, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2879 = icmp eq i32 %2872, 0
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %30, align 1
  %2881 = lshr i32 %2872, 31
  %2882 = trunc i32 %2881 to i8
  store i8 %2882, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v609 = select i1 %2879, i64 9, i64 40
  %2883 = add i64 %2873, %.v609
  store i64 %2883, i64* %3, align 8
  br i1 %2879, label %block_41f14e, label %block_.L_41f16d

block_41f14e:                                     ; preds = %block_.L_41f128
  %2884 = load i64, i64* %RBP.i, align 8
  %2885 = add i64 %2884, -544
  %2886 = add i64 %2884, -538
  store i64 %2886, i64* %RAX.i1226, align 8
  %2887 = icmp ult i64 %2886, %2885
  %2888 = icmp ult i64 %2886, 6
  %2889 = or i1 %2887, %2888
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %14, align 1
  %2891 = trunc i64 %2886 to i32
  %2892 = and i32 %2891, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %21, align 1
  %2897 = xor i64 %2885, %2886
  %2898 = lshr i64 %2897, 4
  %2899 = trunc i64 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %27, align 1
  %2901 = icmp eq i64 %2886, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %30, align 1
  %2903 = lshr i64 %2886, 63
  %2904 = trunc i64 %2903 to i8
  store i8 %2904, i8* %33, align 1
  %2905 = lshr i64 %2885, 63
  %2906 = xor i64 %2903, %2905
  %2907 = add nuw nsw i64 %2906, %2903
  %2908 = icmp eq i64 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %39, align 1
  store i64 %2886, i64* %RDI.i535, align 8
  %2910 = add i64 %2883, -121518
  %2911 = add i64 %2883, 19
  %2912 = load i64, i64* %6, align 8
  %2913 = add i64 %2912, -8
  %2914 = inttoptr i64 %2913 to i64*
  store i64 %2911, i64* %2914, align 8
  store i64 %2913, i64* %6, align 8
  store i64 %2910, i64* %3, align 8
  %2915 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2871)
  %2916 = load i64, i64* %RBP.i, align 8
  %2917 = add i64 %2916, -32
  %2918 = load i64, i64* %3, align 8
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %RDI.i535, align 8
  %2922 = add i64 %2921, 80
  %2923 = load i32, i32* %EAX.i886, align 4
  %2924 = add i64 %2918, 7
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2922 to i32*
  store i32 %2923, i32* %2925, align 4
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, 53
  br label %block_.L_41f19d

block_.L_41f16d:                                  ; preds = %block_.L_41f128
  store i64 ptrtoint (%G__0x4579f5_type* @G__0x4579f5 to i64), i64* %RSI.i759, align 8
  store i64 5, i64* %RAX.i1226, align 8
  store i64 5, i64* %RDX.i1259, align 8
  %2928 = load i64, i64* %RBP.i, align 8
  %2929 = add i64 %2928, -544
  store i64 %2929, i64* %RDI.i535, align 8
  %2930 = add i64 %2883, -122269
  %2931 = add i64 %2883, 29
  %2932 = load i64, i64* %6, align 8
  %2933 = add i64 %2932, -8
  %2934 = inttoptr i64 %2933 to i64*
  store i64 %2931, i64* %2934, align 8
  store i64 %2933, i64* %6, align 8
  store i64 %2930, i64* %3, align 8
  %2935 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2871)
  %2936 = load i32, i32* %EAX.i886, align 4
  %2937 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2938 = and i32 %2936, 255
  %2939 = tail call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  store i8 %2942, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2943 = icmp eq i32 %2936, 0
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %30, align 1
  %2945 = lshr i32 %2936, 31
  %2946 = trunc i32 %2945 to i8
  store i8 %2946, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v610 = select i1 %2943, i64 9, i64 14
  %2947 = add i64 %2937, %.v610
  store i64 %2947, i64* %3, align 8
  br i1 %2943, label %block_41f193, label %block_.L_41f198

block_41f193:                                     ; preds = %block_.L_41f16d
  %2948 = add i64 %2947, 105
  store i64 %2948, i64* %3, align 8
  br label %block_.L_41f1fc

block_.L_41f198:                                  ; preds = %block_.L_41f16d
  %2949 = add i64 %2947, 5
  store i64 %2949, i64* %3, align 8
  br label %block_.L_41f19d

block_.L_41f19d:                                  ; preds = %block_.L_41f198, %block_41f14e
  %storemerge110 = phi i64 [ %2927, %block_41f14e ], [ %2949, %block_.L_41f198 ]
  %MEMORY.13 = phi %struct.Memory* [ %2915, %block_41f14e ], [ %2935, %block_.L_41f198 ]
  %2950 = add i64 %storemerge110, 5
  store i64 %2950, i64* %3, align 8
  br label %block_.L_41f1a2

block_.L_41f1a2:                                  ; preds = %block_.L_41f19d, %block_.L_41f107
  %storemerge109 = phi i64 [ %2863, %block_.L_41f107 ], [ %2950, %block_.L_41f19d ]
  %MEMORY.14 = phi %struct.Memory* [ %2844, %block_.L_41f107 ], [ %MEMORY.13, %block_.L_41f19d ]
  %2951 = add i64 %storemerge109, 5
  store i64 %2951, i64* %3, align 8
  br label %block_.L_41f1a7

block_.L_41f1a7:                                  ; preds = %block_.L_41f1a2, %block_.L_41f04e
  %storemerge106 = phi i64 [ %2696, %block_.L_41f04e ], [ %2951, %block_.L_41f1a2 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_41efa7, %block_.L_41f04e ], [ %MEMORY.14, %block_.L_41f1a2 ]
  %2952 = add i64 %storemerge106, 5
  store i64 %2952, i64* %3, align 8
  br label %block_.L_41f1ac

block_.L_41f1ac:                                  ; preds = %block_.L_41f1a7, %block_.L_41eee5
  %storemerge104 = phi i64 [ %2479, %block_.L_41eee5 ], [ %2952, %block_.L_41f1a7 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_41ef1c, %block_.L_41eee5 ], [ %MEMORY.15, %block_.L_41f1a7 ]
  %2953 = add i64 %storemerge104, 5
  store i64 %2953, i64* %3, align 8
  br label %block_.L_41f1b1

block_.L_41f1b1:                                  ; preds = %block_.L_41f1ac, %block_.L_41ee3e
  %storemerge103 = phi i64 [ %2274, %block_.L_41ee3e ], [ %2953, %block_.L_41f1ac ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_41ed62, %block_.L_41ee3e ], [ %MEMORY.16, %block_.L_41f1ac ]
  %2954 = add i64 %storemerge103, 5
  store i64 %2954, i64* %3, align 8
  br label %block_.L_41f1b6

block_.L_41f1b6:                                  ; preds = %block_.L_41f1b1, %block_.L_41ecee
  %storemerge102 = phi i64 [ %1960, %block_.L_41ecee ], [ %2954, %block_.L_41f1b1 ]
  %MEMORY.18 = phi %struct.Memory* [ %1921, %block_.L_41ecee ], [ %MEMORY.17, %block_.L_41f1b1 ]
  %2955 = add i64 %storemerge102, 5
  store i64 %2955, i64* %3, align 8
  br label %block_.L_41f1bb

block_.L_41f1bb:                                  ; preds = %block_.L_41f1b6, %block_.L_41ec1d
  %storemerge99 = phi i64 [ %1784, %block_.L_41ec1d ], [ %2955, %block_.L_41f1b6 ]
  %MEMORY.19 = phi %struct.Memory* [ %1745, %block_.L_41ec1d ], [ %MEMORY.18, %block_.L_41f1b6 ]
  %2956 = add i64 %storemerge99, 5
  store i64 %2956, i64* %3, align 8
  br label %block_.L_41f1c0

block_.L_41f1c0:                                  ; preds = %block_.L_41f1bb, %block_.L_41eb4f
  %storemerge96 = phi i64 [ %1608, %block_.L_41eb4f ], [ %2956, %block_.L_41f1bb ]
  %MEMORY.20 = phi %struct.Memory* [ %1569, %block_.L_41eb4f ], [ %MEMORY.19, %block_.L_41f1bb ]
  %2957 = add i64 %storemerge96, 5
  store i64 %2957, i64* %3, align 8
  br label %block_.L_41f1c5

block_.L_41f1c5:                                  ; preds = %block_.L_41f1c0, %block_41ea81
  %storemerge94 = phi i64 [ %1432, %block_41ea81 ], [ %2957, %block_.L_41f1c0 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_41eaa2, %block_41ea81 ], [ %MEMORY.20, %block_.L_41f1c0 ]
  %2958 = add i64 %storemerge94, 5
  store i64 %2958, i64* %3, align 8
  br label %block_.L_41f1ca

block_.L_41f1ca:                                  ; preds = %block_.L_41f1c5, %block_.L_41ea56
  %storemerge93 = phi i64 [ %1337, %block_.L_41ea56 ], [ %2958, %block_.L_41f1c5 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.8, %block_.L_41ea56 ], [ %MEMORY.21, %block_.L_41f1c5 ]
  %2959 = add i64 %storemerge93, 5
  store i64 %2959, i64* %3, align 8
  br label %block_.L_41f1cf

block_.L_41f1cf:                                  ; preds = %block_.L_41f1ca, %block_.L_41e913
  %storemerge92 = phi i64 [ %1000, %block_.L_41e913 ], [ %2959, %block_.L_41f1ca ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_41e8ef, %block_.L_41e913 ], [ %MEMORY.22, %block_.L_41f1ca ]
  %2960 = add i64 %storemerge92, 5
  store i64 %2960, i64* %3, align 8
  br label %block_.L_41f1d4

block_.L_41f1d4:                                  ; preds = %block_.L_41f1cf, %block_.L_41e8bd
  %storemerge91 = phi i64 [ %922, %block_.L_41e8bd ], [ %2960, %block_.L_41f1cf ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_41e89c, %block_.L_41e8bd ], [ %MEMORY.23, %block_.L_41f1cf ]
  %2961 = add i64 %storemerge91, 5
  store i64 %2961, i64* %3, align 8
  br label %block_.L_41f1d9

block_.L_41f1d9:                                  ; preds = %block_.L_41f1d4, %block_.L_41e86a
  %storemerge90 = phi i64 [ %844, %block_.L_41e86a ], [ %2961, %block_.L_41f1d4 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_41e849, %block_.L_41e86a ], [ %MEMORY.24, %block_.L_41f1d4 ]
  %2962 = add i64 %storemerge90, 5
  store i64 %2962, i64* %3, align 8
  br label %block_.L_41f1de

block_.L_41f1de:                                  ; preds = %block_.L_41f1d9, %block_.L_41e817
  %storemerge89 = phi i64 [ %766, %block_.L_41e817 ], [ %2962, %block_.L_41f1d9 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.4, %block_.L_41e817 ], [ %MEMORY.25, %block_.L_41f1d9 ]
  %2963 = add i64 %storemerge89, 5
  store i64 %2963, i64* %3, align 8
  br label %block_.L_41f1e3

block_.L_41f1e3:                                  ; preds = %block_.L_41f1de, %block_41e6ce
  %storemerge86 = phi i64 [ %527, %block_41e6ce ], [ %2963, %block_.L_41f1de ]
  %MEMORY.27 = phi %struct.Memory* [ %515, %block_41e6ce ], [ %MEMORY.26, %block_.L_41f1de ]
  %2964 = add i64 %storemerge86, 5
  store i64 %2964, i64* %3, align 8
  br label %block_.L_41f1e8

block_.L_41f1e8:                                  ; preds = %block_.L_41f1e3, %block_41e68a
  %storemerge85 = phi i64 [ %463, %block_41e68a ], [ %2964, %block_.L_41f1e3 ]
  %MEMORY.28 = phi %struct.Memory* [ %455, %block_41e68a ], [ %MEMORY.27, %block_.L_41f1e3 ]
  %2965 = add i64 %storemerge85, 5
  store i64 %2965, i64* %3, align 8
  br label %block_.L_41f1ed

block_.L_41f1ed:                                  ; preds = %block_.L_41f1e8, %block_41e648
  %storemerge84 = phi i64 [ %403, %block_41e648 ], [ %2965, %block_.L_41f1e8 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_41e65a, %block_41e648 ], [ %MEMORY.28, %block_.L_41f1e8 ]
  %2966 = add i64 %storemerge84, 5
  store i64 %2966, i64* %3, align 8
  br label %block_.L_41f1f2

block_.L_41f1f2:                                  ; preds = %block_.L_41f1ed, %block_41e606
  %storemerge83 = phi i64 [ %348, %block_41e606 ], [ %2966, %block_.L_41f1ed ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_41e618, %block_41e606 ], [ %MEMORY.29, %block_.L_41f1ed ]
  %2967 = add i64 %storemerge83, 5
  store i64 %2967, i64* %3, align 8
  br label %block_.L_41f1f7

block_.L_41f1f7:                                  ; preds = %block_.L_41f1f2, %block_41e5c4
  %storemerge = phi i64 [ %293, %block_41e5c4 ], [ %2967, %block_.L_41f1f2 ]
  %MEMORY.31 = phi %struct.Memory* [ %call2_41e5d6, %block_41e5c4 ], [ %MEMORY.30, %block_.L_41f1f2 ]
  %2968 = add i64 %storemerge, -3195
  store i64 %2968, i64* %3, align 8
  br label %block_.L_41e57c

block_.L_41f1fc.loopexit:                         ; preds = %block_.L_41e57c
  br label %block_.L_41f1fc

block_.L_41f1fc:                                  ; preds = %block_.L_41f1fc.loopexit, %block_41f193
  %2969 = phi i64 [ %2948, %block_41f193 ], [ %238, %block_.L_41f1fc.loopexit ]
  %MEMORY.32 = phi %struct.Memory* [ %2935, %block_41f193 ], [ %MEMORY.1, %block_.L_41f1fc.loopexit ]
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -16
  %2972 = add i64 %2969, 4
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RAX.i1226, align 8
  %2975 = add i64 %2969, 7
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %RDI.i535, align 8
  %2978 = add i64 %2969, -121964
  %2979 = add i64 %2969, 12
  %2980 = load i64, i64* %6, align 8
  %2981 = add i64 %2980, -8
  %2982 = inttoptr i64 %2981 to i64*
  store i64 %2979, i64* %2982, align 8
  store i64 %2981, i64* %6, align 8
  store i64 %2978, i64* %3, align 8
  %call2_41f203 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %2978, %struct.Memory* %MEMORY.32)
  %2983 = load i32, i32* %EAX.i886, align 4
  %2984 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2985 = and i32 %2983, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2990 = icmp eq i32 %2983, 0
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %30, align 1
  %2992 = lshr i32 %2983, 31
  %2993 = trunc i32 %2992 to i8
  store i8 %2993, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v611 = select i1 %2990, i64 14, i64 9
  %2994 = add i64 %2984, %.v611
  store i64 %2994, i64* %3, align 8
  br i1 %2990, label %block_.L_41f216, label %block_41f211

block_41f211:                                     ; preds = %block_.L_41f1fc
  %2995 = add i64 %2994, 1741
  br label %block_.L_41f8de

block_.L_41f216:                                  ; preds = %block_.L_41f1fc
  %2996 = load i64, i64* %RBP.i, align 8
  %2997 = add i64 %2996, -556
  %2998 = add i64 %2994, 7
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2997 to i32*
  %3000 = load i32, i32* %2999, align 4
  %3001 = add i32 %3000, -1
  %3002 = icmp eq i32 %3000, 0
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %14, align 1
  %3004 = and i32 %3001, 255
  %3005 = tail call i32 @llvm.ctpop.i32(i32 %3004)
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = xor i8 %3007, 1
  store i8 %3008, i8* %21, align 1
  %3009 = xor i32 %3001, %3000
  %3010 = lshr i32 %3009, 4
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  store i8 %3012, i8* %27, align 1
  %3013 = icmp eq i32 %3001, 0
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %30, align 1
  %3015 = lshr i32 %3001, 31
  %3016 = trunc i32 %3015 to i8
  store i8 %3016, i8* %33, align 1
  %3017 = lshr i32 %3000, 31
  %3018 = xor i32 %3015, %3017
  %3019 = add nuw nsw i32 %3018, %3017
  %3020 = icmp eq i32 %3019, 2
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %39, align 1
  %3022 = icmp ne i8 %3016, 0
  %3023 = xor i1 %3022, %3020
  %.v612 = select i1 %3023, i64 13, i64 18
  %3024 = add i64 %2994, %.v612
  store i64 %3024, i64* %3, align 8
  br i1 %3023, label %block_41f223, label %block_.L_41f228

block_41f223:                                     ; preds = %block_.L_41f216
  %3025 = add i64 %3024, 1723
  br label %block_.L_41f8de

block_.L_41f228:                                  ; preds = %block_.L_41f216
  %3026 = add i64 %2996, -32
  %3027 = add i64 %3024, 4
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX.i1226, align 8
  %3030 = add i64 %3024, 8
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i64*
  %3032 = load i64, i64* %3031, align 8
  store i8 0, i8* %14, align 1
  %3033 = trunc i64 %3032 to i32
  %3034 = and i32 %3033, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3039 = icmp eq i64 %3032, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %30, align 1
  %3041 = lshr i64 %3032, 63
  %3042 = trunc i64 %3041 to i8
  store i8 %3042, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v613 = select i1 %3039, i64 14, i64 19
  %3043 = add i64 %3024, %.v613
  store i64 %3043, i64* %3, align 8
  br i1 %3039, label %block_41f236, label %block_.L_41f23b

block_41f236:                                     ; preds = %block_.L_41f228
  %3044 = add i64 %3043, 1704
  br label %block_.L_41f8de

block_.L_41f23b:                                  ; preds = %block_.L_41f228
  %3045 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3046 = and i32 %3045, 255
  %3047 = tail call i32 @llvm.ctpop.i32(i32 %3046)
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = xor i8 %3049, 1
  store i8 %3050, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3051 = icmp eq i32 %3045, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %30, align 1
  %3053 = lshr i32 %3045, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v614 = select i1 %3051, i64 14, i64 19
  %3055 = add i64 %3043, %.v614
  store i64 %3055, i64* %3, align 8
  br i1 %3051, label %block_41f249, label %block_.L_41f24e

block_41f249:                                     ; preds = %block_.L_41f23b
  %3056 = add i64 %3055, 1685
  br label %block_.L_41f8de

block_.L_41f24e:                                  ; preds = %block_.L_41f23b
  %3057 = add i64 %3055, 4
  store i64 %3057, i64* %3, align 8
  %3058 = load i64, i64* %3028, align 8
  store i64 %3058, i64* %RDI.i535, align 8
  %3059 = add i64 %3055, 10
  store i64 %3059, i64* %3, align 8
  %3060 = load i32, i32* %2999, align 4
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RSI.i759, align 8
  %3062 = add i64 %3055, 77186
  %3063 = add i64 %3055, 15
  %3064 = load i64, i64* %6, align 8
  %3065 = add i64 %3064, -8
  %3066 = inttoptr i64 %3065 to i64*
  store i64 %3063, i64* %3066, align 8
  store i64 %3065, i64* %6, align 8
  store i64 %3062, i64* %3, align 8
  %call2_41f258 = tail call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* nonnull %0, i64 %3062, %struct.Memory* %call2_41f203)
  %3067 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i759, align 8
  %3068 = load i64, i64* %RBP.i, align 8
  %3069 = add i64 %3068, -544
  store i64 %3069, i64* %RDI.i535, align 8
  %3070 = add i64 %3068, -16
  %3071 = add i64 %3067, 16
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i64*
  %3073 = load i64, i64* %3072, align 8
  store i64 %3073, i64* %RAX.i1226, align 8
  %3074 = add i64 %3067, 19
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i64*
  %3076 = load i64, i64* %3075, align 8
  store i64 %3076, i64* %RDX.i1259, align 8
  %3077 = add i64 %3067, -122141
  %3078 = add i64 %3067, 24
  %3079 = load i64, i64* %6, align 8
  %3080 = add i64 %3079, -8
  %3081 = inttoptr i64 %3080 to i64*
  store i64 %3078, i64* %3081, align 8
  store i64 %3080, i64* %6, align 8
  store i64 %3077, i64* %3, align 8
  %call2_41f270 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3077, %struct.Memory* %call2_41f258)
  %3082 = load i64, i64* %RAX.i1226, align 8
  %3083 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3084 = trunc i64 %3082 to i32
  %3085 = and i32 %3084, 255
  %3086 = tail call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  store i8 %3089, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3090 = icmp eq i64 %3082, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %30, align 1
  %3092 = lshr i64 %3082, 63
  %3093 = trunc i64 %3092 to i8
  store i8 %3093, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v615 = select i1 %3090, i64 10, i64 15
  %3094 = add i64 %3083, %.v615
  store i64 %3094, i64* %3, align 8
  br i1 %3090, label %block_41f27f, label %block_.L_41f284

block_41f27f:                                     ; preds = %block_.L_41f24e
  %3095 = add i64 %3094, 1631
  br label %block_.L_41f8de

block_.L_41f284:                                  ; preds = %block_.L_41f24e
  store i64 512, i64* %RSI.i759, align 8
  %3096 = load i64, i64* %RBP.i, align 8
  %3097 = add i64 %3096, -544
  store i64 %3097, i64* %RDI.i535, align 8
  %3098 = add i64 %3096, -16
  %3099 = add i64 %3094, 16
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i64*
  %3101 = load i64, i64* %3100, align 8
  store i64 %3101, i64* %RAX.i1226, align 8
  %3102 = add i64 %3094, 19
  store i64 %3102, i64* %3, align 8
  %3103 = inttoptr i64 %3101 to i64*
  %3104 = load i64, i64* %3103, align 8
  store i64 %3104, i64* %RDX.i1259, align 8
  %3105 = add i64 %3094, -122180
  %3106 = add i64 %3094, 24
  %3107 = load i64, i64* %6, align 8
  %3108 = add i64 %3107, -8
  %3109 = inttoptr i64 %3108 to i64*
  store i64 %3106, i64* %3109, align 8
  store i64 %3108, i64* %6, align 8
  store i64 %3105, i64* %3, align 8
  %call2_41f297 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3105, %struct.Memory* %call2_41f270)
  %3110 = load i64, i64* %RAX.i1226, align 8
  %3111 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3112 = trunc i64 %3110 to i32
  %3113 = and i32 %3112, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3118 = icmp eq i64 %3110, 0
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %30, align 1
  %3120 = lshr i64 %3110, 63
  %3121 = trunc i64 %3120 to i8
  store i8 %3121, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v616 = select i1 %3118, i64 10, i64 15
  %3122 = add i64 %3111, %.v616
  store i64 %3122, i64* %3, align 8
  br i1 %3118, label %block_41f2a6, label %block_.L_41f2ab

block_41f2a6:                                     ; preds = %block_.L_41f284
  %3123 = add i64 %3122, 1592
  br label %block_.L_41f8de

block_.L_41f2ab:                                  ; preds = %block_.L_41f284
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3124 = load i64, i64* %RBP.i, align 8
  %3125 = add i64 %3124, -544
  store i64 %3125, i64* %RDI.i535, align 8
  %3126 = add i64 %3122, -121931
  %3127 = add i64 %3122, 22
  %3128 = load i64, i64* %6, align 8
  %3129 = add i64 %3128, -8
  %3130 = inttoptr i64 %3129 to i64*
  store i64 %3127, i64* %3130, align 8
  store i64 %3129, i64* %6, align 8
  store i64 %3126, i64* %3, align 8
  %call2_41f2bc = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3126, %struct.Memory* %call2_41f297)
  %3131 = load i64, i64* %RBP.i, align 8
  %3132 = add i64 %3131, -552
  %3133 = load i64, i64* %RAX.i1226, align 8
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3134, 7
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3132 to i64*
  store i64 %3133, i64* %3136, align 8
  %3137 = load i64, i64* %RAX.i1226, align 8
  %3138 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3139 = trunc i64 %3137 to i32
  %3140 = and i32 %3139, 255
  %3141 = tail call i32 @llvm.ctpop.i32(i32 %3140)
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  store i8 %3144, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3145 = icmp eq i64 %3137, 0
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %30, align 1
  %3147 = lshr i64 %3137, 63
  %3148 = trunc i64 %3147 to i8
  store i8 %3148, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v617 = select i1 %3145, i64 10, i64 15
  %3149 = add i64 %3138, %.v617
  store i64 %3149, i64* %3, align 8
  br i1 %3145, label %block_41f2d2, label %block_.L_41f2d7

block_41f2d2:                                     ; preds = %block_.L_41f2ab
  %3150 = add i64 %3149, 1548
  br label %block_.L_41f8de

block_.L_41f2d7:                                  ; preds = %block_.L_41f2ab
  %3151 = add i64 %3149, ptrtoint (%G_0x35449__rip__type* @G_0x35449__rip_ to i64)
  %3152 = add i64 %3149, 8
  store i64 %3152, i64* %3, align 8
  %3153 = inttoptr i64 %3151 to i32*
  %3154 = load i32, i32* %3153, align 4
  store i32 %3154, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -552
  %3157 = add i64 %3149, 15
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RDI.i535, align 8
  %3160 = add i64 %3149, 9385
  %3161 = add i64 %3149, 20
  %3162 = load i64, i64* %6, align 8
  %3163 = add i64 %3162, -8
  %3164 = inttoptr i64 %3163 to i64*
  store i64 %3161, i64* %3164, align 8
  store i64 %3163, i64* %6, align 8
  store i64 %3160, i64* %3, align 8
  %call2_41f2e6 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %3160, %struct.Memory* %call2_41f2bc)
  %3165 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3166 = load i64, i64* %RBP.i, align 8
  %3167 = add i64 %3166, -560
  %3168 = add i64 %3165, 22
  store i64 %3168, i64* %3, align 8
  %3169 = load <2 x float>, <2 x float>* %188, align 1
  %3170 = extractelement <2 x float> %3169, i32 0
  %3171 = inttoptr i64 %3167 to float*
  store float %3170, float* %3171, align 4
  %3172 = load i64, i64* %3, align 8
  %3173 = add i64 %3172, -122017
  %3174 = add i64 %3172, 5
  %3175 = load i64, i64* %6, align 8
  %3176 = add i64 %3175, -8
  %3177 = inttoptr i64 %3176 to i64*
  store i64 %3174, i64* %3177, align 8
  store i64 %3176, i64* %6, align 8
  store i64 %3173, i64* %3, align 8
  %call2_41f301 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3173, %struct.Memory* %call2_41f2e6)
  %3178 = load i64, i64* %RBP.i, align 8
  %3179 = add i64 %3178, -552
  %3180 = load i64, i64* %RAX.i1226, align 8
  %3181 = load i64, i64* %3, align 8
  %3182 = add i64 %3181, 7
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3179 to i64*
  store i64 %3180, i64* %3183, align 8
  %3184 = load i64, i64* %RAX.i1226, align 8
  %3185 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3186 = trunc i64 %3184 to i32
  %3187 = and i32 %3186, 255
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3192 = icmp eq i64 %3184, 0
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %30, align 1
  %3194 = lshr i64 %3184, 63
  %3195 = trunc i64 %3194 to i8
  store i8 %3195, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v618 = select i1 %3192, i64 10, i64 15
  %3196 = add i64 %3185, %.v618
  store i64 %3196, i64* %3, align 8
  br i1 %3192, label %block_41f317, label %block_.L_41f31c

block_41f317:                                     ; preds = %block_.L_41f2d7
  %3197 = add i64 %3196, 1479
  br label %block_.L_41f8de

block_.L_41f31c:                                  ; preds = %block_.L_41f2d7
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3198 = add i64 %3196, -122044
  %3199 = add i64 %3196, 19
  %3200 = load i64, i64* %6, align 8
  %3201 = add i64 %3200, -8
  %3202 = inttoptr i64 %3201 to i64*
  store i64 %3199, i64* %3202, align 8
  store i64 %3201, i64* %6, align 8
  store i64 %3198, i64* %3, align 8
  %call2_41f32a = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3198, %struct.Memory* %call2_41f301)
  %3203 = load i64, i64* %RBP.i, align 8
  %3204 = add i64 %3203, -552
  %3205 = load i64, i64* %RAX.i1226, align 8
  %3206 = load i64, i64* %3, align 8
  %3207 = add i64 %3206, 7
  store i64 %3207, i64* %3, align 8
  %3208 = inttoptr i64 %3204 to i64*
  store i64 %3205, i64* %3208, align 8
  %3209 = load i64, i64* %RAX.i1226, align 8
  %3210 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3211 = trunc i64 %3209 to i32
  %3212 = and i32 %3211, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3217 = icmp eq i64 %3209, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %30, align 1
  %3219 = lshr i64 %3209, 63
  %3220 = trunc i64 %3219 to i8
  store i8 %3220, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v619 = select i1 %3217, i64 10, i64 15
  %3221 = add i64 %3210, %.v619
  store i64 %3221, i64* %3, align 8
  br i1 %3217, label %block_41f340, label %block_.L_41f345

block_41f340:                                     ; preds = %block_.L_41f31c
  %3222 = add i64 %3221, 1438
  br label %block_.L_41f8de

block_.L_41f345:                                  ; preds = %block_.L_41f31c
  %3223 = add i64 %3221, ptrtoint (%G_0x353db__rip__type* @G_0x353db__rip_ to i64)
  %3224 = add i64 %3221, 8
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  store i32 %3226, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %3227 = load i64, i64* %RBP.i, align 8
  %3228 = add i64 %3227, -552
  %3229 = add i64 %3221, 15
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i64*
  %3231 = load i64, i64* %3230, align 8
  store i64 %3231, i64* %RDI.i535, align 8
  %3232 = add i64 %3221, 9275
  %3233 = add i64 %3221, 20
  %3234 = load i64, i64* %6, align 8
  %3235 = add i64 %3234, -8
  %3236 = inttoptr i64 %3235 to i64*
  store i64 %3233, i64* %3236, align 8
  store i64 %3235, i64* %6, align 8
  store i64 %3232, i64* %3, align 8
  %call2_41f354 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %3232, %struct.Memory* %call2_41f32a)
  %3237 = load i64, i64* %RBP.i, align 8
  %3238 = add i64 %3237, -32
  %3239 = load i64, i64* %3, align 8
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3238 to i64*
  %3242 = load i64, i64* %3241, align 8
  store i64 %3242, i64* %RDI.i535, align 8
  %3243 = add i64 %3242, 168
  %3244 = add i64 %3239, 12
  store i64 %3244, i64* %3, align 8
  %3245 = load <2 x float>, <2 x float>* %188, align 1
  %3246 = extractelement <2 x float> %3245, i32 0
  %3247 = inttoptr i64 %3243 to float*
  store float %3246, float* %3247, align 4
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -32
  %3250 = load i64, i64* %3, align 8
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3249 to i64*
  %3253 = load i64, i64* %3252, align 8
  store i64 %3253, i64* %RDI.i535, align 8
  %3254 = add i64 %3253, 168
  %3255 = add i64 %3250, 12
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i32*
  %3257 = load i32, i32* %3256, align 4
  store i32 %3257, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %3258 = add i64 %3248, -560
  %3259 = add i64 %3250, 20
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  store i32 %3261, i32* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  store float 0.000000e+00, float* %196, align 1
  %3262 = add i64 %3250, 24
  store i64 %3262, i64* %3, align 8
  %3263 = load i64, i64* %3252, align 8
  store i64 %3263, i64* %RDI.i535, align 8
  %3264 = add i64 %3263, 168
  %3265 = add i64 %3250, 32
  store i64 %3265, i64* %3, align 8
  %3266 = load <2 x float>, <2 x float>* %181, align 1
  %3267 = load <2 x i32>, <2 x i32>* %174, align 1
  %3268 = inttoptr i64 %3264 to float*
  %3269 = load float, float* %3268, align 4
  %3270 = extractelement <2 x float> %3266, i32 0
  %3271 = fadd float %3270, %3269
  store float %3271, float* %175, align 1
  %3272 = bitcast <2 x float> %3266 to <2 x i32>
  %3273 = extractelement <2 x i32> %3272, i32 1
  store i32 %3273, i32* %177, align 1
  %3274 = extractelement <2 x i32> %3267, i32 0
  store i32 %3274, i32* %178, align 1
  %3275 = extractelement <2 x i32> %3267, i32 1
  store i32 %3275, i32* %180, align 1
  %3276 = load <2 x float>, <2 x float>* %188, align 1
  %3277 = load <2 x i32>, <2 x i32>* %158, align 1
  %3278 = load <2 x float>, <2 x float>* %181, align 1
  %3279 = extractelement <2 x float> %3276, i32 0
  %3280 = extractelement <2 x float> %3278, i32 0
  %3281 = fdiv float %3279, %3280
  store float %3281, float* %183, align 1
  %3282 = bitcast <2 x float> %3276 to <2 x i32>
  %3283 = extractelement <2 x i32> %3282, i32 1
  store i32 %3283, i32* %185, align 1
  %3284 = extractelement <2 x i32> %3277, i32 0
  store i32 %3284, i32* %162, align 1
  %3285 = extractelement <2 x i32> %3277, i32 1
  store i32 %3285, i32* %187, align 1
  %3286 = add i64 %3250, 40
  store i64 %3286, i64* %3, align 8
  %3287 = load i64, i64* %3252, align 8
  store i64 %3287, i64* %RDI.i535, align 8
  %3288 = add i64 %3287, 168
  %3289 = add i64 %3250, 48
  store i64 %3289, i64* %3, align 8
  %3290 = load <2 x float>, <2 x float>* %188, align 1
  %3291 = extractelement <2 x float> %3290, i32 0
  %3292 = inttoptr i64 %3288 to float*
  store float %3291, float* %3292, align 4
  %3293 = load i64, i64* %RBP.i, align 8
  %3294 = add i64 %3293, -564
  %3295 = load i64, i64* %3, align 8
  %3296 = add i64 %3295, 10
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3294 to i32*
  store i32 1, i32* %3297, align 4
  %CL.i241 = bitcast %union.anon* %210 to i8*
  %.pre565 = load i64, i64* %3, align 8
  br label %block_.L_41f39f

block_.L_41f39f:                                  ; preds = %block_.L_41f802, %block_.L_41f345
  %3298 = phi i64 [ %.pre565, %block_.L_41f345 ], [ %4359, %block_.L_41f802 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_41f354, %block_.L_41f345 ], [ %call2_41f811, %block_.L_41f802 ]
  %3299 = load i64, i64* %RBP.i, align 8
  %3300 = add i64 %3299, -564
  %3301 = add i64 %3298, 6
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i32*
  %3303 = load i32, i32* %3302, align 4
  %3304 = zext i32 %3303 to i64
  store i64 %3304, i64* %RAX.i1226, align 8
  %3305 = add i64 %3299, -32
  %3306 = add i64 %3298, 10
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i64*
  %3308 = load i64, i64* %3307, align 8
  store i64 %3308, i64* %RCX.i1684, align 8
  %3309 = add i64 %3308, 136
  %3310 = add i64 %3298, 16
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to i32*
  %3312 = load i32, i32* %3311, align 4
  %3313 = sub i32 %3303, %3312
  %3314 = icmp ult i32 %3303, %3312
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %14, align 1
  %3316 = and i32 %3313, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %21, align 1
  %3321 = xor i32 %3312, %3303
  %3322 = xor i32 %3321, %3313
  %3323 = lshr i32 %3322, 4
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  store i8 %3325, i8* %27, align 1
  %3326 = icmp eq i32 %3313, 0
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %30, align 1
  %3328 = lshr i32 %3313, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %33, align 1
  %3330 = lshr i32 %3303, 31
  %3331 = lshr i32 %3312, 31
  %3332 = xor i32 %3331, %3330
  %3333 = xor i32 %3328, %3330
  %3334 = add nuw nsw i32 %3333, %3332
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %39, align 1
  %3337 = icmp ne i8 %3329, 0
  %3338 = xor i1 %3337, %3335
  %.demorgan = or i1 %3326, %3338
  %.v620 = select i1 %.demorgan, i64 22, i64 1186
  %3339 = add i64 %3298, %.v620
  store i64 %3339, i64* %3, align 8
  br i1 %.demorgan, label %block_41f3b5, label %block_.L_41f846.preheader

block_.L_41f846.preheader:                        ; preds = %block_.L_41f39f
  %3340 = add i64 %3339, 5
  br label %block_.L_41f846

block_41f3b5:                                     ; preds = %block_.L_41f39f
  store i64 512, i64* %RSI.i759, align 8
  %3341 = add i64 %3299, -544
  store i64 %3341, i64* %RDI.i535, align 8
  %3342 = add i64 %3299, -16
  %3343 = add i64 %3339, 16
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i64*
  %3345 = load i64, i64* %3344, align 8
  store i64 %3345, i64* %RAX.i1226, align 8
  %3346 = add i64 %3339, 19
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i64*
  %3348 = load i64, i64* %3347, align 8
  store i64 %3348, i64* %RDX.i1259, align 8
  %3349 = add i64 %3339, -122485
  %3350 = add i64 %3339, 24
  %3351 = load i64, i64* %6, align 8
  %3352 = add i64 %3351, -8
  %3353 = inttoptr i64 %3352 to i64*
  store i64 %3350, i64* %3353, align 8
  store i64 %3352, i64* %6, align 8
  store i64 %3349, i64* %3, align 8
  %call2_41f3c8 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3349, %struct.Memory* %MEMORY.33)
  %3354 = load i64, i64* %RAX.i1226, align 8
  %3355 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3356 = trunc i64 %3354 to i32
  %3357 = and i32 %3356, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357)
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3362 = icmp eq i64 %3354, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %30, align 1
  %3364 = lshr i64 %3354, 63
  %3365 = trunc i64 %3364 to i8
  store i8 %3365, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v623 = select i1 %3362, i64 10, i64 15
  %3366 = add i64 %3355, %.v623
  store i64 %3366, i64* %3, align 8
  br i1 %3362, label %block_41f3d7, label %block_.L_41f3dc

block_41f3d7:                                     ; preds = %block_41f3b5
  %3367 = add i64 %3366, 1287
  br label %block_.L_41f8de

block_.L_41f3dc:                                  ; preds = %block_41f3b5
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3368 = load i64, i64* %RBP.i, align 8
  %3369 = add i64 %3368, -544
  store i64 %3369, i64* %RDI.i535, align 8
  %3370 = add i64 %3366, -122236
  %3371 = add i64 %3366, 22
  %3372 = load i64, i64* %6, align 8
  %3373 = add i64 %3372, -8
  %3374 = inttoptr i64 %3373 to i64*
  store i64 %3371, i64* %3374, align 8
  store i64 %3373, i64* %6, align 8
  store i64 %3370, i64* %3, align 8
  %call2_41f3ed = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3370, %struct.Memory* %MEMORY.33)
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -552
  %3377 = load i64, i64* %RAX.i1226, align 8
  %3378 = load i64, i64* %3, align 8
  %3379 = add i64 %3378, 7
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3376 to i64*
  store i64 %3377, i64* %3380, align 8
  %3381 = load i64, i64* %RAX.i1226, align 8
  %3382 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3383 = trunc i64 %3381 to i32
  %3384 = and i32 %3383, 255
  %3385 = tail call i32 @llvm.ctpop.i32(i32 %3384)
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  store i8 %3388, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3389 = icmp eq i64 %3381, 0
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %30, align 1
  %3391 = lshr i64 %3381, 63
  %3392 = trunc i64 %3391 to i8
  store i8 %3392, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v624 = select i1 %3389, i64 10, i64 15
  %3393 = add i64 %3382, %.v624
  store i64 %3393, i64* %3, align 8
  br i1 %3389, label %block_41f403, label %block_.L_41f408

block_41f403:                                     ; preds = %block_.L_41f3dc
  %3394 = add i64 %3393, 1243
  br label %block_.L_41f8de

block_.L_41f408:                                  ; preds = %block_.L_41f3dc
  %3395 = load i64, i64* %RBP.i, align 8
  %3396 = add i64 %3395, -552
  %3397 = add i64 %3393, 7
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3396 to i64*
  %3399 = load i64, i64* %3398, align 8
  store i64 %3399, i64* %RDI.i535, align 8
  %3400 = add i64 %3393, -122216
  %3401 = add i64 %3393, 12
  %3402 = load i64, i64* %6, align 8
  %3403 = add i64 %3402, -8
  %3404 = inttoptr i64 %3403 to i64*
  store i64 %3401, i64* %3404, align 8
  store i64 %3403, i64* %6, align 8
  store i64 %3400, i64* %3, align 8
  %3405 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %MEMORY.33)
  %3406 = load i32, i32* %EAX.i886, align 4
  %3407 = load i64, i64* %RBP.i, align 8
  %3408 = add i64 %3407, -564
  %3409 = load i64, i64* %3, align 8
  %3410 = add i64 %3409, 6
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3408 to i32*
  %3412 = load i32, i32* %3411, align 4
  %3413 = sub i32 %3406, %3412
  %3414 = icmp ult i32 %3406, %3412
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %14, align 1
  %3416 = and i32 %3413, 255
  %3417 = tail call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  store i8 %3420, i8* %21, align 1
  %3421 = xor i32 %3412, %3406
  %3422 = xor i32 %3421, %3413
  %3423 = lshr i32 %3422, 4
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  store i8 %3425, i8* %27, align 1
  %3426 = icmp eq i32 %3413, 0
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %30, align 1
  %3428 = lshr i32 %3413, 31
  %3429 = trunc i32 %3428 to i8
  store i8 %3429, i8* %33, align 1
  %3430 = lshr i32 %3406, 31
  %3431 = lshr i32 %3412, 31
  %3432 = xor i32 %3431, %3430
  %3433 = xor i32 %3428, %3430
  %3434 = add nuw nsw i32 %3433, %3432
  %3435 = icmp eq i32 %3434, 2
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %39, align 1
  %.v625 = select i1 %3426, i64 17, i64 12
  %3437 = add i64 %3409, %.v625
  store i64 %3437, i64* %3, align 8
  br i1 %3426, label %block_.L_41f425, label %block_41f420

block_41f420:                                     ; preds = %block_.L_41f408
  %3438 = add i64 %3437, 1214
  br label %block_.L_41f8de

block_.L_41f425:                                  ; preds = %block_.L_41f408
  %3439 = add i64 %3407, -568
  %3440 = add i64 %3437, 10
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  store i32 0, i32* %3441, align 4
  %.pre566 = load i64, i64* %3, align 8
  br label %block_.L_41f42f

block_.L_41f42f:                                  ; preds = %block_.L_41f46b, %block_.L_41f425
  %3442 = phi i64 [ %3589, %block_.L_41f46b ], [ %.pre566, %block_.L_41f425 ]
  %3443 = load i64, i64* %RBP.i, align 8
  %3444 = add i64 %3443, -568
  %3445 = add i64 %3442, 6
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  %3447 = load i32, i32* %3446, align 4
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RAX.i1226, align 8
  %3449 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3450 = sub i32 %3447, %3449
  %3451 = icmp ult i32 %3447, %3449
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %14, align 1
  %3453 = and i32 %3450, 255
  %3454 = tail call i32 @llvm.ctpop.i32(i32 %3453)
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  store i8 %3457, i8* %21, align 1
  %3458 = xor i32 %3449, %3447
  %3459 = xor i32 %3458, %3450
  %3460 = lshr i32 %3459, 4
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  store i8 %3462, i8* %27, align 1
  %3463 = icmp eq i32 %3450, 0
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %30, align 1
  %3465 = lshr i32 %3450, 31
  %3466 = trunc i32 %3465 to i8
  store i8 %3466, i8* %33, align 1
  %3467 = lshr i32 %3447, 31
  %3468 = lshr i32 %3449, 31
  %3469 = xor i32 %3468, %3467
  %3470 = xor i32 %3465, %3467
  %3471 = add nuw nsw i32 %3470, %3469
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %39, align 1
  %3474 = icmp ne i8 %3466, 0
  %3475 = xor i1 %3474, %3472
  %.v626 = select i1 %3475, i64 19, i64 146
  %3476 = add i64 %3442, %.v626
  store i64 %3476, i64* %3, align 8
  br i1 %3475, label %block_41f442, label %block_.L_41f4c1

block_41f442:                                     ; preds = %block_.L_41f42f
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3477 = add i64 %3476, -122338
  %3478 = add i64 %3476, 19
  %3479 = load i64, i64* %6, align 8
  %3480 = add i64 %3479, -8
  %3481 = inttoptr i64 %3480 to i64*
  store i64 %3478, i64* %3481, align 8
  store i64 %3480, i64* %6, align 8
  store i64 %3477, i64* %3, align 8
  %call2_41f450 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3477, %struct.Memory* %3405)
  %3482 = load i64, i64* %RBP.i, align 8
  %3483 = add i64 %3482, -552
  %3484 = load i64, i64* %RAX.i1226, align 8
  %3485 = load i64, i64* %3, align 8
  %3486 = add i64 %3485, 7
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3483 to i64*
  store i64 %3484, i64* %3487, align 8
  %3488 = load i64, i64* %RAX.i1226, align 8
  %3489 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3490 = trunc i64 %3488 to i32
  %3491 = and i32 %3490, 255
  %3492 = tail call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  store i8 %3495, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3496 = icmp eq i64 %3488, 0
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %30, align 1
  %3498 = lshr i64 %3488, 63
  %3499 = trunc i64 %3498 to i8
  store i8 %3499, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v643 = select i1 %3496, i64 10, i64 15
  %3500 = add i64 %3489, %.v643
  store i64 %3500, i64* %3, align 8
  br i1 %3496, label %block_41f466, label %block_.L_41f46b

block_41f466:                                     ; preds = %block_41f442
  %3501 = add i64 %3500, 1144
  br label %block_.L_41f8de

block_.L_41f46b:                                  ; preds = %block_41f442
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -552
  %3504 = add i64 %3500, 7
  store i64 %3504, i64* %3, align 8
  %3505 = inttoptr i64 %3503 to i64*
  %3506 = load i64, i64* %3505, align 8
  store i64 %3506, i64* %RDI.i535, align 8
  %3507 = add i64 %3502, -32
  %3508 = add i64 %3500, 11
  store i64 %3508, i64* %3, align 8
  %3509 = inttoptr i64 %3507 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %RAX.i1226, align 8
  %3511 = add i64 %3502, -568
  %3512 = add i64 %3500, 18
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = sext i32 %3514 to i64
  store i64 %3515, i64* %RCX.i1684, align 8
  %3516 = shl nsw i64 %3515, 2
  %3517 = add i64 %3510, 224
  %3518 = add i64 %3517, %3516
  %3519 = add i64 %3500, 27
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  store i32 %3521, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %3522 = add i64 %3500, 8981
  %3523 = add i64 %3500, 32
  %3524 = load i64, i64* %6, align 8
  %3525 = add i64 %3524, -8
  %3526 = inttoptr i64 %3525 to i64*
  store i64 %3523, i64* %3526, align 8
  store i64 %3525, i64* %6, align 8
  store i64 %3522, i64* %3, align 8
  %call2_41f486 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %3522, %struct.Memory* %3405)
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -32
  %3529 = load i64, i64* %3, align 8
  %3530 = add i64 %3529, 4
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3528 to i64*
  %3532 = load i64, i64* %3531, align 8
  store i64 %3532, i64* %RAX.i1226, align 8
  %3533 = add i64 %3532, 152
  %3534 = add i64 %3529, 11
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i64*
  %3536 = load i64, i64* %3535, align 8
  store i64 %3536, i64* %RAX.i1226, align 8
  %3537 = add i64 %3527, -564
  %3538 = add i64 %3529, 18
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = sext i32 %3540 to i64
  store i64 %3541, i64* %RCX.i1684, align 8
  %3542 = shl nsw i64 %3541, 3
  %3543 = add i64 %3542, %3536
  %3544 = add i64 %3529, 22
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i64*
  %3546 = load i64, i64* %3545, align 8
  store i64 %3546, i64* %RAX.i1226, align 8
  %3547 = add i64 %3527, -568
  %3548 = add i64 %3529, 29
  store i64 %3548, i64* %3, align 8
  %3549 = inttoptr i64 %3547 to i32*
  %3550 = load i32, i32* %3549, align 4
  %3551 = sext i32 %3550 to i64
  store i64 %3551, i64* %RCX.i1684, align 8
  %3552 = shl nsw i64 %3551, 2
  %3553 = add i64 %3552, %3546
  %3554 = add i64 %3529, 34
  store i64 %3554, i64* %3, align 8
  %3555 = load <2 x float>, <2 x float>* %188, align 1
  %3556 = extractelement <2 x float> %3555, i32 0
  %3557 = inttoptr i64 %3553 to float*
  store float %3556, float* %3557, align 4
  %3558 = load i64, i64* %RBP.i, align 8
  %3559 = add i64 %3558, -568
  %3560 = load i64, i64* %3, align 8
  %3561 = add i64 %3560, 6
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = add i32 %3563, 1
  %3565 = zext i32 %3564 to i64
  store i64 %3565, i64* %RAX.i1226, align 8
  %3566 = icmp eq i32 %3563, -1
  %3567 = icmp eq i32 %3564, 0
  %3568 = or i1 %3566, %3567
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %14, align 1
  %3570 = and i32 %3564, 255
  %3571 = tail call i32 @llvm.ctpop.i32(i32 %3570)
  %3572 = trunc i32 %3571 to i8
  %3573 = and i8 %3572, 1
  %3574 = xor i8 %3573, 1
  store i8 %3574, i8* %21, align 1
  %3575 = xor i32 %3564, %3563
  %3576 = lshr i32 %3575, 4
  %3577 = trunc i32 %3576 to i8
  %3578 = and i8 %3577, 1
  store i8 %3578, i8* %27, align 1
  %3579 = zext i1 %3567 to i8
  store i8 %3579, i8* %30, align 1
  %3580 = lshr i32 %3564, 31
  %3581 = trunc i32 %3580 to i8
  store i8 %3581, i8* %33, align 1
  %3582 = lshr i32 %3563, 31
  %3583 = xor i32 %3580, %3582
  %3584 = add nuw nsw i32 %3583, %3580
  %3585 = icmp eq i32 %3584, 2
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %39, align 1
  %3587 = add i64 %3560, 15
  store i64 %3587, i64* %3, align 8
  store i32 %3564, i32* %3562, align 4
  %3588 = load i64, i64* %3, align 8
  %3589 = add i64 %3588, -141
  store i64 %3589, i64* %3, align 8
  br label %block_.L_41f42f

block_.L_41f4c1:                                  ; preds = %block_.L_41f42f
  %3590 = add i64 %3443, -32
  %3591 = add i64 %3476, 4
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i64*
  %3593 = load i64, i64* %3592, align 8
  store i64 %3593, i64* %RAX.i1226, align 8
  %3594 = add i64 %3593, 456
  %3595 = add i64 %3476, 10
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = and i32 %3597, 256
  %3599 = zext i32 %3598 to i64
  store i64 %3599, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3600 = icmp eq i32 %3598, 0
  %.lobit583 = lshr exact i32 %3598, 8
  %3601 = trunc i32 %.lobit583 to i8
  %3602 = xor i8 %3601, 1
  store i8 %3602, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v627 = select i1 %3600, i64 96, i64 25
  %3603 = add i64 %3476, %.v627
  store i64 %3603, i64* %3, align 8
  br i1 %3600, label %block_.L_41f521, label %block_41f4da

block_41f4da:                                     ; preds = %block_.L_41f4c1
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3604 = add i64 %3603, -122490
  %3605 = add i64 %3603, 19
  %3606 = load i64, i64* %6, align 8
  %3607 = add i64 %3606, -8
  %3608 = inttoptr i64 %3607 to i64*
  store i64 %3605, i64* %3608, align 8
  store i64 %3607, i64* %6, align 8
  store i64 %3604, i64* %3, align 8
  %call2_41f4e8 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3604, %struct.Memory* %3405)
  %3609 = load i64, i64* %RBP.i, align 8
  %3610 = add i64 %3609, -552
  %3611 = load i64, i64* %RAX.i1226, align 8
  %3612 = load i64, i64* %3, align 8
  %3613 = add i64 %3612, 7
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3610 to i64*
  store i64 %3611, i64* %3614, align 8
  %3615 = load i64, i64* %RAX.i1226, align 8
  %3616 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3617 = trunc i64 %3615 to i32
  %3618 = and i32 %3617, 255
  %3619 = tail call i32 @llvm.ctpop.i32(i32 %3618)
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  store i8 %3622, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3623 = icmp eq i64 %3615, 0
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %30, align 1
  %3625 = lshr i64 %3615, 63
  %3626 = trunc i64 %3625 to i8
  store i8 %3626, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v628 = select i1 %3623, i64 10, i64 15
  %3627 = add i64 %3616, %.v628
  store i64 %3627, i64* %3, align 8
  br i1 %3623, label %block_41f4fe, label %block_.L_41f503

block_41f4fe:                                     ; preds = %block_41f4da
  %3628 = add i64 %3627, 992
  br label %block_.L_41f8de

block_.L_41f503:                                  ; preds = %block_41f4da
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -552
  %3631 = add i64 %3627, 7
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i64*
  %3633 = load i64, i64* %3632, align 8
  store i64 %3633, i64* %RDI.i535, align 8
  %3634 = add i64 %3627, -122467
  %3635 = add i64 %3627, 12
  %3636 = load i64, i64* %6, align 8
  %3637 = add i64 %3636, -8
  %3638 = inttoptr i64 %3637 to i64*
  store i64 %3635, i64* %3638, align 8
  store i64 %3637, i64* %6, align 8
  store i64 %3634, i64* %3, align 8
  %3639 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_41f4e8)
  %3640 = load i64, i64* %RBP.i, align 8
  %3641 = add i64 %3640, -32
  %3642 = load i64, i64* %3, align 8
  %3643 = add i64 %3642, 4
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3641 to i64*
  %3645 = load i64, i64* %3644, align 8
  store i64 %3645, i64* %RDI.i535, align 8
  %3646 = add i64 %3645, 72
  %3647 = add i64 %3642, 8
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3646 to i64*
  %3649 = load i64, i64* %3648, align 8
  store i64 %3649, i64* %RDI.i535, align 8
  %3650 = add i64 %3640, -564
  %3651 = add i64 %3642, 15
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = sext i32 %3653 to i64
  store i64 %3654, i64* %RCX.i1684, align 8
  %3655 = shl nsw i64 %3654, 2
  %3656 = add i64 %3655, %3649
  %3657 = load i32, i32* %EAX.i886, align 4
  %3658 = add i64 %3642, 18
  store i64 %3658, i64* %3, align 8
  %3659 = inttoptr i64 %3656 to i32*
  store i32 %3657, i32* %3659, align 4
  %.pre567 = load i64, i64* %3, align 8
  %.pre568 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41f521

block_.L_41f521:                                  ; preds = %block_.L_41f503, %block_.L_41f4c1
  %3660 = phi i64 [ %3443, %block_.L_41f4c1 ], [ %.pre568, %block_.L_41f503 ]
  %3661 = phi i64 [ %3603, %block_.L_41f4c1 ], [ %.pre567, %block_.L_41f503 ]
  %MEMORY.35 = phi %struct.Memory* [ %3405, %block_.L_41f4c1 ], [ %3639, %block_.L_41f503 ]
  store i64 512, i64* %RSI.i759, align 8
  %3662 = add i64 %3660, -544
  store i64 %3662, i64* %RDI.i535, align 8
  %3663 = add i64 %3660, -16
  %3664 = add i64 %3661, 16
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i64*
  %3666 = load i64, i64* %3665, align 8
  store i64 %3666, i64* %RAX.i1226, align 8
  %3667 = add i64 %3661, 19
  store i64 %3667, i64* %3, align 8
  %3668 = inttoptr i64 %3666 to i64*
  %3669 = load i64, i64* %3668, align 8
  store i64 %3669, i64* %RDX.i1259, align 8
  %3670 = add i64 %3661, -122849
  %3671 = add i64 %3661, 24
  %3672 = load i64, i64* %6, align 8
  %3673 = add i64 %3672, -8
  %3674 = inttoptr i64 %3673 to i64*
  store i64 %3671, i64* %3674, align 8
  store i64 %3673, i64* %6, align 8
  store i64 %3670, i64* %3, align 8
  %call2_41f534 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3670, %struct.Memory* %MEMORY.35)
  %3675 = load i64, i64* %RAX.i1226, align 8
  %3676 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3677 = trunc i64 %3675 to i32
  %3678 = and i32 %3677, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3683 = icmp eq i64 %3675, 0
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %30, align 1
  %3685 = lshr i64 %3675, 63
  %3686 = trunc i64 %3685 to i8
  store i8 %3686, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v629 = select i1 %3683, i64 10, i64 15
  %3687 = add i64 %3676, %.v629
  store i64 %3687, i64* %3, align 8
  br i1 %3683, label %block_41f543, label %block_.L_41f548

block_41f543:                                     ; preds = %block_.L_41f521
  %3688 = add i64 %3687, 923
  br label %block_.L_41f8de

block_.L_41f548:                                  ; preds = %block_.L_41f521
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3689 = load i64, i64* %RBP.i, align 8
  %3690 = add i64 %3689, -544
  store i64 %3690, i64* %RDI.i535, align 8
  %3691 = add i64 %3687, -122600
  %3692 = add i64 %3687, 22
  %3693 = load i64, i64* %6, align 8
  %3694 = add i64 %3693, -8
  %3695 = inttoptr i64 %3694 to i64*
  store i64 %3692, i64* %3695, align 8
  store i64 %3694, i64* %6, align 8
  store i64 %3691, i64* %3, align 8
  %call2_41f559 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3691, %struct.Memory* %call2_41f534)
  %3696 = load i64, i64* %RBP.i, align 8
  %3697 = add i64 %3696, -552
  %3698 = load i64, i64* %RAX.i1226, align 8
  %3699 = load i64, i64* %3, align 8
  %3700 = add i64 %3699, 7
  store i64 %3700, i64* %3, align 8
  %3701 = inttoptr i64 %3697 to i64*
  store i64 %3698, i64* %3701, align 8
  %3702 = load i64, i64* %RAX.i1226, align 8
  %3703 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3704 = trunc i64 %3702 to i32
  %3705 = and i32 %3704, 255
  %3706 = tail call i32 @llvm.ctpop.i32(i32 %3705)
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = xor i8 %3708, 1
  store i8 %3709, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3710 = icmp eq i64 %3702, 0
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %30, align 1
  %3712 = lshr i64 %3702, 63
  %3713 = trunc i64 %3712 to i8
  store i8 %3713, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v630 = select i1 %3710, i64 10, i64 15
  %3714 = add i64 %3703, %.v630
  store i64 %3714, i64* %3, align 8
  br i1 %3710, label %block_41f56f, label %block_.L_41f574

block_41f56f:                                     ; preds = %block_.L_41f548
  %3715 = add i64 %3714, 879
  br label %block_.L_41f8de

block_.L_41f574:                                  ; preds = %block_.L_41f548
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -32
  %3718 = add i64 %3714, 4
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i64*
  %3720 = load i64, i64* %3719, align 8
  store i64 %3720, i64* %RAX.i1226, align 8
  %3721 = add i64 %3720, 456
  %3722 = add i64 %3714, 10
  store i64 %3722, i64* %3, align 8
  %3723 = inttoptr i64 %3721 to i32*
  %3724 = load i32, i32* %3723, align 4
  %3725 = and i32 %3724, 4
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  %3727 = tail call i32 @llvm.ctpop.i32(i32 %3725)
  %3728 = trunc i32 %3727 to i8
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3730 = icmp eq i32 %3725, 0
  %.lobit584 = lshr exact i32 %3725, 2
  %3731 = trunc i32 %.lobit584 to i8
  %3732 = xor i8 %3731, 1
  store i8 %3732, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v631 = select i1 %3730, i64 49, i64 22
  %3733 = add i64 %3714, %.v631
  store i64 %3733, i64* %3, align 8
  br i1 %3730, label %block_.L_41f5a5, label %block_41f58a

block_41f58a:                                     ; preds = %block_.L_41f574
  %3734 = add i64 %3716, -552
  %3735 = add i64 %3733, 7
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i64*
  %3737 = load i64, i64* %3736, align 8
  store i64 %3737, i64* %RAX.i1226, align 8
  %3738 = add i64 %3733, 9
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i8*
  %3740 = load i8, i8* %3739, align 1
  store i8 %3740, i8* %CL.i241, align 1
  %3741 = add i64 %3733, 13
  store i64 %3741, i64* %3, align 8
  %3742 = load i64, i64* %3719, align 8
  store i64 %3742, i64* %RAX.i1226, align 8
  %3743 = add i64 %3742, 24
  %3744 = add i64 %3733, 17
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i64*
  %3746 = load i64, i64* %3745, align 8
  store i64 %3746, i64* %RAX.i1226, align 8
  %3747 = add i64 %3716, -564
  %3748 = add i64 %3733, 24
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = sext i32 %3750 to i64
  store i64 %3751, i64* %RDX.i1259, align 8
  %3752 = add i64 %3746, %3751
  %3753 = add i64 %3733, 27
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i8*
  store i8 %3740, i8* %3754, align 1
  %.pre569 = load i64, i64* %RBP.i, align 8
  %.pre570 = load i64, i64* %3, align 8
  br label %block_.L_41f5a5

block_.L_41f5a5:                                  ; preds = %block_41f58a, %block_.L_41f574
  %3755 = phi i64 [ %.pre570, %block_41f58a ], [ %3733, %block_.L_41f574 ]
  %3756 = phi i64 [ %.pre569, %block_41f58a ], [ %3716, %block_.L_41f574 ]
  %3757 = add i64 %3756, -564
  %3758 = add i64 %3755, 6
  store i64 %3758, i64* %3, align 8
  %3759 = inttoptr i64 %3757 to i32*
  %3760 = load i32, i32* %3759, align 4
  %3761 = zext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i1226, align 8
  %3762 = add i64 %3756, -32
  %3763 = add i64 %3755, 10
  store i64 %3763, i64* %3, align 8
  %3764 = inttoptr i64 %3762 to i64*
  %3765 = load i64, i64* %3764, align 8
  store i64 %3765, i64* %RCX.i1684, align 8
  %3766 = add i64 %3765, 136
  %3767 = add i64 %3755, 16
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3766 to i32*
  %3769 = load i32, i32* %3768, align 4
  %3770 = sub i32 %3760, %3769
  %3771 = icmp ult i32 %3760, %3769
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %14, align 1
  %3773 = and i32 %3770, 255
  %3774 = tail call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  store i8 %3777, i8* %21, align 1
  %3778 = xor i32 %3769, %3760
  %3779 = xor i32 %3778, %3770
  %3780 = lshr i32 %3779, 4
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  store i8 %3782, i8* %27, align 1
  %3783 = icmp eq i32 %3770, 0
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %30, align 1
  %3785 = lshr i32 %3770, 31
  %3786 = trunc i32 %3785 to i8
  store i8 %3786, i8* %33, align 1
  %3787 = lshr i32 %3760, 31
  %3788 = lshr i32 %3769, 31
  %3789 = xor i32 %3788, %3787
  %3790 = xor i32 %3785, %3787
  %3791 = add nuw nsw i32 %3790, %3789
  %3792 = icmp eq i32 %3791, 2
  %3793 = zext i1 %3792 to i8
  store i8 %3793, i8* %39, align 1
  %3794 = icmp ne i8 %3786, 0
  %3795 = xor i1 %3794, %3792
  %.v632 = select i1 %3795, i64 22, i64 183
  %3796 = add i64 %3755, %.v632
  store i64 %3796, i64* %3, align 8
  br i1 %3795, label %block_41f5bb, label %block_.L_41f65c

block_41f5bb:                                     ; preds = %block_.L_41f5a5
  %3797 = add i64 %3756, -568
  %3798 = add i64 %3796, 10
  store i64 %3798, i64* %3, align 8
  %3799 = inttoptr i64 %3797 to i32*
  store i32 0, i32* %3799, align 4
  %.pre571 = load i64, i64* %3, align 8
  br label %block_.L_41f5c5

block_.L_41f5c5:                                  ; preds = %block_.L_41f601, %block_41f5bb
  %3800 = phi i64 [ %3947, %block_.L_41f601 ], [ %.pre571, %block_41f5bb ]
  %3801 = load i64, i64* %RBP.i, align 8
  %3802 = add i64 %3801, -568
  %3803 = add i64 %3800, 6
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RAX.i1226, align 8
  %3807 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3808 = sub i32 %3805, %3807
  %3809 = icmp ult i32 %3805, %3807
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %14, align 1
  %3811 = and i32 %3808, 255
  %3812 = tail call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  store i8 %3815, i8* %21, align 1
  %3816 = xor i32 %3807, %3805
  %3817 = xor i32 %3816, %3808
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  store i8 %3820, i8* %27, align 1
  %3821 = icmp eq i32 %3808, 0
  %3822 = zext i1 %3821 to i8
  store i8 %3822, i8* %30, align 1
  %3823 = lshr i32 %3808, 31
  %3824 = trunc i32 %3823 to i8
  store i8 %3824, i8* %33, align 1
  %3825 = lshr i32 %3805, 31
  %3826 = lshr i32 %3807, 31
  %3827 = xor i32 %3826, %3825
  %3828 = xor i32 %3823, %3825
  %3829 = add nuw nsw i32 %3828, %3827
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %39, align 1
  %3832 = icmp ne i8 %3824, 0
  %3833 = xor i1 %3832, %3830
  %.v641 = select i1 %3833, i64 19, i64 146
  %3834 = add i64 %3800, %.v641
  store i64 %3834, i64* %3, align 8
  br i1 %3833, label %block_41f5d8, label %block_.L_41f657

block_41f5d8:                                     ; preds = %block_.L_41f5c5
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3835 = add i64 %3834, -122744
  %3836 = add i64 %3834, 19
  %3837 = load i64, i64* %6, align 8
  %3838 = add i64 %3837, -8
  %3839 = inttoptr i64 %3838 to i64*
  store i64 %3836, i64* %3839, align 8
  store i64 %3838, i64* %6, align 8
  store i64 %3835, i64* %3, align 8
  %call2_41f5e6 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3835, %struct.Memory* %call2_41f559)
  %3840 = load i64, i64* %RBP.i, align 8
  %3841 = add i64 %3840, -552
  %3842 = load i64, i64* %RAX.i1226, align 8
  %3843 = load i64, i64* %3, align 8
  %3844 = add i64 %3843, 7
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3841 to i64*
  store i64 %3842, i64* %3845, align 8
  %3846 = load i64, i64* %RAX.i1226, align 8
  %3847 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3848 = trunc i64 %3846 to i32
  %3849 = and i32 %3848, 255
  %3850 = tail call i32 @llvm.ctpop.i32(i32 %3849)
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = xor i8 %3852, 1
  store i8 %3853, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3854 = icmp eq i64 %3846, 0
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %30, align 1
  %3856 = lshr i64 %3846, 63
  %3857 = trunc i64 %3856 to i8
  store i8 %3857, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v642 = select i1 %3854, i64 10, i64 15
  %3858 = add i64 %3847, %.v642
  store i64 %3858, i64* %3, align 8
  br i1 %3854, label %block_41f5fc, label %block_.L_41f601

block_41f5fc:                                     ; preds = %block_41f5d8
  %3859 = add i64 %3858, 738
  br label %block_.L_41f8de

block_.L_41f601:                                  ; preds = %block_41f5d8
  %3860 = load i64, i64* %RBP.i, align 8
  %3861 = add i64 %3860, -552
  %3862 = add i64 %3858, 7
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3861 to i64*
  %3864 = load i64, i64* %3863, align 8
  store i64 %3864, i64* %RDI.i535, align 8
  %3865 = add i64 %3860, -32
  %3866 = add i64 %3858, 11
  store i64 %3866, i64* %3, align 8
  %3867 = inttoptr i64 %3865 to i64*
  %3868 = load i64, i64* %3867, align 8
  store i64 %3868, i64* %RAX.i1226, align 8
  %3869 = add i64 %3860, -568
  %3870 = add i64 %3858, 18
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = sext i32 %3872 to i64
  store i64 %3873, i64* %RCX.i1684, align 8
  %3874 = shl nsw i64 %3873, 2
  %3875 = add i64 %3868, 224
  %3876 = add i64 %3875, %3874
  %3877 = add i64 %3858, 27
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to i32*
  %3879 = load i32, i32* %3878, align 4
  store i32 %3879, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %3880 = add i64 %3858, 8575
  %3881 = add i64 %3858, 32
  %3882 = load i64, i64* %6, align 8
  %3883 = add i64 %3882, -8
  %3884 = inttoptr i64 %3883 to i64*
  store i64 %3881, i64* %3884, align 8
  store i64 %3883, i64* %6, align 8
  store i64 %3880, i64* %3, align 8
  %call2_41f61c = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %3880, %struct.Memory* %call2_41f559)
  %3885 = load i64, i64* %RBP.i, align 8
  %3886 = add i64 %3885, -32
  %3887 = load i64, i64* %3, align 8
  %3888 = add i64 %3887, 4
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3886 to i64*
  %3890 = load i64, i64* %3889, align 8
  store i64 %3890, i64* %RAX.i1226, align 8
  %3891 = add i64 %3890, 160
  %3892 = add i64 %3887, 11
  store i64 %3892, i64* %3, align 8
  %3893 = inttoptr i64 %3891 to i64*
  %3894 = load i64, i64* %3893, align 8
  store i64 %3894, i64* %RAX.i1226, align 8
  %3895 = add i64 %3885, -564
  %3896 = add i64 %3887, 18
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = sext i32 %3898 to i64
  store i64 %3899, i64* %RCX.i1684, align 8
  %3900 = shl nsw i64 %3899, 3
  %3901 = add i64 %3900, %3894
  %3902 = add i64 %3887, 22
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i64*
  %3904 = load i64, i64* %3903, align 8
  store i64 %3904, i64* %RAX.i1226, align 8
  %3905 = add i64 %3885, -568
  %3906 = add i64 %3887, 29
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3905 to i32*
  %3908 = load i32, i32* %3907, align 4
  %3909 = sext i32 %3908 to i64
  store i64 %3909, i64* %RCX.i1684, align 8
  %3910 = shl nsw i64 %3909, 2
  %3911 = add i64 %3910, %3904
  %3912 = add i64 %3887, 34
  store i64 %3912, i64* %3, align 8
  %3913 = load <2 x float>, <2 x float>* %188, align 1
  %3914 = extractelement <2 x float> %3913, i32 0
  %3915 = inttoptr i64 %3911 to float*
  store float %3914, float* %3915, align 4
  %3916 = load i64, i64* %RBP.i, align 8
  %3917 = add i64 %3916, -568
  %3918 = load i64, i64* %3, align 8
  %3919 = add i64 %3918, 6
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3917 to i32*
  %3921 = load i32, i32* %3920, align 4
  %3922 = add i32 %3921, 1
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RAX.i1226, align 8
  %3924 = icmp eq i32 %3921, -1
  %3925 = icmp eq i32 %3922, 0
  %3926 = or i1 %3924, %3925
  %3927 = zext i1 %3926 to i8
  store i8 %3927, i8* %14, align 1
  %3928 = and i32 %3922, 255
  %3929 = tail call i32 @llvm.ctpop.i32(i32 %3928)
  %3930 = trunc i32 %3929 to i8
  %3931 = and i8 %3930, 1
  %3932 = xor i8 %3931, 1
  store i8 %3932, i8* %21, align 1
  %3933 = xor i32 %3922, %3921
  %3934 = lshr i32 %3933, 4
  %3935 = trunc i32 %3934 to i8
  %3936 = and i8 %3935, 1
  store i8 %3936, i8* %27, align 1
  %3937 = zext i1 %3925 to i8
  store i8 %3937, i8* %30, align 1
  %3938 = lshr i32 %3922, 31
  %3939 = trunc i32 %3938 to i8
  store i8 %3939, i8* %33, align 1
  %3940 = lshr i32 %3921, 31
  %3941 = xor i32 %3938, %3940
  %3942 = add nuw nsw i32 %3941, %3938
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %39, align 1
  %3945 = add i64 %3918, 15
  store i64 %3945, i64* %3, align 8
  store i32 %3922, i32* %3920, align 4
  %3946 = load i64, i64* %3, align 8
  %3947 = add i64 %3946, -141
  store i64 %3947, i64* %3, align 8
  br label %block_.L_41f5c5

block_.L_41f657:                                  ; preds = %block_.L_41f5c5
  %3948 = add i64 %3834, 5
  store i64 %3948, i64* %3, align 8
  br label %block_.L_41f65c

block_.L_41f65c:                                  ; preds = %block_.L_41f5a5, %block_.L_41f657
  %3949 = phi i64 [ %3756, %block_.L_41f5a5 ], [ %3801, %block_.L_41f657 ]
  %3950 = phi i64 [ %3796, %block_.L_41f5a5 ], [ %3948, %block_.L_41f657 ]
  store i64 512, i64* %RSI.i759, align 8
  %3951 = add i64 %3949, -544
  store i64 %3951, i64* %RDI.i535, align 8
  %3952 = add i64 %3949, -16
  %3953 = add i64 %3950, 16
  store i64 %3953, i64* %3, align 8
  %3954 = inttoptr i64 %3952 to i64*
  %3955 = load i64, i64* %3954, align 8
  store i64 %3955, i64* %RAX.i1226, align 8
  %3956 = add i64 %3950, 19
  store i64 %3956, i64* %3, align 8
  %3957 = inttoptr i64 %3955 to i64*
  %3958 = load i64, i64* %3957, align 8
  store i64 %3958, i64* %RDX.i1259, align 8
  %3959 = add i64 %3950, -123164
  %3960 = add i64 %3950, 24
  %3961 = load i64, i64* %6, align 8
  %3962 = add i64 %3961, -8
  %3963 = inttoptr i64 %3962 to i64*
  store i64 %3960, i64* %3963, align 8
  store i64 %3962, i64* %6, align 8
  store i64 %3959, i64* %3, align 8
  %call2_41f66f = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3959, %struct.Memory* %call2_41f559)
  %3964 = load i64, i64* %RAX.i1226, align 8
  %3965 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3966 = trunc i64 %3964 to i32
  %3967 = and i32 %3966, 255
  %3968 = tail call i32 @llvm.ctpop.i32(i32 %3967)
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = xor i8 %3970, 1
  store i8 %3971, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3972 = icmp eq i64 %3964, 0
  %3973 = zext i1 %3972 to i8
  store i8 %3973, i8* %30, align 1
  %3974 = lshr i64 %3964, 63
  %3975 = trunc i64 %3974 to i8
  store i8 %3975, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v633 = select i1 %3972, i64 10, i64 15
  %3976 = add i64 %3965, %.v633
  store i64 %3976, i64* %3, align 8
  br i1 %3972, label %block_41f67e, label %block_.L_41f683

block_41f67e:                                     ; preds = %block_.L_41f65c
  %3977 = add i64 %3976, 608
  br label %block_.L_41f8de

block_.L_41f683:                                  ; preds = %block_.L_41f65c
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %3978 = load i64, i64* %RBP.i, align 8
  %3979 = add i64 %3978, -544
  store i64 %3979, i64* %RDI.i535, align 8
  %3980 = add i64 %3976, -122915
  %3981 = add i64 %3976, 22
  %3982 = load i64, i64* %6, align 8
  %3983 = add i64 %3982, -8
  %3984 = inttoptr i64 %3983 to i64*
  store i64 %3981, i64* %3984, align 8
  store i64 %3983, i64* %6, align 8
  store i64 %3980, i64* %3, align 8
  %call2_41f694 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3980, %struct.Memory* %call2_41f66f)
  %3985 = load i64, i64* %RBP.i, align 8
  %3986 = add i64 %3985, -552
  %3987 = load i64, i64* %RAX.i1226, align 8
  %3988 = load i64, i64* %3, align 8
  %3989 = add i64 %3988, 7
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3986 to i64*
  store i64 %3987, i64* %3990, align 8
  %3991 = load i64, i64* %RAX.i1226, align 8
  %3992 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3993 = trunc i64 %3991 to i32
  %3994 = and i32 %3993, 255
  %3995 = tail call i32 @llvm.ctpop.i32(i32 %3994)
  %3996 = trunc i32 %3995 to i8
  %3997 = and i8 %3996, 1
  %3998 = xor i8 %3997, 1
  store i8 %3998, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3999 = icmp eq i64 %3991, 0
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %30, align 1
  %4001 = lshr i64 %3991, 63
  %4002 = trunc i64 %4001 to i8
  store i8 %4002, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v634 = select i1 %3999, i64 10, i64 15
  %4003 = add i64 %3992, %.v634
  store i64 %4003, i64* %3, align 8
  br i1 %3999, label %block_41f6aa, label %block_.L_41f6af

block_41f6aa:                                     ; preds = %block_.L_41f683
  %4004 = add i64 %4003, 564
  br label %block_.L_41f8de

block_.L_41f6af:                                  ; preds = %block_.L_41f683
  %4005 = load i64, i64* %RBP.i, align 8
  %4006 = add i64 %4005, -32
  %4007 = add i64 %4003, 4
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i64*
  %4009 = load i64, i64* %4008, align 8
  store i64 %4009, i64* %RAX.i1226, align 8
  %4010 = add i64 %4009, 456
  %4011 = add i64 %4003, 10
  store i64 %4011, i64* %3, align 8
  %4012 = inttoptr i64 %4010 to i32*
  %4013 = load i32, i32* %4012, align 4
  %4014 = and i32 %4013, 8
  %4015 = zext i32 %4014 to i64
  store i64 %4015, i64* %RCX.i1684, align 8
  store i8 0, i8* %14, align 1
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4014)
  %4017 = trunc i32 %4016 to i8
  %4018 = xor i8 %4017, 1
  store i8 %4018, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4019 = icmp eq i32 %4014, 0
  %.lobit585 = lshr exact i32 %4014, 3
  %4020 = trunc i32 %.lobit585 to i8
  %4021 = xor i8 %4020, 1
  store i8 %4021, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v635 = select i1 %4019, i64 49, i64 22
  %4022 = add i64 %4003, %.v635
  store i64 %4022, i64* %3, align 8
  br i1 %4019, label %block_.L_41f6e0, label %block_41f6c5

block_41f6c5:                                     ; preds = %block_.L_41f6af
  %4023 = add i64 %4005, -552
  %4024 = add i64 %4022, 7
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i64*
  %4026 = load i64, i64* %4025, align 8
  store i64 %4026, i64* %RAX.i1226, align 8
  %4027 = add i64 %4022, 9
  store i64 %4027, i64* %3, align 8
  %4028 = inttoptr i64 %4026 to i8*
  %4029 = load i8, i8* %4028, align 1
  store i8 %4029, i8* %CL.i241, align 1
  %4030 = add i64 %4022, 13
  store i64 %4030, i64* %3, align 8
  %4031 = load i64, i64* %4008, align 8
  store i64 %4031, i64* %RAX.i1226, align 8
  %4032 = add i64 %4031, 32
  %4033 = add i64 %4022, 17
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i64*
  %4035 = load i64, i64* %4034, align 8
  store i64 %4035, i64* %RAX.i1226, align 8
  %4036 = add i64 %4005, -564
  %4037 = add i64 %4022, 24
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i32*
  %4039 = load i32, i32* %4038, align 4
  %4040 = sext i32 %4039 to i64
  store i64 %4040, i64* %RDX.i1259, align 8
  %4041 = add i64 %4035, %4040
  %4042 = add i64 %4022, 27
  store i64 %4042, i64* %3, align 8
  %4043 = inttoptr i64 %4041 to i8*
  store i8 %4029, i8* %4043, align 1
  %.pre572 = load i64, i64* %RBP.i, align 8
  %.pre573 = load i64, i64* %3, align 8
  br label %block_.L_41f6e0

block_.L_41f6e0:                                  ; preds = %block_41f6c5, %block_.L_41f6af
  %4044 = phi i64 [ %.pre573, %block_41f6c5 ], [ %4022, %block_.L_41f6af ]
  %4045 = phi i64 [ %.pre572, %block_41f6c5 ], [ %4005, %block_.L_41f6af ]
  %4046 = add i64 %4045, -568
  %4047 = add i64 %4044, 10
  store i64 %4047, i64* %3, align 8
  %4048 = inttoptr i64 %4046 to i32*
  store i32 0, i32* %4048, align 4
  %.pre574 = load i64, i64* %3, align 8
  br label %block_.L_41f6ea

block_.L_41f6ea:                                  ; preds = %block_.L_41f76c, %block_.L_41f6e0
  %4049 = phi i64 [ %.pre574, %block_.L_41f6e0 ], [ %4206, %block_.L_41f76c ]
  %4050 = load i64, i64* %RBP.i, align 8
  %4051 = add i64 %4050, -568
  %4052 = add i64 %4049, 7
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4051 to i32*
  %4054 = load i32, i32* %4053, align 4
  %4055 = add i32 %4054, -7
  %4056 = lshr i32 %4055, 31
  %4057 = lshr i32 %4054, 31
  %4058 = xor i32 %4056, %4057
  %4059 = add nuw nsw i32 %4058, %4057
  %4060 = icmp eq i32 %4059, 2
  %4061 = icmp ne i32 %4056, 0
  %4062 = xor i1 %4061, %4060
  %.v636 = select i1 %4062, i64 13, i64 155
  %4063 = add i64 %4049, %.v636
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  %4064 = add i64 %4063, 14
  store i64 %4064, i64* %3, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  br i1 %4062, label %block_41f6f7, label %block_.L_41f785

block_41f6f7:                                     ; preds = %block_.L_41f6ea
  %4065 = add i64 %4063, -123031
  %4066 = add i64 %4063, 19
  %4067 = load i64, i64* %6, align 8
  %4068 = add i64 %4067, -8
  %4069 = inttoptr i64 %4068 to i64*
  store i64 %4066, i64* %4069, align 8
  store i64 %4068, i64* %6, align 8
  store i64 %4065, i64* %3, align 8
  %call2_41f705 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %4065, %struct.Memory* %call2_41f694)
  %4070 = load i64, i64* %RBP.i, align 8
  %4071 = add i64 %4070, -552
  %4072 = load i64, i64* %RAX.i1226, align 8
  %4073 = load i64, i64* %3, align 8
  %4074 = add i64 %4073, 7
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4071 to i64*
  store i64 %4072, i64* %4075, align 8
  %4076 = load i64, i64* %RAX.i1226, align 8
  %4077 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4078 = trunc i64 %4076 to i32
  %4079 = and i32 %4078, 255
  %4080 = tail call i32 @llvm.ctpop.i32(i32 %4079)
  %4081 = trunc i32 %4080 to i8
  %4082 = and i8 %4081, 1
  %4083 = xor i8 %4082, 1
  store i8 %4083, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4084 = icmp eq i64 %4076, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %30, align 1
  %4086 = lshr i64 %4076, 63
  %4087 = trunc i64 %4086 to i8
  store i8 %4087, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v639 = select i1 %4084, i64 10, i64 15
  %4088 = add i64 %4077, %.v639
  store i64 %4088, i64* %3, align 8
  br i1 %4084, label %block_41f71b, label %block_.L_41f720

block_41f71b:                                     ; preds = %block_41f6f7
  %4089 = add i64 %4088, 451
  br label %block_.L_41f8de

block_.L_41f720:                                  ; preds = %block_41f6f7
  %4090 = load i64, i64* %RBP.i, align 8
  %4091 = add i64 %4090, -564
  %4092 = add i64 %4088, 6
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4091 to i32*
  %4094 = load i32, i32* %4093, align 4
  %4095 = zext i32 %4094 to i64
  store i64 %4095, i64* %RAX.i1226, align 8
  %4096 = add i64 %4090, -32
  %4097 = add i64 %4088, 10
  store i64 %4097, i64* %3, align 8
  %4098 = inttoptr i64 %4096 to i64*
  %4099 = load i64, i64* %4098, align 8
  store i64 %4099, i64* %RCX.i1684, align 8
  %4100 = add i64 %4099, 136
  %4101 = add i64 %4088, 16
  store i64 %4101, i64* %3, align 8
  %4102 = inttoptr i64 %4100 to i32*
  %4103 = load i32, i32* %4102, align 4
  %4104 = sub i32 %4094, %4103
  %4105 = icmp ult i32 %4094, %4103
  %4106 = zext i1 %4105 to i8
  store i8 %4106, i8* %14, align 1
  %4107 = and i32 %4104, 255
  %4108 = tail call i32 @llvm.ctpop.i32(i32 %4107)
  %4109 = trunc i32 %4108 to i8
  %4110 = and i8 %4109, 1
  %4111 = xor i8 %4110, 1
  store i8 %4111, i8* %21, align 1
  %4112 = xor i32 %4103, %4094
  %4113 = xor i32 %4112, %4104
  %4114 = lshr i32 %4113, 4
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  store i8 %4116, i8* %27, align 1
  %4117 = icmp eq i32 %4104, 0
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %30, align 1
  %4119 = lshr i32 %4104, 31
  %4120 = trunc i32 %4119 to i8
  store i8 %4120, i8* %33, align 1
  %4121 = lshr i32 %4094, 31
  %4122 = lshr i32 %4103, 31
  %4123 = xor i32 %4122, %4121
  %4124 = xor i32 %4119, %4121
  %4125 = add nuw nsw i32 %4124, %4123
  %4126 = icmp eq i32 %4125, 2
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %39, align 1
  %4128 = icmp ne i8 %4120, 0
  %4129 = xor i1 %4128, %4126
  %.v640 = select i1 %4129, i64 22, i64 76
  %4130 = add i64 %4088, %.v640
  store i64 %4130, i64* %3, align 8
  br i1 %4129, label %block_41f736, label %block_.L_41f76c

block_41f736:                                     ; preds = %block_.L_41f720
  %4131 = add i64 %4130, ptrtoint (%G_0x34fea__rip__type* @G_0x34fea__rip_ to i64)
  %4132 = add i64 %4130, 8
  store i64 %4132, i64* %3, align 8
  %4133 = inttoptr i64 %4131 to i32*
  %4134 = load i32, i32* %4133, align 4
  store i32 %4134, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %4135 = add i64 %4090, -552
  %4136 = add i64 %4130, 15
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i64*
  %4138 = load i64, i64* %4137, align 8
  store i64 %4138, i64* %RDI.i535, align 8
  %4139 = add i64 %4130, 8266
  %4140 = add i64 %4130, 20
  %4141 = load i64, i64* %6, align 8
  %4142 = add i64 %4141, -8
  %4143 = inttoptr i64 %4142 to i64*
  store i64 %4140, i64* %4143, align 8
  store i64 %4142, i64* %6, align 8
  store i64 %4139, i64* %3, align 8
  %call2_41f745 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %4139, %struct.Memory* %call2_41f694)
  %4144 = load i64, i64* %RBP.i, align 8
  %4145 = add i64 %4144, -32
  %4146 = load i64, i64* %3, align 8
  %4147 = add i64 %4146, 4
  store i64 %4147, i64* %3, align 8
  %4148 = inttoptr i64 %4145 to i64*
  %4149 = load i64, i64* %4148, align 8
  store i64 %4149, i64* %RDI.i535, align 8
  %4150 = add i64 %4149, 144
  %4151 = add i64 %4146, 11
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i64*
  %4153 = load i64, i64* %4152, align 8
  store i64 %4153, i64* %RDI.i535, align 8
  %4154 = add i64 %4144, -564
  %4155 = add i64 %4146, 18
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4154 to i32*
  %4157 = load i32, i32* %4156, align 4
  %4158 = sext i32 %4157 to i64
  store i64 %4158, i64* %RAX.i1226, align 8
  %4159 = shl nsw i64 %4158, 3
  %4160 = add i64 %4159, %4153
  %4161 = add i64 %4146, 22
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i64*
  %4163 = load i64, i64* %4162, align 8
  store i64 %4163, i64* %RAX.i1226, align 8
  %4164 = add i64 %4144, -568
  %4165 = add i64 %4146, 29
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i32*
  %4167 = load i32, i32* %4166, align 4
  %4168 = sext i32 %4167 to i64
  store i64 %4168, i64* %RDI.i535, align 8
  %4169 = shl nsw i64 %4168, 2
  %4170 = add i64 %4169, %4163
  %4171 = add i64 %4146, 34
  store i64 %4171, i64* %3, align 8
  %4172 = load <2 x float>, <2 x float>* %188, align 1
  %4173 = extractelement <2 x float> %4172, i32 0
  %4174 = inttoptr i64 %4170 to float*
  store float %4173, float* %4174, align 4
  %.pre575 = load i64, i64* %3, align 8
  %.pre576 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41f76c

block_.L_41f76c:                                  ; preds = %block_.L_41f720, %block_41f736
  %4175 = phi i64 [ %4090, %block_.L_41f720 ], [ %.pre576, %block_41f736 ]
  %4176 = phi i64 [ %4130, %block_.L_41f720 ], [ %.pre575, %block_41f736 ]
  %4177 = add i64 %4175, -568
  %4178 = add i64 %4176, 11
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4177 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = add i32 %4180, 1
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RAX.i1226, align 8
  %4183 = icmp eq i32 %4180, -1
  %4184 = icmp eq i32 %4181, 0
  %4185 = or i1 %4183, %4184
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %14, align 1
  %4187 = and i32 %4181, 255
  %4188 = tail call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %21, align 1
  %4192 = xor i32 %4181, %4180
  %4193 = lshr i32 %4192, 4
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  store i8 %4195, i8* %27, align 1
  %4196 = zext i1 %4184 to i8
  store i8 %4196, i8* %30, align 1
  %4197 = lshr i32 %4181, 31
  %4198 = trunc i32 %4197 to i8
  store i8 %4198, i8* %33, align 1
  %4199 = lshr i32 %4180, 31
  %4200 = xor i32 %4197, %4199
  %4201 = add nuw nsw i32 %4200, %4197
  %4202 = icmp eq i32 %4201, 2
  %4203 = zext i1 %4202 to i8
  store i8 %4203, i8* %39, align 1
  %4204 = add i64 %4176, 20
  store i64 %4204, i64* %3, align 8
  store i32 %4181, i32* %4179, align 4
  %4205 = load i64, i64* %3, align 8
  %4206 = add i64 %4205, -150
  store i64 %4206, i64* %3, align 8
  br label %block_.L_41f6ea

block_.L_41f785:                                  ; preds = %block_.L_41f6ea
  %4207 = add i64 %4063, -123173
  %4208 = add i64 %4063, 19
  %4209 = load i64, i64* %6, align 8
  %4210 = add i64 %4209, -8
  %4211 = inttoptr i64 %4210 to i64*
  store i64 %4208, i64* %4211, align 8
  store i64 %4210, i64* %6, align 8
  store i64 %4207, i64* %3, align 8
  %call2_41f793 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %4207, %struct.Memory* %call2_41f694)
  %4212 = load i64, i64* %RBP.i, align 8
  %4213 = add i64 %4212, -552
  %4214 = load i64, i64* %RAX.i1226, align 8
  %4215 = load i64, i64* %3, align 8
  %4216 = add i64 %4215, 7
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4213 to i64*
  store i64 %4214, i64* %4217, align 8
  %4218 = load i64, i64* %RAX.i1226, align 8
  %4219 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4220 = trunc i64 %4218 to i32
  %4221 = and i32 %4220, 255
  %4222 = tail call i32 @llvm.ctpop.i32(i32 %4221)
  %4223 = trunc i32 %4222 to i8
  %4224 = and i8 %4223, 1
  %4225 = xor i8 %4224, 1
  store i8 %4225, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4226 = icmp eq i64 %4218, 0
  %4227 = zext i1 %4226 to i8
  store i8 %4227, i8* %30, align 1
  %4228 = lshr i64 %4218, 63
  %4229 = trunc i64 %4228 to i8
  store i8 %4229, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v637 = select i1 %4226, i64 10, i64 15
  %4230 = add i64 %4219, %.v637
  store i64 %4230, i64* %3, align 8
  br i1 %4226, label %block_41f7a9, label %block_.L_41f7ae

block_41f7a9:                                     ; preds = %block_.L_41f785
  %4231 = add i64 %4230, 309
  br label %block_.L_41f8de

block_.L_41f7ae:                                  ; preds = %block_.L_41f785
  %4232 = add i64 %4230, ptrtoint (%G_0x34f72__rip__type* @G_0x34f72__rip_ to i64)
  %4233 = add i64 %4230, 8
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to i32*
  %4235 = load i32, i32* %4234, align 4
  store i32 %4235, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %4236 = load i64, i64* %RBP.i, align 8
  %4237 = add i64 %4236, -552
  %4238 = add i64 %4230, 15
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4237 to i64*
  %4240 = load i64, i64* %4239, align 8
  store i64 %4240, i64* %RDI.i535, align 8
  %4241 = add i64 %4230, 8146
  %4242 = add i64 %4230, 20
  %4243 = load i64, i64* %6, align 8
  %4244 = add i64 %4243, -8
  %4245 = inttoptr i64 %4244 to i64*
  store i64 %4242, i64* %4245, align 8
  store i64 %4244, i64* %6, align 8
  store i64 %4241, i64* %3, align 8
  %call2_41f7bd = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %4241, %struct.Memory* %call2_41f793)
  %4246 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDI.i535, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i759, align 8
  %4247 = load i64, i64* %RBP.i, align 8
  %4248 = add i64 %4247, -32
  %4249 = add i64 %4246, 18
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i64*
  %4251 = load i64, i64* %4250, align 8
  store i64 %4251, i64* %RCX.i1684, align 8
  %4252 = add i64 %4251, 208
  %4253 = add i64 %4246, 25
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4252 to i64*
  %4255 = load i64, i64* %4254, align 8
  store i64 %4255, i64* %RCX.i1684, align 8
  %4256 = add i64 %4247, -564
  %4257 = add i64 %4246, 32
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i32*
  %4259 = load i32, i32* %4258, align 4
  %4260 = sext i32 %4259 to i64
  store i64 %4260, i64* %RDX.i1259, align 8
  %4261 = shl nsw i64 %4260, 2
  %4262 = add i64 %4261, %4255
  %4263 = add i64 %4246, 37
  store i64 %4263, i64* %3, align 8
  %4264 = load <2 x float>, <2 x float>* %188, align 1
  %4265 = extractelement <2 x float> %4264, i32 0
  %4266 = inttoptr i64 %4262 to float*
  store float %4265, float* %4266, align 4
  %4267 = load i64, i64* %3, align 8
  %4268 = add i64 %4267, -123271
  %4269 = add i64 %4267, 5
  %4270 = load i64, i64* %6, align 8
  %4271 = add i64 %4270, -8
  %4272 = inttoptr i64 %4271 to i64*
  store i64 %4269, i64* %4272, align 8
  store i64 %4271, i64* %6, align 8
  store i64 %4268, i64* %3, align 8
  %call2_41f7e7 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %4268, %struct.Memory* %call2_41f7bd)
  %4273 = load i64, i64* %RBP.i, align 8
  %4274 = add i64 %4273, -552
  %4275 = load i64, i64* %RAX.i1226, align 8
  %4276 = load i64, i64* %3, align 8
  %4277 = add i64 %4276, 7
  store i64 %4277, i64* %3, align 8
  %4278 = inttoptr i64 %4274 to i64*
  store i64 %4275, i64* %4278, align 8
  %4279 = load i64, i64* %RAX.i1226, align 8
  %4280 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4281 = trunc i64 %4279 to i32
  %4282 = and i32 %4281, 255
  %4283 = tail call i32 @llvm.ctpop.i32(i32 %4282)
  %4284 = trunc i32 %4283 to i8
  %4285 = and i8 %4284, 1
  %4286 = xor i8 %4285, 1
  store i8 %4286, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4287 = icmp eq i64 %4279, 0
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %30, align 1
  %4289 = lshr i64 %4279, 63
  %4290 = trunc i64 %4289 to i8
  store i8 %4290, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v638 = select i1 %4287, i64 10, i64 15
  %4291 = add i64 %4280, %.v638
  store i64 %4291, i64* %3, align 8
  br i1 %4287, label %block_41f7fd, label %block_.L_41f802

block_41f7fd:                                     ; preds = %block_.L_41f7ae
  %4292 = add i64 %4291, 225
  br label %block_.L_41f8de

block_.L_41f802:                                  ; preds = %block_.L_41f7ae
  %4293 = add i64 %4291, ptrtoint (%G_0x34f1e__rip__type* @G_0x34f1e__rip_ to i64)
  %4294 = add i64 %4291, 8
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to i32*
  %4296 = load i32, i32* %4295, align 4
  store i32 %4296, i32* %189, align 1
  store float 0.000000e+00, float* %190, align 1
  store float 0.000000e+00, float* %191, align 1
  store float 0.000000e+00, float* %192, align 1
  %4297 = load i64, i64* %RBP.i, align 8
  %4298 = add i64 %4297, -552
  %4299 = add i64 %4291, 15
  store i64 %4299, i64* %3, align 8
  %4300 = inttoptr i64 %4298 to i64*
  %4301 = load i64, i64* %4300, align 8
  store i64 %4301, i64* %RDI.i535, align 8
  %4302 = add i64 %4291, 8062
  %4303 = add i64 %4291, 20
  %4304 = load i64, i64* %6, align 8
  %4305 = add i64 %4304, -8
  %4306 = inttoptr i64 %4305 to i64*
  store i64 %4303, i64* %4306, align 8
  store i64 %4305, i64* %6, align 8
  store i64 %4302, i64* %3, align 8
  %call2_41f811 = tail call %struct.Memory* @sub_421780.ascii2prob(%struct.State* nonnull %0, i64 %4302, %struct.Memory* %call2_41f7e7)
  %4307 = load i64, i64* %RBP.i, align 8
  %4308 = add i64 %4307, -32
  %4309 = load i64, i64* %3, align 8
  %4310 = add i64 %4309, 4
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4308 to i64*
  %4312 = load i64, i64* %4311, align 8
  store i64 %4312, i64* %RDI.i535, align 8
  %4313 = add i64 %4312, 216
  %4314 = add i64 %4309, 11
  store i64 %4314, i64* %3, align 8
  %4315 = inttoptr i64 %4313 to i64*
  %4316 = load i64, i64* %4315, align 8
  store i64 %4316, i64* %RDI.i535, align 8
  %4317 = add i64 %4307, -564
  %4318 = add i64 %4309, 18
  store i64 %4318, i64* %3, align 8
  %4319 = inttoptr i64 %4317 to i32*
  %4320 = load i32, i32* %4319, align 4
  %4321 = sext i32 %4320 to i64
  store i64 %4321, i64* %RAX.i1226, align 8
  %4322 = shl nsw i64 %4321, 2
  %4323 = add i64 %4322, %4316
  %4324 = add i64 %4309, 23
  store i64 %4324, i64* %3, align 8
  %4325 = load <2 x float>, <2 x float>* %188, align 1
  %4326 = extractelement <2 x float> %4325, i32 0
  %4327 = inttoptr i64 %4323 to float*
  store float %4326, float* %4327, align 4
  %4328 = load i64, i64* %RBP.i, align 8
  %4329 = add i64 %4328, -564
  %4330 = load i64, i64* %3, align 8
  %4331 = add i64 %4330, 6
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4329 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = add i32 %4333, 1
  %4335 = zext i32 %4334 to i64
  store i64 %4335, i64* %RAX.i1226, align 8
  %4336 = icmp eq i32 %4333, -1
  %4337 = icmp eq i32 %4334, 0
  %4338 = or i1 %4336, %4337
  %4339 = zext i1 %4338 to i8
  store i8 %4339, i8* %14, align 1
  %4340 = and i32 %4334, 255
  %4341 = tail call i32 @llvm.ctpop.i32(i32 %4340)
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  %4344 = xor i8 %4343, 1
  store i8 %4344, i8* %21, align 1
  %4345 = xor i32 %4334, %4333
  %4346 = lshr i32 %4345, 4
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  store i8 %4348, i8* %27, align 1
  %4349 = zext i1 %4337 to i8
  store i8 %4349, i8* %30, align 1
  %4350 = lshr i32 %4334, 31
  %4351 = trunc i32 %4350 to i8
  store i8 %4351, i8* %33, align 1
  %4352 = lshr i32 %4333, 31
  %4353 = xor i32 %4350, %4352
  %4354 = add nuw nsw i32 %4353, %4350
  %4355 = icmp eq i32 %4354, 2
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %39, align 1
  %4357 = add i64 %4330, 15
  store i64 %4357, i64* %3, align 8
  store i32 %4334, i32* %4332, align 4
  %4358 = load i64, i64* %3, align 8
  %4359 = add i64 %4358, -1181
  store i64 %4359, i64* %3, align 8
  br label %block_.L_41f39f

block_.L_41f846:                                  ; preds = %block_.L_41f846.preheader, %block_.L_41f893
  %4360 = phi i64 [ %.pre577, %block_.L_41f893 ], [ %3299, %block_.L_41f846.preheader ]
  %storemerge114 = phi i64 [ %4408, %block_.L_41f893 ], [ %3340, %block_.L_41f846.preheader ]
  %MEMORY.42 = phi %struct.Memory* [ %4394, %block_.L_41f893 ], [ %MEMORY.33, %block_.L_41f846.preheader ]
  store i64 512, i64* %RSI.i759, align 8
  %4361 = add i64 %4360, -544
  store i64 %4361, i64* %RDI.i535, align 8
  %4362 = add i64 %4360, -16
  %4363 = add i64 %storemerge114, 16
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i64*
  %4365 = load i64, i64* %4364, align 8
  store i64 %4365, i64* %RAX.i1226, align 8
  %4366 = add i64 %storemerge114, 19
  store i64 %4366, i64* %3, align 8
  %4367 = inttoptr i64 %4365 to i64*
  %4368 = load i64, i64* %4367, align 8
  store i64 %4368, i64* %RDX.i1259, align 8
  %4369 = add i64 %storemerge114, -123654
  %4370 = add i64 %storemerge114, 24
  %4371 = load i64, i64* %6, align 8
  %4372 = add i64 %4371, -8
  %4373 = inttoptr i64 %4372 to i64*
  store i64 %4370, i64* %4373, align 8
  store i64 %4372, i64* %6, align 8
  store i64 %4369, i64* %3, align 8
  %call2_41f859 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %4369, %struct.Memory* %MEMORY.42)
  %4374 = load i64, i64* %RAX.i1226, align 8
  %4375 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4376 = trunc i64 %4374 to i32
  %4377 = and i32 %4376, 255
  %4378 = tail call i32 @llvm.ctpop.i32(i32 %4377)
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  %4381 = xor i8 %4380, 1
  store i8 %4381, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4382 = icmp eq i64 %4374, 0
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %30, align 1
  %4384 = lshr i64 %4374, 63
  %4385 = trunc i64 %4384 to i8
  store i8 %4385, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v621 = select i1 %4382, i64 58, i64 10
  %4386 = add i64 %4375, %.v621
  store i64 %4386, i64* %3, align 8
  br i1 %4382, label %block_.L_41f898.loopexit, label %block_41f868

block_41f868:                                     ; preds = %block_.L_41f846
  store i64 ptrtoint (%G__0x45a381_type* @G__0x45a381 to i64), i64* %RSI.i759, align 8
  store i64 2, i64* %RAX.i1226, align 8
  store i64 2, i64* %RDX.i1259, align 8
  %4387 = load i64, i64* %RBP.i, align 8
  %4388 = add i64 %4387, -544
  store i64 %4388, i64* %RDI.i535, align 8
  %4389 = add i64 %4386, -124056
  %4390 = add i64 %4386, 29
  %4391 = load i64, i64* %6, align 8
  %4392 = add i64 %4391, -8
  %4393 = inttoptr i64 %4392 to i64*
  store i64 %4390, i64* %4393, align 8
  store i64 %4392, i64* %6, align 8
  store i64 %4389, i64* %3, align 8
  %4394 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.42)
  %4395 = load i32, i32* %EAX.i886, align 4
  %4396 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4397 = and i32 %4395, 255
  %4398 = tail call i32 @llvm.ctpop.i32(i32 %4397)
  %4399 = trunc i32 %4398 to i8
  %4400 = and i8 %4399, 1
  %4401 = xor i8 %4400, 1
  store i8 %4401, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4402 = icmp eq i32 %4395, 0
  %4403 = zext i1 %4402 to i8
  store i8 %4403, i8* %30, align 1
  %4404 = lshr i32 %4395, 31
  %4405 = trunc i32 %4404 to i8
  store i8 %4405, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v622 = select i1 %4402, i64 9, i64 14
  %4406 = add i64 %4396, %.v622
  store i64 %4406, i64* %3, align 8
  br i1 %4402, label %block_41f88e, label %block_.L_41f893

block_41f88e:                                     ; preds = %block_41f868
  %4407 = add i64 %4406, 10
  store i64 %4407, i64* %3, align 8
  br label %block_.L_41f898

block_.L_41f893:                                  ; preds = %block_41f868
  %4408 = add i64 %4406, -77
  %4409 = add i64 %4406, 5
  store i64 %4409, i64* %3, align 8
  %.pre577 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41f846

block_.L_41f898.loopexit:                         ; preds = %block_.L_41f846
  br label %block_.L_41f898

block_.L_41f898:                                  ; preds = %block_.L_41f898.loopexit, %block_41f88e
  %4410 = phi i64 [ %4407, %block_41f88e ], [ %4386, %block_.L_41f898.loopexit ]
  %MEMORY.43 = phi %struct.Memory* [ %4394, %block_41f88e ], [ %MEMORY.42, %block_.L_41f898.loopexit ]
  %4411 = load i64, i64* %RBP.i, align 8
  %4412 = add i64 %4411, -32
  %4413 = add i64 %4410, 4
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i64*
  %4415 = load i64, i64* %4414, align 8
  store i64 %4415, i64* %RDI.i535, align 8
  %4416 = add i64 %4410, 82840
  %4417 = add i64 %4410, 9
  %4418 = load i64, i64* %6, align 8
  %4419 = add i64 %4418, -8
  %4420 = inttoptr i64 %4419 to i64*
  store i64 %4417, i64* %4420, align 8
  store i64 %4419, i64* %6, align 8
  store i64 %4416, i64* %3, align 8
  %call2_41f89c = tail call %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* nonnull %0, i64 %4416, %struct.Memory* %MEMORY.43)
  %4421 = load i64, i64* %RBP.i, align 8
  %4422 = add i64 %4421, -32
  %4423 = load i64, i64* %3, align 8
  %4424 = add i64 %4423, 4
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4422 to i64*
  %4426 = load i64, i64* %4425, align 8
  store i64 %4426, i64* %RDI.i535, align 8
  %4427 = add i64 %4426, 456
  %4428 = add i64 %4423, 10
  store i64 %4428, i64* %3, align 8
  %4429 = inttoptr i64 %4427 to i32*
  %4430 = load i32, i32* %4429, align 4
  %4431 = or i32 %4430, 32
  %4432 = zext i32 %4431 to i64
  store i64 %4432, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  %4433 = and i32 %4431, 255
  %4434 = tail call i32 @llvm.ctpop.i32(i32 %4433)
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = xor i8 %4436, 1
  store i8 %4437, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %4438 = lshr i32 %4430, 31
  %4439 = trunc i32 %4438 to i8
  store i8 %4439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4440 = add i64 %4423, 19
  store i64 %4440, i64* %3, align 8
  store i32 %4431, i32* %4429, align 4
  %4441 = load i64, i64* %RBP.i, align 8
  %4442 = add i64 %4441, -32
  %4443 = load i64, i64* %3, align 8
  %4444 = add i64 %4443, 4
  store i64 %4444, i64* %3, align 8
  %4445 = inttoptr i64 %4442 to i64*
  %4446 = load i64, i64* %4445, align 8
  store i64 %4446, i64* %RDI.i535, align 8
  %4447 = add i64 %4446, 456
  %4448 = add i64 %4443, 10
  store i64 %4448, i64* %3, align 8
  %4449 = inttoptr i64 %4447 to i32*
  %4450 = load i32, i32* %4449, align 4
  %4451 = and i32 %4450, -2
  %4452 = zext i32 %4451 to i64
  store i64 %4452, i64* %RAX.i1226, align 8
  store i8 0, i8* %14, align 1
  %4453 = and i32 %4450, 254
  %4454 = tail call i32 @llvm.ctpop.i32(i32 %4453)
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = xor i8 %4456, 1
  store i8 %4457, i8* %21, align 1
  %4458 = icmp ult i32 %4450, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %30, align 1
  %4460 = lshr i32 %4450, 31
  %4461 = trunc i32 %4460 to i8
  store i8 %4461, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4462 = add i64 %4443, 19
  store i64 %4462, i64* %3, align 8
  store i32 %4451, i32* %4449, align 4
  %4463 = load i64, i64* %RBP.i, align 8
  %4464 = add i64 %4463, -32
  %4465 = load i64, i64* %3, align 8
  %4466 = add i64 %4465, 4
  store i64 %4466, i64* %3, align 8
  %4467 = inttoptr i64 %4464 to i64*
  %4468 = load i64, i64* %4467, align 8
  store i64 %4468, i64* %RDI.i535, align 8
  %4469 = add i64 %4463, -24
  %4470 = add i64 %4465, 8
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4469 to i64*
  %4472 = load i64, i64* %4471, align 8
  store i64 %4472, i64* %RCX.i1684, align 8
  %4473 = add i64 %4465, 11
  store i64 %4473, i64* %3, align 8
  %4474 = inttoptr i64 %4472 to i64*
  store i64 %4468, i64* %4474, align 8
  %4475 = load i64, i64* %RBP.i, align 8
  %4476 = add i64 %4475, -4
  %4477 = load i64, i64* %3, align 8
  %4478 = add i64 %4477, 7
  store i64 %4478, i64* %3, align 8
  %4479 = inttoptr i64 %4476 to i32*
  store i32 1, i32* %4479, align 4
  %4480 = load i64, i64* %3, align 8
  %4481 = add i64 %4480, 43
  store i64 %4481, i64* %3, align 8
  br label %block_.L_41f904

block_.L_41f8de:                                  ; preds = %block_41f7fd, %block_41f7a9, %block_41f71b, %block_41f6aa, %block_41f67e, %block_41f5fc, %block_41f56f, %block_41f543, %block_41f4fe, %block_41f466, %block_41f420, %block_41f403, %block_41f3d7, %block_41f340, %block_41f317, %block_41f2d2, %block_41f2a6, %block_41f27f, %block_41f249, %block_41f236, %block_41f223, %block_41f211, %block_41f102, %block_41f0bd, %block_41efde, %block_41eee0, %block_41ee97, %block_41edb9, %block_41ed78, %block_41ece9, %block_41eca4, %block_41ec18, %block_41ebd6, %block_41eb4a, %block_41eb08, %block_.L_41e79e, %block_41e564
  %.sink = phi i64 [ %4292, %block_41f7fd ], [ %4231, %block_41f7a9 ], [ %4089, %block_41f71b ], [ %4004, %block_41f6aa ], [ %3977, %block_41f67e ], [ %3859, %block_41f5fc ], [ %3715, %block_41f56f ], [ %3688, %block_41f543 ], [ %3628, %block_41f4fe ], [ %3501, %block_41f466 ], [ %3438, %block_41f420 ], [ %3394, %block_41f403 ], [ %3367, %block_41f3d7 ], [ %3222, %block_41f340 ], [ %3197, %block_41f317 ], [ %3150, %block_41f2d2 ], [ %3123, %block_41f2a6 ], [ %3095, %block_41f27f ], [ %3056, %block_41f249 ], [ %3044, %block_41f236 ], [ %3025, %block_41f223 ], [ %2995, %block_41f211 ], [ %2833, %block_41f102 ], [ %2779, %block_41f0bd ], [ %2609, %block_41efde ], [ %2397, %block_41eee0 ], [ %2346, %block_41ee97 ], [ %2115, %block_41edb9 ], [ %2032, %block_41ed78 ], [ %1910, %block_41ece9 ], [ %1856, %block_41eca4 ], [ %1734, %block_41ec18 ], [ %1680, %block_41ebd6 ], [ %1558, %block_41eb4a ], [ %1504, %block_41eb08 ], [ %680, %block_.L_41e79e ], [ %137, %block_41e564 ]
  %MEMORY.44 = phi %struct.Memory* [ %call2_41f7e7, %block_41f7fd ], [ %call2_41f793, %block_41f7a9 ], [ %call2_41f694, %block_41f71b ], [ %call2_41f694, %block_41f6aa ], [ %call2_41f66f, %block_41f67e ], [ %call2_41f559, %block_41f5fc ], [ %call2_41f559, %block_41f56f ], [ %call2_41f534, %block_41f543 ], [ %call2_41f4e8, %block_41f4fe ], [ %3405, %block_41f466 ], [ %3405, %block_41f420 ], [ %MEMORY.33, %block_41f403 ], [ %MEMORY.33, %block_41f3d7 ], [ %call2_41f32a, %block_41f340 ], [ %call2_41f301, %block_41f317 ], [ %call2_41f2bc, %block_41f2d2 ], [ %call2_41f297, %block_41f2a6 ], [ %call2_41f270, %block_41f27f ], [ %call2_41f203, %block_41f249 ], [ %call2_41f203, %block_41f236 ], [ %call2_41f203, %block_41f223 ], [ %call2_41f203, %block_41f211 ], [ %call2_41f0ec, %block_41f102 ], [ %call2_41f0a7, %block_41f0bd ], [ %call2_41efa7, %block_41efde ], [ %call2_41eeca, %block_41eee0 ], [ %call2_41ee81, %block_41ee97 ], [ %call2_41ed62, %block_41edb9 ], [ %call2_41ed62, %block_41ed78 ], [ %call2_41ecd3, %block_41ece9 ], [ %call2_41ec8e, %block_41eca4 ], [ %call2_41ec02, %block_41ec18 ], [ %call2_41ebc0, %block_41ebd6 ], [ %call2_41eb34, %block_41eb4a ], [ %call2_41eaf2, %block_41eb08 ], [ %661, %block_.L_41e79e ], [ %124, %block_41e564 ]
  %4482 = load i64, i64* %RBP.i, align 8
  %4483 = add i64 %4482, -32
  %4484 = add i64 %.sink, 5
  store i64 %4484, i64* %3, align 8
  %4485 = inttoptr i64 %4483 to i64*
  %4486 = load i64, i64* %4485, align 8
  store i8 0, i8* %14, align 1
  %4487 = trunc i64 %4486 to i32
  %4488 = and i32 %4487, 255
  %4489 = tail call i32 @llvm.ctpop.i32(i32 %4488)
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  store i8 %4492, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4493 = icmp eq i64 %4486, 0
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %30, align 1
  %4495 = lshr i64 %4486, 63
  %4496 = trunc i64 %4495 to i8
  store i8 %4496, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v589 = select i1 %4493, i64 20, i64 11
  %4497 = add i64 %.sink, %.v589
  store i64 %4497, i64* %3, align 8
  br i1 %4493, label %block_.L_41f8f2, label %block_41f8e9

block_41f8e9:                                     ; preds = %block_.L_41f8de
  %4498 = add i64 %4497, 4
  store i64 %4498, i64* %3, align 8
  %4499 = load i64, i64* %4485, align 8
  store i64 %4499, i64* %RDI.i535, align 8
  %4500 = add i64 %4497, 77031
  %4501 = add i64 %4497, 9
  %4502 = load i64, i64* %6, align 8
  %4503 = add i64 %4502, -8
  %4504 = inttoptr i64 %4503 to i64*
  store i64 %4501, i64* %4504, align 8
  store i64 %4503, i64* %6, align 8
  store i64 %4500, i64* %3, align 8
  %call2_41f8ed = tail call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* nonnull %0, i64 %4500, %struct.Memory* %MEMORY.44)
  %.pre578 = load i64, i64* %RBP.i, align 8
  %.pre579 = load i64, i64* %3, align 8
  br label %block_.L_41f8f2

block_.L_41f8f2:                                  ; preds = %block_41f8e9, %block_.L_41f8de
  %4505 = phi i64 [ %4497, %block_.L_41f8de ], [ %.pre579, %block_41f8e9 ]
  %4506 = phi i64 [ %4482, %block_.L_41f8de ], [ %.pre578, %block_41f8e9 ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.44, %block_.L_41f8de ], [ %call2_41f8ed, %block_41f8e9 ]
  %4507 = add i64 %4506, -24
  %4508 = add i64 %4505, 4
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i64*
  %4510 = load i64, i64* %4509, align 8
  store i64 %4510, i64* %RAX.i1226, align 8
  %4511 = add i64 %4505, 11
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i64*
  store i64 0, i64* %4512, align 8
  %4513 = load i64, i64* %RBP.i, align 8
  %4514 = add i64 %4513, -4
  %4515 = load i64, i64* %3, align 8
  %4516 = add i64 %4515, 7
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4514 to i32*
  store i32 1, i32* %4517, align 4
  %.pre580 = load i64, i64* %3, align 8
  br label %block_.L_41f904

block_.L_41f904:                                  ; preds = %block_.L_41f8f2, %block_.L_41f898, %block_.L_41e532
  %RAX.i.pre-phi = phi i64* [ %RAX.i1226, %block_.L_41f8f2 ], [ %RAX.i1226, %block_.L_41f898 ], [ %.pre581.pre-phi, %block_.L_41e532 ]
  %4518 = phi i64 [ %.pre580, %block_.L_41f8f2 ], [ %4481, %block_.L_41f898 ], [ %116, %block_.L_41e532 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.45, %block_.L_41f8f2 ], [ %call2_41f89c, %block_.L_41f898 ], [ %MEMORY.0, %block_.L_41e532 ]
  %4519 = load i64, i64* %RBP.i, align 8
  %4520 = add i64 %4519, -4
  %4521 = add i64 %4518, 3
  store i64 %4521, i64* %3, align 8
  %4522 = inttoptr i64 %4520 to i32*
  %4523 = load i32, i32* %4522, align 4
  %4524 = zext i32 %4523 to i64
  store i64 %4524, i64* %RAX.i.pre-phi, align 8
  %4525 = load i64, i64* %6, align 8
  %4526 = add i64 %4525, 656
  store i64 %4526, i64* %6, align 8
  %4527 = icmp ugt i64 %4525, -657
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %14, align 1
  %4529 = trunc i64 %4526 to i32
  %4530 = and i32 %4529, 255
  %4531 = tail call i32 @llvm.ctpop.i32(i32 %4530)
  %4532 = trunc i32 %4531 to i8
  %4533 = and i8 %4532, 1
  %4534 = xor i8 %4533, 1
  store i8 %4534, i8* %21, align 1
  %4535 = xor i64 %4525, 16
  %4536 = xor i64 %4535, %4526
  %4537 = lshr i64 %4536, 4
  %4538 = trunc i64 %4537 to i8
  %4539 = and i8 %4538, 1
  store i8 %4539, i8* %27, align 1
  %4540 = icmp eq i64 %4526, 0
  %4541 = zext i1 %4540 to i8
  store i8 %4541, i8* %30, align 1
  %4542 = lshr i64 %4526, 63
  %4543 = trunc i64 %4542 to i8
  store i8 %4543, i8* %33, align 1
  %4544 = lshr i64 %4525, 63
  %4545 = xor i64 %4542, %4544
  %4546 = add nuw nsw i64 %4545, %4542
  %4547 = icmp eq i64 %4546, 2
  %4548 = zext i1 %4547 to i8
  store i8 %4548, i8* %39, align 1
  %4549 = add i64 %4518, 11
  store i64 %4549, i64* %3, align 8
  %4550 = add i64 %4525, 664
  %4551 = inttoptr i64 %4526 to i64*
  %4552 = load i64, i64* %4551, align 8
  store i64 %4552, i64* %RBP.i, align 8
  store i64 %4550, i64* %6, align 8
  %4553 = add i64 %4518, 12
  store i64 %4553, i64* %3, align 8
  %4554 = inttoptr i64 %4550 to i64*
  %4555 = load i64, i64* %4554, align 8
  store i64 %4555, i64* %3, align 8
  %4556 = add i64 %4525, 672
  store i64 %4556, i64* %6, align 8
  ret %struct.Memory* %MEMORY.46
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
define %struct.Memory* @routine_jne_.L_41e532(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_41e53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4577c5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4577c5_type* @G__0x4577c5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_41e569(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f8de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41f1fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45795a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45795a_type* @G__0x45795a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e5e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -7
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
define %struct.Memory* @routine_jmpq_.L_41f1f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457960___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457960_type* @G__0x457960 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e622(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Plan7SetAccession(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f1f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457966___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457966_type* @G__0x457966 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e664(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Plan7SetDescription(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f1ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45796c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45796c_type* @G__0x45796c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e6a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -556
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457972___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457972_type* @G__0x457972 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e6ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x38__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457978___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457978_type* @G__0x457978 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e81c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457947___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457947_type* @G__0x457947 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41e762(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x23c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e7a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45794d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45794d_type* @G__0x45794d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -7
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
define %struct.Memory* @routine_jne_.L_41e79e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x23c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e7a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41e7c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x23c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
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
define %struct.Memory* @routine_jmpq_.L_41e817(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x23c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
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
define %struct.Memory* @routine_je_.L_41e812(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_movq_MINUS0x248__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_jmpq_.L_41f1de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45797e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45797e_type* @G__0x45797e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e86f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x21a__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -538
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_toupper(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x59___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -89
  %8 = icmp ult i32 %4, 89
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
define %struct.Memory* @routine_jne_.L_41e86a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f1d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457984___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457984_type* @G__0x457984 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e8c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41e8bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f1d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45798a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45798a_type* @G__0x45798a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e918(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41e913(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 256
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
define %struct.Memory* @routine_jmpq_.L_41f1cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457990___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457990_type* @G__0x457990 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ea5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.StringChop(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_jne_.L_41e980(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ea56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x270___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 624, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x268__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x268__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x270__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x270__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movq_MINUS0x258__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_realloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcat_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x30__rdx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x280__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -640
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457996___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457996_type* @G__0x457996 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41eab4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45799c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45799c_type* @G__0x45799c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41eb82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strtok_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41eb0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x228__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atof_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x70__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 112
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
define %struct.Memory* @routine_jne_.L_41eb4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x74__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 116
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
define %struct.Memory* @routine_movl_0x1c8__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_orl__0x400___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1024
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x1c8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579a2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579a2_type* @G__0x4579a2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ec50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ebdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x78__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 120
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
define %struct.Memory* @routine_jne_.L_41ec1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x7c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 124
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x800___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 2048
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41f1bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579a8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579a8_type* @G__0x4579a8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ed24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41eca9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 128
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
define %struct.Memory* @routine_jne_.L_41ecee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 132
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 4096
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41f1b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579ae___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579ae_type* @G__0x4579ae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ee43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ed7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_41ee3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_jge_.L_41ee25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_41edbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x35962__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x35962__rip__type* @G_0x35962__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xac___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 172
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -173
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
define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_movss__xmm0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x238__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -568
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ed9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ee2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
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
define %struct.Memory* @routine_movl__eax__MINUS0x234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -564
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ed87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579b4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579b4_type* @G__0x4579b4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ef4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ee9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x35884__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x35884__rip__type* @G_0x35884__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__0x130__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41eee5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x3583b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3583b__rip__type* @G_0x3583b__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 304
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x130__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 304
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x284__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -644
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x288__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -648
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
define %struct.Memory* @routine_movss_MINUS0x284__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -644
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %17 = fadd float %15, %16
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
define %struct.Memory* @routine_movss_MINUS0x288__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -648
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
define %struct.Memory* @routine_jmpq_.L_41f1ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579ba___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579ba_type* @G__0x4579ba to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ef8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4579c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579c0_type* @G__0x4579c0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jge_.L_41f04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41efe3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x357f5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x357f5__rip__type* @G_0x357f5__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xe0__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41efbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f1a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579e9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579e9_type* @G__0x4579e9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x80___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 128
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x1c8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f0c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x1c0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 448
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
define %struct.Memory* @routine_jne_.L_41f107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x1c4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 452
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
define %struct.Memory* @routine_jmpq_.L_41f1a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579ef___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579ef_type* @G__0x4579ef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f16d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x50__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f19d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4579f5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579f5_type* @G__0x4579f5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f198(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f1fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e57c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_je_.L_41f216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
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
define %struct.Memory* @routine_jge_.L_41f228(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f23b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f24e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x22c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
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
define %struct.Memory* @routine_jne_.L_41f284(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f2ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f2d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x35449__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x35449__rip__type* @G_0x35449__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x230__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -560
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
define %struct.Memory* @routine_jne_.L_41f31c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x353db__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x353db__rip__type* @G_0x353db__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x230__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -560
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
define %struct.Memory* @routine_movl__0x1__MINUS0x234__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_41f841(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f3dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x234__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -564
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
define %struct.Memory* @routine_je_.L_41f425(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41f4c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f46b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
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
define %struct.Memory* @routine_jmpq_.L_41f42f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 8
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
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
define %struct.Memory* @routine_je_.L_41f521(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f503(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41f5a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x228__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
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
define %struct.Memory* @routine_jge_.L_41f65c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41f657(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f601(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f5c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f65c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f683(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f6af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41f6e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_jge_.L_41f785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41f720(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41f76c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34fea__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34fea__rip__type* @G_0x34fea__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x234__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -564
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
define %struct.Memory* @routine_movslq_MINUS0x238__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_movss__xmm0____rax__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_41f771(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f6ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f7ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34f72__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34f72__rip__type* @G_0x34f72__rip_ to i64)
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
define %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41f802(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34f1e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x34f1e__rip__type* @G_0x34f1e__rip_ to i64)
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
define %struct.Memory* @routine_movq_0xd8__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rdi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41f39f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41f846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41f898(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a381___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a381_type* @G__0x45a381 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_41f893(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41f898(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 32
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967294
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_41f8f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
