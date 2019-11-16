; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x45763b_type = type <{ [8 x i8] }>
%G__0x457852_type = type <{ [8 x i8] }>
%G__0x457899_type = type <{ [8 x i8] }>
%G__0x4578f2_type = type <{ [8 x i8] }>
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
@G__0x45763b = global %G__0x45763b_type zeroinitializer
@G__0x457852 = global %G__0x457852_type zeroinitializer
@G__0x457899 = global %G__0x457899_type zeroinitializer
@G__0x4578f2 = global %G__0x4578f2_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_422380.byteswap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401600.fseek_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @read_plan9_binhmm(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -264
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 256
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
  %RAX.i1462 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %EAX.i1459 = bitcast %union.anon* %39 to i32*
  %RCX.i1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4, i64* %RCX.i1460, align 8
  store i64 1, i64* %RAX.i1462, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 1, i64* %40, align 8
  %R9.i1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %41 = add i64 %7, -44
  store i64 %41, i64* %R9.i1453, align 8
  %RDI.i1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -24
  %43 = load i64, i64* %RDI.i1449, align 8
  %44 = add i64 %10, 33
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
  %EDX.i1444 = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -24
  %56 = load i32, i32* %EDX.i1444, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %60, -88
  %67 = add i64 %62, 8
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %R9.i1453, align 8
  %70 = load i64, i64* %3, align 8
  store i64 %69, i64* %RDI.i1449, align 8
  %RSI.i1434 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %71 = load i64, i64* %RCX.i1460, align 8
  store i64 %71, i64* %RSI.i1434, align 8
  %RDX.i1431 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %72 = load i64, i64* %40, align 8
  store i64 %72, i64* %RDX.i1431, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -88
  %75 = add i64 %70, 13
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RCX.i1460, align 8
  %78 = add i64 %70, -132096
  %79 = add i64 %70, 18
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*
  store i64 %79, i64* %82, align 8
  store i64 %81, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  %call2_42181d = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64 %78, %struct.Memory* %2)
  %83 = load i64, i64* %RAX.i1462, align 8
  %84 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %85 = trunc i64 %83 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %91 = icmp eq i64 %83, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %29, align 1
  %93 = lshr i64 %83, 63
  %94 = trunc i64 %93 to i8
  store i8 %94, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %91, i64 10, i64 23
  %95 = add i64 %84, %.v
  store i64 %95, i64* %3, align 8
  br i1 %91, label %block_42182c, label %block_.L_421839

block_42182c:                                     ; preds = %entry
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -8
  %98 = add i64 %95, 8
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 0, i64* %99, align 8
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 2864
  store i64 %101, i64* %3, align 8
  br label %block_.L_422364

block_.L_421839:                                  ; preds = %entry
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -52
  store i64 %103, i64* %RCX.i1460, align 8
  %104 = add i64 %102, -16
  %105 = add i64 %95, 22
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %102, -96
  %109 = add i64 %95, 26
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i64*
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %RCX.i1460, align 8
  %112 = load i64, i64* %3, align 8
  store i64 %111, i64* %RDI.i1449, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -96
  %115 = add i64 %112, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RCX.i1460, align 8
  %118 = add i64 %112, -132163
  %119 = add i64 %112, 12
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %call2_42185a = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %118, %struct.Memory* %call2_42181d)
  %123 = load i64, i64* %RAX.i1462, align 8
  %124 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %125 = trunc i64 %123 to i32
  %126 = and i32 %125, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %131 = icmp eq i64 %123, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1
  %133 = lshr i64 %123, 63
  %134 = trunc i64 %133 to i8
  store i8 %134, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v400 = select i1 %131, i64 10, i64 23
  %135 = add i64 %124, %.v400
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %RBP.i, align 8
  br i1 %131, label %block_421869, label %block_.L_421876

block_421869:                                     ; preds = %block_.L_421839
  %137 = add i64 %136, -8
  %138 = add i64 %135, 8
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 2803
  store i64 %141, i64* %3, align 8
  br label %block_.L_422364

block_.L_421876:                                  ; preds = %block_.L_421839
  %142 = add i64 %136, -24
  %143 = add i64 %135, 4
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  store i8 0, i8* %14, align 1
  %146 = and i32 %145, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %151 = icmp eq i32 %145, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %29, align 1
  %153 = lshr i32 %145, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v401 = select i1 %151, i64 44, i64 10
  %155 = add i64 %135, %.v401
  store i64 %155, i64* %3, align 8
  br i1 %151, label %block_.L_4218a2, label %block_421880

block_421880:                                     ; preds = %block_.L_421876
  store i64 4, i64* %RSI.i1434, align 8
  %156 = add i64 %136, -36
  store i64 %156, i64* %RAX.i1462, align 8
  store i64 %156, i64* %RDI.i1449, align 8
  %157 = add i64 %155, 2816
  %158 = add i64 %155, 17
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, -8
  %161 = inttoptr i64 %160 to i64*
  store i64 %158, i64* %161, align 8
  store i64 %160, i64* %6, align 8
  store i64 %157, i64* %3, align 8
  %call2_42188c = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %157, %struct.Memory* %call2_42185a)
  %162 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -52
  store i64 %164, i64* %RAX.i1462, align 8
  store i64 %164, i64* %RDI.i1449, align 8
  %165 = add i64 %162, 2799
  %166 = add i64 %162, 17
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %166, i64* %169, align 8
  store i64 %168, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  %call2_42189d = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %165, %struct.Memory* %call2_42188c)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre368 = load i64, i64* %3, align 8
  br label %block_.L_4218a2

block_.L_4218a2:                                  ; preds = %block_421880, %block_.L_421876
  %170 = phi i64 [ %155, %block_.L_421876 ], [ %.pre368, %block_421880 ]
  %171 = phi i64 [ %136, %block_.L_421876 ], [ %.pre, %block_421880 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_42185a, %block_.L_421876 ], [ %call2_42189d, %block_421880 ]
  %172 = add i64 %171, -52
  %173 = add i64 %170, 4
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, -4
  %177 = icmp ult i32 %175, 4
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %14, align 1
  %179 = and i32 %176, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %21, align 1
  %184 = xor i32 %176, %175
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %26, align 1
  %188 = icmp eq i32 %176, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %29, align 1
  %190 = lshr i32 %176, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %32, align 1
  %192 = lshr i32 %175, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %38, align 1
  %.v402 = select i1 %188, i64 10, i64 22
  %197 = add i64 %170, %.v402
  store i64 %197, i64* %3, align 8
  br i1 %188, label %block_4218ac, label %block_.L_4218b8

block_4218ac:                                     ; preds = %block_.L_4218a2
  %198 = add i64 %171, -56
  %199 = add i64 %197, 7
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  store i32 2, i32* %200, align 4
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 52
  br label %block_.L_4218e7

block_.L_4218b8:                                  ; preds = %block_.L_4218a2
  %203 = add i64 %197, 4
  store i64 %203, i64* %3, align 8
  %204 = load i32, i32* %174, align 4
  %205 = add i32 %204, -20
  %206 = icmp ult i32 %204, 20
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %14, align 1
  %208 = and i32 %205, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %21, align 1
  %213 = xor i32 %204, 16
  %214 = xor i32 %213, %205
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %26, align 1
  %218 = icmp eq i32 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %29, align 1
  %220 = lshr i32 %205, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %32, align 1
  %222 = lshr i32 %204, 31
  %223 = xor i32 %220, %222
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %38, align 1
  %.v403 = select i1 %218, i64 10, i64 22
  %227 = add i64 %197, %.v403
  store i64 %227, i64* %3, align 8
  br i1 %218, label %block_4218c2, label %block_.L_4218ce

block_4218c2:                                     ; preds = %block_.L_4218b8
  %228 = add i64 %171, -56
  %229 = add i64 %227, 7
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 3, i32* %230, align 4
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 25
  store i64 %232, i64* %3, align 8
  br label %block_.L_4218e2

block_.L_4218ce:                                  ; preds = %block_.L_4218b8
  store i64 ptrtoint (%G__0x457852_type* @G__0x457852 to i64), i64* %RDI.i1449, align 8
  %233 = add i64 %227, 13
  store i64 %233, i64* %3, align 8
  %234 = load i32, i32* %174, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RSI.i1434, align 8
  %AL.i1349 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1349, align 1
  %236 = add i64 %227, 119106
  %237 = add i64 %227, 20
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %238, -8
  %240 = inttoptr i64 %239 to i64*
  store i64 %237, i64* %240, align 8
  store i64 %239, i64* %6, align 8
  store i64 %236, i64* %3, align 8
  %call2_4218dd = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %236, %struct.Memory* %MEMORY.0)
  %.pre369 = load i64, i64* %3, align 8
  br label %block_.L_4218e2

block_.L_4218e2:                                  ; preds = %block_.L_4218ce, %block_4218c2
  %241 = phi i64 [ %.pre369, %block_.L_4218ce ], [ %232, %block_4218c2 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4218dd, %block_.L_4218ce ], [ %MEMORY.0, %block_4218c2 ]
  %242 = add i64 %241, 5
  store i64 %242, i64* %3, align 8
  br label %block_.L_4218e7

block_.L_4218e7:                                  ; preds = %block_.L_4218e2, %block_4218ac
  %storemerge = phi i64 [ %202, %block_4218ac ], [ %242, %block_.L_4218e2 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4218ac ], [ %MEMORY.1, %block_.L_4218e2 ]
  %243 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %244 = and i32 %243, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %249 = icmp eq i32 %243, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %29, align 1
  %251 = lshr i32 %243, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v404 = select i1 %249, i64 14, i64 27
  %253 = add i64 %storemerge, %.v404
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -56
  %256 = add i64 %253, 3
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  br i1 %249, label %block_4218f5, label %block_.L_421902

block_4218f5:                                     ; preds = %block_.L_4218e7
  store i64 %259, i64* %RDI.i1449, align 8
  %260 = add i64 %253, -117845
  %261 = add i64 %253, 8
  %262 = load i64, i64* %6, align 8
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %6, align 8
  store i64 %260, i64* %3, align 8
  %call2_4218f8 = tail call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* nonnull %0, i64 %260, %struct.Memory* %MEMORY.2)
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 74
  br label %block_.L_421947

block_.L_421902:                                  ; preds = %block_.L_4218e7
  store i64 %259, i64* %RAX.i1462, align 8
  %267 = sub i32 %258, %243
  %268 = icmp ult i32 %258, %243
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %14, align 1
  %270 = and i32 %267, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %21, align 1
  %275 = xor i32 %243, %258
  %276 = xor i32 %275, %267
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %26, align 1
  %280 = icmp eq i32 %267, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %29, align 1
  %282 = lshr i32 %267, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %32, align 1
  %284 = lshr i32 %258, 31
  %285 = xor i32 %251, %284
  %286 = xor i32 %282, %284
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %38, align 1
  %.v405 = select i1 %280, i64 64, i64 16
  %290 = add i64 %253, %.v405
  store i64 %290, i64* %3, align 8
  br i1 %280, label %block_.L_421942, label %block_421912

block_421912:                                     ; preds = %block_.L_421902
  %291 = zext i32 %243 to i64
  store i64 %291, i64* %RDI.i1449, align 8
  %292 = add i64 %290, -68274
  %293 = add i64 %290, 12
  %294 = load i64, i64* %6, align 8
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %6, align 8
  store i64 %292, i64* %3, align 8
  %call2_421919 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %292, %struct.Memory* %MEMORY.2)
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -56
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 3
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RDI.i1449, align 8
  %304 = add i64 %297, -104
  %305 = load i64, i64* %RAX.i1462, align 8
  %306 = add i64 %299, 7
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %304 to i64*
  store i64 %305, i64* %307, align 8
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, -68293
  %310 = add i64 %308, 5
  %311 = load i64, i64* %6, align 8
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  store i64 %312, i64* %6, align 8
  store i64 %309, i64* %3, align 8
  %call2_421925 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %309, %struct.Memory* %call2_421919)
  %314 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI.i1449, align 8
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -104
  %317 = add i64 %314, 14
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RSI.i1434, align 8
  %320 = load i64, i64* %RAX.i1462, align 8
  store i64 %320, i64* %RDX.i1431, align 8
  %AL.i1314 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1314, align 1
  %321 = add i64 %314, 119014
  %322 = add i64 %314, 24
  %323 = load i64, i64* %6, align 8
  %324 = add i64 %323, -8
  %325 = inttoptr i64 %324 to i64*
  store i64 %322, i64* %325, align 8
  store i64 %324, i64* %6, align 8
  store i64 %321, i64* %3, align 8
  %call2_42193d = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %321, %struct.Memory* %call2_421925)
  %.pre370 = load i64, i64* %3, align 8
  br label %block_.L_421942

block_.L_421942:                                  ; preds = %block_421912, %block_.L_421902
  %326 = phi i64 [ %290, %block_.L_421902 ], [ %.pre370, %block_421912 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_421902 ], [ %call2_42193d, %block_421912 ]
  %327 = add i64 %326, 5
  store i64 %327, i64* %3, align 8
  br label %block_.L_421947

block_.L_421947:                                  ; preds = %block_.L_421942, %block_4218f5
  %storemerge47 = phi i64 [ %266, %block_4218f5 ], [ %327, %block_.L_421942 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4218f8, %block_4218f5 ], [ %MEMORY.3, %block_.L_421942 ]
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -36
  %330 = add i64 %storemerge47, 3
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RDI.i1449, align 8
  %334 = add i64 %storemerge47, 80137
  %335 = add i64 %storemerge47, 8
  %336 = load i64, i64* %6, align 8
  %337 = add i64 %336, -8
  %338 = inttoptr i64 %337 to i64*
  store i64 %335, i64* %338, align 8
  store i64 %337, i64* %6, align 8
  store i64 %334, i64* %3, align 8
  %call2_42194a = tail call %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* nonnull %0, i64 %334, %struct.Memory* %MEMORY.4)
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -32
  %341 = load i64, i64* %RAX.i1462, align 8
  %342 = load i64, i64* %3, align 8
  %343 = add i64 %342, 4
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %340 to i64*
  store i64 %341, i64* %344, align 8
  %345 = load i64, i64* %RAX.i1462, align 8
  %346 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %347 = trunc i64 %345 to i32
  %348 = and i32 %347, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %353 = icmp eq i64 %345, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %29, align 1
  %355 = lshr i64 %345, 63
  %356 = trunc i64 %355 to i8
  store i8 %356, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v406 = select i1 %353, i64 10, i64 27
  %357 = add i64 %346, %.v406
  store i64 %357, i64* %3, align 8
  br i1 %353, label %block_42195d, label %block_.L_42196e

block_42195d:                                     ; preds = %block_.L_421947
  store i64 ptrtoint (%G__0x4578f2_type* @G__0x4578f2 to i64), i64* %RDI.i1449, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %358 = add i64 %357, 118963
  %359 = add i64 %357, 17
  %360 = load i64, i64* %6, align 8
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %359, i64* %362, align 8
  store i64 %361, i64* %6, align 8
  store i64 %358, i64* %3, align 8
  %call2_421969 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %358, %struct.Memory* %call2_42194a)
  %.pre371 = load i64, i64* %3, align 8
  br label %block_.L_42196e

block_.L_42196e:                                  ; preds = %block_.L_421947, %block_42195d
  %363 = phi i64 [ %357, %block_.L_421947 ], [ %.pre371, %block_42195d ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_42194a, %block_.L_421947 ], [ %call2_421969, %block_42195d ]
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -20
  %366 = add i64 %363, 4
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, -7
  %370 = icmp ult i32 %368, 7
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i32 %369, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %26, align 1
  %381 = icmp eq i32 %369, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %29, align 1
  %383 = lshr i32 %369, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %32, align 1
  %385 = lshr i32 %368, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %38, align 1
  %.v407 = select i1 %381, i64 10, i64 215
  %390 = add i64 %363, %.v407
  store i64 %390, i64* %3, align 8
  br i1 %381, label %block_421978, label %block_.L_421a45

block_421978:                                     ; preds = %block_.L_42196e
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %391 = add i64 %364, -48
  store i64 %391, i64* %RCX.i1460, align 8
  %392 = add i64 %364, -16
  %393 = add i64 %390, 22
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  %396 = add i64 %364, -112
  %397 = add i64 %390, 26
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  store i64 %395, i64* %398, align 8
  %399 = load i64, i64* %RCX.i1460, align 8
  %400 = load i64, i64* %3, align 8
  store i64 %399, i64* %RDI.i1449, align 8
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -112
  %403 = add i64 %400, 7
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RCX.i1460, align 8
  %406 = add i64 %400, -132482
  %407 = add i64 %400, 12
  %408 = load i64, i64* %6, align 8
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %6, align 8
  store i64 %406, i64* %3, align 8
  %call2_421999 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %406, %struct.Memory* %MEMORY.5)
  %411 = load i64, i64* %RAX.i1462, align 8
  %412 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %413 = trunc i64 %411 to i32
  %414 = and i32 %413, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %419 = icmp eq i64 %411, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %29, align 1
  %421 = lshr i64 %411, 63
  %422 = trunc i64 %421 to i8
  store i8 %422, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v443 = select i1 %419, i64 10, i64 23
  %423 = add i64 %412, %.v443
  store i64 %423, i64* %3, align 8
  %424 = load i64, i64* %RBP.i, align 8
  br i1 %419, label %block_4219a8, label %block_.L_4219b5

block_4219a8:                                     ; preds = %block_421978
  %425 = add i64 %424, -8
  %426 = add i64 %423, 8
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i64*
  store i64 0, i64* %427, align 8
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 2484
  store i64 %429, i64* %3, align 8
  br label %block_.L_422364

block_.L_4219b5:                                  ; preds = %block_421978
  %430 = add i64 %424, -24
  %431 = add i64 %423, 4
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  store i8 0, i8* %14, align 1
  %434 = and i32 %433, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %439 = icmp eq i32 %433, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %29, align 1
  %441 = lshr i32 %433, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v444 = select i1 %439, i64 27, i64 10
  %443 = add i64 %423, %.v444
  store i64 %443, i64* %3, align 8
  br i1 %439, label %block_.L_4219d0, label %block_4219bf

block_4219bf:                                     ; preds = %block_.L_4219b5
  store i64 4, i64* %RSI.i1434, align 8
  %444 = add i64 %424, -48
  store i64 %444, i64* %RAX.i1462, align 8
  store i64 %444, i64* %RDI.i1449, align 8
  %445 = add i64 %443, 2497
  %446 = add i64 %443, 17
  %447 = load i64, i64* %6, align 8
  %448 = add i64 %447, -8
  %449 = inttoptr i64 %448 to i64*
  store i64 %446, i64* %449, align 8
  store i64 %448, i64* %6, align 8
  store i64 %445, i64* %3, align 8
  %call2_4219cb = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %445, %struct.Memory* %call2_421999)
  %.pre372 = load i64, i64* %3, align 8
  %.pre373 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4219d0

block_.L_4219d0:                                  ; preds = %block_4219bf, %block_.L_4219b5
  %450 = phi i64 [ %424, %block_.L_4219b5 ], [ %.pre373, %block_4219bf ]
  %451 = phi i64 [ %443, %block_.L_4219b5 ], [ %.pre372, %block_4219bf ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_421999, %block_.L_4219b5 ], [ %call2_4219cb, %block_4219bf ]
  store i64 ptrtoint (%G__0x45763b_type* @G__0x45763b to i64), i64* %RDI.i1449, align 8
  store i64 1475, i64* %RSI.i1434, align 8
  %452 = add i64 %450, -32
  %453 = add i64 %451, 19
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %RAX.i1462, align 8
  %456 = add i64 %455, 112
  %457 = add i64 %451, 23
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RDX.i1431, align 8
  %460 = add i64 %450, -48
  %461 = add i64 %451, 26
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, 1
  %465 = icmp eq i32 %463, -1
  %466 = icmp eq i32 %464, 0
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = and i32 %464, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  %474 = xor i32 %464, %463
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %26, align 1
  %478 = zext i1 %466 to i8
  store i8 %478, i8* %29, align 1
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %32, align 1
  %481 = lshr i32 %463, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %479
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %38, align 1
  %486 = sext i32 %464 to i64
  store i64 %486, i64* %RAX.i1462, align 8
  store i64 %486, i64* %RCX.i1460, align 8
  %487 = add i64 %451, 149216
  %488 = add i64 %451, 44
  %489 = load i64, i64* %6, align 8
  %490 = add i64 %489, -8
  %491 = inttoptr i64 %490 to i64*
  store i64 %488, i64* %491, align 8
  store i64 %490, i64* %6, align 8
  store i64 %487, i64* %3, align 8
  %call2_4219f7 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %487, %struct.Memory* %MEMORY.6)
  %492 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i1434, align 8
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -32
  %495 = add i64 %492, 9
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RCX.i1460, align 8
  %498 = add i64 %497, 112
  %499 = load i64, i64* %RAX.i1462, align 8
  %500 = add i64 %492, 13
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %498 to i64*
  store i64 %499, i64* %501, align 8
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -32
  %504 = load i64, i64* %3, align 8
  %505 = add i64 %504, 4
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RAX.i1462, align 8
  %508 = add i64 %507, 112
  %509 = add i64 %504, 8
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RDI.i1449, align 8
  %512 = add i64 %502, -48
  %513 = add i64 %504, 12
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  store i64 %516, i64* %RDX.i1431, align 8
  %517 = add i64 %502, -16
  %518 = add i64 %504, 16
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RCX.i1460, align 8
  %521 = add i64 %504, -132601
  %522 = add i64 %504, 21
  %523 = load i64, i64* %6, align 8
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %6, align 8
  store i64 %521, i64* %3, align 8
  %call2_421a19 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %521, %struct.Memory* %call2_4219f7)
  %526 = load i64, i64* %RAX.i1462, align 8
  %527 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %528 = trunc i64 %526 to i32
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %534 = icmp eq i64 %526, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i64 %526, 63
  %537 = trunc i64 %536 to i8
  store i8 %537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v445 = select i1 %534, i64 10, i64 23
  %538 = add i64 %527, %.v445
  store i64 %538, i64* %3, align 8
  %539 = load i64, i64* %RBP.i, align 8
  br i1 %534, label %block_421a28, label %block_.L_421a35

block_421a28:                                     ; preds = %block_.L_4219d0
  %540 = add i64 %539, -8
  %541 = add i64 %538, 8
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  store i64 0, i64* %542, align 8
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, 2356
  store i64 %544, i64* %3, align 8
  br label %block_.L_422364

block_.L_421a35:                                  ; preds = %block_.L_4219d0
  %545 = add i64 %539, -32
  %546 = add i64 %538, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RAX.i1462, align 8
  %549 = add i64 %548, 112
  %550 = add i64 %538, 8
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i1462, align 8
  %553 = add i64 %539, -48
  %554 = add i64 %538, 12
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RCX.i1460, align 8
  %558 = add i64 %552, %557
  %559 = add i64 %538, 16
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i8*
  store i8 0, i8* %560, align 1
  %.pre374 = load i64, i64* %3, align 8
  %.pre375 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421a45

block_.L_421a45:                                  ; preds = %block_.L_42196e, %block_.L_421a35
  %561 = phi i64 [ %364, %block_.L_42196e ], [ %.pre375, %block_.L_421a35 ]
  %562 = phi i64 [ %390, %block_.L_42196e ], [ %.pre374, %block_.L_421a35 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.5, %block_.L_42196e ], [ %call2_421a19, %block_.L_421a35 ]
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %563 = add i64 %561, -56
  store i64 %563, i64* %RCX.i1460, align 8
  %564 = add i64 %561, -16
  %565 = add i64 %562, 22
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  %568 = add i64 %561, -120
  %569 = add i64 %562, 26
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  store i64 %567, i64* %570, align 8
  %571 = load i64, i64* %RCX.i1460, align 8
  %572 = load i64, i64* %3, align 8
  store i64 %571, i64* %RDI.i1449, align 8
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -120
  %575 = add i64 %572, 7
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %RCX.i1460, align 8
  %578 = add i64 %572, -132687
  %579 = add i64 %572, 12
  %580 = load i64, i64* %6, align 8
  %581 = add i64 %580, -8
  %582 = inttoptr i64 %581 to i64*
  store i64 %579, i64* %582, align 8
  store i64 %581, i64* %6, align 8
  store i64 %578, i64* %3, align 8
  %call2_421a66 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %578, %struct.Memory* %MEMORY.7)
  %583 = load i64, i64* %RAX.i1462, align 8
  %584 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %585 = trunc i64 %583 to i32
  %586 = and i32 %585, 255
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  store i8 %590, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %591 = icmp eq i64 %583, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %29, align 1
  %593 = lshr i64 %583, 63
  %594 = trunc i64 %593 to i8
  store i8 %594, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v408 = select i1 %591, i64 10, i64 23
  %595 = add i64 %584, %.v408
  store i64 %595, i64* %3, align 8
  br i1 %591, label %block_421a75, label %block_.L_421a82

block_421a75:                                     ; preds = %block_.L_421a45
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -8
  %598 = add i64 %595, 8
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i64*
  store i64 0, i64* %599, align 8
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 2279
  store i64 %601, i64* %3, align 8
  br label %block_.L_422364

block_.L_421a82:                                  ; preds = %block_.L_421a45
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RSI.i1434, align 8
  %602 = load i64, i64* %RBP.i, align 8
  %603 = add i64 %602, -80
  store i64 %603, i64* %RDI.i1449, align 8
  %604 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %605 = sext i32 %604 to i64
  store i64 %605, i64* %RDX.i1431, align 8
  %606 = add i64 %602, -16
  %607 = add i64 %595, 23
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RCX.i1460, align 8
  %610 = add i64 %595, -132722
  %611 = add i64 %595, 28
  %612 = load i64, i64* %6, align 8
  %613 = add i64 %612, -8
  %614 = inttoptr i64 %613 to i64*
  store i64 %611, i64* %614, align 8
  store i64 %613, i64* %6, align 8
  store i64 %610, i64* %3, align 8
  %call2_421a99 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %610, %struct.Memory* %call2_421a66)
  %615 = load i64, i64* %RAX.i1462, align 8
  %616 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %617 = trunc i64 %615 to i32
  %618 = and i32 %617, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %623 = icmp eq i64 %615, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i64 %615, 63
  %626 = trunc i64 %625 to i8
  store i8 %626, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v409 = select i1 %623, i64 10, i64 23
  %627 = add i64 %616, %.v409
  store i64 %627, i64* %3, align 8
  %628 = load i64, i64* %RBP.i, align 8
  br i1 %623, label %block_421aa8, label %block_.L_421ab5

block_421aa8:                                     ; preds = %block_.L_421a82
  %629 = add i64 %628, -8
  %630 = add i64 %627, 8
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i64*
  store i64 0, i64* %631, align 8
  %632 = load i64, i64* %3, align 8
  %633 = add i64 %632, 2228
  store i64 %633, i64* %3, align 8
  br label %block_.L_422364

block_.L_421ab5:                                  ; preds = %block_.L_421a82
  %634 = add i64 %628, -20
  %635 = add i64 %627, 4
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = add i32 %637, -1
  %639 = icmp eq i32 %637, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %14, align 1
  %641 = and i32 %638, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %21, align 1
  %646 = xor i32 %638, %637
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %26, align 1
  %650 = icmp eq i32 %638, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %29, align 1
  %652 = lshr i32 %638, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %32, align 1
  %654 = lshr i32 %637, 31
  %655 = xor i32 %652, %654
  %656 = add nuw nsw i32 %655, %654
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %38, align 1
  %.v410 = select i1 %650, i64 10, i64 42
  %659 = add i64 %627, %.v410
  store i64 %659, i64* %3, align 8
  br i1 %650, label %block_421abf, label %block_.L_421adf

block_421abf:                                     ; preds = %block_.L_421ab5
  store i64 1, i64* %RDX.i1431, align 8
  %660 = add i64 %628, -16
  %661 = add i64 %659, 9
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RDI.i1449, align 8
  %664 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %665 = sext i32 %664 to i64
  %666 = shl nsw i64 %665, 2
  store i64 %666, i64* %RAX.i1462, align 8
  %.lobit = lshr i32 %664, 31
  %667 = trunc i32 %.lobit to i8
  store i8 %667, i8* %14, align 1
  %668 = trunc i64 %666 to i32
  %669 = and i32 %668, 252
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %674 = icmp eq i32 %664, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %29, align 1
  %676 = lshr i64 %665, 61
  %677 = trunc i64 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %666, i64* %RSI.i1434, align 8
  %679 = add i64 %659, -132287
  %680 = add i64 %659, 29
  %681 = load i64, i64* %6, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683, align 8
  store i64 %682, i64* %6, align 8
  store i64 %679, i64* %3, align 8
  %call2_421ad7 = tail call %struct.Memory* @sub_401600.fseek_plt(%struct.State* nonnull %0, i64 %679, %struct.Memory* %call2_421a99)
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -124
  %686 = load i32, i32* %EAX.i1459, align 4
  %687 = load i64, i64* %3, align 8
  %688 = add i64 %687, 3
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %685 to i32*
  store i32 %686, i32* %689, align 4
  %.pre376 = load i64, i64* %RBP.i, align 8
  %.pre377 = load i64, i64* %3, align 8
  br label %block_.L_421adf

block_.L_421adf:                                  ; preds = %block_.L_421ab5, %block_421abf
  %690 = phi i64 [ %659, %block_.L_421ab5 ], [ %.pre377, %block_421abf ]
  %691 = phi i64 [ %628, %block_.L_421ab5 ], [ %.pre376, %block_421abf ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_421a99, %block_.L_421ab5 ], [ %call2_421ad7, %block_421abf ]
  %692 = add i64 %691, -20
  %693 = add i64 %690, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, -5
  %697 = icmp ult i32 %695, 5
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %696, %695
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %26, align 1
  %708 = icmp eq i32 %696, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %696, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  %712 = lshr i32 %695, 31
  %713 = xor i32 %710, %712
  %714 = add nuw nsw i32 %713, %712
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %38, align 1
  %.v411 = select i1 %708, i64 20, i64 10
  %717 = add i64 %690, %.v411
  store i64 %717, i64* %3, align 8
  br i1 %708, label %block_.L_421af3, label %block_421ae9

block_421ae9:                                     ; preds = %block_.L_421adf
  %718 = add i64 %717, 4
  store i64 %718, i64* %3, align 8
  %719 = load i32, i32* %694, align 4
  %720 = add i32 %719, -7
  %721 = icmp ult i32 %719, 7
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %14, align 1
  %723 = and i32 %720, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %21, align 1
  %728 = xor i32 %720, %719
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %26, align 1
  %732 = icmp eq i32 %720, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %29, align 1
  %734 = lshr i32 %720, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %32, align 1
  %736 = lshr i32 %719, 31
  %737 = xor i32 %734, %736
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %38, align 1
  %.v412 = select i1 %732, i64 10, i64 333
  %741 = add i64 %717, %.v412
  store i64 %741, i64* %3, align 8
  br i1 %732, label %block_.L_421af3, label %block_.L_421c36

block_.L_421af3:                                  ; preds = %block_421ae9, %block_.L_421adf
  %742 = phi i64 [ %741, %block_421ae9 ], [ %717, %block_.L_421adf ]
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %743 = add i64 %691, -32
  %744 = add i64 %742, 18
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  %747 = add i64 %746, 144
  store i64 %747, i64* %RCX.i1460, align 8
  %748 = icmp ugt i64 %746, -145
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = trunc i64 %747 to i32
  %751 = and i32 %750, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %21, align 1
  %756 = xor i64 %746, 16
  %757 = xor i64 %756, %747
  %758 = lshr i64 %757, 4
  %759 = trunc i64 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %26, align 1
  %761 = icmp eq i64 %747, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %29, align 1
  %763 = lshr i64 %747, 63
  %764 = trunc i64 %763 to i8
  store i8 %764, i8* %32, align 1
  %765 = lshr i64 %746, 63
  %766 = xor i64 %763, %765
  %767 = add nuw nsw i64 %766, %763
  %768 = icmp eq i64 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %38, align 1
  %770 = add i64 %691, -16
  %771 = add i64 %742, 29
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  %774 = add i64 %691, -136
  %775 = add i64 %742, 36
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i64*
  store i64 %773, i64* %776, align 8
  %777 = load i64, i64* %RCX.i1460, align 8
  %778 = load i64, i64* %3, align 8
  store i64 %777, i64* %RDI.i1449, align 8
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -136
  %781 = add i64 %778, 10
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RCX.i1460, align 8
  %784 = add i64 %778, -132871
  %785 = add i64 %778, 15
  %786 = load i64, i64* %6, align 8
  %787 = add i64 %786, -8
  %788 = inttoptr i64 %787 to i64*
  store i64 %785, i64* %788, align 8
  store i64 %787, i64* %6, align 8
  store i64 %784, i64* %3, align 8
  %call2_421b21 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %784, %struct.Memory* %MEMORY.8)
  %789 = load i64, i64* %RAX.i1462, align 8
  %790 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %791 = trunc i64 %789 to i32
  %792 = and i32 %791, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %797 = icmp eq i64 %789, 0
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %29, align 1
  %799 = lshr i64 %789, 63
  %800 = trunc i64 %799 to i8
  store i8 %800, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v437 = select i1 %797, i64 10, i64 23
  %801 = add i64 %790, %.v437
  store i64 %801, i64* %3, align 8
  %802 = load i64, i64* %RBP.i, align 8
  br i1 %797, label %block_421b30, label %block_.L_421b3d

block_421b30:                                     ; preds = %block_.L_421af3
  %803 = add i64 %802, -8
  %804 = add i64 %801, 8
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  store i64 0, i64* %805, align 8
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 2092
  store i64 %807, i64* %3, align 8
  br label %block_.L_422364

block_.L_421b3d:                                  ; preds = %block_.L_421af3
  %808 = add i64 %802, -24
  %809 = add i64 %801, 4
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  store i8 0, i8* %14, align 1
  %812 = and i32 %811, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %817 = icmp eq i32 %811, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %29, align 1
  %819 = lshr i32 %811, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v438 = select i1 %817, i64 33, i64 10
  %821 = add i64 %801, %.v438
  store i64 %821, i64* %3, align 8
  br i1 %817, label %block_.L_421b5e, label %block_421b47

block_421b47:                                     ; preds = %block_.L_421b3d
  store i64 4, i64* %RSI.i1434, align 8
  %822 = add i64 %802, -32
  %823 = add i64 %821, 9
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  %826 = add i64 %825, 144
  store i64 %826, i64* %RAX.i1462, align 8
  %827 = icmp ugt i64 %825, -145
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = trunc i64 %826 to i32
  %830 = and i32 %829, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %21, align 1
  %835 = xor i64 %825, 16
  %836 = xor i64 %835, %826
  %837 = lshr i64 %836, 4
  %838 = trunc i64 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %26, align 1
  %840 = icmp eq i64 %826, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %29, align 1
  %842 = lshr i64 %826, 63
  %843 = trunc i64 %842 to i8
  store i8 %843, i8* %32, align 1
  %844 = lshr i64 %825, 63
  %845 = xor i64 %842, %844
  %846 = add nuw nsw i64 %845, %842
  %847 = icmp eq i64 %846, 2
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %38, align 1
  store i64 %826, i64* %RDI.i1449, align 8
  %849 = add i64 %821, 2105
  %850 = add i64 %821, 23
  %851 = load i64, i64* %6, align 8
  %852 = add i64 %851, -8
  %853 = inttoptr i64 %852 to i64*
  store i64 %850, i64* %853, align 8
  store i64 %852, i64* %6, align 8
  store i64 %849, i64* %3, align 8
  %call2_421b59 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %849, %struct.Memory* %call2_421b21)
  %.pre378 = load i64, i64* %RBP.i, align 8
  %.pre379 = load i64, i64* %3, align 8
  br label %block_.L_421b5e

block_.L_421b5e:                                  ; preds = %block_421b47, %block_.L_421b3d
  %854 = phi i64 [ %821, %block_.L_421b3d ], [ %.pre379, %block_421b47 ]
  %855 = phi i64 [ %802, %block_.L_421b3d ], [ %.pre378, %block_421b47 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_421b21, %block_.L_421b3d ], [ %call2_421b59, %block_421b47 ]
  %856 = add i64 %855, -32
  %857 = add i64 %854, 4
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RAX.i1462, align 8
  %860 = add i64 %859, 144
  %861 = add i64 %854, 10
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = and i32 %863, 1
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RCX.i1460, align 8
  store i8 0, i8* %14, align 1
  %866 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %867 = trunc i32 %866 to i8
  %868 = xor i8 %867, 1
  store i8 %868, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %869 = icmp eq i32 %864, 0
  %870 = trunc i32 %864 to i8
  %871 = xor i8 %870, 1
  store i8 %871, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v439 = select i1 %869, i64 81, i64 22
  %872 = add i64 %854, %.v439
  store i64 %872, i64* %3, align 8
  br i1 %869, label %block_.L_421baf, label %block_421b74

block_421b74:                                     ; preds = %block_.L_421b5e
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RSI.i1434, align 8
  %873 = add i64 %872, 11
  store i64 %873, i64* %3, align 8
  %874 = load i64, i64* %858, align 8
  store i64 %874, i64* %RCX.i1460, align 8
  %875 = add i64 %874, 120
  %876 = add i64 %872, 15
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %RDI.i1449, align 8
  %879 = add i64 %872, 19
  store i64 %879, i64* %3, align 8
  %880 = load i64, i64* %858, align 8
  store i64 %880, i64* %RCX.i1460, align 8
  %881 = add i64 %872, 21
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = add i32 %883, 1
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i1462, align 8
  %886 = icmp eq i32 %883, -1
  %887 = icmp eq i32 %884, 0
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %14, align 1
  %890 = and i32 %884, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i32 %884, %883
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %26, align 1
  %899 = zext i1 %887 to i8
  store i8 %899, i8* %29, align 1
  %900 = lshr i32 %884, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %32, align 1
  %902 = lshr i32 %883, 31
  %903 = xor i32 %900, %902
  %904 = add nuw nsw i32 %903, %900
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %38, align 1
  %907 = sext i32 %884 to i64
  store i64 %907, i64* %RDX.i1431, align 8
  %908 = add i64 %855, -16
  %909 = add i64 %872, 31
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i1460, align 8
  %912 = add i64 %872, -132964
  %913 = add i64 %872, 36
  %914 = load i64, i64* %6, align 8
  %915 = add i64 %914, -8
  %916 = inttoptr i64 %915 to i64*
  store i64 %913, i64* %916, align 8
  store i64 %915, i64* %6, align 8
  store i64 %912, i64* %3, align 8
  %call2_421b93 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %912, %struct.Memory* %MEMORY.10)
  %917 = load i64, i64* %RAX.i1462, align 8
  %918 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %919 = trunc i64 %917 to i32
  %920 = and i32 %919, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %925 = icmp eq i64 %917, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %29, align 1
  %927 = lshr i64 %917, 63
  %928 = trunc i64 %927 to i8
  store i8 %928, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v440 = select i1 %925, i64 10, i64 23
  %929 = add i64 %918, %.v440
  store i64 %929, i64* %3, align 8
  %930 = load i64, i64* %RBP.i, align 8
  br i1 %925, label %block_421ba2, label %block_.L_421baf

block_421ba2:                                     ; preds = %block_421b74
  %931 = add i64 %930, -8
  %932 = add i64 %929, 8
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  store i64 0, i64* %933, align 8
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 1978
  store i64 %935, i64* %3, align 8
  br label %block_.L_422364

block_.L_421baf:                                  ; preds = %block_421b74, %block_.L_421b5e
  %936 = phi i64 [ %872, %block_.L_421b5e ], [ %929, %block_421b74 ]
  %937 = phi i64 [ %855, %block_.L_421b5e ], [ %930, %block_421b74 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_.L_421b5e ], [ %call2_421b93, %block_421b74 ]
  %938 = add i64 %937, -32
  %939 = add i64 %936, 4
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX.i1462, align 8
  %942 = add i64 %941, 120
  %943 = add i64 %936, 8
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX.i1462, align 8
  %946 = add i64 %936, 12
  store i64 %946, i64* %3, align 8
  %947 = load i64, i64* %940, align 8
  store i64 %947, i64* %RCX.i1460, align 8
  %948 = add i64 %936, 14
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, 1
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RDX.i1431, align 8
  %953 = icmp eq i32 %950, -1
  %954 = icmp eq i32 %951, 0
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i32 %951, %950
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %26, align 1
  %966 = zext i1 %954 to i8
  store i8 %966, i8* %29, align 1
  %967 = lshr i32 %951, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %32, align 1
  %969 = lshr i32 %950, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %38, align 1
  %974 = sext i32 %951 to i64
  store i64 %974, i64* %RCX.i1460, align 8
  %975 = add i64 %945, %974
  %976 = add i64 %936, 24
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i8*
  store i8 0, i8* %977, align 1
  %978 = load i64, i64* %RBP.i, align 8
  %979 = add i64 %978, -32
  %980 = load i64, i64* %3, align 8
  %981 = add i64 %980, 4
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %979 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RAX.i1462, align 8
  %984 = add i64 %983, 144
  %985 = add i64 %980, 10
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = and i32 %987, 2
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RDX.i1431, align 8
  store i8 0, i8* %14, align 1
  %990 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %991 = trunc i32 %990 to i8
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %993 = icmp eq i32 %988, 0
  %.lobit399 = lshr exact i32 %988, 1
  %994 = trunc i32 %.lobit399 to i8
  %995 = xor i8 %994, 1
  store i8 %995, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v441 = select i1 %993, i64 84, i64 22
  %996 = add i64 %980, %.v441
  store i64 %996, i64* %3, align 8
  br i1 %993, label %block_.L_421c1b, label %block_421bdd

block_421bdd:                                     ; preds = %block_.L_421baf
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RSI.i1434, align 8
  %997 = add i64 %996, 11
  store i64 %997, i64* %3, align 8
  %998 = load i64, i64* %982, align 8
  store i64 %998, i64* %RCX.i1460, align 8
  %999 = add i64 %998, 128
  %1000 = add i64 %996, 18
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RDI.i1449, align 8
  %1003 = add i64 %996, 22
  store i64 %1003, i64* %3, align 8
  %1004 = load i64, i64* %982, align 8
  store i64 %1004, i64* %RCX.i1460, align 8
  %1005 = add i64 %996, 24
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = add i32 %1007, 1
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i1462, align 8
  %1010 = icmp eq i32 %1007, -1
  %1011 = icmp eq i32 %1008, 0
  %1012 = or i1 %1010, %1011
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %14, align 1
  %1014 = and i32 %1008, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  %1019 = xor i32 %1008, %1007
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  store i8 %1022, i8* %26, align 1
  %1023 = zext i1 %1011 to i8
  store i8 %1023, i8* %29, align 1
  %1024 = lshr i32 %1008, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %32, align 1
  %1026 = lshr i32 %1007, 31
  %1027 = xor i32 %1024, %1026
  %1028 = add nuw nsw i32 %1027, %1024
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %38, align 1
  %1031 = sext i32 %1008 to i64
  store i64 %1031, i64* %RDX.i1431, align 8
  %1032 = add i64 %978, -16
  %1033 = add i64 %996, 34
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RCX.i1460, align 8
  %1036 = add i64 %996, -133069
  %1037 = add i64 %996, 39
  %1038 = load i64, i64* %6, align 8
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1037, i64* %1040, align 8
  store i64 %1039, i64* %6, align 8
  store i64 %1036, i64* %3, align 8
  %call2_421bff = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1036, %struct.Memory* %MEMORY.11)
  %1041 = load i64, i64* %RAX.i1462, align 8
  %1042 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1043 = trunc i64 %1041 to i32
  %1044 = and i32 %1043, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1049 = icmp eq i64 %1041, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %29, align 1
  %1051 = lshr i64 %1041, 63
  %1052 = trunc i64 %1051 to i8
  store i8 %1052, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v442 = select i1 %1049, i64 10, i64 23
  %1053 = add i64 %1042, %.v442
  store i64 %1053, i64* %3, align 8
  %1054 = load i64, i64* %RBP.i, align 8
  br i1 %1049, label %block_421c0e, label %block_.L_421c1b

block_421c0e:                                     ; preds = %block_421bdd
  %1055 = add i64 %1054, -8
  %1056 = add i64 %1053, 8
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i64*
  store i64 0, i64* %1057, align 8
  %1058 = load i64, i64* %3, align 8
  %1059 = add i64 %1058, 1870
  store i64 %1059, i64* %3, align 8
  br label %block_.L_422364

block_.L_421c1b:                                  ; preds = %block_421bdd, %block_.L_421baf
  %1060 = phi i64 [ %996, %block_.L_421baf ], [ %1053, %block_421bdd ]
  %1061 = phi i64 [ %978, %block_.L_421baf ], [ %1054, %block_421bdd ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_.L_421baf ], [ %call2_421bff, %block_421bdd ]
  %1062 = add i64 %1061, -32
  %1063 = add i64 %1060, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RAX.i1462, align 8
  %1066 = add i64 %1065, 128
  %1067 = add i64 %1060, 11
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RAX.i1462, align 8
  %1070 = add i64 %1060, 15
  store i64 %1070, i64* %3, align 8
  %1071 = load i64, i64* %1064, align 8
  store i64 %1071, i64* %RCX.i1460, align 8
  %1072 = add i64 %1060, 17
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = add i32 %1074, 1
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RDX.i1431, align 8
  %1077 = icmp eq i32 %1074, -1
  %1078 = icmp eq i32 %1075, 0
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %14, align 1
  %1081 = and i32 %1075, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  %1086 = xor i32 %1075, %1074
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = zext i1 %1078 to i8
  store i8 %1090, i8* %29, align 1
  %1091 = lshr i32 %1075, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %32, align 1
  %1093 = lshr i32 %1074, 31
  %1094 = xor i32 %1091, %1093
  %1095 = add nuw nsw i32 %1094, %1091
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %38, align 1
  %1098 = sext i32 %1075 to i64
  store i64 %1098, i64* %RCX.i1460, align 8
  %1099 = add i64 %1069, %1098
  %1100 = add i64 %1060, 27
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i8*
  store i8 0, i8* %1101, align 1
  %.pre382 = load i64, i64* %RBP.i, align 8
  %.pre383 = load i64, i64* %3, align 8
  br label %block_.L_421c36

block_.L_421c36:                                  ; preds = %block_421ae9, %block_.L_421c1b
  %1102 = phi i64 [ %.pre383, %block_.L_421c1b ], [ %741, %block_421ae9 ]
  %1103 = phi i64 [ %.pre382, %block_.L_421c1b ], [ %691, %block_421ae9 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_421c1b ], [ %MEMORY.8, %block_421ae9 ]
  %1104 = add i64 %1103, -20
  %1105 = add i64 %1102, 4
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = add i32 %1107, -7
  %1109 = icmp ult i32 %1107, 7
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1108, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i32 %1108, %1107
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = icmp eq i32 %1108, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %29, align 1
  %1122 = lshr i32 %1108, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %32, align 1
  %1124 = lshr i32 %1107, 31
  %1125 = xor i32 %1122, %1124
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %38, align 1
  %.v413 = select i1 %1120, i64 10, i64 171
  %1129 = add i64 %1102, %.v413
  store i64 %1129, i64* %3, align 8
  br i1 %1120, label %block_421c40, label %block_.L_421ce1

block_421c40:                                     ; preds = %block_.L_421c36
  store i64 4, i64* %RAX.i1462, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %1130 = add i64 %1103, -32
  %1131 = add i64 %1129, 11
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  %1134 = add i64 %1133, 32
  store i64 %1134, i64* %RCX.i1460, align 8
  %1135 = icmp ugt i64 %1133, -33
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %14, align 1
  %1137 = trunc i64 %1134 to i32
  %1138 = and i32 %1137, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %21, align 1
  %1143 = xor i64 %1134, %1133
  %1144 = lshr i64 %1143, 4
  %1145 = trunc i64 %1144 to i8
  %1146 = and i8 %1145, 1
  store i8 %1146, i8* %26, align 1
  %1147 = icmp eq i64 %1134, 0
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %29, align 1
  %1149 = lshr i64 %1134, 63
  %1150 = trunc i64 %1149 to i8
  store i8 %1150, i8* %32, align 1
  %1151 = lshr i64 %1133, 63
  %1152 = xor i64 %1149, %1151
  %1153 = add nuw nsw i64 %1152, %1149
  %1154 = icmp eq i64 %1153, 2
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %38, align 1
  %1156 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1157 = sext i32 %1156 to i64
  store i64 %1157, i64* %RDX.i1431, align 8
  %1158 = add i64 %1103, -16
  %1159 = add i64 %1129, 27
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  %1162 = add i64 %1103, -144
  %1163 = add i64 %1129, 34
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  store i64 %1161, i64* %1164, align 8
  %1165 = load i64, i64* %RCX.i1460, align 8
  %1166 = load i64, i64* %3, align 8
  store i64 %1165, i64* %RDI.i1449, align 8
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -144
  %1169 = add i64 %1166, 10
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RCX.i1460, align 8
  %1172 = add i64 %1166, -133202
  %1173 = add i64 %1166, 15
  %1174 = load i64, i64* %6, align 8
  %1175 = add i64 %1174, -8
  %1176 = inttoptr i64 %1175 to i64*
  store i64 %1173, i64* %1176, align 8
  store i64 %1175, i64* %6, align 8
  store i64 %1172, i64* %3, align 8
  %call2_421c6c = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1172, %struct.Memory* %MEMORY.13)
  %1177 = load i64, i64* %RAX.i1462, align 8
  %1178 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1179 = trunc i64 %1177 to i32
  %1180 = and i32 %1179, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1185 = icmp eq i64 %1177, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %29, align 1
  %1187 = lshr i64 %1177, 63
  %1188 = trunc i64 %1187 to i8
  store i8 %1188, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v434 = select i1 %1185, i64 10, i64 23
  %1189 = add i64 %1178, %.v434
  store i64 %1189, i64* %3, align 8
  %1190 = load i64, i64* %RBP.i, align 8
  br i1 %1185, label %block_421c7b, label %block_.L_421c88

block_421c7b:                                     ; preds = %block_421c40
  %1191 = add i64 %1190, -8
  %1192 = add i64 %1189, 8
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i64*
  store i64 0, i64* %1193, align 8
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 1761
  store i64 %1195, i64* %3, align 8
  br label %block_.L_422364

block_.L_421c88:                                  ; preds = %block_421c40
  %1196 = add i64 %1190, -24
  %1197 = add i64 %1189, 4
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  store i8 0, i8* %14, align 1
  %1200 = and i32 %1199, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1205 = icmp eq i32 %1199, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %29, align 1
  %1207 = lshr i32 %1199, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v435 = select i1 %1205, i64 84, i64 10
  %1209 = add i64 %1189, %.v435
  store i64 %1209, i64* %3, align 8
  br i1 %1205, label %block_.L_421cdc, label %block_421c92

block_421c92:                                     ; preds = %block_.L_421c88
  %1210 = add i64 %1190, -44
  %1211 = add i64 %1209, 7
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  store i32 0, i32* %1212, align 4
  %.pre384 = load i64, i64* %3, align 8
  br label %block_.L_421c99

block_.L_421c99:                                  ; preds = %block_421ca9, %block_421c92
  %1213 = phi i64 [ %1342, %block_421ca9 ], [ %.pre384, %block_421c92 ]
  %1214 = load i64, i64* %RBP.i, align 8
  %1215 = add i64 %1214, -44
  %1216 = add i64 %1213, 3
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i1462, align 8
  %1220 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1221 = sub i32 %1218, %1220
  %1222 = icmp ult i32 %1218, %1220
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = and i32 %1221, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = xor i32 %1220, %1218
  %1230 = xor i32 %1229, %1221
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %26, align 1
  %1234 = icmp eq i32 %1221, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %29, align 1
  %1236 = lshr i32 %1221, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %32, align 1
  %1238 = lshr i32 %1218, 31
  %1239 = lshr i32 %1220, 31
  %1240 = xor i32 %1239, %1238
  %1241 = xor i32 %1236, %1238
  %1242 = add nuw nsw i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %38, align 1
  %1245 = icmp ne i8 %1237, 0
  %1246 = xor i1 %1245, %1243
  %.v436 = select i1 %1246, i64 16, i64 62
  %1247 = add i64 %1213, %.v436
  %1248 = add i64 %1247, 5
  store i64 %1248, i64* %3, align 8
  br i1 %1246, label %block_421ca9, label %block_.L_421cdc.loopexit

block_421ca9:                                     ; preds = %block_.L_421c99
  store i64 4, i64* %RSI.i1434, align 8
  %1249 = add i64 %1214, -32
  %1250 = add i64 %1247, 9
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  %1253 = add i64 %1252, 32
  store i64 %1253, i64* %RAX.i1462, align 8
  %1254 = icmp ugt i64 %1252, -33
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %14, align 1
  %1256 = trunc i64 %1253 to i32
  %1257 = and i32 %1256, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i64 %1253, %1252
  %1263 = lshr i64 %1262, 4
  %1264 = trunc i64 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %26, align 1
  %1266 = icmp eq i64 %1253, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %29, align 1
  %1268 = lshr i64 %1253, 63
  %1269 = trunc i64 %1268 to i8
  store i8 %1269, i8* %32, align 1
  %1270 = lshr i64 %1252, 63
  %1271 = xor i64 %1268, %1270
  %1272 = add nuw nsw i64 %1271, %1268
  %1273 = icmp eq i64 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %38, align 1
  %1275 = add i64 %1247, 17
  store i64 %1275, i64* %3, align 8
  %1276 = load i32, i32* %1217, align 4
  %1277 = sext i32 %1276 to i64
  %1278 = shl nsw i64 %1277, 2
  store i64 %1278, i64* %RCX.i1460, align 8
  %1279 = add i64 %1278, %1253
  store i64 %1279, i64* %RAX.i1462, align 8
  %1280 = icmp ult i64 %1279, %1253
  %1281 = icmp ult i64 %1279, %1278
  %1282 = or i1 %1280, %1281
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %14, align 1
  %1284 = trunc i64 %1279 to i32
  %1285 = and i32 %1284, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i64 %1278, %1253
  %1291 = xor i64 %1290, %1279
  %1292 = lshr i64 %1291, 4
  %1293 = trunc i64 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %26, align 1
  %1295 = icmp eq i64 %1279, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %29, align 1
  %1297 = lshr i64 %1279, 63
  %1298 = trunc i64 %1297 to i8
  store i8 %1298, i8* %32, align 1
  %1299 = lshr i64 %1277, 61
  %1300 = and i64 %1299, 1
  %1301 = xor i64 %1297, %1268
  %1302 = xor i64 %1297, %1300
  %1303 = add nuw nsw i64 %1301, %1302
  %1304 = icmp eq i64 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %38, align 1
  store i64 %1279, i64* %RDI.i1449, align 8
  %1306 = add i64 %1247, 1751
  %1307 = add i64 %1247, 32
  %1308 = load i64, i64* %6, align 8
  %1309 = add i64 %1308, -8
  %1310 = inttoptr i64 %1309 to i64*
  store i64 %1307, i64* %1310, align 8
  store i64 %1309, i64* %6, align 8
  store i64 %1306, i64* %3, align 8
  %call2_421cc4 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1306, %struct.Memory* %call2_421c6c)
  %1311 = load i64, i64* %RBP.i, align 8
  %1312 = add i64 %1311, -44
  %1313 = load i64, i64* %3, align 8
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = add i32 %1316, 1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i1462, align 8
  %1319 = icmp eq i32 %1316, -1
  %1320 = icmp eq i32 %1317, 0
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %14, align 1
  %1323 = and i32 %1317, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %21, align 1
  %1328 = xor i32 %1317, %1316
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %26, align 1
  %1332 = zext i1 %1320 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = lshr i32 %1317, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %32, align 1
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1333, %1335
  %1337 = add nuw nsw i32 %1336, %1333
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %38, align 1
  %1340 = add i64 %1313, 9
  store i64 %1340, i64* %3, align 8
  store i32 %1317, i32* %1315, align 4
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, -57
  store i64 %1342, i64* %3, align 8
  br label %block_.L_421c99

block_.L_421cdc.loopexit:                         ; preds = %block_.L_421c99
  br label %block_.L_421cdc

block_.L_421cdc:                                  ; preds = %block_.L_421cdc.loopexit, %block_.L_421c88
  %1343 = phi i64 [ %1190, %block_.L_421c88 ], [ %1214, %block_.L_421cdc.loopexit ]
  %1344 = phi i64 [ %1209, %block_.L_421c88 ], [ %1248, %block_.L_421cdc.loopexit ]
  %1345 = add i64 %1344, 21
  store i64 %1345, i64* %3, align 8
  br label %block_.L_421cf1

block_.L_421ce1:                                  ; preds = %block_.L_421c36
  %1346 = add i64 %1103, -32
  %1347 = add i64 %1129, 4
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i64*
  %1349 = load i64, i64* %1348, align 8
  %1350 = add i64 %1349, 32
  store i64 %1350, i64* %RAX.i1462, align 8
  %1351 = icmp ugt i64 %1349, -33
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = trunc i64 %1350 to i32
  %1354 = and i32 %1353, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %21, align 1
  %1359 = xor i64 %1350, %1349
  %1360 = lshr i64 %1359, 4
  %1361 = trunc i64 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %26, align 1
  %1363 = icmp eq i64 %1350, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %29, align 1
  %1365 = lshr i64 %1350, 63
  %1366 = trunc i64 %1365 to i8
  store i8 %1366, i8* %32, align 1
  %1367 = lshr i64 %1349, 63
  %1368 = xor i64 %1365, %1367
  %1369 = add nuw nsw i64 %1368, %1365
  %1370 = icmp eq i64 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %38, align 1
  store i64 %1350, i64* %RDI.i1449, align 8
  %1372 = add i64 %1129, 80383
  %1373 = add i64 %1129, 16
  %1374 = load i64, i64* %6, align 8
  %1375 = add i64 %1374, -8
  %1376 = inttoptr i64 %1375 to i64*
  store i64 %1373, i64* %1376, align 8
  store i64 %1375, i64* %6, align 8
  store i64 %1372, i64* %3, align 8
  %call2_421cec = tail call %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* nonnull %0, i64 %1372, %struct.Memory* %MEMORY.13)
  %.pre385 = load i64, i64* %RBP.i, align 8
  %.pre386 = load i64, i64* %3, align 8
  br label %block_.L_421cf1

block_.L_421cf1:                                  ; preds = %block_.L_421ce1, %block_.L_421cdc
  %1377 = phi i64 [ %.pre386, %block_.L_421ce1 ], [ %1345, %block_.L_421cdc ]
  %1378 = phi i64 [ %.pre385, %block_.L_421ce1 ], [ %1343, %block_.L_421cdc ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_421cec, %block_.L_421ce1 ], [ %call2_421c6c, %block_.L_421cdc ]
  %1379 = add i64 %1378, -40
  %1380 = add i64 %1377, 7
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  store i32 0, i32* %1381, align 4
  %.pre387 = load i64, i64* %3, align 8
  br label %block_.L_421cf8

block_.L_421cf8:                                  ; preds = %block_.L_422340, %block_.L_421cf1
  %1382 = phi i64 [ %.pre387, %block_.L_421cf1 ], [ %3220, %block_.L_422340 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_.L_421cf1 ], [ %MEMORY.25, %block_.L_422340 ]
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -40
  %1385 = add i64 %1382, 3
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX.i1462, align 8
  %1389 = add i64 %1383, -32
  %1390 = add i64 %1382, 7
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RCX.i1460, align 8
  %1393 = add i64 %1382, 9
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = sub i32 %1387, %1395
  %1397 = icmp ult i32 %1387, %1395
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %14, align 1
  %1399 = and i32 %1396, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  %1404 = xor i32 %1395, %1387
  %1405 = xor i32 %1404, %1396
  %1406 = lshr i32 %1405, 4
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %26, align 1
  %1409 = icmp eq i32 %1396, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %29, align 1
  %1411 = lshr i32 %1396, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %32, align 1
  %1413 = lshr i32 %1387, 31
  %1414 = lshr i32 %1395, 31
  %1415 = xor i32 %1414, %1413
  %1416 = xor i32 %1411, %1413
  %1417 = add nuw nsw i32 %1416, %1415
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %38, align 1
  %1420 = icmp ne i8 %1412, 0
  %1421 = xor i1 %1420, %1418
  %.demorgan = or i1 %1409, %1421
  %.v414 = select i1 %.demorgan, i64 15, i64 1627
  %1422 = add i64 %1382, %.v414
  store i64 %1422, i64* %3, align 8
  br i1 %.demorgan, label %block_421d07, label %block_.L_422353

block_421d07:                                     ; preds = %block_.L_421cf8
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %1423 = add i64 %1422, 18
  store i64 %1423, i64* %3, align 8
  %1424 = load i64, i64* %1391, align 8
  store i64 %1424, i64* %RCX.i1460, align 8
  %1425 = add i64 %1424, 16
  %1426 = add i64 %1422, 22
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RCX.i1460, align 8
  %1429 = add i64 %1422, 26
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1386, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = mul nsw i64 %1431, 92
  store i64 %1432, i64* %RDI.i1449, align 8
  %1433 = lshr i64 %1432, 63
  %1434 = add i64 %1432, %1428
  store i64 %1434, i64* %RCX.i1460, align 8
  %1435 = icmp ult i64 %1434, %1428
  %1436 = icmp ult i64 %1434, %1432
  %1437 = or i1 %1435, %1436
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %14, align 1
  %1439 = trunc i64 %1434 to i32
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %21, align 1
  %1445 = xor i64 %1432, %1428
  %1446 = xor i64 %1445, %1434
  %1447 = lshr i64 %1446, 4
  %1448 = trunc i64 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %26, align 1
  %1450 = icmp eq i64 %1434, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %29, align 1
  %1452 = lshr i64 %1434, 63
  %1453 = trunc i64 %1452 to i8
  store i8 %1453, i8* %32, align 1
  %1454 = lshr i64 %1428, 63
  %1455 = xor i64 %1452, %1454
  %1456 = xor i64 %1452, %1433
  %1457 = add nuw nsw i64 %1455, %1456
  %1458 = icmp eq i64 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %38, align 1
  %1460 = add i64 %1383, -16
  %1461 = add i64 %1422, 37
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i64*
  %1463 = load i64, i64* %1462, align 8
  %1464 = add i64 %1383, -152
  %1465 = add i64 %1422, 44
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i64*
  store i64 %1463, i64* %1466, align 8
  %1467 = load i64, i64* %RCX.i1460, align 8
  %1468 = load i64, i64* %3, align 8
  store i64 %1467, i64* %RDI.i1449, align 8
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -152
  %1471 = add i64 %1468, 10
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i64*
  %1473 = load i64, i64* %1472, align 8
  store i64 %1473, i64* %RCX.i1460, align 8
  %1474 = add i64 %1468, -133411
  %1475 = add i64 %1468, 15
  %1476 = load i64, i64* %6, align 8
  %1477 = add i64 %1476, -8
  %1478 = inttoptr i64 %1477 to i64*
  store i64 %1475, i64* %1478, align 8
  store i64 %1477, i64* %6, align 8
  store i64 %1474, i64* %3, align 8
  %call2_421d3d = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1474, %struct.Memory* %MEMORY.17)
  %1479 = load i64, i64* %RAX.i1462, align 8
  %1480 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1481 = trunc i64 %1479 to i32
  %1482 = and i32 %1481, 255
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1487 = icmp eq i64 %1479, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %29, align 1
  %1489 = lshr i64 %1479, 63
  %1490 = trunc i64 %1489 to i8
  store i8 %1490, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v415 = select i1 %1487, i64 10, i64 23
  %1491 = add i64 %1480, %.v415
  store i64 %1491, i64* %3, align 8
  br i1 %1487, label %block_421d4c, label %block_.L_421d59

block_421d4c:                                     ; preds = %block_421d07
  %1492 = load i64, i64* %RBP.i, align 8
  %1493 = add i64 %1492, -8
  %1494 = add i64 %1491, 8
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  store i64 0, i64* %1495, align 8
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 1552
  store i64 %1497, i64* %3, align 8
  br label %block_.L_422364

block_.L_421d59:                                  ; preds = %block_421d07
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -32
  %1500 = add i64 %1491, 18
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RCX.i1460, align 8
  %1503 = add i64 %1502, 16
  %1504 = add i64 %1491, 22
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RCX.i1460, align 8
  %1507 = add i64 %1498, -40
  %1508 = add i64 %1491, 26
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = sext i32 %1510 to i64
  %1512 = mul nsw i64 %1511, 92
  store i64 %1512, i64* %RDI.i1449, align 8
  %1513 = add i64 %1512, %1506
  %1514 = lshr i64 %1513, 63
  %1515 = add i64 %1513, 8
  store i64 %1515, i64* %RCX.i1460, align 8
  %1516 = icmp ugt i64 %1513, -9
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %14, align 1
  %1518 = trunc i64 %1515 to i32
  %1519 = and i32 %1518, 255
  %1520 = tail call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %21, align 1
  %1524 = xor i64 %1515, %1513
  %1525 = lshr i64 %1524, 4
  %1526 = trunc i64 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %26, align 1
  %1528 = icmp eq i64 %1515, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %29, align 1
  %1530 = lshr i64 %1515, 63
  %1531 = trunc i64 %1530 to i8
  store i8 %1531, i8* %32, align 1
  %1532 = xor i64 %1530, %1514
  %1533 = add nuw nsw i64 %1532, %1530
  %1534 = icmp eq i64 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %38, align 1
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -16
  %1538 = add i64 %1491, 41
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  %1541 = add i64 %1536, -160
  %1542 = add i64 %1491, 48
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i64*
  store i64 %1540, i64* %1543, align 8
  %1544 = load i64, i64* %RCX.i1460, align 8
  %1545 = load i64, i64* %3, align 8
  store i64 %1544, i64* %RDI.i1449, align 8
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -160
  %1548 = add i64 %1545, 10
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i64*
  %1550 = load i64, i64* %1549, align 8
  store i64 %1550, i64* %RCX.i1460, align 8
  %1551 = add i64 %1545, -133497
  %1552 = add i64 %1545, 15
  %1553 = load i64, i64* %6, align 8
  %1554 = add i64 %1553, -8
  %1555 = inttoptr i64 %1554 to i64*
  store i64 %1552, i64* %1555, align 8
  store i64 %1554, i64* %6, align 8
  store i64 %1551, i64* %3, align 8
  %call2_421d93 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1551, %struct.Memory* %MEMORY.17)
  %1556 = load i64, i64* %RAX.i1462, align 8
  %1557 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1558 = trunc i64 %1556 to i32
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1564 = icmp eq i64 %1556, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i64 %1556, 63
  %1567 = trunc i64 %1566 to i8
  store i8 %1567, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v416 = select i1 %1564, i64 10, i64 23
  %1568 = add i64 %1557, %.v416
  store i64 %1568, i64* %3, align 8
  br i1 %1564, label %block_421da2, label %block_.L_421daf

block_421da2:                                     ; preds = %block_.L_421d59
  %1569 = load i64, i64* %RBP.i, align 8
  %1570 = add i64 %1569, -8
  %1571 = add i64 %1568, 8
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i64*
  store i64 0, i64* %1572, align 8
  %1573 = load i64, i64* %3, align 8
  %1574 = add i64 %1573, 1466
  store i64 %1574, i64* %3, align 8
  br label %block_.L_422364

block_.L_421daf:                                  ; preds = %block_.L_421d59
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -32
  %1577 = add i64 %1568, 18
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RCX.i1460, align 8
  %1580 = add i64 %1579, 16
  %1581 = add i64 %1568, 22
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i64*
  %1583 = load i64, i64* %1582, align 8
  store i64 %1583, i64* %RCX.i1460, align 8
  %1584 = add i64 %1575, -40
  %1585 = add i64 %1568, 26
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = sext i32 %1587 to i64
  %1589 = mul nsw i64 %1588, 92
  store i64 %1589, i64* %RDI.i1449, align 8
  %1590 = add i64 %1589, %1583
  %1591 = lshr i64 %1590, 63
  %1592 = add i64 %1590, 4
  store i64 %1592, i64* %RCX.i1460, align 8
  %1593 = icmp ugt i64 %1590, -5
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %14, align 1
  %1595 = trunc i64 %1592 to i32
  %1596 = and i32 %1595, 255
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %21, align 1
  %1601 = xor i64 %1592, %1590
  %1602 = lshr i64 %1601, 4
  %1603 = trunc i64 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %26, align 1
  %1605 = icmp eq i64 %1592, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %29, align 1
  %1607 = lshr i64 %1592, 63
  %1608 = trunc i64 %1607 to i8
  store i8 %1608, i8* %32, align 1
  %1609 = xor i64 %1607, %1591
  %1610 = add nuw nsw i64 %1609, %1607
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %38, align 1
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -16
  %1615 = add i64 %1568, 41
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  %1618 = add i64 %1613, -168
  %1619 = add i64 %1568, 48
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  store i64 %1617, i64* %1620, align 8
  %1621 = load i64, i64* %RCX.i1460, align 8
  %1622 = load i64, i64* %3, align 8
  store i64 %1621, i64* %RDI.i1449, align 8
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -168
  %1625 = add i64 %1622, 10
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i64*
  %1627 = load i64, i64* %1626, align 8
  store i64 %1627, i64* %RCX.i1460, align 8
  %1628 = add i64 %1622, -133583
  %1629 = add i64 %1622, 15
  %1630 = load i64, i64* %6, align 8
  %1631 = add i64 %1630, -8
  %1632 = inttoptr i64 %1631 to i64*
  store i64 %1629, i64* %1632, align 8
  store i64 %1631, i64* %6, align 8
  store i64 %1628, i64* %3, align 8
  %call2_421de9 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1628, %struct.Memory* %MEMORY.17)
  %1633 = load i64, i64* %RAX.i1462, align 8
  %1634 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1635 = trunc i64 %1633 to i32
  %1636 = and i32 %1635, 255
  %1637 = tail call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = xor i8 %1639, 1
  store i8 %1640, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1641 = icmp eq i64 %1633, 0
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %29, align 1
  %1643 = lshr i64 %1633, 63
  %1644 = trunc i64 %1643 to i8
  store i8 %1644, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v417 = select i1 %1641, i64 10, i64 23
  %1645 = add i64 %1634, %.v417
  store i64 %1645, i64* %3, align 8
  br i1 %1641, label %block_421df8, label %block_.L_421e05

block_421df8:                                     ; preds = %block_.L_421daf
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -8
  %1648 = add i64 %1645, 8
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  store i64 0, i64* %1649, align 8
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, 1380
  store i64 %1651, i64* %3, align 8
  br label %block_.L_422364

block_.L_421e05:                                  ; preds = %block_.L_421daf
  store i64 4, i64* %RAX.i1462, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %1652 = load i64, i64* %RBP.i, align 8
  %1653 = add i64 %1652, -32
  %1654 = add i64 %1645, 11
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i64*
  %1656 = load i64, i64* %1655, align 8
  store i64 %1656, i64* %RCX.i1460, align 8
  %1657 = add i64 %1656, 16
  %1658 = add i64 %1645, 15
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RCX.i1460, align 8
  %1661 = add i64 %1652, -40
  %1662 = add i64 %1645, 19
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = sext i32 %1664 to i64
  %1666 = mul nsw i64 %1665, 92
  %1667 = add i64 %1666, %1660
  %1668 = lshr i64 %1667, 63
  %1669 = add i64 %1667, 12
  store i64 %1669, i64* %RCX.i1460, align 8
  %1670 = icmp ugt i64 %1667, -13
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %14, align 1
  %1672 = trunc i64 %1669 to i32
  %1673 = and i32 %1672, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i64 %1669, %1667
  %1679 = lshr i64 %1678, 4
  %1680 = trunc i64 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %26, align 1
  %1682 = icmp eq i64 %1669, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %29, align 1
  %1684 = lshr i64 %1669, 63
  %1685 = trunc i64 %1684 to i8
  store i8 %1685, i8* %32, align 1
  %1686 = xor i64 %1684, %1668
  %1687 = add nuw nsw i64 %1686, %1684
  %1688 = icmp eq i64 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %38, align 1
  %1690 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1691 = sext i32 %1690 to i64
  store i64 %1691, i64* %RDX.i1431, align 8
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -16
  %1694 = add i64 %1645, 42
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  %1697 = add i64 %1692, -176
  %1698 = add i64 %1645, 49
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i64*
  store i64 %1696, i64* %1699, align 8
  %1700 = load i64, i64* %RCX.i1460, align 8
  %1701 = load i64, i64* %3, align 8
  store i64 %1700, i64* %RDI.i1449, align 8
  %1702 = load i64, i64* %RBP.i, align 8
  %1703 = add i64 %1702, -176
  %1704 = add i64 %1701, 10
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RCX.i1460, align 8
  %1707 = add i64 %1701, -133670
  %1708 = add i64 %1701, 15
  %1709 = load i64, i64* %6, align 8
  %1710 = add i64 %1709, -8
  %1711 = inttoptr i64 %1710 to i64*
  store i64 %1708, i64* %1711, align 8
  store i64 %1710, i64* %6, align 8
  store i64 %1707, i64* %3, align 8
  %call2_421e40 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1707, %struct.Memory* %MEMORY.17)
  %1712 = load i64, i64* %RAX.i1462, align 8
  %1713 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1714 = trunc i64 %1712 to i32
  %1715 = and i32 %1714, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715)
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1720 = icmp eq i64 %1712, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %29, align 1
  %1722 = lshr i64 %1712, 63
  %1723 = trunc i64 %1722 to i8
  store i8 %1723, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v418 = select i1 %1720, i64 10, i64 23
  %1724 = add i64 %1713, %.v418
  store i64 %1724, i64* %3, align 8
  %1725 = load i64, i64* %RBP.i, align 8
  br i1 %1720, label %block_421e4f, label %block_.L_421e5c

block_421e4f:                                     ; preds = %block_.L_421e05
  %1726 = add i64 %1725, -8
  %1727 = add i64 %1724, 8
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  store i64 0, i64* %1728, align 8
  %1729 = load i64, i64* %3, align 8
  %1730 = add i64 %1729, 1293
  store i64 %1730, i64* %3, align 8
  br label %block_.L_422364

block_.L_421e5c:                                  ; preds = %block_.L_421e05
  %1731 = add i64 %1725, -24
  %1732 = add i64 %1724, 4
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  store i8 0, i8* %14, align 1
  %1735 = and i32 %1734, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1740 = icmp eq i32 %1734, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i32 %1734, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v419 = select i1 %1740, i64 203, i64 10
  %1744 = add i64 %1724, %.v419
  store i64 %1744, i64* %3, align 8
  br i1 %1740, label %block_.L_421f27, label %block_421e66

block_421e66:                                     ; preds = %block_.L_421e5c
  store i64 4, i64* %RSI.i1434, align 8
  %1745 = add i64 %1725, -32
  %1746 = add i64 %1744, 9
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RAX.i1462, align 8
  %1749 = add i64 %1748, 16
  %1750 = add i64 %1744, 13
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %RAX.i1462, align 8
  %1753 = add i64 %1725, -40
  %1754 = add i64 %1744, 17
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sext i32 %1756 to i64
  %1758 = mul nsw i64 %1757, 92
  store i64 %1758, i64* %RCX.i1460, align 8
  %1759 = lshr i64 %1758, 63
  %1760 = add i64 %1758, %1752
  store i64 %1760, i64* %RAX.i1462, align 8
  %1761 = icmp ult i64 %1760, %1752
  %1762 = icmp ult i64 %1760, %1758
  %1763 = or i1 %1761, %1762
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = trunc i64 %1760 to i32
  %1766 = and i32 %1765, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %21, align 1
  %1771 = xor i64 %1758, %1752
  %1772 = xor i64 %1771, %1760
  %1773 = lshr i64 %1772, 4
  %1774 = trunc i64 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %26, align 1
  %1776 = icmp eq i64 %1760, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %29, align 1
  %1778 = lshr i64 %1760, 63
  %1779 = trunc i64 %1778 to i8
  store i8 %1779, i8* %32, align 1
  %1780 = lshr i64 %1752, 63
  %1781 = xor i64 %1778, %1780
  %1782 = xor i64 %1778, %1759
  %1783 = add nuw nsw i64 %1781, %1782
  %1784 = icmp eq i64 %1783, 2
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %38, align 1
  store i64 %1760, i64* %RDI.i1449, align 8
  %1786 = add i64 %1744, 1306
  %1787 = add i64 %1744, 32
  %1788 = load i64, i64* %6, align 8
  %1789 = add i64 %1788, -8
  %1790 = inttoptr i64 %1789 to i64*
  store i64 %1787, i64* %1790, align 8
  store i64 %1789, i64* %6, align 8
  store i64 %1786, i64* %3, align 8
  %call2_421e81 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1786, %struct.Memory* %MEMORY.17)
  %1791 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -32
  %1794 = add i64 %1791, 9
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i64*
  %1796 = load i64, i64* %1795, align 8
  store i64 %1796, i64* %RAX.i1462, align 8
  %1797 = add i64 %1796, 16
  %1798 = add i64 %1791, 13
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i64*
  %1800 = load i64, i64* %1799, align 8
  store i64 %1800, i64* %RAX.i1462, align 8
  %1801 = add i64 %1792, -40
  %1802 = add i64 %1791, 17
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i32*
  %1804 = load i32, i32* %1803, align 4
  %1805 = sext i32 %1804 to i64
  %1806 = mul nsw i64 %1805, 92
  store i64 %1806, i64* %RCX.i1460, align 8
  %1807 = add i64 %1806, %1800
  %1808 = lshr i64 %1807, 63
  %1809 = add i64 %1807, 8
  store i64 %1809, i64* %RAX.i1462, align 8
  %1810 = icmp ugt i64 %1807, -9
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %14, align 1
  %1812 = trunc i64 %1809 to i32
  %1813 = and i32 %1812, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i64 %1809, %1807
  %1819 = lshr i64 %1818, 4
  %1820 = trunc i64 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %26, align 1
  %1822 = icmp eq i64 %1809, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %29, align 1
  %1824 = lshr i64 %1809, 63
  %1825 = trunc i64 %1824 to i8
  store i8 %1825, i8* %32, align 1
  %1826 = xor i64 %1824, %1808
  %1827 = add nuw nsw i64 %1826, %1824
  %1828 = icmp eq i64 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %38, align 1
  store i64 %1809, i64* %RDI.i1449, align 8
  %1830 = add i64 %1791, 1274
  %1831 = add i64 %1791, 36
  %1832 = load i64, i64* %6, align 8
  %1833 = add i64 %1832, -8
  %1834 = inttoptr i64 %1833 to i64*
  store i64 %1831, i64* %1834, align 8
  store i64 %1833, i64* %6, align 8
  store i64 %1830, i64* %3, align 8
  %call2_421ea5 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1830, %struct.Memory* %MEMORY.17)
  %1835 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %1836 = load i64, i64* %RBP.i, align 8
  %1837 = add i64 %1836, -32
  %1838 = add i64 %1835, 9
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RAX.i1462, align 8
  %1841 = add i64 %1840, 16
  %1842 = add i64 %1835, 13
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RAX.i1462, align 8
  %1845 = add i64 %1836, -40
  %1846 = add i64 %1835, 17
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = sext i32 %1848 to i64
  %1850 = mul nsw i64 %1849, 92
  store i64 %1850, i64* %RCX.i1460, align 8
  %1851 = add i64 %1850, %1844
  %1852 = lshr i64 %1851, 63
  %1853 = add i64 %1851, 4
  store i64 %1853, i64* %RAX.i1462, align 8
  %1854 = icmp ugt i64 %1851, -5
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %14, align 1
  %1856 = trunc i64 %1853 to i32
  %1857 = and i32 %1856, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %21, align 1
  %1862 = xor i64 %1853, %1851
  %1863 = lshr i64 %1862, 4
  %1864 = trunc i64 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %26, align 1
  %1866 = icmp eq i64 %1853, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i64 %1853, 63
  %1869 = trunc i64 %1868 to i8
  store i8 %1869, i8* %32, align 1
  %1870 = xor i64 %1868, %1852
  %1871 = add nuw nsw i64 %1870, %1868
  %1872 = icmp eq i64 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %38, align 1
  store i64 %1853, i64* %RDI.i1449, align 8
  %1874 = add i64 %1835, 1238
  %1875 = add i64 %1835, 36
  %1876 = load i64, i64* %6, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1875, i64* %1878, align 8
  store i64 %1877, i64* %6, align 8
  store i64 %1874, i64* %3, align 8
  %call2_421ec9 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1874, %struct.Memory* %MEMORY.17)
  %1879 = load i64, i64* %RBP.i, align 8
  %1880 = add i64 %1879, -44
  %1881 = load i64, i64* %3, align 8
  %1882 = add i64 %1881, 7
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1880 to i32*
  store i32 0, i32* %1883, align 4
  %.pre388 = load i64, i64* %3, align 8
  br label %block_.L_421ed5

block_.L_421ed5:                                  ; preds = %block_421ee5, %block_421e66
  %1884 = phi i64 [ %2027, %block_421ee5 ], [ %.pre388, %block_421e66 ]
  %1885 = load i64, i64* %RBP.i, align 8
  %1886 = add i64 %1885, -44
  %1887 = add i64 %1884, 3
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RAX.i1462, align 8
  %1891 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1892 = sub i32 %1889, %1891
  %1893 = icmp ult i32 %1889, %1891
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %14, align 1
  %1895 = and i32 %1892, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %21, align 1
  %1900 = xor i32 %1891, %1889
  %1901 = xor i32 %1900, %1892
  %1902 = lshr i32 %1901, 4
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %26, align 1
  %1905 = icmp eq i32 %1892, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %29, align 1
  %1907 = lshr i32 %1892, 31
  %1908 = trunc i32 %1907 to i8
  store i8 %1908, i8* %32, align 1
  %1909 = lshr i32 %1889, 31
  %1910 = lshr i32 %1891, 31
  %1911 = xor i32 %1910, %1909
  %1912 = xor i32 %1907, %1909
  %1913 = add nuw nsw i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %38, align 1
  %1916 = icmp ne i8 %1908, 0
  %1917 = xor i1 %1916, %1914
  %.v420 = select i1 %1917, i64 16, i64 77
  %1918 = add i64 %1884, %.v420
  %1919 = add i64 %1918, 5
  store i64 %1919, i64* %3, align 8
  br i1 %1917, label %block_421ee5, label %block_.L_421f27.loopexit

block_421ee5:                                     ; preds = %block_.L_421ed5
  store i64 4, i64* %RSI.i1434, align 8
  %1920 = add i64 %1885, -32
  %1921 = add i64 %1918, 9
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i1462, align 8
  %1924 = add i64 %1923, 16
  %1925 = add i64 %1918, 13
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i64*
  %1927 = load i64, i64* %1926, align 8
  store i64 %1927, i64* %RAX.i1462, align 8
  %1928 = add i64 %1885, -40
  %1929 = add i64 %1918, 17
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sext i32 %1931 to i64
  %1933 = mul nsw i64 %1932, 92
  store i64 %1933, i64* %RCX.i1460, align 8
  %1934 = add i64 %1933, %1927
  %1935 = lshr i64 %1934, 63
  %1936 = add i64 %1934, 12
  store i64 %1936, i64* %RAX.i1462, align 8
  %1937 = icmp ugt i64 %1934, -13
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %14, align 1
  %1939 = trunc i64 %1936 to i32
  %1940 = and i32 %1939, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940)
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %21, align 1
  %1945 = xor i64 %1936, %1934
  %1946 = lshr i64 %1945, 4
  %1947 = trunc i64 %1946 to i8
  %1948 = and i8 %1947, 1
  store i8 %1948, i8* %26, align 1
  %1949 = icmp eq i64 %1936, 0
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %29, align 1
  %1951 = lshr i64 %1936, 63
  %1952 = trunc i64 %1951 to i8
  store i8 %1952, i8* %32, align 1
  %1953 = xor i64 %1951, %1935
  %1954 = add nuw nsw i64 %1953, %1951
  %1955 = icmp eq i64 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %38, align 1
  %1957 = load i64, i64* %RBP.i, align 8
  %1958 = add i64 %1957, -44
  %1959 = add i64 %1918, 32
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  %1961 = load i32, i32* %1960, align 4
  %1962 = sext i32 %1961 to i64
  %1963 = shl nsw i64 %1962, 2
  store i64 %1963, i64* %RCX.i1460, align 8
  %1964 = add i64 %1963, %1936
  store i64 %1964, i64* %RAX.i1462, align 8
  %1965 = icmp ult i64 %1964, %1936
  %1966 = icmp ult i64 %1964, %1963
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = trunc i64 %1964 to i32
  %1970 = and i32 %1969, 255
  %1971 = tail call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  store i8 %1974, i8* %21, align 1
  %1975 = xor i64 %1963, %1936
  %1976 = xor i64 %1975, %1964
  %1977 = lshr i64 %1976, 4
  %1978 = trunc i64 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %26, align 1
  %1980 = icmp eq i64 %1964, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %29, align 1
  %1982 = lshr i64 %1964, 63
  %1983 = trunc i64 %1982 to i8
  store i8 %1983, i8* %32, align 1
  %1984 = lshr i64 %1962, 61
  %1985 = and i64 %1984, 1
  %1986 = xor i64 %1982, %1951
  %1987 = xor i64 %1982, %1985
  %1988 = add nuw nsw i64 %1986, %1987
  %1989 = icmp eq i64 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %38, align 1
  store i64 %1964, i64* %RDI.i1449, align 8
  %1991 = add i64 %1918, 1179
  %1992 = add i64 %1918, 47
  %1993 = load i64, i64* %6, align 8
  %1994 = add i64 %1993, -8
  %1995 = inttoptr i64 %1994 to i64*
  store i64 %1992, i64* %1995, align 8
  store i64 %1994, i64* %6, align 8
  store i64 %1991, i64* %3, align 8
  %call2_421f0f = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1991, %struct.Memory* %MEMORY.17)
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -44
  %1998 = load i64, i64* %3, align 8
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1997 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = add i32 %2001, 1
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RAX.i1462, align 8
  %2004 = icmp eq i32 %2001, -1
  %2005 = icmp eq i32 %2002, 0
  %2006 = or i1 %2004, %2005
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %14, align 1
  %2008 = and i32 %2002, 255
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %21, align 1
  %2013 = xor i32 %2002, %2001
  %2014 = lshr i32 %2013, 4
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  store i8 %2016, i8* %26, align 1
  %2017 = zext i1 %2005 to i8
  store i8 %2017, i8* %29, align 1
  %2018 = lshr i32 %2002, 31
  %2019 = trunc i32 %2018 to i8
  store i8 %2019, i8* %32, align 1
  %2020 = lshr i32 %2001, 31
  %2021 = xor i32 %2018, %2020
  %2022 = add nuw nsw i32 %2021, %2018
  %2023 = icmp eq i32 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %38, align 1
  %2025 = add i64 %1998, 9
  store i64 %2025, i64* %3, align 8
  store i32 %2002, i32* %2000, align 4
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, -72
  store i64 %2027, i64* %3, align 8
  br label %block_.L_421ed5

block_.L_421f27.loopexit:                         ; preds = %block_.L_421ed5
  br label %block_.L_421f27

block_.L_421f27:                                  ; preds = %block_.L_421f27.loopexit, %block_.L_421e5c
  %2028 = phi i64 [ %1744, %block_.L_421e5c ], [ %1919, %block_.L_421f27.loopexit ]
  %2029 = phi i64 [ %1725, %block_.L_421e5c ], [ %1885, %block_.L_421f27.loopexit ]
  %2030 = add i64 %2029, -20
  %2031 = add i64 %2028, 4
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = add i32 %2033, -1
  %2035 = icmp eq i32 %2033, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1
  %2037 = and i32 %2034, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1
  %2042 = xor i32 %2034, %2033
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %26, align 1
  %2046 = icmp eq i32 %2034, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %29, align 1
  %2048 = lshr i32 %2034, 31
  %2049 = trunc i32 %2048 to i8
  store i8 %2049, i8* %32, align 1
  %2050 = lshr i32 %2033, 31
  %2051 = xor i32 %2048, %2050
  %2052 = add nuw nsw i32 %2051, %2050
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %38, align 1
  %.v421 = select i1 %2046, i64 10, i64 50
  %2055 = add i64 %2028, %.v421
  store i64 %2055, i64* %3, align 8
  br i1 %2046, label %block_421f31, label %block_.L_421f59

block_421f31:                                     ; preds = %block_.L_421f27
  store i64 1, i64* %RDX.i1431, align 8
  %2056 = add i64 %2029, -16
  %2057 = add i64 %2055, 9
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  store i64 %2059, i64* %RDI.i1449, align 8
  %2060 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2061 = add i32 %2060, 3
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RAX.i1462, align 8
  %2063 = icmp eq i32 %2061, 0
  %2064 = zext i1 %2063 to i8
  %2065 = lshr i32 %2061, 31
  %2066 = trunc i32 %2065 to i8
  %2067 = sext i32 %2061 to i64
  %2068 = shl nsw i64 %2067, 2
  store i64 %2068, i64* %RCX.i1460, align 8
  store i8 %2066, i8* %14, align 1
  %2069 = trunc i64 %2068 to i32
  %2070 = and i32 %2069, 252
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  store i8 %2074, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2064, i8* %29, align 1
  %2075 = lshr i64 %2067, 61
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %2068, i64* %RSI.i1434, align 8
  %2078 = add i64 %2055, -133425
  %2079 = add i64 %2055, 34
  %2080 = load i64, i64* %6, align 8
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %6, align 8
  store i64 %2078, i64* %3, align 8
  %call2_421f4e = tail call %struct.Memory* @sub_401600.fseek_plt(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %MEMORY.17)
  %2083 = load i64, i64* %RBP.i, align 8
  %2084 = add i64 %2083, -180
  %2085 = load i32, i32* %EAX.i1459, align 4
  %2086 = load i64, i64* %3, align 8
  %2087 = add i64 %2086, 6
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2084 to i32*
  store i32 %2085, i32* %2088, align 4
  %.pre389 = load i64, i64* %3, align 8
  %.pre390 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421f59

block_.L_421f59:                                  ; preds = %block_.L_421f27, %block_421f31
  %2089 = phi i64 [ %2029, %block_.L_421f27 ], [ %.pre390, %block_421f31 ]
  %2090 = phi i64 [ %2055, %block_.L_421f27 ], [ %.pre389, %block_421f31 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.17, %block_.L_421f27 ], [ %call2_421f4e, %block_421f31 ]
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2091 = add i64 %2089, -32
  %2092 = add i64 %2090, 18
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i64*
  %2094 = load i64, i64* %2093, align 8
  store i64 %2094, i64* %RCX.i1460, align 8
  %2095 = add i64 %2094, 24
  %2096 = add i64 %2090, 22
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i64*
  %2098 = load i64, i64* %2097, align 8
  store i64 %2098, i64* %RCX.i1460, align 8
  %2099 = add i64 %2089, -40
  %2100 = add i64 %2090, 26
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = mul nsw i64 %2103, 92
  store i64 %2104, i64* %RDI.i1449, align 8
  %2105 = lshr i64 %2104, 63
  %2106 = add i64 %2104, %2098
  store i64 %2106, i64* %RCX.i1460, align 8
  %2107 = icmp ult i64 %2106, %2098
  %2108 = icmp ult i64 %2106, %2104
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %14, align 1
  %2111 = trunc i64 %2106 to i32
  %2112 = and i32 %2111, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i64 %2104, %2098
  %2118 = xor i64 %2117, %2106
  %2119 = lshr i64 %2118, 4
  %2120 = trunc i64 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %26, align 1
  %2122 = icmp eq i64 %2106, 0
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %29, align 1
  %2124 = lshr i64 %2106, 63
  %2125 = trunc i64 %2124 to i8
  store i8 %2125, i8* %32, align 1
  %2126 = lshr i64 %2098, 63
  %2127 = xor i64 %2124, %2126
  %2128 = xor i64 %2124, %2105
  %2129 = add nuw nsw i64 %2127, %2128
  %2130 = icmp eq i64 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1
  %2132 = add i64 %2089, -16
  %2133 = add i64 %2090, 37
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  %2136 = load i64, i64* %RBP.i, align 8
  %2137 = add i64 %2136, -192
  %2138 = add i64 %2090, 44
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i64*
  store i64 %2135, i64* %2139, align 8
  %2140 = load i64, i64* %RCX.i1460, align 8
  %2141 = load i64, i64* %3, align 8
  store i64 %2140, i64* %RDI.i1449, align 8
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -192
  %2144 = add i64 %2141, 10
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i64*
  %2146 = load i64, i64* %2145, align 8
  store i64 %2146, i64* %RCX.i1460, align 8
  %2147 = add i64 %2141, -134005
  %2148 = add i64 %2141, 15
  %2149 = load i64, i64* %6, align 8
  %2150 = add i64 %2149, -8
  %2151 = inttoptr i64 %2150 to i64*
  store i64 %2148, i64* %2151, align 8
  store i64 %2150, i64* %6, align 8
  store i64 %2147, i64* %3, align 8
  %call2_421f8f = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2147, %struct.Memory* %MEMORY.20)
  %2152 = load i64, i64* %RAX.i1462, align 8
  %2153 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2154 = trunc i64 %2152 to i32
  %2155 = and i32 %2154, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2160 = icmp eq i64 %2152, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %29, align 1
  %2162 = lshr i64 %2152, 63
  %2163 = trunc i64 %2162 to i8
  store i8 %2163, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v422 = select i1 %2160, i64 10, i64 23
  %2164 = add i64 %2153, %.v422
  store i64 %2164, i64* %3, align 8
  br i1 %2160, label %block_421f9e, label %block_.L_421fab

block_421f9e:                                     ; preds = %block_.L_421f59
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -8
  %2167 = add i64 %2164, 8
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i64*
  store i64 0, i64* %2168, align 8
  %2169 = load i64, i64* %3, align 8
  %2170 = add i64 %2169, 958
  store i64 %2170, i64* %3, align 8
  br label %block_.L_422364

block_.L_421fab:                                  ; preds = %block_.L_421f59
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -32
  %2173 = add i64 %2164, 18
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i64 %2175, i64* %RCX.i1460, align 8
  %2176 = add i64 %2175, 24
  %2177 = add i64 %2164, 22
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i64*
  %2179 = load i64, i64* %2178, align 8
  store i64 %2179, i64* %RCX.i1460, align 8
  %2180 = add i64 %2171, -40
  %2181 = add i64 %2164, 26
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = sext i32 %2183 to i64
  %2185 = mul nsw i64 %2184, 92
  store i64 %2185, i64* %RDI.i1449, align 8
  %2186 = add i64 %2185, %2179
  %2187 = lshr i64 %2186, 63
  %2188 = add i64 %2186, 8
  store i64 %2188, i64* %RCX.i1460, align 8
  %2189 = icmp ugt i64 %2186, -9
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %14, align 1
  %2191 = trunc i64 %2188 to i32
  %2192 = and i32 %2191, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  %2197 = xor i64 %2188, %2186
  %2198 = lshr i64 %2197, 4
  %2199 = trunc i64 %2198 to i8
  %2200 = and i8 %2199, 1
  store i8 %2200, i8* %26, align 1
  %2201 = icmp eq i64 %2188, 0
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %29, align 1
  %2203 = lshr i64 %2188, 63
  %2204 = trunc i64 %2203 to i8
  store i8 %2204, i8* %32, align 1
  %2205 = xor i64 %2203, %2187
  %2206 = add nuw nsw i64 %2205, %2203
  %2207 = icmp eq i64 %2206, 2
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %38, align 1
  %2209 = load i64, i64* %RBP.i, align 8
  %2210 = add i64 %2209, -16
  %2211 = add i64 %2164, 41
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i64*
  %2213 = load i64, i64* %2212, align 8
  %2214 = add i64 %2209, -200
  %2215 = add i64 %2164, 48
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i64*
  store i64 %2213, i64* %2216, align 8
  %2217 = load i64, i64* %RCX.i1460, align 8
  %2218 = load i64, i64* %3, align 8
  store i64 %2217, i64* %RDI.i1449, align 8
  %2219 = load i64, i64* %RBP.i, align 8
  %2220 = add i64 %2219, -200
  %2221 = add i64 %2218, 10
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RCX.i1460, align 8
  %2224 = add i64 %2218, -134091
  %2225 = add i64 %2218, 15
  %2226 = load i64, i64* %6, align 8
  %2227 = add i64 %2226, -8
  %2228 = inttoptr i64 %2227 to i64*
  store i64 %2225, i64* %2228, align 8
  store i64 %2227, i64* %6, align 8
  store i64 %2224, i64* %3, align 8
  %call2_421fe5 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2224, %struct.Memory* %call2_421f8f)
  %2229 = load i64, i64* %RAX.i1462, align 8
  %2230 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2231 = trunc i64 %2229 to i32
  %2232 = and i32 %2231, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2237 = icmp eq i64 %2229, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %29, align 1
  %2239 = lshr i64 %2229, 63
  %2240 = trunc i64 %2239 to i8
  store i8 %2240, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v423 = select i1 %2237, i64 10, i64 23
  %2241 = add i64 %2230, %.v423
  store i64 %2241, i64* %3, align 8
  br i1 %2237, label %block_421ff4, label %block_.L_422001

block_421ff4:                                     ; preds = %block_.L_421fab
  %2242 = load i64, i64* %RBP.i, align 8
  %2243 = add i64 %2242, -8
  %2244 = add i64 %2241, 8
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i64*
  store i64 0, i64* %2245, align 8
  %2246 = load i64, i64* %3, align 8
  %2247 = add i64 %2246, 872
  store i64 %2247, i64* %3, align 8
  br label %block_.L_422364

block_.L_422001:                                  ; preds = %block_.L_421fab
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2248 = load i64, i64* %RBP.i, align 8
  %2249 = add i64 %2248, -32
  %2250 = add i64 %2241, 18
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i64*
  %2252 = load i64, i64* %2251, align 8
  store i64 %2252, i64* %RCX.i1460, align 8
  %2253 = add i64 %2252, 24
  %2254 = add i64 %2241, 22
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i64*
  %2256 = load i64, i64* %2255, align 8
  store i64 %2256, i64* %RCX.i1460, align 8
  %2257 = add i64 %2248, -40
  %2258 = add i64 %2241, 26
  store i64 %2258, i64* %3, align 8
  %2259 = inttoptr i64 %2257 to i32*
  %2260 = load i32, i32* %2259, align 4
  %2261 = sext i32 %2260 to i64
  %2262 = mul nsw i64 %2261, 92
  store i64 %2262, i64* %RDI.i1449, align 8
  %2263 = add i64 %2262, %2256
  %2264 = lshr i64 %2263, 63
  %2265 = add i64 %2263, 4
  store i64 %2265, i64* %RCX.i1460, align 8
  %2266 = icmp ugt i64 %2263, -5
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %14, align 1
  %2268 = trunc i64 %2265 to i32
  %2269 = and i32 %2268, 255
  %2270 = tail call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  store i8 %2273, i8* %21, align 1
  %2274 = xor i64 %2265, %2263
  %2275 = lshr i64 %2274, 4
  %2276 = trunc i64 %2275 to i8
  %2277 = and i8 %2276, 1
  store i8 %2277, i8* %26, align 1
  %2278 = icmp eq i64 %2265, 0
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %29, align 1
  %2280 = lshr i64 %2265, 63
  %2281 = trunc i64 %2280 to i8
  store i8 %2281, i8* %32, align 1
  %2282 = xor i64 %2280, %2264
  %2283 = add nuw nsw i64 %2282, %2280
  %2284 = icmp eq i64 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %38, align 1
  %2286 = load i64, i64* %RBP.i, align 8
  %2287 = add i64 %2286, -16
  %2288 = add i64 %2241, 41
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i64*
  %2290 = load i64, i64* %2289, align 8
  %2291 = add i64 %2286, -208
  %2292 = add i64 %2241, 48
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i64*
  store i64 %2290, i64* %2293, align 8
  %2294 = load i64, i64* %RCX.i1460, align 8
  %2295 = load i64, i64* %3, align 8
  store i64 %2294, i64* %RDI.i1449, align 8
  %2296 = load i64, i64* %RBP.i, align 8
  %2297 = add i64 %2296, -208
  %2298 = add i64 %2295, 10
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i64*
  %2300 = load i64, i64* %2299, align 8
  store i64 %2300, i64* %RCX.i1460, align 8
  %2301 = add i64 %2295, -134177
  %2302 = add i64 %2295, 15
  %2303 = load i64, i64* %6, align 8
  %2304 = add i64 %2303, -8
  %2305 = inttoptr i64 %2304 to i64*
  store i64 %2302, i64* %2305, align 8
  store i64 %2304, i64* %6, align 8
  store i64 %2301, i64* %3, align 8
  %call2_42203b = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2301, %struct.Memory* %call2_421fe5)
  %2306 = load i64, i64* %RAX.i1462, align 8
  %2307 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2308 = trunc i64 %2306 to i32
  %2309 = and i32 %2308, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2314 = icmp eq i64 %2306, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %29, align 1
  %2316 = lshr i64 %2306, 63
  %2317 = trunc i64 %2316 to i8
  store i8 %2317, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v424 = select i1 %2314, i64 10, i64 23
  %2318 = add i64 %2307, %.v424
  store i64 %2318, i64* %3, align 8
  %2319 = load i64, i64* %RBP.i, align 8
  br i1 %2314, label %block_42204a, label %block_.L_422057

block_42204a:                                     ; preds = %block_.L_422001
  %2320 = add i64 %2319, -8
  %2321 = add i64 %2318, 8
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i64*
  store i64 0, i64* %2322, align 8
  %2323 = load i64, i64* %3, align 8
  %2324 = add i64 %2323, 786
  store i64 %2324, i64* %3, align 8
  br label %block_.L_422364

block_.L_422057:                                  ; preds = %block_.L_422001
  %2325 = add i64 %2319, -24
  %2326 = add i64 %2318, 4
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  store i8 0, i8* %14, align 1
  %2329 = and i32 %2328, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2334 = icmp eq i32 %2328, 0
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %29, align 1
  %2336 = lshr i32 %2328, 31
  %2337 = trunc i32 %2336 to i8
  store i8 %2337, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v425 = select i1 %2334, i64 114, i64 10
  %2338 = add i64 %2318, %.v425
  store i64 %2338, i64* %3, align 8
  br i1 %2334, label %block_.L_4220c9, label %block_422061

block_422061:                                     ; preds = %block_.L_422057
  store i64 4, i64* %RSI.i1434, align 8
  %2339 = add i64 %2319, -32
  %2340 = add i64 %2338, 9
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i64*
  %2342 = load i64, i64* %2341, align 8
  store i64 %2342, i64* %RAX.i1462, align 8
  %2343 = add i64 %2342, 24
  %2344 = add i64 %2338, 13
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i64*
  %2346 = load i64, i64* %2345, align 8
  store i64 %2346, i64* %RAX.i1462, align 8
  %2347 = add i64 %2319, -40
  %2348 = add i64 %2338, 17
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = sext i32 %2350 to i64
  %2352 = mul nsw i64 %2351, 92
  store i64 %2352, i64* %RCX.i1460, align 8
  %2353 = lshr i64 %2352, 63
  %2354 = add i64 %2352, %2346
  store i64 %2354, i64* %RAX.i1462, align 8
  %2355 = icmp ult i64 %2354, %2346
  %2356 = icmp ult i64 %2354, %2352
  %2357 = or i1 %2355, %2356
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %14, align 1
  %2359 = trunc i64 %2354 to i32
  %2360 = and i32 %2359, 255
  %2361 = tail call i32 @llvm.ctpop.i32(i32 %2360)
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  store i8 %2364, i8* %21, align 1
  %2365 = xor i64 %2352, %2346
  %2366 = xor i64 %2365, %2354
  %2367 = lshr i64 %2366, 4
  %2368 = trunc i64 %2367 to i8
  %2369 = and i8 %2368, 1
  store i8 %2369, i8* %26, align 1
  %2370 = icmp eq i64 %2354, 0
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %29, align 1
  %2372 = lshr i64 %2354, 63
  %2373 = trunc i64 %2372 to i8
  store i8 %2373, i8* %32, align 1
  %2374 = lshr i64 %2346, 63
  %2375 = xor i64 %2372, %2374
  %2376 = xor i64 %2372, %2353
  %2377 = add nuw nsw i64 %2375, %2376
  %2378 = icmp eq i64 %2377, 2
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %38, align 1
  store i64 %2354, i64* %RDI.i1449, align 8
  %2380 = add i64 %2338, 799
  %2381 = add i64 %2338, 32
  %2382 = load i64, i64* %6, align 8
  %2383 = add i64 %2382, -8
  %2384 = inttoptr i64 %2383 to i64*
  store i64 %2381, i64* %2384, align 8
  store i64 %2383, i64* %6, align 8
  store i64 %2380, i64* %3, align 8
  %call2_42207c = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2380, %struct.Memory* %call2_42203b)
  %2385 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %2386 = load i64, i64* %RBP.i, align 8
  %2387 = add i64 %2386, -32
  %2388 = add i64 %2385, 9
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i64*
  %2390 = load i64, i64* %2389, align 8
  store i64 %2390, i64* %RAX.i1462, align 8
  %2391 = add i64 %2390, 24
  %2392 = add i64 %2385, 13
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i64*
  %2394 = load i64, i64* %2393, align 8
  store i64 %2394, i64* %RAX.i1462, align 8
  %2395 = add i64 %2386, -40
  %2396 = add i64 %2385, 17
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = sext i32 %2398 to i64
  %2400 = mul nsw i64 %2399, 92
  store i64 %2400, i64* %RCX.i1460, align 8
  %2401 = add i64 %2400, %2394
  %2402 = lshr i64 %2401, 63
  %2403 = add i64 %2401, 8
  store i64 %2403, i64* %RAX.i1462, align 8
  %2404 = icmp ugt i64 %2401, -9
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %14, align 1
  %2406 = trunc i64 %2403 to i32
  %2407 = and i32 %2406, 255
  %2408 = tail call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  store i8 %2411, i8* %21, align 1
  %2412 = xor i64 %2403, %2401
  %2413 = lshr i64 %2412, 4
  %2414 = trunc i64 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %26, align 1
  %2416 = icmp eq i64 %2403, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %29, align 1
  %2418 = lshr i64 %2403, 63
  %2419 = trunc i64 %2418 to i8
  store i8 %2419, i8* %32, align 1
  %2420 = xor i64 %2418, %2402
  %2421 = add nuw nsw i64 %2420, %2418
  %2422 = icmp eq i64 %2421, 2
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %38, align 1
  store i64 %2403, i64* %RDI.i1449, align 8
  %2424 = add i64 %2385, 767
  %2425 = add i64 %2385, 36
  %2426 = load i64, i64* %6, align 8
  %2427 = add i64 %2426, -8
  %2428 = inttoptr i64 %2427 to i64*
  store i64 %2425, i64* %2428, align 8
  store i64 %2427, i64* %6, align 8
  store i64 %2424, i64* %3, align 8
  %call2_4220a0 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2424, %struct.Memory* %call2_42207c)
  %2429 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %2430 = load i64, i64* %RBP.i, align 8
  %2431 = add i64 %2430, -32
  %2432 = add i64 %2429, 9
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i64*
  %2434 = load i64, i64* %2433, align 8
  store i64 %2434, i64* %RAX.i1462, align 8
  %2435 = add i64 %2434, 24
  %2436 = add i64 %2429, 13
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i64*
  %2438 = load i64, i64* %2437, align 8
  store i64 %2438, i64* %RAX.i1462, align 8
  %2439 = add i64 %2430, -40
  %2440 = add i64 %2429, 17
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = sext i32 %2442 to i64
  %2444 = mul nsw i64 %2443, 92
  store i64 %2444, i64* %RCX.i1460, align 8
  %2445 = add i64 %2444, %2438
  %2446 = lshr i64 %2445, 63
  %2447 = add i64 %2445, 4
  store i64 %2447, i64* %RAX.i1462, align 8
  %2448 = icmp ugt i64 %2445, -5
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %14, align 1
  %2450 = trunc i64 %2447 to i32
  %2451 = and i32 %2450, 255
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  store i8 %2455, i8* %21, align 1
  %2456 = xor i64 %2447, %2445
  %2457 = lshr i64 %2456, 4
  %2458 = trunc i64 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %26, align 1
  %2460 = icmp eq i64 %2447, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %29, align 1
  %2462 = lshr i64 %2447, 63
  %2463 = trunc i64 %2462 to i8
  store i8 %2463, i8* %32, align 1
  %2464 = xor i64 %2462, %2446
  %2465 = add nuw nsw i64 %2464, %2462
  %2466 = icmp eq i64 %2465, 2
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %38, align 1
  store i64 %2447, i64* %RDI.i1449, align 8
  %2468 = add i64 %2429, 731
  %2469 = add i64 %2429, 36
  %2470 = load i64, i64* %6, align 8
  %2471 = add i64 %2470, -8
  %2472 = inttoptr i64 %2471 to i64*
  store i64 %2469, i64* %2472, align 8
  store i64 %2471, i64* %6, align 8
  store i64 %2468, i64* %3, align 8
  %call2_4220c4 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2468, %struct.Memory* %call2_4220a0)
  %.pre391 = load i64, i64* %RBP.i, align 8
  %.pre392 = load i64, i64* %3, align 8
  br label %block_.L_4220c9

block_.L_4220c9:                                  ; preds = %block_422061, %block_.L_422057
  %2473 = phi i64 [ %2338, %block_.L_422057 ], [ %.pre392, %block_422061 ]
  %2474 = phi i64 [ %2319, %block_.L_422057 ], [ %.pre391, %block_422061 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_42203b, %block_.L_422057 ], [ %call2_4220c4, %block_422061 ]
  %2475 = add i64 %2474, -20
  %2476 = add i64 %2473, 4
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = add i32 %2478, -1
  %2480 = icmp eq i32 %2478, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %14, align 1
  %2482 = and i32 %2479, 255
  %2483 = tail call i32 @llvm.ctpop.i32(i32 %2482)
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  %2486 = xor i8 %2485, 1
  store i8 %2486, i8* %21, align 1
  %2487 = xor i32 %2479, %2478
  %2488 = lshr i32 %2487, 4
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  store i8 %2490, i8* %26, align 1
  %2491 = icmp eq i32 %2479, 0
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %29, align 1
  %2493 = lshr i32 %2479, 31
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %32, align 1
  %2495 = lshr i32 %2478, 31
  %2496 = xor i32 %2493, %2495
  %2497 = add nuw nsw i32 %2496, %2495
  %2498 = icmp eq i32 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %38, align 1
  %.v426 = select i1 %2491, i64 10, i64 37
  %2500 = add i64 %2473, %.v426
  store i64 %2500, i64* %3, align 8
  br i1 %2491, label %block_4220d3, label %block_.L_4220ee

block_4220d3:                                     ; preds = %block_.L_4220c9
  store i64 12, i64* %RAX.i1462, align 8
  store i64 12, i64* %RSI.i1434, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2501 = add i64 %2474, -16
  %2502 = add i64 %2500, 16
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i64*
  %2504 = load i64, i64* %2503, align 8
  store i64 %2504, i64* %RDI.i1449, align 8
  %2505 = add i64 %2500, -133843
  %2506 = add i64 %2500, 21
  %2507 = load i64, i64* %6, align 8
  %2508 = add i64 %2507, -8
  %2509 = inttoptr i64 %2508 to i64*
  store i64 %2506, i64* %2509, align 8
  store i64 %2508, i64* %6, align 8
  store i64 %2505, i64* %3, align 8
  %call2_4220e3 = tail call %struct.Memory* @sub_401600.fseek_plt(%struct.State* nonnull %0, i64 %2505, %struct.Memory* %MEMORY.21)
  %2510 = load i64, i64* %RBP.i, align 8
  %2511 = add i64 %2510, -212
  %2512 = load i32, i32* %EAX.i1459, align 4
  %2513 = load i64, i64* %3, align 8
  %2514 = add i64 %2513, 6
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2511 to i32*
  store i32 %2512, i32* %2515, align 4
  %.pre393 = load i64, i64* %3, align 8
  %.pre394 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4220ee

block_.L_4220ee:                                  ; preds = %block_.L_4220c9, %block_4220d3
  %2516 = phi i64 [ %2474, %block_.L_4220c9 ], [ %.pre394, %block_4220d3 ]
  %2517 = phi i64 [ %2500, %block_.L_4220c9 ], [ %.pre393, %block_4220d3 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4220c9 ], [ %call2_4220e3, %block_4220d3 ]
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2518 = add i64 %2516, -32
  %2519 = add i64 %2517, 18
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i64*
  %2521 = load i64, i64* %2520, align 8
  store i64 %2521, i64* %RCX.i1460, align 8
  %2522 = add i64 %2521, 8
  %2523 = add i64 %2517, 22
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i64*
  %2525 = load i64, i64* %2524, align 8
  store i64 %2525, i64* %RCX.i1460, align 8
  %2526 = add i64 %2516, -40
  %2527 = add i64 %2517, 26
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i32*
  %2529 = load i32, i32* %2528, align 4
  %2530 = sext i32 %2529 to i64
  %2531 = mul nsw i64 %2530, 92
  store i64 %2531, i64* %RDI.i1449, align 8
  %2532 = lshr i64 %2531, 63
  %2533 = add i64 %2531, %2525
  store i64 %2533, i64* %RCX.i1460, align 8
  %2534 = icmp ult i64 %2533, %2525
  %2535 = icmp ult i64 %2533, %2531
  %2536 = or i1 %2534, %2535
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %14, align 1
  %2538 = trunc i64 %2533 to i32
  %2539 = and i32 %2538, 255
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  store i8 %2543, i8* %21, align 1
  %2544 = xor i64 %2531, %2525
  %2545 = xor i64 %2544, %2533
  %2546 = lshr i64 %2545, 4
  %2547 = trunc i64 %2546 to i8
  %2548 = and i8 %2547, 1
  store i8 %2548, i8* %26, align 1
  %2549 = icmp eq i64 %2533, 0
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %29, align 1
  %2551 = lshr i64 %2533, 63
  %2552 = trunc i64 %2551 to i8
  store i8 %2552, i8* %32, align 1
  %2553 = lshr i64 %2525, 63
  %2554 = xor i64 %2551, %2553
  %2555 = xor i64 %2551, %2532
  %2556 = add nuw nsw i64 %2554, %2555
  %2557 = icmp eq i64 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %38, align 1
  %2559 = add i64 %2516, -16
  %2560 = add i64 %2517, 37
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -224
  %2565 = add i64 %2517, 44
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i64*
  store i64 %2562, i64* %2566, align 8
  %2567 = load i64, i64* %RCX.i1460, align 8
  %2568 = load i64, i64* %3, align 8
  store i64 %2567, i64* %RDI.i1449, align 8
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -224
  %2571 = add i64 %2568, 10
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i64*
  %2573 = load i64, i64* %2572, align 8
  store i64 %2573, i64* %RCX.i1460, align 8
  %2574 = add i64 %2568, -134410
  %2575 = add i64 %2568, 15
  %2576 = load i64, i64* %6, align 8
  %2577 = add i64 %2576, -8
  %2578 = inttoptr i64 %2577 to i64*
  store i64 %2575, i64* %2578, align 8
  store i64 %2577, i64* %6, align 8
  store i64 %2574, i64* %3, align 8
  %call2_422124 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2574, %struct.Memory* %MEMORY.22)
  %2579 = load i64, i64* %RAX.i1462, align 8
  %2580 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2581 = trunc i64 %2579 to i32
  %2582 = and i32 %2581, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2587 = icmp eq i64 %2579, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %29, align 1
  %2589 = lshr i64 %2579, 63
  %2590 = trunc i64 %2589 to i8
  store i8 %2590, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v427 = select i1 %2587, i64 10, i64 23
  %2591 = add i64 %2580, %.v427
  store i64 %2591, i64* %3, align 8
  br i1 %2587, label %block_422133, label %block_.L_422140

block_422133:                                     ; preds = %block_.L_4220ee
  %2592 = load i64, i64* %RBP.i, align 8
  %2593 = add i64 %2592, -8
  %2594 = add i64 %2591, 8
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i64*
  store i64 0, i64* %2595, align 8
  %2596 = load i64, i64* %3, align 8
  %2597 = add i64 %2596, 553
  store i64 %2597, i64* %3, align 8
  br label %block_.L_422364

block_.L_422140:                                  ; preds = %block_.L_4220ee
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2598 = load i64, i64* %RBP.i, align 8
  %2599 = add i64 %2598, -32
  %2600 = add i64 %2591, 18
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i64*
  %2602 = load i64, i64* %2601, align 8
  store i64 %2602, i64* %RCX.i1460, align 8
  %2603 = add i64 %2602, 8
  %2604 = add i64 %2591, 22
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i64*
  %2606 = load i64, i64* %2605, align 8
  store i64 %2606, i64* %RCX.i1460, align 8
  %2607 = add i64 %2598, -40
  %2608 = add i64 %2591, 26
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = sext i32 %2610 to i64
  %2612 = mul nsw i64 %2611, 92
  store i64 %2612, i64* %RDI.i1449, align 8
  %2613 = add i64 %2612, %2606
  %2614 = lshr i64 %2613, 63
  %2615 = add i64 %2613, 8
  store i64 %2615, i64* %RCX.i1460, align 8
  %2616 = icmp ugt i64 %2613, -9
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %14, align 1
  %2618 = trunc i64 %2615 to i32
  %2619 = and i32 %2618, 255
  %2620 = tail call i32 @llvm.ctpop.i32(i32 %2619)
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  %2623 = xor i8 %2622, 1
  store i8 %2623, i8* %21, align 1
  %2624 = xor i64 %2615, %2613
  %2625 = lshr i64 %2624, 4
  %2626 = trunc i64 %2625 to i8
  %2627 = and i8 %2626, 1
  store i8 %2627, i8* %26, align 1
  %2628 = icmp eq i64 %2615, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %29, align 1
  %2630 = lshr i64 %2615, 63
  %2631 = trunc i64 %2630 to i8
  store i8 %2631, i8* %32, align 1
  %2632 = xor i64 %2630, %2614
  %2633 = add nuw nsw i64 %2632, %2630
  %2634 = icmp eq i64 %2633, 2
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %38, align 1
  %2636 = load i64, i64* %RBP.i, align 8
  %2637 = add i64 %2636, -16
  %2638 = add i64 %2591, 41
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  %2641 = add i64 %2636, -232
  %2642 = add i64 %2591, 48
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i64*
  store i64 %2640, i64* %2643, align 8
  %2644 = load i64, i64* %RCX.i1460, align 8
  %2645 = load i64, i64* %3, align 8
  store i64 %2644, i64* %RDI.i1449, align 8
  %2646 = load i64, i64* %RBP.i, align 8
  %2647 = add i64 %2646, -232
  %2648 = add i64 %2645, 10
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RCX.i1460, align 8
  %2651 = add i64 %2645, -134496
  %2652 = add i64 %2645, 15
  %2653 = load i64, i64* %6, align 8
  %2654 = add i64 %2653, -8
  %2655 = inttoptr i64 %2654 to i64*
  store i64 %2652, i64* %2655, align 8
  store i64 %2654, i64* %6, align 8
  store i64 %2651, i64* %3, align 8
  %call2_42217a = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2651, %struct.Memory* %call2_422124)
  %2656 = load i64, i64* %RAX.i1462, align 8
  %2657 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2658 = trunc i64 %2656 to i32
  %2659 = and i32 %2658, 255
  %2660 = tail call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  store i8 %2663, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2664 = icmp eq i64 %2656, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %29, align 1
  %2666 = lshr i64 %2656, 63
  %2667 = trunc i64 %2666 to i8
  store i8 %2667, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v428 = select i1 %2664, i64 10, i64 23
  %2668 = add i64 %2657, %.v428
  store i64 %2668, i64* %3, align 8
  br i1 %2664, label %block_422189, label %block_.L_422196

block_422189:                                     ; preds = %block_.L_422140
  %2669 = load i64, i64* %RBP.i, align 8
  %2670 = add i64 %2669, -8
  %2671 = add i64 %2668, 8
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i64*
  store i64 0, i64* %2672, align 8
  %2673 = load i64, i64* %3, align 8
  %2674 = add i64 %2673, 467
  store i64 %2674, i64* %3, align 8
  br label %block_.L_422364

block_.L_422196:                                  ; preds = %block_.L_422140
  store i64 4, i64* %RSI.i1434, align 8
  store i64 1, i64* %RAX.i1462, align 8
  store i64 1, i64* %RDX.i1431, align 8
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -32
  %2677 = add i64 %2668, 18
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i64*
  %2679 = load i64, i64* %2678, align 8
  store i64 %2679, i64* %RCX.i1460, align 8
  %2680 = add i64 %2679, 8
  %2681 = add i64 %2668, 22
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i64*
  %2683 = load i64, i64* %2682, align 8
  store i64 %2683, i64* %RCX.i1460, align 8
  %2684 = add i64 %2675, -40
  %2685 = add i64 %2668, 26
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = sext i32 %2687 to i64
  %2689 = mul nsw i64 %2688, 92
  store i64 %2689, i64* %RDI.i1449, align 8
  %2690 = add i64 %2689, %2683
  %2691 = lshr i64 %2690, 63
  %2692 = add i64 %2690, 4
  store i64 %2692, i64* %RCX.i1460, align 8
  %2693 = icmp ugt i64 %2690, -5
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %14, align 1
  %2695 = trunc i64 %2692 to i32
  %2696 = and i32 %2695, 255
  %2697 = tail call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  store i8 %2700, i8* %21, align 1
  %2701 = xor i64 %2692, %2690
  %2702 = lshr i64 %2701, 4
  %2703 = trunc i64 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %26, align 1
  %2705 = icmp eq i64 %2692, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %29, align 1
  %2707 = lshr i64 %2692, 63
  %2708 = trunc i64 %2707 to i8
  store i8 %2708, i8* %32, align 1
  %2709 = xor i64 %2707, %2691
  %2710 = add nuw nsw i64 %2709, %2707
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %38, align 1
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -16
  %2715 = add i64 %2668, 41
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i64*
  %2717 = load i64, i64* %2716, align 8
  %2718 = add i64 %2713, -240
  %2719 = add i64 %2668, 48
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i64*
  store i64 %2717, i64* %2720, align 8
  %2721 = load i64, i64* %RCX.i1460, align 8
  %2722 = load i64, i64* %3, align 8
  store i64 %2721, i64* %RDI.i1449, align 8
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -240
  %2725 = add i64 %2722, 10
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RCX.i1460, align 8
  %2728 = add i64 %2722, -134582
  %2729 = add i64 %2722, 15
  %2730 = load i64, i64* %6, align 8
  %2731 = add i64 %2730, -8
  %2732 = inttoptr i64 %2731 to i64*
  store i64 %2729, i64* %2732, align 8
  store i64 %2731, i64* %6, align 8
  store i64 %2728, i64* %3, align 8
  %call2_4221d0 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2728, %struct.Memory* %call2_42217a)
  %2733 = load i64, i64* %RAX.i1462, align 8
  %2734 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2735 = trunc i64 %2733 to i32
  %2736 = and i32 %2735, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2741 = icmp eq i64 %2733, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %29, align 1
  %2743 = lshr i64 %2733, 63
  %2744 = trunc i64 %2743 to i8
  store i8 %2744, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v429 = select i1 %2741, i64 10, i64 23
  %2745 = add i64 %2734, %.v429
  store i64 %2745, i64* %3, align 8
  br i1 %2741, label %block_4221df, label %block_.L_4221ec

block_4221df:                                     ; preds = %block_.L_422196
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -8
  %2748 = add i64 %2745, 8
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i64*
  store i64 0, i64* %2749, align 8
  %2750 = load i64, i64* %3, align 8
  %2751 = add i64 %2750, 381
  store i64 %2751, i64* %3, align 8
  br label %block_.L_422364

block_.L_4221ec:                                  ; preds = %block_.L_422196
  store i64 4, i64* %RAX.i1462, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -32
  %2754 = add i64 %2745, 11
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RCX.i1460, align 8
  %2757 = add i64 %2756, 8
  %2758 = add i64 %2745, 15
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i64*
  %2760 = load i64, i64* %2759, align 8
  store i64 %2760, i64* %RCX.i1460, align 8
  %2761 = add i64 %2752, -40
  %2762 = add i64 %2745, 19
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = sext i32 %2764 to i64
  %2766 = mul nsw i64 %2765, 92
  %2767 = add i64 %2766, %2760
  %2768 = lshr i64 %2767, 63
  %2769 = add i64 %2767, 12
  store i64 %2769, i64* %RCX.i1460, align 8
  %2770 = icmp ugt i64 %2767, -13
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %14, align 1
  %2772 = trunc i64 %2769 to i32
  %2773 = and i32 %2772, 255
  %2774 = tail call i32 @llvm.ctpop.i32(i32 %2773)
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = xor i8 %2776, 1
  store i8 %2777, i8* %21, align 1
  %2778 = xor i64 %2769, %2767
  %2779 = lshr i64 %2778, 4
  %2780 = trunc i64 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %26, align 1
  %2782 = icmp eq i64 %2769, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %29, align 1
  %2784 = lshr i64 %2769, 63
  %2785 = trunc i64 %2784 to i8
  store i8 %2785, i8* %32, align 1
  %2786 = xor i64 %2784, %2768
  %2787 = add nuw nsw i64 %2786, %2784
  %2788 = icmp eq i64 %2787, 2
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %38, align 1
  %2790 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2791 = sext i32 %2790 to i64
  store i64 %2791, i64* %RDX.i1431, align 8
  %2792 = load i64, i64* %RBP.i, align 8
  %2793 = add i64 %2792, -16
  %2794 = add i64 %2745, 42
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i64*
  %2796 = load i64, i64* %2795, align 8
  %2797 = add i64 %2792, -248
  %2798 = add i64 %2745, 49
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i64*
  store i64 %2796, i64* %2799, align 8
  %2800 = load i64, i64* %RCX.i1460, align 8
  %2801 = load i64, i64* %3, align 8
  store i64 %2800, i64* %RDI.i1449, align 8
  %2802 = load i64, i64* %RBP.i, align 8
  %2803 = add i64 %2802, -248
  %2804 = add i64 %2801, 10
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i64*
  %2806 = load i64, i64* %2805, align 8
  store i64 %2806, i64* %RCX.i1460, align 8
  %2807 = add i64 %2801, -134669
  %2808 = add i64 %2801, 15
  %2809 = load i64, i64* %6, align 8
  %2810 = add i64 %2809, -8
  %2811 = inttoptr i64 %2810 to i64*
  store i64 %2808, i64* %2811, align 8
  store i64 %2810, i64* %6, align 8
  store i64 %2807, i64* %3, align 8
  %call2_422227 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2807, %struct.Memory* %call2_4221d0)
  %2812 = load i64, i64* %RAX.i1462, align 8
  %2813 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2814 = trunc i64 %2812 to i32
  %2815 = and i32 %2814, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2820 = icmp eq i64 %2812, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %29, align 1
  %2822 = lshr i64 %2812, 63
  %2823 = trunc i64 %2822 to i8
  store i8 %2823, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v430 = select i1 %2820, i64 10, i64 23
  %2824 = add i64 %2813, %.v430
  store i64 %2824, i64* %3, align 8
  %2825 = load i64, i64* %RBP.i, align 8
  br i1 %2820, label %block_422236, label %block_.L_422243

block_422236:                                     ; preds = %block_.L_4221ec
  %2826 = add i64 %2825, -8
  %2827 = add i64 %2824, 8
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i64*
  store i64 0, i64* %2828, align 8
  %2829 = load i64, i64* %3, align 8
  %2830 = add i64 %2829, 294
  store i64 %2830, i64* %3, align 8
  br label %block_.L_422364

block_.L_422243:                                  ; preds = %block_.L_4221ec
  %2831 = add i64 %2825, -24
  %2832 = add i64 %2824, 4
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  store i8 0, i8* %14, align 1
  %2835 = and i32 %2834, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2840 = icmp eq i32 %2834, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %29, align 1
  %2842 = lshr i32 %2834, 31
  %2843 = trunc i32 %2842 to i8
  store i8 %2843, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v431 = select i1 %2840, i64 203, i64 10
  %2844 = add i64 %2824, %.v431
  store i64 %2844, i64* %3, align 8
  br i1 %2840, label %block_.L_42230e, label %block_42224d

block_42224d:                                     ; preds = %block_.L_422243
  store i64 4, i64* %RSI.i1434, align 8
  %2845 = add i64 %2825, -32
  %2846 = add i64 %2844, 9
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i64*
  %2848 = load i64, i64* %2847, align 8
  store i64 %2848, i64* %RAX.i1462, align 8
  %2849 = add i64 %2848, 8
  %2850 = add i64 %2844, 13
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i64*
  %2852 = load i64, i64* %2851, align 8
  store i64 %2852, i64* %RAX.i1462, align 8
  %2853 = add i64 %2825, -40
  %2854 = add i64 %2844, 17
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  %2856 = load i32, i32* %2855, align 4
  %2857 = sext i32 %2856 to i64
  %2858 = mul nsw i64 %2857, 92
  store i64 %2858, i64* %RCX.i1460, align 8
  %2859 = lshr i64 %2858, 63
  %2860 = add i64 %2858, %2852
  store i64 %2860, i64* %RAX.i1462, align 8
  %2861 = icmp ult i64 %2860, %2852
  %2862 = icmp ult i64 %2860, %2858
  %2863 = or i1 %2861, %2862
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %14, align 1
  %2865 = trunc i64 %2860 to i32
  %2866 = and i32 %2865, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i64 %2858, %2852
  %2872 = xor i64 %2871, %2860
  %2873 = lshr i64 %2872, 4
  %2874 = trunc i64 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %26, align 1
  %2876 = icmp eq i64 %2860, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %29, align 1
  %2878 = lshr i64 %2860, 63
  %2879 = trunc i64 %2878 to i8
  store i8 %2879, i8* %32, align 1
  %2880 = lshr i64 %2852, 63
  %2881 = xor i64 %2878, %2880
  %2882 = xor i64 %2878, %2859
  %2883 = add nuw nsw i64 %2881, %2882
  %2884 = icmp eq i64 %2883, 2
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %38, align 1
  store i64 %2860, i64* %RDI.i1449, align 8
  %2886 = add i64 %2844, 307
  %2887 = add i64 %2844, 32
  %2888 = load i64, i64* %6, align 8
  %2889 = add i64 %2888, -8
  %2890 = inttoptr i64 %2889 to i64*
  store i64 %2887, i64* %2890, align 8
  store i64 %2889, i64* %6, align 8
  store i64 %2886, i64* %3, align 8
  %call2_422268 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2886, %struct.Memory* %call2_422227)
  %2891 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %2892 = load i64, i64* %RBP.i, align 8
  %2893 = add i64 %2892, -32
  %2894 = add i64 %2891, 9
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i64*
  %2896 = load i64, i64* %2895, align 8
  store i64 %2896, i64* %RAX.i1462, align 8
  %2897 = add i64 %2896, 8
  %2898 = add i64 %2891, 13
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i64*
  %2900 = load i64, i64* %2899, align 8
  store i64 %2900, i64* %RAX.i1462, align 8
  %2901 = add i64 %2892, -40
  %2902 = add i64 %2891, 17
  store i64 %2902, i64* %3, align 8
  %2903 = inttoptr i64 %2901 to i32*
  %2904 = load i32, i32* %2903, align 4
  %2905 = sext i32 %2904 to i64
  %2906 = mul nsw i64 %2905, 92
  store i64 %2906, i64* %RCX.i1460, align 8
  %2907 = add i64 %2906, %2900
  %2908 = lshr i64 %2907, 63
  %2909 = add i64 %2907, 8
  store i64 %2909, i64* %RAX.i1462, align 8
  %2910 = icmp ugt i64 %2907, -9
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %14, align 1
  %2912 = trunc i64 %2909 to i32
  %2913 = and i32 %2912, 255
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913)
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %21, align 1
  %2918 = xor i64 %2909, %2907
  %2919 = lshr i64 %2918, 4
  %2920 = trunc i64 %2919 to i8
  %2921 = and i8 %2920, 1
  store i8 %2921, i8* %26, align 1
  %2922 = icmp eq i64 %2909, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %29, align 1
  %2924 = lshr i64 %2909, 63
  %2925 = trunc i64 %2924 to i8
  store i8 %2925, i8* %32, align 1
  %2926 = xor i64 %2924, %2908
  %2927 = add nuw nsw i64 %2926, %2924
  %2928 = icmp eq i64 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %38, align 1
  store i64 %2909, i64* %RDI.i1449, align 8
  %2930 = add i64 %2891, 275
  %2931 = add i64 %2891, 36
  %2932 = load i64, i64* %6, align 8
  %2933 = add i64 %2932, -8
  %2934 = inttoptr i64 %2933 to i64*
  store i64 %2931, i64* %2934, align 8
  store i64 %2933, i64* %6, align 8
  store i64 %2930, i64* %3, align 8
  %call2_42228c = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2930, %struct.Memory* %call2_422268)
  %2935 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1434, align 8
  %2936 = load i64, i64* %RBP.i, align 8
  %2937 = add i64 %2936, -32
  %2938 = add i64 %2935, 9
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RAX.i1462, align 8
  %2941 = add i64 %2940, 8
  %2942 = add i64 %2935, 13
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i64 %2944, i64* %RAX.i1462, align 8
  %2945 = add i64 %2936, -40
  %2946 = add i64 %2935, 17
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = sext i32 %2948 to i64
  %2950 = mul nsw i64 %2949, 92
  store i64 %2950, i64* %RCX.i1460, align 8
  %2951 = add i64 %2950, %2944
  %2952 = lshr i64 %2951, 63
  %2953 = add i64 %2951, 4
  store i64 %2953, i64* %RAX.i1462, align 8
  %2954 = icmp ugt i64 %2951, -5
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %14, align 1
  %2956 = trunc i64 %2953 to i32
  %2957 = and i32 %2956, 255
  %2958 = tail call i32 @llvm.ctpop.i32(i32 %2957)
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  %2961 = xor i8 %2960, 1
  store i8 %2961, i8* %21, align 1
  %2962 = xor i64 %2953, %2951
  %2963 = lshr i64 %2962, 4
  %2964 = trunc i64 %2963 to i8
  %2965 = and i8 %2964, 1
  store i8 %2965, i8* %26, align 1
  %2966 = icmp eq i64 %2953, 0
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %29, align 1
  %2968 = lshr i64 %2953, 63
  %2969 = trunc i64 %2968 to i8
  store i8 %2969, i8* %32, align 1
  %2970 = xor i64 %2968, %2952
  %2971 = add nuw nsw i64 %2970, %2968
  %2972 = icmp eq i64 %2971, 2
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %38, align 1
  store i64 %2953, i64* %RDI.i1449, align 8
  %2974 = add i64 %2935, 239
  %2975 = add i64 %2935, 36
  %2976 = load i64, i64* %6, align 8
  %2977 = add i64 %2976, -8
  %2978 = inttoptr i64 %2977 to i64*
  store i64 %2975, i64* %2978, align 8
  store i64 %2977, i64* %6, align 8
  store i64 %2974, i64* %3, align 8
  %call2_4222b0 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2974, %struct.Memory* %call2_42228c)
  %2979 = load i64, i64* %RBP.i, align 8
  %2980 = add i64 %2979, -44
  %2981 = load i64, i64* %3, align 8
  %2982 = add i64 %2981, 7
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2980 to i32*
  store i32 0, i32* %2983, align 4
  %.pre395 = load i64, i64* %3, align 8
  br label %block_.L_4222bc

block_.L_4222bc:                                  ; preds = %block_4222cc, %block_42224d
  %2984 = phi i64 [ %3127, %block_4222cc ], [ %.pre395, %block_42224d ]
  %2985 = load i64, i64* %RBP.i, align 8
  %2986 = add i64 %2985, -44
  %2987 = add i64 %2984, 3
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = zext i32 %2989 to i64
  store i64 %2990, i64* %RAX.i1462, align 8
  %2991 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2992 = sub i32 %2989, %2991
  %2993 = icmp ult i32 %2989, %2991
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %14, align 1
  %2995 = and i32 %2992, 255
  %2996 = tail call i32 @llvm.ctpop.i32(i32 %2995)
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  %2999 = xor i8 %2998, 1
  store i8 %2999, i8* %21, align 1
  %3000 = xor i32 %2991, %2989
  %3001 = xor i32 %3000, %2992
  %3002 = lshr i32 %3001, 4
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  store i8 %3004, i8* %26, align 1
  %3005 = icmp eq i32 %2992, 0
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %29, align 1
  %3007 = lshr i32 %2992, 31
  %3008 = trunc i32 %3007 to i8
  store i8 %3008, i8* %32, align 1
  %3009 = lshr i32 %2989, 31
  %3010 = lshr i32 %2991, 31
  %3011 = xor i32 %3010, %3009
  %3012 = xor i32 %3007, %3009
  %3013 = add nuw nsw i32 %3012, %3011
  %3014 = icmp eq i32 %3013, 2
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %38, align 1
  %3016 = icmp ne i8 %3008, 0
  %3017 = xor i1 %3016, %3014
  %.v432 = select i1 %3017, i64 16, i64 77
  %3018 = add i64 %2984, %.v432
  %3019 = add i64 %3018, 5
  store i64 %3019, i64* %3, align 8
  br i1 %3017, label %block_4222cc, label %block_.L_42230e.loopexit

block_4222cc:                                     ; preds = %block_.L_4222bc
  store i64 4, i64* %RSI.i1434, align 8
  %3020 = add i64 %2985, -32
  %3021 = add i64 %3018, 9
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i64*
  %3023 = load i64, i64* %3022, align 8
  store i64 %3023, i64* %RAX.i1462, align 8
  %3024 = add i64 %3023, 8
  %3025 = add i64 %3018, 13
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3024 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %RAX.i1462, align 8
  %3028 = add i64 %2985, -40
  %3029 = add i64 %3018, 17
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = sext i32 %3031 to i64
  %3033 = mul nsw i64 %3032, 92
  store i64 %3033, i64* %RCX.i1460, align 8
  %3034 = add i64 %3033, %3027
  %3035 = lshr i64 %3034, 63
  %3036 = add i64 %3034, 12
  store i64 %3036, i64* %RAX.i1462, align 8
  %3037 = icmp ugt i64 %3034, -13
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %14, align 1
  %3039 = trunc i64 %3036 to i32
  %3040 = and i32 %3039, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040)
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %21, align 1
  %3045 = xor i64 %3036, %3034
  %3046 = lshr i64 %3045, 4
  %3047 = trunc i64 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %26, align 1
  %3049 = icmp eq i64 %3036, 0
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %29, align 1
  %3051 = lshr i64 %3036, 63
  %3052 = trunc i64 %3051 to i8
  store i8 %3052, i8* %32, align 1
  %3053 = xor i64 %3051, %3035
  %3054 = add nuw nsw i64 %3053, %3051
  %3055 = icmp eq i64 %3054, 2
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %38, align 1
  %3057 = load i64, i64* %RBP.i, align 8
  %3058 = add i64 %3057, -44
  %3059 = add i64 %3018, 32
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3058 to i32*
  %3061 = load i32, i32* %3060, align 4
  %3062 = sext i32 %3061 to i64
  %3063 = shl nsw i64 %3062, 2
  store i64 %3063, i64* %RCX.i1460, align 8
  %3064 = add i64 %3063, %3036
  store i64 %3064, i64* %RAX.i1462, align 8
  %3065 = icmp ult i64 %3064, %3036
  %3066 = icmp ult i64 %3064, %3063
  %3067 = or i1 %3065, %3066
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %14, align 1
  %3069 = trunc i64 %3064 to i32
  %3070 = and i32 %3069, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %21, align 1
  %3075 = xor i64 %3063, %3036
  %3076 = xor i64 %3075, %3064
  %3077 = lshr i64 %3076, 4
  %3078 = trunc i64 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %26, align 1
  %3080 = icmp eq i64 %3064, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %29, align 1
  %3082 = lshr i64 %3064, 63
  %3083 = trunc i64 %3082 to i8
  store i8 %3083, i8* %32, align 1
  %3084 = lshr i64 %3062, 61
  %3085 = and i64 %3084, 1
  %3086 = xor i64 %3082, %3051
  %3087 = xor i64 %3082, %3085
  %3088 = add nuw nsw i64 %3086, %3087
  %3089 = icmp eq i64 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %38, align 1
  store i64 %3064, i64* %RDI.i1449, align 8
  %3091 = add i64 %3018, 180
  %3092 = add i64 %3018, 47
  %3093 = load i64, i64* %6, align 8
  %3094 = add i64 %3093, -8
  %3095 = inttoptr i64 %3094 to i64*
  store i64 %3092, i64* %3095, align 8
  store i64 %3094, i64* %6, align 8
  store i64 %3091, i64* %3, align 8
  %call2_4222f6 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %3091, %struct.Memory* %call2_4222b0)
  %3096 = load i64, i64* %RBP.i, align 8
  %3097 = add i64 %3096, -44
  %3098 = load i64, i64* %3, align 8
  %3099 = add i64 %3098, 3
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3097 to i32*
  %3101 = load i32, i32* %3100, align 4
  %3102 = add i32 %3101, 1
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %RAX.i1462, align 8
  %3104 = icmp eq i32 %3101, -1
  %3105 = icmp eq i32 %3102, 0
  %3106 = or i1 %3104, %3105
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %14, align 1
  %3108 = and i32 %3102, 255
  %3109 = tail call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  store i8 %3112, i8* %21, align 1
  %3113 = xor i32 %3102, %3101
  %3114 = lshr i32 %3113, 4
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  store i8 %3116, i8* %26, align 1
  %3117 = zext i1 %3105 to i8
  store i8 %3117, i8* %29, align 1
  %3118 = lshr i32 %3102, 31
  %3119 = trunc i32 %3118 to i8
  store i8 %3119, i8* %32, align 1
  %3120 = lshr i32 %3101, 31
  %3121 = xor i32 %3118, %3120
  %3122 = add nuw nsw i32 %3121, %3118
  %3123 = icmp eq i32 %3122, 2
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %38, align 1
  %3125 = add i64 %3098, 9
  store i64 %3125, i64* %3, align 8
  store i32 %3102, i32* %3100, align 4
  %3126 = load i64, i64* %3, align 8
  %3127 = add i64 %3126, -72
  store i64 %3127, i64* %3, align 8
  br label %block_.L_4222bc

block_.L_42230e.loopexit:                         ; preds = %block_.L_4222bc
  br label %block_.L_42230e

block_.L_42230e:                                  ; preds = %block_.L_42230e.loopexit, %block_.L_422243
  %3128 = phi i64 [ %2844, %block_.L_422243 ], [ %3019, %block_.L_42230e.loopexit ]
  %3129 = phi i64 [ %2825, %block_.L_422243 ], [ %2985, %block_.L_42230e.loopexit ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_422227, %block_.L_422243 ], [ %call2_4222b0, %block_.L_42230e.loopexit ]
  %3130 = add i64 %3129, -20
  %3131 = add i64 %3128, 4
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = add i32 %3133, -1
  %3135 = icmp eq i32 %3133, 0
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %14, align 1
  %3137 = and i32 %3134, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %21, align 1
  %3142 = xor i32 %3134, %3133
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %26, align 1
  %3146 = icmp eq i32 %3134, 0
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i32 %3134, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %32, align 1
  %3150 = lshr i32 %3133, 31
  %3151 = xor i32 %3148, %3150
  %3152 = add nuw nsw i32 %3151, %3150
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %38, align 1
  %.v433 = select i1 %3146, i64 10, i64 50
  %3155 = add i64 %3128, %.v433
  store i64 %3155, i64* %3, align 8
  br i1 %3146, label %block_422318, label %block_.L_422340

block_422318:                                     ; preds = %block_.L_42230e
  store i64 1, i64* %RDX.i1431, align 8
  %3156 = add i64 %3129, -16
  %3157 = add i64 %3155, 9
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RDI.i1449, align 8
  %3160 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3161 = add i32 %3160, 3
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RAX.i1462, align 8
  %3163 = icmp eq i32 %3161, 0
  %3164 = zext i1 %3163 to i8
  %3165 = lshr i32 %3161, 31
  %3166 = trunc i32 %3165 to i8
  %3167 = sext i32 %3161 to i64
  %3168 = shl nsw i64 %3167, 2
  store i64 %3168, i64* %RCX.i1460, align 8
  store i8 %3166, i8* %14, align 1
  %3169 = trunc i64 %3168 to i32
  %3170 = and i32 %3169, 252
  %3171 = tail call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  store i8 %3174, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %3164, i8* %29, align 1
  %3175 = lshr i64 %3167, 61
  %3176 = trunc i64 %3175 to i8
  %3177 = and i8 %3176, 1
  store i8 %3177, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %3168, i64* %RSI.i1434, align 8
  %3178 = add i64 %3155, -134424
  %3179 = add i64 %3155, 34
  %3180 = load i64, i64* %6, align 8
  %3181 = add i64 %3180, -8
  %3182 = inttoptr i64 %3181 to i64*
  store i64 %3179, i64* %3182, align 8
  store i64 %3181, i64* %6, align 8
  store i64 %3178, i64* %3, align 8
  %call2_422335 = tail call %struct.Memory* @sub_401600.fseek_plt(%struct.State* nonnull %0, i64 %3178, %struct.Memory* %MEMORY.24)
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -252
  %3185 = load i32, i32* %EAX.i1459, align 4
  %3186 = load i64, i64* %3, align 8
  %3187 = add i64 %3186, 6
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3184 to i32*
  store i32 %3185, i32* %3188, align 4
  %.pre396 = load i64, i64* %3, align 8
  %.pre397 = load i64, i64* %RBP.i, align 8
  br label %block_.L_422340

block_.L_422340:                                  ; preds = %block_.L_42230e, %block_422318
  %3189 = phi i64 [ %3129, %block_.L_42230e ], [ %.pre397, %block_422318 ]
  %3190 = phi i64 [ %3155, %block_.L_42230e ], [ %.pre396, %block_422318 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_42230e ], [ %call2_422335, %block_422318 ]
  %3191 = add i64 %3189, -40
  %3192 = add i64 %3190, 8
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = add i32 %3194, 1
  %3196 = zext i32 %3195 to i64
  store i64 %3196, i64* %RAX.i1462, align 8
  %3197 = icmp eq i32 %3194, -1
  %3198 = icmp eq i32 %3195, 0
  %3199 = or i1 %3197, %3198
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %14, align 1
  %3201 = and i32 %3195, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %21, align 1
  %3206 = xor i32 %3195, %3194
  %3207 = lshr i32 %3206, 4
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  store i8 %3209, i8* %26, align 1
  %3210 = zext i1 %3198 to i8
  store i8 %3210, i8* %29, align 1
  %3211 = lshr i32 %3195, 31
  %3212 = trunc i32 %3211 to i8
  store i8 %3212, i8* %32, align 1
  %3213 = lshr i32 %3194, 31
  %3214 = xor i32 %3211, %3213
  %3215 = add nuw nsw i32 %3214, %3211
  %3216 = icmp eq i32 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %38, align 1
  %3218 = add i64 %3190, 14
  store i64 %3218, i64* %3, align 8
  store i32 %3195, i32* %3193, align 4
  %3219 = load i64, i64* %3, align 8
  %3220 = add i64 %3219, -1622
  store i64 %3220, i64* %3, align 8
  br label %block_.L_421cf8

block_.L_422353:                                  ; preds = %block_.L_421cf8
  %3221 = add i64 %1422, 4
  store i64 %3221, i64* %3, align 8
  %3222 = load i64, i64* %1391, align 8
  store i64 %3222, i64* %RDI.i1449, align 8
  %3223 = add i64 %1422, 78477
  %3224 = add i64 %1422, 9
  %3225 = load i64, i64* %6, align 8
  %3226 = add i64 %3225, -8
  %3227 = inttoptr i64 %3226 to i64*
  store i64 %3224, i64* %3227, align 8
  store i64 %3226, i64* %6, align 8
  store i64 %3223, i64* %3, align 8
  %call2_422357 = tail call %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* nonnull %0, i64 %3223, %struct.Memory* %MEMORY.17)
  %3228 = load i64, i64* %RBP.i, align 8
  %3229 = add i64 %3228, -32
  %3230 = load i64, i64* %3, align 8
  %3231 = add i64 %3230, 4
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3229 to i64*
  %3233 = load i64, i64* %3232, align 8
  store i64 %3233, i64* %RDI.i1449, align 8
  %3234 = add i64 %3228, -8
  %3235 = add i64 %3230, 8
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i64*
  store i64 %3233, i64* %3236, align 8
  %.pre398 = load i64, i64* %3, align 8
  br label %block_.L_422364

block_.L_422364:                                  ; preds = %block_.L_422353, %block_422236, %block_4221df, %block_422189, %block_422133, %block_42204a, %block_421ff4, %block_421f9e, %block_421e4f, %block_421df8, %block_421da2, %block_421d4c, %block_421c7b, %block_421c0e, %block_421ba2, %block_421b30, %block_421aa8, %block_421a75, %block_421a28, %block_4219a8, %block_421869, %block_42182c
  %3237 = phi i64 [ %.pre398, %block_.L_422353 ], [ %2830, %block_422236 ], [ %2751, %block_4221df ], [ %2674, %block_422189 ], [ %2597, %block_422133 ], [ %2324, %block_42204a ], [ %2247, %block_421ff4 ], [ %2170, %block_421f9e ], [ %1730, %block_421e4f ], [ %1651, %block_421df8 ], [ %1574, %block_421da2 ], [ %1497, %block_421d4c ], [ %1195, %block_421c7b ], [ %1059, %block_421c0e ], [ %935, %block_421ba2 ], [ %807, %block_421b30 ], [ %633, %block_421aa8 ], [ %601, %block_421a75 ], [ %544, %block_421a28 ], [ %429, %block_4219a8 ], [ %141, %block_421869 ], [ %101, %block_42182c ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_422357, %block_.L_422353 ], [ %call2_422227, %block_422236 ], [ %call2_4221d0, %block_4221df ], [ %call2_42217a, %block_422189 ], [ %call2_422124, %block_422133 ], [ %call2_42203b, %block_42204a ], [ %call2_421fe5, %block_421ff4 ], [ %call2_421f8f, %block_421f9e ], [ %MEMORY.17, %block_421e4f ], [ %MEMORY.17, %block_421df8 ], [ %MEMORY.17, %block_421da2 ], [ %MEMORY.17, %block_421d4c ], [ %call2_421c6c, %block_421c7b ], [ %call2_421bff, %block_421c0e ], [ %call2_421b93, %block_421ba2 ], [ %call2_421b21, %block_421b30 ], [ %call2_421a99, %block_421aa8 ], [ %call2_421a66, %block_421a75 ], [ %call2_421a19, %block_421a28 ], [ %call2_421999, %block_4219a8 ], [ %call2_42185a, %block_421869 ], [ %call2_42181d, %block_42182c ]
  %3238 = load i64, i64* %RBP.i, align 8
  %3239 = add i64 %3238, -8
  %3240 = add i64 %3237, 4
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i64*
  %3242 = load i64, i64* %3241, align 8
  store i64 %3242, i64* %RAX.i1462, align 8
  %3243 = load i64, i64* %6, align 8
  %3244 = add i64 %3243, 256
  store i64 %3244, i64* %6, align 8
  %3245 = icmp ugt i64 %3243, -257
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %14, align 1
  %3247 = trunc i64 %3244 to i32
  %3248 = and i32 %3247, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %21, align 1
  %3253 = xor i64 %3244, %3243
  %3254 = lshr i64 %3253, 4
  %3255 = trunc i64 %3254 to i8
  %3256 = and i8 %3255, 1
  store i8 %3256, i8* %26, align 1
  %3257 = icmp eq i64 %3244, 0
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %29, align 1
  %3259 = lshr i64 %3244, 63
  %3260 = trunc i64 %3259 to i8
  store i8 %3260, i8* %32, align 1
  %3261 = lshr i64 %3243, 63
  %3262 = xor i64 %3259, %3261
  %3263 = add nuw nsw i64 %3262, %3259
  %3264 = icmp eq i64 %3263, 2
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %38, align 1
  %3266 = add i64 %3237, 12
  store i64 %3266, i64* %3, align 8
  %3267 = add i64 %3243, 264
  %3268 = inttoptr i64 %3244 to i64*
  %3269 = load i64, i64* %3268, align 8
  store i64 %3269, i64* %RBP.i, align 8
  store i64 %3267, i64* %6, align 8
  %3270 = add i64 %3237, 13
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3267 to i64*
  %3272 = load i64, i64* %3271, align 8
  store i64 %3272, i64* %3, align 8
  %3273 = add i64 %3243, 272
  store i64 %3273, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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
define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 256
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
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_421839(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_422364(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421876(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_4218a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.byteswap(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4218b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4218e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4218ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4218e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jne_.L_421902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jmpq_.L_421947(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_421942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_42196e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_421a45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4219b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4219d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x5c3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1475, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_421a35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421a82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_421ab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_421adf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_callq_.fseek_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_421af3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421c36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x90___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -145
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
define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421b3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -145
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
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
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
define %struct.Memory* @routine_je_.L_421baf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x78__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_421baf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
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
define %struct.Memory* @routine_je_.L_421c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x80__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421ce1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421c88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421cdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jge_.L_421cd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421c99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421cdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421cf1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = bitcast i64* %RCX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_422353(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 92
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421d59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421daf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421e05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x5c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 92
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421e5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421f27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_jge_.L_421f22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xc___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_jmpq_.L_421ed5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421f27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421f59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_421fab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422001(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422057(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4220c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4220ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422196(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4221ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422243(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42230e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_422309(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4222bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42230e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_422340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_421cf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -257
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
