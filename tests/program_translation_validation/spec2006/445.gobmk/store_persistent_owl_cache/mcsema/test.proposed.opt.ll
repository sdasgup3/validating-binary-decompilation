; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xad1720_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57eec5_type = type <{ [8 x i8] }>
%G__0x57f0c2_type = type <{ [8 x i8] }>
%G__0x57f0de_type = type <{ [8 x i8] }>
%G__0xad1730_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xad1720 = local_unnamed_addr global %G_0xad1720_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57eec5 = global %G__0x57eec5_type zeroinitializer
@G__0x57f0c2 = global %G__0x57f0c2_type zeroinitializer
@G__0x57f0de = global %G__0x57f0de_type zeroinitializer
@G__0xad1730 = global %G__0xad1730_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415cb0.mark_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @store_persistent_owl_cache(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15.i969 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i969, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i967 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i967, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i965 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %RBX.i965, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %7, -1224
  store i64 %29, i64* %6, align 8
  %30 = icmp ult i64 %26, 1192
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = trunc i64 %29 to i32
  %34 = and i32 %33, 255
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %38, i8* %39, align 1
  %40 = xor i64 %26, %29
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i64 %29, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i64 %29, 63
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i64 %26, 63
  %52 = xor i64 %48, %51
  %53 = add nuw nsw i64 %52, %51
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i960 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, 48
  %60 = add i64 %28, 10
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %RAX.i960, align 8
  %R10.i958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %64 = add i64 %58, 40
  %65 = add i64 %28, 14
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %R10.i958, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i954 = bitcast %union.anon* %68 to i32*
  %69 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %70 = add i64 %58, 32
  %71 = add i64 %28, 18
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %69, align 8
  %75 = add i64 %58, 24
  %76 = add i64 %28, 21
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RBX.i965, align 8
  %R14D.i948 = bitcast %union.anon* %16 to i32*
  %80 = add i64 %58, 16
  %81 = add i64 %28, 25
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %R14.i967, align 8
  %R15D.i946 = bitcast %union.anon* %11 to i32*
  store i64 3, i64* %R15.i969, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %85 to i32*
  %86 = add i64 %58, -28
  %87 = load i32, i32* %EDI.i, align 4
  %88 = add i64 %28, 34
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %90 to i32*
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -32
  %93 = load i32, i32* %ESI.i, align 4
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i939 = bitcast %union.anon* %97 to i32*
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -36
  %100 = load i32, i32* %EDX.i939, align 4
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i936 = bitcast %union.anon* %104 to i32*
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -40
  %107 = load i32, i32* %ECX.i936, align 4
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 3
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %110, align 4
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i933 = bitcast %union.anon* %111 to i32*
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -44
  %114 = load i32, i32* %R8D.i933, align 4
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %117, align 4
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %118 to i32*
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -48
  %121 = load i32, i32* %R9D.i, align 4
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %124, align 4
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -52
  %127 = load i32, i32* %R14D.i948, align 4
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %130, align 4
  %EBX.i = bitcast %union.anon* %22 to i32*
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -56
  %133 = load i32, i32* %EBX.i, align 4
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 3
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %136, align 4
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -60
  %139 = load i32, i32* %R11D.i954, align 4
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -72
  %145 = load i64, i64* %R10.i958, align 8
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148, align 8
  %EAX.i920 = bitcast %union.anon* %57 to i32*
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -76
  %151 = load i32, i32* %EAX.i920, align 4
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 3
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* %R15D.i946, align 4
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -76
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 4
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %157 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = sub i32 %155, %161
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %R15.i969, align 8
  %164 = add i64 %156, -496
  %165 = add i64 %158, 11
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %162, i32* %166, align 4
  %167 = load i64, i64* %3, align 8
  %168 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %32, align 1
  %169 = and i32 %168, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %174 = icmp eq i32 %168, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %47, align 1
  %176 = lshr i32 %168, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v106 = select i1 %174, i64 14, i64 19
  %178 = add i64 %167, %.v106
  store i64 %178, i64* %3, align 8
  br i1 %174, label %block_44ff17, label %block_.L_44ff1c

block_44ff17:                                     ; preds = %entry
  %179 = add i64 %178, 45
  store i64 %179, i64* %3, align 8
  br label %block_.L_44ff44

block_.L_44ff1c:                                  ; preds = %entry
  %RDI.i910 = getelementptr inbounds %union.anon, %union.anon* %85, i64 0, i32 0
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI.i910, align 8
  %RSI.i908 = getelementptr inbounds %union.anon, %union.anon* %90, i64 0, i32 0
  store i64 722, i64* %RSI.i908, align 8
  %RDX.i906 = getelementptr inbounds %union.anon, %union.anon* %97, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i906, align 8
  store i64 4294967295, i64* %RAX.i960, align 8
  %RCX.i902 = getelementptr inbounds %union.anon, %union.anon* %104, i64 0, i32 0
  store i64 4294967295, i64* %RCX.i902, align 8
  %180 = getelementptr inbounds %union.anon, %union.anon* %111, i64 0, i32 0
  store i64 4294967295, i64* %180, align 8
  %181 = add i64 %178, 8564
  %182 = add i64 %178, 40
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %call2_44ff3f = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %181, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44ff44

block_.L_44ff44:                                  ; preds = %block_.L_44ff1c, %block_44ff17
  %186 = phi i64 [ %.pre, %block_.L_44ff1c ], [ %179, %block_44ff17 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_44ff3f, %block_.L_44ff1c ], [ %2, %block_44ff17 ]
  %187 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %188 = add i32 %187, -150
  %189 = icmp ult i32 %187, 150
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %32, align 1
  %191 = and i32 %188, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %39, align 1
  %196 = xor i32 %187, 16
  %197 = xor i32 %196, %188
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %44, align 1
  %201 = icmp eq i32 %188, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %47, align 1
  %203 = lshr i32 %188, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %50, align 1
  %205 = lshr i32 %187, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %205
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %56, align 1
  %.v107 = select i1 %201, i64 17, i64 22
  %210 = add i64 %186, %.v107
  store i64 %210, i64* %3, align 8
  br i1 %201, label %block_44ff55, label %block_.L_44ff5a

block_44ff55:                                     ; preds = %block_.L_44ff44
  %211 = add i64 %210, -1253
  %212 = add i64 %210, 5
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %6, align 8
  store i64 %211, i64* %3, align 8
  %call2_44ff55 = tail call %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* nonnull %0, i64 %211, %struct.Memory* %MEMORY.0)
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  br label %block_.L_44ff5a

block_.L_44ff5a:                                  ; preds = %block_.L_44ff44, %block_44ff55
  %216 = phi i32 [ %187, %block_.L_44ff44 ], [ %.pre74, %block_44ff55 ]
  %217 = phi i64 [ %210, %block_.L_44ff44 ], [ %.pre73, %block_44ff55 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44ff44 ], [ %call2_44ff55, %block_44ff55 ]
  %218 = add i32 %216, -150
  %219 = icmp ult i32 %216, 150
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %32, align 1
  %221 = and i32 %218, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %39, align 1
  %226 = xor i32 %216, 16
  %227 = xor i32 %226, %218
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %44, align 1
  %231 = icmp eq i32 %218, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %47, align 1
  %233 = lshr i32 %218, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %50, align 1
  %235 = lshr i32 %216, 31
  %236 = xor i32 %233, %235
  %237 = add nuw nsw i32 %236, %235
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %56, align 1
  %.v108 = select i1 %231, i64 17, i64 71
  %240 = add i64 %217, %.v108
  store i64 %240, i64* %3, align 8
  br i1 %231, label %block_44ff6b, label %block_.L_44ffa1

block_44ff6b:                                     ; preds = %block_.L_44ff5a
  %241 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %242 = and i32 %241, 4096
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX.i960, align 8
  store i8 0, i8* %32, align 1
  store i8 1, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %.lobit103 = lshr exact i32 %242, 12
  %244 = trunc i32 %.lobit103 to i8
  %245 = xor i8 %244, 1
  store i8 %245, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %246 = icmp eq i8 %245, 0
  %.v149 = select i1 %246, i64 26, i64 21
  %247 = add i64 %240, %.v149
  store i64 %247, i64* %3, align 8
  br i1 %246, label %block_.L_44ff85, label %block_44ff80

block_44ff80:                                     ; preds = %block_44ff6b
  %248 = add i64 %247, 28
  store i64 %248, i64* %3, align 8
  br label %block_.L_44ff9c

block_.L_44ff85:                                  ; preds = %block_44ff6b
  %RDI.i883 = getelementptr inbounds %union.anon, %union.anon* %85, i64 0, i32 0
  store i64 ptrtoint (%G__0x57f0c2_type* @G__0x57f0c2 to i64), i64* %RDI.i883, align 8
  %AL.i881 = bitcast %union.anon* %57 to i8*
  store i8 0, i8* %AL.i881, align 1
  %249 = add i64 %247, 7723
  %250 = add i64 %247, 17
  %251 = load i64, i64* %6, align 8
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %6, align 8
  store i64 %249, i64* %3, align 8
  %call2_44ff91 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %249, %struct.Memory* %MEMORY.1)
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -1200
  %256 = load i32, i32* %EAX.i920, align 4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 6
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %259, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_44ff9c

block_.L_44ff9c:                                  ; preds = %block_.L_44ff85, %block_44ff80
  %260 = phi i64 [ %.pre75, %block_.L_44ff85 ], [ %248, %block_44ff80 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_44ff91, %block_.L_44ff85 ], [ %MEMORY.1, %block_44ff80 ]
  %261 = add i64 %260, 2151
  store i64 %261, i64* %3, align 8
  br label %block_.L_450803

block_.L_44ffa1:                                  ; preds = %block_.L_44ff5a
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX.i960, align 8
  %RCX.i872 = getelementptr inbounds %union.anon, %union.anon* %104, i64 0, i32 0
  %262 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RCX.i872, align 8
  %RDX.i870 = getelementptr inbounds %union.anon, %union.anon* %97, i64 0, i32 0
  %264 = sext i32 %216 to i64
  %265 = mul nsw i64 %264, 444
  store i64 %265, i64* %RDX.i870, align 8
  %266 = lshr i64 %265, 63
  %RSI.i866 = getelementptr inbounds %union.anon, %union.anon* %90, i64 0, i32 0
  %267 = add i64 %265, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  store i64 %267, i64* %RSI.i866, align 8
  %268 = icmp ult i64 %267, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  %269 = icmp ult i64 %267, %265
  %270 = or i1 %268, %269
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %32, align 1
  %272 = trunc i64 %267 to i32
  %273 = and i32 %272, 252
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %39, align 1
  %278 = xor i64 %265, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  %279 = xor i64 %278, %267
  %280 = lshr i64 %279, 4
  %281 = trunc i64 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %44, align 1
  %283 = icmp eq i64 %267, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %47, align 1
  %285 = lshr i64 %267, 63
  %286 = trunc i64 %285 to i8
  store i8 %286, i8* %50, align 1
  %287 = xor i64 %285, lshr (i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64 63)
  %288 = xor i64 %285, %266
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %56, align 1
  %292 = inttoptr i64 %267 to i32*
  %293 = add i64 %240, 40
  store i64 %293, i64* %3, align 8
  store i32 %262, i32* %292, align 4
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -28
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 3
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %295 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RCX.i872, align 8
  %301 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %302, 444
  store i64 %303, i64* %RDX.i870, align 8
  %304 = lshr i64 %303, 63
  %305 = load i64, i64* %RAX.i960, align 8
  %306 = add i64 %303, %305
  store i64 %306, i64* %RSI.i866, align 8
  %307 = icmp ult i64 %306, %305
  %308 = icmp ult i64 %306, %303
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %32, align 1
  %311 = trunc i64 %306 to i32
  %312 = and i32 %311, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %39, align 1
  %317 = xor i64 %303, %305
  %318 = xor i64 %317, %306
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %44, align 1
  %322 = icmp eq i64 %306, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %47, align 1
  %324 = lshr i64 %306, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %50, align 1
  %326 = lshr i64 %305, 63
  %327 = xor i64 %324, %326
  %328 = xor i64 %324, %304
  %329 = add nuw nsw i64 %327, %328
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %56, align 1
  %332 = add i64 %306, 412
  %333 = add i64 %296, 30
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  store i32 %299, i32* %334, align 4
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -32
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RCX.i872, align 8
  %342 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %343 = sext i32 %342 to i64
  %344 = mul nsw i64 %343, 444
  store i64 %344, i64* %RDX.i870, align 8
  %345 = lshr i64 %344, 63
  %346 = load i64, i64* %RAX.i960, align 8
  %347 = add i64 %344, %346
  store i64 %347, i64* %RSI.i866, align 8
  %348 = icmp ult i64 %347, %346
  %349 = icmp ult i64 %347, %344
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %32, align 1
  %352 = trunc i64 %347 to i32
  %353 = and i32 %352, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %39, align 1
  %358 = xor i64 %344, %346
  %359 = xor i64 %358, %347
  %360 = lshr i64 %359, 4
  %361 = trunc i64 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %44, align 1
  %363 = icmp eq i64 %347, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %47, align 1
  %365 = lshr i64 %347, 63
  %366 = trunc i64 %365 to i8
  store i8 %366, i8* %50, align 1
  %367 = lshr i64 %346, 63
  %368 = xor i64 %365, %367
  %369 = xor i64 %365, %345
  %370 = add nuw nsw i64 %368, %369
  %371 = icmp eq i64 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %56, align 1
  %373 = add i64 %347, 416
  %374 = add i64 %337, 30
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  store i32 %340, i32* %375, align 4
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -36
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, 3
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RCX.i872, align 8
  %383 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %384 = sext i32 %383 to i64
  %385 = mul nsw i64 %384, 444
  store i64 %385, i64* %RDX.i870, align 8
  %386 = lshr i64 %385, 63
  %387 = load i64, i64* %RAX.i960, align 8
  %388 = add i64 %385, %387
  store i64 %388, i64* %RSI.i866, align 8
  %389 = icmp ult i64 %388, %387
  %390 = icmp ult i64 %388, %385
  %391 = or i1 %389, %390
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %32, align 1
  %393 = trunc i64 %388 to i32
  %394 = and i32 %393, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %39, align 1
  %399 = xor i64 %385, %387
  %400 = xor i64 %399, %388
  %401 = lshr i64 %400, 4
  %402 = trunc i64 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %44, align 1
  %404 = icmp eq i64 %388, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %47, align 1
  %406 = lshr i64 %388, 63
  %407 = trunc i64 %406 to i8
  store i8 %407, i8* %50, align 1
  %408 = lshr i64 %387, 63
  %409 = xor i64 %406, %408
  %410 = xor i64 %406, %386
  %411 = add nuw nsw i64 %409, %410
  %412 = icmp eq i64 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %56, align 1
  %414 = add i64 %388, 420
  %415 = add i64 %378, 30
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  store i32 %381, i32* %416, align 4
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -40
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %419, 3
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %418 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RCX.i872, align 8
  %424 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %425 = sext i32 %424 to i64
  %426 = mul nsw i64 %425, 444
  store i64 %426, i64* %RDX.i870, align 8
  %427 = lshr i64 %426, 63
  %428 = load i64, i64* %RAX.i960, align 8
  %429 = add i64 %426, %428
  store i64 %429, i64* %RSI.i866, align 8
  %430 = icmp ult i64 %429, %428
  %431 = icmp ult i64 %429, %426
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %32, align 1
  %434 = trunc i64 %429 to i32
  %435 = and i32 %434, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %39, align 1
  %440 = xor i64 %426, %428
  %441 = xor i64 %440, %429
  %442 = lshr i64 %441, 4
  %443 = trunc i64 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %44, align 1
  %445 = icmp eq i64 %429, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %47, align 1
  %447 = lshr i64 %429, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %50, align 1
  %449 = lshr i64 %428, 63
  %450 = xor i64 %447, %449
  %451 = xor i64 %447, %427
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %56, align 1
  %455 = add i64 %429, 424
  %456 = add i64 %419, 30
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  store i32 %422, i32* %457, align 4
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -44
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 3
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RCX.i872, align 8
  %465 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %466 = sext i32 %465 to i64
  %467 = mul nsw i64 %466, 444
  store i64 %467, i64* %RDX.i870, align 8
  %468 = lshr i64 %467, 63
  %469 = load i64, i64* %RAX.i960, align 8
  %470 = add i64 %467, %469
  store i64 %470, i64* %RSI.i866, align 8
  %471 = icmp ult i64 %470, %469
  %472 = icmp ult i64 %470, %467
  %473 = or i1 %471, %472
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %32, align 1
  %475 = trunc i64 %470 to i32
  %476 = and i32 %475, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %39, align 1
  %481 = xor i64 %467, %469
  %482 = xor i64 %481, %470
  %483 = lshr i64 %482, 4
  %484 = trunc i64 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %44, align 1
  %486 = icmp eq i64 %470, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %47, align 1
  %488 = lshr i64 %470, 63
  %489 = trunc i64 %488 to i8
  store i8 %489, i8* %50, align 1
  %490 = lshr i64 %469, 63
  %491 = xor i64 %488, %490
  %492 = xor i64 %488, %468
  %493 = add nuw nsw i64 %491, %492
  %494 = icmp eq i64 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %56, align 1
  %496 = add i64 %470, 428
  %497 = add i64 %460, 30
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 %463, i32* %498, align 4
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -56
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 3
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RCX.i872, align 8
  %506 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %507 = sext i32 %506 to i64
  %508 = mul nsw i64 %507, 444
  store i64 %508, i64* %RDX.i870, align 8
  %509 = lshr i64 %508, 63
  %510 = load i64, i64* %RAX.i960, align 8
  %511 = add i64 %508, %510
  store i64 %511, i64* %RSI.i866, align 8
  %512 = icmp ult i64 %511, %510
  %513 = icmp ult i64 %511, %508
  %514 = or i1 %512, %513
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %32, align 1
  %516 = trunc i64 %511 to i32
  %517 = and i32 %516, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %39, align 1
  %522 = xor i64 %508, %510
  %523 = xor i64 %522, %511
  %524 = lshr i64 %523, 4
  %525 = trunc i64 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %44, align 1
  %527 = icmp eq i64 %511, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %47, align 1
  %529 = lshr i64 %511, 63
  %530 = trunc i64 %529 to i8
  store i8 %530, i8* %50, align 1
  %531 = lshr i64 %510, 63
  %532 = xor i64 %529, %531
  %533 = xor i64 %529, %509
  %534 = add nuw nsw i64 %532, %533
  %535 = icmp eq i64 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %56, align 1
  %537 = add i64 %511, 432
  %538 = add i64 %501, 30
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  store i32 %504, i32* %539, align 4
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -48
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, 3
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX.i872, align 8
  %547 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %548 = sext i32 %547 to i64
  %549 = mul nsw i64 %548, 444
  store i64 %549, i64* %RDX.i870, align 8
  %550 = lshr i64 %549, 63
  %551 = load i64, i64* %RAX.i960, align 8
  %552 = add i64 %549, %551
  store i64 %552, i64* %RSI.i866, align 8
  %553 = icmp ult i64 %552, %551
  %554 = icmp ult i64 %552, %549
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %32, align 1
  %557 = trunc i64 %552 to i32
  %558 = and i32 %557, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %39, align 1
  %563 = xor i64 %549, %551
  %564 = xor i64 %563, %552
  %565 = lshr i64 %564, 4
  %566 = trunc i64 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %44, align 1
  %568 = icmp eq i64 %552, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %47, align 1
  %570 = lshr i64 %552, 63
  %571 = trunc i64 %570 to i8
  store i8 %571, i8* %50, align 1
  %572 = lshr i64 %551, 63
  %573 = xor i64 %570, %572
  %574 = xor i64 %570, %550
  %575 = add nuw nsw i64 %573, %574
  %576 = icmp eq i64 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %56, align 1
  %578 = add i64 %552, 436
  %579 = add i64 %542, 30
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  store i32 %545, i32* %580, align 4
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -52
  %583 = load i64, i64* %3, align 8
  %584 = add i64 %583, 3
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RCX.i872, align 8
  %588 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %589 = sext i32 %588 to i64
  %590 = mul nsw i64 %589, 444
  store i64 %590, i64* %RDX.i870, align 8
  %591 = lshr i64 %590, 63
  %592 = load i64, i64* %RAX.i960, align 8
  %593 = add i64 %590, %592
  store i64 %593, i64* %RSI.i866, align 8
  %594 = icmp ult i64 %593, %592
  %595 = icmp ult i64 %593, %590
  %596 = or i1 %594, %595
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %32, align 1
  %598 = trunc i64 %593 to i32
  %599 = and i32 %598, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %39, align 1
  %604 = xor i64 %590, %592
  %605 = xor i64 %604, %593
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %44, align 1
  %609 = icmp eq i64 %593, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %47, align 1
  %611 = lshr i64 %593, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %50, align 1
  %613 = lshr i64 %592, 63
  %614 = xor i64 %611, %613
  %615 = xor i64 %611, %591
  %616 = add nuw nsw i64 %614, %615
  %617 = icmp eq i64 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %56, align 1
  %619 = add i64 %593, 440
  %620 = add i64 %583, 30
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  store i32 %586, i32* %621, align 4
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -60
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, 3
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %623 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %629 = sext i32 %628 to i64
  %630 = mul nsw i64 %629, 444
  %631 = load i64, i64* %RAX.i960, align 8
  %632 = add i64 %630, %631
  store i64 %632, i64* %RSI.i866, align 8
  %633 = add i64 %632, 408
  %634 = add i64 %624, 30
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  store i32 %627, i32* %635, align 4
  %636 = load i64, i64* %3, align 8
  %637 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RCX.i872, align 8
  %639 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %640 = sext i32 %639 to i64
  %641 = mul nsw i64 %640, 444
  store i64 %641, i64* %RDX.i870, align 8
  %642 = lshr i64 %641, 63
  %643 = load i64, i64* %RAX.i960, align 8
  %644 = add i64 %641, %643
  store i64 %644, i64* %RAX.i960, align 8
  %645 = icmp ult i64 %644, %643
  %646 = icmp ult i64 %644, %641
  %647 = or i1 %645, %646
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %32, align 1
  %649 = trunc i64 %644 to i32
  %650 = and i32 %649, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %39, align 1
  %655 = xor i64 %641, %643
  %656 = xor i64 %655, %644
  %657 = lshr i64 %656, 4
  %658 = trunc i64 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %44, align 1
  %660 = icmp eq i64 %644, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %47, align 1
  %662 = lshr i64 %644, 63
  %663 = trunc i64 %662 to i8
  store i8 %663, i8* %50, align 1
  %664 = lshr i64 %643, 63
  %665 = xor i64 %662, %664
  %666 = xor i64 %662, %642
  %667 = add nuw nsw i64 %665, %666
  %668 = icmp eq i64 %667, 2
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %56, align 1
  %670 = add i64 %644, 404
  %671 = add i64 %636, 31
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  store i32 %637, i32* %672, align 4
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -484
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 10
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %674 to i32*
  store i32 21, i32* %677, align 4
  %SIL.i676 = bitcast %union.anon* %90 to i8*
  %DL.i668 = bitcast %union.anon* %97 to i8*
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_450100

block_.L_450100:                                  ; preds = %block_.L_450158, %block_.L_44ffa1
  %678 = phi i64 [ %793, %block_.L_450158 ], [ %.pre76, %block_.L_44ffa1 ]
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -484
  %681 = add i64 %678, 10
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = add i32 %683, -400
  %685 = icmp ult i32 %683, 400
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %32, align 1
  %687 = and i32 %684, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %39, align 1
  %692 = xor i32 %683, 16
  %693 = xor i32 %692, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %44, align 1
  %697 = icmp eq i32 %684, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %47, align 1
  %699 = lshr i32 %684, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %50, align 1
  %701 = lshr i32 %683, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %701
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %56, align 1
  %706 = icmp ne i8 %700, 0
  %707 = xor i1 %706, %704
  %.v109 = select i1 %707, i64 16, i64 113
  %708 = add i64 %678, %.v109
  store i64 %708, i64* %3, align 8
  br i1 %707, label %block_450110, label %block_.L_450171

block_450110:                                     ; preds = %block_.L_450100
  %709 = add i64 %708, 7
  store i64 %709, i64* %3, align 8
  %710 = load i32, i32* %682, align 4
  %711 = sext i32 %710 to i64
  store i64 %711, i64* %RAX.i960, align 8
  %712 = add nsw i64 %711, 12099168
  %713 = add i64 %708, 15
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i8*
  %715 = load i8, i8* %714, align 1
  %716 = zext i8 %715 to i64
  store i64 %716, i64* %RCX.i872, align 8
  %717 = zext i8 %715 to i32
  %718 = add nsw i32 %717, -3
  %719 = icmp ult i8 %715, 3
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %32, align 1
  %721 = and i32 %718, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %39, align 1
  %726 = xor i32 %718, %717
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %44, align 1
  %730 = icmp eq i32 %718, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %47, align 1
  %732 = lshr i32 %718, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v148 = select i1 %730, i64 72, i64 24
  %734 = add i64 %708, %.v148
  store i64 %734, i64* %3, align 8
  br i1 %730, label %block_.L_450158, label %block_450128

block_450128:                                     ; preds = %block_450110
  %735 = add i64 %679, -72
  %736 = add i64 %734, 4
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %RAX.i960, align 8
  %739 = add i64 %734, 11
  store i64 %739, i64* %3, align 8
  %740 = load i32, i32* %682, align 4
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RCX.i872, align 8
  %742 = add i64 %738, %741
  %743 = add i64 %734, 15
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i8*
  %745 = load i8, i8* %744, align 1
  %746 = icmp eq i8 %745, 0
  %747 = xor i1 %746, true
  %748 = zext i1 %747 to i8
  store i8 0, i8* %32, align 1
  %749 = zext i1 %747 to i32
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = xor i8 %751, 1
  store i8 %752, i8* %39, align 1
  %753 = zext i1 %746 to i8
  store i8 %753, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %44, align 1
  %754 = zext i1 %747 to i64
  store i64 %754, i64* %RDX.i870, align 8
  store i8 %748, i8* %SIL.i676, align 1
  %755 = add i64 %734, 40
  store i64 %755, i64* %3, align 8
  %756 = load i32, i32* %682, align 4
  %757 = sext i32 %756 to i64
  store i64 %757, i64* %RAX.i960, align 8
  %758 = add nsw i64 %757, -480
  %759 = add i64 %758, %679
  %760 = add i64 %734, 48
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i8*
  store i8 %748, i8* %761, align 1
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_450158

block_.L_450158:                                  ; preds = %block_450128, %block_450110
  %762 = phi i64 [ %.pre100, %block_450128 ], [ %679, %block_450110 ]
  %763 = phi i64 [ %.pre99, %block_450128 ], [ %734, %block_450110 ]
  %764 = add i64 %762, -484
  %765 = add i64 %763, 11
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = add i32 %767, 1
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX.i960, align 8
  %770 = icmp eq i32 %767, -1
  %771 = icmp eq i32 %768, 0
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %32, align 1
  %774 = and i32 %768, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %39, align 1
  %779 = xor i32 %768, %767
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %44, align 1
  %783 = zext i1 %771 to i8
  store i8 %783, i8* %47, align 1
  %784 = lshr i32 %768, 31
  %785 = trunc i32 %784 to i8
  store i8 %785, i8* %50, align 1
  %786 = lshr i32 %767, 31
  %787 = xor i32 %784, %786
  %788 = add nuw nsw i32 %787, %784
  %789 = icmp eq i32 %788, 2
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %56, align 1
  %791 = add i64 %763, 20
  store i64 %791, i64* %3, align 8
  store i32 %768, i32* %766, align 4
  %792 = load i64, i64* %3, align 8
  %793 = add i64 %792, -108
  store i64 %793, i64* %3, align 8
  br label %block_.L_450100

block_.L_450171:                                  ; preds = %block_.L_450100
  %794 = add i64 %679, -48
  %795 = add i64 %708, 7
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = add i32 %797, -421
  %799 = icmp ult i32 %797, 421
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %32, align 1
  %801 = and i32 %798, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %39, align 1
  %806 = xor i32 %798, %797
  %807 = lshr i32 %806, 4
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  store i8 %809, i8* %44, align 1
  %810 = icmp eq i32 %798, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %47, align 1
  %812 = lshr i32 %798, 31
  %813 = trunc i32 %812 to i8
  store i8 %813, i8* %50, align 1
  %814 = lshr i32 %797, 31
  %815 = xor i32 %812, %814
  %816 = add nuw nsw i32 %815, %814
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %56, align 1
  %.v110 = select i1 %799, i64 13, i64 46
  %819 = add i64 %708, %.v110
  store i64 %819, i64* %3, align 8
  br i1 %799, label %block_45017e, label %block_.L_45019f

block_45017e:                                     ; preds = %block_.L_450171
  %820 = add i64 %819, 4
  store i64 %820, i64* %3, align 8
  %821 = load i32, i32* %796, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RAX.i960, align 8
  %823 = add nsw i64 %822, 12099168
  %824 = add i64 %819, 12
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i8*
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i64
  store i64 %827, i64* %RCX.i872, align 8
  %828 = zext i8 %826 to i32
  %829 = add nsw i32 %828, -3
  %830 = icmp ult i8 %826, 3
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %32, align 1
  %832 = and i32 %829, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %39, align 1
  %837 = xor i32 %829, %828
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %44, align 1
  %841 = icmp eq i32 %829, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %47, align 1
  %843 = lshr i32 %829, 31
  %844 = trunc i32 %843 to i8
  store i8 %844, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v147 = select i1 %841, i64 33, i64 21
  %845 = add i64 %819, %.v147
  store i64 %845, i64* %3, align 8
  br i1 %841, label %block_.L_45019f, label %block_450193

block_450193:                                     ; preds = %block_45017e
  %846 = add i64 %845, 4
  store i64 %846, i64* %3, align 8
  %847 = load i32, i32* %796, align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RAX.i960, align 8
  %849 = add nsw i64 %848, -480
  %850 = add i64 %849, %679
  %851 = add i64 %845, 12
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i8*
  store i8 1, i8* %852, align 1
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_45019f

block_.L_45019f:                                  ; preds = %block_.L_450171, %block_450193, %block_45017e
  %853 = phi i64 [ %.pre78, %block_450193 ], [ %845, %block_45017e ], [ %819, %block_.L_450171 ]
  %854 = phi i64 [ %.pre77, %block_450193 ], [ %679, %block_45017e ], [ %679, %block_.L_450171 ]
  %855 = add i64 %854, -52
  %856 = add i64 %853, 7
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i32 %858, -421
  %860 = icmp ult i32 %858, 421
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %32, align 1
  %862 = and i32 %859, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %39, align 1
  %867 = xor i32 %859, %858
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %44, align 1
  %871 = icmp eq i32 %859, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %47, align 1
  %873 = lshr i32 %859, 31
  %874 = trunc i32 %873 to i8
  store i8 %874, i8* %50, align 1
  %875 = lshr i32 %858, 31
  %876 = xor i32 %873, %875
  %877 = add nuw nsw i32 %876, %875
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %56, align 1
  %.v111 = select i1 %860, i64 13, i64 46
  %880 = add i64 %853, %.v111
  store i64 %880, i64* %3, align 8
  br i1 %860, label %block_4501ac, label %block_.L_4501cd

block_4501ac:                                     ; preds = %block_.L_45019f
  %881 = add i64 %880, 4
  store i64 %881, i64* %3, align 8
  %882 = load i32, i32* %857, align 4
  %883 = sext i32 %882 to i64
  store i64 %883, i64* %RAX.i960, align 8
  %884 = add nsw i64 %883, 12099168
  %885 = add i64 %880, 12
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i8*
  %887 = load i8, i8* %886, align 1
  %888 = zext i8 %887 to i64
  store i64 %888, i64* %RCX.i872, align 8
  %889 = zext i8 %887 to i32
  %890 = add nsw i32 %889, -3
  %891 = icmp ult i8 %887, 3
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = and i32 %890, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %39, align 1
  %898 = xor i32 %890, %889
  %899 = lshr i32 %898, 4
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %44, align 1
  %902 = icmp eq i32 %890, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %47, align 1
  %904 = lshr i32 %890, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v146 = select i1 %902, i64 33, i64 21
  %906 = add i64 %880, %.v146
  store i64 %906, i64* %3, align 8
  br i1 %902, label %block_.L_4501cd, label %block_4501c1

block_4501c1:                                     ; preds = %block_4501ac
  %907 = add i64 %906, 4
  store i64 %907, i64* %3, align 8
  %908 = load i32, i32* %857, align 4
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RAX.i960, align 8
  %910 = add nsw i64 %909, -480
  %911 = add i64 %910, %854
  %912 = add i64 %906, 12
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i8*
  store i8 1, i8* %913, align 1
  %.pre79 = load i64, i64* %RBP.i, align 8
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_4501cd

block_.L_4501cd:                                  ; preds = %block_.L_45019f, %block_4501c1, %block_4501ac
  %914 = phi i64 [ %.pre80, %block_4501c1 ], [ %906, %block_4501ac ], [ %880, %block_.L_45019f ]
  %915 = phi i64 [ %.pre79, %block_4501c1 ], [ %854, %block_4501ac ], [ %854, %block_.L_45019f ]
  %916 = add i64 %915, -488
  %917 = add i64 %914, 10
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  store i32 1, i32* %918, align 4
  %RDI.i425 = getelementptr inbounds %union.anon, %union.anon* %85, i64 0, i32 0
  %AL.i417 = bitcast %union.anon* %57 to i8*
  %CL.i418 = bitcast %union.anon* %104 to i8*
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4501d7

block_.L_4501d7:                                  ; preds = %block_.L_4503b6, %block_.L_4501cd
  %919 = phi i64 [ %.pre81, %block_.L_4501cd ], [ %1673, %block_.L_4503b6 ]
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -488
  %922 = add i64 %919, 7
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i32 %924, -5
  %926 = icmp ult i32 %924, 5
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %32, align 1
  %928 = and i32 %925, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %39, align 1
  %933 = xor i32 %925, %924
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %44, align 1
  %937 = icmp eq i32 %925, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %47, align 1
  %939 = lshr i32 %925, 31
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %50, align 1
  %941 = lshr i32 %924, 31
  %942 = xor i32 %939, %941
  %943 = add nuw nsw i32 %942, %941
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %56, align 1
  %946 = icmp ne i8 %940, 0
  %947 = xor i1 %946, %944
  %.v = select i1 %947, i64 13, i64 504
  %948 = add i64 %919, %.v
  %949 = add i64 %920, -484
  %950 = add i64 %948, 10
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  store i32 21, i32* %951, align 4
  %.pre96 = load i64, i64* %3, align 8
  br i1 %947, label %block_.L_4501ee.preheader, label %block_.L_4503d9.preheader

block_.L_4501ee.preheader:                        ; preds = %block_.L_4501d7
  br label %block_.L_4501ee

block_.L_4503d9.preheader:                        ; preds = %block_.L_4501d7
  br label %block_.L_4503d9

block_.L_4501ee:                                  ; preds = %block_.L_4501ee.preheader, %block_.L_4503a2
  %952 = phi i64 [ %1643, %block_.L_4503a2 ], [ %.pre96, %block_.L_4501ee.preheader ]
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -484
  %955 = add i64 %952, 10
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = add i32 %957, -400
  %959 = icmp ult i32 %957, 400
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %32, align 1
  %961 = and i32 %958, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %39, align 1
  %966 = xor i32 %957, 16
  %967 = xor i32 %966, %958
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %44, align 1
  %971 = icmp eq i32 %958, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %47, align 1
  %973 = lshr i32 %958, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %50, align 1
  %975 = lshr i32 %957, 31
  %976 = xor i32 %973, %975
  %977 = add nuw nsw i32 %976, %975
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %56, align 1
  %980 = icmp ne i8 %974, 0
  %981 = xor i1 %980, %978
  %.v105 = select i1 %981, i64 16, i64 456
  %982 = add i64 %952, %.v105
  store i64 %982, i64* %3, align 8
  br i1 %981, label %block_4501fe, label %block_.L_4503b6

block_4501fe:                                     ; preds = %block_.L_4501ee
  %983 = add i64 %982, 7
  store i64 %983, i64* %3, align 8
  %984 = load i32, i32* %956, align 4
  %985 = sext i32 %984 to i64
  store i64 %985, i64* %RAX.i960, align 8
  %986 = add nsw i64 %985, 12099168
  %987 = add i64 %982, 15
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i8*
  %989 = load i8, i8* %988, align 1
  %990 = zext i8 %989 to i64
  store i64 %990, i64* %RCX.i872, align 8
  %991 = zext i8 %989 to i32
  %992 = add nsw i32 %991, -3
  %993 = icmp ult i8 %989, 3
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %32, align 1
  %995 = and i32 %992, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %39, align 1
  %1000 = xor i32 %992, %991
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %44, align 1
  %1004 = icmp eq i32 %992, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %47, align 1
  %1006 = lshr i32 %992, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v134 = select i1 %1004, i64 75, i64 24
  %1008 = add i64 %982, %.v134
  store i64 %1008, i64* %3, align 8
  br i1 %1004, label %block_.L_450249, label %block_450216

block_450216:                                     ; preds = %block_4501fe
  %1009 = add i64 %1008, 7
  store i64 %1009, i64* %3, align 8
  %1010 = load i32, i32* %956, align 4
  %1011 = sext i32 %1010 to i64
  store i64 %1011, i64* %RAX.i960, align 8
  %1012 = add nsw i64 %1011, 12099168
  %1013 = add i64 %1008, 15
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i8*
  %1015 = load i8, i8* %1014, align 1
  %1016 = zext i8 %1015 to i64
  store i64 %1016, i64* %RCX.i872, align 8
  %1017 = zext i8 %1015 to i32
  %1018 = add i64 %953, -496
  %1019 = add i64 %1008, 21
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = sub i32 %1017, %1021
  %1023 = icmp ult i32 %1017, %1021
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %32, align 1
  %1025 = and i32 %1022, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %39, align 1
  %1030 = xor i32 %1021, %1017
  %1031 = xor i32 %1030, %1022
  %1032 = lshr i32 %1031, 4
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  store i8 %1034, i8* %44, align 1
  %1035 = icmp eq i32 %1022, 0
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %47, align 1
  %1037 = lshr i32 %1022, 31
  %1038 = trunc i32 %1037 to i8
  store i8 %1038, i8* %50, align 1
  %1039 = lshr i32 %1021, 31
  %1040 = add nuw nsw i32 %1037, %1039
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %56, align 1
  %.v135 = select i1 %1035, i64 51, i64 27
  %1043 = add i64 %1008, %.v135
  store i64 %1043, i64* %3, align 8
  br i1 %1035, label %block_.L_450249, label %block_450231

block_450231:                                     ; preds = %block_450216
  %1044 = add i64 %1043, 7
  store i64 %1044, i64* %3, align 8
  %1045 = load i32, i32* %956, align 4
  %1046 = sext i32 %1045 to i64
  store i64 %1046, i64* %RAX.i960, align 8
  %1047 = add nsw i64 %1046, -480
  %1048 = add i64 %1047, %953
  %1049 = add i64 %1043, 15
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i8*
  %1051 = load i8, i8* %1050, align 1
  %1052 = sext i8 %1051 to i64
  %1053 = and i64 %1052, 4294967295
  store i64 %1053, i64* %RCX.i872, align 8
  %1054 = sext i8 %1051 to i32
  store i8 0, i8* %32, align 1
  %1055 = and i32 %1054, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %1060 = icmp eq i8 %1051, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %47, align 1
  %1062 = lshr i32 %1054, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v136 = select i1 %1060, i64 29, i64 24
  %1064 = add i64 %1043, %.v136
  store i64 %1064, i64* %3, align 8
  br i1 %1060, label %block_.L_45024e, label %block_.L_450249

block_.L_450249:                                  ; preds = %block_450231, %block_450216, %block_4501fe
  %1065 = phi i64 [ %1064, %block_450231 ], [ %1043, %block_450216 ], [ %1008, %block_4501fe ]
  %1066 = add i64 %1065, 345
  br label %block_.L_4503a2

block_.L_45024e:                                  ; preds = %block_450231
  %1067 = add i64 %1064, 6
  store i64 %1067, i64* %3, align 8
  %1068 = load i32, i32* %956, align 4
  %1069 = add i32 %1068, 20
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX.i960, align 8
  %1071 = icmp ugt i32 %1068, -21
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %32, align 1
  %1073 = and i32 %1069, 255
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %39, align 1
  %1078 = xor i32 %1068, 16
  %1079 = xor i32 %1078, %1069
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %44, align 1
  %1083 = icmp eq i32 %1069, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %47, align 1
  %1085 = lshr i32 %1069, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %50, align 1
  %1087 = lshr i32 %1068, 31
  %1088 = xor i32 %1085, %1087
  %1089 = add nuw nsw i32 %1088, %1085
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %56, align 1
  %1092 = sext i32 %1069 to i64
  store i64 %1092, i64* %RCX.i872, align 8
  %1093 = add nsw i64 %1092, 12099168
  %1094 = add i64 %1064, 20
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i8*
  %1096 = load i8, i8* %1095, align 1
  %1097 = zext i8 %1096 to i64
  store i64 %1097, i64* %RAX.i960, align 8
  %1098 = zext i8 %1096 to i32
  %1099 = add nsw i32 %1098, -3
  %1100 = icmp ult i8 %1096, 3
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %32, align 1
  %1102 = and i32 %1099, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %39, align 1
  %1107 = xor i32 %1099, %1098
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %44, align 1
  %1111 = icmp eq i32 %1099, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %47, align 1
  %1113 = lshr i32 %1099, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v137 = select i1 %1111, i64 61, i64 29
  %1115 = add i64 %1064, %.v137
  store i64 %1115, i64* %3, align 8
  br i1 %1111, label %block_.L_45028b, label %block_45026b

block_45026b:                                     ; preds = %block_.L_45024e
  %1116 = add i64 %1115, 6
  store i64 %1116, i64* %3, align 8
  %1117 = load i32, i32* %956, align 4
  %1118 = add i32 %1117, 20
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX.i960, align 8
  %1120 = icmp ugt i32 %1117, -21
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %32, align 1
  %1122 = and i32 %1118, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %39, align 1
  %1127 = xor i32 %1117, 16
  %1128 = xor i32 %1127, %1118
  %1129 = lshr i32 %1128, 4
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  store i8 %1131, i8* %44, align 1
  %1132 = icmp eq i32 %1118, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %47, align 1
  %1134 = lshr i32 %1118, 31
  %1135 = trunc i32 %1134 to i8
  store i8 %1135, i8* %50, align 1
  %1136 = lshr i32 %1117, 31
  %1137 = xor i32 %1134, %1136
  %1138 = add nuw nsw i32 %1137, %1134
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %56, align 1
  %1141 = sext i32 %1118 to i64
  store i64 %1141, i64* %RCX.i872, align 8
  %1142 = add nsw i64 %1141, -480
  %1143 = add i64 %1142, %953
  %1144 = add i64 %1115, 20
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i8*
  %1146 = load i8, i8* %1145, align 1
  %1147 = sext i8 %1146 to i64
  %1148 = and i64 %1147, 4294967295
  store i64 %1148, i64* %RAX.i960, align 8
  %1149 = sext i8 %1146 to i32
  %1150 = add i64 %953, -488
  %1151 = add i64 %1115, 26
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = sub i32 %1149, %1153
  %1155 = icmp ult i32 %1149, %1153
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %32, align 1
  %1157 = and i32 %1154, 255
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %39, align 1
  %1162 = xor i32 %1153, %1149
  %1163 = xor i32 %1162, %1154
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %44, align 1
  %1167 = icmp eq i32 %1154, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %47, align 1
  %1169 = lshr i32 %1154, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %50, align 1
  %1171 = lshr i32 %1149, 31
  %1172 = lshr i32 %1153, 31
  %1173 = xor i32 %1172, %1171
  %1174 = xor i32 %1169, %1171
  %1175 = add nuw nsw i32 %1174, %1173
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %56, align 1
  %.v138 = select i1 %1167, i64 215, i64 32
  %1178 = add i64 %1115, %.v138
  store i64 %1178, i64* %3, align 8
  br i1 %1167, label %block_.L_450342, label %block_.L_45028b

block_.L_45028b:                                  ; preds = %block_45026b, %block_.L_45024e
  %1179 = phi i64 [ %1178, %block_45026b ], [ %1115, %block_.L_45024e ]
  %1180 = add i64 %1179, 6
  store i64 %1180, i64* %3, align 8
  %1181 = load i32, i32* %956, align 4
  %1182 = add i32 %1181, -1
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RAX.i960, align 8
  %1184 = icmp eq i32 %1181, 0
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %32, align 1
  %1186 = and i32 %1182, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %39, align 1
  %1191 = xor i32 %1182, %1181
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %44, align 1
  %1195 = icmp eq i32 %1182, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %47, align 1
  %1197 = lshr i32 %1182, 31
  %1198 = trunc i32 %1197 to i8
  store i8 %1198, i8* %50, align 1
  %1199 = lshr i32 %1181, 31
  %1200 = xor i32 %1197, %1199
  %1201 = add nuw nsw i32 %1200, %1199
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %56, align 1
  %1204 = sext i32 %1182 to i64
  store i64 %1204, i64* %RCX.i872, align 8
  %1205 = add nsw i64 %1204, 12099168
  %1206 = add i64 %1179, 20
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i8*
  %1208 = load i8, i8* %1207, align 1
  %1209 = zext i8 %1208 to i64
  store i64 %1209, i64* %RAX.i960, align 8
  %1210 = zext i8 %1208 to i32
  %1211 = add nsw i32 %1210, -3
  %1212 = icmp ult i8 %1208, 3
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %32, align 1
  %1214 = and i32 %1211, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %39, align 1
  %1219 = xor i32 %1211, %1210
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %44, align 1
  %1223 = icmp eq i32 %1211, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %47, align 1
  %1225 = lshr i32 %1211, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v139 = select i1 %1223, i64 61, i64 29
  %1227 = add i64 %1179, %.v139
  store i64 %1227, i64* %3, align 8
  br i1 %1223, label %block_.L_4502c8, label %block_4502a8

block_4502a8:                                     ; preds = %block_.L_45028b
  %1228 = add i64 %1227, 6
  store i64 %1228, i64* %3, align 8
  %1229 = load i32, i32* %956, align 4
  %1230 = add i32 %1229, -1
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i960, align 8
  %1232 = icmp eq i32 %1229, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %32, align 1
  %1234 = and i32 %1230, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %39, align 1
  %1239 = xor i32 %1230, %1229
  %1240 = lshr i32 %1239, 4
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %44, align 1
  %1243 = icmp eq i32 %1230, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %47, align 1
  %1245 = lshr i32 %1230, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %50, align 1
  %1247 = lshr i32 %1229, 31
  %1248 = xor i32 %1245, %1247
  %1249 = add nuw nsw i32 %1248, %1247
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %56, align 1
  %1252 = sext i32 %1230 to i64
  store i64 %1252, i64* %RCX.i872, align 8
  %1253 = add nsw i64 %1252, -480
  %1254 = add i64 %1253, %953
  %1255 = add i64 %1227, 20
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1254 to i8*
  %1257 = load i8, i8* %1256, align 1
  %1258 = sext i8 %1257 to i64
  %1259 = and i64 %1258, 4294967295
  store i64 %1259, i64* %RAX.i960, align 8
  %1260 = sext i8 %1257 to i32
  %1261 = add i64 %953, -488
  %1262 = add i64 %1227, 26
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = sub i32 %1260, %1264
  %1266 = icmp ult i32 %1260, %1264
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %32, align 1
  %1268 = and i32 %1265, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %39, align 1
  %1273 = xor i32 %1264, %1260
  %1274 = xor i32 %1273, %1265
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %44, align 1
  %1278 = icmp eq i32 %1265, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %47, align 1
  %1280 = lshr i32 %1265, 31
  %1281 = trunc i32 %1280 to i8
  store i8 %1281, i8* %50, align 1
  %1282 = lshr i32 %1260, 31
  %1283 = lshr i32 %1264, 31
  %1284 = xor i32 %1283, %1282
  %1285 = xor i32 %1280, %1282
  %1286 = add nuw nsw i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %56, align 1
  %.v140 = select i1 %1278, i64 154, i64 32
  %1289 = add i64 %1227, %.v140
  store i64 %1289, i64* %3, align 8
  br i1 %1278, label %block_.L_450342, label %block_.L_4502c8

block_.L_4502c8:                                  ; preds = %block_4502a8, %block_.L_45028b
  %1290 = phi i64 [ %1289, %block_4502a8 ], [ %1227, %block_.L_45028b ]
  %1291 = add i64 %1290, 6
  store i64 %1291, i64* %3, align 8
  %1292 = load i32, i32* %956, align 4
  %1293 = add i32 %1292, -20
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RAX.i960, align 8
  %1295 = icmp ult i32 %1292, 20
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %32, align 1
  %1297 = and i32 %1293, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %39, align 1
  %1302 = xor i32 %1292, 16
  %1303 = xor i32 %1302, %1293
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %44, align 1
  %1307 = icmp eq i32 %1293, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %47, align 1
  %1309 = lshr i32 %1293, 31
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* %50, align 1
  %1311 = lshr i32 %1292, 31
  %1312 = xor i32 %1309, %1311
  %1313 = add nuw nsw i32 %1312, %1311
  %1314 = icmp eq i32 %1313, 2
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %56, align 1
  %1316 = sext i32 %1293 to i64
  store i64 %1316, i64* %RCX.i872, align 8
  %1317 = add nsw i64 %1316, 12099168
  %1318 = add i64 %1290, 20
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i8*
  %1320 = load i8, i8* %1319, align 1
  %1321 = zext i8 %1320 to i64
  store i64 %1321, i64* %RAX.i960, align 8
  %1322 = zext i8 %1320 to i32
  %1323 = add nsw i32 %1322, -3
  %1324 = icmp ult i8 %1320, 3
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %32, align 1
  %1326 = and i32 %1323, 255
  %1327 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %39, align 1
  %1331 = xor i32 %1323, %1322
  %1332 = lshr i32 %1331, 4
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  store i8 %1334, i8* %44, align 1
  %1335 = icmp eq i32 %1323, 0
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %47, align 1
  %1337 = lshr i32 %1323, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v141 = select i1 %1335, i64 61, i64 29
  %1339 = add i64 %1290, %.v141
  store i64 %1339, i64* %3, align 8
  br i1 %1335, label %block_.L_450305, label %block_4502e5

block_4502e5:                                     ; preds = %block_.L_4502c8
  %1340 = add i64 %1339, 6
  store i64 %1340, i64* %3, align 8
  %1341 = load i32, i32* %956, align 4
  %1342 = add i32 %1341, -20
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RAX.i960, align 8
  %1344 = icmp ult i32 %1341, 20
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %32, align 1
  %1346 = and i32 %1342, 255
  %1347 = tail call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %39, align 1
  %1351 = xor i32 %1341, 16
  %1352 = xor i32 %1351, %1342
  %1353 = lshr i32 %1352, 4
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  store i8 %1355, i8* %44, align 1
  %1356 = icmp eq i32 %1342, 0
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %47, align 1
  %1358 = lshr i32 %1342, 31
  %1359 = trunc i32 %1358 to i8
  store i8 %1359, i8* %50, align 1
  %1360 = lshr i32 %1341, 31
  %1361 = xor i32 %1358, %1360
  %1362 = add nuw nsw i32 %1361, %1360
  %1363 = icmp eq i32 %1362, 2
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %56, align 1
  %1365 = sext i32 %1342 to i64
  store i64 %1365, i64* %RCX.i872, align 8
  %1366 = add nsw i64 %1365, -480
  %1367 = add i64 %1366, %953
  %1368 = add i64 %1339, 20
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i8*
  %1370 = load i8, i8* %1369, align 1
  %1371 = sext i8 %1370 to i64
  %1372 = and i64 %1371, 4294967295
  store i64 %1372, i64* %RAX.i960, align 8
  %1373 = sext i8 %1370 to i32
  %1374 = add i64 %953, -488
  %1375 = add i64 %1339, 26
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sub i32 %1373, %1377
  %1379 = icmp ult i32 %1373, %1377
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %32, align 1
  %1381 = and i32 %1378, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %39, align 1
  %1386 = xor i32 %1377, %1373
  %1387 = xor i32 %1386, %1378
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %44, align 1
  %1391 = icmp eq i32 %1378, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %47, align 1
  %1393 = lshr i32 %1378, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %50, align 1
  %1395 = lshr i32 %1373, 31
  %1396 = lshr i32 %1377, 31
  %1397 = xor i32 %1396, %1395
  %1398 = xor i32 %1393, %1395
  %1399 = add nuw nsw i32 %1398, %1397
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %56, align 1
  %.v142 = select i1 %1391, i64 93, i64 32
  %1402 = add i64 %1339, %.v142
  store i64 %1402, i64* %3, align 8
  br i1 %1391, label %block_.L_450342, label %block_.L_450305

block_.L_450305:                                  ; preds = %block_4502e5, %block_.L_4502c8
  %1403 = phi i64 [ %1402, %block_4502e5 ], [ %1339, %block_.L_4502c8 ]
  %1404 = add i64 %1403, 6
  store i64 %1404, i64* %3, align 8
  %1405 = load i32, i32* %956, align 4
  %1406 = add i32 %1405, 1
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RAX.i960, align 8
  %1408 = icmp eq i32 %1405, -1
  %1409 = icmp eq i32 %1406, 0
  %1410 = or i1 %1408, %1409
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %32, align 1
  %1412 = and i32 %1406, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412)
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %39, align 1
  %1417 = xor i32 %1406, %1405
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %44, align 1
  %1421 = zext i1 %1409 to i8
  store i8 %1421, i8* %47, align 1
  %1422 = lshr i32 %1406, 31
  %1423 = trunc i32 %1422 to i8
  store i8 %1423, i8* %50, align 1
  %1424 = lshr i32 %1405, 31
  %1425 = xor i32 %1422, %1424
  %1426 = add nuw nsw i32 %1425, %1422
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %56, align 1
  %1429 = sext i32 %1406 to i64
  store i64 %1429, i64* %RCX.i872, align 8
  %1430 = add nsw i64 %1429, 12099168
  %1431 = add i64 %1403, 20
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i8*
  %1433 = load i8, i8* %1432, align 1
  %1434 = zext i8 %1433 to i64
  store i64 %1434, i64* %RAX.i960, align 8
  %1435 = zext i8 %1433 to i32
  %1436 = add nsw i32 %1435, -3
  %1437 = icmp ult i8 %1433, 3
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %32, align 1
  %1439 = and i32 %1436, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %39, align 1
  %1444 = xor i32 %1436, %1435
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %44, align 1
  %1448 = icmp eq i32 %1436, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %47, align 1
  %1450 = lshr i32 %1436, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v143 = select i1 %1448, i64 152, i64 29
  %1452 = add i64 %1403, %.v143
  store i64 %1452, i64* %3, align 8
  br i1 %1448, label %block_.L_45039d, label %block_450322

block_450322:                                     ; preds = %block_.L_450305
  %1453 = add i64 %1452, 6
  store i64 %1453, i64* %3, align 8
  %1454 = load i32, i32* %956, align 4
  %1455 = add i32 %1454, 1
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RAX.i960, align 8
  %1457 = icmp eq i32 %1454, -1
  %1458 = icmp eq i32 %1455, 0
  %1459 = or i1 %1457, %1458
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %32, align 1
  %1461 = and i32 %1455, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %39, align 1
  %1466 = xor i32 %1455, %1454
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %44, align 1
  %1470 = zext i1 %1458 to i8
  store i8 %1470, i8* %47, align 1
  %1471 = lshr i32 %1455, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %50, align 1
  %1473 = lshr i32 %1454, 31
  %1474 = xor i32 %1471, %1473
  %1475 = add nuw nsw i32 %1474, %1471
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %56, align 1
  %1478 = sext i32 %1455 to i64
  store i64 %1478, i64* %RCX.i872, align 8
  %1479 = add nsw i64 %1478, -480
  %1480 = add i64 %1479, %953
  %1481 = add i64 %1452, 20
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i8*
  %1483 = load i8, i8* %1482, align 1
  %1484 = sext i8 %1483 to i64
  %1485 = and i64 %1484, 4294967295
  store i64 %1485, i64* %RAX.i960, align 8
  %1486 = sext i8 %1483 to i32
  %1487 = add i64 %953, -488
  %1488 = add i64 %1452, 26
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sub i32 %1486, %1490
  %1492 = icmp ult i32 %1486, %1490
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %32, align 1
  %1494 = and i32 %1491, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %39, align 1
  %1499 = xor i32 %1490, %1486
  %1500 = xor i32 %1499, %1491
  %1501 = lshr i32 %1500, 4
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %44, align 1
  %1504 = icmp eq i32 %1491, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %47, align 1
  %1506 = lshr i32 %1491, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %50, align 1
  %1508 = lshr i32 %1486, 31
  %1509 = lshr i32 %1490, 31
  %1510 = xor i32 %1509, %1508
  %1511 = xor i32 %1506, %1508
  %1512 = add nuw nsw i32 %1511, %1510
  %1513 = icmp eq i32 %1512, 2
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %56, align 1
  %.v144 = select i1 %1504, i64 32, i64 123
  %1515 = add i64 %1452, %.v144
  store i64 %1515, i64* %3, align 8
  br i1 %1504, label %block_.L_450342, label %block_.L_45039d

block_.L_450342:                                  ; preds = %block_450322, %block_4502e5, %block_4502a8, %block_45026b
  %1516 = phi i64 [ %1515, %block_450322 ], [ %1402, %block_4502e5 ], [ %1289, %block_4502a8 ], [ %1178, %block_45026b ]
  %1517 = add i64 %1516, 7
  store i64 %1517, i64* %3, align 8
  %1518 = load i32, i32* %956, align 4
  %1519 = sext i32 %1518 to i64
  store i64 %1519, i64* %RAX.i960, align 8
  %1520 = add nsw i64 %1519, 12099168
  %1521 = add i64 %1516, 15
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i8*
  %1523 = load i8, i8* %1522, align 1
  %1524 = zext i8 %1523 to i64
  store i64 %1524, i64* %RCX.i872, align 8
  %1525 = zext i8 %1523 to i32
  store i8 0, i8* %32, align 1
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %1530 = icmp eq i8 %1523, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v145 = select i1 %1530, i64 24, i64 54
  %1532 = add i64 %1516, %.v145
  store i64 %1532, i64* %3, align 8
  br i1 %1530, label %block_45035a, label %block_.L_450378

block_45035a:                                     ; preds = %block_.L_450342
  %1533 = add i64 %953, -488
  %1534 = add i64 %1532, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = add i32 %1536, 1
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RAX.i960, align 8
  %1539 = icmp eq i32 %1536, -1
  %1540 = icmp eq i32 %1537, 0
  %1541 = or i1 %1539, %1540
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %32, align 1
  %1543 = and i32 %1537, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %39, align 1
  %1548 = xor i32 %1537, %1536
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %44, align 1
  %1552 = zext i1 %1540 to i8
  store i8 %1552, i8* %47, align 1
  %1553 = lshr i32 %1537, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %50, align 1
  %1555 = lshr i32 %1536, 31
  %1556 = xor i32 %1553, %1555
  %1557 = add nuw nsw i32 %1556, %1553
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %56, align 1
  %1560 = trunc i32 %1537 to i8
  store i8 %1560, i8* %CL.i418, align 1
  %1561 = add i64 %1532, 18
  store i64 %1561, i64* %3, align 8
  %1562 = load i32, i32* %956, align 4
  %1563 = sext i32 %1562 to i64
  store i64 %1563, i64* %RDX.i870, align 8
  %1564 = add nsw i64 %1563, -480
  %1565 = add i64 %1564, %953
  %1566 = add i64 %1532, 25
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i8*
  store i8 %1560, i8* %1567, align 1
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 37
  store i64 %1569, i64* %3, align 8
  br label %block_.L_450398

block_.L_450378:                                  ; preds = %block_.L_450342
  %1570 = add i64 %953, -480
  store i64 %1570, i64* %RSI.i866, align 8
  %1571 = add i64 %1532, 13
  store i64 %1571, i64* %3, align 8
  %1572 = load i32, i32* %956, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RDI.i425, align 8
  %1574 = add i64 %953, -488
  %1575 = add i64 %1532, 19
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i32*
  %1577 = load i32, i32* %1576, align 4
  %1578 = add i32 %1577, 1
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i960, align 8
  %1580 = icmp eq i32 %1577, -1
  %1581 = icmp eq i32 %1578, 0
  %1582 = or i1 %1580, %1581
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %32, align 1
  %1584 = and i32 %1578, 255
  %1585 = tail call i32 @llvm.ctpop.i32(i32 %1584)
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = xor i8 %1587, 1
  store i8 %1588, i8* %39, align 1
  %1589 = xor i32 %1578, %1577
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %44, align 1
  %1593 = zext i1 %1581 to i8
  store i8 %1593, i8* %47, align 1
  %1594 = lshr i32 %1578, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %50, align 1
  %1596 = lshr i32 %1577, 31
  %1597 = xor i32 %1594, %1596
  %1598 = add nuw nsw i32 %1597, %1594
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %56, align 1
  %1601 = trunc i32 %1578 to i8
  store i8 %1601, i8* %CL.i418, align 1
  %1602 = sext i8 %1601 to i64
  %1603 = and i64 %1602, 4294967295
  store i64 %1603, i64* %RDX.i870, align 8
  %1604 = add i64 %1532, -239304
  %1605 = add i64 %1532, 32
  %1606 = load i64, i64* %6, align 8
  %1607 = add i64 %1606, -8
  %1608 = inttoptr i64 %1607 to i64*
  store i64 %1605, i64* %1608, align 8
  store i64 %1607, i64* %6, align 8
  store i64 %1604, i64* %3, align 8
  %call2_450393 = tail call %struct.Memory* @sub_415cb0.mark_string(%struct.State* nonnull %0, i64 %1604, %struct.Memory* %MEMORY.1)
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_450398

block_.L_450398:                                  ; preds = %block_.L_450378, %block_45035a
  %1609 = phi i64 [ %.pre97, %block_.L_450378 ], [ %1569, %block_45035a ]
  %1610 = add i64 %1609, 5
  store i64 %1610, i64* %3, align 8
  %.pre98.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_45039d

block_.L_45039d:                                  ; preds = %block_450322, %block_.L_450398, %block_.L_450305
  %.pre98 = phi i64 [ %.pre98.pre, %block_.L_450398 ], [ %953, %block_450322 ], [ %953, %block_.L_450305 ]
  %1611 = phi i64 [ %1610, %block_.L_450398 ], [ %1515, %block_450322 ], [ %1452, %block_.L_450305 ]
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %3, align 8
  br label %block_.L_4503a2

block_.L_4503a2:                                  ; preds = %block_.L_45039d, %block_.L_450249
  %1613 = phi i64 [ %953, %block_.L_450249 ], [ %.pre98, %block_.L_45039d ]
  %storemerge = phi i64 [ %1066, %block_.L_450249 ], [ %1612, %block_.L_45039d ]
  %1614 = add i64 %1613, -484
  %1615 = add i64 %storemerge, 6
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = add i32 %1617, 1
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RAX.i960, align 8
  %1620 = icmp eq i32 %1617, -1
  %1621 = icmp eq i32 %1618, 0
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %32, align 1
  %1624 = and i32 %1618, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %39, align 1
  %1629 = xor i32 %1618, %1617
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %44, align 1
  %1633 = zext i1 %1621 to i8
  store i8 %1633, i8* %47, align 1
  %1634 = lshr i32 %1618, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %50, align 1
  %1636 = lshr i32 %1617, 31
  %1637 = xor i32 %1634, %1636
  %1638 = add nuw nsw i32 %1637, %1634
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %56, align 1
  %1641 = add i64 %storemerge, 15
  store i64 %1641, i64* %3, align 8
  store i32 %1618, i32* %1616, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, -451
  store i64 %1643, i64* %3, align 8
  br label %block_.L_4501ee

block_.L_4503b6:                                  ; preds = %block_.L_4501ee
  %1644 = add i64 %953, -488
  %1645 = add i64 %982, 11
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i32*
  %1647 = load i32, i32* %1646, align 4
  %1648 = add i32 %1647, 1
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i960, align 8
  %1650 = icmp eq i32 %1647, -1
  %1651 = icmp eq i32 %1648, 0
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %32, align 1
  %1654 = and i32 %1648, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %39, align 1
  %1659 = xor i32 %1648, %1647
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %44, align 1
  %1663 = zext i1 %1651 to i8
  store i8 %1663, i8* %47, align 1
  %1664 = lshr i32 %1648, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %50, align 1
  %1666 = lshr i32 %1647, 31
  %1667 = xor i32 %1664, %1666
  %1668 = add nuw nsw i32 %1667, %1664
  %1669 = icmp eq i32 %1668, 2
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %56, align 1
  %1671 = add i64 %982, 20
  store i64 %1671, i64* %3, align 8
  store i32 %1648, i32* %1646, align 4
  %1672 = load i64, i64* %3, align 8
  %1673 = add i64 %1672, -499
  store i64 %1673, i64* %3, align 8
  br label %block_.L_4501d7

block_.L_4503d9:                                  ; preds = %block_.L_4503d9.preheader, %block_.L_4504d7
  %1674 = phi i64 [ %2001, %block_.L_4504d7 ], [ %.pre96, %block_.L_4503d9.preheader ]
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -484
  %1677 = add i64 %1674, 10
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = add i32 %1679, -400
  %1681 = icmp ult i32 %1679, 400
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %32, align 1
  %1683 = and i32 %1680, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %39, align 1
  %1688 = xor i32 %1679, 16
  %1689 = xor i32 %1688, %1680
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  store i8 %1692, i8* %44, align 1
  %1693 = icmp eq i32 %1680, 0
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %47, align 1
  %1695 = lshr i32 %1680, 31
  %1696 = trunc i32 %1695 to i8
  store i8 %1696, i8* %50, align 1
  %1697 = lshr i32 %1679, 31
  %1698 = xor i32 %1695, %1697
  %1699 = add nuw nsw i32 %1698, %1697
  %1700 = icmp eq i32 %1699, 2
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %56, align 1
  %1702 = icmp ne i8 %1696, 0
  %1703 = xor i1 %1702, %1700
  %.v112 = select i1 %1703, i64 16, i64 274
  %1704 = add i64 %1674, %.v112
  store i64 %1704, i64* %3, align 8
  br i1 %1703, label %block_4503e9, label %block_.L_4504eb

block_4503e9:                                     ; preds = %block_.L_4503d9
  %1705 = add i64 %1704, 7
  store i64 %1705, i64* %3, align 8
  %1706 = load i32, i32* %1678, align 4
  %1707 = sext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i960, align 8
  %1708 = add nsw i64 %1707, 12099168
  %1709 = add i64 %1704, 15
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i8*
  %1711 = load i8, i8* %1710, align 1
  %1712 = zext i8 %1711 to i64
  store i64 %1712, i64* %RCX.i872, align 8
  %1713 = zext i8 %1711 to i32
  %1714 = add i64 %1675, -496
  %1715 = add i64 %1704, 21
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = sub i32 %1713, %1717
  %1719 = icmp ult i32 %1713, %1717
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %32, align 1
  %1721 = and i32 %1718, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %39, align 1
  %1726 = xor i32 %1717, %1713
  %1727 = xor i32 %1726, %1718
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  store i8 %1730, i8* %44, align 1
  %1731 = icmp eq i32 %1718, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %47, align 1
  %1733 = lshr i32 %1718, 31
  %1734 = trunc i32 %1733 to i8
  store i8 %1734, i8* %50, align 1
  %1735 = lshr i32 %1717, 31
  %1736 = add nuw nsw i32 %1733, %1735
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %56, align 1
  %.v128 = select i1 %1731, i64 27, i64 51
  %1739 = add i64 %1704, %.v128
  store i64 %1739, i64* %3, align 8
  br i1 %1731, label %block_450404, label %block_.L_45041c

block_450404:                                     ; preds = %block_4503e9
  %1740 = add i64 %1739, 7
  store i64 %1740, i64* %3, align 8
  %1741 = load i32, i32* %1678, align 4
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %RAX.i960, align 8
  %1743 = add nsw i64 %1742, -480
  %1744 = add i64 %1743, %1675
  %1745 = add i64 %1739, 15
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i8*
  %1747 = load i8, i8* %1746, align 1
  %1748 = sext i8 %1747 to i64
  %1749 = and i64 %1748, 4294967295
  store i64 %1749, i64* %RCX.i872, align 8
  %1750 = sext i8 %1747 to i32
  store i8 0, i8* %32, align 1
  %1751 = and i32 %1750, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751)
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %1756 = icmp eq i8 %1747, 0
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %47, align 1
  %1758 = lshr i32 %1750, 31
  %1759 = trunc i32 %1758 to i8
  store i8 %1759, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v129 = select i1 %1756, i64 29, i64 24
  %1760 = add i64 %1739, %.v129
  store i64 %1760, i64* %3, align 8
  br i1 %1756, label %block_.L_450421, label %block_.L_45041c

block_.L_45041c:                                  ; preds = %block_4503e9, %block_450404
  %1761 = phi i64 [ %1760, %block_450404 ], [ %1739, %block_4503e9 ]
  %1762 = add i64 %1761, 187
  br label %block_.L_4504d7

block_.L_450421:                                  ; preds = %block_450404
  %1763 = add i64 %1675, -492
  %1764 = add i64 %1760, 10
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i32*
  store i32 0, i32* %1765, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_45042b

block_.L_45042b:                                  ; preds = %block_.L_4504b9, %block_.L_450421
  %1766 = phi i64 [ %1968, %block_.L_4504b9 ], [ %.pre94, %block_.L_450421 ]
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -492
  %1769 = add i64 %1766, 7
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = add i32 %1771, -4
  %1773 = icmp ult i32 %1771, 4
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %32, align 1
  %1775 = and i32 %1772, 255
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %39, align 1
  %1780 = xor i32 %1772, %1771
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %44, align 1
  %1784 = icmp eq i32 %1772, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %47, align 1
  %1786 = lshr i32 %1772, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %50, align 1
  %1788 = lshr i32 %1771, 31
  %1789 = xor i32 %1786, %1788
  %1790 = add nuw nsw i32 %1789, %1788
  %1791 = icmp eq i32 %1790, 2
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %56, align 1
  %1793 = icmp ne i8 %1787, 0
  %1794 = xor i1 %1793, %1791
  %.v130 = select i1 %1794, i64 13, i64 167
  %1795 = add i64 %1766, %.v130
  store i64 %1795, i64* %3, align 8
  br i1 %1794, label %block_450438, label %block_.L_4504d2.loopexit

block_450438:                                     ; preds = %block_.L_45042b
  %1796 = add i64 %1767, -484
  %1797 = add i64 %1795, 6
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RAX.i960, align 8
  %1801 = add i64 %1795, 13
  store i64 %1801, i64* %3, align 8
  %1802 = load i32, i32* %1770, align 4
  %1803 = sext i32 %1802 to i64
  store i64 %1803, i64* %RCX.i872, align 8
  %1804 = shl nsw i64 %1803, 2
  %1805 = add nsw i64 %1804, 8053168
  %1806 = add i64 %1795, 20
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = add i32 %1808, %1799
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RAX.i960, align 8
  %1811 = icmp ult i32 %1809, %1799
  %1812 = icmp ult i32 %1809, %1808
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %32, align 1
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %39, align 1
  %1820 = xor i32 %1808, %1799
  %1821 = xor i32 %1820, %1809
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %44, align 1
  %1825 = icmp eq i32 %1809, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %47, align 1
  %1827 = lshr i32 %1809, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %50, align 1
  %1829 = lshr i32 %1799, 31
  %1830 = lshr i32 %1808, 31
  %1831 = xor i32 %1827, %1829
  %1832 = xor i32 %1827, %1830
  %1833 = add nuw nsw i32 %1831, %1832
  %1834 = icmp eq i32 %1833, 2
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %56, align 1
  %1836 = add i64 %1767, -500
  %1837 = add i64 %1795, 26
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  store i32 %1809, i32* %1838, align 4
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -500
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, 7
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1840 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = sext i32 %1844 to i64
  store i64 %1845, i64* %RCX.i872, align 8
  %1846 = add nsw i64 %1845, 12099168
  %1847 = add i64 %1841, 15
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i8*
  %1849 = load i8, i8* %1848, align 1
  %1850 = zext i8 %1849 to i64
  store i64 %1850, i64* %RAX.i960, align 8
  %1851 = zext i8 %1849 to i32
  %1852 = add nsw i32 %1851, -3
  %1853 = icmp ult i8 %1849, 3
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = and i32 %1852, 255
  %1856 = tail call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  store i8 %1859, i8* %39, align 1
  %1860 = xor i32 %1852, %1851
  %1861 = lshr i32 %1860, 4
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  store i8 %1863, i8* %44, align 1
  %1864 = icmp eq i32 %1852, 0
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %47, align 1
  %1866 = lshr i32 %1852, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v131 = select i1 %1864, i64 103, i64 24
  %1868 = add i64 %1841, %.v131
  store i64 %1868, i64* %3, align 8
  br i1 %1864, label %block_.L_4504b9, label %block_45046a

block_45046a:                                     ; preds = %block_450438
  %1869 = add i64 %1868, 7
  store i64 %1869, i64* %3, align 8
  %1870 = load i32, i32* %1843, align 4
  %1871 = sext i32 %1870 to i64
  store i64 %1871, i64* %RAX.i960, align 8
  %1872 = add nsw i64 %1871, 12099168
  %1873 = add i64 %1868, 15
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i8*
  %1875 = load i8, i8* %1874, align 1
  %1876 = zext i8 %1875 to i64
  store i64 %1876, i64* %RCX.i872, align 8
  %1877 = zext i8 %1875 to i32
  %1878 = add i64 %1839, -496
  %1879 = add i64 %1868, 21
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = sub i32 %1877, %1881
  %1883 = icmp ult i32 %1877, %1881
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %32, align 1
  %1885 = and i32 %1882, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %39, align 1
  %1890 = xor i32 %1881, %1877
  %1891 = xor i32 %1890, %1882
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %44, align 1
  %1895 = icmp eq i32 %1882, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %47, align 1
  %1897 = lshr i32 %1882, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %50, align 1
  %1899 = lshr i32 %1881, 31
  %1900 = add nuw nsw i32 %1897, %1899
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %56, align 1
  %.v132 = select i1 %1895, i64 79, i64 27
  %1903 = add i64 %1868, %.v132
  store i64 %1903, i64* %3, align 8
  br i1 %1895, label %block_.L_4504b9, label %block_450485

block_450485:                                     ; preds = %block_45046a
  %1904 = add i64 %1903, 7
  store i64 %1904, i64* %3, align 8
  %1905 = load i32, i32* %1843, align 4
  %1906 = sext i32 %1905 to i64
  store i64 %1906, i64* %RAX.i960, align 8
  %1907 = add nsw i64 %1906, -480
  %1908 = add i64 %1907, %1839
  %1909 = add i64 %1903, 15
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i8*
  %1911 = load i8, i8* %1910, align 1
  %1912 = sext i8 %1911 to i64
  %1913 = and i64 %1912, 4294967295
  store i64 %1913, i64* %RCX.i872, align 8
  %1914 = sext i8 %1911 to i32
  store i8 0, i8* %32, align 1
  %1915 = and i32 %1914, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %1920 = icmp eq i8 %1911, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %47, align 1
  %1922 = lshr i32 %1914, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v133 = select i1 %1920, i64 52, i64 24
  %1924 = add i64 %1903, %.v133
  store i64 %1924, i64* %3, align 8
  br i1 %1920, label %block_.L_4504b9, label %block_45049d

block_45049d:                                     ; preds = %block_450485
  store i64 1, i64* %RDX.i870, align 8
  %1925 = add i64 %1839, -480
  store i64 %1925, i64* %RSI.i866, align 8
  %1926 = add i64 %1839, -484
  %1927 = add i64 %1924, 18
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RDI.i425, align 8
  %1931 = add i64 %1924, -239597
  %1932 = add i64 %1924, 23
  %1933 = load i64, i64* %6, align 8
  %1934 = add i64 %1933, -8
  %1935 = inttoptr i64 %1934 to i64*
  store i64 %1932, i64* %1935, align 8
  store i64 %1934, i64* %6, align 8
  store i64 %1931, i64* %3, align 8
  %call2_4504af = tail call %struct.Memory* @sub_415cb0.mark_string(%struct.State* nonnull %0, i64 %1931, %struct.Memory* %MEMORY.1)
  %1936 = load i64, i64* %3, align 8
  %1937 = add i64 %1936, 30
  store i64 %1937, i64* %3, align 8
  %.pre95.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4504d2

block_.L_4504b9:                                  ; preds = %block_450485, %block_45046a, %block_450438
  %1938 = phi i64 [ %1924, %block_450485 ], [ %1903, %block_45046a ], [ %1868, %block_450438 ]
  %1939 = add i64 %1839, -492
  %1940 = add i64 %1938, 11
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = add i32 %1942, 1
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i960, align 8
  %1945 = icmp eq i32 %1942, -1
  %1946 = icmp eq i32 %1943, 0
  %1947 = or i1 %1945, %1946
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %32, align 1
  %1949 = and i32 %1943, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %39, align 1
  %1954 = xor i32 %1943, %1942
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %44, align 1
  %1958 = zext i1 %1946 to i8
  store i8 %1958, i8* %47, align 1
  %1959 = lshr i32 %1943, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %50, align 1
  %1961 = lshr i32 %1942, 31
  %1962 = xor i32 %1959, %1961
  %1963 = add nuw nsw i32 %1962, %1959
  %1964 = icmp eq i32 %1963, 2
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %56, align 1
  %1966 = add i64 %1938, 20
  store i64 %1966, i64* %3, align 8
  store i32 %1943, i32* %1941, align 4
  %1967 = load i64, i64* %3, align 8
  %1968 = add i64 %1967, -162
  store i64 %1968, i64* %3, align 8
  br label %block_.L_45042b

block_.L_4504d2.loopexit:                         ; preds = %block_.L_45042b
  br label %block_.L_4504d2

block_.L_4504d2:                                  ; preds = %block_.L_4504d2.loopexit, %block_45049d
  %.pre95 = phi i64 [ %.pre95.pre, %block_45049d ], [ %1767, %block_.L_4504d2.loopexit ]
  %1969 = phi i64 [ %1937, %block_45049d ], [ %1795, %block_.L_4504d2.loopexit ]
  %1970 = add i64 %1969, 5
  store i64 %1970, i64* %3, align 8
  br label %block_.L_4504d7

block_.L_4504d7:                                  ; preds = %block_.L_4504d2, %block_.L_45041c
  %1971 = phi i64 [ %1675, %block_.L_45041c ], [ %.pre95, %block_.L_4504d2 ]
  %storemerge46 = phi i64 [ %1762, %block_.L_45041c ], [ %1970, %block_.L_4504d2 ]
  %1972 = add i64 %1971, -484
  %1973 = add i64 %storemerge46, 6
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = add i32 %1975, 1
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RAX.i960, align 8
  %1978 = icmp eq i32 %1975, -1
  %1979 = icmp eq i32 %1976, 0
  %1980 = or i1 %1978, %1979
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %32, align 1
  %1982 = and i32 %1976, 255
  %1983 = tail call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %39, align 1
  %1987 = xor i32 %1976, %1975
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %44, align 1
  %1991 = zext i1 %1979 to i8
  store i8 %1991, i8* %47, align 1
  %1992 = lshr i32 %1976, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %50, align 1
  %1994 = lshr i32 %1975, 31
  %1995 = xor i32 %1992, %1994
  %1996 = add nuw nsw i32 %1995, %1992
  %1997 = icmp eq i32 %1996, 2
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %56, align 1
  %1999 = add i64 %storemerge46, 15
  store i64 %1999, i64* %3, align 8
  store i32 %1976, i32* %1974, align 4
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, -269
  store i64 %2001, i64* %3, align 8
  br label %block_.L_4503d9

block_.L_4504eb:                                  ; preds = %block_.L_4503d9
  %2002 = add i64 %1704, 10
  store i64 %2002, i64* %3, align 8
  store i32 21, i32* %1678, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_4504f5

block_.L_4504f5:                                  ; preds = %block_.L_45068f, %block_.L_4504eb
  %2003 = phi i64 [ %.pre83, %block_.L_4504eb ], [ %2511, %block_.L_45068f ]
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -484
  %2006 = add i64 %2003, 10
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = add i32 %2008, -400
  %2010 = icmp ult i32 %2008, 400
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %32, align 1
  %2012 = and i32 %2009, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %39, align 1
  %2017 = xor i32 %2008, 16
  %2018 = xor i32 %2017, %2009
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %44, align 1
  %2022 = icmp eq i32 %2009, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %47, align 1
  %2024 = lshr i32 %2009, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %50, align 1
  %2026 = lshr i32 %2008, 31
  %2027 = xor i32 %2024, %2026
  %2028 = add nuw nsw i32 %2027, %2026
  %2029 = icmp eq i32 %2028, 2
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %56, align 1
  %2031 = icmp ne i8 %2025, 0
  %2032 = xor i1 %2031, %2029
  %.v113 = select i1 %2032, i64 16, i64 435
  %2033 = add i64 %2003, %.v113
  store i64 %2033, i64* %3, align 8
  br i1 %2032, label %block_450505, label %block_.L_4506a8

block_450505:                                     ; preds = %block_.L_4504f5
  %2034 = add i64 %2033, 7
  store i64 %2034, i64* %3, align 8
  %2035 = load i32, i32* %2007, align 4
  %2036 = sext i32 %2035 to i64
  store i64 %2036, i64* %RAX.i960, align 8
  %2037 = add nsw i64 %2036, 12099168
  %2038 = add i64 %2033, 15
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i8*
  %2040 = load i8, i8* %2039, align 1
  %2041 = zext i8 %2040 to i64
  store i64 %2041, i64* %RCX.i872, align 8
  %2042 = zext i8 %2040 to i32
  %2043 = add i64 %2004, -496
  %2044 = add i64 %2033, 21
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = sub i32 %2042, %2046
  %2048 = icmp ult i32 %2042, %2046
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %32, align 1
  %2050 = and i32 %2047, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %39, align 1
  %2055 = xor i32 %2046, %2042
  %2056 = xor i32 %2055, %2047
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %44, align 1
  %2060 = icmp eq i32 %2047, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %47, align 1
  %2062 = lshr i32 %2047, 31
  %2063 = trunc i32 %2062 to i8
  store i8 %2063, i8* %50, align 1
  %2064 = lshr i32 %2046, 31
  %2065 = add nuw nsw i32 %2062, %2064
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %56, align 1
  %.v121 = select i1 %2060, i64 27, i64 394
  %2068 = add i64 %2033, %.v121
  store i64 %2068, i64* %3, align 8
  br i1 %2060, label %block_450520, label %block_.L_45068f

block_450520:                                     ; preds = %block_450505
  %2069 = add i64 %2068, 7
  store i64 %2069, i64* %3, align 8
  %2070 = load i32, i32* %2007, align 4
  %2071 = sext i32 %2070 to i64
  store i64 %2071, i64* %RAX.i960, align 8
  %2072 = add nsw i64 %2071, -480
  %2073 = add i64 %2072, %2004
  %2074 = add i64 %2068, 15
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i8*
  %2076 = load i8, i8* %2075, align 1
  %2077 = sext i8 %2076 to i64
  %2078 = and i64 %2077, 4294967295
  store i64 %2078, i64* %RCX.i872, align 8
  %2079 = sext i8 %2076 to i32
  store i8 0, i8* %32, align 1
  %2080 = and i32 %2079, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %2085 = icmp eq i8 %2076, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %47, align 1
  %2087 = lshr i32 %2079, 31
  %2088 = trunc i32 %2087 to i8
  store i8 %2088, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v122 = select i1 %2085, i64 367, i64 24
  %2089 = add i64 %2068, %.v122
  store i64 %2089, i64* %3, align 8
  br i1 %2085, label %block_.L_45068f, label %block_450538

block_450538:                                     ; preds = %block_450520
  %2090 = add i64 %2089, 6
  store i64 %2090, i64* %3, align 8
  %2091 = load i32, i32* %2007, align 4
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RDI.i425, align 8
  %2093 = add i64 %2089, -265656
  %2094 = add i64 %2089, 11
  %2095 = load i64, i64* %6, align 8
  %2096 = add i64 %2095, -8
  %2097 = inttoptr i64 %2096 to i64*
  store i64 %2094, i64* %2097, align 8
  store i64 %2096, i64* %6, align 8
  store i64 %2093, i64* %3, align 8
  %call2_45053e = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %2093, %struct.Memory* %MEMORY.1)
  %2098 = load i32, i32* %EAX.i920, align 4
  %2099 = load i64, i64* %3, align 8
  %2100 = add i32 %2098, -5
  %2101 = icmp ult i32 %2098, 5
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %32, align 1
  %2103 = and i32 %2100, 255
  %2104 = tail call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  store i8 %2107, i8* %39, align 1
  %2108 = xor i32 %2100, %2098
  %2109 = lshr i32 %2108, 4
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  store i8 %2111, i8* %44, align 1
  %2112 = icmp eq i32 %2100, 0
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %47, align 1
  %2114 = lshr i32 %2100, 31
  %2115 = trunc i32 %2114 to i8
  store i8 %2115, i8* %50, align 1
  %2116 = lshr i32 %2098, 31
  %2117 = xor i32 %2114, %2116
  %2118 = add nuw nsw i32 %2117, %2116
  %2119 = icmp eq i32 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %56, align 1
  %2121 = icmp ne i8 %2115, 0
  %2122 = xor i1 %2121, %2119
  %.v123 = select i1 %2122, i64 9, i64 332
  %2123 = add i64 %2099, %.v123
  store i64 %2123, i64* %3, align 8
  br i1 %2122, label %block_45054c, label %block_450538.block_.L_45068f_crit_edge

block_450538.block_.L_45068f_crit_edge:           ; preds = %block_450538
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45068f

block_45054c:                                     ; preds = %block_450538
  store i64 4, i64* %RSI.i866, align 8
  %2124 = load i64, i64* %RBP.i, align 8
  %2125 = add i64 %2124, -528
  store i64 %2125, i64* %RDX.i870, align 8
  %2126 = add i64 %2124, -484
  %2127 = add i64 %2123, 18
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = zext i32 %2129 to i64
  store i64 %2130, i64* %RDI.i425, align 8
  %2131 = add i64 %2123, -265484
  %2132 = add i64 %2123, 23
  %2133 = load i64, i64* %6, align 8
  %2134 = add i64 %2133, -8
  %2135 = inttoptr i64 %2134 to i64*
  store i64 %2132, i64* %2135, align 8
  store i64 %2134, i64* %6, align 8
  store i64 %2131, i64* %3, align 8
  %call2_45055e = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2131, %struct.Memory* %MEMORY.1)
  %2136 = load i64, i64* %RBP.i, align 8
  %2137 = add i64 %2136, -532
  %2138 = load i32, i32* %EAX.i920, align 4
  %2139 = load i64, i64* %3, align 8
  %2140 = add i64 %2139, 6
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2137 to i32*
  store i32 %2138, i32* %2141, align 4
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -492
  %2144 = load i64, i64* %3, align 8
  %2145 = add i64 %2144, 10
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2143 to i32*
  store i32 0, i32* %2146, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_450573

block_.L_450573:                                  ; preds = %block_450585, %block_45054c
  %2147 = phi i64 [ %2230, %block_450585 ], [ %.pre89, %block_45054c ]
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -492
  %2150 = add i64 %2147, 6
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  %2152 = load i32, i32* %2151, align 4
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RAX.i960, align 8
  %2154 = add i64 %2148, -532
  %2155 = add i64 %2147, 12
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = sub i32 %2152, %2157
  %2159 = icmp ult i32 %2152, %2157
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %32, align 1
  %2161 = and i32 %2158, 255
  %2162 = tail call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  store i8 %2165, i8* %39, align 1
  %2166 = xor i32 %2157, %2152
  %2167 = xor i32 %2166, %2158
  %2168 = lshr i32 %2167, 4
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  store i8 %2170, i8* %44, align 1
  %2171 = icmp eq i32 %2158, 0
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %47, align 1
  %2173 = lshr i32 %2158, 31
  %2174 = trunc i32 %2173 to i8
  store i8 %2174, i8* %50, align 1
  %2175 = lshr i32 %2152, 31
  %2176 = lshr i32 %2157, 31
  %2177 = xor i32 %2176, %2175
  %2178 = xor i32 %2173, %2175
  %2179 = add nuw nsw i32 %2178, %2177
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %56, align 1
  %2182 = icmp ne i8 %2174, 0
  %2183 = xor i1 %2182, %2180
  %.v124 = select i1 %2183, i64 18, i64 61
  %2184 = add i64 %2147, %.v124
  store i64 %2184, i64* %3, align 8
  br i1 %2183, label %block_450585, label %block_.L_4505b0

block_450585:                                     ; preds = %block_.L_450573
  %2185 = add i64 %2184, 7
  store i64 %2185, i64* %3, align 8
  %2186 = load i32, i32* %2151, align 4
  %2187 = sext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i960, align 8
  %2188 = shl nsw i64 %2187, 2
  %2189 = add i64 %2148, -528
  %2190 = add i64 %2189, %2188
  %2191 = add i64 %2184, 15
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = sext i32 %2193 to i64
  store i64 %2194, i64* %RAX.i960, align 8
  %2195 = add nsw i64 %2194, -480
  %2196 = add i64 %2195, %2148
  %2197 = add i64 %2184, 23
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i8*
  store i8 1, i8* %2198, align 1
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -492
  %2201 = load i64, i64* %3, align 8
  %2202 = add i64 %2201, 6
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2200 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = add i32 %2204, 1
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RAX.i960, align 8
  %2207 = icmp eq i32 %2204, -1
  %2208 = icmp eq i32 %2205, 0
  %2209 = or i1 %2207, %2208
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %32, align 1
  %2211 = and i32 %2205, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %39, align 1
  %2216 = xor i32 %2205, %2204
  %2217 = lshr i32 %2216, 4
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %44, align 1
  %2220 = zext i1 %2208 to i8
  store i8 %2220, i8* %47, align 1
  %2221 = lshr i32 %2205, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %50, align 1
  %2223 = lshr i32 %2204, 31
  %2224 = xor i32 %2221, %2223
  %2225 = add nuw nsw i32 %2224, %2221
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %56, align 1
  %2228 = add i64 %2201, 15
  store i64 %2228, i64* %3, align 8
  store i32 %2205, i32* %2203, align 4
  %2229 = load i64, i64* %3, align 8
  %2230 = add i64 %2229, -56
  store i64 %2230, i64* %3, align 8
  br label %block_.L_450573

block_.L_4505b0:                                  ; preds = %block_.L_450573
  %2231 = add i64 %2148, -1184
  store i64 %2231, i64* %RSI.i866, align 8
  %2232 = add i64 %2148, -484
  %2233 = add i64 %2184, 13
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RDI.i425, align 8
  %2237 = add i64 %2184, -248496
  %2238 = add i64 %2184, 18
  %2239 = load i64, i64* %6, align 8
  %2240 = add i64 %2239, -8
  %2241 = inttoptr i64 %2240 to i64*
  store i64 %2238, i64* %2241, align 8
  store i64 %2240, i64* %6, align 8
  store i64 %2237, i64* %3, align 8
  %call2_4505bd = tail call %struct.Memory* @sub_413b00.chainlinks(%struct.State* nonnull %0, i64 %2237, %struct.Memory* %MEMORY.1)
  %2242 = load i64, i64* %RBP.i, align 8
  %2243 = add i64 %2242, -1188
  %2244 = load i32, i32* %EAX.i920, align 4
  %2245 = load i64, i64* %3, align 8
  %2246 = add i64 %2245, 6
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2243 to i32*
  store i32 %2244, i32* %2247, align 4
  %2248 = load i64, i64* %RBP.i, align 8
  %2249 = add i64 %2248, -492
  %2250 = load i64, i64* %3, align 8
  %2251 = add i64 %2250, 10
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2249 to i32*
  store i32 0, i32* %2252, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_4505d2

block_.L_4505d2:                                  ; preds = %block_.L_450671, %block_.L_4505b0
  %2253 = phi i64 [ %.pre90, %block_.L_4505b0 ], [ %2478, %block_.L_450671 ]
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -492
  %2256 = add i64 %2253, 6
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RAX.i960, align 8
  %2260 = add i64 %2254, -1188
  %2261 = add i64 %2253, 12
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sub i32 %2258, %2263
  %2265 = icmp ult i32 %2258, %2263
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %32, align 1
  %2267 = and i32 %2264, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %39, align 1
  %2272 = xor i32 %2263, %2258
  %2273 = xor i32 %2272, %2264
  %2274 = lshr i32 %2273, 4
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %44, align 1
  %2277 = icmp eq i32 %2264, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %47, align 1
  %2279 = lshr i32 %2264, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %50, align 1
  %2281 = lshr i32 %2258, 31
  %2282 = lshr i32 %2263, 31
  %2283 = xor i32 %2282, %2281
  %2284 = xor i32 %2279, %2281
  %2285 = add nuw nsw i32 %2284, %2283
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %56, align 1
  %2288 = icmp ne i8 %2280, 0
  %2289 = xor i1 %2288, %2286
  %.v125 = select i1 %2289, i64 18, i64 184
  %2290 = add i64 %2253, %.v125
  store i64 %2290, i64* %3, align 8
  br i1 %2289, label %block_4505e4, label %block_.L_45068a

block_4505e4:                                     ; preds = %block_.L_4505d2
  %2291 = add i64 %2290, 7
  store i64 %2291, i64* %3, align 8
  %2292 = load i32, i32* %2257, align 4
  %2293 = sext i32 %2292 to i64
  store i64 %2293, i64* %RAX.i960, align 8
  %2294 = shl nsw i64 %2293, 2
  %2295 = add i64 %2254, -1184
  %2296 = add i64 %2295, %2294
  %2297 = add i64 %2290, 14
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i32*
  %2299 = load i32, i32* %2298, align 4
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RDI.i425, align 8
  %2301 = add i64 %2290, -265828
  %2302 = add i64 %2290, 19
  %2303 = load i64, i64* %6, align 8
  %2304 = add i64 %2303, -8
  %2305 = inttoptr i64 %2304 to i64*
  store i64 %2302, i64* %2305, align 8
  store i64 %2304, i64* %6, align 8
  store i64 %2301, i64* %3, align 8
  %call2_4505f2 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %2301, %struct.Memory* %MEMORY.1)
  %2306 = load i32, i32* %EAX.i920, align 4
  %2307 = load i64, i64* %3, align 8
  %2308 = add i32 %2306, -3
  %2309 = icmp ult i32 %2306, 3
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %32, align 1
  %2311 = and i32 %2308, 255
  %2312 = tail call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  store i8 %2315, i8* %39, align 1
  %2316 = xor i32 %2308, %2306
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  store i8 %2319, i8* %44, align 1
  %2320 = icmp eq i32 %2308, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %47, align 1
  %2322 = lshr i32 %2308, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %50, align 1
  %2324 = lshr i32 %2306, 31
  %2325 = xor i32 %2322, %2324
  %2326 = add nuw nsw i32 %2325, %2324
  %2327 = icmp eq i32 %2326, 2
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %56, align 1
  %2329 = icmp ne i8 %2323, 0
  %2330 = xor i1 %2329, %2327
  %.demorgan = or i1 %2320, %2330
  %.v126 = select i1 %.demorgan, i64 9, i64 122
  %2331 = add i64 %2307, %.v126
  store i64 %2331, i64* %3, align 8
  br i1 %.demorgan, label %block_450600, label %block_4505e4.block_.L_450671_crit_edge

block_4505e4.block_.L_450671_crit_edge:           ; preds = %block_4505e4
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %block_.L_450671

block_450600:                                     ; preds = %block_4505e4
  store i64 3, i64* %RSI.i866, align 8
  %2332 = load i64, i64* %RBP.i, align 8
  %2333 = add i64 %2332, -528
  store i64 %2333, i64* %RDX.i870, align 8
  %2334 = add i64 %2332, -492
  %2335 = add i64 %2331, 19
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = sext i32 %2337 to i64
  store i64 %2338, i64* %RAX.i960, align 8
  %2339 = shl nsw i64 %2338, 2
  %2340 = add i64 %2332, -1184
  %2341 = add i64 %2340, %2339
  %2342 = add i64 %2331, 26
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RDI.i425, align 8
  %2346 = add i64 %2331, -265664
  %2347 = add i64 %2331, 31
  %2348 = load i64, i64* %6, align 8
  %2349 = add i64 %2348, -8
  %2350 = inttoptr i64 %2349 to i64*
  store i64 %2347, i64* %2350, align 8
  store i64 %2349, i64* %6, align 8
  store i64 %2346, i64* %3, align 8
  %call2_45061a = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2346, %struct.Memory* %MEMORY.1)
  %2351 = load i64, i64* %RBP.i, align 8
  %2352 = add i64 %2351, -532
  %2353 = load i32, i32* %EAX.i920, align 4
  %2354 = load i64, i64* %3, align 8
  %2355 = add i64 %2354, 6
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2352 to i32*
  store i32 %2353, i32* %2356, align 4
  %2357 = load i64, i64* %RBP.i, align 8
  %2358 = add i64 %2357, -1192
  %2359 = load i64, i64* %3, align 8
  %2360 = add i64 %2359, 10
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2358 to i32*
  store i32 0, i32* %2361, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_45062f

block_.L_45062f:                                  ; preds = %block_450641, %block_450600
  %2362 = phi i64 [ %2445, %block_450641 ], [ %.pre91, %block_450600 ]
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -1192
  %2365 = add i64 %2362, 6
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = zext i32 %2367 to i64
  store i64 %2368, i64* %RAX.i960, align 8
  %2369 = add i64 %2363, -532
  %2370 = add i64 %2362, 12
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = sub i32 %2367, %2372
  %2374 = icmp ult i32 %2367, %2372
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %32, align 1
  %2376 = and i32 %2373, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %39, align 1
  %2381 = xor i32 %2372, %2367
  %2382 = xor i32 %2381, %2373
  %2383 = lshr i32 %2382, 4
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  store i8 %2385, i8* %44, align 1
  %2386 = icmp eq i32 %2373, 0
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %47, align 1
  %2388 = lshr i32 %2373, 31
  %2389 = trunc i32 %2388 to i8
  store i8 %2389, i8* %50, align 1
  %2390 = lshr i32 %2367, 31
  %2391 = lshr i32 %2372, 31
  %2392 = xor i32 %2391, %2390
  %2393 = xor i32 %2388, %2390
  %2394 = add nuw nsw i32 %2393, %2392
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %56, align 1
  %2397 = icmp ne i8 %2389, 0
  %2398 = xor i1 %2397, %2395
  %.v127 = select i1 %2398, i64 18, i64 61
  %2399 = add i64 %2362, %.v127
  store i64 %2399, i64* %3, align 8
  br i1 %2398, label %block_450641, label %block_.L_45066c

block_450641:                                     ; preds = %block_.L_45062f
  %2400 = add i64 %2399, 7
  store i64 %2400, i64* %3, align 8
  %2401 = load i32, i32* %2366, align 4
  %2402 = sext i32 %2401 to i64
  store i64 %2402, i64* %RAX.i960, align 8
  %2403 = shl nsw i64 %2402, 2
  %2404 = add i64 %2363, -528
  %2405 = add i64 %2404, %2403
  %2406 = add i64 %2399, 15
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  %2409 = sext i32 %2408 to i64
  store i64 %2409, i64* %RAX.i960, align 8
  %2410 = add nsw i64 %2409, -480
  %2411 = add i64 %2410, %2363
  %2412 = add i64 %2399, 23
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i8*
  store i8 1, i8* %2413, align 1
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -1192
  %2416 = load i64, i64* %3, align 8
  %2417 = add i64 %2416, 6
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2415 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = add i32 %2419, 1
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RAX.i960, align 8
  %2422 = icmp eq i32 %2419, -1
  %2423 = icmp eq i32 %2420, 0
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %32, align 1
  %2426 = and i32 %2420, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %39, align 1
  %2431 = xor i32 %2420, %2419
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  store i8 %2434, i8* %44, align 1
  %2435 = zext i1 %2423 to i8
  store i8 %2435, i8* %47, align 1
  %2436 = lshr i32 %2420, 31
  %2437 = trunc i32 %2436 to i8
  store i8 %2437, i8* %50, align 1
  %2438 = lshr i32 %2419, 31
  %2439 = xor i32 %2436, %2438
  %2440 = add nuw nsw i32 %2439, %2436
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %56, align 1
  %2443 = add i64 %2416, 15
  store i64 %2443, i64* %3, align 8
  store i32 %2420, i32* %2418, align 4
  %2444 = load i64, i64* %3, align 8
  %2445 = add i64 %2444, -56
  store i64 %2445, i64* %3, align 8
  br label %block_.L_45062f

block_.L_45066c:                                  ; preds = %block_.L_45062f
  %2446 = add i64 %2399, 5
  store i64 %2446, i64* %3, align 8
  br label %block_.L_450671

block_.L_450671:                                  ; preds = %block_4505e4.block_.L_450671_crit_edge, %block_.L_45066c
  %2447 = phi i64 [ %2363, %block_.L_45066c ], [ %.pre92, %block_4505e4.block_.L_450671_crit_edge ]
  %2448 = phi i64 [ %2446, %block_.L_45066c ], [ %2331, %block_4505e4.block_.L_450671_crit_edge ]
  %2449 = add i64 %2447, -492
  %2450 = add i64 %2448, 11
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  %2452 = load i32, i32* %2451, align 4
  %2453 = add i32 %2452, 1
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RAX.i960, align 8
  %2455 = icmp eq i32 %2452, -1
  %2456 = icmp eq i32 %2453, 0
  %2457 = or i1 %2455, %2456
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %32, align 1
  %2459 = and i32 %2453, 255
  %2460 = tail call i32 @llvm.ctpop.i32(i32 %2459)
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  store i8 %2463, i8* %39, align 1
  %2464 = xor i32 %2453, %2452
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  store i8 %2467, i8* %44, align 1
  %2468 = zext i1 %2456 to i8
  store i8 %2468, i8* %47, align 1
  %2469 = lshr i32 %2453, 31
  %2470 = trunc i32 %2469 to i8
  store i8 %2470, i8* %50, align 1
  %2471 = lshr i32 %2452, 31
  %2472 = xor i32 %2469, %2471
  %2473 = add nuw nsw i32 %2472, %2469
  %2474 = icmp eq i32 %2473, 2
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %56, align 1
  %2476 = add i64 %2448, 20
  store i64 %2476, i64* %3, align 8
  store i32 %2453, i32* %2451, align 4
  %2477 = load i64, i64* %3, align 8
  %2478 = add i64 %2477, -179
  store i64 %2478, i64* %3, align 8
  br label %block_.L_4505d2

block_.L_45068a:                                  ; preds = %block_.L_4505d2
  %2479 = add i64 %2290, 5
  store i64 %2479, i64* %3, align 8
  br label %block_.L_45068f

block_.L_45068f:                                  ; preds = %block_450505, %block_450538.block_.L_45068f_crit_edge, %block_.L_45068a, %block_450520
  %2480 = phi i64 [ %2004, %block_450505 ], [ %2004, %block_450520 ], [ %.pre93, %block_450538.block_.L_45068f_crit_edge ], [ %2254, %block_.L_45068a ]
  %2481 = phi i64 [ %2068, %block_450505 ], [ %2089, %block_450520 ], [ %2123, %block_450538.block_.L_45068f_crit_edge ], [ %2479, %block_.L_45068a ]
  %2482 = add i64 %2480, -484
  %2483 = add i64 %2481, 11
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = add i32 %2485, 1
  %2487 = zext i32 %2486 to i64
  store i64 %2487, i64* %RAX.i960, align 8
  %2488 = icmp eq i32 %2485, -1
  %2489 = icmp eq i32 %2486, 0
  %2490 = or i1 %2488, %2489
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %32, align 1
  %2492 = and i32 %2486, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %39, align 1
  %2497 = xor i32 %2486, %2485
  %2498 = lshr i32 %2497, 4
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  store i8 %2500, i8* %44, align 1
  %2501 = zext i1 %2489 to i8
  store i8 %2501, i8* %47, align 1
  %2502 = lshr i32 %2486, 31
  %2503 = trunc i32 %2502 to i8
  store i8 %2503, i8* %50, align 1
  %2504 = lshr i32 %2485, 31
  %2505 = xor i32 %2502, %2504
  %2506 = add nuw nsw i32 %2505, %2502
  %2507 = icmp eq i32 %2506, 2
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %56, align 1
  %2509 = add i64 %2481, 20
  store i64 %2509, i64* %3, align 8
  store i32 %2486, i32* %2484, align 4
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, -430
  store i64 %2511, i64* %3, align 8
  br label %block_.L_4504f5

block_.L_4506a8:                                  ; preds = %block_.L_4504f5
  %2512 = add i64 %2033, 10
  store i64 %2512, i64* %3, align 8
  store i32 21, i32* %2007, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4506b2

block_.L_4506b2:                                  ; preds = %block_.L_45079f, %block_.L_4506a8
  %2513 = phi i64 [ %.pre84, %block_.L_4506a8 ], [ %2790, %block_.L_45079f ]
  %2514 = load i64, i64* %RBP.i, align 8
  %2515 = add i64 %2514, -484
  %2516 = add i64 %2513, 10
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = add i32 %2518, -400
  %2520 = icmp ult i32 %2518, 400
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %32, align 1
  %2522 = and i32 %2519, 255
  %2523 = tail call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  store i8 %2526, i8* %39, align 1
  %2527 = xor i32 %2518, 16
  %2528 = xor i32 %2527, %2519
  %2529 = lshr i32 %2528, 4
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  store i8 %2531, i8* %44, align 1
  %2532 = icmp eq i32 %2519, 0
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %47, align 1
  %2534 = lshr i32 %2519, 31
  %2535 = trunc i32 %2534 to i8
  store i8 %2535, i8* %50, align 1
  %2536 = lshr i32 %2518, 31
  %2537 = xor i32 %2534, %2536
  %2538 = add nuw nsw i32 %2537, %2536
  %2539 = icmp eq i32 %2538, 2
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %56, align 1
  %2541 = icmp ne i8 %2535, 0
  %2542 = xor i1 %2541, %2539
  %.v114 = select i1 %2542, i64 16, i64 257
  %2543 = add i64 %2513, %.v114
  store i64 %2543, i64* %3, align 8
  br i1 %2542, label %block_4506c2, label %block_.L_4507b3

block_4506c2:                                     ; preds = %block_.L_4506b2
  %2544 = add i64 %2543, 7
  store i64 %2544, i64* %3, align 8
  %2545 = load i32, i32* %2517, align 4
  %2546 = sext i32 %2545 to i64
  store i64 %2546, i64* %RAX.i960, align 8
  %2547 = add nsw i64 %2546, 12099168
  %2548 = add i64 %2543, 15
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i8*
  %2550 = load i8, i8* %2549, align 1
  %2551 = zext i8 %2550 to i64
  store i64 %2551, i64* %RCX.i872, align 8
  %2552 = add i64 %2514, -1196
  %2553 = zext i8 %2550 to i32
  %2554 = add i64 %2543, 21
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2552 to i32*
  store i32 %2553, i32* %2555, align 4
  %2556 = load i64, i64* %RBP.i, align 8
  %2557 = add i64 %2556, -484
  %2558 = load i64, i64* %3, align 8
  %2559 = add i64 %2558, 7
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2557 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = sext i32 %2561 to i64
  store i64 %2562, i64* %RAX.i960, align 8
  %2563 = add nsw i64 %2562, 12099168
  %2564 = add i64 %2558, 15
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i8*
  %2566 = load i8, i8* %2565, align 1
  %2567 = zext i8 %2566 to i64
  store i64 %2567, i64* %RCX.i872, align 8
  %2568 = zext i8 %2566 to i32
  %2569 = add nsw i32 %2568, -3
  %2570 = icmp ult i8 %2566, 3
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %32, align 1
  %2572 = and i32 %2569, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %39, align 1
  %2577 = xor i32 %2569, %2568
  %2578 = lshr i32 %2577, 4
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %44, align 1
  %2581 = icmp eq i32 %2569, 0
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %47, align 1
  %2583 = lshr i32 %2569, 31
  %2584 = trunc i32 %2583 to i8
  store i8 %2584, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v116 = select i1 %2581, i64 24, i64 29
  %2585 = add i64 %2558, %.v116
  store i64 %2585, i64* %3, align 8
  br i1 %2581, label %block_4506ef, label %block_.L_4506f4

block_4506ef:                                     ; preds = %block_4506c2
  %2586 = add i64 %2585, 176
  store i64 %2586, i64* %3, align 8
  br label %block_.L_45079f

block_.L_4506f4:                                  ; preds = %block_4506c2
  %2587 = add i64 %2585, 7
  store i64 %2587, i64* %3, align 8
  %2588 = load i32, i32* %2560, align 4
  %2589 = sext i32 %2588 to i64
  store i64 %2589, i64* %RAX.i960, align 8
  %2590 = add nsw i64 %2589, -480
  %2591 = add i64 %2590, %2556
  %2592 = add i64 %2585, 15
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i8*
  %2594 = load i8, i8* %2593, align 1
  store i8 0, i8* %32, align 1
  %2595 = zext i8 %2594 to i32
  %2596 = tail call i32 @llvm.ctpop.i32(i32 %2595)
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  store i8 %2599, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %2600 = icmp eq i8 %2594, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %47, align 1
  %2602 = lshr i8 %2594, 7
  store i8 %2602, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v117 = select i1 %2600, i64 21, i64 36
  %2603 = add i64 %2585, %.v117
  store i64 %2603, i64* %3, align 8
  br i1 %2600, label %block_450709, label %block_.L_450718

block_450709:                                     ; preds = %block_.L_4506f4
  %2604 = add i64 %2556, -1196
  %2605 = add i64 %2603, 10
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  store i32 3, i32* %2606, align 4
  %2607 = load i64, i64* %3, align 8
  %2608 = add i64 %2607, 93
  br label %block_.L_450770

block_.L_450718:                                  ; preds = %block_.L_4506f4
  %2609 = add i64 %2603, 7
  store i64 %2609, i64* %3, align 8
  %2610 = load i32, i32* %2560, align 4
  %2611 = sext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i960, align 8
  %2612 = add nsw i64 %2611, 12099168
  %2613 = add i64 %2603, 15
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i8*
  %2615 = load i8, i8* %2614, align 1
  %2616 = zext i8 %2615 to i64
  store i64 %2616, i64* %RCX.i872, align 8
  %2617 = zext i8 %2615 to i32
  %2618 = add nsw i32 %2617, -1
  %2619 = icmp eq i8 %2615, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %32, align 1
  %2621 = and i32 %2618, 255
  %2622 = tail call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %39, align 1
  %2626 = xor i32 %2618, %2617
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %44, align 1
  %2630 = icmp eq i32 %2618, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %47, align 1
  %2632 = lshr i32 %2618, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v118 = select i1 %2630, i64 48, i64 24
  %2634 = add i64 %2603, %.v118
  store i64 %2634, i64* %3, align 8
  br i1 %2630, label %block_.L_450748, label %block_450730

block_450730:                                     ; preds = %block_.L_450718
  %2635 = add i64 %2634, 7
  store i64 %2635, i64* %3, align 8
  %2636 = load i32, i32* %2560, align 4
  %2637 = sext i32 %2636 to i64
  store i64 %2637, i64* %RAX.i960, align 8
  %2638 = add nsw i64 %2637, 12099168
  %2639 = add i64 %2634, 15
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i8*
  %2641 = load i8, i8* %2640, align 1
  %2642 = zext i8 %2641 to i64
  store i64 %2642, i64* %RCX.i872, align 8
  %2643 = zext i8 %2641 to i32
  %2644 = add nsw i32 %2643, -2
  %2645 = icmp ult i8 %2641, 2
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %32, align 1
  %2647 = and i32 %2644, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %39, align 1
  %2652 = xor i32 %2644, %2643
  %2653 = lshr i32 %2652, 4
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  store i8 %2655, i8* %44, align 1
  %2656 = icmp eq i32 %2644, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %47, align 1
  %2658 = lshr i32 %2644, 31
  %2659 = trunc i32 %2658 to i8
  store i8 %2659, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v119 = select i1 %2656, i64 24, i64 59
  %2660 = add i64 %2634, %.v119
  store i64 %2660, i64* %3, align 8
  br i1 %2656, label %block_.L_450748, label %block_.L_45076b

block_.L_450748:                                  ; preds = %block_450730, %block_.L_450718
  %2661 = phi i64 [ %2660, %block_450730 ], [ %2634, %block_.L_450718 ]
  %2662 = add i64 %2661, 6
  store i64 %2662, i64* %3, align 8
  %2663 = load i32, i32* %2560, align 4
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RDI.i425, align 8
  %2665 = add i64 %2661, -266184
  %2666 = add i64 %2661, 11
  %2667 = load i64, i64* %6, align 8
  %2668 = add i64 %2667, -8
  %2669 = inttoptr i64 %2668 to i64*
  store i64 %2666, i64* %2669, align 8
  store i64 %2668, i64* %6, align 8
  store i64 %2665, i64* %3, align 8
  %call2_45074e = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %2665, %struct.Memory* %MEMORY.1)
  %2670 = load i32, i32* %EAX.i920, align 4
  %2671 = load i64, i64* %3, align 8
  %2672 = add i32 %2670, -4
  %2673 = icmp ult i32 %2670, 4
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %32, align 1
  %2675 = and i32 %2672, 255
  %2676 = tail call i32 @llvm.ctpop.i32(i32 %2675)
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = xor i8 %2678, 1
  store i8 %2679, i8* %39, align 1
  %2680 = xor i32 %2672, %2670
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %44, align 1
  %2684 = icmp eq i32 %2672, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %47, align 1
  %2686 = lshr i32 %2672, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %50, align 1
  %2688 = lshr i32 %2670, 31
  %2689 = xor i32 %2686, %2688
  %2690 = add nuw nsw i32 %2689, %2688
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %56, align 1
  %2693 = icmp ne i8 %2687, 0
  %2694 = xor i1 %2693, %2691
  %2695 = or i1 %2684, %2694
  %.v120 = select i1 %2695, i64 24, i64 9
  %2696 = add i64 %2671, %.v120
  store i64 %2696, i64* %3, align 8
  br i1 %2695, label %block_.L_45076b, label %block_45075c

block_45075c:                                     ; preds = %block_.L_450748
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -1196
  %2699 = add i64 %2696, 6
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = or i32 %2701, 4
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RAX.i960, align 8
  store i8 0, i8* %32, align 1
  %2704 = and i32 %2702, 255
  %2705 = tail call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  store i8 %2708, i8* %39, align 1
  store i8 0, i8* %47, align 1
  %2709 = lshr i32 %2701, 31
  %2710 = trunc i32 %2709 to i8
  store i8 %2710, i8* %50, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %44, align 1
  %2711 = add i64 %2696, 15
  store i64 %2711, i64* %3, align 8
  store i32 %2702, i32* %2700, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_45076b

block_.L_45076b:                                  ; preds = %block_450730, %block_45075c, %block_.L_450748
  %2712 = phi i64 [ %.pre86, %block_45075c ], [ %2696, %block_.L_450748 ], [ %2660, %block_450730 ]
  %2713 = add i64 %2712, 5
  store i64 %2713, i64* %3, align 8
  br label %block_.L_450770

block_.L_450770:                                  ; preds = %block_.L_45076b, %block_450709
  %storemerge47 = phi i64 [ %2608, %block_450709 ], [ %2713, %block_.L_45076b ]
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX.i960, align 8
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -1196
  %2716 = add i64 %storemerge47, 16
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RCX.i872, align 8
  %2720 = trunc i32 %2718 to i8
  store i8 %2720, i8* %DL.i668, align 1
  %2721 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %2722 = sext i32 %2721 to i64
  %2723 = mul nsw i64 %2722, 444
  store i64 %2723, i64* %RSI.i866, align 8
  %2724 = lshr i64 %2723, 63
  %2725 = add i64 %2723, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  store i64 %2725, i64* %RAX.i960, align 8
  %2726 = icmp ult i64 %2725, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  %2727 = icmp ult i64 %2725, %2723
  %2728 = or i1 %2726, %2727
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %32, align 1
  %2730 = trunc i64 %2725 to i32
  %2731 = and i32 %2730, 252
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %39, align 1
  %2736 = xor i64 %2723, ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64)
  %2737 = xor i64 %2736, %2725
  %2738 = lshr i64 %2737, 4
  %2739 = trunc i64 %2738 to i8
  %2740 = and i8 %2739, 1
  store i8 %2740, i8* %44, align 1
  %2741 = icmp eq i64 %2725, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %47, align 1
  %2743 = lshr i64 %2725, 63
  %2744 = trunc i64 %2743 to i8
  store i8 %2744, i8* %50, align 1
  %2745 = xor i64 %2743, lshr (i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64 63)
  %2746 = xor i64 %2743, %2724
  %2747 = add nuw nsw i64 %2745, %2746
  %2748 = icmp eq i64 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %56, align 1
  %2750 = add i64 %2714, -484
  %2751 = add i64 %storemerge47, 43
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i32*
  %2753 = load i32, i32* %2752, align 4
  %2754 = sext i32 %2753 to i64
  store i64 %2754, i64* %RSI.i866, align 8
  %2755 = add nsw i64 %2754, 4
  %2756 = add i64 %2755, %2725
  %2757 = add i64 %storemerge47, 47
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i8*
  store i8 %2720, i8* %2758, align 1
  %.pre87 = load i64, i64* %RBP.i, align 8
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_45079f

block_.L_45079f:                                  ; preds = %block_.L_450770, %block_4506ef
  %2759 = phi i64 [ %.pre88, %block_.L_450770 ], [ %2586, %block_4506ef ]
  %2760 = phi i64 [ %.pre87, %block_.L_450770 ], [ %2556, %block_4506ef ]
  %2761 = add i64 %2760, -484
  %2762 = add i64 %2759, 6
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = add i32 %2764, 1
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RAX.i960, align 8
  %2767 = icmp eq i32 %2764, -1
  %2768 = icmp eq i32 %2765, 0
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %32, align 1
  %2771 = and i32 %2765, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %39, align 1
  %2776 = xor i32 %2765, %2764
  %2777 = lshr i32 %2776, 4
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  store i8 %2779, i8* %44, align 1
  %2780 = zext i1 %2768 to i8
  store i8 %2780, i8* %47, align 1
  %2781 = lshr i32 %2765, 31
  %2782 = trunc i32 %2781 to i8
  store i8 %2782, i8* %50, align 1
  %2783 = lshr i32 %2764, 31
  %2784 = xor i32 %2781, %2783
  %2785 = add nuw nsw i32 %2784, %2781
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %56, align 1
  %2788 = add i64 %2759, 15
  store i64 %2788, i64* %3, align 8
  store i32 %2765, i32* %2763, align 4
  %2789 = load i64, i64* %3, align 8
  %2790 = add i64 %2789, -252
  store i64 %2790, i64* %3, align 8
  br label %block_.L_4506b2

block_.L_4507b3:                                  ; preds = %block_.L_4506b2
  %2791 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2792 = and i32 %2791, 2097152
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RAX.i960, align 8
  store i8 0, i8* %32, align 1
  store i8 1, i8* %39, align 1
  store i8 0, i8* %44, align 1
  %2794 = icmp eq i32 %2792, 0
  %.lobit104 = lshr exact i32 %2792, 21
  %2795 = trunc i32 %.lobit104 to i8
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %56, align 1
  %.v115 = select i1 %2794, i64 63, i64 21
  %2797 = add i64 %2543, %.v115
  store i64 %2797, i64* %3, align 8
  br i1 %2794, label %block_.L_4507f2, label %block_4507c8

block_4507c8:                                     ; preds = %block_.L_4507b3
  store i64 ptrtoint (%G__0x57f0de_type* @G__0x57f0de to i64), i64* %RDI.i425, align 8
  %2798 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %2799 = zext i32 %2798 to i64
  store i64 %2799, i64* %RSI.i866, align 8
  store i8 0, i8* %AL.i417, align 1
  %2800 = add i64 %2797, 5608
  %2801 = add i64 %2797, 24
  %2802 = load i64, i64* %6, align 8
  %2803 = add i64 %2802, -8
  %2804 = inttoptr i64 %2803 to i64*
  store i64 %2801, i64* %2804, align 8
  store i64 %2803, i64* %6, align 8
  store i64 %2800, i64* %3, align 8
  %call2_4507db = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2800, %struct.Memory* %MEMORY.1)
  %2805 = load i64, i64* %3, align 8
  %2806 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RDI.i425, align 8
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -1204
  %2810 = load i32, i32* %EAX.i920, align 4
  %2811 = add i64 %2805, 13
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2809 to i32*
  store i32 %2810, i32* %2812, align 4
  %2813 = load i64, i64* %3, align 8
  %2814 = add i64 %2813, 51
  %2815 = add i64 %2813, 5
  %2816 = load i64, i64* %6, align 8
  %2817 = add i64 %2816, -8
  %2818 = inttoptr i64 %2817 to i64*
  store i64 %2815, i64* %2818, align 8
  store i64 %2817, i64* %6, align 8
  store i64 %2814, i64* %3, align 8
  %call2_4507ed = tail call %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* nonnull %0, i64 %2814, %struct.Memory* %call2_4507db)
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_4507f2

block_.L_4507f2:                                  ; preds = %block_4507c8, %block_.L_4507b3
  %2819 = phi i64 [ %2797, %block_.L_4507b3 ], [ %.pre85, %block_4507c8 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4507b3 ], [ %call2_4507ed, %block_4507c8 ]
  %2820 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %2821 = add i32 %2820, 1
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RAX.i960, align 8
  %2823 = icmp eq i32 %2820, -1
  %2824 = icmp eq i32 %2821, 0
  %2825 = or i1 %2823, %2824
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %32, align 1
  %2827 = and i32 %2821, 255
  %2828 = tail call i32 @llvm.ctpop.i32(i32 %2827)
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  store i8 %2831, i8* %39, align 1
  %2832 = xor i32 %2821, %2820
  %2833 = lshr i32 %2832, 4
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  store i8 %2835, i8* %44, align 1
  %2836 = zext i1 %2824 to i8
  store i8 %2836, i8* %47, align 1
  %2837 = lshr i32 %2821, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %50, align 1
  %2839 = lshr i32 %2820, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2837
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %56, align 1
  %2844 = add i64 %2819, 17
  store i64 %2844, i64* %3, align 8
  store i32 %2821, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  br label %block_.L_450803

block_.L_450803:                                  ; preds = %block_.L_4507f2, %block_.L_44ff9c
  %2845 = phi i64 [ %2844, %block_.L_4507f2 ], [ %261, %block_.L_44ff9c ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.34, %block_.L_4507f2 ], [ %MEMORY.2, %block_.L_44ff9c ]
  %2846 = load i64, i64* %6, align 8
  %2847 = add i64 %2846, 1192
  store i64 %2847, i64* %6, align 8
  %2848 = icmp ugt i64 %2846, -1193
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %32, align 1
  %2850 = trunc i64 %2847 to i32
  %2851 = and i32 %2850, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %39, align 1
  %2856 = xor i64 %2847, %2846
  %2857 = lshr i64 %2856, 4
  %2858 = trunc i64 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %44, align 1
  %2860 = icmp eq i64 %2847, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %47, align 1
  %2862 = lshr i64 %2847, 63
  %2863 = trunc i64 %2862 to i8
  store i8 %2863, i8* %50, align 1
  %2864 = lshr i64 %2846, 63
  %2865 = xor i64 %2862, %2864
  %2866 = add nuw nsw i64 %2865, %2862
  %2867 = icmp eq i64 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %56, align 1
  %2869 = add i64 %2845, 8
  store i64 %2869, i64* %3, align 8
  %2870 = add i64 %2846, 1200
  %2871 = inttoptr i64 %2847 to i64*
  %2872 = load i64, i64* %2871, align 8
  store i64 %2872, i64* %RBX.i965, align 8
  store i64 %2870, i64* %6, align 8
  %2873 = add i64 %2845, 10
  store i64 %2873, i64* %3, align 8
  %2874 = add i64 %2846, 1208
  %2875 = inttoptr i64 %2870 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %R14.i967, align 8
  store i64 %2874, i64* %6, align 8
  %2877 = add i64 %2845, 12
  store i64 %2877, i64* %3, align 8
  %2878 = add i64 %2846, 1216
  %2879 = inttoptr i64 %2874 to i64*
  %2880 = load i64, i64* %2879, align 8
  store i64 %2880, i64* %R15.i969, align 8
  store i64 %2878, i64* %6, align 8
  %2881 = add i64 %2845, 13
  store i64 %2881, i64* %3, align 8
  %2882 = add i64 %2846, 1224
  %2883 = inttoptr i64 %2878 to i64*
  %2884 = load i64, i64* %2883, align 8
  store i64 %2884, i64* %RBP.i, align 8
  store i64 %2882, i64* %6, align 8
  %2885 = add i64 %2845, 14
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2882 to i64*
  %2887 = load i64, i64* %2886, align 8
  store i64 %2887, i64* %3, align 8
  %2888 = add i64 %2846, 1232
  store i64 %2888, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x4a8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1192
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
define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 32
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
define %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movl__0x3___r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R15D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -76
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -496
  %6 = load i32, i32* %R15D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_44ff1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jmpq_.L_44ff44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eec5_type* @G__0x57eec5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2d2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 722, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x96__0xad1720(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = add i32 %5, -150
  %7 = icmp ult i32 %5, 150
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
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44ff5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_callq_.purge_persistent_owl_cache(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44ffa1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x1000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4096
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_44ff85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jmpq_.L_44ff9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57f0c2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f0c2_type* @G__0x57f0c2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xad1730___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xad1730_type* @G__0xad1730 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 444
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__ecx__0x19c__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 412
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__ecx__0x1a0__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 416
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x1a4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 420
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__ecx__0x1a8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 424
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__ecx__0x1ac__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 428
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__ecx__0x1b0__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 432
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x1b4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 436
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__ecx__0x1b8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 440
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__ecx__0x198__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 408
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x194__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 404
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_450171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_450158(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_setne__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %SIL, align 1
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
define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x1e0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -480
  %7 = add i64 %6, %5
  %8 = load i8, i8* %SIL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45015d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450100(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_45019f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_45019f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_4501cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_je_.L_4501cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4503cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4503b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_450249(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -496
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
define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_45024e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4503a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_45028b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -488
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
define %struct.Memory* @routine_je_.L_450342(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4502c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_450305(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45039d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45039d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jne_.L_450378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
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
define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movb__cl__MINUS0x1e0__rbp__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %4, -480
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450398(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
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
define %struct.Memory* @routine_movsbl__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.mark_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45039d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4501ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4503bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -488
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4501d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4504eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45041c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_450421(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4504d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
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
define %struct.Memory* @routine_jge_.L_4504d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
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
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -500
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
define %struct.Memory* @routine_je_.L_4504b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -500
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
define %struct.Memory* @routine_jmpq_.L_4504d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4504be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
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
define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45042b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4503d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4506a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45068f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_je_.L_45068f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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
define %struct.Memory* @routine_jge_.L_45068f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -532
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x214__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -532
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
define %struct.Memory* @routine_jge_.L_4505b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -492
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
define %struct.Memory* @routine_movslq_MINUS0x210__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -528
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450573(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.chainlinks(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1188
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
define %struct.Memory* @routine_jge_.L_45068a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1184
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_450671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
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
define %struct.Memory* @routine_jge_.L_45066c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4a8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
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
define %struct.Memory* @routine_movl__eax__MINUS0x4a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45062f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450676(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4505d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45068f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450694(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4504f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4507b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1196
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4506f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_jmpq_.L_45079f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__MINUS0x1e0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = zext i8 %10 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i8 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i8 %10, 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_450718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_movl__0x3__MINUS0x4ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_450748(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_45076b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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
define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -4
  %8 = icmp ult i32 %4, 4
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
define %struct.Memory* @routine_jle_.L_45076b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
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
define %struct.Memory* @routine_orl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xad1720___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1bc___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 444
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__0x4__rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %4, 4
  %7 = add i64 %6, %5
  %8 = load i8, i8* %DL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4506b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x200000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2097152
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 21
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
define %struct.Memory* @routine_je_.L_4507f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f0de___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f0de_type* @G__0x57f0de to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xad1720___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xad1720___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.print_persistent_owl_cache_entry(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xad1720___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xad1720(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xad1720_type* @G_0xad1720 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4a8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1193
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
