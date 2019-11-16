; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x661538_type = type <{ [4 x i8] }>
%G_0x676d90_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x457899_type = type <{ [8 x i8] }>
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
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x457899 = global %G__0x457899_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_422380.byteswap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_422410.read_bin_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @read_bin20hmm(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -248
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 240
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
  %RDI.i1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i1946, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %RSI.i1943, align 8
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
  store i64 %60, i64* %RSI.i1943, align 8
  %61 = add i64 %57, 7
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RDI.i1946, align 8
  %64 = add i64 %57, -113643
  %65 = add i64 %57, 12
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, -8
  %68 = inttoptr i64 %67 to i64*
  store i64 %65, i64* %68, align 8
  store i64 %67, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  %call2_41d182 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64 %64, %struct.Memory* %2)
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1932 = bitcast %union.anon* %69 to i32*
  %70 = load i32, i32* %EAX.i1932, align 4
  %71 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %72 = and i32 %70, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %77 = icmp eq i32 %70, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %30, align 1
  %79 = lshr i32 %70, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %77, i64 21, i64 9
  %81 = add i64 %71, %.v176
  store i64 %81, i64* %3, align 8
  br i1 %77, label %block_.L_41d19c, label %block_41d190

block_41d190:                                     ; preds = %entry
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -4
  %84 = add i64 %81, 7
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  store i32 0, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 3822
  store i64 %87, i64* %3, align 8
  %.pre164 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  br label %block_.L_41e085

block_.L_41d19c:                                  ; preds = %entry
  %RAX.i1926 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  %RDX.i1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 1, i64* %RDX.i1919, align 8
  %RCX.i1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -48
  store i64 %89, i64* %RCX.i1915, align 8
  %90 = add i64 %88, -16
  %91 = add i64 %81, 22
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RDI.i1946, align 8
  %94 = add i64 %81, 25
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %88, -56
  %98 = add i64 %81, 29
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %RCX.i1915, align 8
  %101 = load i64, i64* %3, align 8
  store i64 %100, i64* %RDI.i1946, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -56
  %104 = add i64 %101, 7
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RCX.i1915, align 8
  %107 = add i64 %101, -114089
  %108 = add i64 %101, 12
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111, align 8
  store i64 %110, i64* %6, align 8
  store i64 %107, i64* %3, align 8
  %call2_41d1c0 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %107, %struct.Memory* %call2_41d182)
  %112 = load i64, i64* %RAX.i1926, align 8
  %113 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %114 = trunc i64 %112 to i32
  %115 = and i32 %114, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %120 = icmp eq i64 %112, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %30, align 1
  %122 = lshr i64 %112, 63
  %123 = trunc i64 %122 to i8
  store i8 %123, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %120, i64 10, i64 22
  %124 = add i64 %113, %.v177
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %RBP.i, align 8
  br i1 %120, label %block_41d1cf, label %block_.L_41d1db

block_41d1cf:                                     ; preds = %block_.L_41d19c
  %126 = add i64 %125, -4
  %127 = add i64 %124, 7
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  store i32 0, i32* %128, align 4
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 3759
  store i64 %130, i64* %3, align 8
  br label %block_.L_41e085

block_.L_41d1db:                                  ; preds = %block_.L_41d19c
  %131 = add i64 %125, -16
  %132 = add i64 %124, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i1926, align 8
  %135 = add i64 %134, 28
  %136 = add i64 %124, 8
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  store i8 0, i8* %14, align 1
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %144 = icmp eq i32 %138, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %30, align 1
  %146 = lshr i32 %138, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %144, i64 31, i64 14
  %148 = add i64 %124, %.v178
  store i64 %148, i64* %3, align 8
  br i1 %144, label %block_.L_41d1fa, label %block_41d1e9

block_41d1e9:                                     ; preds = %block_.L_41d1db
  store i64 4, i64* %RSI.i1943, align 8
  %149 = add i64 %125, -48
  store i64 %149, i64* %RAX.i1926, align 8
  store i64 %149, i64* %RDI.i1946, align 8
  %150 = add i64 %148, 20887
  %151 = add i64 %148, 17
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, -8
  %154 = inttoptr i64 %153 to i64*
  store i64 %151, i64* %154, align 8
  store i64 %153, i64* %6, align 8
  store i64 %150, i64* %3, align 8
  %call2_41d1f5 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %150, %struct.Memory* %call2_41d1c0)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_41d1fa

block_.L_41d1fa:                                  ; preds = %block_41d1e9, %block_.L_41d1db
  %155 = phi i64 [ %148, %block_.L_41d1db ], [ %.pre121, %block_41d1e9 ]
  %156 = phi i64 [ %125, %block_.L_41d1db ], [ %.pre, %block_41d1e9 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_41d1c0, %block_.L_41d1db ], [ %call2_41d1f5, %block_41d1e9 ]
  %157 = add i64 %156, -48
  %158 = add i64 %155, 3
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX.i1926, align 8
  %162 = load i32, i32* bitcast (%G_0x661538_type* @G_0x661538 to i32*), align 8
  %163 = sub i32 %160, %162
  %164 = icmp ult i32 %160, %162
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %14, align 1
  %166 = and i32 %163, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %21, align 1
  %171 = xor i32 %162, %160
  %172 = xor i32 %171, %163
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %27, align 1
  %176 = icmp eq i32 %163, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %30, align 1
  %178 = lshr i32 %163, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %33, align 1
  %180 = lshr i32 %160, 31
  %181 = lshr i32 %162, 31
  %182 = xor i32 %181, %180
  %183 = xor i32 %178, %180
  %184 = add nuw nsw i32 %183, %182
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %39, align 1
  %.v179 = select i1 %176, i64 21, i64 16
  %187 = add i64 %155, %.v179
  store i64 %187, i64* %3, align 8
  br i1 %176, label %block_.L_41d20f, label %block_41d20a

block_41d20a:                                     ; preds = %block_.L_41d1fa
  %188 = add i64 %187, 3669
  br label %block_.L_41e05f

block_.L_41d20f:                                  ; preds = %block_.L_41d1fa
  %189 = add i64 %187, 84817
  %190 = add i64 %187, 5
  %191 = load i64, i64* %6, align 8
  %192 = add i64 %191, -8
  %193 = inttoptr i64 %192 to i64*
  store i64 %190, i64* %193, align 8
  store i64 %192, i64* %6, align 8
  store i64 %189, i64* %3, align 8
  %call2_41d20f = tail call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* nonnull %0, i64 %189, %struct.Memory* %MEMORY.0)
  %194 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RCX.i1915, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -32
  %197 = load i64, i64* %RAX.i1926, align 8
  %198 = add i64 %194, 18
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %196 to i64*
  store i64 %197, i64* %199, align 8
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -32
  %202 = load i64, i64* %3, align 8
  %203 = add i64 %202, 4
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 456
  store i64 %206, i64* %RAX.i1926, align 8
  %207 = icmp ugt i64 %205, -457
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %14, align 1
  %209 = trunc i64 %206 to i32
  %210 = and i32 %209, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i64 %206, %205
  %216 = lshr i64 %215, 4
  %217 = trunc i64 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %27, align 1
  %219 = icmp eq i64 %206, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %30, align 1
  %221 = lshr i64 %206, 63
  %222 = trunc i64 %221 to i8
  store i8 %222, i8* %33, align 1
  %223 = lshr i64 %205, 63
  %224 = xor i64 %221, %223
  %225 = add nuw nsw i64 %224, %221
  %226 = icmp eq i64 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %39, align 1
  %228 = add i64 %200, -16
  %229 = add i64 %202, 14
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RDI.i1946, align 8
  %232 = add i64 %202, 17
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RCX.i1915, align 8
  store i64 %206, i64* %RDI.i1946, align 8
  %235 = add i64 %202, -114198
  %236 = add i64 %202, 25
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  store i64 %238, i64* %6, align 8
  store i64 %235, i64* %3, align 8
  %call2_41d23a = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %235, %struct.Memory* %call2_41d20f)
  %240 = load i64, i64* %RAX.i1926, align 8
  %241 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %242 = trunc i64 %240 to i32
  %243 = and i32 %242, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %248 = icmp eq i64 %240, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %30, align 1
  %250 = lshr i64 %240, 63
  %251 = trunc i64 %250 to i8
  store i8 %251, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %248, i64 10, i64 15
  %252 = add i64 %241, %.v181
  store i64 %252, i64* %3, align 8
  br i1 %248, label %block_41d249, label %block_.L_41d24e

block_41d249:                                     ; preds = %block_.L_41d20f
  %253 = add i64 %252, 3606
  br label %block_.L_41e05f

block_.L_41d24e:                                  ; preds = %block_.L_41d20f
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -16
  %256 = add i64 %252, 4
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX.i1926, align 8
  %259 = add i64 %258, 28
  %260 = add i64 %252, 8
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  store i8 0, i8* %14, align 1
  %263 = and i32 %262, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %268 = icmp eq i32 %262, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %30, align 1
  %270 = lshr i32 %262, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %268, i64 37, i64 14
  %272 = add i64 %252, %.v182
  store i64 %272, i64* %3, align 8
  br i1 %268, label %block_.L_41d273, label %block_41d25c

block_41d25c:                                     ; preds = %block_.L_41d24e
  store i64 4, i64* %RSI.i1943, align 8
  %273 = add i64 %254, -32
  %274 = add i64 %272, 9
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, 456
  store i64 %277, i64* %RAX.i1926, align 8
  %278 = icmp ugt i64 %276, -457
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = trunc i64 %277 to i32
  %281 = and i32 %280, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i64 %277, %276
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %27, align 1
  %290 = icmp eq i64 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %30, align 1
  %292 = lshr i64 %277, 63
  %293 = trunc i64 %292 to i8
  store i8 %293, i8* %33, align 1
  %294 = lshr i64 %276, 63
  %295 = xor i64 %292, %294
  %296 = add nuw nsw i64 %295, %292
  %297 = icmp eq i64 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %39, align 1
  store i64 %277, i64* %RDI.i1946, align 8
  %299 = add i64 %272, 20772
  %300 = add i64 %272, 23
  %301 = load i64, i64* %6, align 8
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %300, i64* %303, align 8
  store i64 %302, i64* %6, align 8
  store i64 %299, i64* %3, align 8
  %call2_41d26e = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %299, %struct.Memory* %call2_41d23a)
  %.pre122 = load i64, i64* %RBP.i, align 8
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_41d273

block_.L_41d273:                                  ; preds = %block_41d25c, %block_.L_41d24e
  %304 = phi i64 [ %272, %block_.L_41d24e ], [ %.pre123, %block_41d25c ]
  %305 = phi i64 [ %254, %block_.L_41d24e ], [ %.pre122, %block_41d25c ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_41d23a, %block_.L_41d24e ], [ %call2_41d26e, %block_41d25c ]
  %306 = add i64 %305, -16
  %307 = add i64 %304, 4
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %RAX.i1926, align 8
  %310 = add i64 %304, 7
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RDI.i1946, align 8
  %313 = add i64 %304, 11
  store i64 %313, i64* %3, align 8
  %314 = load i64, i64* %308, align 8
  store i64 %314, i64* %RAX.i1926, align 8
  %315 = add i64 %314, 28
  %316 = add i64 %304, 14
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RSI.i1943, align 8
  %320 = add i64 %305, -32
  %321 = add i64 %304, 18
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RDX.i1919, align 8
  %324 = add i64 %304, 20893
  %325 = add i64 %304, 23
  %326 = load i64, i64* %6, align 8
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %325, i64* %328, align 8
  store i64 %327, i64* %6, align 8
  store i64 %324, i64* %3, align 8
  %call2_41d285 = tail call %struct.Memory* @sub_422410.read_bin_string(%struct.State* nonnull %0, i64 %324, %struct.Memory* %MEMORY.1)
  %329 = load i32, i32* %EAX.i1932, align 4
  %330 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %331 = and i32 %329, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %336 = icmp eq i32 %329, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %30, align 1
  %338 = lshr i32 %329, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %336, i64 9, i64 14
  %340 = add i64 %330, %.v183
  store i64 %340, i64* %3, align 8
  br i1 %336, label %block_41d293, label %block_.L_41d298

block_41d293:                                     ; preds = %block_.L_41d273
  %341 = add i64 %340, 3532
  br label %block_.L_41e05f

block_.L_41d298:                                  ; preds = %block_.L_41d273
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -32
  %344 = add i64 %340, 4
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RAX.i1926, align 8
  %347 = add i64 %346, 456
  %348 = add i64 %340, 10
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 512
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %353 = icmp eq i32 %351, 0
  %.lobit165 = lshr exact i32 %351, 9
  %354 = trunc i32 %.lobit165 to i8
  %355 = xor i8 %354, 1
  store i8 %355, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %353, i64 69, i64 25
  %356 = add i64 %340, %.v184
  store i64 %356, i64* %3, align 8
  br i1 %353, label %block_.L_41d2dd, label %block_41d2b1

block_41d2b1:                                     ; preds = %block_.L_41d298
  %357 = add i64 %342, -16
  %358 = add i64 %356, 4
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RAX.i1926, align 8
  %361 = add i64 %356, 7
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RDI.i1946, align 8
  %364 = add i64 %356, 11
  store i64 %364, i64* %3, align 8
  %365 = load i64, i64* %359, align 8
  store i64 %365, i64* %RAX.i1926, align 8
  %366 = add i64 %365, 28
  %367 = add i64 %356, 14
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RSI.i1943, align 8
  %371 = add i64 %356, 18
  store i64 %371, i64* %3, align 8
  %372 = load i64, i64* %345, align 8
  %373 = add i64 %372, 8
  store i64 %373, i64* %RAX.i1926, align 8
  %374 = icmp ugt i64 %372, -9
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %14, align 1
  %376 = trunc i64 %373 to i32
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  %382 = xor i64 %373, %372
  %383 = lshr i64 %382, 4
  %384 = trunc i64 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %27, align 1
  %386 = icmp eq i64 %373, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %30, align 1
  %388 = lshr i64 %373, 63
  %389 = trunc i64 %388 to i8
  store i8 %389, i8* %33, align 1
  %390 = lshr i64 %372, 63
  %391 = xor i64 %388, %390
  %392 = add nuw nsw i64 %391, %388
  %393 = icmp eq i64 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %39, align 1
  store i64 %373, i64* %RDX.i1919, align 8
  %395 = add i64 %356, 20831
  %396 = add i64 %356, 30
  %397 = load i64, i64* %6, align 8
  %398 = add i64 %397, -8
  %399 = inttoptr i64 %398 to i64*
  store i64 %396, i64* %399, align 8
  store i64 %398, i64* %6, align 8
  store i64 %395, i64* %3, align 8
  %call2_41d2ca = tail call %struct.Memory* @sub_422410.read_bin_string(%struct.State* nonnull %0, i64 %395, %struct.Memory* %call2_41d285)
  %400 = load i32, i32* %EAX.i1932, align 4
  %401 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %402 = and i32 %400, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %407 = icmp eq i32 %400, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %30, align 1
  %409 = lshr i32 %400, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %407, i64 9, i64 14
  %411 = add i64 %401, %.v185
  store i64 %411, i64* %3, align 8
  br i1 %407, label %block_41d2d8, label %block_41d2b1.block_.L_41d2dd_crit_edge

block_41d2b1.block_.L_41d2dd_crit_edge:           ; preds = %block_41d2b1
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d2dd

block_41d2d8:                                     ; preds = %block_41d2b1
  %412 = add i64 %411, 3463
  br label %block_.L_41e05f

block_.L_41d2dd:                                  ; preds = %block_41d2b1.block_.L_41d2dd_crit_edge, %block_.L_41d298
  %413 = phi i64 [ %356, %block_.L_41d298 ], [ %411, %block_41d2b1.block_.L_41d2dd_crit_edge ]
  %414 = phi i64 [ %342, %block_.L_41d298 ], [ %.pre124, %block_41d2b1.block_.L_41d2dd_crit_edge ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_41d285, %block_.L_41d298 ], [ %call2_41d2ca, %block_41d2b1.block_.L_41d2dd_crit_edge ]
  %415 = add i64 %414, -32
  %416 = add i64 %413, 4
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RAX.i1926, align 8
  %419 = add i64 %418, 456
  %420 = add i64 %413, 10
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = and i32 %422, 2
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  %425 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %426 = trunc i32 %425 to i8
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %428 = icmp eq i32 %423, 0
  %.lobit166 = lshr exact i32 %423, 1
  %429 = trunc i32 %.lobit166 to i8
  %430 = xor i8 %429, 1
  store i8 %430, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v186 = select i1 %428, i64 66, i64 22
  %431 = add i64 %413, %.v186
  store i64 %431, i64* %3, align 8
  br i1 %428, label %block_.L_41d31f, label %block_41d2f3

block_41d2f3:                                     ; preds = %block_.L_41d2dd
  %432 = add i64 %414, -16
  %433 = add i64 %431, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RAX.i1926, align 8
  %436 = add i64 %431, 7
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i64*
  %438 = load i64, i64* %437, align 8
  store i64 %438, i64* %RDI.i1946, align 8
  %439 = add i64 %431, 11
  store i64 %439, i64* %3, align 8
  %440 = load i64, i64* %434, align 8
  store i64 %440, i64* %RAX.i1926, align 8
  %441 = add i64 %440, 28
  %442 = add i64 %431, 14
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RSI.i1943, align 8
  %446 = add i64 %431, 18
  store i64 %446, i64* %3, align 8
  %447 = load i64, i64* %417, align 8
  %448 = add i64 %447, 16
  store i64 %448, i64* %RAX.i1926, align 8
  %449 = icmp ugt i64 %447, -17
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %14, align 1
  %451 = trunc i64 %448 to i32
  %452 = and i32 %451, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %21, align 1
  %457 = xor i64 %447, 16
  %458 = xor i64 %457, %448
  %459 = lshr i64 %458, 4
  %460 = trunc i64 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %27, align 1
  %462 = icmp eq i64 %448, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %30, align 1
  %464 = lshr i64 %448, 63
  %465 = trunc i64 %464 to i8
  store i8 %465, i8* %33, align 1
  %466 = lshr i64 %447, 63
  %467 = xor i64 %464, %466
  %468 = add nuw nsw i64 %467, %464
  %469 = icmp eq i64 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %39, align 1
  store i64 %448, i64* %RDX.i1919, align 8
  %471 = add i64 %431, 20765
  %472 = add i64 %431, 30
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, -8
  %475 = inttoptr i64 %474 to i64*
  store i64 %472, i64* %475, align 8
  store i64 %474, i64* %6, align 8
  store i64 %471, i64* %3, align 8
  %call2_41d30c = tail call %struct.Memory* @sub_422410.read_bin_string(%struct.State* nonnull %0, i64 %471, %struct.Memory* %MEMORY.2)
  %476 = load i32, i32* %EAX.i1932, align 4
  %477 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %478 = and i32 %476, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %483 = icmp eq i32 %476, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %30, align 1
  %485 = lshr i32 %476, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %483, i64 9, i64 14
  %487 = add i64 %477, %.v187
  store i64 %487, i64* %3, align 8
  br i1 %483, label %block_41d31a, label %block_41d2f3.block_.L_41d31f_crit_edge

block_41d2f3.block_.L_41d31f_crit_edge:           ; preds = %block_41d2f3
  %.pre125 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d31f

block_41d31a:                                     ; preds = %block_41d2f3
  %488 = add i64 %487, 3397
  br label %block_.L_41e05f

block_.L_41d31f:                                  ; preds = %block_41d2f3.block_.L_41d31f_crit_edge, %block_.L_41d2dd
  %489 = phi i64 [ %414, %block_.L_41d2dd ], [ %.pre125, %block_41d2f3.block_.L_41d31f_crit_edge ]
  %490 = phi i64 [ %431, %block_.L_41d2dd ], [ %487, %block_41d2f3.block_.L_41d31f_crit_edge ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41d2dd ], [ %call2_41d30c, %block_41d2f3.block_.L_41d31f_crit_edge ]
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %491 = add i64 %489, -32
  %492 = add i64 %490, 18
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  %495 = add i64 %494, 136
  store i64 %495, i64* %RCX.i1915, align 8
  %496 = icmp ugt i64 %494, -137
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = trunc i64 %495 to i32
  %499 = and i32 %498, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  %504 = xor i64 %495, %494
  %505 = lshr i64 %504, 4
  %506 = trunc i64 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %27, align 1
  %508 = icmp eq i64 %495, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %30, align 1
  %510 = lshr i64 %495, 63
  %511 = trunc i64 %510 to i8
  store i8 %511, i8* %33, align 1
  %512 = lshr i64 %494, 63
  %513 = xor i64 %510, %512
  %514 = add nuw nsw i64 %513, %510
  %515 = icmp eq i64 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %39, align 1
  %517 = add i64 %489, -16
  %518 = add i64 %490, 29
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RDI.i1946, align 8
  %521 = add i64 %490, 32
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  %524 = add i64 %489, -64
  %525 = add i64 %490, 36
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  store i64 %523, i64* %526, align 8
  %527 = load i64, i64* %RCX.i1915, align 8
  %528 = load i64, i64* %3, align 8
  store i64 %527, i64* %RDI.i1946, align 8
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -64
  %531 = add i64 %528, 7
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RCX.i1915, align 8
  %534 = add i64 %528, -114483
  %535 = add i64 %528, 12
  %536 = load i64, i64* %6, align 8
  %537 = add i64 %536, -8
  %538 = inttoptr i64 %537 to i64*
  store i64 %535, i64* %538, align 8
  store i64 %537, i64* %6, align 8
  store i64 %534, i64* %3, align 8
  %call2_41d34a = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %534, %struct.Memory* %MEMORY.3)
  %539 = load i64, i64* %RAX.i1926, align 8
  %540 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %541 = trunc i64 %539 to i32
  %542 = and i32 %541, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %547 = icmp eq i64 %539, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %30, align 1
  %549 = lshr i64 %539, 63
  %550 = trunc i64 %549 to i8
  store i8 %550, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v188 = select i1 %547, i64 10, i64 15
  %551 = add i64 %540, %.v188
  store i64 %551, i64* %3, align 8
  br i1 %547, label %block_41d359, label %block_.L_41d35e

block_41d359:                                     ; preds = %block_.L_41d31f
  %552 = add i64 %551, 3334
  br label %block_.L_41e05f

block_.L_41d35e:                                  ; preds = %block_.L_41d31f
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -16
  %555 = add i64 %551, 4
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RAX.i1926, align 8
  %558 = add i64 %557, 28
  %559 = add i64 %551, 8
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  store i8 0, i8* %14, align 1
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %567 = icmp eq i32 %561, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %30, align 1
  %569 = lshr i32 %561, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %567, i64 37, i64 14
  %571 = add i64 %551, %.v189
  store i64 %571, i64* %3, align 8
  br i1 %567, label %block_.L_41d383, label %block_41d36c

block_41d36c:                                     ; preds = %block_.L_41d35e
  store i64 4, i64* %RSI.i1943, align 8
  %572 = add i64 %553, -32
  %573 = add i64 %571, 9
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  %576 = add i64 %575, 136
  store i64 %576, i64* %RAX.i1926, align 8
  %577 = icmp ugt i64 %575, -137
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = trunc i64 %576 to i32
  %580 = and i32 %579, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %21, align 1
  %585 = xor i64 %576, %575
  %586 = lshr i64 %585, 4
  %587 = trunc i64 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %27, align 1
  %589 = icmp eq i64 %576, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %30, align 1
  %591 = lshr i64 %576, 63
  %592 = trunc i64 %591 to i8
  store i8 %592, i8* %33, align 1
  %593 = lshr i64 %575, 63
  %594 = xor i64 %591, %593
  %595 = add nuw nsw i64 %594, %591
  %596 = icmp eq i64 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %39, align 1
  store i64 %576, i64* %RDI.i1946, align 8
  %598 = add i64 %571, 20500
  %599 = add i64 %571, 23
  %600 = load i64, i64* %6, align 8
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %599, i64* %602, align 8
  store i64 %601, i64* %6, align 8
  store i64 %598, i64* %3, align 8
  %call2_41d37e = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %598, %struct.Memory* %call2_41d34a)
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d383

block_.L_41d383:                                  ; preds = %block_41d36c, %block_.L_41d35e
  %603 = phi i64 [ %553, %block_.L_41d35e ], [ %.pre127, %block_41d36c ]
  %604 = phi i64 [ %571, %block_.L_41d35e ], [ %.pre126, %block_41d36c ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_41d34a, %block_.L_41d35e ], [ %call2_41d37e, %block_41d36c ]
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %605 = add i64 %603, -44
  store i64 %605, i64* %RCX.i1915, align 8
  %606 = add i64 %603, -16
  %607 = add i64 %604, 22
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RDI.i1946, align 8
  %610 = add i64 %604, 25
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i64*
  %612 = load i64, i64* %611, align 8
  %613 = add i64 %603, -72
  %614 = add i64 %604, 29
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  store i64 %612, i64* %615, align 8
  %616 = load i64, i64* %RCX.i1915, align 8
  %617 = load i64, i64* %3, align 8
  store i64 %616, i64* %RDI.i1946, align 8
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -72
  %620 = add i64 %617, 7
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RCX.i1915, align 8
  %623 = add i64 %617, -114576
  %624 = add i64 %617, 12
  %625 = load i64, i64* %6, align 8
  %626 = add i64 %625, -8
  %627 = inttoptr i64 %626 to i64*
  store i64 %624, i64* %627, align 8
  store i64 %626, i64* %6, align 8
  store i64 %623, i64* %3, align 8
  %call2_41d3a7 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %623, %struct.Memory* %MEMORY.4)
  %628 = load i64, i64* %RAX.i1926, align 8
  %629 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %630 = trunc i64 %628 to i32
  %631 = and i32 %630, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %636 = icmp eq i64 %628, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %30, align 1
  %638 = lshr i64 %628, 63
  %639 = trunc i64 %638 to i8
  store i8 %639, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %636, i64 10, i64 15
  %640 = add i64 %629, %.v190
  store i64 %640, i64* %3, align 8
  br i1 %636, label %block_41d3b6, label %block_.L_41d3bb

block_41d3b6:                                     ; preds = %block_.L_41d383
  %641 = add i64 %640, 3241
  br label %block_.L_41e05f

block_.L_41d3bb:                                  ; preds = %block_.L_41d383
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -16
  %644 = add i64 %640, 4
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i64*
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %RAX.i1926, align 8
  %647 = add i64 %646, 28
  %648 = add i64 %640, 8
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  store i8 0, i8* %14, align 1
  %651 = and i32 %650, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %656 = icmp eq i32 %650, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %30, align 1
  %658 = lshr i32 %650, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v191 = select i1 %656, i64 31, i64 14
  %660 = add i64 %640, %.v191
  store i64 %660, i64* %3, align 8
  br i1 %656, label %block_.L_41d3da, label %block_41d3c9

block_41d3c9:                                     ; preds = %block_.L_41d3bb
  store i64 4, i64* %RSI.i1943, align 8
  %661 = add i64 %642, -44
  store i64 %661, i64* %RAX.i1926, align 8
  store i64 %661, i64* %RDI.i1946, align 8
  %662 = add i64 %660, 20407
  %663 = add i64 %660, 17
  %664 = load i64, i64* %6, align 8
  %665 = add i64 %664, -8
  %666 = inttoptr i64 %665 to i64*
  store i64 %663, i64* %666, align 8
  store i64 %665, i64* %6, align 8
  store i64 %662, i64* %3, align 8
  %call2_41d3d5 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %662, %struct.Memory* %call2_41d3a7)
  %.pre128 = load i64, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d3da

block_.L_41d3da:                                  ; preds = %block_41d3c9, %block_.L_41d3bb
  %667 = phi i64 [ %642, %block_.L_41d3bb ], [ %.pre129, %block_41d3c9 ]
  %668 = phi i64 [ %660, %block_.L_41d3bb ], [ %.pre128, %block_41d3c9 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_41d3a7, %block_.L_41d3bb ], [ %call2_41d3d5, %block_41d3c9 ]
  %669 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  store i8 0, i8* %14, align 1
  %670 = and i32 %669, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %675 = icmp eq i32 %669, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %30, align 1
  %677 = lshr i32 %669, 31
  %678 = trunc i32 %677 to i8
  store i8 %678, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %675, i64 14, i64 27
  %679 = add i64 %668, %.v
  %680 = add i64 %667, -44
  %681 = add i64 %679, 3
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  br i1 %675, label %block_41d3e8, label %block_.L_41d3f5

block_41d3e8:                                     ; preds = %block_.L_41d3da
  store i64 %684, i64* %RDI.i1946, align 8
  %685 = add i64 %679, -100168
  %686 = add i64 %679, 8
  %687 = load i64, i64* %6, align 8
  %688 = add i64 %687, -8
  %689 = inttoptr i64 %688 to i64*
  store i64 %686, i64* %689, align 8
  store i64 %688, i64* %6, align 8
  store i64 %685, i64* %3, align 8
  %call2_41d3eb = tail call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* nonnull %0, i64 %685, %struct.Memory* %MEMORY.5)
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 74
  br label %block_.L_41d43a

block_.L_41d3f5:                                  ; preds = %block_.L_41d3da
  store i64 %684, i64* %RAX.i1926, align 8
  %692 = sub i32 %683, %669
  %693 = icmp ult i32 %683, %669
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %14, align 1
  %695 = and i32 %692, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  %700 = xor i32 %669, %683
  %701 = xor i32 %700, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %27, align 1
  %705 = icmp eq i32 %692, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %30, align 1
  %707 = lshr i32 %692, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %33, align 1
  %709 = lshr i32 %683, 31
  %710 = xor i32 %677, %709
  %711 = xor i32 %707, %709
  %712 = add nuw nsw i32 %711, %710
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %39, align 1
  %.v192 = select i1 %705, i64 64, i64 16
  %715 = add i64 %679, %.v192
  store i64 %715, i64* %3, align 8
  br i1 %705, label %block_.L_41d435, label %block_41d405

block_41d405:                                     ; preds = %block_.L_41d3f5
  %716 = zext i32 %669 to i64
  store i64 %716, i64* %RDI.i1946, align 8
  %717 = add i64 %715, -50597
  %718 = add i64 %715, 12
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_41d40c = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %717, %struct.Memory* %MEMORY.5)
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -44
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 3
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RDI.i1946, align 8
  %729 = add i64 %722, -80
  %730 = load i64, i64* %RAX.i1926, align 8
  %731 = add i64 %724, 7
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %729 to i64*
  store i64 %730, i64* %732, align 8
  %733 = load i64, i64* %3, align 8
  %734 = add i64 %733, -50616
  %735 = add i64 %733, 5
  %736 = load i64, i64* %6, align 8
  %737 = add i64 %736, -8
  %738 = inttoptr i64 %737 to i64*
  store i64 %735, i64* %738, align 8
  store i64 %737, i64* %6, align 8
  store i64 %734, i64* %3, align 8
  %call2_41d418 = tail call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* nonnull %0, i64 %734, %struct.Memory* %call2_41d40c)
  %739 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457899_type* @G__0x457899 to i64), i64* %RDI.i1946, align 8
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -80
  %742 = add i64 %739, 14
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RSI.i1943, align 8
  %745 = load i64, i64* %RAX.i1926, align 8
  store i64 %745, i64* %RDX.i1919, align 8
  %AL.i = bitcast %union.anon* %69 to i8*
  store i8 0, i8* %AL.i, align 1
  %746 = add i64 %739, 136691
  %747 = add i64 %739, 24
  %748 = load i64, i64* %6, align 8
  %749 = add i64 %748, -8
  %750 = inttoptr i64 %749 to i64*
  store i64 %747, i64* %750, align 8
  store i64 %749, i64* %6, align 8
  store i64 %746, i64* %3, align 8
  %call2_41d430 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %746, %struct.Memory* %call2_41d418)
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_41d435

block_.L_41d435:                                  ; preds = %block_41d405, %block_.L_41d3f5
  %751 = phi i64 [ %715, %block_.L_41d3f5 ], [ %.pre130, %block_41d405 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_41d3f5 ], [ %call2_41d430, %block_41d405 ]
  %752 = add i64 %751, 5
  store i64 %752, i64* %3, align 8
  br label %block_.L_41d43a

block_.L_41d43a:                                  ; preds = %block_.L_41d435, %block_41d3e8
  %storemerge = phi i64 [ %691, %block_41d3e8 ], [ %752, %block_.L_41d435 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_41d3eb, %block_41d3e8 ], [ %MEMORY.6, %block_.L_41d435 ]
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -32
  %755 = add i64 %storemerge, 4
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RDI.i1946, align 8
  %758 = add i64 %storemerge, 8
  store i64 %758, i64* %3, align 8
  %759 = load i64, i64* %756, align 8
  store i64 %759, i64* %RAX.i1926, align 8
  %760 = add i64 %759, 136
  %761 = add i64 %storemerge, 14
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RSI.i1943, align 8
  %765 = add i64 %storemerge, 84886
  %766 = add i64 %storemerge, 19
  %767 = load i64, i64* %6, align 8
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %766, i64* %769, align 8
  store i64 %768, i64* %6, align 8
  store i64 %765, i64* %3, align 8
  %call2_41d448 = tail call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* nonnull %0, i64 %765, %struct.Memory* %MEMORY.7)
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -32
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 4
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RAX.i1926, align 8
  %776 = add i64 %775, 456
  %777 = add i64 %772, 10
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = and i32 %779, 4
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RSI.i1943, align 8
  store i8 0, i8* %14, align 1
  %782 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %783 = trunc i32 %782 to i8
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %785 = icmp eq i32 %780, 0
  %.lobit167 = lshr exact i32 %780, 2
  %786 = trunc i32 %.lobit167 to i8
  %787 = xor i8 %786, 1
  store i8 %787, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v193 = select i1 %785, i64 80, i64 22
  %788 = add i64 %772, %.v193
  store i64 %788, i64* %3, align 8
  br i1 %785, label %block_.L_41d49d, label %block_41d463

block_41d463:                                     ; preds = %block_.L_41d43a
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RSI.i1943, align 8
  %789 = add i64 %788, 11
  store i64 %789, i64* %3, align 8
  %790 = load i64, i64* %774, align 8
  store i64 %790, i64* %RCX.i1915, align 8
  %791 = add i64 %790, 24
  %792 = add i64 %788, 15
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %RDI.i1946, align 8
  %795 = add i64 %788, 19
  store i64 %795, i64* %3, align 8
  %796 = load i64, i64* %774, align 8
  store i64 %796, i64* %RCX.i1915, align 8
  %797 = add i64 %796, 136
  %798 = add i64 %788, 25
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = add i32 %800, 1
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RAX.i1926, align 8
  %803 = icmp eq i32 %800, -1
  %804 = icmp eq i32 %801, 0
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = and i32 %801, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %801, %800
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %27, align 1
  %816 = zext i1 %804 to i8
  store i8 %816, i8* %30, align 1
  %817 = lshr i32 %801, 31
  %818 = trunc i32 %817 to i8
  store i8 %818, i8* %33, align 1
  %819 = lshr i32 %800, 31
  %820 = xor i32 %817, %819
  %821 = add nuw nsw i32 %820, %817
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %39, align 1
  %824 = sext i32 %801 to i64
  store i64 %824, i64* %RDX.i1919, align 8
  %825 = add i64 %770, -16
  %826 = add i64 %788, 35
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RCX.i1915, align 8
  %829 = add i64 %788, 38
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RCX.i1915, align 8
  %832 = add i64 %788, -114771
  %833 = add i64 %788, 43
  %834 = load i64, i64* %6, align 8
  %835 = add i64 %834, -8
  %836 = inttoptr i64 %835 to i64*
  store i64 %833, i64* %836, align 8
  store i64 %835, i64* %6, align 8
  store i64 %832, i64* %3, align 8
  %call2_41d489 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %832, %struct.Memory* %call2_41d448)
  %837 = load i64, i64* %RAX.i1926, align 8
  %838 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %839 = trunc i64 %837 to i32
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %845 = icmp eq i64 %837, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %30, align 1
  %847 = lshr i64 %837, 63
  %848 = trunc i64 %847 to i8
  store i8 %848, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v194 = select i1 %845, i64 10, i64 15
  %849 = add i64 %838, %.v194
  store i64 %849, i64* %3, align 8
  br i1 %845, label %block_41d498, label %block_41d463.block_.L_41d49d_crit_edge

block_41d463.block_.L_41d49d_crit_edge:           ; preds = %block_41d463
  %.pre131 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d49d

block_41d498:                                     ; preds = %block_41d463
  %850 = add i64 %849, 3015
  br label %block_.L_41e05f

block_.L_41d49d:                                  ; preds = %block_41d463.block_.L_41d49d_crit_edge, %block_.L_41d43a
  %851 = phi i64 [ %788, %block_.L_41d43a ], [ %849, %block_41d463.block_.L_41d49d_crit_edge ]
  %852 = phi i64 [ %770, %block_.L_41d43a ], [ %.pre131, %block_41d463.block_.L_41d49d_crit_edge ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_41d448, %block_.L_41d43a ], [ %call2_41d489, %block_41d463.block_.L_41d49d_crit_edge ]
  %853 = add i64 %852, -32
  %854 = add i64 %851, 4
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RAX.i1926, align 8
  %857 = add i64 %856, 24
  %858 = add i64 %851, 8
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i1926, align 8
  %861 = add i64 %851, 12
  store i64 %861, i64* %3, align 8
  %862 = load i64, i64* %855, align 8
  store i64 %862, i64* %RCX.i1915, align 8
  %863 = add i64 %862, 136
  %864 = add i64 %851, 18
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = add i32 %866, 1
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RDX.i1919, align 8
  %869 = icmp eq i32 %866, -1
  %870 = icmp eq i32 %867, 0
  %871 = or i1 %869, %870
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %867, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %867, %866
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %27, align 1
  %882 = zext i1 %870 to i8
  store i8 %882, i8* %30, align 1
  %883 = lshr i32 %867, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %33, align 1
  %885 = lshr i32 %866, 31
  %886 = xor i32 %883, %885
  %887 = add nuw nsw i32 %886, %883
  %888 = icmp eq i32 %887, 2
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %39, align 1
  %890 = sext i32 %867 to i64
  store i64 %890, i64* %RCX.i1915, align 8
  %891 = add i64 %860, %890
  %892 = add i64 %851, 28
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i8*
  store i8 0, i8* %893, align 1
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -32
  %896 = load i64, i64* %3, align 8
  %897 = add i64 %896, 4
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %895 to i64*
  %899 = load i64, i64* %898, align 8
  store i64 %899, i64* %RAX.i1926, align 8
  %900 = add i64 %899, 456
  %901 = add i64 %896, 10
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = and i32 %903, 8
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RDX.i1919, align 8
  store i8 0, i8* %14, align 1
  %906 = tail call i32 @llvm.ctpop.i32(i32 %904)
  %907 = trunc i32 %906 to i8
  %908 = xor i8 %907, 1
  store i8 %908, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %909 = icmp eq i32 %904, 0
  %.lobit168 = lshr exact i32 %904, 3
  %910 = trunc i32 %.lobit168 to i8
  %911 = xor i8 %910, 1
  store i8 %911, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %909, i64 80, i64 22
  %912 = add i64 %896, %.v195
  store i64 %912, i64* %3, align 8
  br i1 %909, label %block_.L_41d509, label %block_41d4cf

block_41d4cf:                                     ; preds = %block_.L_41d49d
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RSI.i1943, align 8
  %913 = add i64 %912, 11
  store i64 %913, i64* %3, align 8
  %914 = load i64, i64* %898, align 8
  store i64 %914, i64* %RCX.i1915, align 8
  %915 = add i64 %914, 32
  %916 = add i64 %912, 15
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RDI.i1946, align 8
  %919 = add i64 %912, 19
  store i64 %919, i64* %3, align 8
  %920 = load i64, i64* %898, align 8
  store i64 %920, i64* %RCX.i1915, align 8
  %921 = add i64 %920, 136
  %922 = add i64 %912, 25
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i32 %924, 1
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RAX.i1926, align 8
  %927 = icmp eq i32 %924, -1
  %928 = icmp eq i32 %925, 0
  %929 = or i1 %927, %928
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %14, align 1
  %931 = and i32 %925, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %21, align 1
  %936 = xor i32 %925, %924
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %27, align 1
  %940 = zext i1 %928 to i8
  store i8 %940, i8* %30, align 1
  %941 = lshr i32 %925, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %33, align 1
  %943 = lshr i32 %924, 31
  %944 = xor i32 %941, %943
  %945 = add nuw nsw i32 %944, %941
  %946 = icmp eq i32 %945, 2
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %39, align 1
  %948 = sext i32 %925 to i64
  store i64 %948, i64* %RDX.i1919, align 8
  %949 = add i64 %894, -16
  %950 = add i64 %912, 35
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RCX.i1915, align 8
  %953 = add i64 %912, 38
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RCX.i1915, align 8
  %956 = add i64 %912, -114879
  %957 = add i64 %912, 43
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, -8
  %960 = inttoptr i64 %959 to i64*
  store i64 %957, i64* %960, align 8
  store i64 %959, i64* %6, align 8
  store i64 %956, i64* %3, align 8
  %call2_41d4f5 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %956, %struct.Memory* %MEMORY.8)
  %961 = load i64, i64* %RAX.i1926, align 8
  %962 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %963 = trunc i64 %961 to i32
  %964 = and i32 %963, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %969 = icmp eq i64 %961, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %30, align 1
  %971 = lshr i64 %961, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v196 = select i1 %969, i64 10, i64 15
  %973 = add i64 %962, %.v196
  store i64 %973, i64* %3, align 8
  br i1 %969, label %block_41d504, label %block_41d4cf.block_.L_41d509_crit_edge

block_41d4cf.block_.L_41d509_crit_edge:           ; preds = %block_41d4cf
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d509

block_41d504:                                     ; preds = %block_41d4cf
  %974 = add i64 %973, 2907
  br label %block_.L_41e05f

block_.L_41d509:                                  ; preds = %block_41d4cf.block_.L_41d509_crit_edge, %block_.L_41d49d
  %975 = phi i64 [ %912, %block_.L_41d49d ], [ %973, %block_41d4cf.block_.L_41d509_crit_edge ]
  %976 = phi i64 [ %894, %block_.L_41d49d ], [ %.pre132, %block_41d4cf.block_.L_41d509_crit_edge ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_41d49d ], [ %call2_41d4f5, %block_41d4cf.block_.L_41d509_crit_edge ]
  %977 = add i64 %976, -32
  %978 = add i64 %975, 4
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %RAX.i1926, align 8
  %981 = add i64 %980, 32
  %982 = add i64 %975, 8
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RAX.i1926, align 8
  %985 = add i64 %975, 12
  store i64 %985, i64* %3, align 8
  %986 = load i64, i64* %979, align 8
  store i64 %986, i64* %RCX.i1915, align 8
  %987 = add i64 %986, 136
  %988 = add i64 %975, 18
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, 1
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RDX.i1919, align 8
  %993 = icmp eq i32 %990, -1
  %994 = icmp eq i32 %991, 0
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %14, align 1
  %997 = and i32 %991, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i32 %991, %990
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %27, align 1
  %1006 = zext i1 %994 to i8
  store i8 %1006, i8* %30, align 1
  %1007 = lshr i32 %991, 31
  %1008 = trunc i32 %1007 to i8
  store i8 %1008, i8* %33, align 1
  %1009 = lshr i32 %990, 31
  %1010 = xor i32 %1007, %1009
  %1011 = add nuw nsw i32 %1010, %1007
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %39, align 1
  %1014 = sext i32 %991 to i64
  store i64 %1014, i64* %RCX.i1915, align 8
  %1015 = add i64 %984, %1014
  %1016 = add i64 %975, 28
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i8*
  store i8 0, i8* %1017, align 1
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -32
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1019 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %RAX.i1926, align 8
  %1024 = add i64 %1023, 456
  %1025 = add i64 %1020, 10
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = and i32 %1027, 256
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RDX.i1919, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1030 = icmp eq i32 %1028, 0
  %.lobit169 = lshr exact i32 %1028, 8
  %1031 = trunc i32 %.lobit169 to i8
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v197 = select i1 %1030, i64 94, i64 25
  %1033 = add i64 %1020, %.v197
  store i64 %1033, i64* %3, align 8
  br i1 %1030, label %block_.L_41d583, label %block_41d53e

block_41d53e:                                     ; preds = %block_.L_41d509
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %1034 = add i64 %1033, 11
  store i64 %1034, i64* %3, align 8
  %1035 = load i64, i64* %1022, align 8
  store i64 %1035, i64* %RCX.i1915, align 8
  %1036 = add i64 %1035, 72
  %1037 = add i64 %1033, 15
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RCX.i1915, align 8
  %1040 = add i64 %1033, 19
  store i64 %1040, i64* %3, align 8
  %1041 = load i64, i64* %1022, align 8
  store i64 %1041, i64* %RDX.i1919, align 8
  %1042 = add i64 %1041, 136
  %1043 = add i64 %1033, 25
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = add i32 %1045, 1
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RAX.i1926, align 8
  %1048 = icmp eq i32 %1045, -1
  %1049 = icmp eq i32 %1046, 0
  %1050 = or i1 %1048, %1049
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %14, align 1
  %1052 = and i32 %1046, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %21, align 1
  %1057 = xor i32 %1046, %1045
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %27, align 1
  %1061 = zext i1 %1049 to i8
  store i8 %1061, i8* %30, align 1
  %1062 = lshr i32 %1046, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %33, align 1
  %1064 = lshr i32 %1045, 31
  %1065 = xor i32 %1062, %1064
  %1066 = add nuw nsw i32 %1065, %1062
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %39, align 1
  %1069 = sext i32 %1046 to i64
  store i64 %1069, i64* %RDX.i1919, align 8
  %1070 = add i64 %1018, -16
  %1071 = add i64 %1033, 35
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RDI.i1946, align 8
  %1074 = add i64 %1033, 38
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  %1077 = add i64 %1018, -88
  %1078 = add i64 %1033, 42
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i64*
  store i64 %1076, i64* %1079, align 8
  %1080 = load i64, i64* %RCX.i1915, align 8
  %1081 = load i64, i64* %3, align 8
  store i64 %1080, i64* %RDI.i1946, align 8
  %1082 = load i64, i64* %RBP.i, align 8
  %1083 = add i64 %1082, -88
  %1084 = add i64 %1081, 7
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i64*
  %1086 = load i64, i64* %1085, align 8
  store i64 %1086, i64* %RCX.i1915, align 8
  %1087 = add i64 %1081, -115032
  %1088 = add i64 %1081, 12
  %1089 = load i64, i64* %6, align 8
  %1090 = add i64 %1089, -8
  %1091 = inttoptr i64 %1090 to i64*
  store i64 %1088, i64* %1091, align 8
  store i64 %1090, i64* %6, align 8
  store i64 %1087, i64* %3, align 8
  %call2_41d56f = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1087, %struct.Memory* %MEMORY.9)
  %1092 = load i64, i64* %RAX.i1926, align 8
  %1093 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1094 = trunc i64 %1092 to i32
  %1095 = and i32 %1094, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1100 = icmp eq i64 %1092, 0
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %30, align 1
  %1102 = lshr i64 %1092, 63
  %1103 = trunc i64 %1102 to i8
  store i8 %1103, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v198 = select i1 %1100, i64 10, i64 15
  %1104 = add i64 %1093, %.v198
  store i64 %1104, i64* %3, align 8
  br i1 %1100, label %block_41d57e, label %block_41d53e.block_.L_41d583_crit_edge

block_41d53e.block_.L_41d583_crit_edge:           ; preds = %block_41d53e
  %.pre133 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d583

block_41d57e:                                     ; preds = %block_41d53e
  %1105 = add i64 %1104, 2785
  br label %block_.L_41e05f

block_.L_41d583:                                  ; preds = %block_41d53e.block_.L_41d583_crit_edge, %block_.L_41d509
  %1106 = phi i64 [ %1033, %block_.L_41d509 ], [ %1104, %block_41d53e.block_.L_41d583_crit_edge ]
  %1107 = phi i64 [ %1018, %block_.L_41d509 ], [ %.pre133, %block_41d53e.block_.L_41d583_crit_edge ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_41d509 ], [ %call2_41d56f, %block_41d53e.block_.L_41d583_crit_edge ]
  %1108 = add i64 %1107, -16
  %1109 = add i64 %1106, 4
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX.i1926, align 8
  %1112 = add i64 %1111, 28
  %1113 = add i64 %1106, 8
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  store i8 0, i8* %14, align 1
  %1116 = and i32 %1115, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1121 = icmp eq i32 %1115, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %30, align 1
  %1123 = lshr i32 %1115, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %1121, i64 91, i64 14
  %1125 = add i64 %1106, %.v199
  store i64 %1125, i64* %3, align 8
  br i1 %1121, label %block_.L_41d5de, label %block_41d591

block_41d591:                                     ; preds = %block_.L_41d583
  %1126 = add i64 %1107, -36
  %1127 = add i64 %1125, 7
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  store i32 1, i32* %1128, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_41d598

block_.L_41d598:                                  ; preds = %block_41d5ab, %block_41d591
  %1129 = phi i64 [ %1246, %block_41d5ab ], [ %.pre134, %block_41d591 ]
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -36
  %1132 = add i64 %1129, 3
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RAX.i1926, align 8
  %1136 = add i64 %1130, -32
  %1137 = add i64 %1129, 7
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RCX.i1915, align 8
  %1140 = add i64 %1139, 136
  %1141 = add i64 %1129, 13
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = sub i32 %1134, %1143
  %1145 = icmp ult i32 %1134, %1143
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1144, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1143, %1134
  %1153 = xor i32 %1152, %1144
  %1154 = lshr i32 %1153, 4
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  store i8 %1156, i8* %27, align 1
  %1157 = icmp eq i32 %1144, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %30, align 1
  %1159 = lshr i32 %1144, 31
  %1160 = trunc i32 %1159 to i8
  store i8 %1160, i8* %33, align 1
  %1161 = lshr i32 %1134, 31
  %1162 = lshr i32 %1143, 31
  %1163 = xor i32 %1162, %1161
  %1164 = xor i32 %1159, %1161
  %1165 = add nuw nsw i32 %1164, %1163
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %39, align 1
  %1168 = icmp ne i8 %1160, 0
  %1169 = xor i1 %1168, %1166
  %.demorgan = or i1 %1157, %1169
  %.v245 = select i1 %.demorgan, i64 19, i64 65
  %1170 = add i64 %1129, %.v245
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %3, align 8
  br i1 %.demorgan, label %block_41d5ab, label %block_.L_41d5de.loopexit

block_41d5ab:                                     ; preds = %block_.L_41d598
  store i64 4, i64* %RSI.i1943, align 8
  %1172 = add i64 %1170, 9
  store i64 %1172, i64* %3, align 8
  %1173 = load i64, i64* %1138, align 8
  store i64 %1173, i64* %RAX.i1926, align 8
  %1174 = add i64 %1173, 72
  %1175 = add i64 %1170, 13
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i64*
  %1177 = load i64, i64* %1176, align 8
  store i64 %1177, i64* %RAX.i1926, align 8
  %1178 = add i64 %1170, 17
  store i64 %1178, i64* %3, align 8
  %1179 = load i32, i32* %1133, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = shl nsw i64 %1180, 2
  store i64 %1181, i64* %RCX.i1915, align 8
  %1182 = add i64 %1181, %1177
  store i64 %1182, i64* %RAX.i1926, align 8
  %1183 = icmp ult i64 %1182, %1177
  %1184 = icmp ult i64 %1182, %1181
  %1185 = or i1 %1183, %1184
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %14, align 1
  %1187 = trunc i64 %1182 to i32
  %1188 = and i32 %1187, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i64 %1181, %1177
  %1194 = xor i64 %1193, %1182
  %1195 = lshr i64 %1194, 4
  %1196 = trunc i64 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = icmp eq i64 %1182, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i64 %1182, 63
  %1201 = trunc i64 %1200 to i8
  store i8 %1201, i8* %33, align 1
  %1202 = lshr i64 %1177, 63
  %1203 = lshr i64 %1180, 61
  %1204 = and i64 %1203, 1
  %1205 = xor i64 %1200, %1202
  %1206 = xor i64 %1200, %1204
  %1207 = add nuw nsw i64 %1205, %1206
  %1208 = icmp eq i64 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %39, align 1
  store i64 %1182, i64* %RDI.i1946, align 8
  %1210 = add i64 %1170, 19925
  %1211 = add i64 %1170, 32
  %1212 = load i64, i64* %6, align 8
  %1213 = add i64 %1212, -8
  %1214 = inttoptr i64 %1213 to i64*
  store i64 %1211, i64* %1214, align 8
  store i64 %1213, i64* %6, align 8
  store i64 %1210, i64* %3, align 8
  %call2_41d5c6 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1210, %struct.Memory* %MEMORY.10)
  %1215 = load i64, i64* %RBP.i, align 8
  %1216 = add i64 %1215, -36
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = add i32 %1220, 1
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RAX.i1926, align 8
  %1223 = icmp eq i32 %1220, -1
  %1224 = icmp eq i32 %1221, 0
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i32 %1221, %1220
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %27, align 1
  %1236 = zext i1 %1224 to i8
  store i8 %1236, i8* %30, align 1
  %1237 = lshr i32 %1221, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %33, align 1
  %1239 = lshr i32 %1220, 31
  %1240 = xor i32 %1237, %1239
  %1241 = add nuw nsw i32 %1240, %1237
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %39, align 1
  %1244 = add i64 %1217, 9
  store i64 %1244, i64* %3, align 8
  store i32 %1221, i32* %1219, align 4
  %1245 = load i64, i64* %3, align 8
  %1246 = add i64 %1245, -60
  store i64 %1246, i64* %3, align 8
  br label %block_.L_41d598

block_.L_41d5de.loopexit:                         ; preds = %block_.L_41d598
  br label %block_.L_41d5de

block_.L_41d5de:                                  ; preds = %block_.L_41d5de.loopexit, %block_.L_41d583
  %1247 = phi i64 [ %1125, %block_.L_41d583 ], [ %1171, %block_.L_41d5de.loopexit ]
  %1248 = phi i64 [ %1107, %block_.L_41d583 ], [ %1130, %block_.L_41d5de.loopexit ]
  %1249 = add i64 %1248, -16
  %1250 = add i64 %1247, 4
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RAX.i1926, align 8
  %1253 = add i64 %1247, 7
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i64*
  %1255 = load i64, i64* %1254, align 8
  store i64 %1255, i64* %RDI.i1946, align 8
  %1256 = add i64 %1247, 11
  store i64 %1256, i64* %3, align 8
  %1257 = load i64, i64* %1251, align 8
  store i64 %1257, i64* %RAX.i1926, align 8
  %1258 = add i64 %1257, 28
  %1259 = add i64 %1247, 14
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RSI.i1943, align 8
  %1263 = add i64 %1248, -32
  %1264 = add i64 %1247, 18
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  %1267 = add i64 %1266, 48
  store i64 %1267, i64* %RAX.i1926, align 8
  %1268 = icmp ugt i64 %1266, -49
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %14, align 1
  %1270 = trunc i64 %1267 to i32
  %1271 = and i32 %1270, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %21, align 1
  %1276 = xor i64 %1266, 16
  %1277 = xor i64 %1276, %1267
  %1278 = lshr i64 %1277, 4
  %1279 = trunc i64 %1278 to i8
  %1280 = and i8 %1279, 1
  store i8 %1280, i8* %27, align 1
  %1281 = icmp eq i64 %1267, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %30, align 1
  %1283 = lshr i64 %1267, 63
  %1284 = trunc i64 %1283 to i8
  store i8 %1284, i8* %33, align 1
  %1285 = lshr i64 %1266, 63
  %1286 = xor i64 %1283, %1285
  %1287 = add nuw nsw i64 %1286, %1283
  %1288 = icmp eq i64 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1
  store i64 %1267, i64* %RDX.i1919, align 8
  %1290 = add i64 %1247, 20018
  %1291 = add i64 %1247, 30
  %1292 = load i64, i64* %6, align 8
  %1293 = add i64 %1292, -8
  %1294 = inttoptr i64 %1293 to i64*
  store i64 %1291, i64* %1294, align 8
  store i64 %1293, i64* %6, align 8
  store i64 %1290, i64* %3, align 8
  %call2_41d5f7 = tail call %struct.Memory* @sub_422410.read_bin_string(%struct.State* nonnull %0, i64 %1290, %struct.Memory* %MEMORY.10)
  %1295 = load i32, i32* %EAX.i1932, align 4
  %1296 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1297 = and i32 %1295, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1302 = icmp eq i32 %1295, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %30, align 1
  %1304 = lshr i32 %1295, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v200 = select i1 %1302, i64 9, i64 14
  %1306 = add i64 %1296, %.v200
  store i64 %1306, i64* %3, align 8
  br i1 %1302, label %block_41d605, label %block_.L_41d60a

block_41d605:                                     ; preds = %block_.L_41d5de
  %1307 = add i64 %1306, 2650
  br label %block_.L_41e05f

block_.L_41d60a:                                  ; preds = %block_.L_41d5de
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -32
  %1310 = add i64 %1306, 18
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  %1313 = add i64 %1312, 56
  store i64 %1313, i64* %RCX.i1915, align 8
  %1314 = icmp ugt i64 %1312, -57
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %14, align 1
  %1316 = trunc i64 %1313 to i32
  %1317 = and i32 %1316, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %21, align 1
  %1322 = xor i64 %1312, 16
  %1323 = xor i64 %1322, %1313
  %1324 = lshr i64 %1323, 4
  %1325 = trunc i64 %1324 to i8
  %1326 = and i8 %1325, 1
  store i8 %1326, i8* %27, align 1
  %1327 = icmp eq i64 %1313, 0
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %30, align 1
  %1329 = lshr i64 %1313, 63
  %1330 = trunc i64 %1329 to i8
  store i8 %1330, i8* %33, align 1
  %1331 = lshr i64 %1312, 63
  %1332 = xor i64 %1329, %1331
  %1333 = add nuw nsw i64 %1332, %1329
  %1334 = icmp eq i64 %1333, 2
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %39, align 1
  %1336 = add i64 %1308, -16
  %1337 = add i64 %1306, 26
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RDI.i1946, align 8
  %1340 = add i64 %1306, 29
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  %1343 = add i64 %1308, -96
  %1344 = add i64 %1306, 33
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  store i64 %1342, i64* %1345, align 8
  %1346 = load i64, i64* %RCX.i1915, align 8
  %1347 = load i64, i64* %3, align 8
  store i64 %1346, i64* %RDI.i1946, align 8
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -96
  %1350 = add i64 %1347, 7
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i64*
  %1352 = load i64, i64* %1351, align 8
  store i64 %1352, i64* %RCX.i1915, align 8
  %1353 = add i64 %1347, -115227
  %1354 = add i64 %1347, 12
  %1355 = load i64, i64* %6, align 8
  %1356 = add i64 %1355, -8
  %1357 = inttoptr i64 %1356 to i64*
  store i64 %1354, i64* %1357, align 8
  store i64 %1356, i64* %6, align 8
  store i64 %1353, i64* %3, align 8
  %call2_41d632 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1353, %struct.Memory* %call2_41d5f7)
  %1358 = load i64, i64* %RAX.i1926, align 8
  %1359 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1360 = trunc i64 %1358 to i32
  %1361 = and i32 %1360, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1366 = icmp eq i64 %1358, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i64 %1358, 63
  %1369 = trunc i64 %1368 to i8
  store i8 %1369, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v201 = select i1 %1366, i64 10, i64 15
  %1370 = add i64 %1359, %.v201
  store i64 %1370, i64* %3, align 8
  br i1 %1366, label %block_41d641, label %block_.L_41d646

block_41d641:                                     ; preds = %block_.L_41d60a
  %1371 = add i64 %1370, 2590
  br label %block_.L_41e05f

block_.L_41d646:                                  ; preds = %block_.L_41d60a
  %1372 = load i64, i64* %RBP.i, align 8
  %1373 = add i64 %1372, -16
  %1374 = add i64 %1370, 4
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  store i64 %1376, i64* %RAX.i1926, align 8
  %1377 = add i64 %1376, 28
  %1378 = add i64 %1370, 8
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  store i8 0, i8* %14, align 1
  %1381 = and i32 %1380, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1386 = icmp eq i32 %1380, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %30, align 1
  %1388 = lshr i32 %1380, 31
  %1389 = trunc i32 %1388 to i8
  store i8 %1389, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v202 = select i1 %1386, i64 35, i64 14
  %1390 = add i64 %1370, %.v202
  store i64 %1390, i64* %3, align 8
  br i1 %1386, label %block_.L_41d669, label %block_41d654

block_41d654:                                     ; preds = %block_.L_41d646
  store i64 4, i64* %RSI.i1943, align 8
  %1391 = add i64 %1372, -32
  %1392 = add i64 %1390, 9
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i64*
  %1394 = load i64, i64* %1393, align 8
  %1395 = add i64 %1394, 56
  store i64 %1395, i64* %RAX.i1926, align 8
  %1396 = icmp ugt i64 %1394, -57
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %14, align 1
  %1398 = trunc i64 %1395 to i32
  %1399 = and i32 %1398, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  %1404 = xor i64 %1394, 16
  %1405 = xor i64 %1404, %1395
  %1406 = lshr i64 %1405, 4
  %1407 = trunc i64 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %27, align 1
  %1409 = icmp eq i64 %1395, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %30, align 1
  %1411 = lshr i64 %1395, 63
  %1412 = trunc i64 %1411 to i8
  store i8 %1412, i8* %33, align 1
  %1413 = lshr i64 %1394, 63
  %1414 = xor i64 %1411, %1413
  %1415 = add nuw nsw i64 %1414, %1411
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %39, align 1
  store i64 %1395, i64* %RDI.i1946, align 8
  %1418 = add i64 %1390, 19756
  %1419 = add i64 %1390, 21
  %1420 = load i64, i64* %6, align 8
  %1421 = add i64 %1420, -8
  %1422 = inttoptr i64 %1421 to i64*
  store i64 %1419, i64* %1422, align 8
  store i64 %1421, i64* %6, align 8
  store i64 %1418, i64* %3, align 8
  %call2_41d664 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1418, %struct.Memory* %call2_41d632)
  %.pre135 = load i64, i64* %RBP.i, align 8
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_41d669

block_.L_41d669:                                  ; preds = %block_41d654, %block_.L_41d646
  %1423 = phi i64 [ %1390, %block_.L_41d646 ], [ %.pre136, %block_41d654 ]
  %1424 = phi i64 [ %1372, %block_.L_41d646 ], [ %.pre135, %block_41d654 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_41d632, %block_.L_41d646 ], [ %call2_41d664, %block_41d654 ]
  %1425 = add i64 %1424, -16
  %1426 = add i64 %1423, 4
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RAX.i1926, align 8
  %1429 = add i64 %1423, 7
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RDI.i1946, align 8
  %1432 = add i64 %1423, 11
  store i64 %1432, i64* %3, align 8
  %1433 = load i64, i64* %1427, align 8
  store i64 %1433, i64* %RAX.i1926, align 8
  %1434 = add i64 %1433, 28
  %1435 = add i64 %1423, 14
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RSI.i1943, align 8
  %1439 = add i64 %1424, -32
  %1440 = add i64 %1423, 18
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i64*
  %1442 = load i64, i64* %1441, align 8
  %1443 = add i64 %1442, 64
  store i64 %1443, i64* %RAX.i1926, align 8
  %1444 = icmp ugt i64 %1442, -65
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %14, align 1
  %1446 = trunc i64 %1443 to i32
  %1447 = and i32 %1446, 255
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %21, align 1
  %1452 = xor i64 %1443, %1442
  %1453 = lshr i64 %1452, 4
  %1454 = trunc i64 %1453 to i8
  %1455 = and i8 %1454, 1
  store i8 %1455, i8* %27, align 1
  %1456 = icmp eq i64 %1443, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %30, align 1
  %1458 = lshr i64 %1443, 63
  %1459 = trunc i64 %1458 to i8
  store i8 %1459, i8* %33, align 1
  %1460 = lshr i64 %1442, 63
  %1461 = xor i64 %1458, %1460
  %1462 = add nuw nsw i64 %1461, %1458
  %1463 = icmp eq i64 %1462, 2
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %39, align 1
  store i64 %1443, i64* %RDX.i1919, align 8
  %1465 = add i64 %1423, 19879
  %1466 = add i64 %1423, 30
  %1467 = load i64, i64* %6, align 8
  %1468 = add i64 %1467, -8
  %1469 = inttoptr i64 %1468 to i64*
  store i64 %1466, i64* %1469, align 8
  store i64 %1468, i64* %6, align 8
  store i64 %1465, i64* %3, align 8
  %call2_41d682 = tail call %struct.Memory* @sub_422410.read_bin_string(%struct.State* nonnull %0, i64 %1465, %struct.Memory* %MEMORY.13)
  %1470 = load i32, i32* %EAX.i1932, align 4
  %1471 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1472 = and i32 %1470, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1477 = icmp eq i32 %1470, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %30, align 1
  %1479 = lshr i32 %1470, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %1477, i64 9, i64 14
  %1481 = add i64 %1471, %.v203
  store i64 %1481, i64* %3, align 8
  br i1 %1477, label %block_41d690, label %block_.L_41d695

block_41d690:                                     ; preds = %block_.L_41d669
  %1482 = add i64 %1481, 2511
  br label %block_.L_41e05f

block_.L_41d695:                                  ; preds = %block_.L_41d669
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -32
  %1485 = add i64 %1481, 18
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i64*
  %1487 = load i64, i64* %1486, align 8
  %1488 = add i64 %1487, 80
  store i64 %1488, i64* %RCX.i1915, align 8
  %1489 = icmp ugt i64 %1487, -81
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %14, align 1
  %1491 = trunc i64 %1488 to i32
  %1492 = and i32 %1491, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %21, align 1
  %1497 = xor i64 %1487, 16
  %1498 = xor i64 %1497, %1488
  %1499 = lshr i64 %1498, 4
  %1500 = trunc i64 %1499 to i8
  %1501 = and i8 %1500, 1
  store i8 %1501, i8* %27, align 1
  %1502 = icmp eq i64 %1488, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %30, align 1
  %1504 = lshr i64 %1488, 63
  %1505 = trunc i64 %1504 to i8
  store i8 %1505, i8* %33, align 1
  %1506 = lshr i64 %1487, 63
  %1507 = xor i64 %1504, %1506
  %1508 = add nuw nsw i64 %1507, %1504
  %1509 = icmp eq i64 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %39, align 1
  %1511 = add i64 %1483, -16
  %1512 = add i64 %1481, 26
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i64*
  %1514 = load i64, i64* %1513, align 8
  store i64 %1514, i64* %RDI.i1946, align 8
  %1515 = add i64 %1481, 29
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  %1518 = add i64 %1483, -104
  %1519 = add i64 %1481, 33
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  store i64 %1517, i64* %1520, align 8
  %1521 = load i64, i64* %RCX.i1915, align 8
  %1522 = load i64, i64* %3, align 8
  store i64 %1521, i64* %RDI.i1946, align 8
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -104
  %1525 = add i64 %1522, 7
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i64*
  %1527 = load i64, i64* %1526, align 8
  store i64 %1527, i64* %RCX.i1915, align 8
  %1528 = add i64 %1522, -115366
  %1529 = add i64 %1522, 12
  %1530 = load i64, i64* %6, align 8
  %1531 = add i64 %1530, -8
  %1532 = inttoptr i64 %1531 to i64*
  store i64 %1529, i64* %1532, align 8
  store i64 %1531, i64* %6, align 8
  store i64 %1528, i64* %3, align 8
  %call2_41d6bd = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1528, %struct.Memory* %call2_41d682)
  %1533 = load i64, i64* %RAX.i1926, align 8
  %1534 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1535 = trunc i64 %1533 to i32
  %1536 = and i32 %1535, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1541 = icmp eq i64 %1533, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %30, align 1
  %1543 = lshr i64 %1533, 63
  %1544 = trunc i64 %1543 to i8
  store i8 %1544, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v204 = select i1 %1541, i64 10, i64 15
  %1545 = add i64 %1534, %.v204
  store i64 %1545, i64* %3, align 8
  br i1 %1541, label %block_41d6cc, label %block_.L_41d6d1

block_41d6cc:                                     ; preds = %block_.L_41d695
  %1546 = add i64 %1545, 2451
  br label %block_.L_41e05f

block_.L_41d6d1:                                  ; preds = %block_.L_41d695
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -16
  %1549 = add i64 %1545, 4
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i64*
  %1551 = load i64, i64* %1550, align 8
  store i64 %1551, i64* %RAX.i1926, align 8
  %1552 = add i64 %1551, 28
  %1553 = add i64 %1545, 8
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  store i8 0, i8* %14, align 1
  %1556 = and i32 %1555, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1561 = icmp eq i32 %1555, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %30, align 1
  %1563 = lshr i32 %1555, 31
  %1564 = trunc i32 %1563 to i8
  store i8 %1564, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v205 = select i1 %1561, i64 35, i64 14
  %1565 = add i64 %1545, %.v205
  store i64 %1565, i64* %3, align 8
  br i1 %1561, label %block_.L_41d6f4, label %block_41d6df

block_41d6df:                                     ; preds = %block_.L_41d6d1
  store i64 4, i64* %RSI.i1943, align 8
  %1566 = add i64 %1547, -32
  %1567 = add i64 %1565, 9
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i64*
  %1569 = load i64, i64* %1568, align 8
  %1570 = add i64 %1569, 80
  store i64 %1570, i64* %RAX.i1926, align 8
  %1571 = icmp ugt i64 %1569, -81
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = trunc i64 %1570 to i32
  %1574 = and i32 %1573, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %21, align 1
  %1579 = xor i64 %1569, 16
  %1580 = xor i64 %1579, %1570
  %1581 = lshr i64 %1580, 4
  %1582 = trunc i64 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %27, align 1
  %1584 = icmp eq i64 %1570, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %30, align 1
  %1586 = lshr i64 %1570, 63
  %1587 = trunc i64 %1586 to i8
  store i8 %1587, i8* %33, align 1
  %1588 = lshr i64 %1569, 63
  %1589 = xor i64 %1586, %1588
  %1590 = add nuw nsw i64 %1589, %1586
  %1591 = icmp eq i64 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %39, align 1
  store i64 %1570, i64* %RDI.i1946, align 8
  %1593 = add i64 %1565, 19617
  %1594 = add i64 %1565, 21
  %1595 = load i64, i64* %6, align 8
  %1596 = add i64 %1595, -8
  %1597 = inttoptr i64 %1596 to i64*
  store i64 %1594, i64* %1597, align 8
  store i64 %1596, i64* %6, align 8
  store i64 %1593, i64* %3, align 8
  %call2_41d6ef = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1593, %struct.Memory* %call2_41d6bd)
  %.pre137 = load i64, i64* %RBP.i, align 8
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_41d6f4

block_.L_41d6f4:                                  ; preds = %block_41d6df, %block_.L_41d6d1
  %1598 = phi i64 [ %1565, %block_.L_41d6d1 ], [ %.pre138, %block_41d6df ]
  %1599 = phi i64 [ %1547, %block_.L_41d6d1 ], [ %.pre137, %block_41d6df ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_41d6bd, %block_.L_41d6d1 ], [ %call2_41d6ef, %block_41d6df ]
  %1600 = add i64 %1599, -32
  %1601 = add i64 %1598, 4
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i1926, align 8
  %1604 = add i64 %1603, 456
  %1605 = add i64 %1598, 10
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = and i32 %1607, 1024
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1610 = icmp eq i32 %1608, 0
  %.lobit170 = lshr exact i32 %1608, 10
  %1611 = trunc i32 %.lobit170 to i8
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v206 = select i1 %1610, i64 206, i64 25
  %1613 = add i64 %1598, %.v206
  store i64 %1613, i64* %3, align 8
  br i1 %1610, label %block_.L_41d7c2, label %block_41d70d

block_41d70d:                                     ; preds = %block_.L_41d6f4
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1614 = add i64 %1613, 18
  store i64 %1614, i64* %3, align 8
  %1615 = load i64, i64* %1602, align 8
  %1616 = add i64 %1615, 112
  store i64 %1616, i64* %RCX.i1915, align 8
  %1617 = icmp ugt i64 %1615, -113
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = trunc i64 %1616 to i32
  %1620 = and i32 %1619, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  %1625 = xor i64 %1615, 16
  %1626 = xor i64 %1625, %1616
  %1627 = lshr i64 %1626, 4
  %1628 = trunc i64 %1627 to i8
  %1629 = and i8 %1628, 1
  store i8 %1629, i8* %27, align 1
  %1630 = icmp eq i64 %1616, 0
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %30, align 1
  %1632 = lshr i64 %1616, 63
  %1633 = trunc i64 %1632 to i8
  store i8 %1633, i8* %33, align 1
  %1634 = lshr i64 %1615, 63
  %1635 = xor i64 %1632, %1634
  %1636 = add nuw nsw i64 %1635, %1632
  %1637 = icmp eq i64 %1636, 2
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %39, align 1
  %1639 = add i64 %1599, -16
  %1640 = add i64 %1613, 26
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RDI.i1946, align 8
  %1643 = add i64 %1613, 29
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i64*
  %1645 = load i64, i64* %1644, align 8
  %1646 = add i64 %1599, -112
  %1647 = add i64 %1613, 33
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i64*
  store i64 %1645, i64* %1648, align 8
  %1649 = load i64, i64* %RCX.i1915, align 8
  %1650 = load i64, i64* %3, align 8
  store i64 %1649, i64* %RDI.i1946, align 8
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -112
  %1653 = add i64 %1650, 7
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RCX.i1915, align 8
  %1656 = add i64 %1650, -115486
  %1657 = add i64 %1650, 12
  %1658 = load i64, i64* %6, align 8
  %1659 = add i64 %1658, -8
  %1660 = inttoptr i64 %1659 to i64*
  store i64 %1657, i64* %1660, align 8
  store i64 %1659, i64* %6, align 8
  store i64 %1656, i64* %3, align 8
  %call2_41d735 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1656, %struct.Memory* %MEMORY.14)
  %1661 = load i64, i64* %RAX.i1926, align 8
  %1662 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1663 = trunc i64 %1661 to i32
  %1664 = and i32 %1663, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1669 = icmp eq i64 %1661, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %30, align 1
  %1671 = lshr i64 %1661, 63
  %1672 = trunc i64 %1671 to i8
  store i8 %1672, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v207 = select i1 %1669, i64 10, i64 15
  %1673 = add i64 %1662, %.v207
  store i64 %1673, i64* %3, align 8
  br i1 %1669, label %block_41d744, label %block_.L_41d749

block_41d744:                                     ; preds = %block_41d70d
  %1674 = add i64 %1673, 2331
  br label %block_.L_41e05f

block_.L_41d749:                                  ; preds = %block_41d70d
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -32
  %1677 = add i64 %1673, 18
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i64*
  %1679 = load i64, i64* %1678, align 8
  %1680 = add i64 %1679, 116
  store i64 %1680, i64* %RCX.i1915, align 8
  %1681 = icmp ugt i64 %1679, -117
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %14, align 1
  %1683 = trunc i64 %1680 to i32
  %1684 = and i32 %1683, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %21, align 1
  %1689 = xor i64 %1679, 16
  %1690 = xor i64 %1689, %1680
  %1691 = lshr i64 %1690, 4
  %1692 = trunc i64 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %27, align 1
  %1694 = icmp eq i64 %1680, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %30, align 1
  %1696 = lshr i64 %1680, 63
  %1697 = trunc i64 %1696 to i8
  store i8 %1697, i8* %33, align 1
  %1698 = lshr i64 %1679, 63
  %1699 = xor i64 %1696, %1698
  %1700 = add nuw nsw i64 %1699, %1696
  %1701 = icmp eq i64 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %39, align 1
  %1703 = add i64 %1675, -16
  %1704 = add i64 %1673, 26
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RDI.i1946, align 8
  %1707 = add i64 %1673, 29
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i64*
  %1709 = load i64, i64* %1708, align 8
  %1710 = add i64 %1675, -120
  %1711 = add i64 %1673, 33
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i64*
  store i64 %1709, i64* %1712, align 8
  %1713 = load i64, i64* %RCX.i1915, align 8
  %1714 = load i64, i64* %3, align 8
  store i64 %1713, i64* %RDI.i1946, align 8
  %1715 = load i64, i64* %RBP.i, align 8
  %1716 = add i64 %1715, -120
  %1717 = add i64 %1714, 7
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i64*
  %1719 = load i64, i64* %1718, align 8
  store i64 %1719, i64* %RCX.i1915, align 8
  %1720 = add i64 %1714, -115546
  %1721 = add i64 %1714, 12
  %1722 = load i64, i64* %6, align 8
  %1723 = add i64 %1722, -8
  %1724 = inttoptr i64 %1723 to i64*
  store i64 %1721, i64* %1724, align 8
  store i64 %1723, i64* %6, align 8
  store i64 %1720, i64* %3, align 8
  %call2_41d771 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1720, %struct.Memory* %call2_41d735)
  %1725 = load i64, i64* %RAX.i1926, align 8
  %1726 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1727 = trunc i64 %1725 to i32
  %1728 = and i32 %1727, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1733 = icmp eq i64 %1725, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %30, align 1
  %1735 = lshr i64 %1725, 63
  %1736 = trunc i64 %1735 to i8
  store i8 %1736, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v208 = select i1 %1733, i64 10, i64 15
  %1737 = add i64 %1726, %.v208
  store i64 %1737, i64* %3, align 8
  br i1 %1733, label %block_41d780, label %block_.L_41d785

block_41d780:                                     ; preds = %block_.L_41d749
  %1738 = add i64 %1737, 2271
  br label %block_.L_41e05f

block_.L_41d785:                                  ; preds = %block_.L_41d749
  %1739 = load i64, i64* %RBP.i, align 8
  %1740 = add i64 %1739, -16
  %1741 = add i64 %1737, 4
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i64*
  %1743 = load i64, i64* %1742, align 8
  store i64 %1743, i64* %RAX.i1926, align 8
  %1744 = add i64 %1743, 28
  %1745 = add i64 %1737, 8
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  store i8 0, i8* %14, align 1
  %1748 = and i32 %1747, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1753 = icmp eq i32 %1747, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %30, align 1
  %1755 = lshr i32 %1747, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %1753, i64 56, i64 14
  %1757 = add i64 %1737, %.v209
  store i64 %1757, i64* %3, align 8
  br i1 %1753, label %block_.L_41d7bd, label %block_41d793

block_41d793:                                     ; preds = %block_.L_41d785
  store i64 4, i64* %RSI.i1943, align 8
  %1758 = add i64 %1739, -32
  %1759 = add i64 %1757, 9
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  %1762 = add i64 %1761, 112
  store i64 %1762, i64* %RAX.i1926, align 8
  %1763 = icmp ugt i64 %1761, -113
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = trunc i64 %1762 to i32
  %1766 = and i32 %1765, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %21, align 1
  %1771 = xor i64 %1761, 16
  %1772 = xor i64 %1771, %1762
  %1773 = lshr i64 %1772, 4
  %1774 = trunc i64 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %27, align 1
  %1776 = icmp eq i64 %1762, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %30, align 1
  %1778 = lshr i64 %1762, 63
  %1779 = trunc i64 %1778 to i8
  store i8 %1779, i8* %33, align 1
  %1780 = lshr i64 %1761, 63
  %1781 = xor i64 %1778, %1780
  %1782 = add nuw nsw i64 %1781, %1778
  %1783 = icmp eq i64 %1782, 2
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %39, align 1
  store i64 %1762, i64* %RDI.i1946, align 8
  %1785 = add i64 %1757, 19437
  %1786 = add i64 %1757, 21
  %1787 = load i64, i64* %6, align 8
  %1788 = add i64 %1787, -8
  %1789 = inttoptr i64 %1788 to i64*
  store i64 %1786, i64* %1789, align 8
  store i64 %1788, i64* %6, align 8
  store i64 %1785, i64* %3, align 8
  %call2_41d7a3 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1785, %struct.Memory* %call2_41d771)
  %1790 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -32
  %1793 = add i64 %1790, 9
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  %1796 = add i64 %1795, 116
  store i64 %1796, i64* %RAX.i1926, align 8
  %1797 = icmp ugt i64 %1795, -117
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %14, align 1
  %1799 = trunc i64 %1796 to i32
  %1800 = and i32 %1799, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i64 %1795, 16
  %1806 = xor i64 %1805, %1796
  %1807 = lshr i64 %1806, 4
  %1808 = trunc i64 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %27, align 1
  %1810 = icmp eq i64 %1796, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %30, align 1
  %1812 = lshr i64 %1796, 63
  %1813 = trunc i64 %1812 to i8
  store i8 %1813, i8* %33, align 1
  %1814 = lshr i64 %1795, 63
  %1815 = xor i64 %1812, %1814
  %1816 = add nuw nsw i64 %1815, %1812
  %1817 = icmp eq i64 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %39, align 1
  store i64 %1796, i64* %RDI.i1946, align 8
  %1819 = add i64 %1790, 19416
  %1820 = add i64 %1790, 21
  %1821 = load i64, i64* %6, align 8
  %1822 = add i64 %1821, -8
  %1823 = inttoptr i64 %1822 to i64*
  store i64 %1820, i64* %1823, align 8
  store i64 %1822, i64* %6, align 8
  store i64 %1819, i64* %3, align 8
  %call2_41d7b8 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %1819, %struct.Memory* %call2_41d7a3)
  %.pre139 = load i64, i64* %3, align 8
  %.pre140.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d7bd

block_.L_41d7bd:                                  ; preds = %block_41d793, %block_.L_41d785
  %.pre140 = phi i64 [ %1739, %block_.L_41d785 ], [ %.pre140.pre, %block_41d793 ]
  %1824 = phi i64 [ %1757, %block_.L_41d785 ], [ %.pre139, %block_41d793 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_41d771, %block_.L_41d785 ], [ %call2_41d7b8, %block_41d793 ]
  %1825 = add i64 %1824, 5
  store i64 %1825, i64* %3, align 8
  br label %block_.L_41d7c2

block_.L_41d7c2:                                  ; preds = %block_.L_41d7bd, %block_.L_41d6f4
  %1826 = phi i64 [ %1613, %block_.L_41d6f4 ], [ %1825, %block_.L_41d7bd ]
  %1827 = phi i64 [ %1599, %block_.L_41d6f4 ], [ %.pre140, %block_.L_41d7bd ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_41d6f4 ], [ %MEMORY.15, %block_.L_41d7bd ]
  %1828 = add i64 %1827, -32
  %1829 = add i64 %1826, 4
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RAX.i1926, align 8
  %1832 = add i64 %1831, 456
  %1833 = add i64 %1826, 10
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = and i32 %1835, 2048
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1838 = icmp eq i32 %1836, 0
  %.lobit171 = lshr exact i32 %1836, 11
  %1839 = trunc i32 %.lobit171 to i8
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v210 = select i1 %1838, i64 212, i64 25
  %1841 = add i64 %1826, %.v210
  store i64 %1841, i64* %3, align 8
  br i1 %1838, label %block_.L_41d896, label %block_41d7db

block_41d7db:                                     ; preds = %block_.L_41d7c2
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1842 = add i64 %1841, 18
  store i64 %1842, i64* %3, align 8
  %1843 = load i64, i64* %1830, align 8
  %1844 = add i64 %1843, 120
  store i64 %1844, i64* %RCX.i1915, align 8
  %1845 = icmp ugt i64 %1843, -121
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %14, align 1
  %1847 = trunc i64 %1844 to i32
  %1848 = and i32 %1847, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = xor i64 %1843, 16
  %1854 = xor i64 %1853, %1844
  %1855 = lshr i64 %1854, 4
  %1856 = trunc i64 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %27, align 1
  %1858 = icmp eq i64 %1844, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %30, align 1
  %1860 = lshr i64 %1844, 63
  %1861 = trunc i64 %1860 to i8
  store i8 %1861, i8* %33, align 1
  %1862 = lshr i64 %1843, 63
  %1863 = xor i64 %1860, %1862
  %1864 = add nuw nsw i64 %1863, %1860
  %1865 = icmp eq i64 %1864, 2
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %39, align 1
  %1867 = add i64 %1827, -16
  %1868 = add i64 %1841, 26
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RDI.i1946, align 8
  %1871 = add i64 %1841, 29
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  %1874 = add i64 %1827, -128
  %1875 = add i64 %1841, 33
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i64*
  store i64 %1873, i64* %1876, align 8
  %1877 = load i64, i64* %RCX.i1915, align 8
  %1878 = load i64, i64* %3, align 8
  store i64 %1877, i64* %RDI.i1946, align 8
  %1879 = load i64, i64* %RBP.i, align 8
  %1880 = add i64 %1879, -128
  %1881 = add i64 %1878, 7
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %RCX.i1915, align 8
  %1884 = add i64 %1878, -115692
  %1885 = add i64 %1878, 12
  %1886 = load i64, i64* %6, align 8
  %1887 = add i64 %1886, -8
  %1888 = inttoptr i64 %1887 to i64*
  store i64 %1885, i64* %1888, align 8
  store i64 %1887, i64* %6, align 8
  store i64 %1884, i64* %3, align 8
  %call2_41d803 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1884, %struct.Memory* %MEMORY.16)
  %1889 = load i64, i64* %RAX.i1926, align 8
  %1890 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1891 = trunc i64 %1889 to i32
  %1892 = and i32 %1891, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1897 = icmp eq i64 %1889, 0
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %30, align 1
  %1899 = lshr i64 %1889, 63
  %1900 = trunc i64 %1899 to i8
  store i8 %1900, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v211 = select i1 %1897, i64 10, i64 15
  %1901 = add i64 %1890, %.v211
  store i64 %1901, i64* %3, align 8
  br i1 %1897, label %block_41d812, label %block_.L_41d817

block_41d812:                                     ; preds = %block_41d7db
  %1902 = add i64 %1901, 2125
  br label %block_.L_41e05f

block_.L_41d817:                                  ; preds = %block_41d7db
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %1903 = load i64, i64* %RBP.i, align 8
  %1904 = add i64 %1903, -32
  %1905 = add i64 %1901, 18
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i64*
  %1907 = load i64, i64* %1906, align 8
  %1908 = add i64 %1907, 124
  store i64 %1908, i64* %RCX.i1915, align 8
  %1909 = icmp ugt i64 %1907, -125
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %14, align 1
  %1911 = trunc i64 %1908 to i32
  %1912 = and i32 %1911, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %21, align 1
  %1917 = xor i64 %1907, 16
  %1918 = xor i64 %1917, %1908
  %1919 = lshr i64 %1918, 4
  %1920 = trunc i64 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i64 %1908, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i64 %1908, 63
  %1925 = trunc i64 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i64 %1907, 63
  %1927 = xor i64 %1924, %1926
  %1928 = add nuw nsw i64 %1927, %1924
  %1929 = icmp eq i64 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = add i64 %1903, -16
  %1932 = add i64 %1901, 26
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i64*
  %1934 = load i64, i64* %1933, align 8
  store i64 %1934, i64* %RDI.i1946, align 8
  %1935 = add i64 %1901, 29
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i64*
  %1937 = load i64, i64* %1936, align 8
  %1938 = add i64 %1903, -136
  %1939 = add i64 %1901, 36
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i64*
  store i64 %1937, i64* %1940, align 8
  %1941 = load i64, i64* %RCX.i1915, align 8
  %1942 = load i64, i64* %3, align 8
  store i64 %1941, i64* %RDI.i1946, align 8
  %1943 = load i64, i64* %RBP.i, align 8
  %1944 = add i64 %1943, -136
  %1945 = add i64 %1942, 10
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RCX.i1915, align 8
  %1948 = add i64 %1942, -115755
  %1949 = add i64 %1942, 15
  %1950 = load i64, i64* %6, align 8
  %1951 = add i64 %1950, -8
  %1952 = inttoptr i64 %1951 to i64*
  store i64 %1949, i64* %1952, align 8
  store i64 %1951, i64* %6, align 8
  store i64 %1948, i64* %3, align 8
  %call2_41d845 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1948, %struct.Memory* %call2_41d803)
  %1953 = load i64, i64* %RAX.i1926, align 8
  %1954 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1955 = trunc i64 %1953 to i32
  %1956 = and i32 %1955, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1961 = icmp eq i64 %1953, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %30, align 1
  %1963 = lshr i64 %1953, 63
  %1964 = trunc i64 %1963 to i8
  store i8 %1964, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v212 = select i1 %1961, i64 10, i64 15
  %1965 = add i64 %1954, %.v212
  store i64 %1965, i64* %3, align 8
  br i1 %1961, label %block_41d854, label %block_.L_41d859

block_41d854:                                     ; preds = %block_.L_41d817
  %1966 = add i64 %1965, 2059
  br label %block_.L_41e05f

block_.L_41d859:                                  ; preds = %block_.L_41d817
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -16
  %1969 = add i64 %1965, 4
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %RAX.i1926, align 8
  %1972 = add i64 %1971, 28
  %1973 = add i64 %1965, 8
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  store i8 0, i8* %14, align 1
  %1976 = and i32 %1975, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1981 = icmp eq i32 %1975, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %30, align 1
  %1983 = lshr i32 %1975, 31
  %1984 = trunc i32 %1983 to i8
  store i8 %1984, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v213 = select i1 %1981, i64 56, i64 14
  %1985 = add i64 %1965, %.v213
  store i64 %1985, i64* %3, align 8
  br i1 %1981, label %block_.L_41d891, label %block_41d867

block_41d867:                                     ; preds = %block_.L_41d859
  store i64 4, i64* %RSI.i1943, align 8
  %1986 = add i64 %1967, -32
  %1987 = add i64 %1985, 9
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i64*
  %1989 = load i64, i64* %1988, align 8
  %1990 = add i64 %1989, 120
  store i64 %1990, i64* %RAX.i1926, align 8
  %1991 = icmp ugt i64 %1989, -121
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %14, align 1
  %1993 = trunc i64 %1990 to i32
  %1994 = and i32 %1993, 255
  %1995 = tail call i32 @llvm.ctpop.i32(i32 %1994)
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  %1998 = xor i8 %1997, 1
  store i8 %1998, i8* %21, align 1
  %1999 = xor i64 %1989, 16
  %2000 = xor i64 %1999, %1990
  %2001 = lshr i64 %2000, 4
  %2002 = trunc i64 %2001 to i8
  %2003 = and i8 %2002, 1
  store i8 %2003, i8* %27, align 1
  %2004 = icmp eq i64 %1990, 0
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %30, align 1
  %2006 = lshr i64 %1990, 63
  %2007 = trunc i64 %2006 to i8
  store i8 %2007, i8* %33, align 1
  %2008 = lshr i64 %1989, 63
  %2009 = xor i64 %2006, %2008
  %2010 = add nuw nsw i64 %2009, %2006
  %2011 = icmp eq i64 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %39, align 1
  store i64 %1990, i64* %RDI.i1946, align 8
  %2013 = add i64 %1985, 19225
  %2014 = add i64 %1985, 21
  %2015 = load i64, i64* %6, align 8
  %2016 = add i64 %2015, -8
  %2017 = inttoptr i64 %2016 to i64*
  store i64 %2014, i64* %2017, align 8
  store i64 %2016, i64* %6, align 8
  store i64 %2013, i64* %3, align 8
  %call2_41d877 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2013, %struct.Memory* %call2_41d845)
  %2018 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %2019 = load i64, i64* %RBP.i, align 8
  %2020 = add i64 %2019, -32
  %2021 = add i64 %2018, 9
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i64*
  %2023 = load i64, i64* %2022, align 8
  %2024 = add i64 %2023, 124
  store i64 %2024, i64* %RAX.i1926, align 8
  %2025 = icmp ugt i64 %2023, -125
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %14, align 1
  %2027 = trunc i64 %2024 to i32
  %2028 = and i32 %2027, 255
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %21, align 1
  %2033 = xor i64 %2023, 16
  %2034 = xor i64 %2033, %2024
  %2035 = lshr i64 %2034, 4
  %2036 = trunc i64 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %27, align 1
  %2038 = icmp eq i64 %2024, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %30, align 1
  %2040 = lshr i64 %2024, 63
  %2041 = trunc i64 %2040 to i8
  store i8 %2041, i8* %33, align 1
  %2042 = lshr i64 %2023, 63
  %2043 = xor i64 %2040, %2042
  %2044 = add nuw nsw i64 %2043, %2040
  %2045 = icmp eq i64 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %39, align 1
  store i64 %2024, i64* %RDI.i1946, align 8
  %2047 = add i64 %2018, 19204
  %2048 = add i64 %2018, 21
  %2049 = load i64, i64* %6, align 8
  %2050 = add i64 %2049, -8
  %2051 = inttoptr i64 %2050 to i64*
  store i64 %2048, i64* %2051, align 8
  store i64 %2050, i64* %6, align 8
  store i64 %2047, i64* %3, align 8
  %call2_41d88c = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2047, %struct.Memory* %call2_41d877)
  %.pre141 = load i64, i64* %3, align 8
  %.pre142.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d891

block_.L_41d891:                                  ; preds = %block_41d867, %block_.L_41d859
  %.pre142 = phi i64 [ %1967, %block_.L_41d859 ], [ %.pre142.pre, %block_41d867 ]
  %2052 = phi i64 [ %1985, %block_.L_41d859 ], [ %.pre141, %block_41d867 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_41d845, %block_.L_41d859 ], [ %call2_41d88c, %block_41d867 ]
  %2053 = add i64 %2052, 5
  store i64 %2053, i64* %3, align 8
  br label %block_.L_41d896

block_.L_41d896:                                  ; preds = %block_.L_41d891, %block_.L_41d7c2
  %2054 = phi i64 [ %1841, %block_.L_41d7c2 ], [ %2053, %block_.L_41d891 ]
  %2055 = phi i64 [ %1827, %block_.L_41d7c2 ], [ %.pre142, %block_.L_41d891 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_.L_41d7c2 ], [ %MEMORY.17, %block_.L_41d891 ]
  %2056 = add i64 %2055, -32
  %2057 = add i64 %2054, 4
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  store i64 %2059, i64* %RAX.i1926, align 8
  %2060 = add i64 %2059, 456
  %2061 = add i64 %2054, 10
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = and i32 %2063, 4096
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2066 = icmp eq i32 %2064, 0
  %.lobit172 = lshr exact i32 %2064, 12
  %2067 = trunc i32 %.lobit172 to i8
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v214 = select i1 %2066, i64 228, i64 25
  %2069 = add i64 %2054, %.v214
  store i64 %2069, i64* %3, align 8
  br i1 %2066, label %block_.L_41d97a, label %block_41d8af

block_41d8af:                                     ; preds = %block_.L_41d896
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2070 = add i64 %2069, 18
  store i64 %2070, i64* %3, align 8
  %2071 = load i64, i64* %2058, align 8
  %2072 = add i64 %2071, 128
  store i64 %2072, i64* %RCX.i1915, align 8
  %2073 = icmp ugt i64 %2071, -129
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %14, align 1
  %2075 = trunc i64 %2072 to i32
  %2076 = and i32 %2075, 255
  %2077 = tail call i32 @llvm.ctpop.i32(i32 %2076)
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = xor i8 %2079, 1
  store i8 %2080, i8* %21, align 1
  %2081 = xor i64 %2072, %2071
  %2082 = lshr i64 %2081, 4
  %2083 = trunc i64 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %27, align 1
  %2085 = icmp eq i64 %2072, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %30, align 1
  %2087 = lshr i64 %2072, 63
  %2088 = trunc i64 %2087 to i8
  store i8 %2088, i8* %33, align 1
  %2089 = lshr i64 %2071, 63
  %2090 = xor i64 %2087, %2089
  %2091 = add nuw nsw i64 %2090, %2087
  %2092 = icmp eq i64 %2091, 2
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %39, align 1
  %2094 = add i64 %2055, -16
  %2095 = add i64 %2069, 29
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i64*
  %2097 = load i64, i64* %2096, align 8
  store i64 %2097, i64* %RDI.i1946, align 8
  %2098 = add i64 %2069, 32
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i64*
  %2100 = load i64, i64* %2099, align 8
  %2101 = add i64 %2055, -144
  %2102 = add i64 %2069, 39
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i64*
  store i64 %2100, i64* %2103, align 8
  %2104 = load i64, i64* %RCX.i1915, align 8
  %2105 = load i64, i64* %3, align 8
  store i64 %2104, i64* %RDI.i1946, align 8
  %2106 = load i64, i64* %RBP.i, align 8
  %2107 = add i64 %2106, -144
  %2108 = add i64 %2105, 10
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %RCX.i1915, align 8
  %2111 = add i64 %2105, -115910
  %2112 = add i64 %2105, 15
  %2113 = load i64, i64* %6, align 8
  %2114 = add i64 %2113, -8
  %2115 = inttoptr i64 %2114 to i64*
  store i64 %2112, i64* %2115, align 8
  store i64 %2114, i64* %6, align 8
  store i64 %2111, i64* %3, align 8
  %call2_41d8e0 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2111, %struct.Memory* %MEMORY.18)
  %2116 = load i64, i64* %RAX.i1926, align 8
  %2117 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2118 = trunc i64 %2116 to i32
  %2119 = and i32 %2118, 255
  %2120 = tail call i32 @llvm.ctpop.i32(i32 %2119)
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  %2123 = xor i8 %2122, 1
  store i8 %2123, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2124 = icmp eq i64 %2116, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %30, align 1
  %2126 = lshr i64 %2116, 63
  %2127 = trunc i64 %2126 to i8
  store i8 %2127, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v215 = select i1 %2124, i64 10, i64 15
  %2128 = add i64 %2117, %.v215
  store i64 %2128, i64* %3, align 8
  br i1 %2124, label %block_41d8ef, label %block_.L_41d8f4

block_41d8ef:                                     ; preds = %block_41d8af
  %2129 = add i64 %2128, 1904
  br label %block_.L_41e05f

block_.L_41d8f4:                                  ; preds = %block_41d8af
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -32
  %2132 = add i64 %2128, 18
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  %2135 = add i64 %2134, 132
  store i64 %2135, i64* %RCX.i1915, align 8
  %2136 = icmp ugt i64 %2134, -133
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %14, align 1
  %2138 = trunc i64 %2135 to i32
  %2139 = and i32 %2138, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %21, align 1
  %2144 = xor i64 %2135, %2134
  %2145 = lshr i64 %2144, 4
  %2146 = trunc i64 %2145 to i8
  %2147 = and i8 %2146, 1
  store i8 %2147, i8* %27, align 1
  %2148 = icmp eq i64 %2135, 0
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %30, align 1
  %2150 = lshr i64 %2135, 63
  %2151 = trunc i64 %2150 to i8
  store i8 %2151, i8* %33, align 1
  %2152 = lshr i64 %2134, 63
  %2153 = xor i64 %2150, %2152
  %2154 = add nuw nsw i64 %2153, %2150
  %2155 = icmp eq i64 %2154, 2
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %39, align 1
  %2157 = add i64 %2130, -16
  %2158 = add i64 %2128, 29
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i64*
  %2160 = load i64, i64* %2159, align 8
  store i64 %2160, i64* %RDI.i1946, align 8
  %2161 = add i64 %2128, 32
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i64*
  %2163 = load i64, i64* %2162, align 8
  %2164 = add i64 %2130, -152
  %2165 = add i64 %2128, 39
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i64*
  store i64 %2163, i64* %2166, align 8
  %2167 = load i64, i64* %RCX.i1915, align 8
  %2168 = load i64, i64* %3, align 8
  store i64 %2167, i64* %RDI.i1946, align 8
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -152
  %2171 = add i64 %2168, 10
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i64*
  %2173 = load i64, i64* %2172, align 8
  store i64 %2173, i64* %RCX.i1915, align 8
  %2174 = add i64 %2168, -115979
  %2175 = add i64 %2168, 15
  %2176 = load i64, i64* %6, align 8
  %2177 = add i64 %2176, -8
  %2178 = inttoptr i64 %2177 to i64*
  store i64 %2175, i64* %2178, align 8
  store i64 %2177, i64* %6, align 8
  store i64 %2174, i64* %3, align 8
  %call2_41d925 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2174, %struct.Memory* %call2_41d8e0)
  %2179 = load i64, i64* %RAX.i1926, align 8
  %2180 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2181 = trunc i64 %2179 to i32
  %2182 = and i32 %2181, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2187 = icmp eq i64 %2179, 0
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %30, align 1
  %2189 = lshr i64 %2179, 63
  %2190 = trunc i64 %2189 to i8
  store i8 %2190, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v216 = select i1 %2187, i64 10, i64 15
  %2191 = add i64 %2180, %.v216
  store i64 %2191, i64* %3, align 8
  br i1 %2187, label %block_41d934, label %block_.L_41d939

block_41d934:                                     ; preds = %block_.L_41d8f4
  %2192 = add i64 %2191, 1835
  br label %block_.L_41e05f

block_.L_41d939:                                  ; preds = %block_.L_41d8f4
  %2193 = load i64, i64* %RBP.i, align 8
  %2194 = add i64 %2193, -16
  %2195 = add i64 %2191, 4
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i64*
  %2197 = load i64, i64* %2196, align 8
  store i64 %2197, i64* %RAX.i1926, align 8
  %2198 = add i64 %2197, 28
  %2199 = add i64 %2191, 8
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  store i8 0, i8* %14, align 1
  %2202 = and i32 %2201, 255
  %2203 = tail call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2207 = icmp eq i32 %2201, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %30, align 1
  %2209 = lshr i32 %2201, 31
  %2210 = trunc i32 %2209 to i8
  store i8 %2210, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v217 = select i1 %2207, i64 60, i64 14
  %2211 = add i64 %2191, %.v217
  store i64 %2211, i64* %3, align 8
  br i1 %2207, label %block_.L_41d975, label %block_41d947

block_41d947:                                     ; preds = %block_.L_41d939
  store i64 4, i64* %RSI.i1943, align 8
  %2212 = add i64 %2193, -32
  %2213 = add i64 %2211, 9
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i64*
  %2215 = load i64, i64* %2214, align 8
  %2216 = add i64 %2215, 128
  store i64 %2216, i64* %RAX.i1926, align 8
  %2217 = icmp ugt i64 %2215, -129
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %14, align 1
  %2219 = trunc i64 %2216 to i32
  %2220 = and i32 %2219, 255
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  %2225 = xor i64 %2216, %2215
  %2226 = lshr i64 %2225, 4
  %2227 = trunc i64 %2226 to i8
  %2228 = and i8 %2227, 1
  store i8 %2228, i8* %27, align 1
  %2229 = icmp eq i64 %2216, 0
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %30, align 1
  %2231 = lshr i64 %2216, 63
  %2232 = trunc i64 %2231 to i8
  store i8 %2232, i8* %33, align 1
  %2233 = lshr i64 %2215, 63
  %2234 = xor i64 %2231, %2233
  %2235 = add nuw nsw i64 %2234, %2231
  %2236 = icmp eq i64 %2235, 2
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %39, align 1
  store i64 %2216, i64* %RDI.i1946, align 8
  %2238 = add i64 %2211, 19001
  %2239 = add i64 %2211, 23
  %2240 = load i64, i64* %6, align 8
  %2241 = add i64 %2240, -8
  %2242 = inttoptr i64 %2241 to i64*
  store i64 %2239, i64* %2242, align 8
  store i64 %2241, i64* %6, align 8
  store i64 %2238, i64* %3, align 8
  %call2_41d959 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2238, %struct.Memory* %call2_41d925)
  %2243 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %2244 = load i64, i64* %RBP.i, align 8
  %2245 = add i64 %2244, -32
  %2246 = add i64 %2243, 9
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i64*
  %2248 = load i64, i64* %2247, align 8
  %2249 = add i64 %2248, 132
  store i64 %2249, i64* %RAX.i1926, align 8
  %2250 = icmp ugt i64 %2248, -133
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %14, align 1
  %2252 = trunc i64 %2249 to i32
  %2253 = and i32 %2252, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %21, align 1
  %2258 = xor i64 %2249, %2248
  %2259 = lshr i64 %2258, 4
  %2260 = trunc i64 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %27, align 1
  %2262 = icmp eq i64 %2249, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %30, align 1
  %2264 = lshr i64 %2249, 63
  %2265 = trunc i64 %2264 to i8
  store i8 %2265, i8* %33, align 1
  %2266 = lshr i64 %2248, 63
  %2267 = xor i64 %2264, %2266
  %2268 = add nuw nsw i64 %2267, %2264
  %2269 = icmp eq i64 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %39, align 1
  store i64 %2249, i64* %RDI.i1946, align 8
  %2271 = add i64 %2243, 18978
  %2272 = add i64 %2243, 23
  %2273 = load i64, i64* %6, align 8
  %2274 = add i64 %2273, -8
  %2275 = inttoptr i64 %2274 to i64*
  store i64 %2272, i64* %2275, align 8
  store i64 %2274, i64* %6, align 8
  store i64 %2271, i64* %3, align 8
  %call2_41d970 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2271, %struct.Memory* %call2_41d959)
  %.pre143 = load i64, i64* %3, align 8
  %.pre144.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41d975

block_.L_41d975:                                  ; preds = %block_41d947, %block_.L_41d939
  %.pre144 = phi i64 [ %2193, %block_.L_41d939 ], [ %.pre144.pre, %block_41d947 ]
  %2276 = phi i64 [ %2211, %block_.L_41d939 ], [ %.pre143, %block_41d947 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_41d925, %block_.L_41d939 ], [ %call2_41d970, %block_41d947 ]
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %3, align 8
  br label %block_.L_41d97a

block_.L_41d97a:                                  ; preds = %block_.L_41d975, %block_.L_41d896
  %2278 = phi i64 [ %2069, %block_.L_41d896 ], [ %2277, %block_.L_41d975 ]
  %2279 = phi i64 [ %2055, %block_.L_41d896 ], [ %.pre144, %block_.L_41d975 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.18, %block_.L_41d896 ], [ %MEMORY.19, %block_.L_41d975 ]
  %2280 = add i64 %2279, -36
  %2281 = add i64 %2278, 7
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  store i32 0, i32* %2282, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_41d981

block_.L_41d981:                                  ; preds = %block_.L_41da3a, %block_.L_41d97a
  %2283 = phi i64 [ %.pre145, %block_.L_41d97a ], [ %2622, %block_.L_41da3a ]
  %2284 = load i64, i64* %RBP.i, align 8
  %2285 = add i64 %2284, -36
  %2286 = add i64 %2283, 4
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = add i32 %2288, -4
  %2290 = icmp ult i32 %2288, 4
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %14, align 1
  %2292 = and i32 %2289, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292)
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %21, align 1
  %2297 = xor i32 %2289, %2288
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  store i8 %2300, i8* %27, align 1
  %2301 = icmp eq i32 %2289, 0
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %30, align 1
  %2303 = lshr i32 %2289, 31
  %2304 = trunc i32 %2303 to i8
  store i8 %2304, i8* %33, align 1
  %2305 = lshr i32 %2288, 31
  %2306 = xor i32 %2303, %2305
  %2307 = add nuw nsw i32 %2306, %2305
  %2308 = icmp eq i32 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %39, align 1
  %2310 = icmp ne i8 %2304, 0
  %2311 = xor i1 %2310, %2308
  %.v218 = select i1 %2311, i64 10, i64 204
  %2312 = add i64 %2283, %.v218
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %2313 = add i64 %2312, 12
  store i64 %2313, i64* %3, align 8
  br i1 %2311, label %block_41d98b, label %block_.L_41da4d

block_41d98b:                                     ; preds = %block_.L_41d981
  store i64 2, i64* %RAX.i1926, align 8
  store i64 2, i64* %RDX.i1919, align 8
  %2314 = add i64 %2284, -32
  %2315 = add i64 %2312, 18
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i64*
  %2317 = load i64, i64* %2316, align 8
  %2318 = add i64 %2317, 172
  store i64 %2318, i64* %RCX.i1915, align 8
  %2319 = icmp ugt i64 %2317, -173
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = trunc i64 %2318 to i32
  %2322 = and i32 %2321, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  %2327 = xor i64 %2318, %2317
  %2328 = lshr i64 %2327, 4
  %2329 = trunc i64 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %27, align 1
  %2331 = icmp eq i64 %2318, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %30, align 1
  %2333 = lshr i64 %2318, 63
  %2334 = trunc i64 %2333 to i8
  store i8 %2334, i8* %33, align 1
  %2335 = lshr i64 %2317, 63
  %2336 = xor i64 %2333, %2335
  %2337 = add nuw nsw i64 %2336, %2333
  %2338 = icmp eq i64 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %39, align 1
  %2340 = add i64 %2312, 29
  store i64 %2340, i64* %3, align 8
  %2341 = load i32, i32* %2287, align 4
  %2342 = sext i32 %2341 to i64
  %2343 = shl nsw i64 %2342, 3
  store i64 %2343, i64* %RDI.i1946, align 8
  %2344 = add i64 %2343, %2318
  store i64 %2344, i64* %RCX.i1915, align 8
  %2345 = icmp ult i64 %2344, %2318
  %2346 = icmp ult i64 %2344, %2343
  %2347 = or i1 %2345, %2346
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %14, align 1
  %2349 = trunc i64 %2344 to i32
  %2350 = and i32 %2349, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %21, align 1
  %2355 = xor i64 %2343, %2318
  %2356 = xor i64 %2355, %2344
  %2357 = lshr i64 %2356, 4
  %2358 = trunc i64 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %27, align 1
  %2360 = icmp eq i64 %2344, 0
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %30, align 1
  %2362 = lshr i64 %2344, 63
  %2363 = trunc i64 %2362 to i8
  store i8 %2363, i8* %33, align 1
  %2364 = lshr i64 %2342, 60
  %2365 = and i64 %2364, 1
  %2366 = xor i64 %2362, %2333
  %2367 = xor i64 %2362, %2365
  %2368 = add nuw nsw i64 %2366, %2367
  %2369 = icmp eq i64 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %39, align 1
  %2371 = load i64, i64* %RBP.i, align 8
  %2372 = add i64 %2371, -16
  %2373 = add i64 %2312, 40
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i64*
  %2375 = load i64, i64* %2374, align 8
  store i64 %2375, i64* %RDI.i1946, align 8
  %2376 = add i64 %2312, 43
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  %2379 = add i64 %2371, -160
  %2380 = add i64 %2312, 50
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i64*
  store i64 %2378, i64* %2381, align 8
  %2382 = load i64, i64* %RCX.i1915, align 8
  %2383 = load i64, i64* %3, align 8
  store i64 %2382, i64* %RDI.i1946, align 8
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -160
  %2386 = add i64 %2383, 10
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i64*
  %2388 = load i64, i64* %2387, align 8
  store i64 %2388, i64* %RCX.i1915, align 8
  %2389 = add i64 %2383, -116141
  %2390 = add i64 %2383, 15
  %2391 = load i64, i64* %6, align 8
  %2392 = add i64 %2391, -8
  %2393 = inttoptr i64 %2392 to i64*
  store i64 %2390, i64* %2393, align 8
  store i64 %2392, i64* %6, align 8
  store i64 %2389, i64* %3, align 8
  %call2_41d9c7 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2389, %struct.Memory* %MEMORY.20)
  %2394 = load i64, i64* %RAX.i1926, align 8
  %2395 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2396 = trunc i64 %2394 to i32
  %2397 = and i32 %2396, 255
  %2398 = tail call i32 @llvm.ctpop.i32(i32 %2397)
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  %2401 = xor i8 %2400, 1
  store i8 %2401, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2402 = icmp eq i64 %2394, 0
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %30, align 1
  %2404 = lshr i64 %2394, 63
  %2405 = trunc i64 %2404 to i8
  store i8 %2405, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v242 = select i1 %2402, i64 10, i64 15
  %2406 = add i64 %2395, %.v242
  store i64 %2406, i64* %3, align 8
  br i1 %2402, label %block_41d9d6, label %block_.L_41d9db

block_41d9d6:                                     ; preds = %block_41d98b
  %2407 = add i64 %2406, 1673
  br label %block_.L_41e05f

block_.L_41d9db:                                  ; preds = %block_41d98b
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -16
  %2410 = add i64 %2406, 4
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i64*
  %2412 = load i64, i64* %2411, align 8
  store i64 %2412, i64* %RAX.i1926, align 8
  %2413 = add i64 %2412, 28
  %2414 = add i64 %2406, 8
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  store i8 0, i8* %14, align 1
  %2417 = and i32 %2416, 255
  %2418 = tail call i32 @llvm.ctpop.i32(i32 %2417)
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  %2421 = xor i8 %2420, 1
  store i8 %2421, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2422 = icmp eq i32 %2416, 0
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %30, align 1
  %2424 = lshr i32 %2416, 31
  %2425 = trunc i32 %2424 to i8
  store i8 %2425, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v243 = select i1 %2422, i64 95, i64 14
  %2426 = add i64 %2406, %.v243
  store i64 %2426, i64* %3, align 8
  br i1 %2422, label %block_.L_41da3a, label %block_41d9e9

block_41d9e9:                                     ; preds = %block_.L_41d9db
  %2427 = add i64 %2408, -40
  %2428 = add i64 %2426, 7
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  store i32 0, i32* %2429, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_41d9f0

block_.L_41d9f0:                                  ; preds = %block_41d9fa, %block_41d9e9
  %2430 = phi i64 [ %2590, %block_41d9fa ], [ %.pre159, %block_41d9e9 ]
  %2431 = load i64, i64* %RBP.i, align 8
  %2432 = add i64 %2431, -40
  %2433 = add i64 %2430, 4
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = add i32 %2435, -2
  %2437 = icmp ult i32 %2435, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %14, align 1
  %2439 = and i32 %2436, 255
  %2440 = tail call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  store i8 %2443, i8* %21, align 1
  %2444 = xor i32 %2436, %2435
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  store i8 %2447, i8* %27, align 1
  %2448 = icmp eq i32 %2436, 0
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %30, align 1
  %2450 = lshr i32 %2436, 31
  %2451 = trunc i32 %2450 to i8
  store i8 %2451, i8* %33, align 1
  %2452 = lshr i32 %2435, 31
  %2453 = xor i32 %2450, %2452
  %2454 = add nuw nsw i32 %2453, %2452
  %2455 = icmp eq i32 %2454, 2
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %39, align 1
  %2457 = icmp ne i8 %2451, 0
  %2458 = xor i1 %2457, %2455
  %.v244 = select i1 %2458, i64 10, i64 69
  %2459 = add i64 %2430, %.v244
  %2460 = add i64 %2459, 5
  store i64 %2460, i64* %3, align 8
  br i1 %2458, label %block_41d9fa, label %block_.L_41da3a.loopexit

block_41d9fa:                                     ; preds = %block_.L_41d9f0
  store i64 4, i64* %RSI.i1943, align 8
  %2461 = add i64 %2431, -32
  %2462 = add i64 %2459, 9
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i64*
  %2464 = load i64, i64* %2463, align 8
  %2465 = add i64 %2464, 172
  store i64 %2465, i64* %RAX.i1926, align 8
  %2466 = icmp ugt i64 %2464, -173
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %14, align 1
  %2468 = trunc i64 %2465 to i32
  %2469 = and i32 %2468, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  %2474 = xor i64 %2465, %2464
  %2475 = lshr i64 %2474, 4
  %2476 = trunc i64 %2475 to i8
  %2477 = and i8 %2476, 1
  store i8 %2477, i8* %27, align 1
  %2478 = icmp eq i64 %2465, 0
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %30, align 1
  %2480 = lshr i64 %2465, 63
  %2481 = trunc i64 %2480 to i8
  store i8 %2481, i8* %33, align 1
  %2482 = lshr i64 %2464, 63
  %2483 = xor i64 %2480, %2482
  %2484 = add nuw nsw i64 %2483, %2480
  %2485 = icmp eq i64 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %39, align 1
  %2487 = add i64 %2431, -36
  %2488 = add i64 %2459, 19
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = sext i32 %2490 to i64
  %2492 = shl nsw i64 %2491, 3
  store i64 %2492, i64* %RCX.i1915, align 8
  %2493 = add i64 %2492, %2465
  store i64 %2493, i64* %RAX.i1926, align 8
  %2494 = icmp ult i64 %2493, %2465
  %2495 = icmp ult i64 %2493, %2492
  %2496 = or i1 %2494, %2495
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %14, align 1
  %2498 = trunc i64 %2493 to i32
  %2499 = and i32 %2498, 255
  %2500 = tail call i32 @llvm.ctpop.i32(i32 %2499)
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  store i8 %2503, i8* %21, align 1
  %2504 = xor i64 %2492, %2465
  %2505 = xor i64 %2504, %2493
  %2506 = lshr i64 %2505, 4
  %2507 = trunc i64 %2506 to i8
  %2508 = and i8 %2507, 1
  store i8 %2508, i8* %27, align 1
  %2509 = icmp eq i64 %2493, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %30, align 1
  %2511 = lshr i64 %2493, 63
  %2512 = trunc i64 %2511 to i8
  store i8 %2512, i8* %33, align 1
  %2513 = lshr i64 %2491, 60
  %2514 = and i64 %2513, 1
  %2515 = xor i64 %2511, %2480
  %2516 = xor i64 %2511, %2514
  %2517 = add nuw nsw i64 %2515, %2516
  %2518 = icmp eq i64 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %39, align 1
  %2520 = load i64, i64* %RBP.i, align 8
  %2521 = add i64 %2520, -40
  %2522 = add i64 %2459, 30
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = sext i32 %2524 to i64
  %2526 = shl nsw i64 %2525, 2
  store i64 %2526, i64* %RCX.i1915, align 8
  %2527 = add i64 %2526, %2493
  store i64 %2527, i64* %RAX.i1926, align 8
  %2528 = icmp ult i64 %2527, %2493
  %2529 = icmp ult i64 %2527, %2526
  %2530 = or i1 %2528, %2529
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %14, align 1
  %2532 = trunc i64 %2527 to i32
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  %2538 = xor i64 %2526, %2493
  %2539 = xor i64 %2538, %2527
  %2540 = lshr i64 %2539, 4
  %2541 = trunc i64 %2540 to i8
  %2542 = and i8 %2541, 1
  store i8 %2542, i8* %27, align 1
  %2543 = icmp eq i64 %2527, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %30, align 1
  %2545 = lshr i64 %2527, 63
  %2546 = trunc i64 %2545 to i8
  store i8 %2546, i8* %33, align 1
  %2547 = lshr i64 %2525, 61
  %2548 = and i64 %2547, 1
  %2549 = xor i64 %2545, %2511
  %2550 = xor i64 %2545, %2548
  %2551 = add nuw nsw i64 %2549, %2550
  %2552 = icmp eq i64 %2551, 2
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %39, align 1
  store i64 %2527, i64* %RDI.i1946, align 8
  %2554 = add i64 %2459, 18822
  %2555 = add i64 %2459, 45
  %2556 = load i64, i64* %6, align 8
  %2557 = add i64 %2556, -8
  %2558 = inttoptr i64 %2557 to i64*
  store i64 %2555, i64* %2558, align 8
  store i64 %2557, i64* %6, align 8
  store i64 %2554, i64* %3, align 8
  %call2_41da22 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2554, %struct.Memory* %MEMORY.20)
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -40
  %2561 = load i64, i64* %3, align 8
  %2562 = add i64 %2561, 3
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2560 to i32*
  %2564 = load i32, i32* %2563, align 4
  %2565 = add i32 %2564, 1
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RAX.i1926, align 8
  %2567 = icmp eq i32 %2564, -1
  %2568 = icmp eq i32 %2565, 0
  %2569 = or i1 %2567, %2568
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %14, align 1
  %2571 = and i32 %2565, 255
  %2572 = tail call i32 @llvm.ctpop.i32(i32 %2571)
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = xor i8 %2574, 1
  store i8 %2575, i8* %21, align 1
  %2576 = xor i32 %2565, %2564
  %2577 = lshr i32 %2576, 4
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  store i8 %2579, i8* %27, align 1
  %2580 = zext i1 %2568 to i8
  store i8 %2580, i8* %30, align 1
  %2581 = lshr i32 %2565, 31
  %2582 = trunc i32 %2581 to i8
  store i8 %2582, i8* %33, align 1
  %2583 = lshr i32 %2564, 31
  %2584 = xor i32 %2581, %2583
  %2585 = add nuw nsw i32 %2584, %2581
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %39, align 1
  %2588 = add i64 %2561, 9
  store i64 %2588, i64* %3, align 8
  store i32 %2565, i32* %2563, align 4
  %2589 = load i64, i64* %3, align 8
  %2590 = add i64 %2589, -64
  store i64 %2590, i64* %3, align 8
  br label %block_.L_41d9f0

block_.L_41da3a.loopexit:                         ; preds = %block_.L_41d9f0
  br label %block_.L_41da3a

block_.L_41da3a:                                  ; preds = %block_.L_41da3a.loopexit, %block_.L_41d9db
  %2591 = phi i64 [ %2408, %block_.L_41d9db ], [ %2431, %block_.L_41da3a.loopexit ]
  %2592 = phi i64 [ %2426, %block_.L_41d9db ], [ %2460, %block_.L_41da3a.loopexit ]
  %2593 = add i64 %2591, -36
  %2594 = add i64 %2592, 8
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i32*
  %2596 = load i32, i32* %2595, align 4
  %2597 = add i32 %2596, 1
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX.i1926, align 8
  %2599 = icmp eq i32 %2596, -1
  %2600 = icmp eq i32 %2597, 0
  %2601 = or i1 %2599, %2600
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = and i32 %2597, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %21, align 1
  %2608 = xor i32 %2597, %2596
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %27, align 1
  %2612 = zext i1 %2600 to i8
  store i8 %2612, i8* %30, align 1
  %2613 = lshr i32 %2597, 31
  %2614 = trunc i32 %2613 to i8
  store i8 %2614, i8* %33, align 1
  %2615 = lshr i32 %2596, 31
  %2616 = xor i32 %2613, %2615
  %2617 = add nuw nsw i32 %2616, %2613
  %2618 = icmp eq i32 %2617, 2
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %39, align 1
  %2620 = add i64 %2592, 14
  store i64 %2620, i64* %3, align 8
  store i32 %2597, i32* %2595, align 4
  %2621 = load i64, i64* %3, align 8
  %2622 = add i64 %2621, -199
  store i64 %2622, i64* %3, align 8
  br label %block_.L_41d981

block_.L_41da4d:                                  ; preds = %block_.L_41d981
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2623 = add i64 %2284, -32
  %2624 = add i64 %2312, 18
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i64*
  %2626 = load i64, i64* %2625, align 8
  %2627 = add i64 %2626, 304
  store i64 %2627, i64* %RCX.i1915, align 8
  %2628 = icmp ugt i64 %2626, -305
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = trunc i64 %2627 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %21, align 1
  %2636 = xor i64 %2626, 16
  %2637 = xor i64 %2636, %2627
  %2638 = lshr i64 %2637, 4
  %2639 = trunc i64 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %27, align 1
  %2641 = icmp eq i64 %2627, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %30, align 1
  %2643 = lshr i64 %2627, 63
  %2644 = trunc i64 %2643 to i8
  store i8 %2644, i8* %33, align 1
  %2645 = lshr i64 %2626, 63
  %2646 = xor i64 %2643, %2645
  %2647 = add nuw nsw i64 %2646, %2643
  %2648 = icmp eq i64 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %39, align 1
  %2650 = add i64 %2284, -16
  %2651 = add i64 %2312, 29
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i64*
  %2653 = load i64, i64* %2652, align 8
  store i64 %2653, i64* %RDI.i1946, align 8
  %2654 = add i64 %2312, 32
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i64*
  %2656 = load i64, i64* %2655, align 8
  %2657 = add i64 %2284, -168
  %2658 = add i64 %2312, 39
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  store i64 %2656, i64* %2659, align 8
  %2660 = load i64, i64* %RCX.i1915, align 8
  %2661 = load i64, i64* %3, align 8
  store i64 %2660, i64* %RDI.i1946, align 8
  %2662 = load i64, i64* %RBP.i, align 8
  %2663 = add i64 %2662, -168
  %2664 = add i64 %2661, 10
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2663 to i64*
  %2666 = load i64, i64* %2665, align 8
  store i64 %2666, i64* %RCX.i1915, align 8
  %2667 = add i64 %2661, -116324
  %2668 = add i64 %2661, 15
  %2669 = load i64, i64* %6, align 8
  %2670 = add i64 %2669, -8
  %2671 = inttoptr i64 %2670 to i64*
  store i64 %2668, i64* %2671, align 8
  store i64 %2670, i64* %6, align 8
  store i64 %2667, i64* %3, align 8
  %call2_41da7e = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2667, %struct.Memory* %MEMORY.20)
  %2672 = load i64, i64* %RAX.i1926, align 8
  %2673 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2674 = trunc i64 %2672 to i32
  %2675 = and i32 %2674, 255
  %2676 = tail call i32 @llvm.ctpop.i32(i32 %2675)
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = xor i8 %2678, 1
  store i8 %2679, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2680 = icmp eq i64 %2672, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %30, align 1
  %2682 = lshr i64 %2672, 63
  %2683 = trunc i64 %2682 to i8
  store i8 %2683, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v219 = select i1 %2680, i64 10, i64 15
  %2684 = add i64 %2673, %.v219
  store i64 %2684, i64* %3, align 8
  br i1 %2680, label %block_41da8d, label %block_.L_41da92

block_41da8d:                                     ; preds = %block_.L_41da4d
  %2685 = add i64 %2684, 1490
  br label %block_.L_41e05f

block_.L_41da92:                                  ; preds = %block_.L_41da4d
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -32
  %2688 = add i64 %2684, 11
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i64*
  %2690 = load i64, i64* %2689, align 8
  %2691 = add i64 %2690, 224
  store i64 %2691, i64* %RCX.i1915, align 8
  %2692 = icmp ugt i64 %2690, -225
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %14, align 1
  %2694 = trunc i64 %2691 to i32
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %21, align 1
  %2700 = xor i64 %2691, %2690
  %2701 = lshr i64 %2700, 4
  %2702 = trunc i64 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %27, align 1
  %2704 = icmp eq i64 %2691, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %30, align 1
  %2706 = lshr i64 %2691, 63
  %2707 = trunc i64 %2706 to i8
  store i8 %2707, i8* %33, align 1
  %2708 = lshr i64 %2690, 63
  %2709 = xor i64 %2706, %2708
  %2710 = add nuw nsw i64 %2709, %2706
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %39, align 1
  %2713 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2714 = sext i32 %2713 to i64
  store i64 %2714, i64* %RDX.i1919, align 8
  %2715 = add i64 %2686, -16
  %2716 = add i64 %2684, 30
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RDI.i1946, align 8
  %2719 = add i64 %2684, 33
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i64*
  %2721 = load i64, i64* %2720, align 8
  %2722 = add i64 %2686, -176
  %2723 = add i64 %2684, 40
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i64*
  store i64 %2721, i64* %2724, align 8
  %2725 = load i64, i64* %RCX.i1915, align 8
  %2726 = load i64, i64* %3, align 8
  store i64 %2725, i64* %RDI.i1946, align 8
  %2727 = load i64, i64* %RBP.i, align 8
  %2728 = add i64 %2727, -176
  %2729 = add i64 %2726, 10
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i64*
  %2731 = load i64, i64* %2730, align 8
  store i64 %2731, i64* %RCX.i1915, align 8
  %2732 = add i64 %2726, -116394
  %2733 = add i64 %2726, 15
  %2734 = load i64, i64* %6, align 8
  %2735 = add i64 %2734, -8
  %2736 = inttoptr i64 %2735 to i64*
  store i64 %2733, i64* %2736, align 8
  store i64 %2735, i64* %6, align 8
  store i64 %2732, i64* %3, align 8
  %call2_41dac4 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2732, %struct.Memory* %call2_41da7e)
  %2737 = load i64, i64* %RAX.i1926, align 8
  %2738 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2739 = trunc i64 %2737 to i32
  %2740 = and i32 %2739, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2745 = icmp eq i64 %2737, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %30, align 1
  %2747 = lshr i64 %2737, 63
  %2748 = trunc i64 %2747 to i8
  store i8 %2748, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v220 = select i1 %2745, i64 10, i64 15
  %2749 = add i64 %2738, %.v220
  store i64 %2749, i64* %3, align 8
  br i1 %2745, label %block_41dad3, label %block_.L_41dad8

block_41dad3:                                     ; preds = %block_.L_41da92
  %2750 = add i64 %2749, 1420
  br label %block_.L_41e05f

block_.L_41dad8:                                  ; preds = %block_.L_41da92
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -32
  %2753 = add i64 %2749, 4
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i64*
  %2755 = load i64, i64* %2754, align 8
  store i64 %2755, i64* %RAX.i1926, align 8
  %2756 = add i64 %2755, 456
  %2757 = add i64 %2749, 10
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i32*
  %2759 = load i32, i32* %2758, align 4
  %2760 = and i32 %2759, 128
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  %2762 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2763 = trunc i32 %2762 to i8
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2765 = icmp eq i32 %2760, 0
  %.lobit173 = lshr exact i32 %2760, 7
  %2766 = trunc i32 %.lobit173 to i8
  %2767 = xor i8 %2766, 1
  store i8 %2767, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v221 = select i1 %2765, i64 228, i64 25
  %2768 = add i64 %2749, %.v221
  store i64 %2768, i64* %3, align 8
  br i1 %2765, label %block_.L_41dbbc, label %block_41daf1

block_41daf1:                                     ; preds = %block_.L_41dad8
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2769 = add i64 %2768, 18
  store i64 %2769, i64* %3, align 8
  %2770 = load i64, i64* %2754, align 8
  %2771 = add i64 %2770, 448
  store i64 %2771, i64* %RCX.i1915, align 8
  %2772 = icmp ugt i64 %2770, -449
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %14, align 1
  %2774 = trunc i64 %2771 to i32
  %2775 = and i32 %2774, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %21, align 1
  %2780 = xor i64 %2771, %2770
  %2781 = lshr i64 %2780, 4
  %2782 = trunc i64 %2781 to i8
  %2783 = and i8 %2782, 1
  store i8 %2783, i8* %27, align 1
  %2784 = icmp eq i64 %2771, 0
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %30, align 1
  %2786 = lshr i64 %2771, 63
  %2787 = trunc i64 %2786 to i8
  store i8 %2787, i8* %33, align 1
  %2788 = lshr i64 %2770, 63
  %2789 = xor i64 %2786, %2788
  %2790 = add nuw nsw i64 %2789, %2786
  %2791 = icmp eq i64 %2790, 2
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %39, align 1
  %2793 = add i64 %2751, -16
  %2794 = add i64 %2768, 29
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i64*
  %2796 = load i64, i64* %2795, align 8
  store i64 %2796, i64* %RDI.i1946, align 8
  %2797 = add i64 %2768, 32
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i64*
  %2799 = load i64, i64* %2798, align 8
  %2800 = add i64 %2751, -184
  %2801 = add i64 %2768, 39
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2800 to i64*
  store i64 %2799, i64* %2802, align 8
  %2803 = load i64, i64* %RCX.i1915, align 8
  %2804 = load i64, i64* %3, align 8
  store i64 %2803, i64* %RDI.i1946, align 8
  %2805 = load i64, i64* %RBP.i, align 8
  %2806 = add i64 %2805, -184
  %2807 = add i64 %2804, 10
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i64*
  %2809 = load i64, i64* %2808, align 8
  store i64 %2809, i64* %RCX.i1915, align 8
  %2810 = add i64 %2804, -116488
  %2811 = add i64 %2804, 15
  %2812 = load i64, i64* %6, align 8
  %2813 = add i64 %2812, -8
  %2814 = inttoptr i64 %2813 to i64*
  store i64 %2811, i64* %2814, align 8
  store i64 %2813, i64* %6, align 8
  store i64 %2810, i64* %3, align 8
  %call2_41db22 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2810, %struct.Memory* %call2_41dac4)
  %2815 = load i64, i64* %RAX.i1926, align 8
  %2816 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2817 = trunc i64 %2815 to i32
  %2818 = and i32 %2817, 255
  %2819 = tail call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  store i8 %2822, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2823 = icmp eq i64 %2815, 0
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %30, align 1
  %2825 = lshr i64 %2815, 63
  %2826 = trunc i64 %2825 to i8
  store i8 %2826, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v222 = select i1 %2823, i64 10, i64 15
  %2827 = add i64 %2816, %.v222
  store i64 %2827, i64* %3, align 8
  br i1 %2823, label %block_41db31, label %block_.L_41db36

block_41db31:                                     ; preds = %block_41daf1
  %2828 = add i64 %2827, 1326
  br label %block_.L_41e05f

block_.L_41db36:                                  ; preds = %block_41daf1
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -32
  %2831 = add i64 %2827, 18
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i64*
  %2833 = load i64, i64* %2832, align 8
  %2834 = add i64 %2833, 452
  store i64 %2834, i64* %RCX.i1915, align 8
  %2835 = icmp ugt i64 %2833, -453
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %14, align 1
  %2837 = trunc i64 %2834 to i32
  %2838 = and i32 %2837, 255
  %2839 = tail call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  store i8 %2842, i8* %21, align 1
  %2843 = xor i64 %2834, %2833
  %2844 = lshr i64 %2843, 4
  %2845 = trunc i64 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %27, align 1
  %2847 = icmp eq i64 %2834, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %30, align 1
  %2849 = lshr i64 %2834, 63
  %2850 = trunc i64 %2849 to i8
  store i8 %2850, i8* %33, align 1
  %2851 = lshr i64 %2833, 63
  %2852 = xor i64 %2849, %2851
  %2853 = add nuw nsw i64 %2852, %2849
  %2854 = icmp eq i64 %2853, 2
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %39, align 1
  %2856 = add i64 %2829, -16
  %2857 = add i64 %2827, 29
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i64*
  %2859 = load i64, i64* %2858, align 8
  store i64 %2859, i64* %RDI.i1946, align 8
  %2860 = add i64 %2827, 32
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i64*
  %2862 = load i64, i64* %2861, align 8
  %2863 = add i64 %2829, -192
  %2864 = add i64 %2827, 39
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i64*
  store i64 %2862, i64* %2865, align 8
  %2866 = load i64, i64* %RCX.i1915, align 8
  %2867 = load i64, i64* %3, align 8
  store i64 %2866, i64* %RDI.i1946, align 8
  %2868 = load i64, i64* %RBP.i, align 8
  %2869 = add i64 %2868, -192
  %2870 = add i64 %2867, 10
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i64*
  %2872 = load i64, i64* %2871, align 8
  store i64 %2872, i64* %RCX.i1915, align 8
  %2873 = add i64 %2867, -116557
  %2874 = add i64 %2867, 15
  %2875 = load i64, i64* %6, align 8
  %2876 = add i64 %2875, -8
  %2877 = inttoptr i64 %2876 to i64*
  store i64 %2874, i64* %2877, align 8
  store i64 %2876, i64* %6, align 8
  store i64 %2873, i64* %3, align 8
  %call2_41db67 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %2873, %struct.Memory* %call2_41db22)
  %2878 = load i64, i64* %RAX.i1926, align 8
  %2879 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2880 = trunc i64 %2878 to i32
  %2881 = and i32 %2880, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2886 = icmp eq i64 %2878, 0
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %30, align 1
  %2888 = lshr i64 %2878, 63
  %2889 = trunc i64 %2888 to i8
  store i8 %2889, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v223 = select i1 %2886, i64 10, i64 15
  %2890 = add i64 %2879, %.v223
  store i64 %2890, i64* %3, align 8
  br i1 %2886, label %block_41db76, label %block_.L_41db7b

block_41db76:                                     ; preds = %block_.L_41db36
  %2891 = add i64 %2890, 1257
  br label %block_.L_41e05f

block_.L_41db7b:                                  ; preds = %block_.L_41db36
  %2892 = load i64, i64* %RBP.i, align 8
  %2893 = add i64 %2892, -16
  %2894 = add i64 %2890, 4
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i64*
  %2896 = load i64, i64* %2895, align 8
  store i64 %2896, i64* %RAX.i1926, align 8
  %2897 = add i64 %2896, 28
  %2898 = add i64 %2890, 8
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  store i8 0, i8* %14, align 1
  %2901 = and i32 %2900, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2906 = icmp eq i32 %2900, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %30, align 1
  %2908 = lshr i32 %2900, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v224 = select i1 %2906, i64 60, i64 14
  %2910 = add i64 %2890, %.v224
  store i64 %2910, i64* %3, align 8
  br i1 %2906, label %block_.L_41dbb7, label %block_41db89

block_41db89:                                     ; preds = %block_.L_41db7b
  store i64 4, i64* %RSI.i1943, align 8
  %2911 = add i64 %2892, -32
  %2912 = add i64 %2910, 9
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i64*
  %2914 = load i64, i64* %2913, align 8
  %2915 = add i64 %2914, 448
  store i64 %2915, i64* %RAX.i1926, align 8
  %2916 = icmp ugt i64 %2914, -449
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %14, align 1
  %2918 = trunc i64 %2915 to i32
  %2919 = and i32 %2918, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %21, align 1
  %2924 = xor i64 %2915, %2914
  %2925 = lshr i64 %2924, 4
  %2926 = trunc i64 %2925 to i8
  %2927 = and i8 %2926, 1
  store i8 %2927, i8* %27, align 1
  %2928 = icmp eq i64 %2915, 0
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %30, align 1
  %2930 = lshr i64 %2915, 63
  %2931 = trunc i64 %2930 to i8
  store i8 %2931, i8* %33, align 1
  %2932 = lshr i64 %2914, 63
  %2933 = xor i64 %2930, %2932
  %2934 = add nuw nsw i64 %2933, %2930
  %2935 = icmp eq i64 %2934, 2
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %39, align 1
  store i64 %2915, i64* %RDI.i1946, align 8
  %2937 = add i64 %2910, 18423
  %2938 = add i64 %2910, 23
  %2939 = load i64, i64* %6, align 8
  %2940 = add i64 %2939, -8
  %2941 = inttoptr i64 %2940 to i64*
  store i64 %2938, i64* %2941, align 8
  store i64 %2940, i64* %6, align 8
  store i64 %2937, i64* %3, align 8
  %call2_41db9b = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2937, %struct.Memory* %call2_41db67)
  %2942 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %2943 = load i64, i64* %RBP.i, align 8
  %2944 = add i64 %2943, -32
  %2945 = add i64 %2942, 9
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  %2948 = add i64 %2947, 452
  store i64 %2948, i64* %RAX.i1926, align 8
  %2949 = icmp ugt i64 %2947, -453
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %14, align 1
  %2951 = trunc i64 %2948 to i32
  %2952 = and i32 %2951, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %21, align 1
  %2957 = xor i64 %2948, %2947
  %2958 = lshr i64 %2957, 4
  %2959 = trunc i64 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %27, align 1
  %2961 = icmp eq i64 %2948, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %30, align 1
  %2963 = lshr i64 %2948, 63
  %2964 = trunc i64 %2963 to i8
  store i8 %2964, i8* %33, align 1
  %2965 = lshr i64 %2947, 63
  %2966 = xor i64 %2963, %2965
  %2967 = add nuw nsw i64 %2966, %2963
  %2968 = icmp eq i64 %2967, 2
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %39, align 1
  store i64 %2948, i64* %RDI.i1946, align 8
  %2970 = add i64 %2942, 18400
  %2971 = add i64 %2942, 23
  %2972 = load i64, i64* %6, align 8
  %2973 = add i64 %2972, -8
  %2974 = inttoptr i64 %2973 to i64*
  store i64 %2971, i64* %2974, align 8
  store i64 %2973, i64* %6, align 8
  store i64 %2970, i64* %3, align 8
  %call2_41dbb2 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %2970, %struct.Memory* %call2_41db9b)
  %.pre146 = load i64, i64* %3, align 8
  %.pre147.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41dbb7

block_.L_41dbb7:                                  ; preds = %block_41db89, %block_.L_41db7b
  %.pre147 = phi i64 [ %2892, %block_.L_41db7b ], [ %.pre147.pre, %block_41db89 ]
  %2975 = phi i64 [ %2910, %block_.L_41db7b ], [ %.pre146, %block_41db89 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_41db67, %block_.L_41db7b ], [ %call2_41dbb2, %block_41db89 ]
  %2976 = add i64 %2975, 5
  store i64 %2976, i64* %3, align 8
  br label %block_.L_41dbbc

block_.L_41dbbc:                                  ; preds = %block_.L_41dbb7, %block_.L_41dad8
  %2977 = phi i64 [ %2751, %block_.L_41dad8 ], [ %.pre147, %block_.L_41dbb7 ]
  %2978 = phi i64 [ %2768, %block_.L_41dad8 ], [ %2976, %block_.L_41dbb7 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_41dac4, %block_.L_41dad8 ], [ %MEMORY.24, %block_.L_41dbb7 ]
  store i64 4, i64* %RSI.i1943, align 8
  store i64 1, i64* %RAX.i1926, align 8
  store i64 1, i64* %RDX.i1919, align 8
  %2979 = add i64 %2977, -32
  %2980 = add i64 %2978, 18
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i64*
  %2982 = load i64, i64* %2981, align 8
  %2983 = add i64 %2982, 168
  store i64 %2983, i64* %RCX.i1915, align 8
  %2984 = icmp ugt i64 %2982, -169
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %14, align 1
  %2986 = trunc i64 %2983 to i32
  %2987 = and i32 %2986, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %21, align 1
  %2992 = xor i64 %2983, %2982
  %2993 = lshr i64 %2992, 4
  %2994 = trunc i64 %2993 to i8
  %2995 = and i8 %2994, 1
  store i8 %2995, i8* %27, align 1
  %2996 = icmp eq i64 %2983, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %30, align 1
  %2998 = lshr i64 %2983, 63
  %2999 = trunc i64 %2998 to i8
  store i8 %2999, i8* %33, align 1
  %3000 = lshr i64 %2982, 63
  %3001 = xor i64 %2998, %3000
  %3002 = add nuw nsw i64 %3001, %2998
  %3003 = icmp eq i64 %3002, 2
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %39, align 1
  %3005 = add i64 %2977, -16
  %3006 = add i64 %2978, 29
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3005 to i64*
  %3008 = load i64, i64* %3007, align 8
  store i64 %3008, i64* %RDI.i1946, align 8
  %3009 = add i64 %2978, 32
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  %3012 = add i64 %2977, -200
  %3013 = add i64 %2978, 39
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i64*
  store i64 %3011, i64* %3014, align 8
  %3015 = load i64, i64* %RCX.i1915, align 8
  %3016 = load i64, i64* %3, align 8
  store i64 %3015, i64* %RDI.i1946, align 8
  %3017 = load i64, i64* %RBP.i, align 8
  %3018 = add i64 %3017, -200
  %3019 = add i64 %3016, 10
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RCX.i1915, align 8
  %3022 = add i64 %3016, -116691
  %3023 = add i64 %3016, 15
  %3024 = load i64, i64* %6, align 8
  %3025 = add i64 %3024, -8
  %3026 = inttoptr i64 %3025 to i64*
  store i64 %3023, i64* %3026, align 8
  store i64 %3025, i64* %6, align 8
  store i64 %3022, i64* %3, align 8
  %call2_41dbed = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3022, %struct.Memory* %MEMORY.25)
  %3027 = load i64, i64* %RAX.i1926, align 8
  %3028 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3029 = trunc i64 %3027 to i32
  %3030 = and i32 %3029, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3035 = icmp eq i64 %3027, 0
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %30, align 1
  %3037 = lshr i64 %3027, 63
  %3038 = trunc i64 %3037 to i8
  store i8 %3038, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v225 = select i1 %3035, i64 10, i64 15
  %3039 = add i64 %3028, %.v225
  store i64 %3039, i64* %3, align 8
  br i1 %3035, label %block_41dbfc, label %block_.L_41dc01

block_41dbfc:                                     ; preds = %block_.L_41dbbc
  %3040 = add i64 %3039, 1123
  br label %block_.L_41e05f

block_.L_41dc01:                                  ; preds = %block_.L_41dbbc
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %3041 = load i64, i64* %RBP.i, align 8
  %3042 = add i64 %3041, -32
  %3043 = add i64 %3039, 11
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RCX.i1915, align 8
  %3046 = add i64 %3045, 208
  %3047 = add i64 %3039, 18
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i64*
  %3049 = load i64, i64* %3048, align 8
  store i64 %3049, i64* %RCX.i1915, align 8
  %3050 = add i64 %3039, 22
  store i64 %3050, i64* %3, align 8
  %3051 = load i64, i64* %3044, align 8
  store i64 %3051, i64* %RDX.i1919, align 8
  %3052 = add i64 %3051, 136
  %3053 = add i64 %3039, 28
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = add i32 %3055, 1
  %3057 = zext i32 %3056 to i64
  store i64 %3057, i64* %RAX.i1926, align 8
  %3058 = icmp eq i32 %3055, -1
  %3059 = icmp eq i32 %3056, 0
  %3060 = or i1 %3058, %3059
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %14, align 1
  %3062 = and i32 %3056, 255
  %3063 = tail call i32 @llvm.ctpop.i32(i32 %3062)
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  store i8 %3066, i8* %21, align 1
  %3067 = xor i32 %3056, %3055
  %3068 = lshr i32 %3067, 4
  %3069 = trunc i32 %3068 to i8
  %3070 = and i8 %3069, 1
  store i8 %3070, i8* %27, align 1
  %3071 = zext i1 %3059 to i8
  store i8 %3071, i8* %30, align 1
  %3072 = lshr i32 %3056, 31
  %3073 = trunc i32 %3072 to i8
  store i8 %3073, i8* %33, align 1
  %3074 = lshr i32 %3055, 31
  %3075 = xor i32 %3072, %3074
  %3076 = add nuw nsw i32 %3075, %3072
  %3077 = icmp eq i32 %3076, 2
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %39, align 1
  %3079 = sext i32 %3056 to i64
  store i64 %3079, i64* %RDX.i1919, align 8
  %3080 = add i64 %3041, -16
  %3081 = add i64 %3039, 38
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i64*
  %3083 = load i64, i64* %3082, align 8
  store i64 %3083, i64* %RDI.i1946, align 8
  %3084 = add i64 %3039, 41
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to i64*
  %3086 = load i64, i64* %3085, align 8
  %3087 = add i64 %3041, -208
  %3088 = add i64 %3039, 48
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i64*
  store i64 %3086, i64* %3089, align 8
  %3090 = load i64, i64* %RCX.i1915, align 8
  %3091 = load i64, i64* %3, align 8
  store i64 %3090, i64* %RDI.i1946, align 8
  %3092 = load i64, i64* %RBP.i, align 8
  %3093 = add i64 %3092, -208
  %3094 = add i64 %3091, 10
  store i64 %3094, i64* %3, align 8
  %3095 = inttoptr i64 %3093 to i64*
  %3096 = load i64, i64* %3095, align 8
  store i64 %3096, i64* %RCX.i1915, align 8
  %3097 = add i64 %3091, -116769
  %3098 = add i64 %3091, 15
  %3099 = load i64, i64* %6, align 8
  %3100 = add i64 %3099, -8
  %3101 = inttoptr i64 %3100 to i64*
  store i64 %3098, i64* %3101, align 8
  store i64 %3100, i64* %6, align 8
  store i64 %3097, i64* %3, align 8
  %call2_41dc3b = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3097, %struct.Memory* %call2_41dbed)
  %3102 = load i64, i64* %RAX.i1926, align 8
  %3103 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3104 = trunc i64 %3102 to i32
  %3105 = and i32 %3104, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3110 = icmp eq i64 %3102, 0
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %30, align 1
  %3112 = lshr i64 %3102, 63
  %3113 = trunc i64 %3112 to i8
  store i8 %3113, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v226 = select i1 %3110, i64 10, i64 15
  %3114 = add i64 %3103, %.v226
  store i64 %3114, i64* %3, align 8
  br i1 %3110, label %block_41dc4a, label %block_.L_41dc4f

block_41dc4a:                                     ; preds = %block_.L_41dc01
  %3115 = add i64 %3114, 1045
  br label %block_.L_41e05f

block_.L_41dc4f:                                  ; preds = %block_.L_41dc01
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %3116 = load i64, i64* %RBP.i, align 8
  %3117 = add i64 %3116, -32
  %3118 = add i64 %3114, 11
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i64*
  %3120 = load i64, i64* %3119, align 8
  store i64 %3120, i64* %RCX.i1915, align 8
  %3121 = add i64 %3120, 216
  %3122 = add i64 %3114, 18
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i64*
  %3124 = load i64, i64* %3123, align 8
  store i64 %3124, i64* %RCX.i1915, align 8
  %3125 = add i64 %3114, 22
  store i64 %3125, i64* %3, align 8
  %3126 = load i64, i64* %3119, align 8
  store i64 %3126, i64* %RDX.i1919, align 8
  %3127 = add i64 %3126, 136
  %3128 = add i64 %3114, 28
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = add i32 %3130, 1
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RAX.i1926, align 8
  %3133 = icmp eq i32 %3130, -1
  %3134 = icmp eq i32 %3131, 0
  %3135 = or i1 %3133, %3134
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %14, align 1
  %3137 = and i32 %3131, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %21, align 1
  %3142 = xor i32 %3131, %3130
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %27, align 1
  %3146 = zext i1 %3134 to i8
  store i8 %3146, i8* %30, align 1
  %3147 = lshr i32 %3131, 31
  %3148 = trunc i32 %3147 to i8
  store i8 %3148, i8* %33, align 1
  %3149 = lshr i32 %3130, 31
  %3150 = xor i32 %3147, %3149
  %3151 = add nuw nsw i32 %3150, %3147
  %3152 = icmp eq i32 %3151, 2
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %39, align 1
  %3154 = sext i32 %3131 to i64
  store i64 %3154, i64* %RDX.i1919, align 8
  %3155 = add i64 %3116, -16
  %3156 = add i64 %3114, 38
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to i64*
  %3158 = load i64, i64* %3157, align 8
  store i64 %3158, i64* %RDI.i1946, align 8
  %3159 = add i64 %3114, 41
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i64*
  %3161 = load i64, i64* %3160, align 8
  %3162 = add i64 %3116, -216
  %3163 = add i64 %3114, 48
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i64*
  store i64 %3161, i64* %3164, align 8
  %3165 = load i64, i64* %RCX.i1915, align 8
  %3166 = load i64, i64* %3, align 8
  store i64 %3165, i64* %RDI.i1946, align 8
  %3167 = load i64, i64* %RBP.i, align 8
  %3168 = add i64 %3167, -216
  %3169 = add i64 %3166, 10
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i64*
  %3171 = load i64, i64* %3170, align 8
  store i64 %3171, i64* %RCX.i1915, align 8
  %3172 = add i64 %3166, -116847
  %3173 = add i64 %3166, 15
  %3174 = load i64, i64* %6, align 8
  %3175 = add i64 %3174, -8
  %3176 = inttoptr i64 %3175 to i64*
  store i64 %3173, i64* %3176, align 8
  store i64 %3175, i64* %6, align 8
  store i64 %3172, i64* %3, align 8
  %call2_41dc89 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3172, %struct.Memory* %call2_41dc3b)
  %3177 = load i64, i64* %RAX.i1926, align 8
  %3178 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3179 = trunc i64 %3177 to i32
  %3180 = and i32 %3179, 255
  %3181 = tail call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  store i8 %3184, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3185 = icmp eq i64 %3177, 0
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %30, align 1
  %3187 = lshr i64 %3177, 63
  %3188 = trunc i64 %3187 to i8
  store i8 %3188, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v227 = select i1 %3185, i64 10, i64 15
  %3189 = add i64 %3178, %.v227
  store i64 %3189, i64* %3, align 8
  br i1 %3185, label %block_41dc98, label %block_.L_41dc9d

block_41dc98:                                     ; preds = %block_.L_41dc4f
  %3190 = add i64 %3189, 967
  br label %block_.L_41e05f

block_.L_41dc9d:                                  ; preds = %block_.L_41dc4f
  %3191 = load i64, i64* %RBP.i, align 8
  %3192 = add i64 %3191, -36
  %3193 = add i64 %3189, 7
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3192 to i32*
  store i32 1, i32* %3194, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_41dca4

block_.L_41dca4:                                  ; preds = %block_.L_41dd05, %block_.L_41dc9d
  %3195 = phi i64 [ %3319, %block_.L_41dd05 ], [ %.pre148, %block_.L_41dc9d ]
  %3196 = load i64, i64* %RBP.i, align 8
  %3197 = add i64 %3196, -36
  %3198 = add i64 %3195, 3
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = zext i32 %3200 to i64
  store i64 %3201, i64* %RAX.i1926, align 8
  %3202 = add i64 %3196, -32
  %3203 = add i64 %3195, 7
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i64*
  %3205 = load i64, i64* %3204, align 8
  store i64 %3205, i64* %RCX.i1915, align 8
  %3206 = add i64 %3205, 136
  %3207 = add i64 %3195, 13
  store i64 %3207, i64* %3, align 8
  %3208 = inttoptr i64 %3206 to i32*
  %3209 = load i32, i32* %3208, align 4
  %3210 = sub i32 %3200, %3209
  %3211 = icmp ult i32 %3200, %3209
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %14, align 1
  %3213 = and i32 %3210, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %21, align 1
  %3218 = xor i32 %3209, %3200
  %3219 = xor i32 %3218, %3210
  %3220 = lshr i32 %3219, 4
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  store i8 %3222, i8* %27, align 1
  %3223 = icmp eq i32 %3210, 0
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %30, align 1
  %3225 = lshr i32 %3210, 31
  %3226 = trunc i32 %3225 to i8
  store i8 %3226, i8* %33, align 1
  %3227 = lshr i32 %3200, 31
  %3228 = lshr i32 %3209, 31
  %3229 = xor i32 %3228, %3227
  %3230 = xor i32 %3225, %3227
  %3231 = add nuw nsw i32 %3230, %3229
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %39, align 1
  %3234 = icmp ne i8 %3226, 0
  %3235 = xor i1 %3234, %3232
  %.demorgan174 = or i1 %3223, %3235
  %.v228 = select i1 %.demorgan174, i64 19, i64 116
  %3236 = add i64 %3195, %.v228
  store i64 %3236, i64* %3, align 8
  br i1 %.demorgan174, label %block_41dcb7, label %block_.L_41dd18

block_41dcb7:                                     ; preds = %block_.L_41dca4
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %3237 = add i64 %3236, 11
  store i64 %3237, i64* %3, align 8
  %3238 = load i64, i64* %3204, align 8
  store i64 %3238, i64* %RCX.i1915, align 8
  %3239 = add i64 %3238, 152
  %3240 = add i64 %3236, 18
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i64*
  %3242 = load i64, i64* %3241, align 8
  store i64 %3242, i64* %RCX.i1915, align 8
  %3243 = add i64 %3236, 22
  store i64 %3243, i64* %3, align 8
  %3244 = load i32, i32* %3199, align 4
  %3245 = sext i32 %3244 to i64
  store i64 %3245, i64* %RDX.i1919, align 8
  %3246 = shl nsw i64 %3245, 3
  %3247 = add i64 %3246, %3242
  %3248 = add i64 %3236, 26
  store i64 %3248, i64* %3, align 8
  %3249 = inttoptr i64 %3247 to i64*
  %3250 = load i64, i64* %3249, align 8
  store i64 %3250, i64* %RCX.i1915, align 8
  %3251 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3252 = sext i32 %3251 to i64
  store i64 %3252, i64* %RDX.i1919, align 8
  %3253 = add i64 %3196, -16
  %3254 = add i64 %3236, 38
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %RDI.i1946, align 8
  %3257 = add i64 %3236, 41
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  %3260 = add i64 %3196, -224
  %3261 = add i64 %3236, 48
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i64*
  store i64 %3259, i64* %3262, align 8
  %3263 = load i64, i64* %RCX.i1915, align 8
  %3264 = load i64, i64* %3, align 8
  store i64 %3263, i64* %RDI.i1946, align 8
  %3265 = load i64, i64* %RBP.i, align 8
  %3266 = add i64 %3265, -224
  %3267 = add i64 %3264, 10
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to i64*
  %3269 = load i64, i64* %3268, align 8
  store i64 %3269, i64* %RCX.i1915, align 8
  %3270 = add i64 %3264, -116951
  %3271 = add i64 %3264, 15
  %3272 = load i64, i64* %6, align 8
  %3273 = add i64 %3272, -8
  %3274 = inttoptr i64 %3273 to i64*
  store i64 %3271, i64* %3274, align 8
  store i64 %3273, i64* %6, align 8
  store i64 %3270, i64* %3, align 8
  %call2_41dcf1 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3270, %struct.Memory* %call2_41dc89)
  %3275 = load i64, i64* %RAX.i1926, align 8
  %3276 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3277 = trunc i64 %3275 to i32
  %3278 = and i32 %3277, 255
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3283 = icmp eq i64 %3275, 0
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %30, align 1
  %3285 = lshr i64 %3275, 63
  %3286 = trunc i64 %3285 to i8
  store i8 %3286, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v241 = select i1 %3283, i64 10, i64 15
  %3287 = add i64 %3276, %.v241
  store i64 %3287, i64* %3, align 8
  br i1 %3283, label %block_41dd00, label %block_.L_41dd05

block_41dd00:                                     ; preds = %block_41dcb7
  %3288 = add i64 %3287, 863
  br label %block_.L_41e05f

block_.L_41dd05:                                  ; preds = %block_41dcb7
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -36
  %3291 = add i64 %3287, 8
  store i64 %3291, i64* %3, align 8
  %3292 = inttoptr i64 %3290 to i32*
  %3293 = load i32, i32* %3292, align 4
  %3294 = add i32 %3293, 1
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RAX.i1926, align 8
  %3296 = icmp eq i32 %3293, -1
  %3297 = icmp eq i32 %3294, 0
  %3298 = or i1 %3296, %3297
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %14, align 1
  %3300 = and i32 %3294, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %21, align 1
  %3305 = xor i32 %3294, %3293
  %3306 = lshr i32 %3305, 4
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  store i8 %3308, i8* %27, align 1
  %3309 = zext i1 %3297 to i8
  store i8 %3309, i8* %30, align 1
  %3310 = lshr i32 %3294, 31
  %3311 = trunc i32 %3310 to i8
  store i8 %3311, i8* %33, align 1
  %3312 = lshr i32 %3293, 31
  %3313 = xor i32 %3310, %3312
  %3314 = add nuw nsw i32 %3313, %3310
  %3315 = icmp eq i32 %3314, 2
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %39, align 1
  %3317 = add i64 %3287, 14
  store i64 %3317, i64* %3, align 8
  store i32 %3294, i32* %3292, align 4
  %3318 = load i64, i64* %3, align 8
  %3319 = add i64 %3318, -111
  store i64 %3319, i64* %3, align 8
  br label %block_.L_41dca4

block_.L_41dd18:                                  ; preds = %block_.L_41dca4
  %3320 = add i64 %3236, 7
  store i64 %3320, i64* %3, align 8
  store i32 1, i32* %3199, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_41dd1f

block_.L_41dd1f:                                  ; preds = %block_.L_41dd80, %block_.L_41dd18
  %3321 = phi i64 [ %3445, %block_.L_41dd80 ], [ %.pre149, %block_.L_41dd18 ]
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -36
  %3324 = add i64 %3321, 3
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RAX.i1926, align 8
  %3328 = add i64 %3322, -32
  %3329 = add i64 %3321, 7
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i64*
  %3331 = load i64, i64* %3330, align 8
  store i64 %3331, i64* %RCX.i1915, align 8
  %3332 = add i64 %3331, 136
  %3333 = add i64 %3321, 13
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = sub i32 %3326, %3335
  %3337 = icmp ult i32 %3326, %3335
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %14, align 1
  %3339 = and i32 %3336, 255
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %21, align 1
  %3344 = xor i32 %3335, %3326
  %3345 = xor i32 %3344, %3336
  %3346 = lshr i32 %3345, 4
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %27, align 1
  %3349 = icmp eq i32 %3336, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %30, align 1
  %3351 = lshr i32 %3336, 31
  %3352 = trunc i32 %3351 to i8
  store i8 %3352, i8* %33, align 1
  %3353 = lshr i32 %3326, 31
  %3354 = lshr i32 %3335, 31
  %3355 = xor i32 %3354, %3353
  %3356 = xor i32 %3351, %3353
  %3357 = add nuw nsw i32 %3356, %3355
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %39, align 1
  %3360 = icmp ne i8 %3352, 0
  %3361 = xor i1 %3360, %3358
  %.v229 = select i1 %3361, i64 19, i64 116
  %3362 = add i64 %3321, %.v229
  store i64 %3362, i64* %3, align 8
  br i1 %3361, label %block_41dd32, label %block_.L_41dd93

block_41dd32:                                     ; preds = %block_.L_41dd1f
  store i64 4, i64* %RAX.i1926, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %3363 = add i64 %3362, 11
  store i64 %3363, i64* %3, align 8
  %3364 = load i64, i64* %3330, align 8
  store i64 %3364, i64* %RCX.i1915, align 8
  %3365 = add i64 %3364, 160
  %3366 = add i64 %3362, 18
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i64*
  %3368 = load i64, i64* %3367, align 8
  store i64 %3368, i64* %RCX.i1915, align 8
  %3369 = add i64 %3362, 22
  store i64 %3369, i64* %3, align 8
  %3370 = load i32, i32* %3325, align 4
  %3371 = sext i32 %3370 to i64
  store i64 %3371, i64* %RDX.i1919, align 8
  %3372 = shl nsw i64 %3371, 3
  %3373 = add i64 %3372, %3368
  %3374 = add i64 %3362, 26
  store i64 %3374, i64* %3, align 8
  %3375 = inttoptr i64 %3373 to i64*
  %3376 = load i64, i64* %3375, align 8
  store i64 %3376, i64* %RCX.i1915, align 8
  %3377 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3378 = sext i32 %3377 to i64
  store i64 %3378, i64* %RDX.i1919, align 8
  %3379 = add i64 %3322, -16
  %3380 = add i64 %3362, 38
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3379 to i64*
  %3382 = load i64, i64* %3381, align 8
  store i64 %3382, i64* %RDI.i1946, align 8
  %3383 = add i64 %3362, 41
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  %3386 = add i64 %3322, -232
  %3387 = add i64 %3362, 48
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i64*
  store i64 %3385, i64* %3388, align 8
  %3389 = load i64, i64* %RCX.i1915, align 8
  %3390 = load i64, i64* %3, align 8
  store i64 %3389, i64* %RDI.i1946, align 8
  %3391 = load i64, i64* %RBP.i, align 8
  %3392 = add i64 %3391, -232
  %3393 = add i64 %3390, 10
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i64*
  %3395 = load i64, i64* %3394, align 8
  store i64 %3395, i64* %RCX.i1915, align 8
  %3396 = add i64 %3390, -117074
  %3397 = add i64 %3390, 15
  %3398 = load i64, i64* %6, align 8
  %3399 = add i64 %3398, -8
  %3400 = inttoptr i64 %3399 to i64*
  store i64 %3397, i64* %3400, align 8
  store i64 %3399, i64* %6, align 8
  store i64 %3396, i64* %3, align 8
  %call2_41dd6c = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3396, %struct.Memory* %call2_41dc89)
  %3401 = load i64, i64* %RAX.i1926, align 8
  %3402 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3403 = trunc i64 %3401 to i32
  %3404 = and i32 %3403, 255
  %3405 = tail call i32 @llvm.ctpop.i32(i32 %3404)
  %3406 = trunc i32 %3405 to i8
  %3407 = and i8 %3406, 1
  %3408 = xor i8 %3407, 1
  store i8 %3408, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3409 = icmp eq i64 %3401, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %30, align 1
  %3411 = lshr i64 %3401, 63
  %3412 = trunc i64 %3411 to i8
  store i8 %3412, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v240 = select i1 %3409, i64 10, i64 15
  %3413 = add i64 %3402, %.v240
  store i64 %3413, i64* %3, align 8
  br i1 %3409, label %block_41dd7b, label %block_.L_41dd80

block_41dd7b:                                     ; preds = %block_41dd32
  %3414 = add i64 %3413, 740
  br label %block_.L_41e05f

block_.L_41dd80:                                  ; preds = %block_41dd32
  %3415 = load i64, i64* %RBP.i, align 8
  %3416 = add i64 %3415, -36
  %3417 = add i64 %3413, 8
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = add i32 %3419, 1
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RAX.i1926, align 8
  %3422 = icmp eq i32 %3419, -1
  %3423 = icmp eq i32 %3420, 0
  %3424 = or i1 %3422, %3423
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %14, align 1
  %3426 = and i32 %3420, 255
  %3427 = tail call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  store i8 %3430, i8* %21, align 1
  %3431 = xor i32 %3420, %3419
  %3432 = lshr i32 %3431, 4
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  store i8 %3434, i8* %27, align 1
  %3435 = zext i1 %3423 to i8
  store i8 %3435, i8* %30, align 1
  %3436 = lshr i32 %3420, 31
  %3437 = trunc i32 %3436 to i8
  store i8 %3437, i8* %33, align 1
  %3438 = lshr i32 %3419, 31
  %3439 = xor i32 %3436, %3438
  %3440 = add nuw nsw i32 %3439, %3436
  %3441 = icmp eq i32 %3440, 2
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %39, align 1
  %3443 = add i64 %3413, 14
  store i64 %3443, i64* %3, align 8
  store i32 %3420, i32* %3418, align 4
  %3444 = load i64, i64* %3, align 8
  %3445 = add i64 %3444, -111
  store i64 %3445, i64* %3, align 8
  br label %block_.L_41dd1f

block_.L_41dd93:                                  ; preds = %block_.L_41dd1f
  %3446 = add i64 %3362, 7
  store i64 %3446, i64* %3, align 8
  store i32 1, i32* %3325, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_41dd9a

block_.L_41dd9a:                                  ; preds = %block_.L_41ddfa, %block_.L_41dd93
  %3447 = phi i64 [ %3569, %block_.L_41ddfa ], [ %.pre150, %block_.L_41dd93 ]
  %3448 = load i64, i64* %RBP.i, align 8
  %3449 = add i64 %3448, -36
  %3450 = add i64 %3447, 3
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RAX.i1926, align 8
  %3454 = add i64 %3448, -32
  %3455 = add i64 %3447, 7
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i64*
  %3457 = load i64, i64* %3456, align 8
  store i64 %3457, i64* %RCX.i1915, align 8
  %3458 = add i64 %3457, 136
  %3459 = add i64 %3447, 13
  store i64 %3459, i64* %3, align 8
  %3460 = inttoptr i64 %3458 to i32*
  %3461 = load i32, i32* %3460, align 4
  %3462 = sub i32 %3452, %3461
  %3463 = icmp ult i32 %3452, %3461
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %14, align 1
  %3465 = and i32 %3462, 255
  %3466 = tail call i32 @llvm.ctpop.i32(i32 %3465)
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  %3469 = xor i8 %3468, 1
  store i8 %3469, i8* %21, align 1
  %3470 = xor i32 %3461, %3452
  %3471 = xor i32 %3470, %3462
  %3472 = lshr i32 %3471, 4
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  store i8 %3474, i8* %27, align 1
  %3475 = icmp eq i32 %3462, 0
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %30, align 1
  %3477 = lshr i32 %3462, 31
  %3478 = trunc i32 %3477 to i8
  store i8 %3478, i8* %33, align 1
  %3479 = lshr i32 %3452, 31
  %3480 = lshr i32 %3461, 31
  %3481 = xor i32 %3480, %3479
  %3482 = xor i32 %3477, %3479
  %3483 = add nuw nsw i32 %3482, %3481
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %39, align 1
  %3486 = icmp ne i8 %3478, 0
  %3487 = xor i1 %3486, %3484
  %.v230 = select i1 %3487, i64 19, i64 115
  %3488 = add i64 %3447, %.v230
  store i64 %3488, i64* %3, align 8
  br i1 %3487, label %block_41ddad, label %block_.L_41de0d

block_41ddad:                                     ; preds = %block_.L_41dd9a
  store i64 4, i64* %RSI.i1943, align 8
  store i64 7, i64* %RAX.i1926, align 8
  store i64 7, i64* %RDX.i1919, align 8
  %3489 = add i64 %3488, 18
  store i64 %3489, i64* %3, align 8
  %3490 = load i64, i64* %3456, align 8
  store i64 %3490, i64* %RCX.i1915, align 8
  %3491 = add i64 %3490, 144
  %3492 = add i64 %3488, 25
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3491 to i64*
  %3494 = load i64, i64* %3493, align 8
  store i64 %3494, i64* %RCX.i1915, align 8
  %3495 = add i64 %3488, 29
  store i64 %3495, i64* %3, align 8
  %3496 = load i32, i32* %3451, align 4
  %3497 = sext i32 %3496 to i64
  store i64 %3497, i64* %RDI.i1946, align 8
  %3498 = shl nsw i64 %3497, 3
  %3499 = add i64 %3498, %3494
  %3500 = add i64 %3488, 33
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i64*
  %3502 = load i64, i64* %3501, align 8
  store i64 %3502, i64* %RCX.i1915, align 8
  %3503 = add i64 %3448, -16
  %3504 = add i64 %3488, 37
  store i64 %3504, i64* %3, align 8
  %3505 = inttoptr i64 %3503 to i64*
  %3506 = load i64, i64* %3505, align 8
  store i64 %3506, i64* %RDI.i1946, align 8
  %3507 = add i64 %3488, 40
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i64*
  %3509 = load i64, i64* %3508, align 8
  %3510 = add i64 %3448, -240
  %3511 = add i64 %3488, 47
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i64*
  store i64 %3509, i64* %3512, align 8
  %3513 = load i64, i64* %RCX.i1915, align 8
  %3514 = load i64, i64* %3, align 8
  store i64 %3513, i64* %RDI.i1946, align 8
  %3515 = load i64, i64* %RBP.i, align 8
  %3516 = add i64 %3515, -240
  %3517 = add i64 %3514, 10
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3516 to i64*
  %3519 = load i64, i64* %3518, align 8
  store i64 %3519, i64* %RCX.i1915, align 8
  %3520 = add i64 %3514, -117196
  %3521 = add i64 %3514, 15
  %3522 = load i64, i64* %6, align 8
  %3523 = add i64 %3522, -8
  %3524 = inttoptr i64 %3523 to i64*
  store i64 %3521, i64* %3524, align 8
  store i64 %3523, i64* %6, align 8
  store i64 %3520, i64* %3, align 8
  %call2_41dde6 = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %3520, %struct.Memory* %call2_41dc89)
  %3525 = load i64, i64* %RAX.i1926, align 8
  %3526 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3527 = trunc i64 %3525 to i32
  %3528 = and i32 %3527, 255
  %3529 = tail call i32 @llvm.ctpop.i32(i32 %3528)
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = xor i8 %3531, 1
  store i8 %3532, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3533 = icmp eq i64 %3525, 0
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %30, align 1
  %3535 = lshr i64 %3525, 63
  %3536 = trunc i64 %3535 to i8
  store i8 %3536, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v239 = select i1 %3533, i64 10, i64 15
  %3537 = add i64 %3526, %.v239
  store i64 %3537, i64* %3, align 8
  br i1 %3533, label %block_41ddf5, label %block_.L_41ddfa

block_41ddf5:                                     ; preds = %block_41ddad
  %3538 = add i64 %3537, 618
  br label %block_.L_41e05f

block_.L_41ddfa:                                  ; preds = %block_41ddad
  %3539 = load i64, i64* %RBP.i, align 8
  %3540 = add i64 %3539, -36
  %3541 = add i64 %3537, 8
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = add i32 %3543, 1
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RAX.i1926, align 8
  %3546 = icmp eq i32 %3543, -1
  %3547 = icmp eq i32 %3544, 0
  %3548 = or i1 %3546, %3547
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %14, align 1
  %3550 = and i32 %3544, 255
  %3551 = tail call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %21, align 1
  %3555 = xor i32 %3544, %3543
  %3556 = lshr i32 %3555, 4
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  store i8 %3558, i8* %27, align 1
  %3559 = zext i1 %3547 to i8
  store i8 %3559, i8* %30, align 1
  %3560 = lshr i32 %3544, 31
  %3561 = trunc i32 %3560 to i8
  store i8 %3561, i8* %33, align 1
  %3562 = lshr i32 %3543, 31
  %3563 = xor i32 %3560, %3562
  %3564 = add nuw nsw i32 %3563, %3560
  %3565 = icmp eq i32 %3564, 2
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %39, align 1
  %3567 = add i64 %3537, 14
  store i64 %3567, i64* %3, align 8
  store i32 %3544, i32* %3542, align 4
  %3568 = load i64, i64* %3, align 8
  %3569 = add i64 %3568, -110
  store i64 %3569, i64* %3, align 8
  br label %block_.L_41dd9a

block_.L_41de0d:                                  ; preds = %block_.L_41dd9a
  %3570 = add i64 %3448, -16
  %3571 = add i64 %3488, 4
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3570 to i64*
  %3573 = load i64, i64* %3572, align 8
  store i64 %3573, i64* %RAX.i1926, align 8
  %3574 = add i64 %3573, 28
  %3575 = add i64 %3488, 8
  store i64 %3575, i64* %3, align 8
  %3576 = inttoptr i64 %3574 to i32*
  %3577 = load i32, i32* %3576, align 4
  store i8 0, i8* %14, align 1
  %3578 = and i32 %3577, 255
  %3579 = tail call i32 @llvm.ctpop.i32(i32 %3578)
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  store i8 %3582, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3583 = icmp eq i32 %3577, 0
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %30, align 1
  %3585 = lshr i32 %3577, 31
  %3586 = trunc i32 %3585 to i8
  store i8 %3586, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v231 = select i1 %3583, i64 533, i64 14
  %3587 = add i64 %3488, %.v231
  store i64 %3587, i64* %3, align 8
  br i1 %3583, label %block_.L_41e022, label %block_41de1b

block_41de1b:                                     ; preds = %block_.L_41de0d
  %3588 = add i64 %3448, -40
  %3589 = add i64 %3587, 7
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i32*
  store i32 0, i32* %3590, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_41de22

block_.L_41de22:                                  ; preds = %block_41de32, %block_41de1b
  %3591 = phi i64 [ %3720, %block_41de32 ], [ %.pre151, %block_41de1b ]
  %3592 = load i64, i64* %RBP.i, align 8
  %3593 = add i64 %3592, -40
  %3594 = add i64 %3591, 3
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RAX.i1926, align 8
  %3598 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3599 = sub i32 %3596, %3598
  %3600 = icmp ult i32 %3596, %3598
  %3601 = zext i1 %3600 to i8
  store i8 %3601, i8* %14, align 1
  %3602 = and i32 %3599, 255
  %3603 = tail call i32 @llvm.ctpop.i32(i32 %3602)
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = xor i8 %3605, 1
  store i8 %3606, i8* %21, align 1
  %3607 = xor i32 %3598, %3596
  %3608 = xor i32 %3607, %3599
  %3609 = lshr i32 %3608, 4
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  store i8 %3611, i8* %27, align 1
  %3612 = icmp eq i32 %3599, 0
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %30, align 1
  %3614 = lshr i32 %3599, 31
  %3615 = trunc i32 %3614 to i8
  store i8 %3615, i8* %33, align 1
  %3616 = lshr i32 %3596, 31
  %3617 = lshr i32 %3598, 31
  %3618 = xor i32 %3617, %3616
  %3619 = xor i32 %3614, %3616
  %3620 = add nuw nsw i32 %3619, %3618
  %3621 = icmp eq i32 %3620, 2
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %39, align 1
  %3623 = icmp ne i8 %3615, 0
  %3624 = xor i1 %3623, %3621
  %.v232 = select i1 %3624, i64 16, i64 64
  %3625 = add i64 %3591, %.v232
  store i64 4, i64* %RSI.i1943, align 8
  %3626 = add i64 %3592, -32
  %3627 = add i64 %3625, 9
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i64*
  %3629 = load i64, i64* %3628, align 8
  store i64 %3629, i64* %RAX.i1926, align 8
  %3630 = add i64 %3625, 15
  store i64 %3630, i64* %3, align 8
  br i1 %3624, label %block_41de32, label %block_.L_41de62

block_41de32:                                     ; preds = %block_.L_41de22
  %3631 = add i64 %3629, 224
  store i64 %3631, i64* %RAX.i1926, align 8
  %3632 = icmp ugt i64 %3629, -225
  %3633 = zext i1 %3632 to i8
  store i8 %3633, i8* %14, align 1
  %3634 = trunc i64 %3631 to i32
  %3635 = and i32 %3634, 255
  %3636 = tail call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  store i8 %3639, i8* %21, align 1
  %3640 = xor i64 %3631, %3629
  %3641 = lshr i64 %3640, 4
  %3642 = trunc i64 %3641 to i8
  %3643 = and i8 %3642, 1
  store i8 %3643, i8* %27, align 1
  %3644 = icmp eq i64 %3631, 0
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %30, align 1
  %3646 = lshr i64 %3631, 63
  %3647 = trunc i64 %3646 to i8
  store i8 %3647, i8* %33, align 1
  %3648 = lshr i64 %3629, 63
  %3649 = xor i64 %3646, %3648
  %3650 = add nuw nsw i64 %3649, %3646
  %3651 = icmp eq i64 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %39, align 1
  %3653 = add i64 %3625, 19
  store i64 %3653, i64* %3, align 8
  %3654 = load i32, i32* %3595, align 4
  %3655 = sext i32 %3654 to i64
  %3656 = shl nsw i64 %3655, 2
  store i64 %3656, i64* %RCX.i1915, align 8
  %3657 = add i64 %3656, %3631
  store i64 %3657, i64* %RAX.i1926, align 8
  %3658 = icmp ult i64 %3657, %3631
  %3659 = icmp ult i64 %3657, %3656
  %3660 = or i1 %3658, %3659
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %14, align 1
  %3662 = trunc i64 %3657 to i32
  %3663 = and i32 %3662, 255
  %3664 = tail call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  store i8 %3667, i8* %21, align 1
  %3668 = xor i64 %3656, %3631
  %3669 = xor i64 %3668, %3657
  %3670 = lshr i64 %3669, 4
  %3671 = trunc i64 %3670 to i8
  %3672 = and i8 %3671, 1
  store i8 %3672, i8* %27, align 1
  %3673 = icmp eq i64 %3657, 0
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %30, align 1
  %3675 = lshr i64 %3657, 63
  %3676 = trunc i64 %3675 to i8
  store i8 %3676, i8* %33, align 1
  %3677 = lshr i64 %3655, 61
  %3678 = and i64 %3677, 1
  %3679 = xor i64 %3675, %3646
  %3680 = xor i64 %3675, %3678
  %3681 = add nuw nsw i64 %3679, %3680
  %3682 = icmp eq i64 %3681, 2
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %39, align 1
  store i64 %3657, i64* %RDI.i1946, align 8
  %3684 = add i64 %3625, 17742
  %3685 = add i64 %3625, 34
  %3686 = load i64, i64* %6, align 8
  %3687 = add i64 %3686, -8
  %3688 = inttoptr i64 %3687 to i64*
  store i64 %3685, i64* %3688, align 8
  store i64 %3687, i64* %6, align 8
  store i64 %3684, i64* %3, align 8
  %call2_41de4f = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %3684, %struct.Memory* %call2_41dc89)
  %3689 = load i64, i64* %RBP.i, align 8
  %3690 = add i64 %3689, -40
  %3691 = load i64, i64* %3, align 8
  %3692 = add i64 %3691, 3
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3690 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = add i32 %3694, 1
  %3696 = zext i32 %3695 to i64
  store i64 %3696, i64* %RAX.i1926, align 8
  %3697 = icmp eq i32 %3694, -1
  %3698 = icmp eq i32 %3695, 0
  %3699 = or i1 %3697, %3698
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %14, align 1
  %3701 = and i32 %3695, 255
  %3702 = tail call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  store i8 %3705, i8* %21, align 1
  %3706 = xor i32 %3695, %3694
  %3707 = lshr i32 %3706, 4
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  store i8 %3709, i8* %27, align 1
  %3710 = zext i1 %3698 to i8
  store i8 %3710, i8* %30, align 1
  %3711 = lshr i32 %3695, 31
  %3712 = trunc i32 %3711 to i8
  store i8 %3712, i8* %33, align 1
  %3713 = lshr i32 %3694, 31
  %3714 = xor i32 %3711, %3713
  %3715 = add nuw nsw i32 %3714, %3711
  %3716 = icmp eq i32 %3715, 2
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %39, align 1
  %3718 = add i64 %3691, 9
  store i64 %3718, i64* %3, align 8
  store i32 %3695, i32* %3693, align 4
  %3719 = load i64, i64* %3, align 8
  %3720 = add i64 %3719, -59
  store i64 %3720, i64* %3, align 8
  br label %block_.L_41de22

block_.L_41de62:                                  ; preds = %block_.L_41de22
  %3721 = add i64 %3629, 304
  store i64 %3721, i64* %RAX.i1926, align 8
  %3722 = icmp ugt i64 %3629, -305
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %14, align 1
  %3724 = trunc i64 %3721 to i32
  %3725 = and i32 %3724, 255
  %3726 = tail call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %21, align 1
  %3730 = xor i64 %3629, 16
  %3731 = xor i64 %3730, %3721
  %3732 = lshr i64 %3731, 4
  %3733 = trunc i64 %3732 to i8
  %3734 = and i8 %3733, 1
  store i8 %3734, i8* %27, align 1
  %3735 = icmp eq i64 %3721, 0
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %30, align 1
  %3737 = lshr i64 %3721, 63
  %3738 = trunc i64 %3737 to i8
  store i8 %3738, i8* %33, align 1
  %3739 = lshr i64 %3629, 63
  %3740 = xor i64 %3737, %3739
  %3741 = add nuw nsw i64 %3740, %3737
  %3742 = icmp eq i64 %3741, 2
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %39, align 1
  store i64 %3721, i64* %RDI.i1946, align 8
  %3744 = add i64 %3625, 17694
  %3745 = add i64 %3625, 23
  %3746 = load i64, i64* %6, align 8
  %3747 = add i64 %3746, -8
  %3748 = inttoptr i64 %3747 to i64*
  store i64 %3745, i64* %3748, align 8
  store i64 %3747, i64* %6, align 8
  store i64 %3744, i64* %3, align 8
  %call2_41de74 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %3744, %struct.Memory* %call2_41dc89)
  %3749 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %3750 = load i64, i64* %RBP.i, align 8
  %3751 = add i64 %3750, -32
  %3752 = add i64 %3749, 9
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i64*
  %3754 = load i64, i64* %3753, align 8
  %3755 = add i64 %3754, 168
  store i64 %3755, i64* %RAX.i1926, align 8
  %3756 = icmp ugt i64 %3754, -169
  %3757 = zext i1 %3756 to i8
  store i8 %3757, i8* %14, align 1
  %3758 = trunc i64 %3755 to i32
  %3759 = and i32 %3758, 255
  %3760 = tail call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  store i8 %3763, i8* %21, align 1
  %3764 = xor i64 %3755, %3754
  %3765 = lshr i64 %3764, 4
  %3766 = trunc i64 %3765 to i8
  %3767 = and i8 %3766, 1
  store i8 %3767, i8* %27, align 1
  %3768 = icmp eq i64 %3755, 0
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %30, align 1
  %3770 = lshr i64 %3755, 63
  %3771 = trunc i64 %3770 to i8
  store i8 %3771, i8* %33, align 1
  %3772 = lshr i64 %3754, 63
  %3773 = xor i64 %3770, %3772
  %3774 = add nuw nsw i64 %3773, %3770
  %3775 = icmp eq i64 %3774, 2
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %39, align 1
  store i64 %3755, i64* %RDI.i1946, align 8
  %3777 = add i64 %3749, 17671
  %3778 = add i64 %3749, 23
  %3779 = load i64, i64* %6, align 8
  %3780 = add i64 %3779, -8
  %3781 = inttoptr i64 %3780 to i64*
  store i64 %3778, i64* %3781, align 8
  store i64 %3780, i64* %6, align 8
  store i64 %3777, i64* %3, align 8
  %call2_41de8b = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %3777, %struct.Memory* %call2_41de74)
  %3782 = load i64, i64* %RBP.i, align 8
  %3783 = add i64 %3782, -36
  %3784 = load i64, i64* %3, align 8
  %3785 = add i64 %3784, 7
  store i64 %3785, i64* %3, align 8
  %3786 = inttoptr i64 %3783 to i32*
  store i32 1, i32* %3786, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_41de97

block_.L_41de97:                                  ; preds = %block_.L_41e00a, %block_.L_41de62
  %3787 = phi i64 [ %.pre152, %block_.L_41de62 ], [ %4410, %block_.L_41e00a ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_41de8b, %block_.L_41de62 ], [ %call2_41dfa3, %block_.L_41e00a ]
  %3788 = load i64, i64* %RBP.i, align 8
  %3789 = add i64 %3788, -36
  %3790 = add i64 %3787, 3
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i32*
  %3792 = load i32, i32* %3791, align 4
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RAX.i1926, align 8
  %3794 = add i64 %3788, -32
  %3795 = add i64 %3787, 7
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i64*
  %3797 = load i64, i64* %3796, align 8
  store i64 %3797, i64* %RCX.i1915, align 8
  %3798 = add i64 %3797, 136
  %3799 = add i64 %3787, 13
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = sub i32 %3792, %3801
  %3803 = icmp ult i32 %3792, %3801
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %14, align 1
  %3805 = and i32 %3802, 255
  %3806 = tail call i32 @llvm.ctpop.i32(i32 %3805)
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = xor i8 %3808, 1
  store i8 %3809, i8* %21, align 1
  %3810 = xor i32 %3801, %3792
  %3811 = xor i32 %3810, %3802
  %3812 = lshr i32 %3811, 4
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  store i8 %3814, i8* %27, align 1
  %3815 = icmp eq i32 %3802, 0
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %30, align 1
  %3817 = lshr i32 %3802, 31
  %3818 = trunc i32 %3817 to i8
  store i8 %3818, i8* %33, align 1
  %3819 = lshr i32 %3792, 31
  %3820 = lshr i32 %3801, 31
  %3821 = xor i32 %3820, %3819
  %3822 = xor i32 %3817, %3819
  %3823 = add nuw nsw i32 %3822, %3821
  %3824 = icmp eq i32 %3823, 2
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %39, align 1
  %3826 = icmp ne i8 %3818, 0
  %3827 = xor i1 %3826, %3824
  %.demorgan175 = or i1 %3815, %3827
  %.v233 = select i1 %.demorgan175, i64 19, i64 390
  %3828 = add i64 %3787, %.v233
  store i64 %3828, i64* %3, align 8
  br i1 %.demorgan175, label %block_41deaa, label %block_.L_41e01d

block_41deaa:                                     ; preds = %block_.L_41de97
  %3829 = add i64 %3788, -40
  %3830 = add i64 %3828, 7
  store i64 %3830, i64* %3, align 8
  %3831 = inttoptr i64 %3829 to i32*
  store i32 0, i32* %3831, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_41deb1

block_.L_41deb1:                                  ; preds = %block_41dec1, %block_41deaa
  %3832 = phi i64 [ %3953, %block_41dec1 ], [ %.pre153, %block_41deaa ]
  %3833 = load i64, i64* %RBP.i, align 8
  %3834 = add i64 %3833, -40
  %3835 = add i64 %3832, 3
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  %3837 = load i32, i32* %3836, align 4
  %3838 = zext i32 %3837 to i64
  store i64 %3838, i64* %RAX.i1926, align 8
  %3839 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3840 = sub i32 %3837, %3839
  %3841 = icmp ult i32 %3837, %3839
  %3842 = zext i1 %3841 to i8
  store i8 %3842, i8* %14, align 1
  %3843 = and i32 %3840, 255
  %3844 = tail call i32 @llvm.ctpop.i32(i32 %3843)
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  %3847 = xor i8 %3846, 1
  store i8 %3847, i8* %21, align 1
  %3848 = xor i32 %3839, %3837
  %3849 = xor i32 %3848, %3840
  %3850 = lshr i32 %3849, 4
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  store i8 %3852, i8* %27, align 1
  %3853 = icmp eq i32 %3840, 0
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %30, align 1
  %3855 = lshr i32 %3840, 31
  %3856 = trunc i32 %3855 to i8
  store i8 %3856, i8* %33, align 1
  %3857 = lshr i32 %3837, 31
  %3858 = lshr i32 %3839, 31
  %3859 = xor i32 %3858, %3857
  %3860 = xor i32 %3855, %3857
  %3861 = add nuw nsw i32 %3860, %3859
  %3862 = icmp eq i32 %3861, 2
  %3863 = zext i1 %3862 to i8
  store i8 %3863, i8* %39, align 1
  %3864 = icmp ne i8 %3856, 0
  %3865 = xor i1 %3864, %3862
  %.v234 = select i1 %3865, i64 16, i64 73
  %3866 = add i64 %3832, %.v234
  store i64 %3866, i64* %3, align 8
  br i1 %3865, label %block_41dec1, label %block_.L_41defa

block_41dec1:                                     ; preds = %block_.L_41deb1
  store i64 4, i64* %RSI.i1943, align 8
  %3867 = add i64 %3833, -32
  %3868 = add i64 %3866, 9
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i64*
  %3870 = load i64, i64* %3869, align 8
  store i64 %3870, i64* %RAX.i1926, align 8
  %3871 = add i64 %3870, 152
  %3872 = add i64 %3866, 16
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i64*
  %3874 = load i64, i64* %3873, align 8
  store i64 %3874, i64* %RAX.i1926, align 8
  %3875 = add i64 %3833, -36
  %3876 = add i64 %3866, 20
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = sext i32 %3878 to i64
  store i64 %3879, i64* %RCX.i1915, align 8
  %3880 = shl nsw i64 %3879, 3
  %3881 = add i64 %3880, %3874
  %3882 = add i64 %3866, 24
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i64*
  %3884 = load i64, i64* %3883, align 8
  store i64 %3884, i64* %RAX.i1926, align 8
  %3885 = add i64 %3866, 28
  store i64 %3885, i64* %3, align 8
  %3886 = load i32, i32* %3836, align 4
  %3887 = sext i32 %3886 to i64
  %3888 = shl nsw i64 %3887, 2
  store i64 %3888, i64* %RCX.i1915, align 8
  %3889 = add i64 %3888, %3884
  store i64 %3889, i64* %RAX.i1926, align 8
  %3890 = icmp ult i64 %3889, %3884
  %3891 = icmp ult i64 %3889, %3888
  %3892 = or i1 %3890, %3891
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %14, align 1
  %3894 = trunc i64 %3889 to i32
  %3895 = and i32 %3894, 255
  %3896 = tail call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  store i8 %3899, i8* %21, align 1
  %3900 = xor i64 %3888, %3884
  %3901 = xor i64 %3900, %3889
  %3902 = lshr i64 %3901, 4
  %3903 = trunc i64 %3902 to i8
  %3904 = and i8 %3903, 1
  store i8 %3904, i8* %27, align 1
  %3905 = icmp eq i64 %3889, 0
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %30, align 1
  %3907 = lshr i64 %3889, 63
  %3908 = trunc i64 %3907 to i8
  store i8 %3908, i8* %33, align 1
  %3909 = lshr i64 %3884, 63
  %3910 = lshr i64 %3887, 61
  %3911 = and i64 %3910, 1
  %3912 = xor i64 %3907, %3909
  %3913 = xor i64 %3907, %3911
  %3914 = add nuw nsw i64 %3912, %3913
  %3915 = icmp eq i64 %3914, 2
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %39, align 1
  store i64 %3889, i64* %RDI.i1946, align 8
  %3917 = add i64 %3866, 17599
  %3918 = add i64 %3866, 43
  %3919 = load i64, i64* %6, align 8
  %3920 = add i64 %3919, -8
  %3921 = inttoptr i64 %3920 to i64*
  store i64 %3918, i64* %3921, align 8
  store i64 %3920, i64* %6, align 8
  store i64 %3917, i64* %3, align 8
  %call2_41dee7 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %3917, %struct.Memory* %MEMORY.30)
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -40
  %3924 = load i64, i64* %3, align 8
  %3925 = add i64 %3924, 3
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3923 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = add i32 %3927, 1
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RAX.i1926, align 8
  %3930 = icmp eq i32 %3927, -1
  %3931 = icmp eq i32 %3928, 0
  %3932 = or i1 %3930, %3931
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %14, align 1
  %3934 = and i32 %3928, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %21, align 1
  %3939 = xor i32 %3928, %3927
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %27, align 1
  %3943 = zext i1 %3931 to i8
  store i8 %3943, i8* %30, align 1
  %3944 = lshr i32 %3928, 31
  %3945 = trunc i32 %3944 to i8
  store i8 %3945, i8* %33, align 1
  %3946 = lshr i32 %3927, 31
  %3947 = xor i32 %3944, %3946
  %3948 = add nuw nsw i32 %3947, %3944
  %3949 = icmp eq i32 %3948, 2
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %39, align 1
  %3951 = add i64 %3924, 9
  store i64 %3951, i64* %3, align 8
  store i32 %3928, i32* %3926, align 4
  %3952 = load i64, i64* %3, align 8
  %3953 = add i64 %3952, -68
  store i64 %3953, i64* %3, align 8
  br label %block_.L_41deb1

block_.L_41defa:                                  ; preds = %block_.L_41deb1
  %3954 = add i64 %3833, -36
  %3955 = add i64 %3866, 3
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3954 to i32*
  %3957 = load i32, i32* %3956, align 4
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i1926, align 8
  %3959 = add i64 %3833, -32
  %3960 = add i64 %3866, 7
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i64*
  %3962 = load i64, i64* %3961, align 8
  store i64 %3962, i64* %RCX.i1915, align 8
  %3963 = add i64 %3962, 136
  %3964 = add i64 %3866, 13
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i32*
  %3966 = load i32, i32* %3965, align 4
  %3967 = sub i32 %3957, %3966
  %3968 = icmp ult i32 %3957, %3966
  %3969 = zext i1 %3968 to i8
  store i8 %3969, i8* %14, align 1
  %3970 = and i32 %3967, 255
  %3971 = tail call i32 @llvm.ctpop.i32(i32 %3970)
  %3972 = trunc i32 %3971 to i8
  %3973 = and i8 %3972, 1
  %3974 = xor i8 %3973, 1
  store i8 %3974, i8* %21, align 1
  %3975 = xor i32 %3966, %3957
  %3976 = xor i32 %3975, %3967
  %3977 = lshr i32 %3976, 4
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  store i8 %3979, i8* %27, align 1
  %3980 = icmp eq i32 %3967, 0
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %30, align 1
  %3982 = lshr i32 %3967, 31
  %3983 = trunc i32 %3982 to i8
  store i8 %3983, i8* %33, align 1
  %3984 = lshr i32 %3957, 31
  %3985 = lshr i32 %3966, 31
  %3986 = xor i32 %3985, %3984
  %3987 = xor i32 %3982, %3984
  %3988 = add nuw nsw i32 %3987, %3986
  %3989 = icmp eq i32 %3988, 2
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %39, align 1
  %3991 = icmp ne i8 %3983, 0
  %3992 = xor i1 %3991, %3989
  %.v235 = select i1 %3992, i64 19, i64 104
  %3993 = add i64 %3866, %.v235
  store i64 %3993, i64* %3, align 8
  br i1 %3992, label %block_41df0d, label %block_.L_41df62

block_41df0d:                                     ; preds = %block_.L_41defa
  %3994 = add i64 %3993, 7
  store i64 %3994, i64* %3, align 8
  store i32 0, i32* %3836, align 4
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_41df14

block_.L_41df14:                                  ; preds = %block_41df24, %block_41df0d
  %3995 = phi i64 [ %4117, %block_41df24 ], [ %.pre154, %block_41df0d ]
  %3996 = load i64, i64* %RBP.i, align 8
  %3997 = add i64 %3996, -40
  %3998 = add i64 %3995, 3
  store i64 %3998, i64* %3, align 8
  %3999 = inttoptr i64 %3997 to i32*
  %4000 = load i32, i32* %3999, align 4
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RAX.i1926, align 8
  %4002 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %4003 = sub i32 %4000, %4002
  %4004 = icmp ult i32 %4000, %4002
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %14, align 1
  %4006 = and i32 %4003, 255
  %4007 = tail call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  store i8 %4010, i8* %21, align 1
  %4011 = xor i32 %4002, %4000
  %4012 = xor i32 %4011, %4003
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  store i8 %4015, i8* %27, align 1
  %4016 = icmp eq i32 %4003, 0
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %30, align 1
  %4018 = lshr i32 %4003, 31
  %4019 = trunc i32 %4018 to i8
  store i8 %4019, i8* %33, align 1
  %4020 = lshr i32 %4000, 31
  %4021 = lshr i32 %4002, 31
  %4022 = xor i32 %4021, %4020
  %4023 = xor i32 %4018, %4020
  %4024 = add nuw nsw i32 %4023, %4022
  %4025 = icmp eq i32 %4024, 2
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %39, align 1
  %4027 = icmp ne i8 %4019, 0
  %4028 = xor i1 %4027, %4025
  %.v238 = select i1 %4028, i64 16, i64 73
  %4029 = add i64 %3995, %.v238
  %4030 = add i64 %4029, 5
  store i64 %4030, i64* %3, align 8
  br i1 %4028, label %block_41df24, label %block_.L_41df62.loopexit

block_41df24:                                     ; preds = %block_.L_41df14
  store i64 4, i64* %RSI.i1943, align 8
  %4031 = add i64 %3996, -32
  %4032 = add i64 %4029, 9
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i64*
  %4034 = load i64, i64* %4033, align 8
  store i64 %4034, i64* %RAX.i1926, align 8
  %4035 = add i64 %4034, 160
  %4036 = add i64 %4029, 16
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i64*
  %4038 = load i64, i64* %4037, align 8
  store i64 %4038, i64* %RAX.i1926, align 8
  %4039 = add i64 %3996, -36
  %4040 = add i64 %4029, 20
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = sext i32 %4042 to i64
  store i64 %4043, i64* %RCX.i1915, align 8
  %4044 = shl nsw i64 %4043, 3
  %4045 = add i64 %4044, %4038
  %4046 = add i64 %4029, 24
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i64*
  %4048 = load i64, i64* %4047, align 8
  store i64 %4048, i64* %RAX.i1926, align 8
  %4049 = add i64 %4029, 28
  store i64 %4049, i64* %3, align 8
  %4050 = load i32, i32* %3999, align 4
  %4051 = sext i32 %4050 to i64
  %4052 = shl nsw i64 %4051, 2
  store i64 %4052, i64* %RCX.i1915, align 8
  %4053 = add i64 %4052, %4048
  store i64 %4053, i64* %RAX.i1926, align 8
  %4054 = icmp ult i64 %4053, %4048
  %4055 = icmp ult i64 %4053, %4052
  %4056 = or i1 %4054, %4055
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %14, align 1
  %4058 = trunc i64 %4053 to i32
  %4059 = and i32 %4058, 255
  %4060 = tail call i32 @llvm.ctpop.i32(i32 %4059)
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = xor i8 %4062, 1
  store i8 %4063, i8* %21, align 1
  %4064 = xor i64 %4052, %4048
  %4065 = xor i64 %4064, %4053
  %4066 = lshr i64 %4065, 4
  %4067 = trunc i64 %4066 to i8
  %4068 = and i8 %4067, 1
  store i8 %4068, i8* %27, align 1
  %4069 = icmp eq i64 %4053, 0
  %4070 = zext i1 %4069 to i8
  store i8 %4070, i8* %30, align 1
  %4071 = lshr i64 %4053, 63
  %4072 = trunc i64 %4071 to i8
  store i8 %4072, i8* %33, align 1
  %4073 = lshr i64 %4048, 63
  %4074 = lshr i64 %4051, 61
  %4075 = and i64 %4074, 1
  %4076 = xor i64 %4071, %4073
  %4077 = xor i64 %4071, %4075
  %4078 = add nuw nsw i64 %4076, %4077
  %4079 = icmp eq i64 %4078, 2
  %4080 = zext i1 %4079 to i8
  store i8 %4080, i8* %39, align 1
  store i64 %4053, i64* %RDI.i1946, align 8
  %4081 = add i64 %4029, 17500
  %4082 = add i64 %4029, 43
  %4083 = load i64, i64* %6, align 8
  %4084 = add i64 %4083, -8
  %4085 = inttoptr i64 %4084 to i64*
  store i64 %4082, i64* %4085, align 8
  store i64 %4084, i64* %6, align 8
  store i64 %4081, i64* %3, align 8
  %call2_41df4a = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %4081, %struct.Memory* %MEMORY.30)
  %4086 = load i64, i64* %RBP.i, align 8
  %4087 = add i64 %4086, -40
  %4088 = load i64, i64* %3, align 8
  %4089 = add i64 %4088, 3
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4087 to i32*
  %4091 = load i32, i32* %4090, align 4
  %4092 = add i32 %4091, 1
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RAX.i1926, align 8
  %4094 = icmp eq i32 %4091, -1
  %4095 = icmp eq i32 %4092, 0
  %4096 = or i1 %4094, %4095
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %14, align 1
  %4098 = and i32 %4092, 255
  %4099 = tail call i32 @llvm.ctpop.i32(i32 %4098)
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  %4102 = xor i8 %4101, 1
  store i8 %4102, i8* %21, align 1
  %4103 = xor i32 %4092, %4091
  %4104 = lshr i32 %4103, 4
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  store i8 %4106, i8* %27, align 1
  %4107 = zext i1 %4095 to i8
  store i8 %4107, i8* %30, align 1
  %4108 = lshr i32 %4092, 31
  %4109 = trunc i32 %4108 to i8
  store i8 %4109, i8* %33, align 1
  %4110 = lshr i32 %4091, 31
  %4111 = xor i32 %4108, %4110
  %4112 = add nuw nsw i32 %4111, %4108
  %4113 = icmp eq i32 %4112, 2
  %4114 = zext i1 %4113 to i8
  store i8 %4114, i8* %39, align 1
  %4115 = add i64 %4088, 9
  store i64 %4115, i64* %3, align 8
  store i32 %4092, i32* %4090, align 4
  %4116 = load i64, i64* %3, align 8
  %4117 = add i64 %4116, -68
  store i64 %4117, i64* %3, align 8
  br label %block_.L_41df14

block_.L_41df62.loopexit:                         ; preds = %block_.L_41df14
  br label %block_.L_41df62

block_.L_41df62:                                  ; preds = %block_.L_41df62.loopexit, %block_.L_41defa
  %4118 = phi i64 [ %3833, %block_.L_41defa ], [ %3996, %block_.L_41df62.loopexit ]
  %4119 = phi i64 [ %3993, %block_.L_41defa ], [ %4030, %block_.L_41df62.loopexit ]
  store i64 4, i64* %RSI.i1943, align 8
  %4120 = add i64 %4118, -32
  %4121 = add i64 %4119, 9
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i64*
  %4123 = load i64, i64* %4122, align 8
  store i64 %4123, i64* %RAX.i1926, align 8
  %4124 = add i64 %4123, 208
  %4125 = add i64 %4119, 16
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i64*
  %4127 = load i64, i64* %4126, align 8
  store i64 %4127, i64* %RAX.i1926, align 8
  %4128 = add i64 %4118, -36
  %4129 = add i64 %4119, 20
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = sext i32 %4131 to i64
  %4133 = shl nsw i64 %4132, 2
  store i64 %4133, i64* %RCX.i1915, align 8
  %4134 = add i64 %4133, %4127
  store i64 %4134, i64* %RAX.i1926, align 8
  %4135 = icmp ult i64 %4134, %4127
  %4136 = icmp ult i64 %4134, %4133
  %4137 = or i1 %4135, %4136
  %4138 = zext i1 %4137 to i8
  store i8 %4138, i8* %14, align 1
  %4139 = trunc i64 %4134 to i32
  %4140 = and i32 %4139, 255
  %4141 = tail call i32 @llvm.ctpop.i32(i32 %4140)
  %4142 = trunc i32 %4141 to i8
  %4143 = and i8 %4142, 1
  %4144 = xor i8 %4143, 1
  store i8 %4144, i8* %21, align 1
  %4145 = xor i64 %4133, %4127
  %4146 = xor i64 %4145, %4134
  %4147 = lshr i64 %4146, 4
  %4148 = trunc i64 %4147 to i8
  %4149 = and i8 %4148, 1
  store i8 %4149, i8* %27, align 1
  %4150 = icmp eq i64 %4134, 0
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %30, align 1
  %4152 = lshr i64 %4134, 63
  %4153 = trunc i64 %4152 to i8
  store i8 %4153, i8* %33, align 1
  %4154 = lshr i64 %4127, 63
  %4155 = lshr i64 %4132, 61
  %4156 = and i64 %4155, 1
  %4157 = xor i64 %4152, %4154
  %4158 = xor i64 %4152, %4156
  %4159 = add nuw nsw i64 %4157, %4158
  %4160 = icmp eq i64 %4159, 2
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %39, align 1
  store i64 %4134, i64* %RDI.i1946, align 8
  %4162 = add i64 %4119, 17438
  %4163 = add i64 %4119, 35
  %4164 = load i64, i64* %6, align 8
  %4165 = add i64 %4164, -8
  %4166 = inttoptr i64 %4165 to i64*
  store i64 %4163, i64* %4166, align 8
  store i64 %4165, i64* %6, align 8
  store i64 %4162, i64* %3, align 8
  %call2_41df80 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %4162, %struct.Memory* %MEMORY.30)
  %4167 = load i64, i64* %3, align 8
  store i64 4, i64* %RSI.i1943, align 8
  %4168 = load i64, i64* %RBP.i, align 8
  %4169 = add i64 %4168, -32
  %4170 = add i64 %4167, 9
  store i64 %4170, i64* %3, align 8
  %4171 = inttoptr i64 %4169 to i64*
  %4172 = load i64, i64* %4171, align 8
  store i64 %4172, i64* %RAX.i1926, align 8
  %4173 = add i64 %4172, 216
  %4174 = add i64 %4167, 16
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i64*
  %4176 = load i64, i64* %4175, align 8
  store i64 %4176, i64* %RAX.i1926, align 8
  %4177 = add i64 %4168, -36
  %4178 = add i64 %4167, 20
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4177 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = sext i32 %4180 to i64
  %4182 = shl nsw i64 %4181, 2
  store i64 %4182, i64* %RCX.i1915, align 8
  %4183 = add i64 %4182, %4176
  store i64 %4183, i64* %RAX.i1926, align 8
  %4184 = icmp ult i64 %4183, %4176
  %4185 = icmp ult i64 %4183, %4182
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %14, align 1
  %4188 = trunc i64 %4183 to i32
  %4189 = and i32 %4188, 255
  %4190 = tail call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  store i8 %4193, i8* %21, align 1
  %4194 = xor i64 %4182, %4176
  %4195 = xor i64 %4194, %4183
  %4196 = lshr i64 %4195, 4
  %4197 = trunc i64 %4196 to i8
  %4198 = and i8 %4197, 1
  store i8 %4198, i8* %27, align 1
  %4199 = icmp eq i64 %4183, 0
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %30, align 1
  %4201 = lshr i64 %4183, 63
  %4202 = trunc i64 %4201 to i8
  store i8 %4202, i8* %33, align 1
  %4203 = lshr i64 %4176, 63
  %4204 = lshr i64 %4181, 61
  %4205 = and i64 %4204, 1
  %4206 = xor i64 %4201, %4203
  %4207 = xor i64 %4201, %4205
  %4208 = add nuw nsw i64 %4206, %4207
  %4209 = icmp eq i64 %4208, 2
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %39, align 1
  store i64 %4183, i64* %RDI.i1946, align 8
  %4211 = add i64 %4167, 17403
  %4212 = add i64 %4167, 35
  %4213 = load i64, i64* %6, align 8
  %4214 = add i64 %4213, -8
  %4215 = inttoptr i64 %4214 to i64*
  store i64 %4212, i64* %4215, align 8
  store i64 %4214, i64* %6, align 8
  store i64 %4211, i64* %3, align 8
  %call2_41dfa3 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %4211, %struct.Memory* %call2_41df80)
  %4216 = load i64, i64* %RBP.i, align 8
  %4217 = add i64 %4216, -36
  %4218 = load i64, i64* %3, align 8
  %4219 = add i64 %4218, 3
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4217 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = zext i32 %4221 to i64
  store i64 %4222, i64* %RSI.i1943, align 8
  %4223 = add i64 %4216, -32
  %4224 = add i64 %4218, 7
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i64*
  %4226 = load i64, i64* %4225, align 8
  store i64 %4226, i64* %RAX.i1926, align 8
  %4227 = add i64 %4226, 136
  %4228 = add i64 %4218, 13
  store i64 %4228, i64* %3, align 8
  %4229 = inttoptr i64 %4227 to i32*
  %4230 = load i32, i32* %4229, align 4
  %4231 = sub i32 %4221, %4230
  %4232 = icmp ult i32 %4221, %4230
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %14, align 1
  %4234 = and i32 %4231, 255
  %4235 = tail call i32 @llvm.ctpop.i32(i32 %4234)
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  %4238 = xor i8 %4237, 1
  store i8 %4238, i8* %21, align 1
  %4239 = xor i32 %4230, %4221
  %4240 = xor i32 %4239, %4231
  %4241 = lshr i32 %4240, 4
  %4242 = trunc i32 %4241 to i8
  %4243 = and i8 %4242, 1
  store i8 %4243, i8* %27, align 1
  %4244 = icmp eq i32 %4231, 0
  %4245 = zext i1 %4244 to i8
  store i8 %4245, i8* %30, align 1
  %4246 = lshr i32 %4231, 31
  %4247 = trunc i32 %4246 to i8
  store i8 %4247, i8* %33, align 1
  %4248 = lshr i32 %4221, 31
  %4249 = lshr i32 %4230, 31
  %4250 = xor i32 %4249, %4248
  %4251 = xor i32 %4246, %4248
  %4252 = add nuw nsw i32 %4251, %4250
  %4253 = icmp eq i32 %4252, 2
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %39, align 1
  %4255 = icmp ne i8 %4247, 0
  %4256 = xor i1 %4255, %4253
  %.v236 = select i1 %4256, i64 19, i64 98
  %4257 = add i64 %4218, %.v236
  store i64 %4257, i64* %3, align 8
  br i1 %4256, label %block_41dfbb, label %block_.L_41e00a

block_41dfbb:                                     ; preds = %block_.L_41df62
  %4258 = add i64 %4216, -40
  %4259 = add i64 %4257, 7
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i32*
  store i32 0, i32* %4260, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_41dfc2

block_.L_41dfc2:                                  ; preds = %block_41dfcc, %block_41dfbb
  %4261 = phi i64 [ %4378, %block_41dfcc ], [ %.pre155, %block_41dfbb ]
  %4262 = load i64, i64* %RBP.i, align 8
  %4263 = add i64 %4262, -40
  %4264 = add i64 %4261, 4
  store i64 %4264, i64* %3, align 8
  %4265 = inttoptr i64 %4263 to i32*
  %4266 = load i32, i32* %4265, align 4
  %4267 = add i32 %4266, -7
  %4268 = icmp ult i32 %4266, 7
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %14, align 1
  %4270 = and i32 %4267, 255
  %4271 = tail call i32 @llvm.ctpop.i32(i32 %4270)
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  store i8 %4274, i8* %21, align 1
  %4275 = xor i32 %4267, %4266
  %4276 = lshr i32 %4275, 4
  %4277 = trunc i32 %4276 to i8
  %4278 = and i8 %4277, 1
  store i8 %4278, i8* %27, align 1
  %4279 = icmp eq i32 %4267, 0
  %4280 = zext i1 %4279 to i8
  store i8 %4280, i8* %30, align 1
  %4281 = lshr i32 %4267, 31
  %4282 = trunc i32 %4281 to i8
  store i8 %4282, i8* %33, align 1
  %4283 = lshr i32 %4266, 31
  %4284 = xor i32 %4281, %4283
  %4285 = add nuw nsw i32 %4284, %4283
  %4286 = icmp eq i32 %4285, 2
  %4287 = zext i1 %4286 to i8
  store i8 %4287, i8* %39, align 1
  %4288 = icmp ne i8 %4282, 0
  %4289 = xor i1 %4288, %4286
  %.v237 = select i1 %4289, i64 10, i64 67
  %4290 = add i64 %4261, %.v237
  %4291 = add i64 %4290, 5
  store i64 %4291, i64* %3, align 8
  br i1 %4289, label %block_41dfcc, label %block_.L_41e00a.loopexit

block_41dfcc:                                     ; preds = %block_.L_41dfc2
  store i64 4, i64* %RSI.i1943, align 8
  %4292 = add i64 %4262, -32
  %4293 = add i64 %4290, 9
  store i64 %4293, i64* %3, align 8
  %4294 = inttoptr i64 %4292 to i64*
  %4295 = load i64, i64* %4294, align 8
  store i64 %4295, i64* %RAX.i1926, align 8
  %4296 = add i64 %4295, 144
  %4297 = add i64 %4290, 16
  store i64 %4297, i64* %3, align 8
  %4298 = inttoptr i64 %4296 to i64*
  %4299 = load i64, i64* %4298, align 8
  store i64 %4299, i64* %RAX.i1926, align 8
  %4300 = add i64 %4262, -36
  %4301 = add i64 %4290, 20
  store i64 %4301, i64* %3, align 8
  %4302 = inttoptr i64 %4300 to i32*
  %4303 = load i32, i32* %4302, align 4
  %4304 = sext i32 %4303 to i64
  store i64 %4304, i64* %RCX.i1915, align 8
  %4305 = shl nsw i64 %4304, 3
  %4306 = add i64 %4305, %4299
  %4307 = add i64 %4290, 24
  store i64 %4307, i64* %3, align 8
  %4308 = inttoptr i64 %4306 to i64*
  %4309 = load i64, i64* %4308, align 8
  store i64 %4309, i64* %RAX.i1926, align 8
  %4310 = add i64 %4290, 28
  store i64 %4310, i64* %3, align 8
  %4311 = load i32, i32* %4265, align 4
  %4312 = sext i32 %4311 to i64
  %4313 = shl nsw i64 %4312, 2
  store i64 %4313, i64* %RCX.i1915, align 8
  %4314 = add i64 %4313, %4309
  store i64 %4314, i64* %RAX.i1926, align 8
  %4315 = icmp ult i64 %4314, %4309
  %4316 = icmp ult i64 %4314, %4313
  %4317 = or i1 %4315, %4316
  %4318 = zext i1 %4317 to i8
  store i8 %4318, i8* %14, align 1
  %4319 = trunc i64 %4314 to i32
  %4320 = and i32 %4319, 255
  %4321 = tail call i32 @llvm.ctpop.i32(i32 %4320)
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  %4324 = xor i8 %4323, 1
  store i8 %4324, i8* %21, align 1
  %4325 = xor i64 %4313, %4309
  %4326 = xor i64 %4325, %4314
  %4327 = lshr i64 %4326, 4
  %4328 = trunc i64 %4327 to i8
  %4329 = and i8 %4328, 1
  store i8 %4329, i8* %27, align 1
  %4330 = icmp eq i64 %4314, 0
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %30, align 1
  %4332 = lshr i64 %4314, 63
  %4333 = trunc i64 %4332 to i8
  store i8 %4333, i8* %33, align 1
  %4334 = lshr i64 %4309, 63
  %4335 = lshr i64 %4312, 61
  %4336 = and i64 %4335, 1
  %4337 = xor i64 %4332, %4334
  %4338 = xor i64 %4332, %4336
  %4339 = add nuw nsw i64 %4337, %4338
  %4340 = icmp eq i64 %4339, 2
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %39, align 1
  store i64 %4314, i64* %RDI.i1946, align 8
  %4342 = add i64 %4290, 17332
  %4343 = add i64 %4290, 43
  %4344 = load i64, i64* %6, align 8
  %4345 = add i64 %4344, -8
  %4346 = inttoptr i64 %4345 to i64*
  store i64 %4343, i64* %4346, align 8
  store i64 %4345, i64* %6, align 8
  store i64 %4342, i64* %3, align 8
  %call2_41dff2 = tail call %struct.Memory* @sub_422380.byteswap(%struct.State* nonnull %0, i64 %4342, %struct.Memory* %call2_41dfa3)
  %4347 = load i64, i64* %RBP.i, align 8
  %4348 = add i64 %4347, -40
  %4349 = load i64, i64* %3, align 8
  %4350 = add i64 %4349, 3
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4348 to i32*
  %4352 = load i32, i32* %4351, align 4
  %4353 = add i32 %4352, 1
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RAX.i1926, align 8
  %4355 = icmp eq i32 %4352, -1
  %4356 = icmp eq i32 %4353, 0
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %14, align 1
  %4359 = and i32 %4353, 255
  %4360 = tail call i32 @llvm.ctpop.i32(i32 %4359)
  %4361 = trunc i32 %4360 to i8
  %4362 = and i8 %4361, 1
  %4363 = xor i8 %4362, 1
  store i8 %4363, i8* %21, align 1
  %4364 = xor i32 %4353, %4352
  %4365 = lshr i32 %4364, 4
  %4366 = trunc i32 %4365 to i8
  %4367 = and i8 %4366, 1
  store i8 %4367, i8* %27, align 1
  %4368 = zext i1 %4356 to i8
  store i8 %4368, i8* %30, align 1
  %4369 = lshr i32 %4353, 31
  %4370 = trunc i32 %4369 to i8
  store i8 %4370, i8* %33, align 1
  %4371 = lshr i32 %4352, 31
  %4372 = xor i32 %4369, %4371
  %4373 = add nuw nsw i32 %4372, %4369
  %4374 = icmp eq i32 %4373, 2
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %39, align 1
  %4376 = add i64 %4349, 9
  store i64 %4376, i64* %3, align 8
  store i32 %4353, i32* %4351, align 4
  %4377 = load i64, i64* %3, align 8
  %4378 = add i64 %4377, -62
  store i64 %4378, i64* %3, align 8
  br label %block_.L_41dfc2

block_.L_41e00a.loopexit:                         ; preds = %block_.L_41dfc2
  br label %block_.L_41e00a

block_.L_41e00a:                                  ; preds = %block_.L_41e00a.loopexit, %block_.L_41df62
  %4379 = phi i64 [ %4216, %block_.L_41df62 ], [ %4262, %block_.L_41e00a.loopexit ]
  %4380 = phi i64 [ %4257, %block_.L_41df62 ], [ %4291, %block_.L_41e00a.loopexit ]
  %4381 = add i64 %4379, -36
  %4382 = add i64 %4380, 8
  store i64 %4382, i64* %3, align 8
  %4383 = inttoptr i64 %4381 to i32*
  %4384 = load i32, i32* %4383, align 4
  %4385 = add i32 %4384, 1
  %4386 = zext i32 %4385 to i64
  store i64 %4386, i64* %RAX.i1926, align 8
  %4387 = icmp eq i32 %4384, -1
  %4388 = icmp eq i32 %4385, 0
  %4389 = or i1 %4387, %4388
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %14, align 1
  %4391 = and i32 %4385, 255
  %4392 = tail call i32 @llvm.ctpop.i32(i32 %4391)
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = xor i8 %4394, 1
  store i8 %4395, i8* %21, align 1
  %4396 = xor i32 %4385, %4384
  %4397 = lshr i32 %4396, 4
  %4398 = trunc i32 %4397 to i8
  %4399 = and i8 %4398, 1
  store i8 %4399, i8* %27, align 1
  %4400 = zext i1 %4388 to i8
  store i8 %4400, i8* %30, align 1
  %4401 = lshr i32 %4385, 31
  %4402 = trunc i32 %4401 to i8
  store i8 %4402, i8* %33, align 1
  %4403 = lshr i32 %4384, 31
  %4404 = xor i32 %4401, %4403
  %4405 = add nuw nsw i32 %4404, %4401
  %4406 = icmp eq i32 %4405, 2
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %39, align 1
  %4408 = add i64 %4380, 14
  store i64 %4408, i64* %3, align 8
  store i32 %4385, i32* %4383, align 4
  %4409 = load i64, i64* %3, align 8
  %4410 = add i64 %4409, -385
  store i64 %4410, i64* %3, align 8
  br label %block_.L_41de97

block_.L_41e01d:                                  ; preds = %block_.L_41de97
  %4411 = add i64 %3828, 5
  store i64 %4411, i64* %3, align 8
  br label %block_.L_41e022

block_.L_41e022:                                  ; preds = %block_.L_41e01d, %block_.L_41de0d
  %4412 = phi i64 [ %3587, %block_.L_41de0d ], [ %4411, %block_.L_41e01d ]
  %4413 = phi i64 [ %3448, %block_.L_41de0d ], [ %3788, %block_.L_41e01d ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_41dc89, %block_.L_41de0d ], [ %MEMORY.30, %block_.L_41e01d ]
  %4414 = add i64 %4413, -32
  %4415 = add i64 %4412, 4
  store i64 %4415, i64* %3, align 8
  %4416 = inttoptr i64 %4414 to i64*
  %4417 = load i64, i64* %4416, align 8
  store i64 %4417, i64* %RAX.i1926, align 8
  %4418 = add i64 %4417, 456
  %4419 = add i64 %4412, 10
  store i64 %4419, i64* %3, align 8
  %4420 = inttoptr i64 %4418 to i32*
  %4421 = load i32, i32* %4420, align 4
  %4422 = or i32 %4421, 32
  %4423 = zext i32 %4422 to i64
  store i64 %4423, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  %4424 = and i32 %4422, 255
  %4425 = tail call i32 @llvm.ctpop.i32(i32 %4424)
  %4426 = trunc i32 %4425 to i8
  %4427 = and i8 %4426, 1
  %4428 = xor i8 %4427, 1
  store i8 %4428, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %4429 = lshr i32 %4421, 31
  %4430 = trunc i32 %4429 to i8
  store i8 %4430, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4431 = add i64 %4412, 19
  store i64 %4431, i64* %3, align 8
  store i32 %4422, i32* %4420, align 4
  %4432 = load i64, i64* %RBP.i, align 8
  %4433 = add i64 %4432, -32
  %4434 = load i64, i64* %3, align 8
  %4435 = add i64 %4434, 4
  store i64 %4435, i64* %3, align 8
  %4436 = inttoptr i64 %4433 to i64*
  %4437 = load i64, i64* %4436, align 8
  store i64 %4437, i64* %RAX.i1926, align 8
  %4438 = add i64 %4437, 456
  %4439 = add i64 %4434, 10
  store i64 %4439, i64* %3, align 8
  %4440 = inttoptr i64 %4438 to i32*
  %4441 = load i32, i32* %4440, align 4
  %4442 = and i32 %4441, -2
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RCX.i1915, align 8
  store i8 0, i8* %14, align 1
  %4444 = and i32 %4441, 254
  %4445 = tail call i32 @llvm.ctpop.i32(i32 %4444)
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  %4448 = xor i8 %4447, 1
  store i8 %4448, i8* %21, align 1
  %4449 = icmp ult i32 %4441, 2
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %30, align 1
  %4451 = lshr i32 %4441, 31
  %4452 = trunc i32 %4451 to i8
  store i8 %4452, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4453 = add i64 %4434, 19
  store i64 %4453, i64* %3, align 8
  store i32 %4442, i32* %4440, align 4
  %4454 = load i64, i64* %RBP.i, align 8
  %4455 = add i64 %4454, -32
  %4456 = load i64, i64* %3, align 8
  %4457 = add i64 %4456, 4
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4455 to i64*
  %4459 = load i64, i64* %4458, align 8
  store i64 %4459, i64* %RAX.i1926, align 8
  %4460 = add i64 %4454, -24
  %4461 = add i64 %4456, 8
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4460 to i64*
  %4463 = load i64, i64* %4462, align 8
  store i64 %4463, i64* %RDX.i1919, align 8
  %4464 = add i64 %4456, 11
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i64*
  store i64 %4459, i64* %4465, align 8
  %4466 = load i64, i64* %RBP.i, align 8
  %4467 = add i64 %4466, -4
  %4468 = load i64, i64* %3, align 8
  %4469 = add i64 %4468, 7
  store i64 %4469, i64* %3, align 8
  %4470 = inttoptr i64 %4467 to i32*
  store i32 1, i32* %4470, align 4
  %4471 = load i64, i64* %3, align 8
  %4472 = add i64 %4471, 43
  store i64 %4472, i64* %3, align 8
  br label %block_.L_41e085

block_.L_41e05f:                                  ; preds = %block_41ddf5, %block_41dd7b, %block_41dd00, %block_41dc98, %block_41dc4a, %block_41dbfc, %block_41db76, %block_41db31, %block_41dad3, %block_41da8d, %block_41d9d6, %block_41d934, %block_41d8ef, %block_41d854, %block_41d812, %block_41d780, %block_41d744, %block_41d6cc, %block_41d690, %block_41d641, %block_41d605, %block_41d57e, %block_41d504, %block_41d498, %block_41d3b6, %block_41d359, %block_41d31a, %block_41d2d8, %block_41d293, %block_41d249, %block_41d20a
  %.sink = phi i64 [ %3538, %block_41ddf5 ], [ %3414, %block_41dd7b ], [ %3288, %block_41dd00 ], [ %3190, %block_41dc98 ], [ %3115, %block_41dc4a ], [ %3040, %block_41dbfc ], [ %2891, %block_41db76 ], [ %2828, %block_41db31 ], [ %2750, %block_41dad3 ], [ %2685, %block_41da8d ], [ %2407, %block_41d9d6 ], [ %2192, %block_41d934 ], [ %2129, %block_41d8ef ], [ %1966, %block_41d854 ], [ %1902, %block_41d812 ], [ %1738, %block_41d780 ], [ %1674, %block_41d744 ], [ %1546, %block_41d6cc ], [ %1482, %block_41d690 ], [ %1371, %block_41d641 ], [ %1307, %block_41d605 ], [ %1105, %block_41d57e ], [ %974, %block_41d504 ], [ %850, %block_41d498 ], [ %641, %block_41d3b6 ], [ %552, %block_41d359 ], [ %488, %block_41d31a ], [ %412, %block_41d2d8 ], [ %341, %block_41d293 ], [ %253, %block_41d249 ], [ %188, %block_41d20a ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_41dc89, %block_41ddf5 ], [ %call2_41dc89, %block_41dd7b ], [ %call2_41dc89, %block_41dd00 ], [ %call2_41dc89, %block_41dc98 ], [ %call2_41dc3b, %block_41dc4a ], [ %call2_41dbed, %block_41dbfc ], [ %call2_41db67, %block_41db76 ], [ %call2_41db22, %block_41db31 ], [ %call2_41dac4, %block_41dad3 ], [ %call2_41da7e, %block_41da8d ], [ %MEMORY.20, %block_41d9d6 ], [ %call2_41d925, %block_41d934 ], [ %call2_41d8e0, %block_41d8ef ], [ %call2_41d845, %block_41d854 ], [ %call2_41d803, %block_41d812 ], [ %call2_41d771, %block_41d780 ], [ %call2_41d735, %block_41d744 ], [ %call2_41d6bd, %block_41d6cc ], [ %call2_41d682, %block_41d690 ], [ %call2_41d632, %block_41d641 ], [ %call2_41d5f7, %block_41d605 ], [ %call2_41d56f, %block_41d57e ], [ %call2_41d4f5, %block_41d504 ], [ %call2_41d489, %block_41d498 ], [ %call2_41d3a7, %block_41d3b6 ], [ %call2_41d34a, %block_41d359 ], [ %call2_41d30c, %block_41d31a ], [ %call2_41d2ca, %block_41d2d8 ], [ %call2_41d285, %block_41d293 ], [ %call2_41d23a, %block_41d249 ], [ %MEMORY.0, %block_41d20a ]
  %4473 = load i64, i64* %RBP.i, align 8
  %4474 = add i64 %4473, -32
  %4475 = add i64 %.sink, 5
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i64*
  %4477 = load i64, i64* %4476, align 8
  store i8 0, i8* %14, align 1
  %4478 = trunc i64 %4477 to i32
  %4479 = and i32 %4478, 255
  %4480 = tail call i32 @llvm.ctpop.i32(i32 %4479)
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  %4483 = xor i8 %4482, 1
  store i8 %4483, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4484 = icmp eq i64 %4477, 0
  %4485 = zext i1 %4484 to i8
  store i8 %4485, i8* %30, align 1
  %4486 = lshr i64 %4477, 63
  %4487 = trunc i64 %4486 to i8
  store i8 %4487, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %4484, i64 20, i64 11
  %4488 = add i64 %.sink, %.v180
  store i64 %4488, i64* %3, align 8
  br i1 %4484, label %block_.L_41e073, label %block_41e06a

block_41e06a:                                     ; preds = %block_.L_41e05f
  %4489 = add i64 %4488, 4
  store i64 %4489, i64* %3, align 8
  %4490 = load i64, i64* %4476, align 8
  store i64 %4490, i64* %RDI.i1946, align 8
  %4491 = add i64 %4488, 83302
  %4492 = add i64 %4488, 9
  %4493 = load i64, i64* %6, align 8
  %4494 = add i64 %4493, -8
  %4495 = inttoptr i64 %4494 to i64*
  store i64 %4492, i64* %4495, align 8
  store i64 %4494, i64* %6, align 8
  store i64 %4491, i64* %3, align 8
  %call2_41e06e = tail call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* nonnull %0, i64 %4491, %struct.Memory* %MEMORY.37)
  %.pre156 = load i64, i64* %RBP.i, align 8
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_41e073

block_.L_41e073:                                  ; preds = %block_41e06a, %block_.L_41e05f
  %4496 = phi i64 [ %4488, %block_.L_41e05f ], [ %.pre157, %block_41e06a ]
  %4497 = phi i64 [ %4473, %block_.L_41e05f ], [ %.pre156, %block_41e06a ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.37, %block_.L_41e05f ], [ %call2_41e06e, %block_41e06a ]
  %4498 = add i64 %4497, -24
  %4499 = add i64 %4496, 4
  store i64 %4499, i64* %3, align 8
  %4500 = inttoptr i64 %4498 to i64*
  %4501 = load i64, i64* %4500, align 8
  store i64 %4501, i64* %RAX.i1926, align 8
  %4502 = add i64 %4496, 11
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i64*
  store i64 0, i64* %4503, align 8
  %4504 = load i64, i64* %RBP.i, align 8
  %4505 = add i64 %4504, -4
  %4506 = load i64, i64* %3, align 8
  %4507 = add i64 %4506, 7
  store i64 %4507, i64* %3, align 8
  %4508 = inttoptr i64 %4505 to i32*
  store i32 1, i32* %4508, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_41e085

block_.L_41e085:                                  ; preds = %block_.L_41e073, %block_.L_41e022, %block_41d1cf, %block_41d190
  %RAX.i.pre-phi = phi i64* [ %RAX.i1926, %block_.L_41e073 ], [ %RAX.i1926, %block_.L_41e022 ], [ %RAX.i1926, %block_41d1cf ], [ %.pre164, %block_41d190 ]
  %4509 = phi i64 [ %.pre158, %block_.L_41e073 ], [ %4472, %block_.L_41e022 ], [ %130, %block_41d1cf ], [ %87, %block_41d190 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.38, %block_.L_41e073 ], [ %MEMORY.36, %block_.L_41e022 ], [ %call2_41d1c0, %block_41d1cf ], [ %call2_41d182, %block_41d190 ]
  %4510 = load i64, i64* %RBP.i, align 8
  %4511 = add i64 %4510, -4
  %4512 = add i64 %4509, 3
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to i32*
  %4514 = load i32, i32* %4513, align 4
  %4515 = zext i32 %4514 to i64
  store i64 %4515, i64* %RAX.i.pre-phi, align 8
  %4516 = load i64, i64* %6, align 8
  %4517 = add i64 %4516, 240
  store i64 %4517, i64* %6, align 8
  %4518 = icmp ugt i64 %4516, -241
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %14, align 1
  %4520 = trunc i64 %4517 to i32
  %4521 = and i32 %4520, 255
  %4522 = tail call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  store i8 %4525, i8* %21, align 1
  %4526 = xor i64 %4516, 16
  %4527 = xor i64 %4526, %4517
  %4528 = lshr i64 %4527, 4
  %4529 = trunc i64 %4528 to i8
  %4530 = and i8 %4529, 1
  store i8 %4530, i8* %27, align 1
  %4531 = icmp eq i64 %4517, 0
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %30, align 1
  %4533 = lshr i64 %4517, 63
  %4534 = trunc i64 %4533 to i8
  store i8 %4534, i8* %33, align 1
  %4535 = lshr i64 %4516, 63
  %4536 = xor i64 %4533, %4535
  %4537 = add nuw nsw i64 %4536, %4533
  %4538 = icmp eq i64 %4537, 2
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %39, align 1
  %4540 = add i64 %4509, 11
  store i64 %4540, i64* %3, align 8
  %4541 = add i64 %4516, 248
  %4542 = inttoptr i64 %4517 to i64*
  %4543 = load i64, i64* %4542, align 8
  store i64 %4543, i64* %RBP.i, align 8
  store i64 %4541, i64* %6, align 8
  %4544 = add i64 %4509, 12
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4541 to i64*
  %4546 = load i64, i64* %4545, align 8
  store i64 %4546, i64* %3, align 8
  %4547 = add i64 %4516, 256
  store i64 %4547, i64* %6, align 8
  ret %struct.Memory* %MEMORY.39
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
define %struct.Memory* @routine_subq__0xf0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -240
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 240
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
define %struct.Memory* @routine_je_.L_41d19c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e085(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jne_.L_41d1db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d1fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_cmpl_0x661538___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_41d20f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 456
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -457
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
define %struct.Memory* @routine_movq___rdi____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d24e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d273(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_callq_.read_bin_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41d298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x200___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
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
define %struct.Memory* @routine_je_.L_41d2dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41d2dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41d31f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_jne_.L_41d31f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x88___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 136
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -137
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
define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d35e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d383(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x88___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 136
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -137
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
define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d3bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d3da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_41d3f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_41d43a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_41d435(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl_0x1c8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_41d49d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d49d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_andl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_41d509(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d509(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x100___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41d583(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_jne_.L_41d583(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d5de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_41d5d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_41d598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d5de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -49
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
define %struct.Memory* @routine_jne_.L_41d60a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x38___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -57
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
define %struct.Memory* @routine_jne_.L_41d646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d669(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x38___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -57
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -65
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
define %struct.Memory* @routine_jne_.L_41d695(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -81
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
define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d6d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d6f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -81
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
define %struct.Memory* @routine_andl__0x400___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1024
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 10
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41d7c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x70___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -113
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
define %struct.Memory* @routine_jne_.L_41d749(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x74___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 116
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -117
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
define %struct.Memory* @routine_jne_.L_41d785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d7bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x70___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -113
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x74___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 116
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -117
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
define %struct.Memory* @routine_jmpq_.L_41d7c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41d896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x78___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 120
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -121
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
define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41d817(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x7c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 124
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -125
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
define %struct.Memory* @routine_jne_.L_41d859(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d891(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x78___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 120
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -121
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x7c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 124
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -125
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
define %struct.Memory* @routine_jmpq_.L_41d896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4096
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41d97a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x80___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41d8f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x84___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 132
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -133
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
define %struct.Memory* @routine_jne_.L_41d939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41d975(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x84___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 132
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -133
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
define %struct.Memory* @routine_jmpq_.L_41d97a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_41da4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_41d9db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41da3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_41da35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xac___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 172
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41d9f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41da3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41da3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41d981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x130___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 304
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -305
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
define %struct.Memory* @routine_jne_.L_41da92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -225
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
define %struct.Memory* @routine_jne_.L_41dad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x80___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 128
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 7
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
define %struct.Memory* @routine_je_.L_41dbbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 448
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -449
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
define %struct.Memory* @routine_movq__rdi__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41db36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 452
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -453
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
define %struct.Memory* @routine_jne_.L_41db7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41dbb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 448
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -449
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
define %struct.Memory* @routine_addq__0x1c4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 452
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -453
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
define %struct.Memory* @routine_jmpq_.L_41dbbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 168
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -169
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
define %struct.Memory* @routine_jne_.L_41dc01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41dc4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41dc9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_41dd18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41dd05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41dd0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41dca4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41dd93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41dd80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41dd85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41dd1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41de0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_41ddfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ddff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41dd9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41e022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41de62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xe0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -225
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
define %struct.Memory* @routine_jmpq_.L_41de22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x130___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 304
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -305
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xa8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 168
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -169
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
define %struct.Memory* @routine_jg_.L_41e01d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41defa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41deb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41df62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41df5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41df14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41df62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x88__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_41e00a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_41e005(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41dfc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e00a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e00f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41de97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_41e073(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xf0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 240
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -241
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
