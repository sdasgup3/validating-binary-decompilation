; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x457852_type = type <{ [8 x i8] }>
%G__0x457899_type = type <{ [8 x i8] }>
%G__0x4578f2_type = type <{ [8 x i8] }>
%G__0x457914_type = type <{ [8 x i8] }>
%G__0x457918_type = type <{ [4 x i8] }>
%G__0x457927_type = type <{ [4 x i8] }>
%G__0x457937_type = type <{ [4 x i8] }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x457852 = global %G__0x457852_type zeroinitializer
@G__0x457899 = global %G__0x457899_type zeroinitializer
@G__0x4578f2 = global %G__0x4578f2_type zeroinitializer
@G__0x457914 = global %G__0x457914_type zeroinitializer
@G__0x457918 = global %G__0x457918_type zeroinitializer
@G__0x457927 = global %G__0x457927_type zeroinitializer
@G__0x457937 = global %G__0x457937_type zeroinitializer
@G__0x45a1f5 = global %G__0x45a1f5_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401660.strtok_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @read_plan9_aschmm(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -616
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 608
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i191 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 512, i64* %RAX.i191, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i230 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -568
  store i64 %41, i64* %RCX.i230, align 8
  %RDI.i316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -24
  %43 = load i64, i64* %RDI.i316, align 8
  %44 = add i64 %10, 26
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -20
  %49 = load i32, i32* %ESI.i, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i435 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -16
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RDX.i435, align 8
  %60 = load i64, i64* %RCX.i230, align 8
  store i64 %60, i64* %RDI.i316, align 8
  %EAX.i531 = bitcast %union.anon* %39 to i32*
  %RSI.i532 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %61 = load i32, i32* %EAX.i531, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RSI.i532, align 8
  %63 = add i64 %56, -127742
  %64 = add i64 %56, 14
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  %call2_420847 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RAX.i191, align 8
  %69 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %29, align 1
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1313 = select i1 %76, i64 10, i64 23
  %80 = add i64 %69, %.v1313
  store i64 %80, i64* %3, align 8
  br i1 %76, label %block_420856, label %block_.L_420863

block_420856:                                     ; preds = %entry
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -8
  %83 = add i64 %80, 8
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 3846
  store i64 %86, i64* %3, align 8
  br label %block_.L_421764

block_.L_420863:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -560
  store i64 %88, i64* %RDI.i316, align 8
  %89 = add i64 %80, -127491
  %90 = add i64 %80, 22
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93, align 8
  store i64 %92, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  %call2_420874 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %89, %struct.Memory* %call2_420847)
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -576
  %96 = load i64, i64* %RAX.i191, align 8
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 7
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %RAX.i191, align 8
  %101 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %102 = trunc i64 %100 to i32
  %103 = and i32 %102, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %108 = icmp eq i64 %100, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %29, align 1
  %110 = lshr i64 %100, 63
  %111 = trunc i64 %110 to i8
  store i8 %111, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1314 = select i1 %108, i64 10, i64 23
  %112 = add i64 %101, %.v1314
  store i64 %112, i64* %3, align 8
  br i1 %108, label %block_42088a, label %block_.L_420897

block_42088a:                                     ; preds = %block_.L_420863
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -8
  %115 = add i64 %112, 8
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  store i64 0, i64* %116, align 8
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 3794
  store i64 %118, i64* %3, align 8
  br label %block_.L_421764

block_.L_420897:                                  ; preds = %block_.L_420863
  %119 = add i64 %112, -127367
  %120 = add i64 %112, 5
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %call2_420897 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %119, %struct.Memory* %call2_420874)
  %124 = bitcast %union.anon* %39 to i64**
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 3
  store i64 %127, i64* %3, align 8
  %128 = load i64, i64* %125, align 8
  store i64 %128, i64* %RAX.i191, align 8
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -576
  %131 = add i64 %126, 10
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RCX.i230, align 8
  %134 = add i64 %126, 13
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i8*
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i64
  %138 = and i64 %137, 4294967295
  store i64 %138, i64* %RDX.i435, align 8
  %139 = sext i8 %136 to i64
  store i64 %139, i64* %RCX.i230, align 8
  %140 = shl nsw i64 %139, 1
  %141 = add i64 %128, %140
  %142 = add i64 %126, 20
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i16*
  %144 = load i16, i16* %143, align 2
  %145 = and i16 %144, 2048
  %146 = zext i16 %145 to i64
  store i64 %146, i64* %RDX.i435, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit1307 = lshr exact i16 %145, 11
  %147 = trunc i16 %.lobit1307 to i8
  %148 = xor i8 %147, 1
  store i8 %148, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %149 = icmp eq i8 %148, 0
  %.v1315 = select i1 %149, i64 48, i64 35
  %150 = add i64 %126, %.v1315
  store i64 %150, i64* %3, align 8
  br i1 %149, label %block_.L_4208cc, label %block_4208bf

block_4208bf:                                     ; preds = %block_.L_420897
  %151 = add i64 %129, -8
  %152 = add i64 %150, 8
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  store i64 0, i64* %153, align 8
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 3741
  store i64 %155, i64* %3, align 8
  br label %block_.L_421764

block_.L_4208cc:                                  ; preds = %block_.L_420897
  %156 = add i64 %150, 7
  store i64 %156, i64* %3, align 8
  %157 = load i64, i64* %132, align 8
  store i64 %157, i64* %RDI.i316, align 8
  %158 = add i64 %150, -127532
  %159 = add i64 %150, 12
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %6, align 8
  store i64 %158, i64* %3, align 8
  %163 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_420897)
  %164 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -560
  store i64 %166, i64* %RDI.i316, align 8
  %167 = add i64 %165, -36
  %168 = load i32, i32* %EAX.i531, align 4
  %169 = add i64 %164, 15
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i32*
  store i32 %168, i32* %170, align 4
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -16
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RDX.i435, align 8
  %177 = add i64 %173, -127911
  %178 = add i64 %173, 9
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %178, i64* %181, align 8
  store i64 %180, i64* %6, align 8
  store i64 %177, i64* %3, align 8
  %call2_4208eb = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %177, %struct.Memory* %163)
  %182 = load i64, i64* %RAX.i191, align 8
  %183 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %184 = trunc i64 %182 to i32
  %185 = and i32 %184, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %190 = icmp eq i64 %182, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %29, align 1
  %192 = lshr i64 %182, 63
  %193 = trunc i64 %192 to i8
  store i8 %193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1316 = select i1 %190, i64 10, i64 23
  %194 = add i64 %183, %.v1316
  store i64 %194, i64* %3, align 8
  br i1 %190, label %block_4208fa, label %block_.L_420907

block_4208fa:                                     ; preds = %block_.L_4208cc
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -8
  %197 = add i64 %194, 8
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  store i64 0, i64* %198, align 8
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 3682
  store i64 %200, i64* %3, align 8
  br label %block_.L_421764

block_.L_420907:                                  ; preds = %block_.L_4208cc
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -560
  store i64 %202, i64* %RDI.i316, align 8
  %203 = add i64 %194, -127655
  %204 = add i64 %194, 22
  %205 = load i64, i64* %6, align 8
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207, align 8
  store i64 %206, i64* %6, align 8
  store i64 %203, i64* %3, align 8
  %call2_420918 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %203, %struct.Memory* %call2_4208eb)
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -576
  %210 = load i64, i64* %RAX.i191, align 8
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %209 to i64*
  store i64 %210, i64* %213, align 8
  %214 = load i64, i64* %RAX.i191, align 8
  %215 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %216 = trunc i64 %214 to i32
  %217 = and i32 %216, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %222 = icmp eq i64 %214, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %29, align 1
  %224 = lshr i64 %214, 63
  %225 = trunc i64 %224 to i8
  store i8 %225, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1317 = select i1 %222, i64 10, i64 23
  %226 = add i64 %215, %.v1317
  store i64 %226, i64* %3, align 8
  br i1 %222, label %block_42092e, label %block_.L_42093b

block_42092e:                                     ; preds = %block_.L_420907
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -8
  %229 = add i64 %226, 8
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  store i64 0, i64* %230, align 8
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 3630
  store i64 %232, i64* %3, align 8
  br label %block_.L_421764

block_.L_42093b:                                  ; preds = %block_.L_420907
  %233 = add i64 %226, -127531
  %234 = add i64 %226, 5
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  %call2_42093b = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %233, %struct.Memory* %call2_420918)
  %238 = load i64*, i64** %124, align 8
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 3
  store i64 %240, i64* %3, align 8
  %241 = load i64, i64* %238, align 8
  store i64 %241, i64* %RAX.i191, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -576
  %244 = add i64 %239, 10
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RCX.i230, align 8
  %247 = add i64 %239, 13
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i8*
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i64
  %251 = and i64 %250, 4294967295
  store i64 %251, i64* %RDX.i435, align 8
  %252 = sext i8 %249 to i64
  store i64 %252, i64* %RCX.i230, align 8
  %253 = shl nsw i64 %252, 1
  %254 = add i64 %241, %253
  %255 = add i64 %239, 20
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i16*
  %257 = load i16, i16* %256, align 2
  %258 = and i16 %257, 2048
  %259 = zext i16 %258 to i64
  store i64 %259, i64* %RDX.i435, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit1308 = lshr exact i16 %258, 11
  %260 = trunc i16 %.lobit1308 to i8
  %261 = xor i8 %260, 1
  store i8 %261, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %262 = icmp eq i8 %261, 0
  %.v1318 = select i1 %262, i64 48, i64 35
  %263 = add i64 %239, %.v1318
  store i64 %263, i64* %3, align 8
  br i1 %262, label %block_.L_420970, label %block_420963

block_420963:                                     ; preds = %block_.L_42093b
  %264 = add i64 %242, -8
  %265 = add i64 %263, 8
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  store i64 0, i64* %266, align 8
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 3577
  store i64 %268, i64* %3, align 8
  br label %block_.L_421764

block_.L_420970:                                  ; preds = %block_.L_42093b
  %269 = add i64 %263, 7
  store i64 %269, i64* %3, align 8
  %270 = load i64, i64* %245, align 8
  store i64 %270, i64* %RDI.i316, align 8
  %271 = add i64 %263, -127696
  %272 = add i64 %263, 12
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275, align 8
  store i64 %274, i64* %6, align 8
  store i64 %271, i64* %3, align 8
  %276 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_42093b)
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -588
  %279 = load i32, i32* %EAX.i531, align 4
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 6
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %282, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -588
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 7
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, -4
  %290 = icmp ult i32 %288, 4
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %14, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %21, align 1
  %297 = xor i32 %289, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %26, align 1
  %301 = icmp eq i32 %289, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %29, align 1
  %303 = lshr i32 %289, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %32, align 1
  %305 = lshr i32 %288, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %38, align 1
  %.v1319 = select i1 %301, i64 13, i64 28
  %310 = add i64 %285, %.v1319
  store i64 %310, i64* %3, align 8
  br i1 %301, label %block_42098f, label %block_.L_42099e

block_42098f:                                     ; preds = %block_.L_420970
  %311 = add i64 %283, -592
  %312 = add i64 %310, 10
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 2, i32* %313, align 4
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 61
  br label %block_.L_4209d6

block_.L_42099e:                                  ; preds = %block_.L_420970
  %316 = add i64 %310, 7
  store i64 %316, i64* %3, align 8
  %317 = load i32, i32* %287, align 4
  %318 = add i32 %317, -20
  %319 = icmp ult i32 %317, 20
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %14, align 1
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  %326 = xor i32 %317, 16
  %327 = xor i32 %326, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %26, align 1
  %331 = icmp eq i32 %318, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %29, align 1
  %333 = lshr i32 %318, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %32, align 1
  %335 = lshr i32 %317, 31
  %336 = xor i32 %333, %335
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %38, align 1
  %.v1320 = select i1 %331, i64 13, i64 28
  %340 = add i64 %310, %.v1320
  store i64 %340, i64* %3, align 8
  br i1 %331, label %block_4209ab, label %block_.L_4209ba

block_4209ab:                                     ; preds = %block_.L_42099e
  %341 = add i64 %283, -592
  %342 = add i64 %340, 10
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  store i32 3, i32* %343, align 4
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 28
  store i64 %345, i64* %3, align 8
  br label %block_.L_4209d1

block_.L_4209ba:                                  ; preds = %block_.L_42099e
  store i64 ptrtoint (%G__0x457852_type* @G__0x457852 to i64), i64* %RDI.i316, align 8
  %346 = add i64 %340, 16
  store i64 %346, i64* %3, align 8
  %347 = load i32, i32* %287, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RSI.i532, align 8
  %AL.i1364 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1364, align 1
  %349 = add i64 %340, 122966
  %350 = add i64 %340, 23
  %351 = load i64, i64* %6, align 8
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %353, align 8
  store i64 %352, i64* %6, align 8
  store i64 %349, i64* %3, align 8
  %call2_4209cc = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %349, %struct.Memory* %276)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4209d1

block_.L_4209d1:                                  ; preds = %block_.L_4209ba, %block_4209ab
  %354 = phi i64 [ %.pre, %block_.L_4209ba ], [ %345, %block_4209ab ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4209cc, %block_.L_4209ba ], [ %276, %block_4209ab ]
  %355 = add i64 %354, 5
  store i64 %355, i64* %3, align 8
  br label %block_.L_4209d6

block_.L_4209d6:                                  ; preds = %block_.L_4209d1, %block_42098f
  %storemerge = phi i64 [ %315, %block_42098f ], [ %355, %block_.L_4209d1 ]
  %MEMORY.1 = phi %struct.Memory* [ %276, %block_42098f ], [ %MEMORY.0, %block_.L_4209d1 ]
  %356 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %357 = and i32 %356, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %362 = icmp eq i32 %356, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %29, align 1
  %364 = lshr i32 %356, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1321 = select i1 %362, i64 14, i64 30
  %366 = add i64 %storemerge, %.v1321
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -592
  %369 = add i64 %366, 6
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  br i1 %362, label %block_4209e4, label %block_.L_4209f4

block_4209e4:                                     ; preds = %block_.L_4209d6
  store i64 %372, i64* %RDI.i316, align 8
  %373 = add i64 %366, -113988
  %374 = add i64 %366, 11
  %375 = load i64, i64* %6, align 8
  %376 = add i64 %375, -8
  %377 = inttoptr i64 %376 to i64*
  store i64 %374, i64* %377, align 8
  store i64 %376, i64* %6, align 8
  store i64 %373, i64* %3, align 8
  %call2_4209ea = tail call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* nonnull %0, i64 %373, %struct.Memory* %MEMORY.1)
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, 86
  br label %block_.L_420a45

block_.L_4209f4:                                  ; preds = %block_.L_4209d6
  store i64 %372, i64* %RAX.i191, align 8
  %380 = sub i32 %371, %356
  %381 = icmp ult i32 %371, %356
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %14, align 1
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i32 %356, %371
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %26, align 1
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %29, align 1
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %32, align 1
  %397 = lshr i32 %371, 31
  %398 = xor i32 %364, %397
  %399 = xor i32 %395, %397
  %400 = add nuw nsw i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %38, align 1
  %.v1322 = select i1 %393, i64 76, i64 19
  %403 = add i64 %366, %.v1322
  store i64 %403, i64* %3, align 8
  br i1 %393, label %block_.L_420a40, label %block_420a07

block_420a07:                                     ; preds = %block_.L_4209f4
  %404 = zext i32 %356 to i64
  store i64 %404, i64* %RDI.i316, align 8
  %405 = add i64 %403, -64423
  %406 = add i64 %403, 12
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %6, align 8
  store i64 %405, i64* %3, align 8
  %call2_420a0e = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %405, %struct.Memory* %MEMORY.1)
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -592
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 6
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RDI.i316, align 8
  %417 = add i64 %410, -600
  %418 = load i64, i64* %RAX.i191, align 8
  %419 = add i64 %412, 13
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %417 to i64*
  store i64 %418, i64* %420, align 8
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, -64448
  %423 = add i64 %421, 5
  %424 = load i64, i64* %6, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %6, align 8
  store i64 %422, i64* %3, align 8
  %call2_420a20 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %422, %struct.Memory* %call2_420a0e)
  %427 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI.i316, align 8
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -600
  %430 = add i64 %427, 17
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RSI.i532, align 8
  %433 = load i64, i64* %RAX.i191, align 8
  store i64 %433, i64* %RDX.i435, align 8
  %AL.i1329 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1329, align 1
  %434 = add i64 %427, 122859
  %435 = add i64 %427, 27
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %6, align 8
  store i64 %434, i64* %3, align 8
  %call2_420a3b = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %434, %struct.Memory* %call2_420a20)
  %.pre1288 = load i64, i64* %3, align 8
  br label %block_.L_420a40

block_.L_420a40:                                  ; preds = %block_420a07, %block_.L_4209f4
  %439 = phi i64 [ %403, %block_.L_4209f4 ], [ %.pre1288, %block_420a07 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4209f4 ], [ %call2_420a3b, %block_420a07 ]
  %440 = add i64 %439, 5
  store i64 %440, i64* %3, align 8
  br label %block_.L_420a45

block_.L_420a45:                                  ; preds = %block_.L_420a40, %block_4209e4
  %storemerge74 = phi i64 [ %379, %block_4209e4 ], [ %440, %block_.L_420a40 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4209ea, %block_4209e4 ], [ %MEMORY.2, %block_.L_420a40 ]
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -36
  %443 = add i64 %storemerge74, 3
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RDI.i316, align 8
  %447 = add i64 %storemerge74, 83979
  %448 = add i64 %storemerge74, 8
  %449 = load i64, i64* %6, align 8
  %450 = add i64 %449, -8
  %451 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %451, align 8
  store i64 %450, i64* %6, align 8
  store i64 %447, i64* %3, align 8
  %call2_420a48 = tail call %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* nonnull %0, i64 %447, %struct.Memory* %MEMORY.3)
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -32
  %454 = load i64, i64* %RAX.i191, align 8
  %455 = load i64, i64* %3, align 8
  %456 = add i64 %455, 4
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %453 to i64*
  store i64 %454, i64* %457, align 8
  %458 = load i64, i64* %RAX.i191, align 8
  %459 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %460 = trunc i64 %458 to i32
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %466 = icmp eq i64 %458, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i64 %458, 63
  %469 = trunc i64 %468 to i8
  store i8 %469, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1323 = select i1 %466, i64 10, i64 27
  %470 = add i64 %459, %.v1323
  store i64 %470, i64* %3, align 8
  br i1 %466, label %block_420a5b, label %block_.L_420a6c

block_420a5b:                                     ; preds = %block_.L_420a45
  store i64 ptrtoint (%G__0x4578f2_type* @G__0x4578f2 to i64), i64* %RDI.i316, align 8
  %AL.i1313 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1313, align 1
  %471 = add i64 %470, 122805
  %472 = add i64 %470, 17
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, -8
  %475 = inttoptr i64 %474 to i64*
  store i64 %472, i64* %475, align 8
  store i64 %474, i64* %6, align 8
  store i64 %471, i64* %3, align 8
  %call2_420a67 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %471, %struct.Memory* %call2_420a48)
  %.pre1289 = load i64, i64* %3, align 8
  br label %block_.L_420a6c

block_.L_420a6c:                                  ; preds = %block_.L_420a45, %block_420a5b
  %476 = phi i64 [ %470, %block_.L_420a45 ], [ %.pre1289, %block_420a5b ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_420a48, %block_.L_420a45 ], [ %call2_420a67, %block_420a5b ]
  store i64 512, i64* %RSI.i532, align 8
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -560
  store i64 %478, i64* %RDI.i316, align 8
  %479 = add i64 %477, -16
  %480 = add i64 %476, 16
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RDX.i435, align 8
  %483 = add i64 %476, -128300
  %484 = add i64 %476, 21
  %485 = load i64, i64* %6, align 8
  %486 = add i64 %485, -8
  %487 = inttoptr i64 %486 to i64*
  store i64 %484, i64* %487, align 8
  store i64 %486, i64* %6, align 8
  store i64 %483, i64* %3, align 8
  %call2_420a7c = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %483, %struct.Memory* %MEMORY.4)
  %488 = load i64, i64* %RAX.i191, align 8
  %489 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %490 = trunc i64 %488 to i32
  %491 = and i32 %490, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %496 = icmp eq i64 %488, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i64 %488, 63
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1324 = select i1 %496, i64 10, i64 23
  %500 = add i64 %489, %.v1324
  store i64 %500, i64* %3, align 8
  br i1 %496, label %block_420a8b, label %block_.L_420a98

block_420a8b:                                     ; preds = %block_.L_420a6c
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -8
  %503 = add i64 %500, 8
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  store i64 0, i64* %504, align 8
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 3281
  store i64 %506, i64* %3, align 8
  br label %block_.L_421764

block_.L_420a98:                                  ; preds = %block_.L_420a6c
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -560
  store i64 %508, i64* %RDI.i316, align 8
  %509 = add i64 %500, -128056
  %510 = add i64 %500, 22
  %511 = load i64, i64* %6, align 8
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %510, i64* %513, align 8
  store i64 %512, i64* %6, align 8
  store i64 %509, i64* %3, align 8
  %call2_420aa9 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %509, %struct.Memory* %call2_420a7c)
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -576
  %516 = load i64, i64* %RAX.i191, align 8
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 7
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %515 to i64*
  store i64 %516, i64* %519, align 8
  %520 = load i64, i64* %RAX.i191, align 8
  %521 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %522 = trunc i64 %520 to i32
  %523 = and i32 %522, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %528 = icmp eq i64 %520, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %29, align 1
  %530 = lshr i64 %520, 63
  %531 = trunc i64 %530 to i8
  store i8 %531, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1325 = select i1 %528, i64 10, i64 23
  %532 = add i64 %521, %.v1325
  store i64 %532, i64* %3, align 8
  br i1 %528, label %block_420abf, label %block_.L_420acc

block_420abf:                                     ; preds = %block_.L_420a98
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -8
  %535 = add i64 %532, 8
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  store i64 0, i64* %536, align 8
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 3229
  store i64 %538, i64* %3, align 8
  br label %block_.L_421764

block_.L_420acc:                                  ; preds = %block_.L_420a98
  %539 = add i64 %532, -127932
  %540 = add i64 %532, 5
  %541 = load i64, i64* %6, align 8
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %6, align 8
  store i64 %539, i64* %3, align 8
  %call2_420acc = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %539, %struct.Memory* %call2_420aa9)
  %544 = load i64*, i64** %124, align 8
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, 3
  store i64 %546, i64* %3, align 8
  %547 = load i64, i64* %544, align 8
  store i64 %547, i64* %RAX.i191, align 8
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -576
  %550 = add i64 %545, 10
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RCX.i230, align 8
  %553 = add i64 %545, 13
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i8*
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i64
  %557 = and i64 %556, 4294967295
  store i64 %557, i64* %RDX.i435, align 8
  %558 = sext i8 %555 to i64
  store i64 %558, i64* %RCX.i230, align 8
  %559 = shl nsw i64 %558, 1
  %560 = add i64 %547, %559
  %561 = add i64 %545, 20
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i16*
  %563 = load i16, i16* %562, align 2
  %564 = and i16 %563, 2048
  %565 = zext i16 %564 to i64
  store i64 %565, i64* %RDX.i435, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit1309 = lshr exact i16 %564, 11
  %566 = trunc i16 %.lobit1309 to i8
  %567 = xor i8 %566, 1
  store i8 %567, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %568 = icmp eq i8 %567, 0
  %.v1326 = select i1 %568, i64 48, i64 35
  %569 = add i64 %545, %.v1326
  store i64 %569, i64* %3, align 8
  br i1 %568, label %block_.L_420b01, label %block_420af4

block_420af4:                                     ; preds = %block_.L_420acc
  %570 = add i64 %548, -8
  %571 = add i64 %569, 8
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  store i64 0, i64* %572, align 8
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 3176
  store i64 %574, i64* %3, align 8
  br label %block_.L_421764

block_.L_420b01:                                  ; preds = %block_.L_420acc
  store i64 512, i64* %RSI.i532, align 8
  %575 = add i64 %548, -560
  store i64 %575, i64* %RDI.i316, align 8
  %576 = add i64 %548, -16
  %577 = add i64 %569, 16
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RDX.i435, align 8
  %580 = add i64 %569, -128449
  %581 = add i64 %569, 21
  %582 = load i64, i64* %6, align 8
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %581, i64* %584, align 8
  store i64 %583, i64* %6, align 8
  store i64 %580, i64* %3, align 8
  %call2_420b11 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %580, %struct.Memory* %call2_420acc)
  %585 = load i64, i64* %RAX.i191, align 8
  %586 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %587 = trunc i64 %585 to i32
  %588 = and i32 %587, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %593 = icmp eq i64 %585, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %29, align 1
  %595 = lshr i64 %585, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1327 = select i1 %593, i64 10, i64 23
  %597 = add i64 %586, %.v1327
  store i64 %597, i64* %3, align 8
  br i1 %593, label %block_420b20, label %block_.L_420b2d

block_420b20:                                     ; preds = %block_.L_420b01
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -8
  %600 = add i64 %597, 8
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i64*
  store i64 0, i64* %601, align 8
  %602 = load i64, i64* %3, align 8
  %603 = add i64 %602, 3132
  store i64 %603, i64* %3, align 8
  br label %block_.L_421764

block_.L_420b2d:                                  ; preds = %block_.L_420b01
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -560
  store i64 %605, i64* %RDI.i316, align 8
  %606 = add i64 %597, -128205
  %607 = add i64 %597, 22
  %608 = load i64, i64* %6, align 8
  %609 = add i64 %608, -8
  %610 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %610, align 8
  store i64 %609, i64* %6, align 8
  store i64 %606, i64* %3, align 8
  %call2_420b3e = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %606, %struct.Memory* %call2_420b11)
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -576
  %613 = load i64, i64* %RAX.i191, align 8
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 7
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %612 to i64*
  store i64 %613, i64* %616, align 8
  %617 = load i64, i64* %RAX.i191, align 8
  %618 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %619 = trunc i64 %617 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %625 = icmp eq i64 %617, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %29, align 1
  %627 = lshr i64 %617, 63
  %628 = trunc i64 %627 to i8
  store i8 %628, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1328 = select i1 %625, i64 10, i64 23
  %629 = add i64 %618, %.v1328
  store i64 %629, i64* %3, align 8
  %630 = load i64, i64* %RBP.i, align 8
  br i1 %625, label %block_420b54, label %block_.L_420b61

block_420b54:                                     ; preds = %block_.L_420b2d
  %631 = add i64 %630, -8
  %632 = add i64 %629, 8
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  store i64 0, i64* %633, align 8
  %634 = load i64, i64* %3, align 8
  %635 = add i64 %634, 3080
  store i64 %635, i64* %3, align 8
  br label %block_.L_421764

block_.L_420b61:                                  ; preds = %block_.L_420b2d
  %636 = add i64 %630, -20
  %637 = add i64 %629, 4
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, -2
  %641 = icmp ult i32 %639, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %14, align 1
  %643 = and i32 %640, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %21, align 1
  %648 = xor i32 %640, %639
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  store i8 %651, i8* %26, align 1
  %652 = icmp eq i32 %640, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %29, align 1
  %654 = lshr i32 %640, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %32, align 1
  %656 = lshr i32 %639, 31
  %657 = xor i32 %654, %656
  %658 = add nuw nsw i32 %657, %656
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %38, align 1
  %.v1329 = select i1 %652, i64 10, i64 113
  %661 = add i64 %629, %.v1329
  store i64 %661, i64* %3, align 8
  br i1 %652, label %block_420b6b, label %block_.L_420bd2

block_420b6b:                                     ; preds = %block_.L_420b61
  %662 = add i64 %630, -584
  %663 = add i64 %661, 10
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  store i32 0, i32* %664, align 4
  %.pre1290 = load i64, i64* %3, align 8
  br label %block_.L_420b75

block_.L_420b75:                                  ; preds = %block_.L_420bb4, %block_420b6b
  %665 = phi i64 [ %759, %block_.L_420bb4 ], [ %.pre1290, %block_420b6b ]
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -584
  %668 = add i64 %665, 6
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RAX.i191, align 8
  %672 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %673 = sub i32 %670, %672
  %674 = icmp ult i32 %670, %672
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %14, align 1
  %676 = and i32 %673, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  %681 = xor i32 %672, %670
  %682 = xor i32 %681, %673
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %26, align 1
  %686 = icmp eq i32 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %29, align 1
  %688 = lshr i32 %673, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %32, align 1
  %690 = lshr i32 %670, 31
  %691 = lshr i32 %672, 31
  %692 = xor i32 %691, %690
  %693 = xor i32 %688, %690
  %694 = add nuw nsw i32 %693, %692
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %38, align 1
  %697 = icmp ne i8 %689, 0
  %698 = xor i1 %697, %695
  %.v1379 = select i1 %698, i64 19, i64 88
  %699 = add i64 %665, %.v1379
  %700 = add i64 %699, 5
  store i64 %700, i64* %3, align 8
  br i1 %698, label %block_420b88, label %block_.L_420bd2.loopexit

block_420b88:                                     ; preds = %block_.L_420b75
  store i64 512, i64* %RSI.i532, align 8
  %701 = add i64 %666, -560
  store i64 %701, i64* %RDI.i316, align 8
  %702 = add i64 %666, -16
  %703 = add i64 %699, 16
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RDX.i435, align 8
  %706 = add i64 %699, -128584
  %707 = add i64 %699, 21
  %708 = load i64, i64* %6, align 8
  %709 = add i64 %708, -8
  %710 = inttoptr i64 %709 to i64*
  store i64 %707, i64* %710, align 8
  store i64 %709, i64* %6, align 8
  store i64 %706, i64* %3, align 8
  %call2_420b98 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %706, %struct.Memory* %call2_420b3e)
  %711 = load i64, i64* %RAX.i191, align 8
  %712 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %713 = trunc i64 %711 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %719 = icmp eq i64 %711, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %29, align 1
  %721 = lshr i64 %711, 63
  %722 = trunc i64 %721 to i8
  store i8 %722, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1380 = select i1 %719, i64 10, i64 23
  %723 = add i64 %712, %.v1380
  store i64 %723, i64* %3, align 8
  %724 = load i64, i64* %RBP.i, align 8
  br i1 %719, label %block_420ba7, label %block_.L_420bb4

block_420ba7:                                     ; preds = %block_420b88
  %725 = add i64 %724, -8
  %726 = add i64 %723, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  store i64 0, i64* %727, align 8
  %728 = load i64, i64* %3, align 8
  %729 = add i64 %728, 2997
  store i64 %729, i64* %3, align 8
  br label %block_.L_421764

block_.L_420bb4:                                  ; preds = %block_420b88
  %730 = add i64 %724, -584
  %731 = add i64 %723, 11
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = add i32 %733, 1
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i191, align 8
  %736 = icmp eq i32 %733, -1
  %737 = icmp eq i32 %734, 0
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %14, align 1
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  %745 = xor i32 %734, %733
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %26, align 1
  %749 = zext i1 %737 to i8
  store i8 %749, i8* %29, align 1
  %750 = lshr i32 %734, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %32, align 1
  %752 = lshr i32 %733, 31
  %753 = xor i32 %750, %752
  %754 = add nuw nsw i32 %753, %750
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %38, align 1
  %757 = add i64 %723, 20
  store i64 %757, i64* %3, align 8
  store i32 %734, i32* %732, align 4
  %758 = load i64, i64* %3, align 8
  %759 = add i64 %758, -83
  store i64 %759, i64* %3, align 8
  br label %block_.L_420b75

block_.L_420bd2.loopexit:                         ; preds = %block_.L_420b75
  br label %block_.L_420bd2

block_.L_420bd2:                                  ; preds = %block_.L_420bd2.loopexit, %block_.L_420b61
  %760 = phi i64 [ %661, %block_.L_420b61 ], [ %700, %block_.L_420bd2.loopexit ]
  %761 = phi i64 [ %630, %block_.L_420b61 ], [ %666, %block_.L_420bd2.loopexit ]
  %762 = add i64 %761, -20
  %763 = add i64 %760, 4
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = add i32 %765, -6
  %767 = icmp ult i32 %765, 6
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %766, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i32 %766, %765
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %26, align 1
  %778 = icmp eq i32 %766, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %29, align 1
  %780 = lshr i32 %766, 31
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* %32, align 1
  %782 = lshr i32 %765, 31
  %783 = xor i32 %780, %782
  %784 = add nuw nsw i32 %783, %782
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %38, align 1
  %.v1330 = select i1 %778, i64 10, i64 217
  %787 = add i64 %760, %.v1330
  store i64 %787, i64* %3, align 8
  br i1 %778, label %block_420bdc, label %block_.L_420cab

block_420bdc:                                     ; preds = %block_.L_420bd2
  store i64 512, i64* %RSI.i532, align 8
  %788 = add i64 %761, -560
  store i64 %788, i64* %RDI.i316, align 8
  %789 = add i64 %761, -16
  %790 = add i64 %787, 16
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RDX.i435, align 8
  %793 = add i64 %787, -128668
  %794 = add i64 %787, 21
  %795 = load i64, i64* %6, align 8
  %796 = add i64 %795, -8
  %797 = inttoptr i64 %796 to i64*
  store i64 %794, i64* %797, align 8
  store i64 %796, i64* %6, align 8
  store i64 %793, i64* %3, align 8
  %call2_420bec = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %793, %struct.Memory* %call2_420b3e)
  %798 = load i64, i64* %RAX.i191, align 8
  %799 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %800 = trunc i64 %798 to i32
  %801 = and i32 %800, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %806 = icmp eq i64 %798, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %29, align 1
  %808 = lshr i64 %798, 63
  %809 = trunc i64 %808 to i8
  store i8 %809, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1375 = select i1 %806, i64 10, i64 23
  %810 = add i64 %799, %.v1375
  store i64 %810, i64* %3, align 8
  br i1 %806, label %block_420bfb, label %block_.L_420c08

block_420bfb:                                     ; preds = %block_420bdc
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -8
  %813 = add i64 %810, 8
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i64*
  store i64 0, i64* %814, align 8
  %815 = load i64, i64* %3, align 8
  %816 = add i64 %815, 2913
  store i64 %816, i64* %3, align 8
  br label %block_.L_421764

block_.L_420c08:                                  ; preds = %block_420bdc
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RSI.i532, align 8
  store i64 3, i64* %RAX.i191, align 8
  store i64 3, i64* %RDX.i435, align 8
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -560
  store i64 %818, i64* %RDI.i316, align 8
  %819 = add i64 %810, -129080
  %820 = add i64 %810, 29
  %821 = load i64, i64* %6, align 8
  %822 = add i64 %821, -8
  %823 = inttoptr i64 %822 to i64*
  store i64 %820, i64* %823, align 8
  store i64 %822, i64* %6, align 8
  store i64 %819, i64* %3, align 8
  %824 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_420bec)
  %825 = load i32, i32* %EAX.i531, align 4
  %826 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %827 = and i32 %825, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %832 = icmp eq i32 %825, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %825, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1376 = select i1 %832, i64 9, i64 28
  %836 = add i64 %826, %.v1376
  store i64 %836, i64* %3, align 8
  br i1 %832, label %block_420c2e, label %block_.L_420c41

block_420c2e:                                     ; preds = %block_.L_420c08
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -32
  %839 = add i64 %836, 4
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RAX.i191, align 8
  %842 = add i64 %841, 144
  %843 = add i64 %836, 10
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = or i32 %845, 1
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i230, align 8
  store i8 0, i8* %14, align 1
  %848 = and i32 %846, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %853 = lshr i32 %845, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %855 = add i64 %836, 19
  store i64 %855, i64* %3, align 8
  store i32 %846, i32* %844, align 4
  %.pre1291 = load i64, i64* %3, align 8
  br label %block_.L_420c41

block_.L_420c41:                                  ; preds = %block_.L_420c08, %block_420c2e
  %856 = phi i64 [ %.pre1291, %block_420c2e ], [ %836, %block_.L_420c08 ]
  store i64 512, i64* %RSI.i532, align 8
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -560
  store i64 %858, i64* %RDI.i316, align 8
  %859 = add i64 %857, -16
  %860 = add i64 %856, 16
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RDX.i435, align 8
  %863 = add i64 %856, -128769
  %864 = add i64 %856, 21
  %865 = load i64, i64* %6, align 8
  %866 = add i64 %865, -8
  %867 = inttoptr i64 %866 to i64*
  store i64 %864, i64* %867, align 8
  store i64 %866, i64* %6, align 8
  store i64 %863, i64* %3, align 8
  %call2_420c51 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %863, %struct.Memory* %824)
  %868 = load i64, i64* %RAX.i191, align 8
  %869 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %870 = trunc i64 %868 to i32
  %871 = and i32 %870, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %876 = icmp eq i64 %868, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %29, align 1
  %878 = lshr i64 %868, 63
  %879 = trunc i64 %878 to i8
  store i8 %879, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1377 = select i1 %876, i64 10, i64 23
  %880 = add i64 %869, %.v1377
  store i64 %880, i64* %3, align 8
  br i1 %876, label %block_420c60, label %block_.L_420c6d

block_420c60:                                     ; preds = %block_.L_420c41
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -8
  %883 = add i64 %880, 8
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  store i64 0, i64* %884, align 8
  %885 = load i64, i64* %3, align 8
  %886 = add i64 %885, 2812
  store i64 %886, i64* %3, align 8
  br label %block_.L_421764

block_.L_420c6d:                                  ; preds = %block_.L_420c41
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RSI.i532, align 8
  store i64 3, i64* %RAX.i191, align 8
  store i64 3, i64* %RDX.i435, align 8
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -560
  store i64 %888, i64* %RDI.i316, align 8
  %889 = add i64 %880, -129181
  %890 = add i64 %880, 29
  %891 = load i64, i64* %6, align 8
  %892 = add i64 %891, -8
  %893 = inttoptr i64 %892 to i64*
  store i64 %890, i64* %893, align 8
  store i64 %892, i64* %6, align 8
  store i64 %889, i64* %3, align 8
  %894 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %call2_420c51)
  %895 = load i32, i32* %EAX.i531, align 4
  %896 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %897 = and i32 %895, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %902 = icmp eq i32 %895, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %29, align 1
  %904 = lshr i32 %895, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1378 = select i1 %902, i64 9, i64 28
  %906 = add i64 %896, %.v1378
  store i64 %906, i64* %3, align 8
  br i1 %902, label %block_420c93, label %block_.L_420ca6

block_420c93:                                     ; preds = %block_.L_420c6d
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -32
  %909 = add i64 %906, 4
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i191, align 8
  %912 = add i64 %911, 144
  %913 = add i64 %906, 10
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = or i32 %915, 2
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i230, align 8
  store i8 0, i8* %14, align 1
  %918 = and i32 %916, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %923 = lshr i32 %915, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %925 = add i64 %906, 19
  store i64 %925, i64* %3, align 8
  store i32 %916, i32* %914, align 4
  %.pre1292 = load i64, i64* %3, align 8
  br label %block_.L_420ca6

block_.L_420ca6:                                  ; preds = %block_.L_420c6d, %block_420c93
  %926 = phi i64 [ %.pre1292, %block_420c93 ], [ %906, %block_.L_420c6d ]
  %927 = add i64 %926, 5
  store i64 %927, i64* %3, align 8
  %.pre1293.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_420cab

block_.L_420cab:                                  ; preds = %block_.L_420bd2, %block_.L_420ca6
  %.pre1293 = phi i64 [ %761, %block_.L_420bd2 ], [ %.pre1293.pre, %block_.L_420ca6 ]
  %928 = phi i64 [ %787, %block_.L_420bd2 ], [ %927, %block_.L_420ca6 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_420b3e, %block_.L_420bd2 ], [ %894, %block_.L_420ca6 ]
  %929 = add i64 %928, 5
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %931 = bitcast %union.VectorReg* %930 to i8*
  %932 = bitcast %union.VectorReg* %930 to <2 x i32>*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %934 = bitcast i64* %933 to <2 x i32>*
  %935 = bitcast %union.VectorReg* %930 to float*
  %936 = getelementptr inbounds i8, i8* %931, i64 4
  %937 = bitcast i8* %936 to i32*
  %938 = bitcast i64* %933 to i32*
  %939 = getelementptr inbounds i8, i8* %931, i64 12
  %940 = bitcast i8* %939 to i32*
  %941 = bitcast %union.VectorReg* %930 to <2 x float>*
  %AL.i970 = bitcast %union.anon* %39 to i8*
  %CL.i971 = bitcast %union.anon* %40 to i8*
  %DL.i948 = bitcast %union.anon* %53 to i8*
  br label %block_.L_420cb0

block_.L_420cb0:                                  ; preds = %block_.L_42173e, %block_.L_420cab
  %942 = phi i64 [ %.pre1293, %block_.L_420cab ], [ %3512, %block_.L_42173e ]
  %storemerge76 = phi i64 [ %929, %block_.L_420cab ], [ %3513, %block_.L_42173e ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_420cab ], [ %MEMORY.26, %block_.L_42173e ]
  store i64 512, i64* %RSI.i532, align 8
  %943 = add i64 %942, -560
  store i64 %943, i64* %RDI.i316, align 8
  %944 = add i64 %942, -16
  %945 = add i64 %storemerge76, 16
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %RDX.i435, align 8
  %948 = add i64 %storemerge76, -128880
  %949 = add i64 %storemerge76, 21
  %950 = load i64, i64* %6, align 8
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %949, i64* %952, align 8
  store i64 %951, i64* %6, align 8
  store i64 %948, i64* %3, align 8
  %call2_420cc0 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %948, %struct.Memory* %MEMORY.10)
  %953 = load i64, i64* %RAX.i191, align 8
  %954 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %955 = trunc i64 %953 to i32
  %956 = and i32 %955, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %961 = icmp eq i64 %953, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %29, align 1
  %963 = lshr i64 %953, 63
  %964 = trunc i64 %963 to i8
  store i8 %964, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1331 = select i1 %961, i64 2686, i64 10
  %965 = add i64 %954, %.v1331
  store i64 %965, i64* %3, align 8
  br i1 %961, label %block_.L_421743, label %block_420ccf

block_420ccf:                                     ; preds = %block_.L_420cb0
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %966 = load i64, i64* %RBP.i, align 8
  %967 = add i64 %966, -560
  store i64 %967, i64* %RDI.i316, align 8
  %968 = add i64 %965, -128623
  %969 = add i64 %965, 22
  %970 = load i64, i64* %6, align 8
  %971 = add i64 %970, -8
  %972 = inttoptr i64 %971 to i64*
  store i64 %969, i64* %972, align 8
  store i64 %971, i64* %6, align 8
  store i64 %968, i64* %3, align 8
  %call2_420ce0 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %968, %struct.Memory* %MEMORY.10)
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -568
  %975 = load i64, i64* %RAX.i191, align 8
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 7
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %974 to i64*
  store i64 %975, i64* %978, align 8
  %979 = load i64, i64* %RAX.i191, align 8
  %980 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %981 = trunc i64 %979 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %987 = icmp eq i64 %979, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %29, align 1
  %989 = lshr i64 %979, 63
  %990 = trunc i64 %989 to i8
  store i8 %990, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1332 = select i1 %987, i64 10, i64 23
  %991 = add i64 %980, %.v1332
  store i64 %991, i64* %3, align 8
  br i1 %987, label %block_420cf6, label %block_.L_420d03

block_420cf6:                                     ; preds = %block_420ccf
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -8
  %994 = add i64 %991, 8
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  store i64 0, i64* %995, align 8
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 2662
  store i64 %997, i64* %3, align 8
  br label %block_.L_421764

block_.L_420d03:                                  ; preds = %block_420ccf
  store i64 0, i64* %RAX.i191, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i316, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %998 = add i64 %991, -128675
  %999 = add i64 %991, 19
  %1000 = load i64, i64* %6, align 8
  %1001 = add i64 %1000, -8
  %1002 = inttoptr i64 %1001 to i64*
  store i64 %999, i64* %1002, align 8
  store i64 %1001, i64* %6, align 8
  store i64 %998, i64* %3, align 8
  %call2_420d11 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %998, %struct.Memory* %MEMORY.10)
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -576
  %1005 = load i64, i64* %RAX.i191, align 8
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 7
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1004 to i64*
  store i64 %1005, i64* %1008, align 8
  %1009 = load i64, i64* %RAX.i191, align 8
  %1010 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1011 = trunc i64 %1009 to i32
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1017 = icmp eq i64 %1009, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %29, align 1
  %1019 = lshr i64 %1009, 63
  %1020 = trunc i64 %1019 to i8
  store i8 %1020, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1333 = select i1 %1017, i64 10, i64 23
  %1021 = add i64 %1010, %.v1333
  store i64 %1021, i64* %3, align 8
  br i1 %1017, label %block_420d27, label %block_.L_420d34

block_420d27:                                     ; preds = %block_.L_420d03
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -8
  %1024 = add i64 %1021, 8
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  store i64 0, i64* %1025, align 8
  %1026 = load i64, i64* %3, align 8
  %1027 = add i64 %1026, 2613
  store i64 %1027, i64* %3, align 8
  br label %block_.L_421764

block_.L_420d34:                                  ; preds = %block_.L_420d03
  %1028 = add i64 %1021, -128548
  %1029 = add i64 %1021, 5
  %1030 = load i64, i64* %6, align 8
  %1031 = add i64 %1030, -8
  %1032 = inttoptr i64 %1031 to i64*
  store i64 %1029, i64* %1032, align 8
  store i64 %1031, i64* %6, align 8
  store i64 %1028, i64* %3, align 8
  %call2_420d34 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %1028, %struct.Memory* %MEMORY.10)
  %1033 = load i64*, i64** %124, align 8
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %3, align 8
  %1036 = load i64, i64* %1033, align 8
  store i64 %1036, i64* %RAX.i191, align 8
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -576
  %1039 = add i64 %1034, 10
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RCX.i230, align 8
  %1042 = add i64 %1034, 13
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i8*
  %1044 = load i8, i8* %1043, align 1
  %1045 = sext i8 %1044 to i64
  %1046 = and i64 %1045, 4294967295
  store i64 %1046, i64* %RDX.i435, align 8
  %1047 = sext i8 %1044 to i64
  store i64 %1047, i64* %RCX.i230, align 8
  %1048 = shl nsw i64 %1047, 1
  %1049 = add i64 %1036, %1048
  %1050 = add i64 %1034, 20
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i16*
  %1052 = load i16, i16* %1051, align 2
  %1053 = and i16 %1052, 2048
  %1054 = zext i16 %1053 to i64
  store i64 %1054, i64* %RDX.i435, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit1310 = lshr exact i16 %1053, 11
  %1055 = trunc i16 %.lobit1310 to i8
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1057 = icmp eq i8 %1056, 0
  %.v1334 = select i1 %1057, i64 48, i64 35
  %1058 = add i64 %1034, %.v1334
  store i64 %1058, i64* %3, align 8
  br i1 %1057, label %block_.L_420d69, label %block_420d5c

block_420d5c:                                     ; preds = %block_.L_420d34
  %1059 = add i64 %1037, -8
  %1060 = add i64 %1058, 8
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  store i64 0, i64* %1061, align 8
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 2560
  store i64 %1063, i64* %3, align 8
  br label %block_.L_421764

block_.L_420d69:                                  ; preds = %block_.L_420d34
  %1064 = add i64 %1058, 7
  store i64 %1064, i64* %3, align 8
  %1065 = load i64, i64* %1040, align 8
  store i64 %1065, i64* %RDI.i316, align 8
  %1066 = add i64 %1058, -128713
  %1067 = add i64 %1058, 12
  %1068 = load i64, i64* %6, align 8
  %1069 = add i64 %1068, -8
  %1070 = inttoptr i64 %1069 to i64*
  store i64 %1067, i64* %1070, align 8
  store i64 %1069, i64* %6, align 8
  store i64 %1066, i64* %3, align 8
  %1071 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %MEMORY.10)
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -580
  %1074 = load i32, i32* %EAX.i531, align 4
  %1075 = load i64, i64* %3, align 8
  %1076 = add i64 %1075, 6
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1073 to i32*
  store i32 %1074, i32* %1077, align 4
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -580
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 7
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1079 to i32*
  %1083 = load i32, i32* %1082, align 4
  store i8 0, i8* %14, align 1
  %1084 = and i32 %1083, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1089 = icmp eq i32 %1083, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %29, align 1
  %1091 = lshr i32 %1083, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1093 = icmp ne i8 %1092, 0
  %.v = select i1 %1093, i64 29, i64 6
  %1094 = add i64 %1081, %.v
  store i64 %1094, i64* %3, align 8
  br i1 %1093, label %block_.L_420d9f, label %block_420d88

block_420d88:                                     ; preds = %block_.L_420d69
  %1095 = add i64 %1094, 6
  store i64 %1095, i64* %3, align 8
  %1096 = load i32, i32* %1082, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RAX.i191, align 8
  %1098 = add i64 %1078, -32
  %1099 = add i64 %1094, 10
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RCX.i230, align 8
  %1102 = add i64 %1094, 12
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = add i32 %1104, 1
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RDX.i435, align 8
  %1107 = lshr i32 %1105, 31
  %1108 = sub i32 %1096, %1105
  %1109 = icmp ult i32 %1096, %1105
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1108, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i32 %1105, %1096
  %1117 = xor i32 %1116, %1108
  %1118 = lshr i32 %1117, 4
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  store i8 %1120, i8* %26, align 1
  %1121 = icmp eq i32 %1108, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %29, align 1
  %1123 = lshr i32 %1108, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %32, align 1
  %1125 = lshr i32 %1096, 31
  %1126 = xor i32 %1107, %1125
  %1127 = xor i32 %1123, %1125
  %1128 = add nuw nsw i32 %1127, %1126
  %1129 = icmp eq i32 %1128, 2
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %38, align 1
  %1131 = icmp ne i8 %1124, 0
  %1132 = xor i1 %1131, %1129
  %1133 = or i1 %1121, %1132
  %.v1335 = select i1 %1133, i64 36, i64 23
  %1134 = add i64 %1094, %.v1335
  store i64 %1134, i64* %3, align 8
  br i1 %1133, label %block_.L_420dac, label %block_.L_420d9f

block_.L_420d9f:                                  ; preds = %block_420d88, %block_.L_420d69
  %1135 = phi i64 [ %1134, %block_420d88 ], [ %1094, %block_.L_420d69 ]
  %1136 = add i64 %1078, -8
  %1137 = add i64 %1135, 8
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  store i64 0, i64* %1138, align 8
  %1139 = load i64, i64* %3, align 8
  %1140 = add i64 %1139, 2493
  store i64 %1140, i64* %3, align 8
  br label %block_.L_421764

block_.L_420dac:                                  ; preds = %block_420d88
  %1141 = add i64 %1078, -568
  %1142 = add i64 %1134, 7
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RDI.i316, align 8
  store i64 and (i64 ptrtoint (%G__0x457918_type* @G__0x457918 to i64), i64 4294967295), i64* %RAX.i191, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457918_type* @G__0x457918 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i532, align 8
  %1145 = add i64 %1134, -129100
  %1146 = add i64 %1134, 19
  %1147 = load i64, i64* %6, align 8
  %1148 = add i64 %1147, -8
  %1149 = inttoptr i64 %1148 to i64*
  store i64 %1146, i64* %1149, align 8
  store i64 %1148, i64* %6, align 8
  store i64 %1145, i64* %3, align 8
  %1150 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1071)
  %1151 = load i32, i32* %EAX.i531, align 4
  %1152 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1153 = and i32 %1151, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1158 = icmp eq i32 %1151, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %29, align 1
  %1160 = lshr i32 %1151, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1336 = select i1 %1158, i64 9, i64 1089
  %1162 = add i64 %1152, %.v1336
  store i64 %1162, i64* %3, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  br i1 %1158, label %block_420dc8, label %block_.L_421200

block_420dc8:                                     ; preds = %block_.L_420dac
  %1164 = add i64 %1163, -20
  %1165 = add i64 %1162, 4
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = add i32 %1167, -6
  %1169 = icmp ult i32 %1167, 6
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %14, align 1
  %1171 = and i32 %1168, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %21, align 1
  %1176 = xor i32 %1168, %1167
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %26, align 1
  %1180 = icmp eq i32 %1168, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %29, align 1
  %1182 = lshr i32 %1168, 31
  %1183 = trunc i32 %1182 to i8
  store i8 %1183, i8* %32, align 1
  %1184 = lshr i32 %1167, 31
  %1185 = xor i32 %1182, %1184
  %1186 = add nuw nsw i32 %1185, %1184
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %38, align 1
  %.v1360 = select i1 %1180, i64 10, i64 345
  %1189 = add i64 %1162, %.v1360
  store i64 %1189, i64* %3, align 8
  br i1 %1180, label %block_420dd2, label %block_.L_420f21

block_420dd2:                                     ; preds = %block_420dc8
  store i64 0, i64* %RAX.i191, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i316, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i532, align 8
  %1190 = add i64 %1189, -128882
  %1191 = add i64 %1189, 19
  %1192 = load i64, i64* %6, align 8
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1191, i64* %1194, align 8
  store i64 %1193, i64* %6, align 8
  store i64 %1190, i64* %3, align 8
  %call2_420de0 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1190, %struct.Memory* %1150)
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -576
  %1197 = load i64, i64* %RAX.i191, align 8
  %1198 = load i64, i64* %3, align 8
  %1199 = add i64 %1198, 7
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1196 to i64*
  store i64 %1197, i64* %1200, align 8
  %.pre1294 = load i64, i64* %3, align 8
  br label %block_.L_420dec

block_.L_420dec:                                  ; preds = %block_.L_420e32, %block_420dd2
  %1201 = phi i64 [ %1340, %block_.L_420e32 ], [ %.pre1294, %block_420dd2 ]
  store i64 0, i64* %RAX.i191, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i971, align 1
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -576
  %1204 = add i64 %1201, 11
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %RDX.i435, align 8
  %1207 = add i64 %1201, 14
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i8*
  %1209 = load i8, i8* %1208, align 1
  %1210 = sext i8 %1209 to i64
  %1211 = and i64 %1210, 4294967295
  store i64 %1211, i64* %RAX.i191, align 8
  %1212 = sext i8 %1209 to i32
  %1213 = add nsw i32 %1212, -40
  %1214 = icmp ult i8 %1209, 40
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %14, align 1
  %1216 = and i32 %1213, 255
  %1217 = tail call i32 @llvm.ctpop.i32(i32 %1216)
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  store i8 %1220, i8* %21, align 1
  %1221 = xor i32 %1213, %1212
  %1222 = lshr i32 %1221, 4
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  store i8 %1224, i8* %26, align 1
  %1225 = icmp eq i32 %1213, 0
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %29, align 1
  %1227 = lshr i32 %1213, 31
  %1228 = trunc i32 %1227 to i8
  store i8 %1228, i8* %32, align 1
  %1229 = lshr i32 %1212, 31
  %1230 = xor i32 %1227, %1229
  %1231 = add nuw nsw i32 %1230, %1229
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %38, align 1
  %1234 = add i64 %1202, -601
  %1235 = add i64 %1201, 23
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i8*
  store i8 0, i8* %1236, align 1
  %1237 = load i64, i64* %3, align 8
  %1238 = load i8, i8* %29, align 1
  %1239 = icmp ne i8 %1238, 0
  %.v1942 = select i1 %1239, i64 28, i64 6
  %1240 = add i64 %1237, %.v1942
  store i64 %1240, i64* %3, align 8
  %cmpBr_420e03 = icmp eq i8 %1238, 1
  br i1 %cmpBr_420e03, label %block_.L_420e1f, label %block_420e09

block_420e09:                                     ; preds = %block_.L_420dec
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -576
  %1243 = add i64 %1240, 7
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i191, align 8
  %1246 = add i64 %1240, 10
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i8*
  %1248 = load i8, i8* %1247, align 1
  %1249 = sext i8 %1248 to i64
  %1250 = and i64 %1249, 4294967295
  store i64 %1250, i64* %RCX.i230, align 8
  %1251 = sext i8 %1248 to i32
  store i8 0, i8* %14, align 1
  %1252 = and i32 %1251, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1257 = icmp eq i8 %1248, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1251, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1261 = xor i1 %1257, true
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %DL.i948, align 1
  %1263 = add i64 %1241, -601
  %1264 = add i64 %1240, 22
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i8*
  store i8 %1262, i8* %1265, align 1
  %.pre1295 = load i64, i64* %3, align 8
  br label %block_.L_420e1f

block_.L_420e1f:                                  ; preds = %block_420e09, %block_.L_420dec
  %1266 = phi i64 [ %.pre1295, %block_420e09 ], [ %1240, %block_.L_420dec ]
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -601
  %1269 = add i64 %1266, 6
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i8*
  %1271 = load i8, i8* %1270, align 1
  store i8 %1271, i8* %AL.i970, align 1
  %1272 = and i8 %1271, 1
  store i8 0, i8* %14, align 1
  %1273 = zext i8 %1272 to i32
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %21, align 1
  %1277 = xor i8 %1272, 1
  store i8 %1277, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1278 = icmp eq i8 %1277, 0
  %.v1311 = select i1 %1278, i64 19, i64 14
  %1279 = add i64 %1266, %.v1311
  store i64 %1279, i64* %3, align 8
  %1280 = add i64 %1267, -576
  br i1 %1278, label %block_.L_420e32, label %block_420e2d

block_420e2d:                                     ; preds = %block_.L_420e1f
  %1281 = add i64 %1279, 35
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RAX.i191, align 8
  %1284 = add i64 %1279, 38
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i8*
  %1286 = load i8, i8* %1285, align 1
  %1287 = sext i8 %1286 to i64
  %1288 = and i64 %1287, 4294967295
  store i64 %1288, i64* %RCX.i230, align 8
  %1289 = sext i8 %1286 to i32
  %1290 = add nsw i32 %1289, -40
  %1291 = icmp ult i8 %1286, 40
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %21, align 1
  %1298 = xor i32 %1290, %1289
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %26, align 1
  %1302 = icmp eq i32 %1290, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %29, align 1
  %1304 = lshr i32 %1290, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %32, align 1
  %1306 = lshr i32 %1289, 31
  %1307 = xor i32 %1304, %1306
  %1308 = add nuw nsw i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %38, align 1
  %.v1373 = select i1 %1302, i64 60, i64 47
  %1311 = add i64 %1279, %.v1373
  store i64 %1311, i64* %3, align 8
  br i1 %1302, label %block_.L_420e69, label %block_420e5c

block_.L_420e32:                                  ; preds = %block_.L_420e1f
  %1312 = add i64 %1279, 7
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1280 to i64*
  %1314 = load i64, i64* %1313, align 8
  %1315 = add i64 %1314, 1
  store i64 %1315, i64* %RAX.i191, align 8
  %1316 = icmp eq i64 %1314, -1
  %1317 = icmp eq i64 %1315, 0
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %14, align 1
  %1320 = trunc i64 %1315 to i32
  %1321 = and i32 %1320, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %21, align 1
  %1326 = xor i64 %1315, %1314
  %1327 = lshr i64 %1326, 4
  %1328 = trunc i64 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %26, align 1
  %1330 = zext i1 %1317 to i8
  store i8 %1330, i8* %29, align 1
  %1331 = lshr i64 %1315, 63
  %1332 = trunc i64 %1331 to i8
  store i8 %1332, i8* %32, align 1
  %1333 = lshr i64 %1314, 63
  %1334 = xor i64 %1331, %1333
  %1335 = add nuw nsw i64 %1334, %1331
  %1336 = icmp eq i64 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %38, align 1
  %1338 = add i64 %1279, 18
  store i64 %1338, i64* %3, align 8
  store i64 %1315, i64* %1313, align 8
  %1339 = load i64, i64* %3, align 8
  %1340 = add i64 %1339, -88
  store i64 %1340, i64* %3, align 8
  br label %block_.L_420dec

block_420e5c:                                     ; preds = %block_420e2d
  %1341 = add i64 %1267, -8
  %1342 = add i64 %1311, 8
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i64*
  store i64 0, i64* %1343, align 8
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 2304
  store i64 %1345, i64* %3, align 8
  br label %block_.L_421764

block_.L_420e69:                                  ; preds = %block_420e2d
  %1346 = add i64 %1311, 7
  store i64 %1346, i64* %3, align 8
  %1347 = load i64, i64* %1282, align 8
  store i64 %1347, i64* %RAX.i191, align 8
  %1348 = add i64 %1347, 1
  %1349 = add i64 %1311, 10
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i8*
  %1351 = load i8, i8* %1350, align 1
  store i8 %1351, i8* %CL.i971, align 1
  %1352 = add i64 %1267, -32
  %1353 = add i64 %1311, 14
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i64*
  %1355 = load i64, i64* %1354, align 8
  store i64 %1355, i64* %RAX.i191, align 8
  %1356 = add i64 %1355, 120
  %1357 = add i64 %1311, 18
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %RAX.i191, align 8
  %1360 = add i64 %1267, -580
  %1361 = add i64 %1311, 25
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = sext i32 %1363 to i64
  store i64 %1364, i64* %RDX.i435, align 8
  %1365 = add i64 %1359, %1364
  %1366 = add i64 %1311, 28
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i8*
  store i8 %1351, i8* %1367, align 1
  %.pre1296 = load i64, i64* %3, align 8
  br label %block_.L_420e85

block_.L_420e85:                                  ; preds = %block_.L_420ecb, %block_.L_420e69
  %1368 = phi i64 [ %1507, %block_.L_420ecb ], [ %.pre1296, %block_.L_420e69 ]
  store i64 0, i64* %RAX.i191, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i971, align 1
  %1369 = load i64, i64* %RBP.i, align 8
  %1370 = add i64 %1369, -576
  %1371 = add i64 %1368, 11
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i64*
  %1373 = load i64, i64* %1372, align 8
  store i64 %1373, i64* %RDX.i435, align 8
  %1374 = add i64 %1368, 14
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i8*
  %1376 = load i8, i8* %1375, align 1
  %1377 = sext i8 %1376 to i64
  %1378 = and i64 %1377, 4294967295
  store i64 %1378, i64* %RAX.i191, align 8
  %1379 = sext i8 %1376 to i32
  %1380 = add nsw i32 %1379, -40
  %1381 = icmp ult i8 %1376, 40
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %14, align 1
  %1383 = and i32 %1380, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %21, align 1
  %1388 = xor i32 %1380, %1379
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %26, align 1
  %1392 = icmp eq i32 %1380, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %29, align 1
  %1394 = lshr i32 %1380, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %32, align 1
  %1396 = lshr i32 %1379, 31
  %1397 = xor i32 %1394, %1396
  %1398 = add nuw nsw i32 %1397, %1396
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %38, align 1
  %1401 = add i64 %1369, -602
  %1402 = add i64 %1368, 23
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i8*
  store i8 0, i8* %1403, align 1
  %1404 = load i64, i64* %3, align 8
  %1405 = load i8, i8* %29, align 1
  %1406 = icmp ne i8 %1405, 0
  %.v1943 = select i1 %1406, i64 28, i64 6
  %1407 = add i64 %1404, %.v1943
  store i64 %1407, i64* %3, align 8
  %cmpBr_420e9c = icmp eq i8 %1405, 1
  br i1 %cmpBr_420e9c, label %block_.L_420eb8, label %block_420ea2

block_420ea2:                                     ; preds = %block_.L_420e85
  %1408 = load i64, i64* %RBP.i, align 8
  %1409 = add i64 %1408, -576
  %1410 = add i64 %1407, 7
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i64*
  %1412 = load i64, i64* %1411, align 8
  store i64 %1412, i64* %RAX.i191, align 8
  %1413 = add i64 %1407, 10
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i8*
  %1415 = load i8, i8* %1414, align 1
  %1416 = sext i8 %1415 to i64
  %1417 = and i64 %1416, 4294967295
  store i64 %1417, i64* %RCX.i230, align 8
  %1418 = sext i8 %1415 to i32
  store i8 0, i8* %14, align 1
  %1419 = and i32 %1418, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1424 = icmp eq i8 %1415, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %29, align 1
  %1426 = lshr i32 %1418, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1428 = xor i1 %1424, true
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %DL.i948, align 1
  %1430 = add i64 %1408, -602
  %1431 = add i64 %1407, 22
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i8*
  store i8 %1429, i8* %1432, align 1
  %.pre1297 = load i64, i64* %3, align 8
  br label %block_.L_420eb8

block_.L_420eb8:                                  ; preds = %block_420ea2, %block_.L_420e85
  %1433 = phi i64 [ %.pre1297, %block_420ea2 ], [ %1407, %block_.L_420e85 ]
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -602
  %1436 = add i64 %1433, 6
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i8*
  %1438 = load i8, i8* %1437, align 1
  store i8 %1438, i8* %AL.i970, align 1
  %1439 = and i8 %1438, 1
  store i8 0, i8* %14, align 1
  %1440 = zext i8 %1439 to i32
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %21, align 1
  %1444 = xor i8 %1439, 1
  store i8 %1444, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1445 = icmp eq i8 %1444, 0
  %.v1312 = select i1 %1445, i64 19, i64 14
  %1446 = add i64 %1433, %.v1312
  store i64 %1446, i64* %3, align 8
  %1447 = add i64 %1434, -576
  br i1 %1445, label %block_.L_420ecb, label %block_420ec6

block_420ec6:                                     ; preds = %block_.L_420eb8
  %1448 = add i64 %1446, 35
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RAX.i191, align 8
  %1451 = add i64 %1446, 38
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i8*
  %1453 = load i8, i8* %1452, align 1
  %1454 = sext i8 %1453 to i64
  %1455 = and i64 %1454, 4294967295
  store i64 %1455, i64* %RCX.i230, align 8
  %1456 = sext i8 %1453 to i32
  %1457 = add nsw i32 %1456, -40
  %1458 = icmp ult i8 %1453, 40
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %14, align 1
  %1460 = and i32 %1457, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %21, align 1
  %1465 = xor i32 %1457, %1456
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %26, align 1
  %1469 = icmp eq i32 %1457, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %29, align 1
  %1471 = lshr i32 %1457, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %32, align 1
  %1473 = lshr i32 %1456, 31
  %1474 = xor i32 %1471, %1473
  %1475 = add nuw nsw i32 %1474, %1473
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %38, align 1
  %.v1374 = select i1 %1469, i64 60, i64 47
  %1478 = add i64 %1446, %.v1374
  store i64 %1478, i64* %3, align 8
  br i1 %1469, label %block_.L_420f02, label %block_420ef5

block_.L_420ecb:                                  ; preds = %block_.L_420eb8
  %1479 = add i64 %1446, 7
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1447 to i64*
  %1481 = load i64, i64* %1480, align 8
  %1482 = add i64 %1481, 1
  store i64 %1482, i64* %RAX.i191, align 8
  %1483 = icmp eq i64 %1481, -1
  %1484 = icmp eq i64 %1482, 0
  %1485 = or i1 %1483, %1484
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %14, align 1
  %1487 = trunc i64 %1482 to i32
  %1488 = and i32 %1487, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i64 %1482, %1481
  %1494 = lshr i64 %1493, 4
  %1495 = trunc i64 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %26, align 1
  %1497 = zext i1 %1484 to i8
  store i8 %1497, i8* %29, align 1
  %1498 = lshr i64 %1482, 63
  %1499 = trunc i64 %1498 to i8
  store i8 %1499, i8* %32, align 1
  %1500 = lshr i64 %1481, 63
  %1501 = xor i64 %1498, %1500
  %1502 = add nuw nsw i64 %1501, %1498
  %1503 = icmp eq i64 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %38, align 1
  %1505 = add i64 %1446, 18
  store i64 %1505, i64* %3, align 8
  store i64 %1482, i64* %1480, align 8
  %1506 = load i64, i64* %3, align 8
  %1507 = add i64 %1506, -88
  store i64 %1507, i64* %3, align 8
  br label %block_.L_420e85

block_420ef5:                                     ; preds = %block_420ec6
  %1508 = add i64 %1434, -8
  %1509 = add i64 %1478, 8
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  store i64 0, i64* %1510, align 8
  %1511 = load i64, i64* %3, align 8
  %1512 = add i64 %1511, 2151
  store i64 %1512, i64* %3, align 8
  br label %block_.L_421764

block_.L_420f02:                                  ; preds = %block_420ec6
  %1513 = add i64 %1478, 7
  store i64 %1513, i64* %3, align 8
  %1514 = load i64, i64* %1449, align 8
  store i64 %1514, i64* %RAX.i191, align 8
  %1515 = add i64 %1514, 1
  %1516 = add i64 %1478, 10
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i8*
  %1518 = load i8, i8* %1517, align 1
  store i8 %1518, i8* %CL.i971, align 1
  %1519 = add i64 %1434, -32
  %1520 = add i64 %1478, 14
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RAX.i191, align 8
  %1523 = add i64 %1522, 128
  %1524 = add i64 %1478, 21
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i191, align 8
  %1527 = add i64 %1434, -580
  %1528 = add i64 %1478, 28
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RDX.i435, align 8
  %1532 = add i64 %1526, %1531
  %1533 = add i64 %1478, 31
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i8*
  store i8 %1518, i8* %1534, align 1
  %.pre1298 = load i64, i64* %3, align 8
  %.pre1299 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420f21

block_.L_420f21:                                  ; preds = %block_420dc8, %block_.L_420f02
  %1535 = phi i64 [ %1163, %block_420dc8 ], [ %.pre1299, %block_.L_420f02 ]
  %1536 = phi i64 [ %1189, %block_420dc8 ], [ %.pre1298, %block_.L_420f02 ]
  %MEMORY.16 = phi %struct.Memory* [ %1150, %block_420dc8 ], [ %call2_420de0, %block_.L_420f02 ]
  store i64 512, i64* %RSI.i532, align 8
  %1537 = add i64 %1535, -560
  store i64 %1537, i64* %RDI.i316, align 8
  %1538 = add i64 %1535, -16
  %1539 = add i64 %1536, 16
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RDX.i435, align 8
  %1542 = add i64 %1536, -129505
  %1543 = add i64 %1536, 21
  %1544 = load i64, i64* %6, align 8
  %1545 = add i64 %1544, -8
  %1546 = inttoptr i64 %1545 to i64*
  store i64 %1543, i64* %1546, align 8
  store i64 %1545, i64* %6, align 8
  store i64 %1542, i64* %3, align 8
  %call2_420f31 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %1542, %struct.Memory* %MEMORY.16)
  %1547 = load i64, i64* %RAX.i191, align 8
  %1548 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1549 = trunc i64 %1547 to i32
  %1550 = and i32 %1549, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1555 = icmp eq i64 %1547, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %29, align 1
  %1557 = lshr i64 %1547, 63
  %1558 = trunc i64 %1557 to i8
  store i8 %1558, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1361 = select i1 %1555, i64 10, i64 23
  %1559 = add i64 %1548, %.v1361
  store i64 %1559, i64* %3, align 8
  br i1 %1555, label %block_420f40, label %block_.L_420f4d

block_420f40:                                     ; preds = %block_.L_420f21
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -8
  %1562 = add i64 %1559, 8
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i64*
  store i64 0, i64* %1563, align 8
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, 2076
  store i64 %1565, i64* %3, align 8
  br label %block_.L_421764

block_.L_420f4d:                                  ; preds = %block_.L_420f21
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -560
  store i64 %1567, i64* %RDI.i316, align 8
  %1568 = add i64 %1559, -129261
  %1569 = add i64 %1559, 22
  %1570 = load i64, i64* %6, align 8
  %1571 = add i64 %1570, -8
  %1572 = inttoptr i64 %1571 to i64*
  store i64 %1569, i64* %1572, align 8
  store i64 %1571, i64* %6, align 8
  store i64 %1568, i64* %3, align 8
  %call2_420f5e = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1568, %struct.Memory* %call2_420f31)
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -576
  %1575 = load i64, i64* %RAX.i191, align 8
  %1576 = load i64, i64* %3, align 8
  %1577 = add i64 %1576, 7
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1574 to i64*
  store i64 %1575, i64* %1578, align 8
  %1579 = load i64, i64* %RAX.i191, align 8
  %1580 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1581 = trunc i64 %1579 to i32
  %1582 = and i32 %1581, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1587 = icmp eq i64 %1579, 0
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %29, align 1
  %1589 = lshr i64 %1579, 63
  %1590 = trunc i64 %1589 to i8
  store i8 %1590, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1362 = select i1 %1587, i64 10, i64 23
  %1591 = add i64 %1580, %.v1362
  store i64 %1591, i64* %3, align 8
  %1592 = load i64, i64* %RBP.i, align 8
  br i1 %1587, label %block_420f74, label %block_.L_420f81

block_420f74:                                     ; preds = %block_.L_420f4d
  %1593 = add i64 %1592, -8
  %1594 = add i64 %1591, 8
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i64*
  store i64 0, i64* %1595, align 8
  %1596 = load i64, i64* %3, align 8
  %1597 = add i64 %1596, 2024
  store i64 %1597, i64* %3, align 8
  br label %block_.L_421764

block_.L_420f81:                                  ; preds = %block_.L_420f4d
  %1598 = add i64 %1592, -576
  %1599 = add i64 %1591, 7
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RDI.i316, align 8
  %1602 = add i64 %1591, -129873
  %1603 = add i64 %1591, 12
  %1604 = load i64, i64* %6, align 8
  %1605 = add i64 %1604, -8
  %1606 = inttoptr i64 %1605 to i64*
  store i64 %1603, i64* %1606, align 8
  store i64 %1605, i64* %6, align 8
  store i64 %1602, i64* %3, align 8
  %1607 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_420f5e)
  %1608 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %1609 = load i64, i64* %RBP.i, align 8
  %1610 = add i64 %1609, -560
  store i64 %1610, i64* %RDI.i316, align 8
  %1611 = load <2 x i32>, <2 x i32>* %932, align 1
  %1612 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast = bitcast <2 x i32> %1611 to double
  %1613 = fptrunc double %.cast to float
  store float %1613, float* %935, align 1
  %1614 = extractelement <2 x i32> %1611, i32 1
  store i32 %1614, i32* %937, align 1
  %1615 = extractelement <2 x i32> %1612, i32 0
  store i32 %1615, i32* %938, align 1
  %1616 = extractelement <2 x i32> %1612, i32 1
  store i32 %1616, i32* %940, align 1
  %1617 = add i64 %1609, -32
  %1618 = add i64 %1608, 20
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %RAX.i191, align 8
  %1621 = add i64 %1620, 16
  %1622 = add i64 %1608, 24
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RAX.i191, align 8
  %1625 = add i64 %1609, -580
  %1626 = add i64 %1608, 31
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  %1630 = mul nsw i64 %1629, 92
  store i64 %1630, i64* %RCX.i230, align 8
  %1631 = lshr i64 %1630, 63
  %1632 = add i64 %1630, %1624
  store i64 %1632, i64* %RAX.i191, align 8
  %1633 = icmp ult i64 %1632, %1624
  %1634 = icmp ult i64 %1632, %1630
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
  %1643 = xor i64 %1630, %1624
  %1644 = xor i64 %1643, %1632
  %1645 = lshr i64 %1644, 4
  %1646 = trunc i64 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %26, align 1
  %1648 = icmp eq i64 %1632, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %29, align 1
  %1650 = lshr i64 %1632, 63
  %1651 = trunc i64 %1650 to i8
  store i8 %1651, i8* %32, align 1
  %1652 = lshr i64 %1624, 63
  %1653 = xor i64 %1650, %1652
  %1654 = xor i64 %1650, %1631
  %1655 = add nuw nsw i64 %1653, %1654
  %1656 = icmp eq i64 %1655, 2
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %38, align 1
  %1658 = inttoptr i64 %1632 to float*
  %1659 = add i64 %1608, 42
  store i64 %1659, i64* %3, align 8
  %1660 = load <2 x float>, <2 x float>* %941, align 1
  %1661 = extractelement <2 x float> %1660, i32 0
  store float %1661, float* %1658, align 4
  %1662 = load i64, i64* %RBP.i, align 8
  %1663 = add i64 %1662, -16
  %1664 = load i64, i64* %3, align 8
  %1665 = add i64 %1664, 4
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1663 to i64*
  %1667 = load i64, i64* %1666, align 8
  store i64 %1667, i64* %RDX.i435, align 8
  %1668 = add i64 %1664, -129655
  %1669 = add i64 %1664, 9
  %1670 = load i64, i64* %6, align 8
  %1671 = add i64 %1670, -8
  %1672 = inttoptr i64 %1671 to i64*
  store i64 %1669, i64* %1672, align 8
  store i64 %1671, i64* %6, align 8
  store i64 %1668, i64* %3, align 8
  %call2_420fbb = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %1668, %struct.Memory* %1607)
  %1673 = load i64, i64* %RAX.i191, align 8
  %1674 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1675 = trunc i64 %1673 to i32
  %1676 = and i32 %1675, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1681 = icmp eq i64 %1673, 0
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %29, align 1
  %1683 = lshr i64 %1673, 63
  %1684 = trunc i64 %1683 to i8
  store i8 %1684, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1363 = select i1 %1681, i64 10, i64 23
  %1685 = add i64 %1674, %.v1363
  store i64 %1685, i64* %3, align 8
  br i1 %1681, label %block_420fca, label %block_.L_420fd7

block_420fca:                                     ; preds = %block_.L_420f81
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -8
  %1688 = add i64 %1685, 8
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i64*
  store i64 0, i64* %1689, align 8
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 1938
  store i64 %1691, i64* %3, align 8
  br label %block_.L_421764

block_.L_420fd7:                                  ; preds = %block_.L_420f81
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -560
  store i64 %1693, i64* %RDI.i316, align 8
  %1694 = add i64 %1685, -129399
  %1695 = add i64 %1685, 22
  %1696 = load i64, i64* %6, align 8
  %1697 = add i64 %1696, -8
  %1698 = inttoptr i64 %1697 to i64*
  store i64 %1695, i64* %1698, align 8
  store i64 %1697, i64* %6, align 8
  store i64 %1694, i64* %3, align 8
  %call2_420fe8 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1694, %struct.Memory* %call2_420fbb)
  %1699 = load i64, i64* %RBP.i, align 8
  %1700 = add i64 %1699, -576
  %1701 = load i64, i64* %RAX.i191, align 8
  %1702 = load i64, i64* %3, align 8
  %1703 = add i64 %1702, 7
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1700 to i64*
  store i64 %1701, i64* %1704, align 8
  %1705 = load i64, i64* %RAX.i191, align 8
  %1706 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1707 = trunc i64 %1705 to i32
  %1708 = and i32 %1707, 255
  %1709 = tail call i32 @llvm.ctpop.i32(i32 %1708)
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  store i8 %1712, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1713 = icmp eq i64 %1705, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %29, align 1
  %1715 = lshr i64 %1705, 63
  %1716 = trunc i64 %1715 to i8
  store i8 %1716, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1364 = select i1 %1713, i64 10, i64 23
  %1717 = add i64 %1706, %.v1364
  store i64 %1717, i64* %3, align 8
  %1718 = load i64, i64* %RBP.i, align 8
  br i1 %1713, label %block_420ffe, label %block_.L_42100b

block_420ffe:                                     ; preds = %block_.L_420fd7
  %1719 = add i64 %1718, -8
  %1720 = add i64 %1717, 8
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i64*
  store i64 0, i64* %1721, align 8
  %1722 = load i64, i64* %3, align 8
  %1723 = add i64 %1722, 1886
  store i64 %1723, i64* %3, align 8
  br label %block_.L_421764

block_.L_42100b:                                  ; preds = %block_.L_420fd7
  %1724 = add i64 %1718, -576
  %1725 = add i64 %1717, 7
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RDI.i316, align 8
  %1728 = add i64 %1717, -130011
  %1729 = add i64 %1717, 12
  %1730 = load i64, i64* %6, align 8
  %1731 = add i64 %1730, -8
  %1732 = inttoptr i64 %1731 to i64*
  store i64 %1729, i64* %1732, align 8
  store i64 %1731, i64* %6, align 8
  store i64 %1728, i64* %3, align 8
  %1733 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_420fe8)
  %1734 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -560
  store i64 %1736, i64* %RDI.i316, align 8
  %1737 = load <2 x i32>, <2 x i32>* %932, align 1
  %1738 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast78 = bitcast <2 x i32> %1737 to double
  %1739 = fptrunc double %.cast78 to float
  store float %1739, float* %935, align 1
  %1740 = extractelement <2 x i32> %1737, i32 1
  store i32 %1740, i32* %937, align 1
  %1741 = extractelement <2 x i32> %1738, i32 0
  store i32 %1741, i32* %938, align 1
  %1742 = extractelement <2 x i32> %1738, i32 1
  store i32 %1742, i32* %940, align 1
  %1743 = add i64 %1735, -32
  %1744 = add i64 %1734, 20
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RAX.i191, align 8
  %1747 = add i64 %1746, 16
  %1748 = add i64 %1734, 24
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i64*
  %1750 = load i64, i64* %1749, align 8
  store i64 %1750, i64* %RAX.i191, align 8
  %1751 = add i64 %1735, -580
  %1752 = add i64 %1734, 31
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = sext i32 %1754 to i64
  %1756 = mul nsw i64 %1755, 92
  store i64 %1756, i64* %RCX.i230, align 8
  %1757 = lshr i64 %1756, 63
  %1758 = add i64 %1756, %1750
  store i64 %1758, i64* %RAX.i191, align 8
  %1759 = icmp ult i64 %1758, %1750
  %1760 = icmp ult i64 %1758, %1756
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %14, align 1
  %1763 = trunc i64 %1758 to i32
  %1764 = and i32 %1763, 255
  %1765 = tail call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  store i8 %1768, i8* %21, align 1
  %1769 = xor i64 %1756, %1750
  %1770 = xor i64 %1769, %1758
  %1771 = lshr i64 %1770, 4
  %1772 = trunc i64 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %26, align 1
  %1774 = icmp eq i64 %1758, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %29, align 1
  %1776 = lshr i64 %1758, 63
  %1777 = trunc i64 %1776 to i8
  store i8 %1777, i8* %32, align 1
  %1778 = lshr i64 %1750, 63
  %1779 = xor i64 %1776, %1778
  %1780 = xor i64 %1776, %1757
  %1781 = add nuw nsw i64 %1779, %1780
  %1782 = icmp eq i64 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %38, align 1
  %1784 = add i64 %1758, 8
  %1785 = add i64 %1734, 43
  store i64 %1785, i64* %3, align 8
  %1786 = load <2 x float>, <2 x float>* %941, align 1
  %1787 = extractelement <2 x float> %1786, i32 0
  %1788 = inttoptr i64 %1784 to float*
  store float %1787, float* %1788, align 4
  %1789 = load i64, i64* %RBP.i, align 8
  %1790 = add i64 %1789, -16
  %1791 = load i64, i64* %3, align 8
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1790 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RDX.i435, align 8
  %1795 = add i64 %1791, -129794
  %1796 = add i64 %1791, 9
  %1797 = load i64, i64* %6, align 8
  %1798 = add i64 %1797, -8
  %1799 = inttoptr i64 %1798 to i64*
  store i64 %1796, i64* %1799, align 8
  store i64 %1798, i64* %6, align 8
  store i64 %1795, i64* %3, align 8
  %call2_421046 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %1795, %struct.Memory* %1733)
  %1800 = load i64, i64* %RAX.i191, align 8
  %1801 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1802 = trunc i64 %1800 to i32
  %1803 = and i32 %1802, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1808 = icmp eq i64 %1800, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %29, align 1
  %1810 = lshr i64 %1800, 63
  %1811 = trunc i64 %1810 to i8
  store i8 %1811, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1365 = select i1 %1808, i64 10, i64 23
  %1812 = add i64 %1801, %.v1365
  store i64 %1812, i64* %3, align 8
  br i1 %1808, label %block_421055, label %block_.L_421062

block_421055:                                     ; preds = %block_.L_42100b
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -8
  %1815 = add i64 %1812, 8
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  store i64 0, i64* %1816, align 8
  %1817 = load i64, i64* %3, align 8
  %1818 = add i64 %1817, 1799
  store i64 %1818, i64* %3, align 8
  br label %block_.L_421764

block_.L_421062:                                  ; preds = %block_.L_42100b
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -560
  store i64 %1820, i64* %RDI.i316, align 8
  %1821 = add i64 %1812, -129538
  %1822 = add i64 %1812, 22
  %1823 = load i64, i64* %6, align 8
  %1824 = add i64 %1823, -8
  %1825 = inttoptr i64 %1824 to i64*
  store i64 %1822, i64* %1825, align 8
  store i64 %1824, i64* %6, align 8
  store i64 %1821, i64* %3, align 8
  %call2_421073 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1821, %struct.Memory* %call2_421046)
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -576
  %1828 = load i64, i64* %RAX.i191, align 8
  %1829 = load i64, i64* %3, align 8
  %1830 = add i64 %1829, 7
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1827 to i64*
  store i64 %1828, i64* %1831, align 8
  %1832 = load i64, i64* %RAX.i191, align 8
  %1833 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1834 = trunc i64 %1832 to i32
  %1835 = and i32 %1834, 255
  %1836 = tail call i32 @llvm.ctpop.i32(i32 %1835)
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  store i8 %1839, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1840 = icmp eq i64 %1832, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %29, align 1
  %1842 = lshr i64 %1832, 63
  %1843 = trunc i64 %1842 to i8
  store i8 %1843, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1366 = select i1 %1840, i64 10, i64 23
  %1844 = add i64 %1833, %.v1366
  store i64 %1844, i64* %3, align 8
  %1845 = load i64, i64* %RBP.i, align 8
  br i1 %1840, label %block_421089, label %block_.L_421096

block_421089:                                     ; preds = %block_.L_421062
  %1846 = add i64 %1845, -8
  %1847 = add i64 %1844, 8
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i64*
  store i64 0, i64* %1848, align 8
  %1849 = load i64, i64* %3, align 8
  %1850 = add i64 %1849, 1747
  store i64 %1850, i64* %3, align 8
  br label %block_.L_421764

block_.L_421096:                                  ; preds = %block_.L_421062
  %1851 = add i64 %1845, -576
  %1852 = add i64 %1844, 7
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %RDI.i316, align 8
  %1855 = add i64 %1844, -130150
  %1856 = add i64 %1844, 12
  %1857 = load i64, i64* %6, align 8
  %1858 = add i64 %1857, -8
  %1859 = inttoptr i64 %1858 to i64*
  store i64 %1856, i64* %1859, align 8
  store i64 %1858, i64* %6, align 8
  store i64 %1855, i64* %3, align 8
  %1860 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_421073)
  %1861 = load i64, i64* %3, align 8
  %1862 = load <2 x i32>, <2 x i32>* %932, align 1
  %1863 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast79 = bitcast <2 x i32> %1862 to double
  %1864 = fptrunc double %.cast79 to float
  store float %1864, float* %935, align 1
  %1865 = extractelement <2 x i32> %1862, i32 1
  store i32 %1865, i32* %937, align 1
  %1866 = extractelement <2 x i32> %1863, i32 0
  store i32 %1866, i32* %938, align 1
  %1867 = extractelement <2 x i32> %1863, i32 1
  store i32 %1867, i32* %940, align 1
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -32
  %1870 = add i64 %1861, 8
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i64*
  %1872 = load i64, i64* %1871, align 8
  store i64 %1872, i64* %RDI.i316, align 8
  %1873 = add i64 %1872, 16
  %1874 = add i64 %1861, 12
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %RDI.i316, align 8
  %1877 = add i64 %1868, -580
  %1878 = add i64 %1861, 19
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = mul nsw i64 %1881, 92
  store i64 %1882, i64* %RAX.i191, align 8
  %1883 = lshr i64 %1882, 63
  %1884 = add i64 %1882, %1876
  store i64 %1884, i64* %RDI.i316, align 8
  %1885 = icmp ult i64 %1884, %1876
  %1886 = icmp ult i64 %1884, %1882
  %1887 = or i1 %1885, %1886
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %14, align 1
  %1889 = trunc i64 %1884 to i32
  %1890 = and i32 %1889, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %21, align 1
  %1895 = xor i64 %1882, %1876
  %1896 = xor i64 %1895, %1884
  %1897 = lshr i64 %1896, 4
  %1898 = trunc i64 %1897 to i8
  %1899 = and i8 %1898, 1
  store i8 %1899, i8* %26, align 1
  %1900 = icmp eq i64 %1884, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %29, align 1
  %1902 = lshr i64 %1884, 63
  %1903 = trunc i64 %1902 to i8
  store i8 %1903, i8* %32, align 1
  %1904 = lshr i64 %1876, 63
  %1905 = xor i64 %1902, %1904
  %1906 = xor i64 %1902, %1883
  %1907 = add nuw nsw i64 %1905, %1906
  %1908 = icmp eq i64 %1907, 2
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %38, align 1
  %1910 = add i64 %1884, 4
  %1911 = add i64 %1861, 31
  store i64 %1911, i64* %3, align 8
  %1912 = load <2 x float>, <2 x float>* %941, align 1
  %1913 = extractelement <2 x float> %1912, i32 0
  %1914 = inttoptr i64 %1910 to float*
  store float %1913, float* %1914, align 4
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -584
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 10
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1916 to i32*
  store i32 0, i32* %1919, align 4
  %.pre1300 = load i64, i64* %3, align 8
  br label %block_.L_4210cb

block_.L_4210cb:                                  ; preds = %block_.L_42113e, %block_.L_421096
  %1920 = phi i64 [ %.pre1300, %block_.L_421096 ], [ %2118, %block_.L_42113e ]
  %MEMORY.17 = phi %struct.Memory* [ %1860, %block_.L_421096 ], [ %2025, %block_.L_42113e ]
  %1921 = load i64, i64* %RBP.i, align 8
  %1922 = add i64 %1921, -584
  %1923 = add i64 %1920, 6
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RAX.i191, align 8
  %1927 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1928 = sub i32 %1925, %1927
  %1929 = icmp ult i32 %1925, %1927
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %14, align 1
  %1931 = and i32 %1928, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %21, align 1
  %1936 = xor i32 %1927, %1925
  %1937 = xor i32 %1936, %1928
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  store i8 %1940, i8* %26, align 1
  %1941 = icmp eq i32 %1928, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %29, align 1
  %1943 = lshr i32 %1928, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %32, align 1
  %1945 = lshr i32 %1925, 31
  %1946 = lshr i32 %1927, 31
  %1947 = xor i32 %1946, %1945
  %1948 = xor i32 %1943, %1945
  %1949 = add nuw nsw i32 %1948, %1947
  %1950 = icmp eq i32 %1949, 2
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %38, align 1
  %1952 = icmp ne i8 %1944, 0
  %1953 = xor i1 %1952, %1950
  %.v1367 = select i1 %1953, i64 19, i64 186
  %1954 = add i64 %1920, %.v1367
  store i64 %1954, i64* %3, align 8
  br i1 %1953, label %block_4210de, label %block_.L_421185

block_4210de:                                     ; preds = %block_.L_4210cb
  store i64 512, i64* %RSI.i532, align 8
  %1955 = add i64 %1921, -560
  store i64 %1955, i64* %RDI.i316, align 8
  %1956 = add i64 %1921, -16
  %1957 = add i64 %1954, 16
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i64*
  %1959 = load i64, i64* %1958, align 8
  store i64 %1959, i64* %RDX.i435, align 8
  %1960 = add i64 %1954, -129950
  %1961 = add i64 %1954, 21
  %1962 = load i64, i64* %6, align 8
  %1963 = add i64 %1962, -8
  %1964 = inttoptr i64 %1963 to i64*
  store i64 %1961, i64* %1964, align 8
  store i64 %1963, i64* %6, align 8
  store i64 %1960, i64* %3, align 8
  %call2_4210ee = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %1960, %struct.Memory* %MEMORY.17)
  %1965 = load i64, i64* %RAX.i191, align 8
  %1966 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1967 = trunc i64 %1965 to i32
  %1968 = and i32 %1967, 255
  %1969 = tail call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  store i8 %1972, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1973 = icmp eq i64 %1965, 0
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %29, align 1
  %1975 = lshr i64 %1965, 63
  %1976 = trunc i64 %1975 to i8
  store i8 %1976, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1371 = select i1 %1973, i64 10, i64 23
  %1977 = add i64 %1966, %.v1371
  store i64 %1977, i64* %3, align 8
  br i1 %1973, label %block_4210fd, label %block_.L_42110a

block_4210fd:                                     ; preds = %block_4210de
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -8
  %1980 = add i64 %1977, 8
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i64*
  store i64 0, i64* %1981, align 8
  %1982 = load i64, i64* %3, align 8
  %1983 = add i64 %1982, 1631
  store i64 %1983, i64* %3, align 8
  br label %block_.L_421764

block_.L_42110a:                                  ; preds = %block_4210de
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -560
  store i64 %1985, i64* %RDI.i316, align 8
  %1986 = add i64 %1977, -129706
  %1987 = add i64 %1977, 22
  %1988 = load i64, i64* %6, align 8
  %1989 = add i64 %1988, -8
  %1990 = inttoptr i64 %1989 to i64*
  store i64 %1987, i64* %1990, align 8
  store i64 %1989, i64* %6, align 8
  store i64 %1986, i64* %3, align 8
  %call2_42111b = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %1986, %struct.Memory* %MEMORY.17)
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -576
  %1993 = load i64, i64* %RAX.i191, align 8
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, 7
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1992 to i64*
  store i64 %1993, i64* %1996, align 8
  %1997 = load i64, i64* %RAX.i191, align 8
  %1998 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1999 = trunc i64 %1997 to i32
  %2000 = and i32 %1999, 255
  %2001 = tail call i32 @llvm.ctpop.i32(i32 %2000)
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = xor i8 %2003, 1
  store i8 %2004, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2005 = icmp eq i64 %1997, 0
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %29, align 1
  %2007 = lshr i64 %1997, 63
  %2008 = trunc i64 %2007 to i8
  store i8 %2008, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1372 = select i1 %2005, i64 10, i64 23
  %2009 = add i64 %1998, %.v1372
  store i64 %2009, i64* %3, align 8
  %2010 = load i64, i64* %RBP.i, align 8
  br i1 %2005, label %block_421131, label %block_.L_42113e

block_421131:                                     ; preds = %block_.L_42110a
  %2011 = add i64 %2010, -8
  %2012 = add i64 %2009, 8
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  store i64 0, i64* %2013, align 8
  %2014 = load i64, i64* %3, align 8
  %2015 = add i64 %2014, 1579
  store i64 %2015, i64* %3, align 8
  br label %block_.L_421764

block_.L_42113e:                                  ; preds = %block_.L_42110a
  %2016 = add i64 %2010, -576
  %2017 = add i64 %2009, 7
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i64*
  %2019 = load i64, i64* %2018, align 8
  store i64 %2019, i64* %RDI.i316, align 8
  %2020 = add i64 %2009, -130318
  %2021 = add i64 %2009, 12
  %2022 = load i64, i64* %6, align 8
  %2023 = add i64 %2022, -8
  %2024 = inttoptr i64 %2023 to i64*
  store i64 %2021, i64* %2024, align 8
  store i64 %2023, i64* %6, align 8
  store i64 %2020, i64* %3, align 8
  %2025 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %MEMORY.17)
  %2026 = load i64, i64* %3, align 8
  %2027 = load <2 x i32>, <2 x i32>* %932, align 1
  %2028 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast80 = bitcast <2 x i32> %2027 to double
  %2029 = fptrunc double %.cast80 to float
  store float %2029, float* %935, align 1
  %2030 = extractelement <2 x i32> %2027, i32 1
  store i32 %2030, i32* %937, align 1
  %2031 = extractelement <2 x i32> %2028, i32 0
  store i32 %2031, i32* %938, align 1
  %2032 = extractelement <2 x i32> %2028, i32 1
  store i32 %2032, i32* %940, align 1
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -32
  %2035 = add i64 %2026, 8
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i64*
  %2037 = load i64, i64* %2036, align 8
  store i64 %2037, i64* %RDI.i316, align 8
  %2038 = add i64 %2037, 16
  %2039 = add i64 %2026, 12
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RDI.i316, align 8
  %2042 = add i64 %2033, -580
  %2043 = add i64 %2026, 19
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i32*
  %2045 = load i32, i32* %2044, align 4
  %2046 = sext i32 %2045 to i64
  %2047 = mul nsw i64 %2046, 92
  store i64 %2047, i64* %RAX.i191, align 8
  %2048 = lshr i64 %2047, 63
  %2049 = add i64 %2047, %2041
  store i64 %2049, i64* %RDI.i316, align 8
  %2050 = icmp ult i64 %2049, %2041
  %2051 = icmp ult i64 %2049, %2047
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %14, align 1
  %2054 = trunc i64 %2049 to i32
  %2055 = and i32 %2054, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  %2060 = xor i64 %2047, %2041
  %2061 = xor i64 %2060, %2049
  %2062 = lshr i64 %2061, 4
  %2063 = trunc i64 %2062 to i8
  %2064 = and i8 %2063, 1
  store i8 %2064, i8* %26, align 1
  %2065 = icmp eq i64 %2049, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %29, align 1
  %2067 = lshr i64 %2049, 63
  %2068 = trunc i64 %2067 to i8
  store i8 %2068, i8* %32, align 1
  %2069 = lshr i64 %2041, 63
  %2070 = xor i64 %2067, %2069
  %2071 = xor i64 %2067, %2048
  %2072 = add nuw nsw i64 %2070, %2071
  %2073 = icmp eq i64 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %38, align 1
  %2075 = add i64 %2033, -584
  %2076 = add i64 %2026, 33
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = sext i32 %2078 to i64
  store i64 %2079, i64* %RAX.i191, align 8
  %2080 = shl nsw i64 %2079, 2
  %2081 = add i64 %2049, 12
  %2082 = add i64 %2081, %2080
  %2083 = add i64 %2026, 39
  store i64 %2083, i64* %3, align 8
  %2084 = load <2 x float>, <2 x float>* %941, align 1
  %2085 = extractelement <2 x float> %2084, i32 0
  %2086 = inttoptr i64 %2082 to float*
  store float %2085, float* %2086, align 4
  %2087 = load i64, i64* %RBP.i, align 8
  %2088 = add i64 %2087, -584
  %2089 = load i64, i64* %3, align 8
  %2090 = add i64 %2089, 6
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2088 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = add i32 %2092, 1
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i191, align 8
  %2095 = icmp eq i32 %2092, -1
  %2096 = icmp eq i32 %2093, 0
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %14, align 1
  %2099 = and i32 %2093, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = xor i32 %2093, %2092
  %2105 = lshr i32 %2104, 4
  %2106 = trunc i32 %2105 to i8
  %2107 = and i8 %2106, 1
  store i8 %2107, i8* %26, align 1
  %2108 = zext i1 %2096 to i8
  store i8 %2108, i8* %29, align 1
  %2109 = lshr i32 %2093, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %32, align 1
  %2111 = lshr i32 %2092, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2109
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = add i64 %2089, 15
  store i64 %2116, i64* %3, align 8
  store i32 %2093, i32* %2091, align 4
  %2117 = load i64, i64* %3, align 8
  %2118 = add i64 %2117, -181
  store i64 %2118, i64* %3, align 8
  br label %block_.L_4210cb

block_.L_421185:                                  ; preds = %block_.L_4210cb
  %2119 = add i64 %1921, -20
  %2120 = add i64 %1954, 4
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = add i32 %2122, -2
  %2124 = icmp ult i32 %2122, 2
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %14, align 1
  %2126 = and i32 %2123, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i32 %2123, %2122
  %2132 = lshr i32 %2131, 4
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  store i8 %2134, i8* %26, align 1
  %2135 = icmp eq i32 %2123, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %29, align 1
  %2137 = lshr i32 %2123, 31
  %2138 = trunc i32 %2137 to i8
  store i8 %2138, i8* %32, align 1
  %2139 = lshr i32 %2122, 31
  %2140 = xor i32 %2137, %2139
  %2141 = add nuw nsw i32 %2140, %2139
  %2142 = icmp eq i32 %2141, 2
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %38, align 1
  %.v1368 = select i1 %2135, i64 10, i64 118
  %2144 = add i64 %1954, %.v1368
  store i64 %2144, i64* %3, align 8
  br i1 %2135, label %block_42118f, label %block_.L_4211fb

block_42118f:                                     ; preds = %block_.L_421185
  %2145 = add i64 %2144, 10
  store i64 %2145, i64* %3, align 8
  store i32 0, i32* %1924, align 4
  %.pre1301 = load i64, i64* %3, align 8
  br label %block_.L_421199

block_.L_421199:                                  ; preds = %block_.L_4211dd, %block_42118f
  %2146 = phi i64 [ %2242, %block_.L_4211dd ], [ %.pre1301, %block_42118f ]
  %2147 = load i64, i64* %RBP.i, align 8
  %2148 = add i64 %2147, -584
  %2149 = add i64 %2146, 6
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RAX.i191, align 8
  %2153 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2154 = add i32 %2153, 3
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i230, align 8
  %2156 = lshr i32 %2154, 31
  %2157 = sub i32 %2151, %2154
  %2158 = icmp ult i32 %2151, %2154
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %14, align 1
  %2160 = and i32 %2157, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %21, align 1
  %2165 = xor i32 %2154, %2151
  %2166 = xor i32 %2165, %2157
  %2167 = lshr i32 %2166, 4
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %26, align 1
  %2170 = icmp eq i32 %2157, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %29, align 1
  %2172 = lshr i32 %2157, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %32, align 1
  %2174 = lshr i32 %2151, 31
  %2175 = xor i32 %2156, %2174
  %2176 = xor i32 %2172, %2174
  %2177 = add nuw nsw i32 %2176, %2175
  %2178 = icmp eq i32 %2177, 2
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %38, align 1
  %2180 = icmp ne i8 %2173, 0
  %2181 = xor i1 %2180, %2178
  %.v1369 = select i1 %2181, i64 24, i64 93
  %2182 = add i64 %2146, %.v1369
  %2183 = add i64 %2182, 5
  store i64 %2183, i64* %3, align 8
  br i1 %2181, label %block_4211b1, label %block_.L_4211fb.loopexit

block_4211b1:                                     ; preds = %block_.L_421199
  store i64 512, i64* %RSI.i532, align 8
  %2184 = add i64 %2147, -560
  store i64 %2184, i64* %RDI.i316, align 8
  %2185 = add i64 %2147, -16
  %2186 = add i64 %2182, 16
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i64*
  %2188 = load i64, i64* %2187, align 8
  store i64 %2188, i64* %RDX.i435, align 8
  %2189 = add i64 %2182, -130161
  %2190 = add i64 %2182, 21
  %2191 = load i64, i64* %6, align 8
  %2192 = add i64 %2191, -8
  %2193 = inttoptr i64 %2192 to i64*
  store i64 %2190, i64* %2193, align 8
  store i64 %2192, i64* %6, align 8
  store i64 %2189, i64* %3, align 8
  %call2_4211c1 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2189, %struct.Memory* %MEMORY.17)
  %2194 = load i64, i64* %RAX.i191, align 8
  %2195 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2196 = trunc i64 %2194 to i32
  %2197 = and i32 %2196, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2202 = icmp eq i64 %2194, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %29, align 1
  %2204 = lshr i64 %2194, 63
  %2205 = trunc i64 %2204 to i8
  store i8 %2205, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1370 = select i1 %2202, i64 10, i64 23
  %2206 = add i64 %2195, %.v1370
  store i64 %2206, i64* %3, align 8
  %2207 = load i64, i64* %RBP.i, align 8
  br i1 %2202, label %block_4211d0, label %block_.L_4211dd

block_4211d0:                                     ; preds = %block_4211b1
  %2208 = add i64 %2207, -8
  %2209 = add i64 %2206, 8
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i64*
  store i64 0, i64* %2210, align 8
  %2211 = load i64, i64* %3, align 8
  %2212 = add i64 %2211, 1420
  store i64 %2212, i64* %3, align 8
  br label %block_.L_421764

block_.L_4211dd:                                  ; preds = %block_4211b1
  %2213 = add i64 %2207, -584
  %2214 = add i64 %2206, 11
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = add i32 %2216, 1
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RAX.i191, align 8
  %2219 = icmp eq i32 %2216, -1
  %2220 = icmp eq i32 %2217, 0
  %2221 = or i1 %2219, %2220
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %14, align 1
  %2223 = and i32 %2217, 255
  %2224 = tail call i32 @llvm.ctpop.i32(i32 %2223)
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  %2227 = xor i8 %2226, 1
  store i8 %2227, i8* %21, align 1
  %2228 = xor i32 %2217, %2216
  %2229 = lshr i32 %2228, 4
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %26, align 1
  %2232 = zext i1 %2220 to i8
  store i8 %2232, i8* %29, align 1
  %2233 = lshr i32 %2217, 31
  %2234 = trunc i32 %2233 to i8
  store i8 %2234, i8* %32, align 1
  %2235 = lshr i32 %2216, 31
  %2236 = xor i32 %2233, %2235
  %2237 = add nuw nsw i32 %2236, %2233
  %2238 = icmp eq i32 %2237, 2
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %38, align 1
  %2240 = add i64 %2206, 20
  store i64 %2240, i64* %3, align 8
  store i32 %2217, i32* %2215, align 4
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2241, -88
  store i64 %2242, i64* %3, align 8
  br label %block_.L_421199

block_.L_4211fb.loopexit:                         ; preds = %block_.L_421199
  br label %block_.L_4211fb

block_.L_4211fb:                                  ; preds = %block_.L_4211fb.loopexit, %block_.L_421185
  %2243 = phi i64 [ %2144, %block_.L_421185 ], [ %2183, %block_.L_4211fb.loopexit ]
  %2244 = phi i64 [ %1921, %block_.L_421185 ], [ %2147, %block_.L_4211fb.loopexit ]
  %2245 = add i64 %2243, 1347
  br label %block_.L_42173e

block_.L_421200:                                  ; preds = %block_.L_420dac
  %2246 = add i64 %1163, -568
  %2247 = add i64 %1162, 7
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i64*
  %2249 = load i64, i64* %2248, align 8
  store i64 %2249, i64* %RDI.i316, align 8
  store i64 and (i64 ptrtoint (%G__0x457927_type* @G__0x457927 to i64), i64 4294967295), i64* %RAX.i191, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457927_type* @G__0x457927 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i532, align 8
  %2250 = add i64 %1162, -130208
  %2251 = add i64 %1162, 19
  %2252 = load i64, i64* %6, align 8
  %2253 = add i64 %2252, -8
  %2254 = inttoptr i64 %2253 to i64*
  store i64 %2251, i64* %2254, align 8
  store i64 %2253, i64* %6, align 8
  store i64 %2250, i64* %3, align 8
  %2255 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1150)
  %2256 = load i32, i32* %EAX.i531, align 4
  %2257 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2258 = and i32 %2256, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2263 = icmp eq i32 %2256, 0
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %29, align 1
  %2265 = lshr i32 %2256, 31
  %2266 = trunc i32 %2265 to i8
  store i8 %2266, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1337 = select i1 %2263, i64 9, i64 744
  %2267 = add i64 %2257, %.v1337
  store i64 %2267, i64* %3, align 8
  br i1 %2263, label %block_42121c, label %block_.L_4214fb

block_42121c:                                     ; preds = %block_.L_421200
  store i64 512, i64* %RSI.i532, align 8
  %2268 = load i64, i64* %RBP.i, align 8
  %2269 = add i64 %2268, -560
  store i64 %2269, i64* %RDI.i316, align 8
  %2270 = add i64 %2268, -16
  %2271 = add i64 %2267, 16
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i64*
  %2273 = load i64, i64* %2272, align 8
  store i64 %2273, i64* %RDX.i435, align 8
  %2274 = add i64 %2267, -130268
  %2275 = add i64 %2267, 21
  %2276 = load i64, i64* %6, align 8
  %2277 = add i64 %2276, -8
  %2278 = inttoptr i64 %2277 to i64*
  store i64 %2275, i64* %2278, align 8
  store i64 %2277, i64* %6, align 8
  store i64 %2274, i64* %3, align 8
  %call2_42122c = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2274, %struct.Memory* %2255)
  %2279 = load i64, i64* %RAX.i191, align 8
  %2280 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2281 = trunc i64 %2279 to i32
  %2282 = and i32 %2281, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2287 = icmp eq i64 %2279, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %29, align 1
  %2289 = lshr i64 %2279, 63
  %2290 = trunc i64 %2289 to i8
  store i8 %2290, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1348 = select i1 %2287, i64 10, i64 23
  %2291 = add i64 %2280, %.v1348
  store i64 %2291, i64* %3, align 8
  br i1 %2287, label %block_42123b, label %block_.L_421248

block_42123b:                                     ; preds = %block_42121c
  %2292 = load i64, i64* %RBP.i, align 8
  %2293 = add i64 %2292, -8
  %2294 = add i64 %2291, 8
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i64*
  store i64 0, i64* %2295, align 8
  %2296 = load i64, i64* %3, align 8
  %2297 = add i64 %2296, 1313
  store i64 %2297, i64* %3, align 8
  br label %block_.L_421764

block_.L_421248:                                  ; preds = %block_42121c
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %2298 = load i64, i64* %RBP.i, align 8
  %2299 = add i64 %2298, -560
  store i64 %2299, i64* %RDI.i316, align 8
  %2300 = add i64 %2291, -130024
  %2301 = add i64 %2291, 22
  %2302 = load i64, i64* %6, align 8
  %2303 = add i64 %2302, -8
  %2304 = inttoptr i64 %2303 to i64*
  store i64 %2301, i64* %2304, align 8
  store i64 %2303, i64* %6, align 8
  store i64 %2300, i64* %3, align 8
  %call2_421259 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2300, %struct.Memory* %call2_42122c)
  %2305 = load i64, i64* %RBP.i, align 8
  %2306 = add i64 %2305, -576
  %2307 = load i64, i64* %RAX.i191, align 8
  %2308 = load i64, i64* %3, align 8
  %2309 = add i64 %2308, 7
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2306 to i64*
  store i64 %2307, i64* %2310, align 8
  %2311 = load i64, i64* %RAX.i191, align 8
  %2312 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2313 = trunc i64 %2311 to i32
  %2314 = and i32 %2313, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2319 = icmp eq i64 %2311, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %29, align 1
  %2321 = lshr i64 %2311, 63
  %2322 = trunc i64 %2321 to i8
  store i8 %2322, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1349 = select i1 %2319, i64 10, i64 23
  %2323 = add i64 %2312, %.v1349
  store i64 %2323, i64* %3, align 8
  %2324 = load i64, i64* %RBP.i, align 8
  br i1 %2319, label %block_42126f, label %block_.L_42127c

block_42126f:                                     ; preds = %block_.L_421248
  %2325 = add i64 %2324, -8
  %2326 = add i64 %2323, 8
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i64*
  store i64 0, i64* %2327, align 8
  %2328 = load i64, i64* %3, align 8
  %2329 = add i64 %2328, 1261
  store i64 %2329, i64* %3, align 8
  br label %block_.L_421764

block_.L_42127c:                                  ; preds = %block_.L_421248
  %2330 = add i64 %2324, -576
  %2331 = add i64 %2323, 7
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i64*
  %2333 = load i64, i64* %2332, align 8
  store i64 %2333, i64* %RDI.i316, align 8
  %2334 = add i64 %2323, -130636
  %2335 = add i64 %2323, 12
  %2336 = load i64, i64* %6, align 8
  %2337 = add i64 %2336, -8
  %2338 = inttoptr i64 %2337 to i64*
  store i64 %2335, i64* %2338, align 8
  store i64 %2337, i64* %6, align 8
  store i64 %2334, i64* %3, align 8
  %2339 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_421259)
  %2340 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -560
  store i64 %2342, i64* %RDI.i316, align 8
  %2343 = load <2 x i32>, <2 x i32>* %932, align 1
  %2344 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast82 = bitcast <2 x i32> %2343 to double
  %2345 = fptrunc double %.cast82 to float
  store float %2345, float* %935, align 1
  %2346 = extractelement <2 x i32> %2343, i32 1
  store i32 %2346, i32* %937, align 1
  %2347 = extractelement <2 x i32> %2344, i32 0
  store i32 %2347, i32* %938, align 1
  %2348 = extractelement <2 x i32> %2344, i32 1
  store i32 %2348, i32* %940, align 1
  %2349 = add i64 %2341, -32
  %2350 = add i64 %2340, 20
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i64*
  %2352 = load i64, i64* %2351, align 8
  store i64 %2352, i64* %RAX.i191, align 8
  %2353 = add i64 %2352, 8
  %2354 = add i64 %2340, 24
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i64*
  %2356 = load i64, i64* %2355, align 8
  store i64 %2356, i64* %RAX.i191, align 8
  %2357 = add i64 %2341, -580
  %2358 = add i64 %2340, 31
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = sext i32 %2360 to i64
  %2362 = mul nsw i64 %2361, 92
  store i64 %2362, i64* %RCX.i230, align 8
  %2363 = lshr i64 %2362, 63
  %2364 = add i64 %2362, %2356
  store i64 %2364, i64* %RAX.i191, align 8
  %2365 = icmp ult i64 %2364, %2356
  %2366 = icmp ult i64 %2364, %2362
  %2367 = or i1 %2365, %2366
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %14, align 1
  %2369 = trunc i64 %2364 to i32
  %2370 = and i32 %2369, 255
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %21, align 1
  %2375 = xor i64 %2362, %2356
  %2376 = xor i64 %2375, %2364
  %2377 = lshr i64 %2376, 4
  %2378 = trunc i64 %2377 to i8
  %2379 = and i8 %2378, 1
  store i8 %2379, i8* %26, align 1
  %2380 = icmp eq i64 %2364, 0
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %29, align 1
  %2382 = lshr i64 %2364, 63
  %2383 = trunc i64 %2382 to i8
  store i8 %2383, i8* %32, align 1
  %2384 = lshr i64 %2356, 63
  %2385 = xor i64 %2382, %2384
  %2386 = xor i64 %2382, %2363
  %2387 = add nuw nsw i64 %2385, %2386
  %2388 = icmp eq i64 %2387, 2
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %38, align 1
  %2390 = inttoptr i64 %2364 to float*
  %2391 = add i64 %2340, 42
  store i64 %2391, i64* %3, align 8
  %2392 = load <2 x float>, <2 x float>* %941, align 1
  %2393 = extractelement <2 x float> %2392, i32 0
  store float %2393, float* %2390, align 4
  %2394 = load i64, i64* %RBP.i, align 8
  %2395 = add i64 %2394, -16
  %2396 = load i64, i64* %3, align 8
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2395 to i64*
  %2399 = load i64, i64* %2398, align 8
  store i64 %2399, i64* %RDX.i435, align 8
  %2400 = add i64 %2396, -130418
  %2401 = add i64 %2396, 9
  %2402 = load i64, i64* %6, align 8
  %2403 = add i64 %2402, -8
  %2404 = inttoptr i64 %2403 to i64*
  store i64 %2401, i64* %2404, align 8
  store i64 %2403, i64* %6, align 8
  store i64 %2400, i64* %3, align 8
  %call2_4212b6 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2400, %struct.Memory* %2339)
  %2405 = load i64, i64* %RAX.i191, align 8
  %2406 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2407 = trunc i64 %2405 to i32
  %2408 = and i32 %2407, 255
  %2409 = tail call i32 @llvm.ctpop.i32(i32 %2408)
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = xor i8 %2411, 1
  store i8 %2412, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2413 = icmp eq i64 %2405, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %29, align 1
  %2415 = lshr i64 %2405, 63
  %2416 = trunc i64 %2415 to i8
  store i8 %2416, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1350 = select i1 %2413, i64 10, i64 23
  %2417 = add i64 %2406, %.v1350
  store i64 %2417, i64* %3, align 8
  br i1 %2413, label %block_4212c5, label %block_.L_4212d2

block_4212c5:                                     ; preds = %block_.L_42127c
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -8
  %2420 = add i64 %2417, 8
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i64*
  store i64 0, i64* %2421, align 8
  %2422 = load i64, i64* %3, align 8
  %2423 = add i64 %2422, 1175
  store i64 %2423, i64* %3, align 8
  br label %block_.L_421764

block_.L_4212d2:                                  ; preds = %block_.L_42127c
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %2424 = load i64, i64* %RBP.i, align 8
  %2425 = add i64 %2424, -560
  store i64 %2425, i64* %RDI.i316, align 8
  %2426 = add i64 %2417, -130162
  %2427 = add i64 %2417, 22
  %2428 = load i64, i64* %6, align 8
  %2429 = add i64 %2428, -8
  %2430 = inttoptr i64 %2429 to i64*
  store i64 %2427, i64* %2430, align 8
  store i64 %2429, i64* %6, align 8
  store i64 %2426, i64* %3, align 8
  %call2_4212e3 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2426, %struct.Memory* %call2_4212b6)
  %2431 = load i64, i64* %RBP.i, align 8
  %2432 = add i64 %2431, -576
  %2433 = load i64, i64* %RAX.i191, align 8
  %2434 = load i64, i64* %3, align 8
  %2435 = add i64 %2434, 7
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2432 to i64*
  store i64 %2433, i64* %2436, align 8
  %2437 = load i64, i64* %RAX.i191, align 8
  %2438 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2439 = trunc i64 %2437 to i32
  %2440 = and i32 %2439, 255
  %2441 = tail call i32 @llvm.ctpop.i32(i32 %2440)
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  store i8 %2444, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2445 = icmp eq i64 %2437, 0
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %29, align 1
  %2447 = lshr i64 %2437, 63
  %2448 = trunc i64 %2447 to i8
  store i8 %2448, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1351 = select i1 %2445, i64 10, i64 23
  %2449 = add i64 %2438, %.v1351
  store i64 %2449, i64* %3, align 8
  %2450 = load i64, i64* %RBP.i, align 8
  br i1 %2445, label %block_4212f9, label %block_.L_421306

block_4212f9:                                     ; preds = %block_.L_4212d2
  %2451 = add i64 %2450, -8
  %2452 = add i64 %2449, 8
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i64*
  store i64 0, i64* %2453, align 8
  %2454 = load i64, i64* %3, align 8
  %2455 = add i64 %2454, 1123
  store i64 %2455, i64* %3, align 8
  br label %block_.L_421764

block_.L_421306:                                  ; preds = %block_.L_4212d2
  %2456 = add i64 %2450, -576
  %2457 = add i64 %2449, 7
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i64*
  %2459 = load i64, i64* %2458, align 8
  store i64 %2459, i64* %RDI.i316, align 8
  %2460 = add i64 %2449, -130774
  %2461 = add i64 %2449, 12
  %2462 = load i64, i64* %6, align 8
  %2463 = add i64 %2462, -8
  %2464 = inttoptr i64 %2463 to i64*
  store i64 %2461, i64* %2464, align 8
  store i64 %2463, i64* %6, align 8
  store i64 %2460, i64* %3, align 8
  %2465 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_4212e3)
  %2466 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %2467 = load i64, i64* %RBP.i, align 8
  %2468 = add i64 %2467, -560
  store i64 %2468, i64* %RDI.i316, align 8
  %2469 = load <2 x i32>, <2 x i32>* %932, align 1
  %2470 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast83 = bitcast <2 x i32> %2469 to double
  %2471 = fptrunc double %.cast83 to float
  store float %2471, float* %935, align 1
  %2472 = extractelement <2 x i32> %2469, i32 1
  store i32 %2472, i32* %937, align 1
  %2473 = extractelement <2 x i32> %2470, i32 0
  store i32 %2473, i32* %938, align 1
  %2474 = extractelement <2 x i32> %2470, i32 1
  store i32 %2474, i32* %940, align 1
  %2475 = add i64 %2467, -32
  %2476 = add i64 %2466, 20
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i64*
  %2478 = load i64, i64* %2477, align 8
  store i64 %2478, i64* %RAX.i191, align 8
  %2479 = add i64 %2478, 8
  %2480 = add i64 %2466, 24
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i64*
  %2482 = load i64, i64* %2481, align 8
  store i64 %2482, i64* %RAX.i191, align 8
  %2483 = add i64 %2467, -580
  %2484 = add i64 %2466, 31
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = sext i32 %2486 to i64
  %2488 = mul nsw i64 %2487, 92
  store i64 %2488, i64* %RCX.i230, align 8
  %2489 = lshr i64 %2488, 63
  %2490 = add i64 %2488, %2482
  store i64 %2490, i64* %RAX.i191, align 8
  %2491 = icmp ult i64 %2490, %2482
  %2492 = icmp ult i64 %2490, %2488
  %2493 = or i1 %2491, %2492
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %14, align 1
  %2495 = trunc i64 %2490 to i32
  %2496 = and i32 %2495, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %21, align 1
  %2501 = xor i64 %2488, %2482
  %2502 = xor i64 %2501, %2490
  %2503 = lshr i64 %2502, 4
  %2504 = trunc i64 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %26, align 1
  %2506 = icmp eq i64 %2490, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %29, align 1
  %2508 = lshr i64 %2490, 63
  %2509 = trunc i64 %2508 to i8
  store i8 %2509, i8* %32, align 1
  %2510 = lshr i64 %2482, 63
  %2511 = xor i64 %2508, %2510
  %2512 = xor i64 %2508, %2489
  %2513 = add nuw nsw i64 %2511, %2512
  %2514 = icmp eq i64 %2513, 2
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %38, align 1
  %2516 = add i64 %2490, 8
  %2517 = add i64 %2466, 43
  store i64 %2517, i64* %3, align 8
  %2518 = load <2 x float>, <2 x float>* %941, align 1
  %2519 = extractelement <2 x float> %2518, i32 0
  %2520 = inttoptr i64 %2516 to float*
  store float %2519, float* %2520, align 4
  %2521 = load i64, i64* %RBP.i, align 8
  %2522 = add i64 %2521, -16
  %2523 = load i64, i64* %3, align 8
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2522 to i64*
  %2526 = load i64, i64* %2525, align 8
  store i64 %2526, i64* %RDX.i435, align 8
  %2527 = add i64 %2523, -130557
  %2528 = add i64 %2523, 9
  %2529 = load i64, i64* %6, align 8
  %2530 = add i64 %2529, -8
  %2531 = inttoptr i64 %2530 to i64*
  store i64 %2528, i64* %2531, align 8
  store i64 %2530, i64* %6, align 8
  store i64 %2527, i64* %3, align 8
  %call2_421341 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2527, %struct.Memory* %2465)
  %2532 = load i64, i64* %RAX.i191, align 8
  %2533 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2534 = trunc i64 %2532 to i32
  %2535 = and i32 %2534, 255
  %2536 = tail call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  store i8 %2539, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2540 = icmp eq i64 %2532, 0
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %29, align 1
  %2542 = lshr i64 %2532, 63
  %2543 = trunc i64 %2542 to i8
  store i8 %2543, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1352 = select i1 %2540, i64 10, i64 23
  %2544 = add i64 %2533, %.v1352
  store i64 %2544, i64* %3, align 8
  br i1 %2540, label %block_421350, label %block_.L_42135d

block_421350:                                     ; preds = %block_.L_421306
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -8
  %2547 = add i64 %2544, 8
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i64*
  store i64 0, i64* %2548, align 8
  %2549 = load i64, i64* %3, align 8
  %2550 = add i64 %2549, 1036
  store i64 %2550, i64* %3, align 8
  br label %block_.L_421764

block_.L_42135d:                                  ; preds = %block_.L_421306
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %2551 = load i64, i64* %RBP.i, align 8
  %2552 = add i64 %2551, -560
  store i64 %2552, i64* %RDI.i316, align 8
  %2553 = add i64 %2544, -130301
  %2554 = add i64 %2544, 22
  %2555 = load i64, i64* %6, align 8
  %2556 = add i64 %2555, -8
  %2557 = inttoptr i64 %2556 to i64*
  store i64 %2554, i64* %2557, align 8
  store i64 %2556, i64* %6, align 8
  store i64 %2553, i64* %3, align 8
  %call2_42136e = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2553, %struct.Memory* %call2_421341)
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -576
  %2560 = load i64, i64* %RAX.i191, align 8
  %2561 = load i64, i64* %3, align 8
  %2562 = add i64 %2561, 7
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2559 to i64*
  store i64 %2560, i64* %2563, align 8
  %2564 = load i64, i64* %RAX.i191, align 8
  %2565 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2566 = trunc i64 %2564 to i32
  %2567 = and i32 %2566, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2572 = icmp eq i64 %2564, 0
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %29, align 1
  %2574 = lshr i64 %2564, 63
  %2575 = trunc i64 %2574 to i8
  store i8 %2575, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1353 = select i1 %2572, i64 10, i64 23
  %2576 = add i64 %2565, %.v1353
  store i64 %2576, i64* %3, align 8
  %2577 = load i64, i64* %RBP.i, align 8
  br i1 %2572, label %block_421384, label %block_.L_421391

block_421384:                                     ; preds = %block_.L_42135d
  %2578 = add i64 %2577, -8
  %2579 = add i64 %2576, 8
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i64*
  store i64 0, i64* %2580, align 8
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, 984
  store i64 %2582, i64* %3, align 8
  br label %block_.L_421764

block_.L_421391:                                  ; preds = %block_.L_42135d
  %2583 = add i64 %2577, -576
  %2584 = add i64 %2576, 7
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i64*
  %2586 = load i64, i64* %2585, align 8
  store i64 %2586, i64* %RDI.i316, align 8
  %2587 = add i64 %2576, -130913
  %2588 = add i64 %2576, 12
  %2589 = load i64, i64* %6, align 8
  %2590 = add i64 %2589, -8
  %2591 = inttoptr i64 %2590 to i64*
  store i64 %2588, i64* %2591, align 8
  store i64 %2590, i64* %6, align 8
  store i64 %2587, i64* %3, align 8
  %2592 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_42136e)
  %2593 = load i64, i64* %3, align 8
  %2594 = load <2 x i32>, <2 x i32>* %932, align 1
  %2595 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast84 = bitcast <2 x i32> %2594 to double
  %2596 = fptrunc double %.cast84 to float
  store float %2596, float* %935, align 1
  %2597 = extractelement <2 x i32> %2594, i32 1
  store i32 %2597, i32* %937, align 1
  %2598 = extractelement <2 x i32> %2595, i32 0
  store i32 %2598, i32* %938, align 1
  %2599 = extractelement <2 x i32> %2595, i32 1
  store i32 %2599, i32* %940, align 1
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -32
  %2602 = add i64 %2593, 8
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i64*
  %2604 = load i64, i64* %2603, align 8
  store i64 %2604, i64* %RDI.i316, align 8
  %2605 = add i64 %2604, 8
  %2606 = add i64 %2593, 12
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i64*
  %2608 = load i64, i64* %2607, align 8
  store i64 %2608, i64* %RDI.i316, align 8
  %2609 = add i64 %2600, -580
  %2610 = add i64 %2593, 19
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = sext i32 %2612 to i64
  %2614 = mul nsw i64 %2613, 92
  store i64 %2614, i64* %RAX.i191, align 8
  %2615 = lshr i64 %2614, 63
  %2616 = add i64 %2614, %2608
  store i64 %2616, i64* %RDI.i316, align 8
  %2617 = icmp ult i64 %2616, %2608
  %2618 = icmp ult i64 %2616, %2614
  %2619 = or i1 %2617, %2618
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %14, align 1
  %2621 = trunc i64 %2616 to i32
  %2622 = and i32 %2621, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %21, align 1
  %2627 = xor i64 %2614, %2608
  %2628 = xor i64 %2627, %2616
  %2629 = lshr i64 %2628, 4
  %2630 = trunc i64 %2629 to i8
  %2631 = and i8 %2630, 1
  store i8 %2631, i8* %26, align 1
  %2632 = icmp eq i64 %2616, 0
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %29, align 1
  %2634 = lshr i64 %2616, 63
  %2635 = trunc i64 %2634 to i8
  store i8 %2635, i8* %32, align 1
  %2636 = lshr i64 %2608, 63
  %2637 = xor i64 %2634, %2636
  %2638 = xor i64 %2634, %2615
  %2639 = add nuw nsw i64 %2637, %2638
  %2640 = icmp eq i64 %2639, 2
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %38, align 1
  %2642 = add i64 %2616, 4
  %2643 = add i64 %2593, 31
  store i64 %2643, i64* %3, align 8
  %2644 = load <2 x float>, <2 x float>* %941, align 1
  %2645 = extractelement <2 x float> %2644, i32 0
  %2646 = inttoptr i64 %2642 to float*
  store float %2645, float* %2646, align 4
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -584
  %2649 = load i64, i64* %3, align 8
  %2650 = add i64 %2649, 10
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2648 to i32*
  store i32 0, i32* %2651, align 4
  %.pre1302 = load i64, i64* %3, align 8
  br label %block_.L_4213c6

block_.L_4213c6:                                  ; preds = %block_.L_421439, %block_.L_421391
  %2652 = phi i64 [ %.pre1302, %block_.L_421391 ], [ %2850, %block_.L_421439 ]
  %MEMORY.20 = phi %struct.Memory* [ %2592, %block_.L_421391 ], [ %2757, %block_.L_421439 ]
  %2653 = load i64, i64* %RBP.i, align 8
  %2654 = add i64 %2653, -584
  %2655 = add i64 %2652, 6
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RAX.i191, align 8
  %2659 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2660 = sub i32 %2657, %2659
  %2661 = icmp ult i32 %2657, %2659
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %14, align 1
  %2663 = and i32 %2660, 255
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %21, align 1
  %2668 = xor i32 %2659, %2657
  %2669 = xor i32 %2668, %2660
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %26, align 1
  %2673 = icmp eq i32 %2660, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %29, align 1
  %2675 = lshr i32 %2660, 31
  %2676 = trunc i32 %2675 to i8
  store i8 %2676, i8* %32, align 1
  %2677 = lshr i32 %2657, 31
  %2678 = lshr i32 %2659, 31
  %2679 = xor i32 %2678, %2677
  %2680 = xor i32 %2675, %2677
  %2681 = add nuw nsw i32 %2680, %2679
  %2682 = icmp eq i32 %2681, 2
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %38, align 1
  %2684 = icmp ne i8 %2676, 0
  %2685 = xor i1 %2684, %2682
  %.v1354 = select i1 %2685, i64 19, i64 186
  %2686 = add i64 %2652, %.v1354
  store i64 %2686, i64* %3, align 8
  br i1 %2685, label %block_4213d9, label %block_.L_421480

block_4213d9:                                     ; preds = %block_.L_4213c6
  store i64 512, i64* %RSI.i532, align 8
  %2687 = add i64 %2653, -560
  store i64 %2687, i64* %RDI.i316, align 8
  %2688 = add i64 %2653, -16
  %2689 = add i64 %2686, 16
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i64*
  %2691 = load i64, i64* %2690, align 8
  store i64 %2691, i64* %RDX.i435, align 8
  %2692 = add i64 %2686, -130713
  %2693 = add i64 %2686, 21
  %2694 = load i64, i64* %6, align 8
  %2695 = add i64 %2694, -8
  %2696 = inttoptr i64 %2695 to i64*
  store i64 %2693, i64* %2696, align 8
  store i64 %2695, i64* %6, align 8
  store i64 %2692, i64* %3, align 8
  %call2_4213e9 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2692, %struct.Memory* %MEMORY.20)
  %2697 = load i64, i64* %RAX.i191, align 8
  %2698 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2699 = trunc i64 %2697 to i32
  %2700 = and i32 %2699, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2705 = icmp eq i64 %2697, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %29, align 1
  %2707 = lshr i64 %2697, 63
  %2708 = trunc i64 %2707 to i8
  store i8 %2708, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1358 = select i1 %2705, i64 10, i64 23
  %2709 = add i64 %2698, %.v1358
  store i64 %2709, i64* %3, align 8
  br i1 %2705, label %block_4213f8, label %block_.L_421405

block_4213f8:                                     ; preds = %block_4213d9
  %2710 = load i64, i64* %RBP.i, align 8
  %2711 = add i64 %2710, -8
  %2712 = add i64 %2709, 8
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i64*
  store i64 0, i64* %2713, align 8
  %2714 = load i64, i64* %3, align 8
  %2715 = add i64 %2714, 868
  store i64 %2715, i64* %3, align 8
  br label %block_.L_421764

block_.L_421405:                                  ; preds = %block_4213d9
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %2716 = load i64, i64* %RBP.i, align 8
  %2717 = add i64 %2716, -560
  store i64 %2717, i64* %RDI.i316, align 8
  %2718 = add i64 %2709, -130469
  %2719 = add i64 %2709, 22
  %2720 = load i64, i64* %6, align 8
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2719, i64* %2722, align 8
  store i64 %2721, i64* %6, align 8
  store i64 %2718, i64* %3, align 8
  %call2_421416 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %2718, %struct.Memory* %MEMORY.20)
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -576
  %2725 = load i64, i64* %RAX.i191, align 8
  %2726 = load i64, i64* %3, align 8
  %2727 = add i64 %2726, 7
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2724 to i64*
  store i64 %2725, i64* %2728, align 8
  %2729 = load i64, i64* %RAX.i191, align 8
  %2730 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2731 = trunc i64 %2729 to i32
  %2732 = and i32 %2731, 255
  %2733 = tail call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  store i8 %2736, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2737 = icmp eq i64 %2729, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %29, align 1
  %2739 = lshr i64 %2729, 63
  %2740 = trunc i64 %2739 to i8
  store i8 %2740, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1359 = select i1 %2737, i64 10, i64 23
  %2741 = add i64 %2730, %.v1359
  store i64 %2741, i64* %3, align 8
  %2742 = load i64, i64* %RBP.i, align 8
  br i1 %2737, label %block_42142c, label %block_.L_421439

block_42142c:                                     ; preds = %block_.L_421405
  %2743 = add i64 %2742, -8
  %2744 = add i64 %2741, 8
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i64*
  store i64 0, i64* %2745, align 8
  %2746 = load i64, i64* %3, align 8
  %2747 = add i64 %2746, 816
  store i64 %2747, i64* %3, align 8
  br label %block_.L_421764

block_.L_421439:                                  ; preds = %block_.L_421405
  %2748 = add i64 %2742, -576
  %2749 = add i64 %2741, 7
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i64*
  %2751 = load i64, i64* %2750, align 8
  store i64 %2751, i64* %RDI.i316, align 8
  %2752 = add i64 %2741, -131081
  %2753 = add i64 %2741, 12
  %2754 = load i64, i64* %6, align 8
  %2755 = add i64 %2754, -8
  %2756 = inttoptr i64 %2755 to i64*
  store i64 %2753, i64* %2756, align 8
  store i64 %2755, i64* %6, align 8
  store i64 %2752, i64* %3, align 8
  %2757 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %MEMORY.20)
  %2758 = load i64, i64* %3, align 8
  %2759 = load <2 x i32>, <2 x i32>* %932, align 1
  %2760 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast85 = bitcast <2 x i32> %2759 to double
  %2761 = fptrunc double %.cast85 to float
  store float %2761, float* %935, align 1
  %2762 = extractelement <2 x i32> %2759, i32 1
  store i32 %2762, i32* %937, align 1
  %2763 = extractelement <2 x i32> %2760, i32 0
  store i32 %2763, i32* %938, align 1
  %2764 = extractelement <2 x i32> %2760, i32 1
  store i32 %2764, i32* %940, align 1
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -32
  %2767 = add i64 %2758, 8
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i64*
  %2769 = load i64, i64* %2768, align 8
  store i64 %2769, i64* %RDI.i316, align 8
  %2770 = add i64 %2769, 8
  %2771 = add i64 %2758, 12
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i64*
  %2773 = load i64, i64* %2772, align 8
  store i64 %2773, i64* %RDI.i316, align 8
  %2774 = add i64 %2765, -580
  %2775 = add i64 %2758, 19
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2774 to i32*
  %2777 = load i32, i32* %2776, align 4
  %2778 = sext i32 %2777 to i64
  %2779 = mul nsw i64 %2778, 92
  store i64 %2779, i64* %RAX.i191, align 8
  %2780 = lshr i64 %2779, 63
  %2781 = add i64 %2779, %2773
  store i64 %2781, i64* %RDI.i316, align 8
  %2782 = icmp ult i64 %2781, %2773
  %2783 = icmp ult i64 %2781, %2779
  %2784 = or i1 %2782, %2783
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %14, align 1
  %2786 = trunc i64 %2781 to i32
  %2787 = and i32 %2786, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %21, align 1
  %2792 = xor i64 %2779, %2773
  %2793 = xor i64 %2792, %2781
  %2794 = lshr i64 %2793, 4
  %2795 = trunc i64 %2794 to i8
  %2796 = and i8 %2795, 1
  store i8 %2796, i8* %26, align 1
  %2797 = icmp eq i64 %2781, 0
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %29, align 1
  %2799 = lshr i64 %2781, 63
  %2800 = trunc i64 %2799 to i8
  store i8 %2800, i8* %32, align 1
  %2801 = lshr i64 %2773, 63
  %2802 = xor i64 %2799, %2801
  %2803 = xor i64 %2799, %2780
  %2804 = add nuw nsw i64 %2802, %2803
  %2805 = icmp eq i64 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %38, align 1
  %2807 = add i64 %2765, -584
  %2808 = add i64 %2758, 33
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  %2811 = sext i32 %2810 to i64
  store i64 %2811, i64* %RAX.i191, align 8
  %2812 = shl nsw i64 %2811, 2
  %2813 = add i64 %2781, 12
  %2814 = add i64 %2813, %2812
  %2815 = add i64 %2758, 39
  store i64 %2815, i64* %3, align 8
  %2816 = load <2 x float>, <2 x float>* %941, align 1
  %2817 = extractelement <2 x float> %2816, i32 0
  %2818 = inttoptr i64 %2814 to float*
  store float %2817, float* %2818, align 4
  %2819 = load i64, i64* %RBP.i, align 8
  %2820 = add i64 %2819, -584
  %2821 = load i64, i64* %3, align 8
  %2822 = add i64 %2821, 6
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2820 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = add i32 %2824, 1
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RAX.i191, align 8
  %2827 = icmp eq i32 %2824, -1
  %2828 = icmp eq i32 %2825, 0
  %2829 = or i1 %2827, %2828
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %14, align 1
  %2831 = and i32 %2825, 255
  %2832 = tail call i32 @llvm.ctpop.i32(i32 %2831)
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  store i8 %2835, i8* %21, align 1
  %2836 = xor i32 %2825, %2824
  %2837 = lshr i32 %2836, 4
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  store i8 %2839, i8* %26, align 1
  %2840 = zext i1 %2828 to i8
  store i8 %2840, i8* %29, align 1
  %2841 = lshr i32 %2825, 31
  %2842 = trunc i32 %2841 to i8
  store i8 %2842, i8* %32, align 1
  %2843 = lshr i32 %2824, 31
  %2844 = xor i32 %2841, %2843
  %2845 = add nuw nsw i32 %2844, %2841
  %2846 = icmp eq i32 %2845, 2
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %38, align 1
  %2848 = add i64 %2821, 15
  store i64 %2848, i64* %3, align 8
  store i32 %2825, i32* %2823, align 4
  %2849 = load i64, i64* %3, align 8
  %2850 = add i64 %2849, -181
  store i64 %2850, i64* %3, align 8
  br label %block_.L_4213c6

block_.L_421480:                                  ; preds = %block_.L_4213c6
  %2851 = add i64 %2653, -20
  %2852 = add i64 %2686, 4
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = add i32 %2854, -2
  %2856 = icmp ult i32 %2854, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %14, align 1
  %2858 = and i32 %2855, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %21, align 1
  %2863 = xor i32 %2855, %2854
  %2864 = lshr i32 %2863, 4
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  store i8 %2866, i8* %26, align 1
  %2867 = icmp eq i32 %2855, 0
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %29, align 1
  %2869 = lshr i32 %2855, 31
  %2870 = trunc i32 %2869 to i8
  store i8 %2870, i8* %32, align 1
  %2871 = lshr i32 %2854, 31
  %2872 = xor i32 %2869, %2871
  %2873 = add nuw nsw i32 %2872, %2871
  %2874 = icmp eq i32 %2873, 2
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %38, align 1
  %.v1355 = select i1 %2867, i64 10, i64 118
  %2876 = add i64 %2686, %.v1355
  store i64 %2876, i64* %3, align 8
  br i1 %2867, label %block_42148a, label %block_.L_4214f6

block_42148a:                                     ; preds = %block_.L_421480
  %2877 = add i64 %2876, 10
  store i64 %2877, i64* %3, align 8
  store i32 0, i32* %2656, align 4
  %.pre1303 = load i64, i64* %3, align 8
  br label %block_.L_421494

block_.L_421494:                                  ; preds = %block_.L_4214d8, %block_42148a
  %2878 = phi i64 [ %2974, %block_.L_4214d8 ], [ %.pre1303, %block_42148a ]
  %2879 = load i64, i64* %RBP.i, align 8
  %2880 = add i64 %2879, -584
  %2881 = add i64 %2878, 6
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i32*
  %2883 = load i32, i32* %2882, align 4
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RAX.i191, align 8
  %2885 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2886 = add i32 %2885, 3
  %2887 = zext i32 %2886 to i64
  store i64 %2887, i64* %RCX.i230, align 8
  %2888 = lshr i32 %2886, 31
  %2889 = sub i32 %2883, %2886
  %2890 = icmp ult i32 %2883, %2886
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %14, align 1
  %2892 = and i32 %2889, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %21, align 1
  %2897 = xor i32 %2886, %2883
  %2898 = xor i32 %2897, %2889
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %26, align 1
  %2902 = icmp eq i32 %2889, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %29, align 1
  %2904 = lshr i32 %2889, 31
  %2905 = trunc i32 %2904 to i8
  store i8 %2905, i8* %32, align 1
  %2906 = lshr i32 %2883, 31
  %2907 = xor i32 %2888, %2906
  %2908 = xor i32 %2904, %2906
  %2909 = add nuw nsw i32 %2908, %2907
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %38, align 1
  %2912 = icmp ne i8 %2905, 0
  %2913 = xor i1 %2912, %2910
  %.v1356 = select i1 %2913, i64 24, i64 93
  %2914 = add i64 %2878, %.v1356
  %2915 = add i64 %2914, 5
  store i64 %2915, i64* %3, align 8
  br i1 %2913, label %block_4214ac, label %block_.L_4214f6.loopexit

block_4214ac:                                     ; preds = %block_.L_421494
  store i64 512, i64* %RSI.i532, align 8
  %2916 = add i64 %2879, -560
  store i64 %2916, i64* %RDI.i316, align 8
  %2917 = add i64 %2879, -16
  %2918 = add i64 %2914, 16
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i64*
  %2920 = load i64, i64* %2919, align 8
  store i64 %2920, i64* %RDX.i435, align 8
  %2921 = add i64 %2914, -130924
  %2922 = add i64 %2914, 21
  %2923 = load i64, i64* %6, align 8
  %2924 = add i64 %2923, -8
  %2925 = inttoptr i64 %2924 to i64*
  store i64 %2922, i64* %2925, align 8
  store i64 %2924, i64* %6, align 8
  store i64 %2921, i64* %3, align 8
  %call2_4214bc = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %2921, %struct.Memory* %MEMORY.20)
  %2926 = load i64, i64* %RAX.i191, align 8
  %2927 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2928 = trunc i64 %2926 to i32
  %2929 = and i32 %2928, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2934 = icmp eq i64 %2926, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %29, align 1
  %2936 = lshr i64 %2926, 63
  %2937 = trunc i64 %2936 to i8
  store i8 %2937, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1357 = select i1 %2934, i64 10, i64 23
  %2938 = add i64 %2927, %.v1357
  store i64 %2938, i64* %3, align 8
  %2939 = load i64, i64* %RBP.i, align 8
  br i1 %2934, label %block_4214cb, label %block_.L_4214d8

block_4214cb:                                     ; preds = %block_4214ac
  %2940 = add i64 %2939, -8
  %2941 = add i64 %2938, 8
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i64*
  store i64 0, i64* %2942, align 8
  %2943 = load i64, i64* %3, align 8
  %2944 = add i64 %2943, 657
  store i64 %2944, i64* %3, align 8
  br label %block_.L_421764

block_.L_4214d8:                                  ; preds = %block_4214ac
  %2945 = add i64 %2939, -584
  %2946 = add i64 %2938, 11
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = add i32 %2948, 1
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RAX.i191, align 8
  %2951 = icmp eq i32 %2948, -1
  %2952 = icmp eq i32 %2949, 0
  %2953 = or i1 %2951, %2952
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %14, align 1
  %2955 = and i32 %2949, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %21, align 1
  %2960 = xor i32 %2949, %2948
  %2961 = lshr i32 %2960, 4
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %26, align 1
  %2964 = zext i1 %2952 to i8
  store i8 %2964, i8* %29, align 1
  %2965 = lshr i32 %2949, 31
  %2966 = trunc i32 %2965 to i8
  store i8 %2966, i8* %32, align 1
  %2967 = lshr i32 %2948, 31
  %2968 = xor i32 %2965, %2967
  %2969 = add nuw nsw i32 %2968, %2965
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %38, align 1
  %2972 = add i64 %2938, 20
  store i64 %2972, i64* %3, align 8
  store i32 %2949, i32* %2947, align 4
  %2973 = load i64, i64* %3, align 8
  %2974 = add i64 %2973, -88
  store i64 %2974, i64* %3, align 8
  br label %block_.L_421494

block_.L_4214f6.loopexit:                         ; preds = %block_.L_421494
  br label %block_.L_4214f6

block_.L_4214f6:                                  ; preds = %block_.L_4214f6.loopexit, %block_.L_421480
  %2975 = phi i64 [ %2876, %block_.L_421480 ], [ %2915, %block_.L_4214f6.loopexit ]
  %2976 = phi i64 [ %2653, %block_.L_421480 ], [ %2879, %block_.L_4214f6.loopexit ]
  %2977 = add i64 %2975, 579
  br label %block_.L_421739

block_.L_4214fb:                                  ; preds = %block_.L_421200
  %2978 = load i64, i64* %RBP.i, align 8
  %2979 = add i64 %2978, -568
  %2980 = add i64 %2267, 7
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i64*
  %2982 = load i64, i64* %2981, align 8
  store i64 %2982, i64* %RDI.i316, align 8
  store i64 and (i64 ptrtoint (%G__0x457937_type* @G__0x457937 to i64), i64 4294967295), i64* %RAX.i191, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457937_type* @G__0x457937 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i532, align 8
  %2983 = add i64 %2267, -130971
  %2984 = add i64 %2267, 19
  %2985 = load i64, i64* %6, align 8
  %2986 = add i64 %2985, -8
  %2987 = inttoptr i64 %2986 to i64*
  store i64 %2984, i64* %2987, align 8
  store i64 %2986, i64* %6, align 8
  store i64 %2983, i64* %3, align 8
  %2988 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %2255)
  %2989 = load i32, i32* %EAX.i531, align 4
  %2990 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2991 = and i32 %2989, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2996 = icmp eq i32 %2989, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %29, align 1
  %2998 = lshr i32 %2989, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1338 = select i1 %2996, i64 9, i64 537
  %3000 = add i64 %2990, %.v1338
  store i64 %3000, i64* %3, align 8
  br i1 %2996, label %block_421517, label %block_.L_421727

block_421517:                                     ; preds = %block_.L_4214fb
  store i64 512, i64* %RSI.i532, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -560
  store i64 %3002, i64* %RDI.i316, align 8
  %3003 = add i64 %3001, -16
  %3004 = add i64 %3000, 16
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3003 to i64*
  %3006 = load i64, i64* %3005, align 8
  store i64 %3006, i64* %RDX.i435, align 8
  %3007 = add i64 %3000, -131031
  %3008 = add i64 %3000, 21
  %3009 = load i64, i64* %6, align 8
  %3010 = add i64 %3009, -8
  %3011 = inttoptr i64 %3010 to i64*
  store i64 %3008, i64* %3011, align 8
  store i64 %3010, i64* %6, align 8
  store i64 %3007, i64* %3, align 8
  %call2_421527 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3007, %struct.Memory* %2988)
  %3012 = load i64, i64* %RAX.i191, align 8
  %3013 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3014 = trunc i64 %3012 to i32
  %3015 = and i32 %3014, 255
  %3016 = tail call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  store i8 %3019, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3020 = icmp eq i64 %3012, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %29, align 1
  %3022 = lshr i64 %3012, 63
  %3023 = trunc i64 %3022 to i8
  store i8 %3023, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1339 = select i1 %3020, i64 10, i64 23
  %3024 = add i64 %3013, %.v1339
  store i64 %3024, i64* %3, align 8
  br i1 %3020, label %block_421536, label %block_.L_421543

block_421536:                                     ; preds = %block_421517
  %3025 = load i64, i64* %RBP.i, align 8
  %3026 = add i64 %3025, -8
  %3027 = add i64 %3024, 8
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  store i64 0, i64* %3028, align 8
  %3029 = load i64, i64* %3, align 8
  %3030 = add i64 %3029, 550
  store i64 %3030, i64* %3, align 8
  br label %block_.L_421764

block_.L_421543:                                  ; preds = %block_421517
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -560
  store i64 %3032, i64* %RDI.i316, align 8
  %3033 = add i64 %3024, -130787
  %3034 = add i64 %3024, 22
  %3035 = load i64, i64* %6, align 8
  %3036 = add i64 %3035, -8
  %3037 = inttoptr i64 %3036 to i64*
  store i64 %3034, i64* %3037, align 8
  store i64 %3036, i64* %6, align 8
  store i64 %3033, i64* %3, align 8
  %call2_421554 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3033, %struct.Memory* %call2_421527)
  %3038 = load i64, i64* %RBP.i, align 8
  %3039 = add i64 %3038, -576
  %3040 = load i64, i64* %RAX.i191, align 8
  %3041 = load i64, i64* %3, align 8
  %3042 = add i64 %3041, 7
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3039 to i64*
  store i64 %3040, i64* %3043, align 8
  %3044 = load i64, i64* %RAX.i191, align 8
  %3045 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3046 = trunc i64 %3044 to i32
  %3047 = and i32 %3046, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3052 = icmp eq i64 %3044, 0
  %3053 = zext i1 %3052 to i8
  store i8 %3053, i8* %29, align 1
  %3054 = lshr i64 %3044, 63
  %3055 = trunc i64 %3054 to i8
  store i8 %3055, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1340 = select i1 %3052, i64 10, i64 23
  %3056 = add i64 %3045, %.v1340
  store i64 %3056, i64* %3, align 8
  %3057 = load i64, i64* %RBP.i, align 8
  br i1 %3052, label %block_42156a, label %block_.L_421577

block_42156a:                                     ; preds = %block_.L_421543
  %3058 = add i64 %3057, -8
  %3059 = add i64 %3056, 8
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3058 to i64*
  store i64 0, i64* %3060, align 8
  %3061 = load i64, i64* %3, align 8
  %3062 = add i64 %3061, 498
  store i64 %3062, i64* %3, align 8
  br label %block_.L_421764

block_.L_421577:                                  ; preds = %block_.L_421543
  %3063 = add i64 %3057, -576
  %3064 = add i64 %3056, 7
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i64*
  %3066 = load i64, i64* %3065, align 8
  store i64 %3066, i64* %RDI.i316, align 8
  %3067 = add i64 %3056, -131399
  %3068 = add i64 %3056, 12
  %3069 = load i64, i64* %6, align 8
  %3070 = add i64 %3069, -8
  %3071 = inttoptr i64 %3070 to i64*
  store i64 %3068, i64* %3071, align 8
  store i64 %3070, i64* %6, align 8
  store i64 %3067, i64* %3, align 8
  %3072 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_421554)
  %3073 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = add i64 %3074, -560
  store i64 %3075, i64* %RDI.i316, align 8
  %3076 = load <2 x i32>, <2 x i32>* %932, align 1
  %3077 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast87 = bitcast <2 x i32> %3076 to double
  %3078 = fptrunc double %.cast87 to float
  store float %3078, float* %935, align 1
  %3079 = extractelement <2 x i32> %3076, i32 1
  store i32 %3079, i32* %937, align 1
  %3080 = extractelement <2 x i32> %3077, i32 0
  store i32 %3080, i32* %938, align 1
  %3081 = extractelement <2 x i32> %3077, i32 1
  store i32 %3081, i32* %940, align 1
  %3082 = add i64 %3074, -32
  %3083 = add i64 %3073, 20
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i64*
  %3085 = load i64, i64* %3084, align 8
  store i64 %3085, i64* %RAX.i191, align 8
  %3086 = add i64 %3085, 24
  %3087 = add i64 %3073, 24
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %RAX.i191, align 8
  %3090 = add i64 %3074, -580
  %3091 = add i64 %3073, 31
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = sext i32 %3093 to i64
  %3095 = mul nsw i64 %3094, 92
  store i64 %3095, i64* %RCX.i230, align 8
  %3096 = lshr i64 %3095, 63
  %3097 = add i64 %3095, %3089
  store i64 %3097, i64* %RAX.i191, align 8
  %3098 = icmp ult i64 %3097, %3089
  %3099 = icmp ult i64 %3097, %3095
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %14, align 1
  %3102 = trunc i64 %3097 to i32
  %3103 = and i32 %3102, 255
  %3104 = tail call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  store i8 %3107, i8* %21, align 1
  %3108 = xor i64 %3095, %3089
  %3109 = xor i64 %3108, %3097
  %3110 = lshr i64 %3109, 4
  %3111 = trunc i64 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %26, align 1
  %3113 = icmp eq i64 %3097, 0
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %29, align 1
  %3115 = lshr i64 %3097, 63
  %3116 = trunc i64 %3115 to i8
  store i8 %3116, i8* %32, align 1
  %3117 = lshr i64 %3089, 63
  %3118 = xor i64 %3115, %3117
  %3119 = xor i64 %3115, %3096
  %3120 = add nuw nsw i64 %3118, %3119
  %3121 = icmp eq i64 %3120, 2
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %38, align 1
  %3123 = inttoptr i64 %3097 to float*
  %3124 = add i64 %3073, 42
  store i64 %3124, i64* %3, align 8
  %3125 = load <2 x float>, <2 x float>* %941, align 1
  %3126 = extractelement <2 x float> %3125, i32 0
  store float %3126, float* %3123, align 4
  %3127 = load i64, i64* %RBP.i, align 8
  %3128 = add i64 %3127, -16
  %3129 = load i64, i64* %3, align 8
  %3130 = add i64 %3129, 4
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3128 to i64*
  %3132 = load i64, i64* %3131, align 8
  store i64 %3132, i64* %RDX.i435, align 8
  %3133 = add i64 %3129, -131181
  %3134 = add i64 %3129, 9
  %3135 = load i64, i64* %6, align 8
  %3136 = add i64 %3135, -8
  %3137 = inttoptr i64 %3136 to i64*
  store i64 %3134, i64* %3137, align 8
  store i64 %3136, i64* %6, align 8
  store i64 %3133, i64* %3, align 8
  %call2_4215b1 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3133, %struct.Memory* %3072)
  %3138 = load i64, i64* %RAX.i191, align 8
  %3139 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3140 = trunc i64 %3138 to i32
  %3141 = and i32 %3140, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3146 = icmp eq i64 %3138, 0
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i64 %3138, 63
  %3149 = trunc i64 %3148 to i8
  store i8 %3149, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1341 = select i1 %3146, i64 10, i64 23
  %3150 = add i64 %3139, %.v1341
  store i64 %3150, i64* %3, align 8
  br i1 %3146, label %block_4215c0, label %block_.L_4215cd

block_4215c0:                                     ; preds = %block_.L_421577
  %3151 = load i64, i64* %RBP.i, align 8
  %3152 = add i64 %3151, -8
  %3153 = add i64 %3150, 8
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i64*
  store i64 0, i64* %3154, align 8
  %3155 = load i64, i64* %3, align 8
  %3156 = add i64 %3155, 412
  store i64 %3156, i64* %3, align 8
  br label %block_.L_421764

block_.L_4215cd:                                  ; preds = %block_.L_421577
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %3157 = load i64, i64* %RBP.i, align 8
  %3158 = add i64 %3157, -560
  store i64 %3158, i64* %RDI.i316, align 8
  %3159 = add i64 %3150, -130925
  %3160 = add i64 %3150, 22
  %3161 = load i64, i64* %6, align 8
  %3162 = add i64 %3161, -8
  %3163 = inttoptr i64 %3162 to i64*
  store i64 %3160, i64* %3163, align 8
  store i64 %3162, i64* %6, align 8
  store i64 %3159, i64* %3, align 8
  %call2_4215de = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3159, %struct.Memory* %call2_4215b1)
  %3164 = load i64, i64* %RBP.i, align 8
  %3165 = add i64 %3164, -576
  %3166 = load i64, i64* %RAX.i191, align 8
  %3167 = load i64, i64* %3, align 8
  %3168 = add i64 %3167, 7
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3165 to i64*
  store i64 %3166, i64* %3169, align 8
  %3170 = load i64, i64* %RAX.i191, align 8
  %3171 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3172 = trunc i64 %3170 to i32
  %3173 = and i32 %3172, 255
  %3174 = tail call i32 @llvm.ctpop.i32(i32 %3173)
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  %3177 = xor i8 %3176, 1
  store i8 %3177, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3178 = icmp eq i64 %3170, 0
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %29, align 1
  %3180 = lshr i64 %3170, 63
  %3181 = trunc i64 %3180 to i8
  store i8 %3181, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1342 = select i1 %3178, i64 10, i64 23
  %3182 = add i64 %3171, %.v1342
  store i64 %3182, i64* %3, align 8
  %3183 = load i64, i64* %RBP.i, align 8
  br i1 %3178, label %block_4215f4, label %block_.L_421601

block_4215f4:                                     ; preds = %block_.L_4215cd
  %3184 = add i64 %3183, -8
  %3185 = add i64 %3182, 8
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to i64*
  store i64 0, i64* %3186, align 8
  %3187 = load i64, i64* %3, align 8
  %3188 = add i64 %3187, 360
  store i64 %3188, i64* %3, align 8
  br label %block_.L_421764

block_.L_421601:                                  ; preds = %block_.L_4215cd
  %3189 = add i64 %3183, -576
  %3190 = add i64 %3182, 7
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i64*
  %3192 = load i64, i64* %3191, align 8
  store i64 %3192, i64* %RDI.i316, align 8
  %3193 = add i64 %3182, -131537
  %3194 = add i64 %3182, 12
  %3195 = load i64, i64* %6, align 8
  %3196 = add i64 %3195, -8
  %3197 = inttoptr i64 %3196 to i64*
  store i64 %3194, i64* %3197, align 8
  store i64 %3196, i64* %6, align 8
  store i64 %3193, i64* %3, align 8
  %3198 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_4215de)
  %3199 = load i64, i64* %3, align 8
  store i64 512, i64* %RSI.i532, align 8
  %3200 = load i64, i64* %RBP.i, align 8
  %3201 = add i64 %3200, -560
  store i64 %3201, i64* %RDI.i316, align 8
  %3202 = load <2 x i32>, <2 x i32>* %932, align 1
  %3203 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast88 = bitcast <2 x i32> %3202 to double
  %3204 = fptrunc double %.cast88 to float
  store float %3204, float* %935, align 1
  %3205 = extractelement <2 x i32> %3202, i32 1
  store i32 %3205, i32* %937, align 1
  %3206 = extractelement <2 x i32> %3203, i32 0
  store i32 %3206, i32* %938, align 1
  %3207 = extractelement <2 x i32> %3203, i32 1
  store i32 %3207, i32* %940, align 1
  %3208 = add i64 %3200, -32
  %3209 = add i64 %3199, 20
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i64*
  %3211 = load i64, i64* %3210, align 8
  store i64 %3211, i64* %RAX.i191, align 8
  %3212 = add i64 %3211, 24
  %3213 = add i64 %3199, 24
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %RAX.i191, align 8
  %3216 = add i64 %3200, -580
  %3217 = add i64 %3199, 31
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = sext i32 %3219 to i64
  %3221 = mul nsw i64 %3220, 92
  store i64 %3221, i64* %RCX.i230, align 8
  %3222 = lshr i64 %3221, 63
  %3223 = add i64 %3221, %3215
  store i64 %3223, i64* %RAX.i191, align 8
  %3224 = icmp ult i64 %3223, %3215
  %3225 = icmp ult i64 %3223, %3221
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %14, align 1
  %3228 = trunc i64 %3223 to i32
  %3229 = and i32 %3228, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %21, align 1
  %3234 = xor i64 %3221, %3215
  %3235 = xor i64 %3234, %3223
  %3236 = lshr i64 %3235, 4
  %3237 = trunc i64 %3236 to i8
  %3238 = and i8 %3237, 1
  store i8 %3238, i8* %26, align 1
  %3239 = icmp eq i64 %3223, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %29, align 1
  %3241 = lshr i64 %3223, 63
  %3242 = trunc i64 %3241 to i8
  store i8 %3242, i8* %32, align 1
  %3243 = lshr i64 %3215, 63
  %3244 = xor i64 %3241, %3243
  %3245 = xor i64 %3241, %3222
  %3246 = add nuw nsw i64 %3244, %3245
  %3247 = icmp eq i64 %3246, 2
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %38, align 1
  %3249 = add i64 %3223, 8
  %3250 = add i64 %3199, 43
  store i64 %3250, i64* %3, align 8
  %3251 = load <2 x float>, <2 x float>* %941, align 1
  %3252 = extractelement <2 x float> %3251, i32 0
  %3253 = inttoptr i64 %3249 to float*
  store float %3252, float* %3253, align 4
  %3254 = load i64, i64* %RBP.i, align 8
  %3255 = add i64 %3254, -16
  %3256 = load i64, i64* %3, align 8
  %3257 = add i64 %3256, 4
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3255 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %RDX.i435, align 8
  %3260 = add i64 %3256, -131320
  %3261 = add i64 %3256, 9
  %3262 = load i64, i64* %6, align 8
  %3263 = add i64 %3262, -8
  %3264 = inttoptr i64 %3263 to i64*
  store i64 %3261, i64* %3264, align 8
  store i64 %3263, i64* %6, align 8
  store i64 %3260, i64* %3, align 8
  %call2_42163c = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3260, %struct.Memory* %3198)
  %3265 = load i64, i64* %RAX.i191, align 8
  %3266 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3267 = trunc i64 %3265 to i32
  %3268 = and i32 %3267, 255
  %3269 = tail call i32 @llvm.ctpop.i32(i32 %3268)
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3273 = icmp eq i64 %3265, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %29, align 1
  %3275 = lshr i64 %3265, 63
  %3276 = trunc i64 %3275 to i8
  store i8 %3276, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1343 = select i1 %3273, i64 10, i64 23
  %3277 = add i64 %3266, %.v1343
  store i64 %3277, i64* %3, align 8
  br i1 %3273, label %block_42164b, label %block_.L_421658

block_42164b:                                     ; preds = %block_.L_421601
  %3278 = load i64, i64* %RBP.i, align 8
  %3279 = add i64 %3278, -8
  %3280 = add i64 %3277, 8
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i64*
  store i64 0, i64* %3281, align 8
  %3282 = load i64, i64* %3, align 8
  %3283 = add i64 %3282, 273
  store i64 %3283, i64* %3, align 8
  br label %block_.L_421764

block_.L_421658:                                  ; preds = %block_.L_421601
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i532, align 8
  %3284 = load i64, i64* %RBP.i, align 8
  %3285 = add i64 %3284, -560
  store i64 %3285, i64* %RDI.i316, align 8
  %3286 = add i64 %3277, -131064
  %3287 = add i64 %3277, 22
  %3288 = load i64, i64* %6, align 8
  %3289 = add i64 %3288, -8
  %3290 = inttoptr i64 %3289 to i64*
  store i64 %3287, i64* %3290, align 8
  store i64 %3289, i64* %6, align 8
  store i64 %3286, i64* %3, align 8
  %call2_421669 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %3286, %struct.Memory* %call2_42163c)
  %3291 = load i64, i64* %RBP.i, align 8
  %3292 = add i64 %3291, -576
  %3293 = load i64, i64* %RAX.i191, align 8
  %3294 = load i64, i64* %3, align 8
  %3295 = add i64 %3294, 7
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3292 to i64*
  store i64 %3293, i64* %3296, align 8
  %3297 = load i64, i64* %RAX.i191, align 8
  %3298 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3299 = trunc i64 %3297 to i32
  %3300 = and i32 %3299, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3305 = icmp eq i64 %3297, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %29, align 1
  %3307 = lshr i64 %3297, 63
  %3308 = trunc i64 %3307 to i8
  store i8 %3308, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1344 = select i1 %3305, i64 10, i64 23
  %3309 = add i64 %3298, %.v1344
  store i64 %3309, i64* %3, align 8
  %3310 = load i64, i64* %RBP.i, align 8
  br i1 %3305, label %block_42167f, label %block_.L_42168c

block_42167f:                                     ; preds = %block_.L_421658
  %3311 = add i64 %3310, -8
  %3312 = add i64 %3309, 8
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3311 to i64*
  store i64 0, i64* %3313, align 8
  %3314 = load i64, i64* %3, align 8
  %3315 = add i64 %3314, 221
  store i64 %3315, i64* %3, align 8
  br label %block_.L_421764

block_.L_42168c:                                  ; preds = %block_.L_421658
  %3316 = add i64 %3310, -576
  %3317 = add i64 %3309, 7
  store i64 %3317, i64* %3, align 8
  %3318 = inttoptr i64 %3316 to i64*
  %3319 = load i64, i64* %3318, align 8
  store i64 %3319, i64* %RDI.i316, align 8
  %3320 = add i64 %3309, -131676
  %3321 = add i64 %3309, 12
  %3322 = load i64, i64* %6, align 8
  %3323 = add i64 %3322, -8
  %3324 = inttoptr i64 %3323 to i64*
  store i64 %3321, i64* %3324, align 8
  store i64 %3323, i64* %6, align 8
  store i64 %3320, i64* %3, align 8
  %3325 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %call2_421669)
  %3326 = load i64, i64* %3, align 8
  %3327 = load <2 x i32>, <2 x i32>* %932, align 1
  %3328 = load <2 x i32>, <2 x i32>* %934, align 1
  %.cast89 = bitcast <2 x i32> %3327 to double
  %3329 = fptrunc double %.cast89 to float
  store float %3329, float* %935, align 1
  %3330 = extractelement <2 x i32> %3327, i32 1
  store i32 %3330, i32* %937, align 1
  %3331 = extractelement <2 x i32> %3328, i32 0
  store i32 %3331, i32* %938, align 1
  %3332 = extractelement <2 x i32> %3328, i32 1
  store i32 %3332, i32* %940, align 1
  %3333 = load i64, i64* %RBP.i, align 8
  %3334 = add i64 %3333, -32
  %3335 = add i64 %3326, 8
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to i64*
  %3337 = load i64, i64* %3336, align 8
  store i64 %3337, i64* %RDI.i316, align 8
  %3338 = add i64 %3337, 24
  %3339 = add i64 %3326, 12
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i64*
  %3341 = load i64, i64* %3340, align 8
  store i64 %3341, i64* %RDI.i316, align 8
  %3342 = add i64 %3333, -580
  %3343 = add i64 %3326, 19
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = sext i32 %3345 to i64
  %3347 = mul nsw i64 %3346, 92
  store i64 %3347, i64* %RAX.i191, align 8
  %3348 = lshr i64 %3347, 63
  %3349 = add i64 %3347, %3341
  store i64 %3349, i64* %RDI.i316, align 8
  %3350 = icmp ult i64 %3349, %3341
  %3351 = icmp ult i64 %3349, %3347
  %3352 = or i1 %3350, %3351
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %14, align 1
  %3354 = trunc i64 %3349 to i32
  %3355 = and i32 %3354, 255
  %3356 = tail call i32 @llvm.ctpop.i32(i32 %3355)
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  %3359 = xor i8 %3358, 1
  store i8 %3359, i8* %21, align 1
  %3360 = xor i64 %3347, %3341
  %3361 = xor i64 %3360, %3349
  %3362 = lshr i64 %3361, 4
  %3363 = trunc i64 %3362 to i8
  %3364 = and i8 %3363, 1
  store i8 %3364, i8* %26, align 1
  %3365 = icmp eq i64 %3349, 0
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %29, align 1
  %3367 = lshr i64 %3349, 63
  %3368 = trunc i64 %3367 to i8
  store i8 %3368, i8* %32, align 1
  %3369 = lshr i64 %3341, 63
  %3370 = xor i64 %3367, %3369
  %3371 = xor i64 %3367, %3348
  %3372 = add nuw nsw i64 %3370, %3371
  %3373 = icmp eq i64 %3372, 2
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %38, align 1
  %3375 = add i64 %3349, 4
  %3376 = add i64 %3326, 31
  store i64 %3376, i64* %3, align 8
  %3377 = load <2 x float>, <2 x float>* %941, align 1
  %3378 = extractelement <2 x float> %3377, i32 0
  %3379 = inttoptr i64 %3375 to float*
  store float %3378, float* %3379, align 4
  %3380 = load i64, i64* %RBP.i, align 8
  %3381 = add i64 %3380, -20
  %3382 = load i64, i64* %3, align 8
  %3383 = add i64 %3382, 4
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3381 to i32*
  %3385 = load i32, i32* %3384, align 4
  %3386 = add i32 %3385, -2
  %3387 = icmp ult i32 %3385, 2
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %14, align 1
  %3389 = and i32 %3386, 255
  %3390 = tail call i32 @llvm.ctpop.i32(i32 %3389)
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  store i8 %3393, i8* %21, align 1
  %3394 = xor i32 %3386, %3385
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  store i8 %3397, i8* %26, align 1
  %3398 = icmp eq i32 %3386, 0
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %29, align 1
  %3400 = lshr i32 %3386, 31
  %3401 = trunc i32 %3400 to i8
  store i8 %3401, i8* %32, align 1
  %3402 = lshr i32 %3385, 31
  %3403 = xor i32 %3400, %3402
  %3404 = add nuw nsw i32 %3403, %3402
  %3405 = icmp eq i32 %3404, 2
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %38, align 1
  %.v1345 = select i1 %3398, i64 10, i64 107
  %3407 = add i64 %3382, %.v1345
  store i64 %3407, i64* %3, align 8
  br i1 %3398, label %block_4216c1, label %block_.L_421722

block_4216c1:                                     ; preds = %block_.L_42168c
  %3408 = add i64 %3380, -584
  %3409 = add i64 %3407, 10
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i32*
  store i32 0, i32* %3410, align 4
  %.pre1304 = load i64, i64* %3, align 8
  br label %block_.L_4216cb

block_.L_4216cb:                                  ; preds = %block_.L_421704, %block_4216c1
  %3411 = phi i64 [ %3500, %block_.L_421704 ], [ %.pre1304, %block_4216c1 ]
  %3412 = load i64, i64* %RBP.i, align 8
  %3413 = add i64 %3412, -584
  %3414 = add i64 %3411, 7
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i32*
  %3416 = load i32, i32* %3415, align 4
  %3417 = add i32 %3416, -3
  %3418 = icmp ult i32 %3416, 3
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %14, align 1
  %3420 = and i32 %3417, 255
  %3421 = tail call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  store i8 %3424, i8* %21, align 1
  %3425 = xor i32 %3417, %3416
  %3426 = lshr i32 %3425, 4
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  store i8 %3428, i8* %26, align 1
  %3429 = icmp eq i32 %3417, 0
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %29, align 1
  %3431 = lshr i32 %3417, 31
  %3432 = trunc i32 %3431 to i8
  store i8 %3432, i8* %32, align 1
  %3433 = lshr i32 %3416, 31
  %3434 = xor i32 %3431, %3433
  %3435 = add nuw nsw i32 %3434, %3433
  %3436 = icmp eq i32 %3435, 2
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %38, align 1
  %3438 = icmp ne i8 %3432, 0
  %3439 = xor i1 %3438, %3436
  %.v1346 = select i1 %3439, i64 13, i64 82
  %3440 = add i64 %3411, %.v1346
  %3441 = add i64 %3440, 5
  store i64 %3441, i64* %3, align 8
  br i1 %3439, label %block_4216d8, label %block_.L_421722.loopexit

block_4216d8:                                     ; preds = %block_.L_4216cb
  store i64 512, i64* %RSI.i532, align 8
  %3442 = add i64 %3412, -560
  store i64 %3442, i64* %RDI.i316, align 8
  %3443 = add i64 %3412, -16
  %3444 = add i64 %3440, 16
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i64*
  %3446 = load i64, i64* %3445, align 8
  store i64 %3446, i64* %RDX.i435, align 8
  %3447 = add i64 %3440, -131480
  %3448 = add i64 %3440, 21
  %3449 = load i64, i64* %6, align 8
  %3450 = add i64 %3449, -8
  %3451 = inttoptr i64 %3450 to i64*
  store i64 %3448, i64* %3451, align 8
  store i64 %3450, i64* %6, align 8
  store i64 %3447, i64* %3, align 8
  %call2_4216e8 = tail call %struct.Memory* @sub_401540.fgets_plt(%struct.State* nonnull %0, i64 %3447, %struct.Memory* %3325)
  %3452 = load i64, i64* %RAX.i191, align 8
  %3453 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3454 = trunc i64 %3452 to i32
  %3455 = and i32 %3454, 255
  %3456 = tail call i32 @llvm.ctpop.i32(i32 %3455)
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  %3459 = xor i8 %3458, 1
  store i8 %3459, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3460 = icmp eq i64 %3452, 0
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %29, align 1
  %3462 = lshr i64 %3452, 63
  %3463 = trunc i64 %3462 to i8
  store i8 %3463, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v1347 = select i1 %3460, i64 10, i64 23
  %3464 = add i64 %3453, %.v1347
  store i64 %3464, i64* %3, align 8
  %3465 = load i64, i64* %RBP.i, align 8
  br i1 %3460, label %block_4216f7, label %block_.L_421704

block_4216f7:                                     ; preds = %block_4216d8
  %3466 = add i64 %3465, -8
  %3467 = add i64 %3464, 8
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i64*
  store i64 0, i64* %3468, align 8
  %3469 = load i64, i64* %3, align 8
  %3470 = add i64 %3469, 101
  store i64 %3470, i64* %3, align 8
  br label %block_.L_421764

block_.L_421704:                                  ; preds = %block_4216d8
  %3471 = add i64 %3465, -584
  %3472 = add i64 %3464, 11
  store i64 %3472, i64* %3, align 8
  %3473 = inttoptr i64 %3471 to i32*
  %3474 = load i32, i32* %3473, align 4
  %3475 = add i32 %3474, 1
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RAX.i191, align 8
  %3477 = icmp eq i32 %3474, -1
  %3478 = icmp eq i32 %3475, 0
  %3479 = or i1 %3477, %3478
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %14, align 1
  %3481 = and i32 %3475, 255
  %3482 = tail call i32 @llvm.ctpop.i32(i32 %3481)
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = xor i8 %3484, 1
  store i8 %3485, i8* %21, align 1
  %3486 = xor i32 %3475, %3474
  %3487 = lshr i32 %3486, 4
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  store i8 %3489, i8* %26, align 1
  %3490 = zext i1 %3478 to i8
  store i8 %3490, i8* %29, align 1
  %3491 = lshr i32 %3475, 31
  %3492 = trunc i32 %3491 to i8
  store i8 %3492, i8* %32, align 1
  %3493 = lshr i32 %3474, 31
  %3494 = xor i32 %3491, %3493
  %3495 = add nuw nsw i32 %3494, %3491
  %3496 = icmp eq i32 %3495, 2
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %38, align 1
  %3498 = add i64 %3464, 20
  store i64 %3498, i64* %3, align 8
  store i32 %3475, i32* %3473, align 4
  %3499 = load i64, i64* %3, align 8
  %3500 = add i64 %3499, -77
  store i64 %3500, i64* %3, align 8
  br label %block_.L_4216cb

block_.L_421722.loopexit:                         ; preds = %block_.L_4216cb
  br label %block_.L_421722

block_.L_421722:                                  ; preds = %block_.L_421722.loopexit, %block_.L_42168c
  %3501 = phi i64 [ %3407, %block_.L_42168c ], [ %3441, %block_.L_421722.loopexit ]
  %3502 = phi i64 [ %3380, %block_.L_42168c ], [ %3412, %block_.L_421722.loopexit ]
  %3503 = add i64 %3501, 23
  store i64 %3503, i64* %3, align 8
  br label %block_.L_421739

block_.L_421727:                                  ; preds = %block_.L_4214fb
  %3504 = load i64, i64* %RBP.i, align 8
  %3505 = add i64 %3504, -8
  %3506 = add i64 %3000, 8
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i64*
  store i64 0, i64* %3507, align 8
  %3508 = load i64, i64* %3, align 8
  %3509 = add i64 %3508, 53
  store i64 %3509, i64* %3, align 8
  br label %block_.L_421764

block_.L_421739:                                  ; preds = %block_.L_421722, %block_.L_4214f6
  %3510 = phi i64 [ %2976, %block_.L_4214f6 ], [ %3502, %block_.L_421722 ]
  %storemerge86 = phi i64 [ %2977, %block_.L_4214f6 ], [ %3503, %block_.L_421722 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.20, %block_.L_4214f6 ], [ %3325, %block_.L_421722 ]
  %3511 = add i64 %storemerge86, 5
  store i64 %3511, i64* %3, align 8
  br label %block_.L_42173e

block_.L_42173e:                                  ; preds = %block_.L_421739, %block_.L_4211fb
  %3512 = phi i64 [ %2244, %block_.L_4211fb ], [ %3510, %block_.L_421739 ]
  %storemerge81 = phi i64 [ %2245, %block_.L_4211fb ], [ %3511, %block_.L_421739 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.17, %block_.L_4211fb ], [ %MEMORY.25, %block_.L_421739 ]
  %3513 = add i64 %storemerge81, -2702
  %3514 = add i64 %storemerge81, 5
  store i64 %3514, i64* %3, align 8
  br label %block_.L_420cb0

block_.L_421743:                                  ; preds = %block_.L_420cb0
  %3515 = load i64, i64* %RBP.i, align 8
  %3516 = add i64 %3515, -32
  %3517 = add i64 %965, 4
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3516 to i64*
  %3519 = load i64, i64* %3518, align 8
  %3520 = add i64 %3519, 32
  store i64 %3520, i64* %RAX.i191, align 8
  %3521 = icmp ugt i64 %3519, -33
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %14, align 1
  %3523 = trunc i64 %3520 to i32
  %3524 = and i32 %3523, 255
  %3525 = tail call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  store i8 %3528, i8* %21, align 1
  %3529 = xor i64 %3520, %3519
  %3530 = lshr i64 %3529, 4
  %3531 = trunc i64 %3530 to i8
  %3532 = and i8 %3531, 1
  store i8 %3532, i8* %26, align 1
  %3533 = icmp eq i64 %3520, 0
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %29, align 1
  %3535 = lshr i64 %3520, 63
  %3536 = trunc i64 %3535 to i8
  store i8 %3536, i8* %32, align 1
  %3537 = lshr i64 %3519, 63
  %3538 = xor i64 %3535, %3537
  %3539 = add nuw nsw i64 %3538, %3535
  %3540 = icmp eq i64 %3539, 2
  %3541 = zext i1 %3540 to i8
  store i8 %3541, i8* %38, align 1
  store i64 %3520, i64* %RDI.i316, align 8
  %3542 = add i64 %965, 81821
  %3543 = add i64 %965, 16
  %3544 = load i64, i64* %6, align 8
  %3545 = add i64 %3544, -8
  %3546 = inttoptr i64 %3545 to i64*
  store i64 %3543, i64* %3546, align 8
  store i64 %3545, i64* %6, align 8
  store i64 %3542, i64* %3, align 8
  %call2_42174e = tail call %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* nonnull %0, i64 %3542, %struct.Memory* %MEMORY.10)
  %3547 = load i64, i64* %RBP.i, align 8
  %3548 = add i64 %3547, -32
  %3549 = load i64, i64* %3, align 8
  %3550 = add i64 %3549, 4
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3548 to i64*
  %3552 = load i64, i64* %3551, align 8
  store i64 %3552, i64* %RDI.i316, align 8
  %3553 = add i64 %3549, 81549
  %3554 = add i64 %3549, 9
  %3555 = load i64, i64* %6, align 8
  %3556 = add i64 %3555, -8
  %3557 = inttoptr i64 %3556 to i64*
  store i64 %3554, i64* %3557, align 8
  store i64 %3556, i64* %6, align 8
  store i64 %3553, i64* %3, align 8
  %call2_421757 = tail call %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* nonnull %0, i64 %3553, %struct.Memory* %call2_42174e)
  %3558 = load i64, i64* %RBP.i, align 8
  %3559 = add i64 %3558, -32
  %3560 = load i64, i64* %3, align 8
  %3561 = add i64 %3560, 4
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3559 to i64*
  %3563 = load i64, i64* %3562, align 8
  store i64 %3563, i64* %RAX.i191, align 8
  %3564 = add i64 %3558, -8
  %3565 = add i64 %3560, 8
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i64*
  store i64 %3563, i64* %3566, align 8
  %.pre1305 = load i64, i64* %3, align 8
  br label %block_.L_421764

block_.L_421764:                                  ; preds = %block_.L_421743, %block_.L_421727, %block_4216f7, %block_42167f, %block_42164b, %block_4215f4, %block_4215c0, %block_42156a, %block_421536, %block_4214cb, %block_42142c, %block_4213f8, %block_421384, %block_421350, %block_4212f9, %block_4212c5, %block_42126f, %block_42123b, %block_4211d0, %block_421131, %block_4210fd, %block_421089, %block_421055, %block_420ffe, %block_420fca, %block_420f74, %block_420f40, %block_420ef5, %block_420e5c, %block_.L_420d9f, %block_420d5c, %block_420d27, %block_420cf6, %block_420c60, %block_420bfb, %block_420ba7, %block_420b54, %block_420b20, %block_420af4, %block_420abf, %block_420a8b, %block_420963, %block_42092e, %block_4208fa, %block_4208bf, %block_42088a, %block_420856
  %3567 = phi i64 [ %.pre1305, %block_.L_421743 ], [ %1140, %block_.L_420d9f ], [ %3509, %block_.L_421727 ], [ %3470, %block_4216f7 ], [ %3315, %block_42167f ], [ %3283, %block_42164b ], [ %3188, %block_4215f4 ], [ %3156, %block_4215c0 ], [ %3062, %block_42156a ], [ %3030, %block_421536 ], [ %2944, %block_4214cb ], [ %2747, %block_42142c ], [ %2715, %block_4213f8 ], [ %2582, %block_421384 ], [ %2550, %block_421350 ], [ %2455, %block_4212f9 ], [ %2423, %block_4212c5 ], [ %2329, %block_42126f ], [ %2297, %block_42123b ], [ %2212, %block_4211d0 ], [ %2015, %block_421131 ], [ %1983, %block_4210fd ], [ %1850, %block_421089 ], [ %1818, %block_421055 ], [ %1723, %block_420ffe ], [ %1691, %block_420fca ], [ %1597, %block_420f74 ], [ %1565, %block_420f40 ], [ %1512, %block_420ef5 ], [ %1345, %block_420e5c ], [ %1063, %block_420d5c ], [ %1027, %block_420d27 ], [ %997, %block_420cf6 ], [ %886, %block_420c60 ], [ %816, %block_420bfb ], [ %729, %block_420ba7 ], [ %635, %block_420b54 ], [ %603, %block_420b20 ], [ %574, %block_420af4 ], [ %538, %block_420abf ], [ %506, %block_420a8b ], [ %268, %block_420963 ], [ %232, %block_42092e ], [ %200, %block_4208fa ], [ %155, %block_4208bf ], [ %118, %block_42088a ], [ %86, %block_420856 ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_421757, %block_.L_421743 ], [ %1071, %block_.L_420d9f ], [ %2988, %block_.L_421727 ], [ %3325, %block_4216f7 ], [ %call2_421669, %block_42167f ], [ %call2_42163c, %block_42164b ], [ %call2_4215de, %block_4215f4 ], [ %call2_4215b1, %block_4215c0 ], [ %call2_421554, %block_42156a ], [ %call2_421527, %block_421536 ], [ %MEMORY.20, %block_4214cb ], [ %MEMORY.20, %block_42142c ], [ %MEMORY.20, %block_4213f8 ], [ %call2_42136e, %block_421384 ], [ %call2_421341, %block_421350 ], [ %call2_4212e3, %block_4212f9 ], [ %call2_4212b6, %block_4212c5 ], [ %call2_421259, %block_42126f ], [ %call2_42122c, %block_42123b ], [ %MEMORY.17, %block_4211d0 ], [ %MEMORY.17, %block_421131 ], [ %MEMORY.17, %block_4210fd ], [ %call2_421073, %block_421089 ], [ %call2_421046, %block_421055 ], [ %call2_420fe8, %block_420ffe ], [ %call2_420fbb, %block_420fca ], [ %call2_420f5e, %block_420f74 ], [ %call2_420f31, %block_420f40 ], [ %call2_420de0, %block_420ef5 ], [ %call2_420de0, %block_420e5c ], [ %MEMORY.10, %block_420d5c ], [ %MEMORY.10, %block_420d27 ], [ %MEMORY.10, %block_420cf6 ], [ %call2_420c51, %block_420c60 ], [ %call2_420bec, %block_420bfb ], [ %call2_420b3e, %block_420ba7 ], [ %call2_420b3e, %block_420b54 ], [ %call2_420b11, %block_420b20 ], [ %call2_420acc, %block_420af4 ], [ %call2_420aa9, %block_420abf ], [ %call2_420a7c, %block_420a8b ], [ %call2_42093b, %block_420963 ], [ %call2_420918, %block_42092e ], [ %call2_4208eb, %block_4208fa ], [ %call2_420897, %block_4208bf ], [ %call2_420874, %block_42088a ], [ %call2_420847, %block_420856 ]
  %3568 = load i64, i64* %RBP.i, align 8
  %3569 = add i64 %3568, -8
  %3570 = add i64 %3567, 4
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i64*
  %3572 = load i64, i64* %3571, align 8
  store i64 %3572, i64* %RAX.i191, align 8
  %3573 = load i64, i64* %6, align 8
  %3574 = add i64 %3573, 608
  store i64 %3574, i64* %6, align 8
  %3575 = icmp ugt i64 %3573, -609
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %14, align 1
  %3577 = trunc i64 %3574 to i32
  %3578 = and i32 %3577, 255
  %3579 = tail call i32 @llvm.ctpop.i32(i32 %3578)
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  store i8 %3582, i8* %21, align 1
  %3583 = xor i64 %3574, %3573
  %3584 = lshr i64 %3583, 4
  %3585 = trunc i64 %3584 to i8
  %3586 = and i8 %3585, 1
  store i8 %3586, i8* %26, align 1
  %3587 = icmp eq i64 %3574, 0
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %29, align 1
  %3589 = lshr i64 %3574, 63
  %3590 = trunc i64 %3589 to i8
  store i8 %3590, i8* %32, align 1
  %3591 = lshr i64 %3573, 63
  %3592 = xor i64 %3589, %3591
  %3593 = add nuw nsw i64 %3592, %3589
  %3594 = icmp eq i64 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %38, align 1
  %3596 = add i64 %3567, 12
  store i64 %3596, i64* %3, align 8
  %3597 = add i64 %3573, 616
  %3598 = inttoptr i64 %3574 to i64*
  %3599 = load i64, i64* %3598, align 8
  store i64 %3599, i64* %RBP.i, align 8
  store i64 %3597, i64* %6, align 8
  %3600 = add i64 %3567, 13
  store i64 %3600, i64* %3, align 8
  %3601 = inttoptr i64 %3597 to i64*
  %3602 = load i64, i64* %3601, align 8
  store i64 %3602, i64* %3, align 8
  %3603 = add i64 %3573, 624
  store i64 %3603, i64* %6, align 8
  ret %struct.Memory* %MEMORY.27
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
define %struct.Memory* @routine_subq__0x260___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 608
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
define %struct.Memory* @routine_movl__0x200___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 512, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_420863(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_421764(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420897(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x240__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
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
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_4208cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420907(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42093b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420970(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -588
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -588
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
define %struct.Memory* @routine_jne_.L_42099e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4209d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -588
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4209ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4209d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457852___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457852_type* @G__0x457852 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -588
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
define %struct.Memory* @routine_jne_.L_4209f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x250__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
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
define %struct.Memory* @routine_jmpq_.L_420a45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
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
define %struct.Memory* @routine_je_.L_420a40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movq_MINUS0x258__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P9AllocHMM(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420a6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4578f2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4578f2_type* @G__0x4578f2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420a98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420acc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420b01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420b2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420b61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_420bd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_420bcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420bb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420bb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -584
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420b75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420bd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jne_.L_420cab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420c08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457914___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_420c41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
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
define %struct.Memory* @routine_movl__ecx__0x90__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420c6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420ca6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 2
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
define %struct.Memory* @routine_jmpq_.L_420cab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420cb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_421743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420d03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420d34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420d69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_420d9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
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
define %struct.Memory* @routine_jle_.L_420dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x457918___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457918_type* @G__0x457918 to i64), i64 4294967295), i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_421200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420f21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x240__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -40
  %8 = icmp ult i32 %4, 40
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
define %struct.Memory* @routine_movb__cl__MINUS0x259__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -601
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_420e1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x240__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_setne__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x259__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -601
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x259__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -601
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_jne_.L_420e32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420e49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_420dec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -40
  %8 = icmp ult i32 %4, 40
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
define %struct.Memory* @routine_je_.L_420e69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_0x1__rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
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
define %struct.Memory* @routine_movb__cl__MINUS0x25a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -602
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_420eb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__dl__MINUS0x25a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -602
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x25a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -602
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420ecb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420ee2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420e85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_420f02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420f4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_420f81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 92
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
define %struct.Memory* @routine_jne_.L_420fd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42100b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421096(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5c___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 92
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_421185(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42110a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42113e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x248__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_movss__xmm0__0xc__rdi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 12
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 6
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4210cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4211fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x677060___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -4
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
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
define %struct.Memory* @routine_jge_.L_4211f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4211dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4211e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4211fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42173e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457927___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457927_type* @G__0x457927 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4214fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421248(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42127c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4212d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421306(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42135d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421391(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_421480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421405(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421439(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4213c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4214f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4214f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4214d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4214dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4214f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421739(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457937___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457937_type* @G__0x457937 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421727(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421543(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4215cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421601(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42168c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421722(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jge_.L_42171d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421704(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_421709(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4216cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421722(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421734(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_callq_.P9DefaultNullModel(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.P9Renormalize(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x260___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -609
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
