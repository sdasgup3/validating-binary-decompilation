; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45756f_type = type <{ [8 x i8] }>
%G__0x459933_type = type <{ [8 x i8] }>
%G__0x459c9f_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45af2f_type = type <{ [8 x i8] }>
%G__0x45afe0_type = type <{ [8 x i8] }>
%G__0x45afe8_type = type <{ [8 x i8] }>
%G__0x45aff3_type = type <{ [8 x i8] }>
%G__0x45b004_type = type <{ [8 x i8] }>
%G__0x45b013_type = type <{ [8 x i8] }>
%G__0x45b022_type = type <{ [8 x i8] }>
%G__0x45b031_type = type <{ [8 x i8] }>
%G__0x45b040_type = type <{ [8 x i8] }>
%G__0x45b056_type = type <{ [8 x i8] }>
%G__0x45b067_type = type <{ [8 x i8] }>
%G__0x45b07d_type = type <{ [8 x i8] }>
%G__0x45b08e_type = type <{ [8 x i8] }>
%G__0x45b0a4_type = type <{ [8 x i8] }>
%G__0x45b0b5_type = type <{ [8 x i8] }>
%G__0x45b0c3_type = type <{ [8 x i8] }>
%G__0x45b0db_type = type <{ [8 x i8] }>
%G__0x45b0f1_type = type <{ [8 x i8] }>
%G__0x45b106_type = type <{ [8 x i8] }>
%G__0x45b119_type = type <{ [8 x i8] }>
%G__0x45b125_type = type <{ [8 x i8] }>
%G__0x45b13c_type = type <{ [8 x i8] }>
%G__0x45b153_type = type <{ [8 x i8] }>
%G__0x45b168_type = type <{ [8 x i8] }>
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
@G__0x45756f = global %G__0x45756f_type zeroinitializer
@G__0x459933 = global %G__0x459933_type zeroinitializer
@G__0x459c9f = global %G__0x459c9f_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45af2f = global %G__0x45af2f_type zeroinitializer
@G__0x45afe0 = global %G__0x45afe0_type zeroinitializer
@G__0x45afe8 = global %G__0x45afe8_type zeroinitializer
@G__0x45aff3 = global %G__0x45aff3_type zeroinitializer
@G__0x45b004 = global %G__0x45b004_type zeroinitializer
@G__0x45b013 = global %G__0x45b013_type zeroinitializer
@G__0x45b022 = global %G__0x45b022_type zeroinitializer
@G__0x45b031 = global %G__0x45b031_type zeroinitializer
@G__0x45b040 = global %G__0x45b040_type zeroinitializer
@G__0x45b056 = global %G__0x45b056_type zeroinitializer
@G__0x45b067 = global %G__0x45b067_type zeroinitializer
@G__0x45b07d = global %G__0x45b07d_type zeroinitializer
@G__0x45b08e = global %G__0x45b08e_type zeroinitializer
@G__0x45b0a4 = global %G__0x45b0a4_type zeroinitializer
@G__0x45b0b5 = global %G__0x45b0b5_type zeroinitializer
@G__0x45b0c3 = global %G__0x45b0c3_type zeroinitializer
@G__0x45b0db = global %G__0x45b0db_type zeroinitializer
@G__0x45b0f1 = global %G__0x45b0f1_type zeroinitializer
@G__0x45b106 = global %G__0x45b106_type zeroinitializer
@G__0x45b119 = global %G__0x45b119_type zeroinitializer
@G__0x45b125 = global %G__0x45b125_type zeroinitializer
@G__0x45b13c = global %G__0x45b13c_type zeroinitializer
@G__0x45b153 = global %G__0x45b153_type zeroinitializer
@G__0x45b168 = global %G__0x45b168_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @actually_write_stockholm(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -376
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 368
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
  %RDI.i44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i44, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i147, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -40
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 0, i32* %66, align 4
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -44
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 7
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -36
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 7
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 0, i32* %76, align 4
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -24
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i825 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %RCX.i863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i889 = bitcast %union.anon* %82 to i32*
  %RDX.i1293 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44b729

block_.L_44b729:                                  ; preds = %block_.L_44b762, %entry
  %83 = phi i64 [ %.pre, %entry ], [ %224, %block_.L_44b762 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %144, %block_.L_44b762 ]
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -24
  %86 = add i64 %83, 3
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX.i825, align 8
  %90 = add i64 %84, -16
  %91 = add i64 %83, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RCX.i863, align 8
  %94 = add i64 %93, 28
  %95 = add i64 %83, 10
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %88, %97
  %99 = icmp ult i32 %88, %97
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %14, align 1
  %101 = and i32 %98, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %21, align 1
  %106 = xor i32 %97, %88
  %107 = xor i32 %106, %98
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %27, align 1
  %111 = icmp eq i32 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %30, align 1
  %113 = lshr i32 %98, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %33, align 1
  %115 = lshr i32 %88, 31
  %116 = lshr i32 %97, 31
  %117 = xor i32 %116, %115
  %118 = xor i32 %113, %115
  %119 = add nuw nsw i32 %118, %117
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %39, align 1
  %122 = icmp ne i8 %114, 0
  %123 = xor i1 %122, %120
  %.v = select i1 %123, i64 16, i64 76
  %124 = add i64 %83, %.v
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = load i64, i64* %92, align 8
  store i64 %126, i64* %RAX.i825, align 8
  br i1 %123, label %block_44b739, label %block_.L_44b775

block_44b739:                                     ; preds = %block_.L_44b729
  %127 = add i64 %126, 8
  %128 = add i64 %124, 8
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i825, align 8
  %131 = add i64 %124, 12
  store i64 %131, i64* %3, align 8
  %132 = load i32, i32* %87, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %RCX.i863, align 8
  %134 = shl nsw i64 %133, 3
  %135 = add i64 %134, %130
  %136 = add i64 %124, 16
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RDI.i44, align 8
  %139 = add i64 %124, -303833
  %140 = add i64 %124, 21
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %143, align 8
  store i64 %142, i64* %6, align 8
  store i64 %139, i64* %3, align 8
  %144 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.0)
  %145 = load i32, i32* %EAX.i889, align 4
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %3, align 8
  store i64 %146, i64* %RDX.i1293, align 8
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -32
  %150 = add i64 %147, 5
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  store i32 %145, i32* %151, align 4
  %152 = load i32, i32* %EDX.i, align 4
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -36
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 3
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = sub i32 %152, %158
  %160 = icmp ult i32 %152, %158
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  %167 = xor i32 %158, %152
  %168 = xor i32 %167, %159
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %27, align 1
  %172 = icmp eq i32 %159, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %30, align 1
  %174 = lshr i32 %159, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %33, align 1
  %176 = lshr i32 %152, 31
  %177 = lshr i32 %158, 31
  %178 = xor i32 %177, %176
  %179 = xor i32 %174, %176
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %39, align 1
  %183 = icmp ne i8 %175, 0
  %184 = xor i1 %183, %181
  %185 = or i1 %172, %184
  %.v215 = select i1 %185, i64 15, i64 9
  %186 = add i64 %155, %.v215
  store i64 %186, i64* %3, align 8
  br i1 %185, label %block_.L_44b762, label %block_44b75c

block_44b75c:                                     ; preds = %block_44b739
  %187 = add i64 %153, -32
  %188 = add i64 %186, 3
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX.i825, align 8
  %192 = add i64 %186, 6
  store i64 %192, i64* %3, align 8
  store i32 %190, i32* %157, align 4
  %.pre157 = load i64, i64* %3, align 8
  %.pre158 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b762

block_.L_44b762:                                  ; preds = %block_44b75c, %block_44b739
  %193 = phi i64 [ %.pre158, %block_44b75c ], [ %153, %block_44b739 ]
  %194 = phi i64 [ %.pre157, %block_44b75c ], [ %186, %block_44b739 ]
  %195 = add i64 %193, -24
  %196 = add i64 %194, 8
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %198, 1
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RAX.i825, align 8
  %201 = icmp eq i32 %198, -1
  %202 = icmp eq i32 %199, 0
  %203 = or i1 %201, %202
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %14, align 1
  %205 = and i32 %199, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %21, align 1
  %210 = xor i32 %199, %198
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %27, align 1
  %214 = zext i1 %202 to i8
  store i8 %214, i8* %30, align 1
  %215 = lshr i32 %199, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %33, align 1
  %217 = lshr i32 %198, 31
  %218 = xor i32 %215, %217
  %219 = add nuw nsw i32 %218, %215
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %39, align 1
  %222 = add i64 %194, 14
  store i64 %222, i64* %3, align 8
  store i32 %199, i32* %197, align 4
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, -71
  store i64 %224, i64* %3, align 8
  br label %block_.L_44b729

block_.L_44b775:                                  ; preds = %block_.L_44b729
  %225 = add i64 %126, 112
  %226 = add i64 %124, 9
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i8 0, i8* %14, align 1
  %229 = trunc i64 %228 to i32
  %230 = and i32 %229, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %235 = icmp eq i64 %228, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %30, align 1
  %237 = lshr i64 %228, 63
  %238 = trunc i64 %237 to i8
  store i8 %238, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %235, i64 29, i64 15
  %239 = add i64 %124, %.v167
  store i64 %239, i64* %3, align 8
  br i1 %235, label %block_.L_44b792, label %block_44b784

block_44b784:                                     ; preds = %block_.L_44b775
  %240 = add i64 %84, -44
  %241 = add i64 %239, 7
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i32*
  store i32 4, i32* %242, align 4
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -40
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 7
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %244 to i32*
  store i32 2, i32* %247, align 4
  %.pre93 = load i64, i64* %RBP.i, align 8
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_44b792

block_.L_44b792:                                  ; preds = %block_44b784, %block_.L_44b775
  %248 = phi i64 [ %.pre94, %block_44b784 ], [ %239, %block_.L_44b775 ]
  %249 = phi i64 [ %.pre93, %block_44b784 ], [ %84, %block_.L_44b775 ]
  %250 = add i64 %249, -16
  %251 = add i64 %248, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i825, align 8
  %254 = add i64 %253, 120
  %255 = add i64 %248, 9
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i8 0, i8* %14, align 1
  %258 = trunc i64 %257 to i32
  %259 = and i32 %258, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %264 = icmp eq i64 %257, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i64 %257, 63
  %267 = trunc i64 %266 to i8
  store i8 %267, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %264, i64 29, i64 15
  %268 = add i64 %248, %.v168
  store i64 %268, i64* %3, align 8
  br i1 %264, label %block_.L_44b7af, label %block_44b7a1

block_44b7a1:                                     ; preds = %block_.L_44b792
  %269 = add i64 %249, -44
  %270 = add i64 %268, 7
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 4, i32* %271, align 4
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -40
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i32*
  store i32 2, i32* %276, align 4
  %.pre95 = load i64, i64* %RBP.i, align 8
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_44b7af

block_.L_44b7af:                                  ; preds = %block_44b7a1, %block_.L_44b792
  %277 = phi i64 [ %.pre96, %block_44b7a1 ], [ %268, %block_.L_44b792 ]
  %278 = phi i64 [ %.pre95, %block_44b7a1 ], [ %249, %block_.L_44b792 ]
  %279 = add i64 %278, -24
  %280 = add i64 %277, 7
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 0, i32* %281, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_44b7b6

block_.L_44b7b6:                                  ; preds = %block_.L_44b7f5, %block_.L_44b7af
  %282 = phi i64 [ %.pre97, %block_.L_44b7af ], [ %423, %block_.L_44b7f5 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44b7af ], [ %343, %block_.L_44b7f5 ]
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -24
  %285 = add i64 %282, 3
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i825, align 8
  %289 = add i64 %283, -16
  %290 = add i64 %282, 7
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RCX.i863, align 8
  %293 = add i64 %292, 304
  %294 = add i64 %282, 13
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = sub i32 %287, %296
  %298 = icmp ult i32 %287, %296
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = and i32 %297, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  %305 = xor i32 %296, %287
  %306 = xor i32 %305, %297
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %27, align 1
  %310 = icmp eq i32 %297, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %30, align 1
  %312 = lshr i32 %297, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %33, align 1
  %314 = lshr i32 %287, 31
  %315 = lshr i32 %296, 31
  %316 = xor i32 %315, %314
  %317 = xor i32 %312, %314
  %318 = add nuw nsw i32 %317, %316
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %39, align 1
  %321 = icmp ne i8 %313, 0
  %322 = xor i1 %321, %319
  %.v164 = select i1 %322, i64 19, i64 82
  %323 = add i64 %282, %.v164
  %324 = add i64 %323, 4
  store i64 %324, i64* %3, align 8
  %325 = load i64, i64* %291, align 8
  store i64 %325, i64* %RAX.i825, align 8
  br i1 %322, label %block_44b7c9, label %block_.L_44b808

block_44b7c9:                                     ; preds = %block_.L_44b7b6
  %326 = add i64 %325, 280
  %327 = add i64 %323, 11
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RAX.i825, align 8
  %330 = add i64 %323, 15
  store i64 %330, i64* %3, align 8
  %331 = load i32, i32* %286, align 4
  %332 = sext i32 %331 to i64
  store i64 %332, i64* %RCX.i863, align 8
  %333 = shl nsw i64 %332, 3
  %334 = add i64 %333, %329
  %335 = add i64 %323, 19
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RDI.i44, align 8
  %338 = add i64 %323, -303977
  %339 = add i64 %323, 24
  %340 = load i64, i64* %6, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %339, i64* %342, align 8
  store i64 %341, i64* %6, align 8
  store i64 %338, i64* %3, align 8
  %343 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.4)
  %344 = load i32, i32* %EAX.i889, align 4
  %345 = zext i32 %344 to i64
  %346 = load i64, i64* %3, align 8
  store i64 %345, i64* %RDX.i1293, align 8
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -32
  %349 = add i64 %346, 5
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  store i32 %344, i32* %350, align 4
  %351 = load i32, i32* %EDX.i, align 4
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -40
  %354 = load i64, i64* %3, align 8
  %355 = add i64 %354, 3
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %353 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sub i32 %351, %357
  %359 = icmp ult i32 %351, %357
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1
  %361 = and i32 %358, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %21, align 1
  %366 = xor i32 %357, %351
  %367 = xor i32 %366, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %27, align 1
  %371 = icmp eq i32 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %30, align 1
  %373 = lshr i32 %358, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %33, align 1
  %375 = lshr i32 %351, 31
  %376 = lshr i32 %357, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %373, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1
  %382 = icmp ne i8 %374, 0
  %383 = xor i1 %382, %380
  %384 = or i1 %371, %383
  %.v214 = select i1 %384, i64 15, i64 9
  %385 = add i64 %354, %.v214
  store i64 %385, i64* %3, align 8
  br i1 %384, label %block_.L_44b7f5, label %block_44b7ef

block_44b7ef:                                     ; preds = %block_44b7c9
  %386 = add i64 %352, -32
  %387 = add i64 %385, 3
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i825, align 8
  %391 = add i64 %385, 6
  store i64 %391, i64* %3, align 8
  store i32 %389, i32* %356, align 4
  %.pre155 = load i64, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b7f5

block_.L_44b7f5:                                  ; preds = %block_44b7ef, %block_44b7c9
  %392 = phi i64 [ %.pre156, %block_44b7ef ], [ %352, %block_44b7c9 ]
  %393 = phi i64 [ %.pre155, %block_44b7ef ], [ %385, %block_44b7c9 ]
  %394 = add i64 %392, -24
  %395 = add i64 %393, 8
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %397, 1
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RAX.i825, align 8
  %400 = icmp eq i32 %397, -1
  %401 = icmp eq i32 %398, 0
  %402 = or i1 %400, %401
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %14, align 1
  %404 = and i32 %398, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  %409 = xor i32 %398, %397
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %27, align 1
  %413 = zext i1 %401 to i8
  store i8 %413, i8* %30, align 1
  %414 = lshr i32 %398, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %33, align 1
  %416 = lshr i32 %397, 31
  %417 = xor i32 %414, %416
  %418 = add nuw nsw i32 %417, %414
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %39, align 1
  %421 = add i64 %393, 14
  store i64 %421, i64* %3, align 8
  store i32 %398, i32* %396, align 4
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, -77
  store i64 %423, i64* %3, align 8
  br label %block_.L_44b7b6

block_.L_44b808:                                  ; preds = %block_.L_44b7b6
  %424 = add i64 %325, 88
  %425 = add i64 %323, 9
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i8 0, i8* %14, align 1
  %428 = trunc i64 %427 to i32
  %429 = and i32 %428, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %434 = icmp eq i64 %427, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %30, align 1
  %436 = lshr i64 %427, 63
  %437 = trunc i64 %436 to i8
  store i8 %437, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v169 = select i1 %434, i64 44, i64 15
  %438 = add i64 %323, %.v169
  store i64 %438, i64* %3, align 8
  br i1 %434, label %block_.L_44b834, label %block_44b817

block_44b817:                                     ; preds = %block_.L_44b808
  %439 = add i64 %283, -44
  %440 = add i64 %438, 7
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  store i32 4, i32* %441, align 4
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -40
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, -2
  %449 = icmp ult i32 %447, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %14, align 1
  %451 = and i32 %448, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %21, align 1
  %456 = xor i32 %448, %447
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %27, align 1
  %460 = icmp eq i32 %448, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %30, align 1
  %462 = lshr i32 %448, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %33, align 1
  %464 = lshr i32 %447, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %39, align 1
  %469 = icmp ne i8 %463, 0
  %470 = xor i1 %469, %467
  %.v170 = select i1 %470, i64 10, i64 17
  %471 = add i64 %444, %.v170
  store i64 %471, i64* %3, align 8
  br i1 %470, label %block_44b828, label %block_.L_44b82f

block_44b828:                                     ; preds = %block_44b817
  %472 = add i64 %471, 7
  store i64 %472, i64* %3, align 8
  store i32 2, i32* %446, align 4
  %.pre98 = load i64, i64* %3, align 8
  %.pre99.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b82f

block_.L_44b82f:                                  ; preds = %block_44b817, %block_44b828
  %.pre99 = phi i64 [ %442, %block_44b817 ], [ %.pre99.pre, %block_44b828 ]
  %473 = phi i64 [ %471, %block_44b817 ], [ %.pre98, %block_44b828 ]
  %474 = add i64 %473, 5
  store i64 %474, i64* %3, align 8
  br label %block_.L_44b834

block_.L_44b834:                                  ; preds = %block_.L_44b82f, %block_.L_44b808
  %475 = phi i64 [ %474, %block_.L_44b82f ], [ %438, %block_.L_44b808 ]
  %476 = phi i64 [ %.pre99, %block_.L_44b82f ], [ %283, %block_.L_44b808 ]
  %477 = add i64 %476, -16
  %478 = add i64 %475, 4
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX.i825, align 8
  %481 = add i64 %480, 72
  %482 = add i64 %475, 9
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i8 0, i8* %14, align 1
  %485 = trunc i64 %484 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %491 = icmp eq i64 %484, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %30, align 1
  %493 = lshr i64 %484, 63
  %494 = trunc i64 %493 to i8
  store i8 %494, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v171 = select i1 %491, i64 44, i64 15
  %495 = add i64 %475, %.v171
  store i64 %495, i64* %3, align 8
  br i1 %491, label %block_.L_44b860, label %block_44b843

block_44b843:                                     ; preds = %block_.L_44b834
  %496 = add i64 %476, -44
  %497 = add i64 %495, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 4, i32* %498, align 4
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -40
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 4
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, -7
  %506 = icmp ult i32 %504, 7
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = and i32 %505, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  %513 = xor i32 %505, %504
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %27, align 1
  %517 = icmp eq i32 %505, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %30, align 1
  %519 = lshr i32 %505, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %33, align 1
  %521 = lshr i32 %504, 31
  %522 = xor i32 %519, %521
  %523 = add nuw nsw i32 %522, %521
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %39, align 1
  %526 = icmp ne i8 %520, 0
  %527 = xor i1 %526, %524
  %.v172 = select i1 %527, i64 10, i64 17
  %528 = add i64 %501, %.v172
  store i64 %528, i64* %3, align 8
  br i1 %527, label %block_44b854, label %block_.L_44b85b

block_44b854:                                     ; preds = %block_44b843
  %529 = add i64 %528, 7
  store i64 %529, i64* %3, align 8
  store i32 7, i32* %503, align 4
  %.pre100 = load i64, i64* %3, align 8
  %.pre101.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b85b

block_.L_44b85b:                                  ; preds = %block_44b843, %block_44b854
  %.pre101 = phi i64 [ %499, %block_44b843 ], [ %.pre101.pre, %block_44b854 ]
  %530 = phi i64 [ %528, %block_44b843 ], [ %.pre100, %block_44b854 ]
  %531 = add i64 %530, 5
  store i64 %531, i64* %3, align 8
  br label %block_.L_44b860

block_.L_44b860:                                  ; preds = %block_.L_44b85b, %block_.L_44b834
  %532 = phi i64 [ %531, %block_.L_44b85b ], [ %495, %block_.L_44b834 ]
  %533 = phi i64 [ %.pre101, %block_.L_44b85b ], [ %476, %block_.L_44b834 ]
  %534 = add i64 %533, -16
  %535 = add i64 %532, 4
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RAX.i825, align 8
  %538 = add i64 %537, 80
  %539 = add i64 %532, 9
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i8 0, i8* %14, align 1
  %542 = trunc i64 %541 to i32
  %543 = and i32 %542, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %548 = icmp eq i64 %541, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %30, align 1
  %550 = lshr i64 %541, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %548, i64 44, i64 15
  %552 = add i64 %532, %.v173
  store i64 %552, i64* %3, align 8
  br i1 %548, label %block_.L_44b88c, label %block_44b86f

block_44b86f:                                     ; preds = %block_.L_44b860
  %553 = add i64 %533, -44
  %554 = add i64 %552, 7
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  store i32 4, i32* %555, align 4
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -40
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 4
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, -7
  %563 = icmp ult i32 %561, 7
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %14, align 1
  %565 = and i32 %562, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %21, align 1
  %570 = xor i32 %562, %561
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %27, align 1
  %574 = icmp eq i32 %562, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %30, align 1
  %576 = lshr i32 %562, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %33, align 1
  %578 = lshr i32 %561, 31
  %579 = xor i32 %576, %578
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %39, align 1
  %583 = icmp ne i8 %577, 0
  %584 = xor i1 %583, %581
  %.v174 = select i1 %584, i64 10, i64 17
  %585 = add i64 %558, %.v174
  store i64 %585, i64* %3, align 8
  br i1 %584, label %block_44b880, label %block_.L_44b887

block_44b880:                                     ; preds = %block_44b86f
  %586 = add i64 %585, 7
  store i64 %586, i64* %3, align 8
  store i32 7, i32* %560, align 4
  %.pre102 = load i64, i64* %3, align 8
  %.pre103.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b887

block_.L_44b887:                                  ; preds = %block_44b86f, %block_44b880
  %.pre103 = phi i64 [ %556, %block_44b86f ], [ %.pre103.pre, %block_44b880 ]
  %587 = phi i64 [ %585, %block_44b86f ], [ %.pre102, %block_44b880 ]
  %588 = add i64 %587, 5
  store i64 %588, i64* %3, align 8
  br label %block_.L_44b88c

block_.L_44b88c:                                  ; preds = %block_.L_44b887, %block_.L_44b860
  %589 = phi i64 [ %588, %block_.L_44b887 ], [ %552, %block_.L_44b860 ]
  %590 = phi i64 [ %.pre103, %block_.L_44b887 ], [ %533, %block_.L_44b860 ]
  %591 = add i64 %590, -24
  %592 = add i64 %589, 7
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  store i32 0, i32* %593, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_44b893

block_.L_44b893:                                  ; preds = %block_.L_44b8d2, %block_.L_44b88c
  %594 = phi i64 [ %.pre104, %block_.L_44b88c ], [ %735, %block_.L_44b8d2 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.4, %block_.L_44b88c ], [ %655, %block_.L_44b8d2 ]
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -24
  %597 = add i64 %594, 3
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RAX.i825, align 8
  %601 = add i64 %595, -16
  %602 = add i64 %594, 7
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RCX.i863, align 8
  %605 = add i64 %604, 272
  %606 = add i64 %594, 13
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = sub i32 %599, %608
  %610 = icmp ult i32 %599, %608
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %21, align 1
  %617 = xor i32 %608, %599
  %618 = xor i32 %617, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %27, align 1
  %622 = icmp eq i32 %609, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %30, align 1
  %624 = lshr i32 %609, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %33, align 1
  %626 = lshr i32 %599, 31
  %627 = lshr i32 %608, 31
  %628 = xor i32 %627, %626
  %629 = xor i32 %624, %626
  %630 = add nuw nsw i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %39, align 1
  %633 = icmp ne i8 %625, 0
  %634 = xor i1 %633, %631
  %.v175 = select i1 %634, i64 19, i64 82
  %635 = add i64 %594, %.v175
  store i64 %635, i64* %3, align 8
  br i1 %634, label %block_44b8a6, label %block_.L_44b8e5

block_44b8a6:                                     ; preds = %block_.L_44b893
  %636 = add i64 %635, 4
  store i64 %636, i64* %3, align 8
  %637 = load i64, i64* %603, align 8
  store i64 %637, i64* %RAX.i825, align 8
  %638 = add i64 %637, 248
  %639 = add i64 %635, 11
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i825, align 8
  %642 = add i64 %635, 15
  store i64 %642, i64* %3, align 8
  %643 = load i32, i32* %598, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX.i863, align 8
  %645 = shl nsw i64 %644, 3
  %646 = add i64 %645, %641
  %647 = add i64 %635, 19
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RDI.i44, align 8
  %650 = add i64 %635, -304198
  %651 = add i64 %635, 24
  %652 = load i64, i64* %6, align 8
  %653 = add i64 %652, -8
  %654 = inttoptr i64 %653 to i64*
  store i64 %651, i64* %654, align 8
  store i64 %653, i64* %6, align 8
  store i64 %650, i64* %3, align 8
  %655 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.12)
  %656 = load i32, i32* %EAX.i889, align 4
  %657 = zext i32 %656 to i64
  %658 = load i64, i64* %3, align 8
  store i64 %657, i64* %RDX.i1293, align 8
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -32
  %661 = add i64 %658, 5
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  store i32 %656, i32* %662, align 4
  %663 = load i32, i32* %EDX.i, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -40
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 3
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sub i32 %663, %669
  %671 = icmp ult i32 %663, %669
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %670, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %669, %663
  %679 = xor i32 %678, %670
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %27, align 1
  %683 = icmp eq i32 %670, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %30, align 1
  %685 = lshr i32 %670, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %33, align 1
  %687 = lshr i32 %663, 31
  %688 = lshr i32 %669, 31
  %689 = xor i32 %688, %687
  %690 = xor i32 %685, %687
  %691 = add nuw nsw i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %39, align 1
  %694 = icmp ne i8 %686, 0
  %695 = xor i1 %694, %692
  %696 = or i1 %683, %695
  %.v213 = select i1 %696, i64 15, i64 9
  %697 = add i64 %666, %.v213
  store i64 %697, i64* %3, align 8
  br i1 %696, label %block_.L_44b8d2, label %block_44b8cc

block_44b8cc:                                     ; preds = %block_44b8a6
  %698 = add i64 %664, -32
  %699 = add i64 %697, 3
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i825, align 8
  %703 = add i64 %697, 6
  store i64 %703, i64* %3, align 8
  store i32 %701, i32* %668, align 4
  %.pre153 = load i64, i64* %3, align 8
  %.pre154 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b8d2

block_.L_44b8d2:                                  ; preds = %block_44b8cc, %block_44b8a6
  %704 = phi i64 [ %.pre154, %block_44b8cc ], [ %664, %block_44b8a6 ]
  %705 = phi i64 [ %.pre153, %block_44b8cc ], [ %697, %block_44b8a6 ]
  %706 = add i64 %704, -24
  %707 = add i64 %705, 8
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = add i32 %709, 1
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RAX.i825, align 8
  %712 = icmp eq i32 %709, -1
  %713 = icmp eq i32 %710, 0
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %710, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %710, %709
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %27, align 1
  %725 = zext i1 %713 to i8
  store i8 %725, i8* %30, align 1
  %726 = lshr i32 %710, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %33, align 1
  %728 = lshr i32 %709, 31
  %729 = xor i32 %726, %728
  %730 = add nuw nsw i32 %729, %726
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %39, align 1
  %733 = add i64 %705, 14
  store i64 %733, i64* %3, align 8
  store i32 %710, i32* %708, align 4
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, -77
  store i64 %735, i64* %3, align 8
  br label %block_.L_44b893

block_.L_44b8e5:                                  ; preds = %block_.L_44b893
  store i64 ptrtoint (%G__0x45af2f_type* @G__0x45af2f to i64), i64* %RDI.i44, align 8
  store i64 251, i64* %RSI.i147, align 8
  %736 = add i64 %595, -20
  %737 = add i64 %635, 18
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i825, align 8
  %741 = add i64 %595, -36
  %742 = add i64 %635, 21
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, %739
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RAX.i825, align 8
  %747 = icmp ult i32 %745, %739
  %748 = icmp ult i32 %745, %744
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %14, align 1
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %21, align 1
  %756 = xor i32 %744, %739
  %757 = xor i32 %756, %745
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %27, align 1
  %761 = icmp eq i32 %745, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %30, align 1
  %763 = lshr i32 %745, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %33, align 1
  %765 = lshr i32 %739, 31
  %766 = lshr i32 %744, 31
  %767 = xor i32 %763, %765
  %768 = xor i32 %763, %766
  %769 = add nuw nsw i32 %767, %768
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %39, align 1
  %772 = add i64 %595, -40
  %773 = add i64 %635, 24
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, %745
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RAX.i825, align 8
  %778 = icmp ult i32 %776, %745
  %779 = icmp ult i32 %776, %775
  %780 = or i1 %778, %779
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %776, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %775, %745
  %788 = xor i32 %787, %776
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %27, align 1
  %792 = icmp eq i32 %776, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %30, align 1
  %794 = lshr i32 %776, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %33, align 1
  %796 = lshr i32 %775, 31
  %797 = xor i32 %794, %763
  %798 = xor i32 %794, %796
  %799 = add nuw nsw i32 %797, %798
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %39, align 1
  %802 = add i64 %595, -44
  %803 = add i64 %635, 27
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = add i32 %805, %776
  %807 = lshr i32 %806, 31
  %808 = add i32 %806, 61
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RAX.i825, align 8
  %810 = icmp ugt i32 %806, -62
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %14, align 1
  %812 = and i32 %808, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  %817 = xor i32 %806, 16
  %818 = xor i32 %817, %808
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %27, align 1
  %822 = icmp eq i32 %808, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %30, align 1
  %824 = lshr i32 %808, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %33, align 1
  %826 = xor i32 %824, %807
  %827 = add nuw nsw i32 %826, %824
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %39, align 1
  %830 = sext i32 %808 to i64
  store i64 %830, i64* %RCX.i863, align 8
  store i64 %830, i64* %RDX.i1293, align 8
  %831 = add i64 %635, -22661
  %832 = add i64 %635, 45
  %833 = load i64, i64* %6, align 8
  %834 = add i64 %833, -8
  %835 = inttoptr i64 %834 to i64*
  store i64 %832, i64* %835, align 8
  store i64 %834, i64* %6, align 8
  store i64 %831, i64* %3, align 8
  %call2_44b90d = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %831, %struct.Memory* %MEMORY.12)
  %836 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45aff3_type* @G__0x45aff3 to i64), i64* %RSI.i147, align 8
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -56
  %839 = load i64, i64* %RAX.i825, align 8
  %840 = add i64 %836, 14
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %838 to i64*
  store i64 %839, i64* %841, align 8
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -8
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 4
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RDI.i44, align 8
  %AL.i1725 = bitcast %union.anon* %82 to i8*
  store i8 0, i8* %AL.i1725, align 1
  %848 = add i64 %844, -304048
  %849 = add i64 %844, 11
  %850 = load i64, i64* %6, align 8
  %851 = add i64 %850, -8
  %852 = inttoptr i64 %851 to i64*
  store i64 %849, i64* %852, align 8
  store i64 %851, i64* %6, align 8
  store i64 %848, i64* %3, align 8
  %853 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44b90d)
  %854 = load i64, i64* %RBP.i, align 8
  %855 = add i64 %854, -24
  %856 = load i64, i64* %3, align 8
  %857 = add i64 %856, 7
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %855 to i32*
  store i32 0, i32* %858, align 4
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -84
  %861 = load i32, i32* %EAX.i889, align 4
  %862 = load i64, i64* %3, align 8
  %863 = add i64 %862, 3
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %860 to i32*
  store i32 %861, i32* %864, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_44b935

block_.L_44b935:                                  ; preds = %block_44b948, %block_.L_44b8e5
  %865 = phi i64 [ %.pre105, %block_.L_44b8e5 ], [ %968, %block_44b948 ]
  %MEMORY.14 = phi %struct.Memory* [ %853, %block_.L_44b8e5 ], [ %930, %block_44b948 ]
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -24
  %868 = add i64 %865, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i825, align 8
  %872 = add i64 %866, -16
  %873 = add i64 %865, 7
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %RCX.i863, align 8
  %876 = add i64 %875, 184
  %877 = add i64 %865, 13
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = sub i32 %870, %879
  %881 = icmp ult i32 %870, %879
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = and i32 %880, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %21, align 1
  %888 = xor i32 %879, %870
  %889 = xor i32 %888, %880
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %27, align 1
  %893 = icmp eq i32 %880, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %30, align 1
  %895 = lshr i32 %880, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %33, align 1
  %897 = lshr i32 %870, 31
  %898 = lshr i32 %879, 31
  %899 = xor i32 %898, %897
  %900 = xor i32 %895, %897
  %901 = add nuw nsw i32 %900, %899
  %902 = icmp eq i32 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1
  %904 = icmp ne i8 %896, 0
  %905 = xor i1 %904, %902
  %.v176 = select i1 %905, i64 19, i64 76
  %906 = add i64 %865, %.v176
  store i64 %906, i64* %3, align 8
  br i1 %905, label %block_44b948, label %block_.L_44b981

block_44b948:                                     ; preds = %block_.L_44b935
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI.i147, align 8
  %907 = add i64 %866, -8
  %908 = add i64 %906, 14
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RDI.i44, align 8
  %911 = add i64 %906, 18
  store i64 %911, i64* %3, align 8
  %912 = load i64, i64* %874, align 8
  store i64 %912, i64* %RAX.i825, align 8
  %913 = add i64 %912, 176
  %914 = add i64 %906, 25
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  store i64 %916, i64* %RAX.i825, align 8
  %917 = add i64 %906, 29
  store i64 %917, i64* %3, align 8
  %918 = load i32, i32* %869, align 4
  %919 = sext i32 %918 to i64
  store i64 %919, i64* %RCX.i863, align 8
  %920 = shl nsw i64 %919, 3
  %921 = add i64 %920, %916
  %922 = add i64 %906, 33
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %RDX.i1293, align 8
  store i8 0, i8* %AL.i1725, align 1
  %925 = add i64 %906, -304088
  %926 = add i64 %906, 40
  %927 = load i64, i64* %6, align 8
  %928 = add i64 %927, -8
  %929 = inttoptr i64 %928 to i64*
  store i64 %926, i64* %929, align 8
  store i64 %928, i64* %6, align 8
  store i64 %925, i64* %3, align 8
  %930 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %931 = load i64, i64* %RBP.i, align 8
  %932 = add i64 %931, -88
  %933 = load i32, i32* %EAX.i889, align 4
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 3
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %932 to i32*
  store i32 %933, i32* %936, align 4
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -24
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 3
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %938 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = add i32 %942, 1
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i825, align 8
  %945 = icmp eq i32 %942, -1
  %946 = icmp eq i32 %943, 0
  %947 = or i1 %945, %946
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %14, align 1
  %949 = and i32 %943, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %21, align 1
  %954 = xor i32 %943, %942
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %27, align 1
  %958 = zext i1 %946 to i8
  store i8 %958, i8* %30, align 1
  %959 = lshr i32 %943, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %33, align 1
  %961 = lshr i32 %942, 31
  %962 = xor i32 %959, %961
  %963 = add nuw nsw i32 %962, %959
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %39, align 1
  %966 = add i64 %939, 9
  store i64 %966, i64* %3, align 8
  store i32 %943, i32* %941, align 4
  %967 = load i64, i64* %3, align 8
  %968 = add i64 %967, -71
  store i64 %968, i64* %3, align 8
  br label %block_.L_44b935

block_.L_44b981:                                  ; preds = %block_.L_44b935
  %969 = add i64 %906, 4
  store i64 %969, i64* %3, align 8
  %970 = load i64, i64* %874, align 8
  store i64 %970, i64* %RAX.i825, align 8
  %971 = add i64 %970, 184
  %972 = add i64 %906, 11
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  store i8 0, i8* %14, align 1
  %975 = and i32 %974, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %980 = icmp eq i32 %974, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %30, align 1
  %982 = lshr i32 %974, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %984 = icmp ne i8 %983, 0
  %985 = or i1 %980, %984
  %.v177 = select i1 %985, i64 41, i64 17
  %986 = add i64 %906, %.v177
  store i64 %986, i64* %3, align 8
  br i1 %985, label %block_.L_44b9aa, label %block_44b992

block_44b992:                                     ; preds = %block_.L_44b981
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %987 = add i64 %866, -8
  %988 = add i64 %986, 14
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %991 = add i64 %986, -304162
  %992 = add i64 %986, 21
  %993 = load i64, i64* %6, align 8
  %994 = add i64 %993, -8
  %995 = inttoptr i64 %994 to i64*
  store i64 %992, i64* %995, align 8
  store i64 %994, i64* %6, align 8
  store i64 %991, i64* %3, align 8
  %996 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -92
  %999 = load i32, i32* %EAX.i889, align 4
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %998 to i32*
  store i32 %999, i32* %1002, align 4
  %.pre106 = load i64, i64* %RBP.i, align 8
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_44b9aa

block_.L_44b9aa:                                  ; preds = %block_44b992, %block_.L_44b981
  %1003 = phi i64 [ %986, %block_.L_44b981 ], [ %.pre107, %block_44b992 ]
  %1004 = phi i64 [ %866, %block_.L_44b981 ], [ %.pre106, %block_44b992 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_44b981 ], [ %996, %block_44b992 ]
  %1005 = add i64 %1004, -16
  %1006 = add i64 %1003, 4
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  store i64 %1008, i64* %RAX.i825, align 8
  %1009 = add i64 %1008, 40
  %1010 = add i64 %1003, 9
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i8 0, i8* %14, align 1
  %1013 = trunc i64 %1012 to i32
  %1014 = and i32 %1013, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1019 = icmp eq i64 %1012, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %30, align 1
  %1021 = lshr i64 %1012, 63
  %1022 = trunc i64 %1021 to i8
  store i8 %1022, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %1019, i64 47, i64 15
  %1023 = add i64 %1003, %.v178
  store i64 %1023, i64* %3, align 8
  br i1 %1019, label %block_.L_44b9d9, label %block_44b9b9

block_44b9b9:                                     ; preds = %block_.L_44b9aa
  store i64 ptrtoint (%G__0x45b004_type* @G__0x45b004 to i64), i64* %RSI.i147, align 8
  %1024 = add i64 %1004, -8
  %1025 = add i64 %1023, 14
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i64*
  %1027 = load i64, i64* %1026, align 8
  store i64 %1027, i64* %RDI.i44, align 8
  %1028 = add i64 %1023, 18
  store i64 %1028, i64* %3, align 8
  %1029 = load i64, i64* %1007, align 8
  store i64 %1029, i64* %RAX.i825, align 8
  %1030 = add i64 %1029, 40
  %1031 = add i64 %1023, 22
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %RDX.i1293, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1034 = add i64 %1023, -304201
  %1035 = add i64 %1023, 29
  %1036 = load i64, i64* %6, align 8
  %1037 = add i64 %1036, -8
  %1038 = inttoptr i64 %1037 to i64*
  store i64 %1035, i64* %1038, align 8
  store i64 %1037, i64* %6, align 8
  store i64 %1034, i64* %3, align 8
  %1039 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.15)
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -96
  %1042 = load i32, i32* %EAX.i889, align 4
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1041 to i32*
  store i32 %1042, i32* %1045, align 4
  %.pre108 = load i64, i64* %RBP.i, align 8
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_44b9d9

block_.L_44b9d9:                                  ; preds = %block_44b9b9, %block_.L_44b9aa
  %1046 = phi i64 [ %1023, %block_.L_44b9aa ], [ %.pre109, %block_44b9b9 ]
  %1047 = phi i64 [ %1004, %block_.L_44b9aa ], [ %.pre108, %block_44b9b9 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.15, %block_.L_44b9aa ], [ %1039, %block_44b9b9 ]
  %1048 = add i64 %1047, -16
  %1049 = add i64 %1046, 4
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %RAX.i825, align 8
  %1052 = add i64 %1051, 56
  %1053 = add i64 %1046, 9
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i8 0, i8* %14, align 1
  %1056 = trunc i64 %1055 to i32
  %1057 = and i32 %1056, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1062 = icmp eq i64 %1055, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %30, align 1
  %1064 = lshr i64 %1055, 63
  %1065 = trunc i64 %1064 to i8
  store i8 %1065, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v179 = select i1 %1062, i64 47, i64 15
  %1066 = add i64 %1046, %.v179
  store i64 %1066, i64* %3, align 8
  br i1 %1062, label %block_.L_44ba08, label %block_44b9e8

block_44b9e8:                                     ; preds = %block_.L_44b9d9
  store i64 ptrtoint (%G__0x45b013_type* @G__0x45b013 to i64), i64* %RSI.i147, align 8
  %1067 = add i64 %1047, -8
  %1068 = add i64 %1066, 14
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %RDI.i44, align 8
  %1071 = add i64 %1066, 18
  store i64 %1071, i64* %3, align 8
  %1072 = load i64, i64* %1050, align 8
  store i64 %1072, i64* %RAX.i825, align 8
  %1073 = add i64 %1072, 56
  %1074 = add i64 %1066, 22
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %RDX.i1293, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1077 = add i64 %1066, -304248
  %1078 = add i64 %1066, 29
  %1079 = load i64, i64* %6, align 8
  %1080 = add i64 %1079, -8
  %1081 = inttoptr i64 %1080 to i64*
  store i64 %1078, i64* %1081, align 8
  store i64 %1080, i64* %6, align 8
  store i64 %1077, i64* %3, align 8
  %1082 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.16)
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -100
  %1085 = load i32, i32* %EAX.i889, align 4
  %1086 = load i64, i64* %3, align 8
  %1087 = add i64 %1086, 3
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1084 to i32*
  store i32 %1085, i32* %1088, align 4
  %.pre110 = load i64, i64* %RBP.i, align 8
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_44ba08

block_.L_44ba08:                                  ; preds = %block_44b9e8, %block_.L_44b9d9
  %1089 = phi i64 [ %1066, %block_.L_44b9d9 ], [ %.pre111, %block_44b9e8 ]
  %1090 = phi i64 [ %1047, %block_.L_44b9d9 ], [ %.pre110, %block_44b9e8 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_.L_44b9d9 ], [ %1082, %block_44b9e8 ]
  %1091 = add i64 %1090, -16
  %1092 = add i64 %1089, 4
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX.i825, align 8
  %1095 = add i64 %1094, 48
  %1096 = add i64 %1089, 9
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i8 0, i8* %14, align 1
  %1099 = trunc i64 %1098 to i32
  %1100 = and i32 %1099, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1105 = icmp eq i64 %1098, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %30, align 1
  %1107 = lshr i64 %1098, 63
  %1108 = trunc i64 %1107 to i8
  store i8 %1108, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %1105, i64 47, i64 15
  %1109 = add i64 %1089, %.v180
  store i64 %1109, i64* %3, align 8
  br i1 %1105, label %block_.L_44ba37, label %block_44ba17

block_44ba17:                                     ; preds = %block_.L_44ba08
  store i64 ptrtoint (%G__0x45b022_type* @G__0x45b022 to i64), i64* %RSI.i147, align 8
  %1110 = add i64 %1090, -8
  %1111 = add i64 %1109, 14
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %RDI.i44, align 8
  %1114 = add i64 %1109, 18
  store i64 %1114, i64* %3, align 8
  %1115 = load i64, i64* %1093, align 8
  store i64 %1115, i64* %RAX.i825, align 8
  %1116 = add i64 %1115, 48
  %1117 = add i64 %1109, 22
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RDX.i1293, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1120 = add i64 %1109, -304295
  %1121 = add i64 %1109, 29
  %1122 = load i64, i64* %6, align 8
  %1123 = add i64 %1122, -8
  %1124 = inttoptr i64 %1123 to i64*
  store i64 %1121, i64* %1124, align 8
  store i64 %1123, i64* %6, align 8
  store i64 %1120, i64* %3, align 8
  %1125 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.17)
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -104
  %1128 = load i32, i32* %EAX.i889, align 4
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1127 to i32*
  store i32 %1128, i32* %1131, align 4
  %.pre112 = load i64, i64* %RBP.i, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_44ba37

block_.L_44ba37:                                  ; preds = %block_44ba17, %block_.L_44ba08
  %1132 = phi i64 [ %1109, %block_.L_44ba08 ], [ %.pre113, %block_44ba17 ]
  %1133 = phi i64 [ %1090, %block_.L_44ba08 ], [ %.pre112, %block_44ba17 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_44ba08 ], [ %1125, %block_44ba17 ]
  %1134 = add i64 %1133, -16
  %1135 = add i64 %1132, 4
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i64*
  %1137 = load i64, i64* %1136, align 8
  store i64 %1137, i64* %RAX.i825, align 8
  %1138 = add i64 %1137, 64
  %1139 = add i64 %1132, 9
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i64*
  %1141 = load i64, i64* %1140, align 8
  store i8 0, i8* %14, align 1
  %1142 = trunc i64 %1141 to i32
  %1143 = and i32 %1142, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1148 = icmp eq i64 %1141, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %30, align 1
  %1150 = lshr i64 %1141, 63
  %1151 = trunc i64 %1150 to i8
  store i8 %1151, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %1148, i64 47, i64 15
  %1152 = add i64 %1132, %.v181
  store i64 %1152, i64* %3, align 8
  br i1 %1148, label %block_.L_44ba66, label %block_44ba46

block_44ba46:                                     ; preds = %block_.L_44ba37
  store i64 ptrtoint (%G__0x45b031_type* @G__0x45b031 to i64), i64* %RSI.i147, align 8
  %1153 = add i64 %1133, -8
  %1154 = add i64 %1152, 14
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RDI.i44, align 8
  %1157 = add i64 %1152, 18
  store i64 %1157, i64* %3, align 8
  %1158 = load i64, i64* %1136, align 8
  store i64 %1158, i64* %RAX.i825, align 8
  %1159 = add i64 %1158, 64
  %1160 = add i64 %1152, 22
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RDX.i1293, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1163 = add i64 %1152, -304342
  %1164 = add i64 %1152, 29
  %1165 = load i64, i64* %6, align 8
  %1166 = add i64 %1165, -8
  %1167 = inttoptr i64 %1166 to i64*
  store i64 %1164, i64* %1167, align 8
  store i64 %1166, i64* %6, align 8
  store i64 %1163, i64* %3, align 8
  %1168 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.18)
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -108
  %1171 = load i32, i32* %EAX.i889, align 4
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1174, align 4
  %.pre114 = load i64, i64* %RBP.i, align 8
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_44ba66

block_.L_44ba66:                                  ; preds = %block_44ba46, %block_.L_44ba37
  %1175 = phi i64 [ %1152, %block_.L_44ba37 ], [ %.pre115, %block_44ba46 ]
  %1176 = phi i64 [ %1133, %block_.L_44ba37 ], [ %.pre114, %block_44ba46 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_44ba37 ], [ %1168, %block_44ba46 ]
  %1177 = add i64 %1176, -16
  %1178 = add i64 %1175, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RAX.i825, align 8
  %1181 = add i64 %1180, 160
  %1182 = add i64 %1175, 11
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  store i8 0, i8* %14, align 1
  %1185 = and i32 %1184, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1190 = icmp eq i32 %1184, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %30, align 1
  %1192 = lshr i32 %1184, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %1190, i64 87, i64 17
  %1194 = add i64 %1175, %.v182
  store i64 %1194, i64* %3, align 8
  br i1 %1190, label %block_.L_44babd, label %block_44ba77

block_44ba77:                                     ; preds = %block_.L_44ba66
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %3, align 8
  %1196 = load i64, i64* %1179, align 8
  store i64 %1196, i64* %RAX.i825, align 8
  %1197 = add i64 %1196, 164
  %1198 = add i64 %1194, 11
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  store i8 0, i8* %14, align 1
  %1201 = and i32 %1200, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1206 = icmp eq i32 %1200, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %30, align 1
  %1208 = lshr i32 %1200, 31
  %1209 = trunc i32 %1208 to i8
  store i8 %1209, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %1206, i64 70, i64 17
  %1210 = add i64 %1194, %.v183
  store i64 %1210, i64* %3, align 8
  br i1 %1206, label %block_.L_44babd, label %block_44ba88

block_44ba88:                                     ; preds = %block_44ba77
  store i64 ptrtoint (%G__0x45b040_type* @G__0x45b040 to i64), i64* %RSI.i147, align 8
  %1211 = add i64 %1176, -8
  %1212 = add i64 %1210, 14
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  store i64 %1214, i64* %RDI.i44, align 8
  %1215 = add i64 %1210, 18
  store i64 %1215, i64* %3, align 8
  %1216 = load i64, i64* %1179, align 8
  store i64 %1216, i64* %RAX.i825, align 8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1218 = add i64 %1216, 136
  %1219 = add i64 %1210, 26
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to float*
  %1221 = load float, float* %1220, align 4
  %1222 = fpext float %1221 to double
  %1223 = bitcast [32 x %union.VectorReg]* %1217 to double*
  store double %1222, double* %1223, align 1
  %1224 = add i64 %1210, 30
  store i64 %1224, i64* %3, align 8
  %1225 = load i64, i64* %1179, align 8
  store i64 %1225, i64* %RAX.i825, align 8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1227 = add i64 %1225, 140
  %1228 = add i64 %1210, 38
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to float*
  %1230 = load float, float* %1229, align 4
  %1231 = fpext float %1230 to double
  %1232 = bitcast %union.VectorReg* %1226 to double*
  store double %1231, double* %1232, align 1
  store i8 2, i8* %AL.i1725, align 1
  %1233 = add i64 %1210, -304408
  %1234 = add i64 %1210, 45
  %1235 = load i64, i64* %6, align 8
  %1236 = add i64 %1235, -8
  %1237 = inttoptr i64 %1236 to i64*
  store i64 %1234, i64* %1237, align 8
  store i64 %1236, i64* %6, align 8
  store i64 %1233, i64* %3, align 8
  %1238 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.19)
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -112
  %1241 = load i32, i32* %EAX.i889, align 4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1244, align 4
  %1245 = load i64, i64* %3, align 8
  %1246 = add i64 %1245, 63
  br label %block_.L_44baf7

block_.L_44babd:                                  ; preds = %block_44ba77, %block_.L_44ba66
  %1247 = phi i64 [ %1210, %block_44ba77 ], [ %1194, %block_.L_44ba66 ]
  %1248 = add i64 %1247, 4
  store i64 %1248, i64* %3, align 8
  %1249 = load i64, i64* %1179, align 8
  store i64 %1249, i64* %RAX.i825, align 8
  %1250 = add i64 %1249, 160
  %1251 = add i64 %1247, 11
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  store i8 0, i8* %14, align 1
  %1254 = and i32 %1253, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1259 = icmp eq i32 %1253, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %30, align 1
  %1261 = lshr i32 %1253, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v212 = select i1 %1259, i64 53, i64 17
  %1263 = add i64 %1247, %.v212
  store i64 %1263, i64* %3, align 8
  br i1 %1259, label %block_.L_44baf2, label %block_44bace

block_44bace:                                     ; preds = %block_.L_44babd
  store i64 ptrtoint (%G__0x45b056_type* @G__0x45b056 to i64), i64* %RSI.i147, align 8
  %1264 = add i64 %1176, -8
  %1265 = add i64 %1263, 14
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i64*
  %1267 = load i64, i64* %1266, align 8
  store i64 %1267, i64* %RDI.i44, align 8
  %1268 = add i64 %1263, 18
  store i64 %1268, i64* %3, align 8
  %1269 = load i64, i64* %1179, align 8
  store i64 %1269, i64* %RAX.i825, align 8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1271 = add i64 %1269, 136
  %1272 = add i64 %1263, 26
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to float*
  %1274 = load float, float* %1273, align 4
  %1275 = fpext float %1274 to double
  %1276 = bitcast %union.VectorReg* %1270 to double*
  store double %1275, double* %1276, align 1
  store i8 1, i8* %AL.i1725, align 1
  %1277 = add i64 %1263, -304478
  %1278 = add i64 %1263, 33
  %1279 = load i64, i64* %6, align 8
  %1280 = add i64 %1279, -8
  %1281 = inttoptr i64 %1280 to i64*
  store i64 %1278, i64* %1281, align 8
  store i64 %1280, i64* %6, align 8
  store i64 %1277, i64* %3, align 8
  %1282 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.19)
  %1283 = load i64, i64* %RBP.i, align 8
  %1284 = add i64 %1283, -116
  %1285 = load i32, i32* %EAX.i889, align 4
  %1286 = load i64, i64* %3, align 8
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1284 to i32*
  store i32 %1285, i32* %1288, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_44baf2

block_.L_44baf2:                                  ; preds = %block_44bace, %block_.L_44babd
  %1289 = phi i64 [ %1263, %block_.L_44babd ], [ %.pre116, %block_44bace ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_44babd ], [ %1282, %block_44bace ]
  %1290 = add i64 %1289, 5
  store i64 %1290, i64* %3, align 8
  br label %block_.L_44baf7

block_.L_44baf7:                                  ; preds = %block_.L_44baf2, %block_44ba88
  %storemerge = phi i64 [ %1246, %block_44ba88 ], [ %1290, %block_.L_44baf2 ]
  %MEMORY.22 = phi %struct.Memory* [ %1238, %block_44ba88 ], [ %MEMORY.21, %block_.L_44baf2 ]
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -16
  %1293 = add i64 %storemerge, 4
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i825, align 8
  %1296 = add i64 %1295, 168
  %1297 = add i64 %storemerge, 11
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  store i8 0, i8* %14, align 1
  %1300 = and i32 %1299, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1305 = icmp eq i32 %1299, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %30, align 1
  %1307 = lshr i32 %1299, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %1305, i64 87, i64 17
  %1309 = add i64 %storemerge, %.v184
  store i64 %1309, i64* %3, align 8
  br i1 %1305, label %block_.L_44bb4e, label %block_44bb08

block_44bb08:                                     ; preds = %block_.L_44baf7
  %1310 = add i64 %1309, 4
  store i64 %1310, i64* %3, align 8
  %1311 = load i64, i64* %1294, align 8
  store i64 %1311, i64* %RAX.i825, align 8
  %1312 = add i64 %1311, 172
  %1313 = add i64 %1309, 11
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  %1315 = load i32, i32* %1314, align 4
  store i8 0, i8* %14, align 1
  %1316 = and i32 %1315, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1321 = icmp eq i32 %1315, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %30, align 1
  %1323 = lshr i32 %1315, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %1321, i64 70, i64 17
  %1325 = add i64 %1309, %.v185
  store i64 %1325, i64* %3, align 8
  br i1 %1321, label %block_.L_44bb4e, label %block_44bb19

block_44bb19:                                     ; preds = %block_44bb08
  store i64 ptrtoint (%G__0x45b067_type* @G__0x45b067 to i64), i64* %RSI.i147, align 8
  %1326 = add i64 %1291, -8
  %1327 = add i64 %1325, 14
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RDI.i44, align 8
  %1330 = add i64 %1325, 18
  store i64 %1330, i64* %3, align 8
  %1331 = load i64, i64* %1294, align 8
  store i64 %1331, i64* %RAX.i825, align 8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1333 = add i64 %1331, 144
  %1334 = add i64 %1325, 26
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to float*
  %1336 = load float, float* %1335, align 4
  %1337 = fpext float %1336 to double
  %1338 = bitcast [32 x %union.VectorReg]* %1332 to double*
  store double %1337, double* %1338, align 1
  %1339 = add i64 %1325, 30
  store i64 %1339, i64* %3, align 8
  %1340 = load i64, i64* %1294, align 8
  store i64 %1340, i64* %RAX.i825, align 8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1342 = add i64 %1340, 148
  %1343 = add i64 %1325, 38
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to float*
  %1345 = load float, float* %1344, align 4
  %1346 = fpext float %1345 to double
  %1347 = bitcast %union.VectorReg* %1341 to double*
  store double %1346, double* %1347, align 1
  store i8 2, i8* %AL.i1725, align 1
  %1348 = add i64 %1325, -304553
  %1349 = add i64 %1325, 45
  %1350 = load i64, i64* %6, align 8
  %1351 = add i64 %1350, -8
  %1352 = inttoptr i64 %1351 to i64*
  store i64 %1349, i64* %1352, align 8
  store i64 %1351, i64* %6, align 8
  store i64 %1348, i64* %3, align 8
  %1353 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.22)
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -120
  %1356 = load i32, i32* %EAX.i889, align 4
  %1357 = load i64, i64* %3, align 8
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1355 to i32*
  store i32 %1356, i32* %1359, align 4
  %1360 = load i64, i64* %3, align 8
  %1361 = add i64 %1360, 63
  br label %block_.L_44bb88

block_.L_44bb4e:                                  ; preds = %block_44bb08, %block_.L_44baf7
  %1362 = phi i64 [ %1325, %block_44bb08 ], [ %1309, %block_.L_44baf7 ]
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %3, align 8
  %1364 = load i64, i64* %1294, align 8
  store i64 %1364, i64* %RAX.i825, align 8
  %1365 = add i64 %1364, 168
  %1366 = add i64 %1362, 11
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  store i8 0, i8* %14, align 1
  %1369 = and i32 %1368, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1374 = icmp eq i32 %1368, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %30, align 1
  %1376 = lshr i32 %1368, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v211 = select i1 %1374, i64 53, i64 17
  %1378 = add i64 %1362, %.v211
  store i64 %1378, i64* %3, align 8
  br i1 %1374, label %block_.L_44bb83, label %block_44bb5f

block_44bb5f:                                     ; preds = %block_.L_44bb4e
  store i64 ptrtoint (%G__0x45b07d_type* @G__0x45b07d to i64), i64* %RSI.i147, align 8
  %1379 = add i64 %1291, -8
  %1380 = add i64 %1378, 14
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RDI.i44, align 8
  %1383 = add i64 %1378, 18
  store i64 %1383, i64* %3, align 8
  %1384 = load i64, i64* %1294, align 8
  store i64 %1384, i64* %RAX.i825, align 8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1386 = add i64 %1384, 144
  %1387 = add i64 %1378, 26
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to float*
  %1389 = load float, float* %1388, align 4
  %1390 = fpext float %1389 to double
  %1391 = bitcast %union.VectorReg* %1385 to double*
  store double %1390, double* %1391, align 1
  store i8 1, i8* %AL.i1725, align 1
  %1392 = add i64 %1378, -304623
  %1393 = add i64 %1378, 33
  %1394 = load i64, i64* %6, align 8
  %1395 = add i64 %1394, -8
  %1396 = inttoptr i64 %1395 to i64*
  store i64 %1393, i64* %1396, align 8
  store i64 %1395, i64* %6, align 8
  store i64 %1392, i64* %3, align 8
  %1397 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.22)
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -124
  %1400 = load i32, i32* %EAX.i889, align 4
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1399 to i32*
  store i32 %1400, i32* %1403, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_44bb83

block_.L_44bb83:                                  ; preds = %block_44bb5f, %block_.L_44bb4e
  %1404 = phi i64 [ %1378, %block_.L_44bb4e ], [ %.pre117, %block_44bb5f ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_44bb4e ], [ %1397, %block_44bb5f ]
  %1405 = add i64 %1404, 5
  store i64 %1405, i64* %3, align 8
  br label %block_.L_44bb88

block_.L_44bb88:                                  ; preds = %block_.L_44bb83, %block_44bb19
  %storemerge55 = phi i64 [ %1361, %block_44bb19 ], [ %1405, %block_.L_44bb83 ]
  %MEMORY.25 = phi %struct.Memory* [ %1353, %block_44bb19 ], [ %MEMORY.24, %block_.L_44bb83 ]
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -16
  %1408 = add i64 %storemerge55, 4
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RAX.i825, align 8
  %1411 = add i64 %1410, 152
  %1412 = add i64 %storemerge55, 11
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  store i8 0, i8* %14, align 1
  %1415 = and i32 %1414, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1420 = icmp eq i32 %1414, 0
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %30, align 1
  %1422 = lshr i32 %1414, 31
  %1423 = trunc i32 %1422 to i8
  store i8 %1423, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v186 = select i1 %1420, i64 87, i64 17
  %1424 = add i64 %storemerge55, %.v186
  store i64 %1424, i64* %3, align 8
  br i1 %1420, label %block_.L_44bbdf, label %block_44bb99

block_44bb99:                                     ; preds = %block_.L_44bb88
  %1425 = add i64 %1424, 4
  store i64 %1425, i64* %3, align 8
  %1426 = load i64, i64* %1409, align 8
  store i64 %1426, i64* %RAX.i825, align 8
  %1427 = add i64 %1426, 156
  %1428 = add i64 %1424, 11
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  store i8 0, i8* %14, align 1
  %1431 = and i32 %1430, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1436 = icmp eq i32 %1430, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %30, align 1
  %1438 = lshr i32 %1430, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %1436, i64 70, i64 17
  %1440 = add i64 %1424, %.v187
  store i64 %1440, i64* %3, align 8
  br i1 %1436, label %block_.L_44bbdf, label %block_44bbaa

block_44bbaa:                                     ; preds = %block_44bb99
  store i64 ptrtoint (%G__0x45b08e_type* @G__0x45b08e to i64), i64* %RSI.i147, align 8
  %1441 = add i64 %1406, -8
  %1442 = add i64 %1440, 14
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RDI.i44, align 8
  %1445 = add i64 %1440, 18
  store i64 %1445, i64* %3, align 8
  %1446 = load i64, i64* %1409, align 8
  store i64 %1446, i64* %RAX.i825, align 8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1448 = add i64 %1446, 128
  %1449 = add i64 %1440, 26
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to float*
  %1451 = load float, float* %1450, align 4
  %1452 = fpext float %1451 to double
  %1453 = bitcast [32 x %union.VectorReg]* %1447 to double*
  store double %1452, double* %1453, align 1
  %1454 = add i64 %1440, 30
  store i64 %1454, i64* %3, align 8
  %1455 = load i64, i64* %1409, align 8
  store i64 %1455, i64* %RAX.i825, align 8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1457 = add i64 %1455, 132
  %1458 = add i64 %1440, 38
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to float*
  %1460 = load float, float* %1459, align 4
  %1461 = fpext float %1460 to double
  %1462 = bitcast %union.VectorReg* %1456 to double*
  store double %1461, double* %1462, align 1
  store i8 2, i8* %AL.i1725, align 1
  %1463 = add i64 %1440, -304698
  %1464 = add i64 %1440, 45
  %1465 = load i64, i64* %6, align 8
  %1466 = add i64 %1465, -8
  %1467 = inttoptr i64 %1466 to i64*
  store i64 %1464, i64* %1467, align 8
  store i64 %1466, i64* %6, align 8
  store i64 %1463, i64* %3, align 8
  %1468 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.25)
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -128
  %1471 = load i32, i32* %EAX.i889, align 4
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 3
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1470 to i32*
  store i32 %1471, i32* %1474, align 4
  %1475 = load i64, i64* %3, align 8
  %1476 = add i64 %1475, 66
  br label %block_.L_44bc1c

block_.L_44bbdf:                                  ; preds = %block_44bb99, %block_.L_44bb88
  %1477 = phi i64 [ %1440, %block_44bb99 ], [ %1424, %block_.L_44bb88 ]
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %3, align 8
  %1479 = load i64, i64* %1409, align 8
  store i64 %1479, i64* %RAX.i825, align 8
  %1480 = add i64 %1479, 152
  %1481 = add i64 %1477, 11
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  %1483 = load i32, i32* %1482, align 4
  store i8 0, i8* %14, align 1
  %1484 = and i32 %1483, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1489 = icmp eq i32 %1483, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %30, align 1
  %1491 = lshr i32 %1483, 31
  %1492 = trunc i32 %1491 to i8
  store i8 %1492, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v210 = select i1 %1489, i64 56, i64 17
  %1493 = add i64 %1477, %.v210
  store i64 %1493, i64* %3, align 8
  br i1 %1489, label %block_.L_44bc17, label %block_44bbf0

block_44bbf0:                                     ; preds = %block_.L_44bbdf
  store i64 ptrtoint (%G__0x45b0a4_type* @G__0x45b0a4 to i64), i64* %RSI.i147, align 8
  %1494 = add i64 %1406, -8
  %1495 = add i64 %1493, 14
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  store i64 %1497, i64* %RDI.i44, align 8
  %1498 = add i64 %1493, 18
  store i64 %1498, i64* %3, align 8
  %1499 = load i64, i64* %1409, align 8
  store i64 %1499, i64* %RAX.i825, align 8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1501 = add i64 %1499, 128
  %1502 = add i64 %1493, 26
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to float*
  %1504 = load float, float* %1503, align 4
  %1505 = fpext float %1504 to double
  %1506 = bitcast %union.VectorReg* %1500 to double*
  store double %1505, double* %1506, align 1
  store i8 1, i8* %AL.i1725, align 1
  %1507 = add i64 %1493, -304768
  %1508 = add i64 %1493, 33
  %1509 = load i64, i64* %6, align 8
  %1510 = add i64 %1509, -8
  %1511 = inttoptr i64 %1510 to i64*
  store i64 %1508, i64* %1511, align 8
  store i64 %1510, i64* %6, align 8
  store i64 %1507, i64* %3, align 8
  %1512 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.25)
  %1513 = load i64, i64* %RBP.i, align 8
  %1514 = add i64 %1513, -132
  %1515 = load i32, i32* %EAX.i889, align 4
  %1516 = load i64, i64* %3, align 8
  %1517 = add i64 %1516, 6
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1514 to i32*
  store i32 %1515, i32* %1518, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_44bc17

block_.L_44bc17:                                  ; preds = %block_44bbf0, %block_.L_44bbdf
  %1519 = phi i64 [ %1493, %block_.L_44bbdf ], [ %.pre118, %block_44bbf0 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.25, %block_.L_44bbdf ], [ %1512, %block_44bbf0 ]
  %1520 = add i64 %1519, 5
  store i64 %1520, i64* %3, align 8
  br label %block_.L_44bc1c

block_.L_44bc1c:                                  ; preds = %block_.L_44bc17, %block_44bbaa
  %storemerge56 = phi i64 [ %1476, %block_44bbaa ], [ %1520, %block_.L_44bc17 ]
  %MEMORY.28 = phi %struct.Memory* [ %1468, %block_44bbaa ], [ %MEMORY.27, %block_.L_44bc17 ]
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -24
  %1523 = add i64 %storemerge56, 7
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  store i32 0, i32* %1524, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_44bc23

block_.L_44bc23:                                  ; preds = %block_44bc36, %block_.L_44bc1c
  %1525 = phi i64 [ %.pre119, %block_.L_44bc1c ], [ %1643, %block_44bc36 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.28, %block_.L_44bc1c ], [ %1605, %block_44bc36 ]
  %1526 = load i64, i64* %RBP.i, align 8
  %1527 = add i64 %1526, -24
  %1528 = add i64 %1525, 3
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i825, align 8
  %1532 = add i64 %1526, -16
  %1533 = add i64 %1525, 7
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i64*
  %1535 = load i64, i64* %1534, align 8
  store i64 %1535, i64* %RCX.i863, align 8
  %1536 = add i64 %1535, 208
  %1537 = add i64 %1525, 13
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  %1539 = load i32, i32* %1538, align 4
  %1540 = sub i32 %1530, %1539
  %1541 = icmp ult i32 %1530, %1539
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %14, align 1
  %1543 = and i32 %1540, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = xor i32 %1539, %1530
  %1549 = xor i32 %1548, %1540
  %1550 = lshr i32 %1549, 4
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  store i8 %1552, i8* %27, align 1
  %1553 = icmp eq i32 %1540, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %30, align 1
  %1555 = lshr i32 %1540, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %33, align 1
  %1557 = lshr i32 %1530, 31
  %1558 = lshr i32 %1539, 31
  %1559 = xor i32 %1558, %1557
  %1560 = xor i32 %1555, %1557
  %1561 = add nuw nsw i32 %1560, %1559
  %1562 = icmp eq i32 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %39, align 1
  %1564 = icmp ne i8 %1556, 0
  %1565 = xor i1 %1564, %1562
  %.v188 = select i1 %1565, i64 19, i64 98
  %1566 = add i64 %1525, %.v188
  %1567 = add i64 %1566, 10
  store i64 %1567, i64* %3, align 8
  br i1 %1565, label %block_44bc36, label %block_.L_44bc85

block_44bc36:                                     ; preds = %block_.L_44bc23
  store i64 ptrtoint (%G__0x45b0b5_type* @G__0x45b0b5 to i64), i64* %RSI.i147, align 8
  %1568 = add i64 %1526, -8
  %1569 = add i64 %1566, 14
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i64*
  %1571 = load i64, i64* %1570, align 8
  store i64 %1571, i64* %RDI.i44, align 8
  %1572 = add i64 %1566, 18
  store i64 %1572, i64* %3, align 8
  %1573 = load i64, i64* %1534, align 8
  store i64 %1573, i64* %RAX.i825, align 8
  %1574 = add i64 %1573, 192
  %1575 = add i64 %1566, 25
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  store i64 %1577, i64* %RAX.i825, align 8
  %1578 = add i64 %1566, 29
  store i64 %1578, i64* %3, align 8
  %1579 = load i32, i32* %1529, align 4
  %1580 = sext i32 %1579 to i64
  store i64 %1580, i64* %RCX.i863, align 8
  %1581 = shl nsw i64 %1580, 3
  %1582 = add i64 %1581, %1577
  %1583 = add i64 %1566, 33
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i64*
  %1585 = load i64, i64* %1584, align 8
  store i64 %1585, i64* %RDX.i1293, align 8
  %1586 = add i64 %1566, 37
  store i64 %1586, i64* %3, align 8
  %1587 = load i64, i64* %1534, align 8
  store i64 %1587, i64* %RAX.i825, align 8
  %1588 = add i64 %1587, 200
  %1589 = add i64 %1566, 44
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i64*
  %1591 = load i64, i64* %1590, align 8
  store i64 %1591, i64* %RAX.i825, align 8
  %1592 = add i64 %1566, 48
  store i64 %1592, i64* %3, align 8
  %1593 = load i32, i32* %1529, align 4
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RCX.i863, align 8
  %1595 = shl nsw i64 %1594, 3
  %1596 = add i64 %1595, %1591
  %1597 = add i64 %1566, 52
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  store i64 %1599, i64* %RCX.i863, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1600 = add i64 %1566, -304838
  %1601 = add i64 %1566, 59
  %1602 = load i64, i64* %6, align 8
  %1603 = add i64 %1602, -8
  %1604 = inttoptr i64 %1603 to i64*
  store i64 %1601, i64* %1604, align 8
  store i64 %1603, i64* %6, align 8
  store i64 %1600, i64* %3, align 8
  %1605 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %1606 = load i64, i64* %RBP.i, align 8
  %1607 = add i64 %1606, -136
  %1608 = load i32, i32* %EAX.i889, align 4
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 6
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1607 to i32*
  store i32 %1608, i32* %1611, align 4
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -24
  %1614 = load i64, i64* %3, align 8
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1613 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = add i32 %1617, 1
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RAX.i825, align 8
  %1620 = icmp eq i32 %1617, -1
  %1621 = icmp eq i32 %1618, 0
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %14, align 1
  %1624 = and i32 %1618, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %21, align 1
  %1629 = xor i32 %1618, %1617
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %27, align 1
  %1633 = zext i1 %1621 to i8
  store i8 %1633, i8* %30, align 1
  %1634 = lshr i32 %1618, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %33, align 1
  %1636 = lshr i32 %1617, 31
  %1637 = xor i32 %1634, %1636
  %1638 = add nuw nsw i32 %1637, %1634
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %39, align 1
  %1641 = add i64 %1614, 9
  store i64 %1641, i64* %3, align 8
  store i32 %1618, i32* %1616, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, -93
  store i64 %1643, i64* %3, align 8
  br label %block_.L_44bc23

block_.L_44bc85:                                  ; preds = %block_.L_44bc23
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %1644 = add i64 %1526, -8
  %1645 = add i64 %1566, 14
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1648 = add i64 %1566, -304917
  %1649 = add i64 %1566, 21
  %1650 = load i64, i64* %6, align 8
  %1651 = add i64 %1650, -8
  %1652 = inttoptr i64 %1651 to i64*
  store i64 %1649, i64* %1652, align 8
  store i64 %1651, i64* %6, align 8
  store i64 %1648, i64* %3, align 8
  %1653 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %1654 = load i64, i64* %RBP.i, align 8
  %1655 = add i64 %1654, -16
  %1656 = load i64, i64* %3, align 8
  %1657 = add i64 %1656, 4
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1655 to i64*
  %1659 = load i64, i64* %1658, align 8
  store i64 %1659, i64* %RSI.i147, align 8
  %1660 = add i64 %1659, 32
  %1661 = add i64 %1656, 7
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i32*
  %1663 = load i32, i32* %1662, align 4
  %1664 = and i32 %1663, 1
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RCX.i863, align 8
  store i8 0, i8* %14, align 1
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1667 = trunc i32 %1666 to i8
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1669 = trunc i32 %1664 to i8
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1671 = add i64 %1654, -140
  %1672 = load i32, i32* %EAX.i889, align 4
  %1673 = add i64 %1656, 19
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1671 to i32*
  store i32 %1672, i32* %1674, align 4
  %1675 = load i64, i64* %3, align 8
  %1676 = load i8, i8* %30, align 1
  %1677 = icmp ne i8 %1676, 0
  %.v248 = select i1 %1677, i64 137, i64 6
  %1678 = add i64 %1675, %.v248
  store i64 %1678, i64* %3, align 8
  %cmpBr_44bcad = icmp eq i8 %1676, 1
  br i1 %cmpBr_44bcad, label %block_.L_44bd36, label %block_44bcb3

block_44bcb3:                                     ; preds = %block_.L_44bc85
  %1679 = load i64, i64* %RBP.i, align 8
  %1680 = add i64 %1679, -24
  %1681 = add i64 %1678, 7
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  store i32 0, i32* %1682, align 4
  %R8.i1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1684 = bitcast %union.VectorReg* %1683 to double*
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_44bcba

block_.L_44bcba:                                  ; preds = %block_44bcca, %block_44bcb3
  %1685 = phi i64 [ %.pre120, %block_44bcb3 ], [ %1812, %block_44bcca ]
  %MEMORY.30 = phi %struct.Memory* [ %1653, %block_44bcb3 ], [ %1774, %block_44bcca ]
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -24
  %1688 = add i64 %1685, 3
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RAX.i825, align 8
  %1692 = add i64 %1686, -16
  %1693 = add i64 %1685, 7
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i64*
  %1695 = load i64, i64* %1694, align 8
  store i64 %1695, i64* %RCX.i863, align 8
  %1696 = add i64 %1695, 28
  %1697 = add i64 %1685, 10
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = sub i32 %1690, %1699
  %1701 = icmp ult i32 %1690, %1699
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %14, align 1
  %1703 = and i32 %1700, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i32 %1699, %1690
  %1709 = xor i32 %1708, %1700
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %27, align 1
  %1713 = icmp eq i32 %1700, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %30, align 1
  %1715 = lshr i32 %1700, 31
  %1716 = trunc i32 %1715 to i8
  store i8 %1716, i8* %33, align 1
  %1717 = lshr i32 %1690, 31
  %1718 = lshr i32 %1699, 31
  %1719 = xor i32 %1718, %1717
  %1720 = xor i32 %1715, %1717
  %1721 = add nuw nsw i32 %1720, %1719
  %1722 = icmp eq i32 %1721, 2
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %39, align 1
  %1724 = icmp ne i8 %1716, 0
  %1725 = xor i1 %1724, %1722
  %.v189 = select i1 %1725, i64 16, i64 97
  %1726 = add i64 %1685, %.v189
  %1727 = add i64 %1726, 10
  store i64 %1727, i64* %3, align 8
  br i1 %1725, label %block_44bcca, label %block_.L_44bd1b

block_44bcca:                                     ; preds = %block_.L_44bcba
  store i64 ptrtoint (%G__0x45b0c3_type* @G__0x45b0c3 to i64), i64* %RSI.i147, align 8
  %1728 = add i64 %1686, -8
  %1729 = add i64 %1726, 14
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RDI.i44, align 8
  %1732 = add i64 %1686, -36
  %1733 = add i64 %1726, 17
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RDX.i1293, align 8
  %1737 = add i64 %1726, 20
  store i64 %1737, i64* %3, align 8
  %1738 = load i32, i32* %1734, align 4
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RCX.i863, align 8
  %1740 = add i64 %1726, 24
  store i64 %1740, i64* %3, align 8
  %1741 = load i64, i64* %1694, align 8
  store i64 %1741, i64* %RAX.i825, align 8
  %1742 = add i64 %1741, 8
  %1743 = add i64 %1726, 28
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i64*
  %1745 = load i64, i64* %1744, align 8
  store i64 %1745, i64* %RAX.i825, align 8
  %1746 = add i64 %1726, 32
  store i64 %1746, i64* %3, align 8
  %1747 = load i32, i32* %1689, align 4
  %1748 = sext i32 %1747 to i64
  store i64 %1748, i64* %R8.i1249, align 8
  %1749 = shl nsw i64 %1748, 3
  %1750 = add i64 %1749, %1745
  %1751 = add i64 %1726, 36
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i64*
  %1753 = load i64, i64* %1752, align 8
  store i64 %1753, i64* %R8.i1249, align 8
  %1754 = add i64 %1726, 40
  store i64 %1754, i64* %3, align 8
  %1755 = load i64, i64* %1694, align 8
  store i64 %1755, i64* %RAX.i825, align 8
  %1756 = add i64 %1755, 16
  %1757 = add i64 %1726, 44
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i64*
  %1759 = load i64, i64* %1758, align 8
  store i64 %1759, i64* %RAX.i825, align 8
  %1760 = add i64 %1726, 48
  store i64 %1760, i64* %3, align 8
  %1761 = load i32, i32* %1689, align 4
  %1762 = sext i32 %1761 to i64
  store i64 %1762, i64* %R9.i1238, align 8
  %1763 = shl nsw i64 %1762, 2
  %1764 = add i64 %1763, %1759
  %1765 = add i64 %1726, 54
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to float*
  %1767 = load float, float* %1766, align 4
  %1768 = fpext float %1767 to double
  store double %1768, double* %1684, align 1
  store i8 1, i8* %AL.i1725, align 1
  %1769 = add i64 %1726, -304986
  %1770 = add i64 %1726, 61
  %1771 = load i64, i64* %6, align 8
  %1772 = add i64 %1771, -8
  %1773 = inttoptr i64 %1772 to i64*
  store i64 %1770, i64* %1773, align 8
  store i64 %1772, i64* %6, align 8
  store i64 %1769, i64* %3, align 8
  %1774 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.30)
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -144
  %1777 = load i32, i32* %EAX.i889, align 4
  %1778 = load i64, i64* %3, align 8
  %1779 = add i64 %1778, 6
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1776 to i32*
  store i32 %1777, i32* %1780, align 4
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -24
  %1783 = load i64, i64* %3, align 8
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1782 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = add i32 %1786, 1
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RAX.i825, align 8
  %1789 = icmp eq i32 %1786, -1
  %1790 = icmp eq i32 %1787, 0
  %1791 = or i1 %1789, %1790
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %14, align 1
  %1793 = and i32 %1787, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  %1798 = xor i32 %1787, %1786
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %27, align 1
  %1802 = zext i1 %1790 to i8
  store i8 %1802, i8* %30, align 1
  %1803 = lshr i32 %1787, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %33, align 1
  %1805 = lshr i32 %1786, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1803
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %39, align 1
  %1810 = add i64 %1783, 9
  store i64 %1810, i64* %3, align 8
  store i32 %1787, i32* %1785, align 4
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, -92
  store i64 %1812, i64* %3, align 8
  br label %block_.L_44bcba

block_.L_44bd1b:                                  ; preds = %block_.L_44bcba
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %1813 = add i64 %1686, -8
  %1814 = add i64 %1726, 14
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i64*
  %1816 = load i64, i64* %1815, align 8
  store i64 %1816, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1817 = add i64 %1726, -305067
  %1818 = add i64 %1726, 21
  %1819 = load i64, i64* %6, align 8
  %1820 = add i64 %1819, -8
  %1821 = inttoptr i64 %1820 to i64*
  store i64 %1818, i64* %1821, align 8
  store i64 %1820, i64* %6, align 8
  store i64 %1817, i64* %3, align 8
  %1822 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.30)
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -148
  %1825 = load i32, i32* %EAX.i889, align 4
  %1826 = load i64, i64* %3, align 8
  %1827 = add i64 %1826, 6
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1824 to i32*
  store i32 %1825, i32* %1828, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_44bd36

block_.L_44bd36:                                  ; preds = %block_.L_44bd1b, %block_.L_44bc85
  %1829 = phi i64 [ %1678, %block_.L_44bc85 ], [ %.pre121, %block_.L_44bd1b ]
  %MEMORY.31 = phi %struct.Memory* [ %1653, %block_.L_44bc85 ], [ %1822, %block_.L_44bd1b ]
  %1830 = load i64, i64* %RBP.i, align 8
  %1831 = add i64 %1830, -16
  %1832 = add i64 %1829, 4
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i825, align 8
  %1835 = add i64 %1834, 96
  %1836 = add i64 %1829, 9
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i64*
  %1838 = load i64, i64* %1837, align 8
  store i8 0, i8* %14, align 1
  %1839 = trunc i64 %1838 to i32
  %1840 = and i32 %1839, 255
  %1841 = tail call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1845 = icmp eq i64 %1838, 0
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %30, align 1
  %1847 = lshr i64 %1838, 63
  %1848 = trunc i64 %1847 to i8
  store i8 %1848, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %1845, i64 172, i64 15
  %1849 = add i64 %1829, %.v190
  store i64 %1849, i64* %3, align 8
  br i1 %1845, label %block_.L_44bde2, label %block_44bd45

block_44bd45:                                     ; preds = %block_.L_44bd36
  %1850 = add i64 %1830, -24
  %1851 = add i64 %1849, 7
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i32*
  store i32 0, i32* %1852, align 4
  %R8.i1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_44bd4c

block_.L_44bd4c:                                  ; preds = %block_.L_44bdb4, %block_44bd45
  %1853 = phi i64 [ %.pre122, %block_44bd45 ], [ %2003, %block_.L_44bdb4 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.31, %block_44bd45 ], [ %MEMORY.33, %block_.L_44bdb4 ]
  %1854 = load i64, i64* %RBP.i, align 8
  %1855 = add i64 %1854, -24
  %1856 = add i64 %1853, 3
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RAX.i825, align 8
  %1860 = add i64 %1854, -16
  %1861 = add i64 %1853, 7
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  %1863 = load i64, i64* %1862, align 8
  store i64 %1863, i64* %RCX.i863, align 8
  %1864 = add i64 %1863, 28
  %1865 = add i64 %1853, 10
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = sub i32 %1858, %1867
  %1869 = icmp ult i32 %1858, %1867
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %14, align 1
  %1871 = and i32 %1868, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %21, align 1
  %1876 = xor i32 %1867, %1858
  %1877 = xor i32 %1876, %1868
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  store i8 %1880, i8* %27, align 1
  %1881 = icmp eq i32 %1868, 0
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %30, align 1
  %1883 = lshr i32 %1868, 31
  %1884 = trunc i32 %1883 to i8
  store i8 %1884, i8* %33, align 1
  %1885 = lshr i32 %1858, 31
  %1886 = lshr i32 %1867, 31
  %1887 = xor i32 %1886, %1885
  %1888 = xor i32 %1883, %1885
  %1889 = add nuw nsw i32 %1888, %1887
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %39, align 1
  %1892 = icmp ne i8 %1884, 0
  %1893 = xor i1 %1892, %1890
  %.v191 = select i1 %1893, i64 16, i64 123
  %1894 = add i64 %1853, %.v191
  store i64 %1894, i64* %3, align 8
  br i1 %1893, label %block_44bd5c, label %block_.L_44bdc7

block_44bd5c:                                     ; preds = %block_.L_44bd4c
  %1895 = add i64 %1894, 4
  store i64 %1895, i64* %3, align 8
  %1896 = load i64, i64* %1862, align 8
  store i64 %1896, i64* %RAX.i825, align 8
  %1897 = add i64 %1896, 96
  %1898 = add i64 %1894, 8
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i64*
  %1900 = load i64, i64* %1899, align 8
  store i64 %1900, i64* %RAX.i825, align 8
  %1901 = add i64 %1894, 12
  store i64 %1901, i64* %3, align 8
  %1902 = load i32, i32* %1857, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RCX.i863, align 8
  %1904 = shl nsw i64 %1903, 3
  %1905 = add i64 %1904, %1900
  %1906 = add i64 %1894, 17
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i64*
  %1908 = load i64, i64* %1907, align 8
  store i8 0, i8* %14, align 1
  %1909 = trunc i64 %1908 to i32
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1915 = icmp eq i64 %1908, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %30, align 1
  %1917 = lshr i64 %1908, 63
  %1918 = trunc i64 %1917 to i8
  store i8 %1918, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %1915, i64 88, i64 23
  %1919 = add i64 %1894, %.v209
  store i64 %1919, i64* %3, align 8
  br i1 %1915, label %block_.L_44bdb4, label %block_44bd73

block_44bd73:                                     ; preds = %block_44bd5c
  store i64 ptrtoint (%G__0x45b0db_type* @G__0x45b0db to i64), i64* %RSI.i147, align 8
  %1920 = add i64 %1854, -8
  %1921 = add i64 %1919, 14
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RDI.i44, align 8
  %1924 = add i64 %1854, -36
  %1925 = add i64 %1919, 17
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RDX.i1293, align 8
  %1929 = add i64 %1919, 20
  store i64 %1929, i64* %3, align 8
  %1930 = load i32, i32* %1926, align 4
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RCX.i863, align 8
  %1932 = add i64 %1919, 24
  store i64 %1932, i64* %3, align 8
  %1933 = load i64, i64* %1862, align 8
  store i64 %1933, i64* %RAX.i825, align 8
  %1934 = add i64 %1933, 8
  %1935 = add i64 %1919, 28
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i64*
  %1937 = load i64, i64* %1936, align 8
  store i64 %1937, i64* %RAX.i825, align 8
  %1938 = add i64 %1919, 32
  store i64 %1938, i64* %3, align 8
  %1939 = load i32, i32* %1857, align 4
  %1940 = sext i32 %1939 to i64
  store i64 %1940, i64* %R8.i1155, align 8
  %1941 = shl nsw i64 %1940, 3
  %1942 = add i64 %1941, %1937
  %1943 = add i64 %1919, 36
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i64*
  %1945 = load i64, i64* %1944, align 8
  store i64 %1945, i64* %R8.i1155, align 8
  %1946 = add i64 %1919, 40
  store i64 %1946, i64* %3, align 8
  %1947 = load i64, i64* %1862, align 8
  store i64 %1947, i64* %RAX.i825, align 8
  %1948 = add i64 %1947, 96
  %1949 = add i64 %1919, 44
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i64*
  %1951 = load i64, i64* %1950, align 8
  store i64 %1951, i64* %RAX.i825, align 8
  %1952 = add i64 %1919, 48
  store i64 %1952, i64* %3, align 8
  %1953 = load i32, i32* %1857, align 4
  %1954 = sext i32 %1953 to i64
  store i64 %1954, i64* %R9.i1144, align 8
  %1955 = shl nsw i64 %1954, 3
  %1956 = add i64 %1955, %1951
  %1957 = add i64 %1919, 52
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i64*
  %1959 = load i64, i64* %1958, align 8
  store i64 %1959, i64* %R9.i1144, align 8
  store i8 0, i8* %AL.i1725, align 1
  %1960 = add i64 %1919, -305155
  %1961 = add i64 %1919, 59
  %1962 = load i64, i64* %6, align 8
  %1963 = add i64 %1962, -8
  %1964 = inttoptr i64 %1963 to i64*
  store i64 %1961, i64* %1964, align 8
  store i64 %1963, i64* %6, align 8
  store i64 %1960, i64* %3, align 8
  %1965 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.32)
  %1966 = load i64, i64* %RBP.i, align 8
  %1967 = add i64 %1966, -152
  %1968 = load i32, i32* %EAX.i889, align 4
  %1969 = load i64, i64* %3, align 8
  %1970 = add i64 %1969, 6
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1967 to i32*
  store i32 %1968, i32* %1971, align 4
  %.pre123 = load i64, i64* %3, align 8
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44bdb4

block_.L_44bdb4:                                  ; preds = %block_44bd73, %block_44bd5c
  %1972 = phi i64 [ %1854, %block_44bd5c ], [ %.pre124, %block_44bd73 ]
  %1973 = phi i64 [ %1919, %block_44bd5c ], [ %.pre123, %block_44bd73 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.32, %block_44bd5c ], [ %1965, %block_44bd73 ]
  %1974 = add i64 %1972, -24
  %1975 = add i64 %1973, 8
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = add i32 %1977, 1
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX.i825, align 8
  %1980 = icmp eq i32 %1977, -1
  %1981 = icmp eq i32 %1978, 0
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %14, align 1
  %1984 = and i32 %1978, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %21, align 1
  %1989 = xor i32 %1978, %1977
  %1990 = lshr i32 %1989, 4
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  store i8 %1992, i8* %27, align 1
  %1993 = zext i1 %1981 to i8
  store i8 %1993, i8* %30, align 1
  %1994 = lshr i32 %1978, 31
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, i8* %33, align 1
  %1996 = lshr i32 %1977, 31
  %1997 = xor i32 %1994, %1996
  %1998 = add nuw nsw i32 %1997, %1994
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %39, align 1
  %2001 = add i64 %1973, 14
  store i64 %2001, i64* %3, align 8
  store i32 %1978, i32* %1976, align 4
  %2002 = load i64, i64* %3, align 8
  %2003 = add i64 %2002, -118
  store i64 %2003, i64* %3, align 8
  br label %block_.L_44bd4c

block_.L_44bdc7:                                  ; preds = %block_.L_44bd4c
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %2004 = add i64 %1854, -8
  %2005 = add i64 %1894, 14
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i64*
  %2007 = load i64, i64* %2006, align 8
  store i64 %2007, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2008 = add i64 %1894, -305239
  %2009 = add i64 %1894, 21
  %2010 = load i64, i64* %6, align 8
  %2011 = add i64 %2010, -8
  %2012 = inttoptr i64 %2011 to i64*
  store i64 %2009, i64* %2012, align 8
  store i64 %2011, i64* %6, align 8
  store i64 %2008, i64* %3, align 8
  %2013 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.32)
  %2014 = load i64, i64* %RBP.i, align 8
  %2015 = add i64 %2014, -156
  %2016 = load i32, i32* %EAX.i889, align 4
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 6
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2015 to i32*
  store i32 %2016, i32* %2019, align 4
  %.pre125 = load i64, i64* %RBP.i, align 8
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_44bde2

block_.L_44bde2:                                  ; preds = %block_.L_44bdc7, %block_.L_44bd36
  %2020 = phi i64 [ %1849, %block_.L_44bd36 ], [ %.pre126, %block_.L_44bdc7 ]
  %2021 = phi i64 [ %1830, %block_.L_44bd36 ], [ %.pre125, %block_.L_44bdc7 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.31, %block_.L_44bd36 ], [ %2013, %block_.L_44bdc7 ]
  %2022 = add i64 %2021, -16
  %2023 = add i64 %2020, 4
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  store i64 %2025, i64* %RAX.i825, align 8
  %2026 = add i64 %2025, 104
  %2027 = add i64 %2020, 9
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i8 0, i8* %14, align 1
  %2030 = trunc i64 %2029 to i32
  %2031 = and i32 %2030, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2036 = icmp eq i64 %2029, 0
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %30, align 1
  %2038 = lshr i64 %2029, 63
  %2039 = trunc i64 %2038 to i8
  store i8 %2039, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v192 = select i1 %2036, i64 172, i64 15
  %2040 = add i64 %2020, %.v192
  store i64 %2040, i64* %3, align 8
  br i1 %2036, label %block_.L_44bde2.block_.L_44be8e_crit_edge, label %block_44bdf1

block_.L_44bde2.block_.L_44be8e_crit_edge:        ; preds = %block_.L_44bde2
  %.pre162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  br label %block_.L_44be8e

block_44bdf1:                                     ; preds = %block_.L_44bde2
  %2041 = add i64 %2021, -24
  %2042 = add i64 %2040, 7
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i32*
  store i32 0, i32* %2043, align 4
  %R8.i1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_44bdf8

block_.L_44bdf8:                                  ; preds = %block_.L_44be60, %block_44bdf1
  %2044 = phi i64 [ %.pre127, %block_44bdf1 ], [ %2194, %block_.L_44be60 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.34, %block_44bdf1 ], [ %MEMORY.36, %block_.L_44be60 ]
  %2045 = load i64, i64* %RBP.i, align 8
  %2046 = add i64 %2045, -24
  %2047 = add i64 %2044, 3
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i825, align 8
  %2051 = add i64 %2045, -16
  %2052 = add i64 %2044, 7
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i64*
  %2054 = load i64, i64* %2053, align 8
  store i64 %2054, i64* %RCX.i863, align 8
  %2055 = add i64 %2054, 28
  %2056 = add i64 %2044, 10
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = sub i32 %2049, %2058
  %2060 = icmp ult i32 %2049, %2058
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %14, align 1
  %2062 = and i32 %2059, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  %2067 = xor i32 %2058, %2049
  %2068 = xor i32 %2067, %2059
  %2069 = lshr i32 %2068, 4
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %27, align 1
  %2072 = icmp eq i32 %2059, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %30, align 1
  %2074 = lshr i32 %2059, 31
  %2075 = trunc i32 %2074 to i8
  store i8 %2075, i8* %33, align 1
  %2076 = lshr i32 %2049, 31
  %2077 = lshr i32 %2058, 31
  %2078 = xor i32 %2077, %2076
  %2079 = xor i32 %2074, %2076
  %2080 = add nuw nsw i32 %2079, %2078
  %2081 = icmp eq i32 %2080, 2
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %39, align 1
  %2083 = icmp ne i8 %2075, 0
  %2084 = xor i1 %2083, %2081
  %.v193 = select i1 %2084, i64 16, i64 123
  %2085 = add i64 %2044, %.v193
  store i64 %2085, i64* %3, align 8
  br i1 %2084, label %block_44be08, label %block_.L_44be73

block_44be08:                                     ; preds = %block_.L_44bdf8
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %3, align 8
  %2087 = load i64, i64* %2053, align 8
  store i64 %2087, i64* %RAX.i825, align 8
  %2088 = add i64 %2087, 104
  %2089 = add i64 %2085, 8
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i64*
  %2091 = load i64, i64* %2090, align 8
  store i64 %2091, i64* %RAX.i825, align 8
  %2092 = add i64 %2085, 12
  store i64 %2092, i64* %3, align 8
  %2093 = load i32, i32* %2048, align 4
  %2094 = sext i32 %2093 to i64
  store i64 %2094, i64* %RCX.i863, align 8
  %2095 = shl nsw i64 %2094, 3
  %2096 = add i64 %2095, %2091
  %2097 = add i64 %2085, 17
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i8 0, i8* %14, align 1
  %2100 = trunc i64 %2099 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2106 = icmp eq i64 %2099, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %30, align 1
  %2108 = lshr i64 %2099, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v208 = select i1 %2106, i64 88, i64 23
  %2110 = add i64 %2085, %.v208
  store i64 %2110, i64* %3, align 8
  br i1 %2106, label %block_.L_44be60, label %block_44be1f

block_44be1f:                                     ; preds = %block_44be08
  store i64 ptrtoint (%G__0x45b0f1_type* @G__0x45b0f1 to i64), i64* %RSI.i147, align 8
  %2111 = add i64 %2045, -8
  %2112 = add i64 %2110, 14
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  %2114 = load i64, i64* %2113, align 8
  store i64 %2114, i64* %RDI.i44, align 8
  %2115 = add i64 %2045, -36
  %2116 = add i64 %2110, 17
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i32*
  %2118 = load i32, i32* %2117, align 4
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RDX.i1293, align 8
  %2120 = add i64 %2110, 20
  store i64 %2120, i64* %3, align 8
  %2121 = load i32, i32* %2117, align 4
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i863, align 8
  %2123 = add i64 %2110, 24
  store i64 %2123, i64* %3, align 8
  %2124 = load i64, i64* %2053, align 8
  store i64 %2124, i64* %RAX.i825, align 8
  %2125 = add i64 %2124, 8
  %2126 = add i64 %2110, 28
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i64 %2128, i64* %RAX.i825, align 8
  %2129 = add i64 %2110, 32
  store i64 %2129, i64* %3, align 8
  %2130 = load i32, i32* %2048, align 4
  %2131 = sext i32 %2130 to i64
  store i64 %2131, i64* %R8.i1060, align 8
  %2132 = shl nsw i64 %2131, 3
  %2133 = add i64 %2132, %2128
  %2134 = add i64 %2110, 36
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %R8.i1060, align 8
  %2137 = add i64 %2110, 40
  store i64 %2137, i64* %3, align 8
  %2138 = load i64, i64* %2053, align 8
  store i64 %2138, i64* %RAX.i825, align 8
  %2139 = add i64 %2138, 104
  %2140 = add i64 %2110, 44
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i64*
  %2142 = load i64, i64* %2141, align 8
  store i64 %2142, i64* %RAX.i825, align 8
  %2143 = add i64 %2110, 48
  store i64 %2143, i64* %3, align 8
  %2144 = load i32, i32* %2048, align 4
  %2145 = sext i32 %2144 to i64
  store i64 %2145, i64* %R9.i1049, align 8
  %2146 = shl nsw i64 %2145, 3
  %2147 = add i64 %2146, %2142
  %2148 = add i64 %2110, 52
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i64*
  %2150 = load i64, i64* %2149, align 8
  store i64 %2150, i64* %R9.i1049, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2151 = add i64 %2110, -305327
  %2152 = add i64 %2110, 59
  %2153 = load i64, i64* %6, align 8
  %2154 = add i64 %2153, -8
  %2155 = inttoptr i64 %2154 to i64*
  store i64 %2152, i64* %2155, align 8
  store i64 %2154, i64* %6, align 8
  store i64 %2151, i64* %3, align 8
  %2156 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.35)
  %2157 = load i64, i64* %RBP.i, align 8
  %2158 = add i64 %2157, -160
  %2159 = load i32, i32* %EAX.i889, align 4
  %2160 = load i64, i64* %3, align 8
  %2161 = add i64 %2160, 6
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2158 to i32*
  store i32 %2159, i32* %2162, align 4
  %.pre128 = load i64, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44be60

block_.L_44be60:                                  ; preds = %block_44be1f, %block_44be08
  %2163 = phi i64 [ %2045, %block_44be08 ], [ %.pre129, %block_44be1f ]
  %2164 = phi i64 [ %2110, %block_44be08 ], [ %.pre128, %block_44be1f ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.35, %block_44be08 ], [ %2156, %block_44be1f ]
  %2165 = add i64 %2163, -24
  %2166 = add i64 %2164, 8
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = add i32 %2168, 1
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RAX.i825, align 8
  %2171 = icmp eq i32 %2168, -1
  %2172 = icmp eq i32 %2169, 0
  %2173 = or i1 %2171, %2172
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %14, align 1
  %2175 = and i32 %2169, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  %2180 = xor i32 %2169, %2168
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %27, align 1
  %2184 = zext i1 %2172 to i8
  store i8 %2184, i8* %30, align 1
  %2185 = lshr i32 %2169, 31
  %2186 = trunc i32 %2185 to i8
  store i8 %2186, i8* %33, align 1
  %2187 = lshr i32 %2168, 31
  %2188 = xor i32 %2185, %2187
  %2189 = add nuw nsw i32 %2188, %2185
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %39, align 1
  %2192 = add i64 %2164, 14
  store i64 %2192, i64* %3, align 8
  store i32 %2169, i32* %2167, align 4
  %2193 = load i64, i64* %3, align 8
  %2194 = add i64 %2193, -118
  store i64 %2194, i64* %3, align 8
  br label %block_.L_44bdf8

block_.L_44be73:                                  ; preds = %block_.L_44bdf8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %2195 = add i64 %2045, -8
  %2196 = add i64 %2085, 14
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2199 = add i64 %2085, -305411
  %2200 = add i64 %2085, 21
  %2201 = load i64, i64* %6, align 8
  %2202 = add i64 %2201, -8
  %2203 = inttoptr i64 %2202 to i64*
  store i64 %2200, i64* %2203, align 8
  store i64 %2202, i64* %6, align 8
  store i64 %2199, i64* %3, align 8
  %2204 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.35)
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -164
  %2207 = load i32, i32* %EAX.i889, align 4
  %2208 = load i64, i64* %3, align 8
  %2209 = add i64 %2208, 6
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2206 to i32*
  store i32 %2207, i32* %2210, align 4
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_44be8e

block_.L_44be8e:                                  ; preds = %block_.L_44bde2.block_.L_44be8e_crit_edge, %block_.L_44be73
  %R9.i905.pre-phi = phi i64* [ %.pre163, %block_.L_44bde2.block_.L_44be8e_crit_edge ], [ %R9.i1049, %block_.L_44be73 ]
  %R8.i916.pre-phi = phi i64* [ %.pre162, %block_.L_44bde2.block_.L_44be8e_crit_edge ], [ %R8.i1060, %block_.L_44be73 ]
  %2211 = phi i64 [ %2040, %block_.L_44bde2.block_.L_44be8e_crit_edge ], [ %.pre131, %block_.L_44be73 ]
  %2212 = phi i64 [ %2021, %block_.L_44bde2.block_.L_44be8e_crit_edge ], [ %.pre130, %block_.L_44be73 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.34, %block_.L_44bde2.block_.L_44be8e_crit_edge ], [ %2204, %block_.L_44be73 ]
  %2213 = add i64 %2212, -24
  %2214 = add i64 %2211, 7
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  store i32 0, i32* %2215, align 4
  %2216 = bitcast i64* %6 to i64**
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_44be95

block_.L_44be95:                                  ; preds = %block_.L_44bf8e, %block_.L_44be8e
  %2217 = phi i64 [ %.pre132, %block_.L_44be8e ], [ %2539, %block_.L_44bf8e ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.37, %block_.L_44be8e ], [ %2501, %block_.L_44bf8e ]
  %2218 = load i64, i64* %RBP.i, align 8
  %2219 = add i64 %2218, -24
  %2220 = add i64 %2217, 3
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = zext i32 %2222 to i64
  store i64 %2223, i64* %RAX.i825, align 8
  %2224 = add i64 %2218, -16
  %2225 = add i64 %2217, 7
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i64*
  %2227 = load i64, i64* %2226, align 8
  store i64 %2227, i64* %RCX.i863, align 8
  %2228 = add i64 %2227, 240
  %2229 = add i64 %2217, 13
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i32*
  %2231 = load i32, i32* %2230, align 4
  %2232 = sub i32 %2222, %2231
  %2233 = icmp ult i32 %2222, %2231
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %14, align 1
  %2235 = and i32 %2232, 255
  %2236 = tail call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  store i8 %2239, i8* %21, align 1
  %2240 = xor i32 %2231, %2222
  %2241 = xor i32 %2240, %2232
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %27, align 1
  %2245 = icmp eq i32 %2232, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %30, align 1
  %2247 = lshr i32 %2232, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %33, align 1
  %2249 = lshr i32 %2222, 31
  %2250 = lshr i32 %2231, 31
  %2251 = xor i32 %2250, %2249
  %2252 = xor i32 %2247, %2249
  %2253 = add nuw nsw i32 %2252, %2251
  %2254 = icmp eq i32 %2253, 2
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %39, align 1
  %2256 = icmp ne i8 %2248, 0
  %2257 = xor i1 %2256, %2254
  %.v194 = select i1 %2257, i64 19, i64 290
  %2258 = add i64 %2217, %.v194
  store i64 %2258, i64* %3, align 8
  br i1 %2257, label %block_44bea8, label %block_.L_44bfb7

block_44bea8:                                     ; preds = %block_.L_44be95
  %2259 = add i64 %2218, -28
  %2260 = add i64 %2258, 7
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  store i32 0, i32* %2261, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_44beaf

block_.L_44beaf:                                  ; preds = %block_.L_44bf7b, %block_44bea8
  %2262 = phi i64 [ %.pre150, %block_44bea8 ], [ %2491, %block_.L_44bf7b ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.38, %block_44bea8 ], [ %MEMORY.41, %block_.L_44bf7b ]
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -28
  %2265 = add i64 %2262, 3
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RAX.i825, align 8
  %2269 = add i64 %2263, -16
  %2270 = add i64 %2262, 7
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i64*
  %2272 = load i64, i64* %2271, align 8
  store i64 %2272, i64* %RCX.i863, align 8
  %2273 = add i64 %2272, 28
  %2274 = add i64 %2262, 10
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = sub i32 %2267, %2276
  %2278 = icmp ult i32 %2267, %2276
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %14, align 1
  %2280 = and i32 %2277, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %21, align 1
  %2285 = xor i32 %2276, %2267
  %2286 = xor i32 %2285, %2277
  %2287 = lshr i32 %2286, 4
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %27, align 1
  %2290 = icmp eq i32 %2277, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %30, align 1
  %2292 = lshr i32 %2277, 31
  %2293 = trunc i32 %2292 to i8
  store i8 %2293, i8* %33, align 1
  %2294 = lshr i32 %2267, 31
  %2295 = lshr i32 %2276, 31
  %2296 = xor i32 %2295, %2294
  %2297 = xor i32 %2292, %2294
  %2298 = add nuw nsw i32 %2297, %2296
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %39, align 1
  %2301 = icmp ne i8 %2293, 0
  %2302 = xor i1 %2301, %2299
  %.v205 = select i1 %2302, i64 16, i64 223
  %2303 = add i64 %2262, %.v205
  store i64 %2303, i64* %3, align 8
  br i1 %2302, label %block_44bebf, label %block_.L_44bf8e

block_44bebf:                                     ; preds = %block_.L_44beaf
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %3, align 8
  %2305 = load i64, i64* %2271, align 8
  store i64 %2305, i64* %RAX.i825, align 8
  %2306 = add i64 %2305, 224
  %2307 = add i64 %2303, 11
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i64*
  %2309 = load i64, i64* %2308, align 8
  store i64 %2309, i64* %RAX.i825, align 8
  %2310 = add i64 %2263, -24
  %2311 = add i64 %2303, 15
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = sext i32 %2313 to i64
  store i64 %2314, i64* %RCX.i863, align 8
  %2315 = shl nsw i64 %2314, 3
  %2316 = add i64 %2315, %2309
  %2317 = add i64 %2303, 19
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i64*
  %2319 = load i64, i64* %2318, align 8
  store i64 %2319, i64* %RAX.i825, align 8
  %2320 = add i64 %2303, 23
  store i64 %2320, i64* %3, align 8
  %2321 = load i32, i32* %2266, align 4
  %2322 = sext i32 %2321 to i64
  store i64 %2322, i64* %RCX.i863, align 8
  %2323 = shl nsw i64 %2322, 3
  %2324 = add i64 %2323, %2319
  %2325 = add i64 %2303, 28
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i64*
  %2327 = load i64, i64* %2326, align 8
  store i8 0, i8* %14, align 1
  %2328 = trunc i64 %2327 to i32
  %2329 = and i32 %2328, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2334 = icmp eq i64 %2327, 0
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %30, align 1
  %2336 = lshr i64 %2327, 63
  %2337 = trunc i64 %2336 to i8
  store i8 %2337, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v206 = select i1 %2334, i64 188, i64 34
  %2338 = add i64 %2303, %.v206
  store i64 %2338, i64* %3, align 8
  br i1 %2334, label %block_.L_44bf7b, label %block_44bee1

block_44bee1:                                     ; preds = %block_44bebf
  %2339 = add i64 %2338, 4
  store i64 %2339, i64* %3, align 8
  %2340 = load i64, i64* %2271, align 8
  store i64 %2340, i64* %RAX.i825, align 8
  %2341 = add i64 %2340, 224
  %2342 = add i64 %2338, 11
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RAX.i825, align 8
  %2345 = add i64 %2338, 15
  store i64 %2345, i64* %3, align 8
  %2346 = load i32, i32* %2312, align 4
  %2347 = sext i32 %2346 to i64
  store i64 %2347, i64* %RCX.i863, align 8
  %2348 = shl nsw i64 %2347, 3
  %2349 = add i64 %2348, %2344
  %2350 = add i64 %2338, 19
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i64*
  %2352 = load i64, i64* %2351, align 8
  store i64 %2352, i64* %RAX.i825, align 8
  %2353 = add i64 %2338, 23
  store i64 %2353, i64* %3, align 8
  %2354 = load i32, i32* %2266, align 4
  %2355 = sext i32 %2354 to i64
  store i64 %2355, i64* %RCX.i863, align 8
  %2356 = shl nsw i64 %2355, 3
  %2357 = add i64 %2356, %2352
  %2358 = add i64 %2338, 27
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i64*
  %2360 = load i64, i64* %2359, align 8
  store i64 %2360, i64* %RAX.i825, align 8
  %2361 = add i64 %2263, -72
  %2362 = add i64 %2338, 31
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i64*
  store i64 %2360, i64* %2363, align 8
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_44bf00

block_.L_44bf00:                                  ; preds = %block_44bf25, %block_44bee1
  %2364 = phi i64 [ %.pre151, %block_44bee1 ], [ %2458, %block_44bf25 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.39, %block_44bee1 ], [ %2450, %block_44bf25 ]
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -72
  store i64 %2366, i64* %RDI.i44, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  store i64 0, i64* %RAX.i825, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i1293, align 8
  %2367 = add i64 %2364, -22704
  %2368 = add i64 %2364, 23
  %2369 = load i64, i64* %6, align 8
  %2370 = add i64 %2369, -8
  %2371 = inttoptr i64 %2370 to i64*
  store i64 %2368, i64* %2371, align 8
  store i64 %2370, i64* %6, align 8
  store i64 %2367, i64* %3, align 8
  %call2_44bf12 = tail call %struct.Memory* @sub_446650.sre_strtok(%struct.State* nonnull %0, i64 %2367, %struct.Memory* %MEMORY.40)
  %2372 = load i64, i64* %RBP.i, align 8
  %2373 = add i64 %2372, -80
  %2374 = load i64, i64* %RAX.i825, align 8
  %2375 = load i64, i64* %3, align 8
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2373 to i64*
  store i64 %2374, i64* %2377, align 8
  %2378 = load i64, i64* %RAX.i825, align 8
  %2379 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2380 = trunc i64 %2378 to i32
  %2381 = and i32 %2380, 255
  %2382 = tail call i32 @llvm.ctpop.i32(i32 %2381)
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  store i8 %2385, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2386 = icmp eq i64 %2378, 0
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %30, align 1
  %2388 = lshr i64 %2378, 63
  %2389 = trunc i64 %2388 to i8
  store i8 %2389, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v207 = select i1 %2386, i64 91, i64 10
  %2390 = add i64 %2379, %.v207
  store i64 %2390, i64* %3, align 8
  br i1 %2386, label %block_.L_44bf76, label %block_44bf25

block_44bf25:                                     ; preds = %block_.L_44bf00
  store i64 ptrtoint (%G__0x45b106_type* @G__0x45b106 to i64), i64* %RSI.i147, align 8
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -8
  %2393 = add i64 %2390, 14
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i64*
  %2395 = load i64, i64* %2394, align 8
  store i64 %2395, i64* %RDI.i44, align 8
  %2396 = add i64 %2391, -36
  %2397 = add i64 %2390, 17
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RDX.i1293, align 8
  %2401 = add i64 %2390, 20
  store i64 %2401, i64* %3, align 8
  %2402 = load i32, i32* %2398, align 4
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RCX.i863, align 8
  %2404 = add i64 %2391, -16
  %2405 = add i64 %2390, 24
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %RAX.i825, align 8
  %2408 = add i64 %2407, 8
  %2409 = add i64 %2390, 28
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %RAX.i825, align 8
  %2412 = add i64 %2391, -28
  %2413 = add i64 %2390, 32
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %R8.i916.pre-phi, align 8
  %2417 = shl nsw i64 %2416, 3
  %2418 = add i64 %2417, %2411
  %2419 = add i64 %2390, 36
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %R8.i916.pre-phi, align 8
  %2422 = add i64 %2390, 40
  store i64 %2422, i64* %3, align 8
  %2423 = load i64, i64* %2406, align 8
  store i64 %2423, i64* %RAX.i825, align 8
  %2424 = add i64 %2423, 216
  %2425 = add i64 %2390, 47
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i64*
  %2427 = load i64, i64* %2426, align 8
  store i64 %2427, i64* %RAX.i825, align 8
  %2428 = add i64 %2391, -24
  %2429 = add i64 %2390, 51
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = sext i32 %2431 to i64
  store i64 %2432, i64* %R9.i905.pre-phi, align 8
  %2433 = shl nsw i64 %2432, 3
  %2434 = add i64 %2433, %2427
  %2435 = add i64 %2390, 55
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i64*
  %2437 = load i64, i64* %2436, align 8
  store i64 %2437, i64* %R9.i905.pre-phi, align 8
  %2438 = add i64 %2391, -80
  %2439 = add i64 %2390, 59
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %RAX.i825, align 8
  %2442 = load i64*, i64** %2216, align 8
  %2443 = add i64 %2390, 63
  store i64 %2443, i64* %3, align 8
  store i64 %2441, i64* %2442, align 8
  %2444 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2445 = add i64 %2444, -305652
  %2446 = add i64 %2444, 7
  %2447 = load i64, i64* %6, align 8
  %2448 = add i64 %2447, -8
  %2449 = inttoptr i64 %2448 to i64*
  store i64 %2446, i64* %2449, align 8
  store i64 %2448, i64* %6, align 8
  store i64 %2445, i64* %3, align 8
  %2450 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.40)
  %2451 = load i64, i64* %RBP.i, align 8
  %2452 = add i64 %2451, -168
  %2453 = load i32, i32* %EAX.i889, align 4
  %2454 = load i64, i64* %3, align 8
  %2455 = add i64 %2454, 6
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2452 to i32*
  store i32 %2453, i32* %2456, align 4
  %2457 = load i64, i64* %3, align 8
  %2458 = add i64 %2457, -113
  store i64 %2458, i64* %3, align 8
  br label %block_.L_44bf00

block_.L_44bf76:                                  ; preds = %block_.L_44bf00
  %2459 = add i64 %2390, 5
  store i64 %2459, i64* %3, align 8
  %.pre152 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44bf7b

block_.L_44bf7b:                                  ; preds = %block_.L_44bf76, %block_44bebf
  %2460 = phi i64 [ %2263, %block_44bebf ], [ %.pre152, %block_.L_44bf76 ]
  %2461 = phi i64 [ %2338, %block_44bebf ], [ %2459, %block_.L_44bf76 ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.39, %block_44bebf ], [ %MEMORY.40, %block_.L_44bf76 ]
  %2462 = add i64 %2460, -28
  %2463 = add i64 %2461, 8
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = add i32 %2465, 1
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RAX.i825, align 8
  %2468 = icmp eq i32 %2465, -1
  %2469 = icmp eq i32 %2466, 0
  %2470 = or i1 %2468, %2469
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %14, align 1
  %2472 = and i32 %2466, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %21, align 1
  %2477 = xor i32 %2466, %2465
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  store i8 %2480, i8* %27, align 1
  %2481 = zext i1 %2469 to i8
  store i8 %2481, i8* %30, align 1
  %2482 = lshr i32 %2466, 31
  %2483 = trunc i32 %2482 to i8
  store i8 %2483, i8* %33, align 1
  %2484 = lshr i32 %2465, 31
  %2485 = xor i32 %2482, %2484
  %2486 = add nuw nsw i32 %2485, %2482
  %2487 = icmp eq i32 %2486, 2
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %39, align 1
  %2489 = add i64 %2461, 14
  store i64 %2489, i64* %3, align 8
  store i32 %2466, i32* %2464, align 4
  %2490 = load i64, i64* %3, align 8
  %2491 = add i64 %2490, -218
  store i64 %2491, i64* %3, align 8
  br label %block_.L_44beaf

block_.L_44bf8e:                                  ; preds = %block_.L_44beaf
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %2492 = add i64 %2263, -8
  %2493 = add i64 %2303, 14
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i64 %2495, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2496 = add i64 %2303, -305694
  %2497 = add i64 %2303, 21
  %2498 = load i64, i64* %6, align 8
  %2499 = add i64 %2498, -8
  %2500 = inttoptr i64 %2499 to i64*
  store i64 %2497, i64* %2500, align 8
  store i64 %2499, i64* %6, align 8
  store i64 %2496, i64* %3, align 8
  %2501 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.39)
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -172
  %2504 = load i32, i32* %EAX.i889, align 4
  %2505 = load i64, i64* %3, align 8
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2503 to i32*
  store i32 %2504, i32* %2507, align 4
  %2508 = load i64, i64* %RBP.i, align 8
  %2509 = add i64 %2508, -24
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, 3
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2509 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = add i32 %2513, 1
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RAX.i825, align 8
  %2516 = icmp eq i32 %2513, -1
  %2517 = icmp eq i32 %2514, 0
  %2518 = or i1 %2516, %2517
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %14, align 1
  %2520 = and i32 %2514, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %21, align 1
  %2525 = xor i32 %2514, %2513
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %27, align 1
  %2529 = zext i1 %2517 to i8
  store i8 %2529, i8* %30, align 1
  %2530 = lshr i32 %2514, 31
  %2531 = trunc i32 %2530 to i8
  store i8 %2531, i8* %33, align 1
  %2532 = lshr i32 %2513, 31
  %2533 = xor i32 %2530, %2532
  %2534 = add nuw nsw i32 %2533, %2530
  %2535 = icmp eq i32 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %39, align 1
  %2537 = add i64 %2510, 9
  store i64 %2537, i64* %3, align 8
  store i32 %2514, i32* %2512, align 4
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, -285
  store i64 %2539, i64* %3, align 8
  br label %block_.L_44be95

block_.L_44bfb7:                                  ; preds = %block_.L_44be95
  %2540 = add i64 %2218, -60
  %2541 = add i64 %2258, 7
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  store i32 0, i32* %2542, align 4
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i766 = bitcast %union.anon* %2543 to i32*
  %2544 = getelementptr inbounds %union.anon, %union.anon* %2543, i64 0, i32 0
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i757 = bitcast %union.anon* %2545 to i32*
  %2546 = getelementptr inbounds %union.anon, %union.anon* %2545, i64 0, i32 0
  %R10.i427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i173 = bitcast %union.anon* %2547 to i32*
  %2548 = getelementptr inbounds %union.anon, %union.anon* %2547, i64 0, i32 0
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_44bfbe

block_.L_44bfbe:                                  ; preds = %block_.L_44c53c, %block_.L_44bfb7
  %2549 = phi i64 [ %.pre133, %block_.L_44bfb7 ], [ %4500, %block_.L_44c53c ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.38, %block_.L_44bfb7 ], [ %MEMORY.52, %block_.L_44c53c ]
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -60
  %2552 = add i64 %2549, 3
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RAX.i825, align 8
  %2556 = add i64 %2550, -16
  %2557 = add i64 %2549, 7
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i64*
  %2559 = load i64, i64* %2558, align 8
  store i64 %2559, i64* %RCX.i863, align 8
  %2560 = add i64 %2559, 24
  %2561 = add i64 %2549, 10
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sub i32 %2554, %2563
  %2565 = icmp ult i32 %2554, %2563
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %14, align 1
  %2567 = and i32 %2564, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %21, align 1
  %2572 = xor i32 %2563, %2554
  %2573 = xor i32 %2572, %2564
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %27, align 1
  %2577 = icmp eq i32 %2564, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %30, align 1
  %2579 = lshr i32 %2564, 31
  %2580 = trunc i32 %2579 to i8
  store i8 %2580, i8* %33, align 1
  %2581 = lshr i32 %2554, 31
  %2582 = lshr i32 %2563, 31
  %2583 = xor i32 %2582, %2581
  %2584 = xor i32 %2579, %2581
  %2585 = add nuw nsw i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %39, align 1
  %2588 = icmp ne i8 %2580, 0
  %2589 = xor i1 %2588, %2586
  %.v195 = select i1 %2589, i64 16, i64 1425
  %2590 = add i64 %2549, %.v195
  store i64 %2590, i64* %3, align 8
  br i1 %2589, label %block_44bfce, label %block_.L_44c54f

block_44bfce:                                     ; preds = %block_.L_44bfbe
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %3, align 8
  %2592 = load i32, i32* %2553, align 4
  store i8 0, i8* %14, align 1
  %2593 = and i32 %2592, 255
  %2594 = tail call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  store i8 %2597, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2598 = icmp eq i32 %2592, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %30, align 1
  %2600 = lshr i32 %2592, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2602 = icmp ne i8 %2601, 0
  %2603 = or i1 %2598, %2602
  %.v196 = select i1 %2603, i64 37, i64 10
  %2604 = add i64 %2590, %.v196
  store i64 %2604, i64* %3, align 8
  br i1 %2603, label %block_.L_44bff3, label %block_44bfd8

block_44bfd8:                                     ; preds = %block_44bfce
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i147, align 8
  %2605 = add i64 %2550, -8
  %2606 = add i64 %2604, 14
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i64*
  %2608 = load i64, i64* %2607, align 8
  store i64 %2608, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2609 = add i64 %2604, -305768
  %2610 = add i64 %2604, 21
  %2611 = load i64, i64* %6, align 8
  %2612 = add i64 %2611, -8
  %2613 = inttoptr i64 %2612 to i64*
  store i64 %2610, i64* %2613, align 8
  store i64 %2612, i64* %6, align 8
  store i64 %2609, i64* %3, align 8
  %2614 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.42)
  %2615 = load i64, i64* %RBP.i, align 8
  %2616 = add i64 %2615, -176
  %2617 = load i32, i32* %EAX.i889, align 4
  %2618 = load i64, i64* %3, align 8
  %2619 = add i64 %2618, 6
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2616 to i32*
  store i32 %2617, i32* %2620, align 4
  %.pre134 = load i64, i64* %RBP.i, align 8
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_44bff3

block_.L_44bff3:                                  ; preds = %block_44bfd8, %block_44bfce
  %2621 = phi i64 [ %2604, %block_44bfce ], [ %.pre135, %block_44bfd8 ]
  %2622 = phi i64 [ %2550, %block_44bfce ], [ %.pre134, %block_44bfd8 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.42, %block_44bfce ], [ %2614, %block_44bfd8 ]
  %2623 = add i64 %2622, -24
  %2624 = add i64 %2621, 7
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  store i32 0, i32* %2625, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_44bffa

block_.L_44bffa:                                  ; preds = %block_.L_44c2b6, %block_.L_44bff3
  %2626 = phi i64 [ %.pre136, %block_.L_44bff3 ], [ %3593, %block_.L_44c2b6 ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_.L_44bff3 ], [ %MEMORY.47, %block_.L_44c2b6 ]
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -24
  %2629 = add i64 %2626, 3
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RAX.i825, align 8
  %2633 = add i64 %2627, -16
  %2634 = add i64 %2626, 7
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2633 to i64*
  %2636 = load i64, i64* %2635, align 8
  store i64 %2636, i64* %RCX.i863, align 8
  %2637 = add i64 %2636, 28
  %2638 = add i64 %2626, 10
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sub i32 %2631, %2640
  %2642 = icmp ult i32 %2631, %2640
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %14, align 1
  %2644 = and i32 %2641, 255
  %2645 = tail call i32 @llvm.ctpop.i32(i32 %2644)
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = xor i8 %2647, 1
  store i8 %2648, i8* %21, align 1
  %2649 = xor i32 %2640, %2631
  %2650 = xor i32 %2649, %2641
  %2651 = lshr i32 %2650, 4
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  store i8 %2653, i8* %27, align 1
  %2654 = icmp eq i32 %2641, 0
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %30, align 1
  %2656 = lshr i32 %2641, 31
  %2657 = trunc i32 %2656 to i8
  store i8 %2657, i8* %33, align 1
  %2658 = lshr i32 %2631, 31
  %2659 = lshr i32 %2640, 31
  %2660 = xor i32 %2659, %2658
  %2661 = xor i32 %2656, %2658
  %2662 = add nuw nsw i32 %2661, %2660
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %39, align 1
  %2665 = icmp ne i8 %2657, 0
  %2666 = xor i1 %2665, %2663
  %.v197 = select i1 %2666, i64 16, i64 719
  %2667 = add i64 %2626, %.v197
  store i64 %2667, i64* %3, align 8
  br i1 %2666, label %block_44c00a, label %block_.L_44c2c9

block_44c00a:                                     ; preds = %block_.L_44bffa
  %2668 = add i64 %2627, -56
  %2669 = add i64 %2667, 4
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i64*
  %2671 = load i64, i64* %2670, align 8
  store i64 %2671, i64* %RDI.i44, align 8
  %2672 = add i64 %2667, 8
  store i64 %2672, i64* %3, align 8
  %2673 = load i64, i64* %2635, align 8
  store i64 %2673, i64* %RAX.i825, align 8
  %2674 = add i64 %2667, 11
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i64*
  %2676 = load i64, i64* %2675, align 8
  store i64 %2676, i64* %RAX.i825, align 8
  %2677 = add i64 %2667, 15
  store i64 %2677, i64* %3, align 8
  %2678 = load i32, i32* %2630, align 4
  %2679 = sext i32 %2678 to i64
  store i64 %2679, i64* %RCX.i863, align 8
  %2680 = shl nsw i64 %2679, 3
  %2681 = add i64 %2680, %2676
  %2682 = add i64 %2667, 19
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %RAX.i825, align 8
  %2685 = add i64 %2627, -60
  %2686 = add i64 %2667, 23
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i863, align 8
  %2690 = add i64 %2684, %2689
  store i64 %2690, i64* %RAX.i825, align 8
  %2691 = icmp ult i64 %2690, %2684
  %2692 = icmp ult i64 %2690, %2689
  %2693 = or i1 %2691, %2692
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %14, align 1
  %2695 = trunc i64 %2690 to i32
  %2696 = and i32 %2695, 255
  %2697 = tail call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  store i8 %2700, i8* %21, align 1
  %2701 = xor i64 %2684, %2689
  %2702 = xor i64 %2701, %2690
  %2703 = lshr i64 %2702, 4
  %2704 = trunc i64 %2703 to i8
  %2705 = and i8 %2704, 1
  store i8 %2705, i8* %27, align 1
  %2706 = icmp eq i64 %2690, 0
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %30, align 1
  %2708 = lshr i64 %2690, 63
  %2709 = trunc i64 %2708 to i8
  store i8 %2709, i8* %33, align 1
  %2710 = lshr i64 %2684, 63
  %2711 = lshr i64 %2689, 63
  %2712 = xor i64 %2708, %2710
  %2713 = xor i64 %2708, %2711
  %2714 = add nuw nsw i64 %2712, %2713
  %2715 = icmp eq i64 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %39, align 1
  %2717 = add i64 %2627, -20
  %2718 = add i64 %2667, 30
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = sext i32 %2720 to i64
  store i64 %2721, i64* %RDX.i1293, align 8
  store i64 %2690, i64* %RSI.i147, align 8
  %2722 = add i64 %2667, -306266
  %2723 = add i64 %2667, 38
  %2724 = load i64, i64* %6, align 8
  %2725 = add i64 %2724, -8
  %2726 = inttoptr i64 %2725 to i64*
  store i64 %2723, i64* %2726, align 8
  store i64 %2725, i64* %6, align 8
  store i64 %2722, i64* %3, align 8
  %call2_44c02b = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %2722, %struct.Memory* %MEMORY.44)
  %2727 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b119_type* @G__0x45b119 to i64), i64* %RSI.i147, align 8
  %2728 = load i64, i64* %RBP.i, align 8
  %2729 = add i64 %2728, -56
  %2730 = add i64 %2727, 14
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i64*
  %2732 = load i64, i64* %2731, align 8
  store i64 %2732, i64* %RCX.i863, align 8
  %2733 = add i64 %2728, -20
  %2734 = add i64 %2727, 18
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  %2736 = load i32, i32* %2735, align 4
  %2737 = sext i32 %2736 to i64
  store i64 %2737, i64* %RDX.i1293, align 8
  %2738 = add i64 %2732, %2737
  %2739 = add i64 %2727, 22
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i8*
  store i8 0, i8* %2740, align 1
  %2741 = load i64, i64* %RBP.i, align 8
  %2742 = add i64 %2741, -8
  %2743 = load i64, i64* %3, align 8
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2742 to i64*
  %2746 = load i64, i64* %2745, align 8
  store i64 %2746, i64* %RDI.i44, align 8
  %2747 = add i64 %2741, -36
  %2748 = add i64 %2743, 8
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %2544, align 8
  %2752 = add i64 %2741, -40
  %2753 = add i64 %2743, 12
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = add i32 %2755, %2750
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %2544, align 8
  %2758 = icmp ult i32 %2756, %2750
  %2759 = icmp ult i32 %2756, %2755
  %2760 = or i1 %2758, %2759
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %14, align 1
  %2762 = and i32 %2756, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %21, align 1
  %2767 = xor i32 %2755, %2750
  %2768 = xor i32 %2767, %2756
  %2769 = lshr i32 %2768, 4
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  store i8 %2771, i8* %27, align 1
  %2772 = icmp eq i32 %2756, 0
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %30, align 1
  %2774 = lshr i32 %2756, 31
  %2775 = trunc i32 %2774 to i8
  store i8 %2775, i8* %33, align 1
  %2776 = lshr i32 %2750, 31
  %2777 = lshr i32 %2755, 31
  %2778 = xor i32 %2774, %2776
  %2779 = xor i32 %2774, %2777
  %2780 = add nuw nsw i32 %2778, %2779
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %39, align 1
  %2783 = add i64 %2741, -44
  %2784 = add i64 %2743, 16
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = add i32 %2786, %2756
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %2544, align 8
  %2789 = icmp ult i32 %2787, %2756
  %2790 = icmp ult i32 %2787, %2786
  %2791 = or i1 %2789, %2790
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %14, align 1
  %2793 = and i32 %2787, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %21, align 1
  %2798 = xor i32 %2786, %2756
  %2799 = xor i32 %2798, %2787
  %2800 = lshr i32 %2799, 4
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  store i8 %2802, i8* %27, align 1
  %2803 = icmp eq i32 %2787, 0
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %30, align 1
  %2805 = lshr i32 %2787, 31
  %2806 = trunc i32 %2805 to i8
  store i8 %2806, i8* %33, align 1
  %2807 = lshr i32 %2786, 31
  %2808 = xor i32 %2805, %2774
  %2809 = xor i32 %2805, %2807
  %2810 = add nuw nsw i32 %2808, %2809
  %2811 = icmp eq i32 %2810, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %39, align 1
  %2813 = add i64 %2743, 20
  store i64 %2813, i64* %3, align 8
  %2814 = load i32, i32* %2749, align 4
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %2546, align 8
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -40
  %2818 = add i64 %2743, 24
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = add i32 %2820, %2814
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %2546, align 8
  %2823 = icmp ult i32 %2821, %2814
  %2824 = icmp ult i32 %2821, %2820
  %2825 = or i1 %2823, %2824
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %14, align 1
  %2827 = and i32 %2821, 255
  %2828 = tail call i32 @llvm.ctpop.i32(i32 %2827)
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  store i8 %2831, i8* %21, align 1
  %2832 = xor i32 %2820, %2814
  %2833 = xor i32 %2832, %2821
  %2834 = lshr i32 %2833, 4
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  store i8 %2836, i8* %27, align 1
  %2837 = icmp eq i32 %2821, 0
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %30, align 1
  %2839 = lshr i32 %2821, 31
  %2840 = trunc i32 %2839 to i8
  store i8 %2840, i8* %33, align 1
  %2841 = lshr i32 %2814, 31
  %2842 = lshr i32 %2820, 31
  %2843 = xor i32 %2839, %2841
  %2844 = xor i32 %2839, %2842
  %2845 = add nuw nsw i32 %2843, %2844
  %2846 = icmp eq i32 %2845, 2
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %39, align 1
  %2848 = add i64 %2816, -44
  %2849 = add i64 %2743, 28
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = add i32 %2851, %2821
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %2546, align 8
  %2854 = icmp ult i32 %2852, %2821
  %2855 = icmp ult i32 %2852, %2851
  %2856 = or i1 %2854, %2855
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %14, align 1
  %2858 = and i32 %2852, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %21, align 1
  %2863 = xor i32 %2851, %2821
  %2864 = xor i32 %2863, %2852
  %2865 = lshr i32 %2864, 4
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  store i8 %2867, i8* %27, align 1
  %2868 = icmp eq i32 %2852, 0
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %30, align 1
  %2870 = lshr i32 %2852, 31
  %2871 = trunc i32 %2870 to i8
  store i8 %2871, i8* %33, align 1
  %2872 = lshr i32 %2851, 31
  %2873 = xor i32 %2870, %2839
  %2874 = xor i32 %2870, %2872
  %2875 = add nuw nsw i32 %2873, %2874
  %2876 = icmp eq i32 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %39, align 1
  %2878 = add i64 %2816, -16
  %2879 = add i64 %2743, 32
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i64*
  %2881 = load i64, i64* %2880, align 8
  store i64 %2881, i64* %RCX.i863, align 8
  %2882 = add i64 %2881, 8
  %2883 = add i64 %2743, 36
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i64*
  %2885 = load i64, i64* %2884, align 8
  store i64 %2885, i64* %RCX.i863, align 8
  %2886 = add i64 %2816, -24
  %2887 = add i64 %2743, 40
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = sext i32 %2889 to i64
  store i64 %2890, i64* %RDX.i1293, align 8
  %2891 = shl nsw i64 %2890, 3
  %2892 = add i64 %2891, %2885
  %2893 = add i64 %2743, 44
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i64*
  %2895 = load i64, i64* %2894, align 8
  store i64 %2895, i64* %RCX.i863, align 8
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -56
  %2898 = add i64 %2743, 48
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i64*
  %2900 = load i64, i64* %2899, align 8
  %2901 = add i64 %2896, -184
  %2902 = add i64 %2743, 55
  store i64 %2902, i64* %3, align 8
  %2903 = inttoptr i64 %2901 to i64*
  store i64 %2900, i64* %2903, align 8
  %2904 = load i32, i32* %R8D.i766, align 4
  %2905 = zext i32 %2904 to i64
  %2906 = load i64, i64* %3, align 8
  store i64 %2905, i64* %RDX.i1293, align 8
  %2907 = load i64, i64* %RBP.i, align 8
  %2908 = add i64 %2907, -192
  %2909 = load i64, i64* %RCX.i863, align 8
  %2910 = add i64 %2906, 10
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2908 to i64*
  store i64 %2909, i64* %2911, align 8
  %2912 = load i32, i32* %R9D.i757, align 4
  %2913 = zext i32 %2912 to i64
  %2914 = load i64, i64* %3, align 8
  store i64 %2913, i64* %RCX.i863, align 8
  %2915 = load i64, i64* %RBP.i, align 8
  %2916 = add i64 %2915, -192
  %2917 = add i64 %2914, 10
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i64*
  %2919 = load i64, i64* %2918, align 8
  store i64 %2919, i64* %2544, align 8
  %2920 = add i64 %2915, -184
  %2921 = add i64 %2914, 17
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i64*
  %2923 = load i64, i64* %2922, align 8
  store i64 %2923, i64* %2546, align 8
  %2924 = add i64 %2915, -200
  %2925 = load i64, i64* %RAX.i825, align 8
  %2926 = add i64 %2914, 24
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2924 to i64*
  store i64 %2925, i64* %2927, align 8
  %2928 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %2929 = add i64 %2928, -305967
  %2930 = add i64 %2928, 7
  %2931 = load i64, i64* %6, align 8
  %2932 = add i64 %2931, -8
  %2933 = inttoptr i64 %2932 to i64*
  store i64 %2930, i64* %2933, align 8
  store i64 %2932, i64* %6, align 8
  store i64 %2929, i64* %3, align 8
  %2934 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.44)
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -16
  %2937 = load i64, i64* %3, align 8
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RSI.i147, align 8
  %2941 = add i64 %2940, 112
  %2942 = add i64 %2937, 9
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i8 0, i8* %14, align 1
  %2945 = trunc i64 %2944 to i32
  %2946 = and i32 %2945, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2951 = icmp eq i64 %2944, 0
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %30, align 1
  %2953 = lshr i64 %2944, 63
  %2954 = trunc i64 %2953 to i8
  store i8 %2954, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2955 = add i64 %2935, -204
  %2956 = load i32, i32* %EAX.i889, align 4
  %2957 = add i64 %2937, 15
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2955 to i32*
  store i32 %2956, i32* %2958, align 4
  %2959 = load i64, i64* %3, align 8
  %2960 = load i8, i8* %30, align 1
  %2961 = icmp ne i8 %2960, 0
  %.v249 = select i1 %2961, i64 140, i64 6
  %2962 = add i64 %2959, %.v249
  store i64 %2962, i64* %3, align 8
  %cmpBr_44c0b5 = icmp eq i8 %2960, 1
  br i1 %cmpBr_44c0b5, label %block_.L_44c141, label %block_44c0bb

block_44c0bb:                                     ; preds = %block_44c00a
  %2963 = load i64, i64* %RBP.i, align 8
  %2964 = add i64 %2963, -16
  %2965 = add i64 %2962, 4
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i64*
  %2967 = load i64, i64* %2966, align 8
  store i64 %2967, i64* %RAX.i825, align 8
  %2968 = add i64 %2967, 112
  %2969 = add i64 %2962, 8
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %RAX.i825, align 8
  %2972 = add i64 %2963, -24
  %2973 = add i64 %2962, 12
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = sext i32 %2975 to i64
  store i64 %2976, i64* %RCX.i863, align 8
  %2977 = shl nsw i64 %2976, 3
  %2978 = add i64 %2977, %2971
  %2979 = add i64 %2962, 17
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  store i8 0, i8* %14, align 1
  %2982 = trunc i64 %2981 to i32
  %2983 = and i32 %2982, 255
  %2984 = tail call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2988 = icmp eq i64 %2981, 0
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %30, align 1
  %2990 = lshr i64 %2981, 63
  %2991 = trunc i64 %2990 to i8
  store i8 %2991, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v201 = select i1 %2988, i64 134, i64 23
  %2992 = add i64 %2962, %.v201
  store i64 %2992, i64* %3, align 8
  br i1 %2988, label %block_.L_44c141, label %block_44c0d2

block_44c0d2:                                     ; preds = %block_44c0bb
  %2993 = add i64 %2963, -56
  %2994 = add i64 %2992, 4
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i64*
  %2996 = load i64, i64* %2995, align 8
  store i64 %2996, i64* %RDI.i44, align 8
  %2997 = add i64 %2992, 8
  store i64 %2997, i64* %3, align 8
  %2998 = load i64, i64* %2966, align 8
  store i64 %2998, i64* %RAX.i825, align 8
  %2999 = add i64 %2998, 112
  %3000 = add i64 %2992, 12
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i64*
  %3002 = load i64, i64* %3001, align 8
  store i64 %3002, i64* %RAX.i825, align 8
  %3003 = add i64 %2992, 16
  store i64 %3003, i64* %3, align 8
  %3004 = load i32, i32* %2974, align 4
  %3005 = sext i32 %3004 to i64
  store i64 %3005, i64* %RCX.i863, align 8
  %3006 = shl nsw i64 %3005, 3
  %3007 = add i64 %3006, %3002
  %3008 = add i64 %2992, 20
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i64*
  %3010 = load i64, i64* %3009, align 8
  store i64 %3010, i64* %RAX.i825, align 8
  %3011 = add i64 %2963, -60
  %3012 = add i64 %2992, 24
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = sext i32 %3014 to i64
  store i64 %3015, i64* %RCX.i863, align 8
  %3016 = add i64 %3010, %3015
  store i64 %3016, i64* %RAX.i825, align 8
  %3017 = icmp ult i64 %3016, %3010
  %3018 = icmp ult i64 %3016, %3015
  %3019 = or i1 %3017, %3018
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %14, align 1
  %3021 = trunc i64 %3016 to i32
  %3022 = and i32 %3021, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %21, align 1
  %3027 = xor i64 %3010, %3015
  %3028 = xor i64 %3027, %3016
  %3029 = lshr i64 %3028, 4
  %3030 = trunc i64 %3029 to i8
  %3031 = and i8 %3030, 1
  store i8 %3031, i8* %27, align 1
  %3032 = icmp eq i64 %3016, 0
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %30, align 1
  %3034 = lshr i64 %3016, 63
  %3035 = trunc i64 %3034 to i8
  store i8 %3035, i8* %33, align 1
  %3036 = lshr i64 %3010, 63
  %3037 = lshr i64 %3015, 63
  %3038 = xor i64 %3034, %3036
  %3039 = xor i64 %3034, %3037
  %3040 = add nuw nsw i64 %3038, %3039
  %3041 = icmp eq i64 %3040, 2
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %39, align 1
  %3043 = add i64 %2963, -20
  %3044 = add i64 %2992, 31
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = sext i32 %3046 to i64
  store i64 %3047, i64* %RDX.i1293, align 8
  store i64 %3016, i64* %RSI.i147, align 8
  %3048 = add i64 %2992, -306466
  %3049 = add i64 %2992, 39
  %3050 = load i64, i64* %6, align 8
  %3051 = add i64 %3050, -8
  %3052 = inttoptr i64 %3051 to i64*
  store i64 %3049, i64* %3052, align 8
  store i64 %3051, i64* %6, align 8
  store i64 %3048, i64* %3, align 8
  %call2_44c0f4 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3048, %struct.Memory* %2934)
  %3053 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b125_type* @G__0x45b125 to i64), i64* %RSI.i147, align 8
  %3054 = load i64, i64* %RBP.i, align 8
  %3055 = add i64 %3054, -56
  %3056 = add i64 %3053, 14
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i64*
  %3058 = load i64, i64* %3057, align 8
  store i64 %3058, i64* %RCX.i863, align 8
  %3059 = add i64 %3054, -20
  %3060 = add i64 %3053, 18
  store i64 %3060, i64* %3, align 8
  %3061 = inttoptr i64 %3059 to i32*
  %3062 = load i32, i32* %3061, align 4
  %3063 = sext i32 %3062 to i64
  store i64 %3063, i64* %RDX.i1293, align 8
  %3064 = add i64 %3058, %3063
  %3065 = add i64 %3053, 22
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i8*
  store i8 0, i8* %3066, align 1
  %3067 = load i64, i64* %RBP.i, align 8
  %3068 = add i64 %3067, -8
  %3069 = load i64, i64* %3, align 8
  %3070 = add i64 %3069, 4
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3068 to i64*
  %3072 = load i64, i64* %3071, align 8
  store i64 %3072, i64* %RDI.i44, align 8
  %3073 = add i64 %3067, -36
  %3074 = add i64 %3069, 7
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = zext i32 %3076 to i64
  store i64 %3077, i64* %RDX.i1293, align 8
  %3078 = add i64 %3069, 10
  store i64 %3078, i64* %3, align 8
  %3079 = load i32, i32* %3075, align 4
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RCX.i863, align 8
  %3081 = add i64 %3067, -16
  %3082 = add i64 %3069, 14
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %2544, align 8
  %3085 = add i64 %3084, 8
  %3086 = add i64 %3069, 18
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i64*
  %3088 = load i64, i64* %3087, align 8
  store i64 %3088, i64* %2544, align 8
  %3089 = add i64 %3067, -24
  %3090 = add i64 %3069, 22
  store i64 %3090, i64* %3, align 8
  %3091 = inttoptr i64 %3089 to i32*
  %3092 = load i32, i32* %3091, align 4
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %2546, align 8
  %3094 = shl nsw i64 %3093, 3
  %3095 = add i64 %3094, %3088
  %3096 = add i64 %3069, 26
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  %3098 = load i64, i64* %3097, align 8
  store i64 %3098, i64* %2544, align 8
  %3099 = add i64 %3067, -56
  %3100 = add i64 %3069, 30
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i64*
  %3102 = load i64, i64* %3101, align 8
  store i64 %3102, i64* %2546, align 8
  %3103 = add i64 %3067, -216
  %3104 = load i64, i64* %RAX.i825, align 8
  %3105 = add i64 %3069, 37
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3103 to i64*
  store i64 %3104, i64* %3106, align 8
  %3107 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %3108 = add i64 %3107, -306116
  %3109 = add i64 %3107, 7
  %3110 = load i64, i64* %6, align 8
  %3111 = add i64 %3110, -8
  %3112 = inttoptr i64 %3111 to i64*
  store i64 %3109, i64* %3112, align 8
  store i64 %3111, i64* %6, align 8
  store i64 %3108, i64* %3, align 8
  %3113 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44c0f4)
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -220
  %3116 = load i32, i32* %EAX.i889, align 4
  %3117 = load i64, i64* %3, align 8
  %3118 = add i64 %3117, 6
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3115 to i32*
  store i32 %3116, i32* %3119, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_44c141

block_.L_44c141:                                  ; preds = %block_44c0d2, %block_44c0bb, %block_44c00a
  %3120 = phi i64 [ %2962, %block_44c00a ], [ %2992, %block_44c0bb ], [ %.pre144, %block_44c0d2 ]
  %MEMORY.45 = phi %struct.Memory* [ %2934, %block_44c00a ], [ %2934, %block_44c0bb ], [ %3113, %block_44c0d2 ]
  %3121 = load i64, i64* %RBP.i, align 8
  %3122 = add i64 %3121, -16
  %3123 = add i64 %3120, 4
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i64*
  %3125 = load i64, i64* %3124, align 8
  store i64 %3125, i64* %RAX.i825, align 8
  %3126 = add i64 %3125, 120
  %3127 = add i64 %3120, 9
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i64*
  %3129 = load i64, i64* %3128, align 8
  store i8 0, i8* %14, align 1
  %3130 = trunc i64 %3129 to i32
  %3131 = and i32 %3130, 255
  %3132 = tail call i32 @llvm.ctpop.i32(i32 %3131)
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = xor i8 %3134, 1
  store i8 %3135, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3136 = icmp eq i64 %3129, 0
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %30, align 1
  %3138 = lshr i64 %3129, 63
  %3139 = trunc i64 %3138 to i8
  store i8 %3139, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v202 = select i1 %3136, i64 149, i64 15
  %3140 = add i64 %3120, %.v202
  store i64 %3140, i64* %3, align 8
  br i1 %3136, label %block_.L_44c1d6, label %block_44c150

block_44c150:                                     ; preds = %block_.L_44c141
  %3141 = add i64 %3140, 4
  store i64 %3141, i64* %3, align 8
  %3142 = load i64, i64* %3124, align 8
  store i64 %3142, i64* %RAX.i825, align 8
  %3143 = add i64 %3142, 120
  %3144 = add i64 %3140, 8
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i64*
  %3146 = load i64, i64* %3145, align 8
  store i64 %3146, i64* %RAX.i825, align 8
  %3147 = add i64 %3121, -24
  %3148 = add i64 %3140, 12
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = sext i32 %3150 to i64
  store i64 %3151, i64* %RCX.i863, align 8
  %3152 = shl nsw i64 %3151, 3
  %3153 = add i64 %3152, %3146
  %3154 = add i64 %3140, 17
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i8 0, i8* %14, align 1
  %3157 = trunc i64 %3156 to i32
  %3158 = and i32 %3157, 255
  %3159 = tail call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  store i8 %3162, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3163 = icmp eq i64 %3156, 0
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %30, align 1
  %3165 = lshr i64 %3156, 63
  %3166 = trunc i64 %3165 to i8
  store i8 %3166, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %3163, i64 134, i64 23
  %3167 = add i64 %3140, %.v203
  store i64 %3167, i64* %3, align 8
  br i1 %3163, label %block_.L_44c1d6, label %block_44c167

block_44c167:                                     ; preds = %block_44c150
  %3168 = add i64 %3121, -56
  %3169 = add i64 %3167, 4
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i64*
  %3171 = load i64, i64* %3170, align 8
  store i64 %3171, i64* %RDI.i44, align 8
  %3172 = add i64 %3167, 8
  store i64 %3172, i64* %3, align 8
  %3173 = load i64, i64* %3124, align 8
  store i64 %3173, i64* %RAX.i825, align 8
  %3174 = add i64 %3173, 120
  %3175 = add i64 %3167, 12
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3174 to i64*
  %3177 = load i64, i64* %3176, align 8
  store i64 %3177, i64* %RAX.i825, align 8
  %3178 = add i64 %3167, 16
  store i64 %3178, i64* %3, align 8
  %3179 = load i32, i32* %3149, align 4
  %3180 = sext i32 %3179 to i64
  store i64 %3180, i64* %RCX.i863, align 8
  %3181 = shl nsw i64 %3180, 3
  %3182 = add i64 %3181, %3177
  %3183 = add i64 %3167, 20
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i64*
  %3185 = load i64, i64* %3184, align 8
  store i64 %3185, i64* %RAX.i825, align 8
  %3186 = add i64 %3121, -60
  %3187 = add i64 %3167, 24
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = sext i32 %3189 to i64
  store i64 %3190, i64* %RCX.i863, align 8
  %3191 = add i64 %3185, %3190
  store i64 %3191, i64* %RAX.i825, align 8
  %3192 = icmp ult i64 %3191, %3185
  %3193 = icmp ult i64 %3191, %3190
  %3194 = or i1 %3192, %3193
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %14, align 1
  %3196 = trunc i64 %3191 to i32
  %3197 = and i32 %3196, 255
  %3198 = tail call i32 @llvm.ctpop.i32(i32 %3197)
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = xor i8 %3200, 1
  store i8 %3201, i8* %21, align 1
  %3202 = xor i64 %3185, %3190
  %3203 = xor i64 %3202, %3191
  %3204 = lshr i64 %3203, 4
  %3205 = trunc i64 %3204 to i8
  %3206 = and i8 %3205, 1
  store i8 %3206, i8* %27, align 1
  %3207 = icmp eq i64 %3191, 0
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %30, align 1
  %3209 = lshr i64 %3191, 63
  %3210 = trunc i64 %3209 to i8
  store i8 %3210, i8* %33, align 1
  %3211 = lshr i64 %3185, 63
  %3212 = lshr i64 %3190, 63
  %3213 = xor i64 %3209, %3211
  %3214 = xor i64 %3209, %3212
  %3215 = add nuw nsw i64 %3213, %3214
  %3216 = icmp eq i64 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %39, align 1
  %3218 = add i64 %3121, -20
  %3219 = add i64 %3167, 31
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = sext i32 %3221 to i64
  store i64 %3222, i64* %RDX.i1293, align 8
  store i64 %3191, i64* %RSI.i147, align 8
  %3223 = add i64 %3167, -306615
  %3224 = add i64 %3167, 39
  %3225 = load i64, i64* %6, align 8
  %3226 = add i64 %3225, -8
  %3227 = inttoptr i64 %3226 to i64*
  store i64 %3224, i64* %3227, align 8
  store i64 %3226, i64* %6, align 8
  store i64 %3223, i64* %3, align 8
  %call2_44c189 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3223, %struct.Memory* %MEMORY.45)
  %3228 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b13c_type* @G__0x45b13c to i64), i64* %RSI.i147, align 8
  %3229 = load i64, i64* %RBP.i, align 8
  %3230 = add i64 %3229, -56
  %3231 = add i64 %3228, 14
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i64*
  %3233 = load i64, i64* %3232, align 8
  store i64 %3233, i64* %RCX.i863, align 8
  %3234 = add i64 %3229, -20
  %3235 = add i64 %3228, 18
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i32*
  %3237 = load i32, i32* %3236, align 4
  %3238 = sext i32 %3237 to i64
  store i64 %3238, i64* %RDX.i1293, align 8
  %3239 = add i64 %3233, %3238
  %3240 = add i64 %3228, 22
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i8*
  store i8 0, i8* %3241, align 1
  %3242 = load i64, i64* %RBP.i, align 8
  %3243 = add i64 %3242, -8
  %3244 = load i64, i64* %3, align 8
  %3245 = add i64 %3244, 4
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3243 to i64*
  %3247 = load i64, i64* %3246, align 8
  store i64 %3247, i64* %RDI.i44, align 8
  %3248 = add i64 %3242, -36
  %3249 = add i64 %3244, 7
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  %3251 = load i32, i32* %3250, align 4
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RDX.i1293, align 8
  %3253 = add i64 %3244, 10
  store i64 %3253, i64* %3, align 8
  %3254 = load i32, i32* %3250, align 4
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RCX.i863, align 8
  %3256 = add i64 %3242, -16
  %3257 = add i64 %3244, 14
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %2544, align 8
  %3260 = add i64 %3259, 8
  %3261 = add i64 %3244, 18
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i64*
  %3263 = load i64, i64* %3262, align 8
  store i64 %3263, i64* %2544, align 8
  %3264 = add i64 %3242, -24
  %3265 = add i64 %3244, 22
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i32*
  %3267 = load i32, i32* %3266, align 4
  %3268 = sext i32 %3267 to i64
  store i64 %3268, i64* %2546, align 8
  %3269 = shl nsw i64 %3268, 3
  %3270 = add i64 %3269, %3263
  %3271 = add i64 %3244, 26
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3270 to i64*
  %3273 = load i64, i64* %3272, align 8
  store i64 %3273, i64* %2544, align 8
  %3274 = add i64 %3242, -56
  %3275 = add i64 %3244, 30
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i64*
  %3277 = load i64, i64* %3276, align 8
  store i64 %3277, i64* %2546, align 8
  %3278 = add i64 %3242, -232
  %3279 = load i64, i64* %RAX.i825, align 8
  %3280 = add i64 %3244, 37
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3278 to i64*
  store i64 %3279, i64* %3281, align 8
  %3282 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %3283 = add i64 %3282, -306265
  %3284 = add i64 %3282, 7
  %3285 = load i64, i64* %6, align 8
  %3286 = add i64 %3285, -8
  %3287 = inttoptr i64 %3286 to i64*
  store i64 %3284, i64* %3287, align 8
  store i64 %3286, i64* %6, align 8
  store i64 %3283, i64* %3, align 8
  %3288 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44c189)
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -236
  %3291 = load i32, i32* %EAX.i889, align 4
  %3292 = load i64, i64* %3, align 8
  %3293 = add i64 %3292, 6
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3290 to i32*
  store i32 %3291, i32* %3294, align 4
  %.pre145 = load i64, i64* %RBP.i, align 8
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_44c1d6

block_.L_44c1d6:                                  ; preds = %block_44c167, %block_44c150, %block_.L_44c141
  %3295 = phi i64 [ %3140, %block_.L_44c141 ], [ %3167, %block_44c150 ], [ %.pre146, %block_44c167 ]
  %3296 = phi i64 [ %3121, %block_.L_44c141 ], [ %3121, %block_44c150 ], [ %.pre145, %block_44c167 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.45, %block_.L_44c141 ], [ %MEMORY.45, %block_44c150 ], [ %3288, %block_44c167 ]
  %3297 = add i64 %3296, -28
  %3298 = add i64 %3295, 7
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i32*
  store i32 0, i32* %3299, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_44c1dd

block_.L_44c1dd:                                  ; preds = %block_.L_44c2a3, %block_.L_44c1d6
  %3300 = phi i64 [ %.pre147, %block_.L_44c1d6 ], [ %3563, %block_.L_44c2a3 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_44c1d6 ], [ %MEMORY.48, %block_.L_44c2a3 ]
  %3301 = load i64, i64* %RBP.i, align 8
  %3302 = add i64 %3301, -28
  %3303 = add i64 %3300, 3
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RAX.i825, align 8
  %3307 = add i64 %3301, -16
  %3308 = add i64 %3300, 7
  store i64 %3308, i64* %3, align 8
  %3309 = inttoptr i64 %3307 to i64*
  %3310 = load i64, i64* %3309, align 8
  store i64 %3310, i64* %RCX.i863, align 8
  %3311 = add i64 %3310, 304
  %3312 = add i64 %3300, 13
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3311 to i32*
  %3314 = load i32, i32* %3313, align 4
  %3315 = sub i32 %3305, %3314
  %3316 = icmp ult i32 %3305, %3314
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %14, align 1
  %3318 = and i32 %3315, 255
  %3319 = tail call i32 @llvm.ctpop.i32(i32 %3318)
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  store i8 %3322, i8* %21, align 1
  %3323 = xor i32 %3314, %3305
  %3324 = xor i32 %3323, %3315
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  store i8 %3327, i8* %27, align 1
  %3328 = icmp eq i32 %3315, 0
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %30, align 1
  %3330 = lshr i32 %3315, 31
  %3331 = trunc i32 %3330 to i8
  store i8 %3331, i8* %33, align 1
  %3332 = lshr i32 %3305, 31
  %3333 = lshr i32 %3314, 31
  %3334 = xor i32 %3333, %3332
  %3335 = xor i32 %3330, %3332
  %3336 = add nuw nsw i32 %3335, %3334
  %3337 = icmp eq i32 %3336, 2
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %39, align 1
  %3339 = icmp ne i8 %3331, 0
  %3340 = xor i1 %3339, %3337
  %.v166 = select i1 %3340, i64 19, i64 217
  %3341 = add i64 %3300, %.v166
  store i64 %3341, i64* %3, align 8
  br i1 %3340, label %block_44c1f0, label %block_.L_44c2b6

block_44c1f0:                                     ; preds = %block_.L_44c1dd
  %3342 = add i64 %3341, 4
  store i64 %3342, i64* %3, align 8
  %3343 = load i64, i64* %3309, align 8
  store i64 %3343, i64* %RAX.i825, align 8
  %3344 = add i64 %3343, 288
  %3345 = add i64 %3341, 11
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i64*
  %3347 = load i64, i64* %3346, align 8
  store i64 %3347, i64* %RAX.i825, align 8
  %3348 = add i64 %3341, 15
  store i64 %3348, i64* %3, align 8
  %3349 = load i32, i32* %3304, align 4
  %3350 = sext i32 %3349 to i64
  store i64 %3350, i64* %RCX.i863, align 8
  %3351 = shl nsw i64 %3350, 3
  %3352 = add i64 %3351, %3347
  %3353 = add i64 %3341, 19
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to i64*
  %3355 = load i64, i64* %3354, align 8
  store i64 %3355, i64* %RAX.i825, align 8
  %3356 = add i64 %3301, -24
  %3357 = add i64 %3341, 23
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to i32*
  %3359 = load i32, i32* %3358, align 4
  %3360 = sext i32 %3359 to i64
  store i64 %3360, i64* %RCX.i863, align 8
  %3361 = shl nsw i64 %3360, 3
  %3362 = add i64 %3361, %3355
  %3363 = add i64 %3341, 28
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i64*
  %3365 = load i64, i64* %3364, align 8
  store i8 0, i8* %14, align 1
  %3366 = trunc i64 %3365 to i32
  %3367 = and i32 %3366, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3372 = icmp eq i64 %3365, 0
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %30, align 1
  %3374 = lshr i64 %3365, 63
  %3375 = trunc i64 %3374 to i8
  store i8 %3375, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v204 = select i1 %3372, i64 179, i64 34
  %3376 = add i64 %3341, %.v204
  store i64 %3376, i64* %3, align 8
  br i1 %3372, label %block_.L_44c2a3, label %block_44c212

block_44c212:                                     ; preds = %block_44c1f0
  %3377 = add i64 %3301, -56
  %3378 = add i64 %3376, 4
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3377 to i64*
  %3380 = load i64, i64* %3379, align 8
  store i64 %3380, i64* %RDI.i44, align 8
  %3381 = add i64 %3376, 8
  store i64 %3381, i64* %3, align 8
  %3382 = load i64, i64* %3309, align 8
  store i64 %3382, i64* %RAX.i825, align 8
  %3383 = add i64 %3382, 288
  %3384 = add i64 %3376, 15
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i64*
  %3386 = load i64, i64* %3385, align 8
  store i64 %3386, i64* %RAX.i825, align 8
  %3387 = add i64 %3376, 19
  store i64 %3387, i64* %3, align 8
  %3388 = load i32, i32* %3304, align 4
  %3389 = sext i32 %3388 to i64
  store i64 %3389, i64* %RCX.i863, align 8
  %3390 = shl nsw i64 %3389, 3
  %3391 = add i64 %3390, %3386
  %3392 = add i64 %3376, 23
  store i64 %3392, i64* %3, align 8
  %3393 = inttoptr i64 %3391 to i64*
  %3394 = load i64, i64* %3393, align 8
  store i64 %3394, i64* %RAX.i825, align 8
  %3395 = add i64 %3376, 27
  store i64 %3395, i64* %3, align 8
  %3396 = load i32, i32* %3358, align 4
  %3397 = sext i32 %3396 to i64
  store i64 %3397, i64* %RCX.i863, align 8
  %3398 = shl nsw i64 %3397, 3
  %3399 = add i64 %3398, %3394
  %3400 = add i64 %3376, 31
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3399 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %RAX.i825, align 8
  %3403 = add i64 %3301, -60
  %3404 = add i64 %3376, 35
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RCX.i863, align 8
  %3408 = add i64 %3402, %3407
  store i64 %3408, i64* %RAX.i825, align 8
  %3409 = icmp ult i64 %3408, %3402
  %3410 = icmp ult i64 %3408, %3407
  %3411 = or i1 %3409, %3410
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %14, align 1
  %3413 = trunc i64 %3408 to i32
  %3414 = and i32 %3413, 255
  %3415 = tail call i32 @llvm.ctpop.i32(i32 %3414)
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  %3418 = xor i8 %3417, 1
  store i8 %3418, i8* %21, align 1
  %3419 = xor i64 %3402, %3407
  %3420 = xor i64 %3419, %3408
  %3421 = lshr i64 %3420, 4
  %3422 = trunc i64 %3421 to i8
  %3423 = and i8 %3422, 1
  store i8 %3423, i8* %27, align 1
  %3424 = icmp eq i64 %3408, 0
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %30, align 1
  %3426 = lshr i64 %3408, 63
  %3427 = trunc i64 %3426 to i8
  store i8 %3427, i8* %33, align 1
  %3428 = lshr i64 %3402, 63
  %3429 = lshr i64 %3407, 63
  %3430 = xor i64 %3426, %3428
  %3431 = xor i64 %3426, %3429
  %3432 = add nuw nsw i64 %3430, %3431
  %3433 = icmp eq i64 %3432, 2
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %39, align 1
  %3435 = add i64 %3301, -20
  %3436 = add i64 %3376, 42
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = sext i32 %3438 to i64
  store i64 %3439, i64* %RDX.i1293, align 8
  store i64 %3408, i64* %RSI.i147, align 8
  %3440 = add i64 %3376, -306786
  %3441 = add i64 %3376, 50
  %3442 = load i64, i64* %6, align 8
  %3443 = add i64 %3442, -8
  %3444 = inttoptr i64 %3443 to i64*
  store i64 %3441, i64* %3444, align 8
  store i64 %3443, i64* %6, align 8
  store i64 %3440, i64* %3, align 8
  %call2_44c23f = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3440, %struct.Memory* %MEMORY.47)
  %3445 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b153_type* @G__0x45b153 to i64), i64* %RSI.i147, align 8
  %3446 = load i64, i64* %RBP.i, align 8
  %3447 = add i64 %3446, -56
  %3448 = add i64 %3445, 14
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i64*
  %3450 = load i64, i64* %3449, align 8
  store i64 %3450, i64* %RCX.i863, align 8
  %3451 = add i64 %3446, -20
  %3452 = add i64 %3445, 18
  store i64 %3452, i64* %3, align 8
  %3453 = inttoptr i64 %3451 to i32*
  %3454 = load i32, i32* %3453, align 4
  %3455 = sext i32 %3454 to i64
  store i64 %3455, i64* %RDX.i1293, align 8
  %3456 = add i64 %3450, %3455
  %3457 = add i64 %3445, 22
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i8*
  store i8 0, i8* %3458, align 1
  %3459 = load i64, i64* %RBP.i, align 8
  %3460 = add i64 %3459, -8
  %3461 = load i64, i64* %3, align 8
  %3462 = add i64 %3461, 4
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3460 to i64*
  %3464 = load i64, i64* %3463, align 8
  store i64 %3464, i64* %RDI.i44, align 8
  %3465 = add i64 %3459, -36
  %3466 = add i64 %3461, 7
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RDX.i1293, align 8
  %3470 = add i64 %3461, 10
  store i64 %3470, i64* %3, align 8
  %3471 = load i32, i32* %3467, align 4
  %3472 = zext i32 %3471 to i64
  store i64 %3472, i64* %RCX.i863, align 8
  %3473 = add i64 %3459, -16
  %3474 = add i64 %3461, 14
  store i64 %3474, i64* %3, align 8
  %3475 = inttoptr i64 %3473 to i64*
  %3476 = load i64, i64* %3475, align 8
  store i64 %3476, i64* %2544, align 8
  %3477 = add i64 %3476, 8
  %3478 = add i64 %3461, 18
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i64*
  %3480 = load i64, i64* %3479, align 8
  store i64 %3480, i64* %2544, align 8
  %3481 = add i64 %3459, -24
  %3482 = add i64 %3461, 22
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  %3484 = load i32, i32* %3483, align 4
  %3485 = sext i32 %3484 to i64
  store i64 %3485, i64* %2546, align 8
  %3486 = shl nsw i64 %3485, 3
  %3487 = add i64 %3486, %3480
  %3488 = add i64 %3461, 26
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i64*
  %3490 = load i64, i64* %3489, align 8
  store i64 %3490, i64* %2544, align 8
  %3491 = add i64 %3461, 30
  store i64 %3491, i64* %3, align 8
  %3492 = load i64, i64* %3475, align 8
  store i64 %3492, i64* %2546, align 8
  %3493 = add i64 %3492, 280
  %3494 = add i64 %3461, 37
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3493 to i64*
  %3496 = load i64, i64* %3495, align 8
  store i64 %3496, i64* %2546, align 8
  %3497 = add i64 %3459, -28
  %3498 = add i64 %3461, 41
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = sext i32 %3500 to i64
  store i64 %3501, i64* %R10.i427, align 8
  %3502 = shl nsw i64 %3501, 3
  %3503 = add i64 %3502, %3496
  %3504 = add i64 %3461, 45
  store i64 %3504, i64* %3, align 8
  %3505 = inttoptr i64 %3503 to i64*
  %3506 = load i64, i64* %3505, align 8
  store i64 %3506, i64* %2546, align 8
  %3507 = add i64 %3459, -56
  %3508 = add i64 %3461, 49
  store i64 %3508, i64* %3, align 8
  %3509 = inttoptr i64 %3507 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %R10.i427, align 8
  %3511 = load i64*, i64** %2216, align 8
  %3512 = add i64 %3461, 53
  store i64 %3512, i64* %3, align 8
  store i64 %3510, i64* %3511, align 8
  %3513 = load i64, i64* %RBP.i, align 8
  %3514 = add i64 %3513, -248
  %3515 = load i64, i64* %RAX.i825, align 8
  %3516 = load i64, i64* %3, align 8
  %3517 = add i64 %3516, 7
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3514 to i64*
  store i64 %3515, i64* %3518, align 8
  %3519 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %3520 = add i64 %3519, -306470
  %3521 = add i64 %3519, 7
  %3522 = load i64, i64* %6, align 8
  %3523 = add i64 %3522, -8
  %3524 = inttoptr i64 %3523 to i64*
  store i64 %3521, i64* %3524, align 8
  store i64 %3523, i64* %6, align 8
  store i64 %3520, i64* %3, align 8
  %3525 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.47)
  %3526 = load i64, i64* %RBP.i, align 8
  %3527 = add i64 %3526, -252
  %3528 = load i32, i32* %EAX.i889, align 4
  %3529 = load i64, i64* %3, align 8
  %3530 = add i64 %3529, 6
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3527 to i32*
  store i32 %3528, i32* %3531, align 4
  %.pre148 = load i64, i64* %3, align 8
  %.pre149 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c2a3

block_.L_44c2a3:                                  ; preds = %block_44c212, %block_44c1f0
  %3532 = phi i64 [ %3301, %block_44c1f0 ], [ %.pre149, %block_44c212 ]
  %3533 = phi i64 [ %3376, %block_44c1f0 ], [ %.pre148, %block_44c212 ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.47, %block_44c1f0 ], [ %3525, %block_44c212 ]
  %3534 = add i64 %3532, -28
  %3535 = add i64 %3533, 8
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i32*
  %3537 = load i32, i32* %3536, align 4
  %3538 = add i32 %3537, 1
  %3539 = zext i32 %3538 to i64
  store i64 %3539, i64* %RAX.i825, align 8
  %3540 = icmp eq i32 %3537, -1
  %3541 = icmp eq i32 %3538, 0
  %3542 = or i1 %3540, %3541
  %3543 = zext i1 %3542 to i8
  store i8 %3543, i8* %14, align 1
  %3544 = and i32 %3538, 255
  %3545 = tail call i32 @llvm.ctpop.i32(i32 %3544)
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  %3548 = xor i8 %3547, 1
  store i8 %3548, i8* %21, align 1
  %3549 = xor i32 %3538, %3537
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  store i8 %3552, i8* %27, align 1
  %3553 = zext i1 %3541 to i8
  store i8 %3553, i8* %30, align 1
  %3554 = lshr i32 %3538, 31
  %3555 = trunc i32 %3554 to i8
  store i8 %3555, i8* %33, align 1
  %3556 = lshr i32 %3537, 31
  %3557 = xor i32 %3554, %3556
  %3558 = add nuw nsw i32 %3557, %3554
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %39, align 1
  %3561 = add i64 %3533, 14
  store i64 %3561, i64* %3, align 8
  store i32 %3538, i32* %3536, align 4
  %3562 = load i64, i64* %3, align 8
  %3563 = add i64 %3562, -212
  store i64 %3563, i64* %3, align 8
  br label %block_.L_44c1dd

block_.L_44c2b6:                                  ; preds = %block_.L_44c1dd
  %3564 = add i64 %3301, -24
  %3565 = add i64 %3341, 8
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i32*
  %3567 = load i32, i32* %3566, align 4
  %3568 = add i32 %3567, 1
  %3569 = zext i32 %3568 to i64
  store i64 %3569, i64* %RAX.i825, align 8
  %3570 = icmp eq i32 %3567, -1
  %3571 = icmp eq i32 %3568, 0
  %3572 = or i1 %3570, %3571
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %14, align 1
  %3574 = and i32 %3568, 255
  %3575 = tail call i32 @llvm.ctpop.i32(i32 %3574)
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = xor i8 %3577, 1
  store i8 %3578, i8* %21, align 1
  %3579 = xor i32 %3568, %3567
  %3580 = lshr i32 %3579, 4
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  store i8 %3582, i8* %27, align 1
  %3583 = zext i1 %3571 to i8
  store i8 %3583, i8* %30, align 1
  %3584 = lshr i32 %3568, 31
  %3585 = trunc i32 %3584 to i8
  store i8 %3585, i8* %33, align 1
  %3586 = lshr i32 %3567, 31
  %3587 = xor i32 %3584, %3586
  %3588 = add nuw nsw i32 %3587, %3584
  %3589 = icmp eq i32 %3588, 2
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %39, align 1
  %3591 = add i64 %3341, 14
  store i64 %3591, i64* %3, align 8
  store i32 %3568, i32* %3566, align 4
  %3592 = load i64, i64* %3, align 8
  %3593 = add i64 %3592, -714
  store i64 %3593, i64* %3, align 8
  br label %block_.L_44bffa

block_.L_44c2c9:                                  ; preds = %block_.L_44bffa
  %3594 = add i64 %2667, 4
  store i64 %3594, i64* %3, align 8
  %3595 = load i64, i64* %2635, align 8
  store i64 %3595, i64* %RAX.i825, align 8
  %3596 = add i64 %3595, 72
  %3597 = add i64 %2667, 9
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i64*
  %3599 = load i64, i64* %3598, align 8
  store i8 0, i8* %14, align 1
  %3600 = trunc i64 %3599 to i32
  %3601 = and i32 %3600, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3606 = icmp eq i64 %3599, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %30, align 1
  %3608 = lshr i64 %3599, 63
  %3609 = trunc i64 %3608 to i8
  store i8 %3609, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v198 = select i1 %3606, i64 142, i64 15
  %3610 = add i64 %2667, %.v198
  store i64 %3610, i64* %3, align 8
  br i1 %3606, label %block_.L_44c357, label %block_44c2d8

block_44c2d8:                                     ; preds = %block_.L_44c2c9
  %3611 = add i64 %2627, -56
  %3612 = add i64 %3610, 4
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i64*
  %3614 = load i64, i64* %3613, align 8
  store i64 %3614, i64* %RDI.i44, align 8
  %3615 = add i64 %3610, 8
  store i64 %3615, i64* %3, align 8
  %3616 = load i64, i64* %2635, align 8
  store i64 %3616, i64* %RAX.i825, align 8
  %3617 = add i64 %3616, 72
  %3618 = add i64 %3610, 12
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i64*
  %3620 = load i64, i64* %3619, align 8
  store i64 %3620, i64* %RAX.i825, align 8
  %3621 = add i64 %2627, -60
  %3622 = add i64 %3610, 16
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  %3625 = sext i32 %3624 to i64
  store i64 %3625, i64* %RCX.i863, align 8
  %3626 = add i64 %3620, %3625
  store i64 %3626, i64* %RAX.i825, align 8
  %3627 = icmp ult i64 %3626, %3620
  %3628 = icmp ult i64 %3626, %3625
  %3629 = or i1 %3627, %3628
  %3630 = zext i1 %3629 to i8
  store i8 %3630, i8* %14, align 1
  %3631 = trunc i64 %3626 to i32
  %3632 = and i32 %3631, 255
  %3633 = tail call i32 @llvm.ctpop.i32(i32 %3632)
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  %3636 = xor i8 %3635, 1
  store i8 %3636, i8* %21, align 1
  %3637 = xor i64 %3620, %3625
  %3638 = xor i64 %3637, %3626
  %3639 = lshr i64 %3638, 4
  %3640 = trunc i64 %3639 to i8
  %3641 = and i8 %3640, 1
  store i8 %3641, i8* %27, align 1
  %3642 = icmp eq i64 %3626, 0
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %30, align 1
  %3644 = lshr i64 %3626, 63
  %3645 = trunc i64 %3644 to i8
  store i8 %3645, i8* %33, align 1
  %3646 = lshr i64 %3620, 63
  %3647 = lshr i64 %3625, 63
  %3648 = xor i64 %3644, %3646
  %3649 = xor i64 %3644, %3647
  %3650 = add nuw nsw i64 %3648, %3649
  %3651 = icmp eq i64 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %39, align 1
  %3653 = add i64 %2627, -20
  %3654 = add i64 %3610, 23
  store i64 %3654, i64* %3, align 8
  %3655 = inttoptr i64 %3653 to i32*
  %3656 = load i32, i32* %3655, align 4
  %3657 = sext i32 %3656 to i64
  store i64 %3657, i64* %RDX.i1293, align 8
  store i64 %3626, i64* %RSI.i147, align 8
  %3658 = add i64 %3610, -306984
  %3659 = add i64 %3610, 31
  %3660 = load i64, i64* %6, align 8
  %3661 = add i64 %3660, -8
  %3662 = inttoptr i64 %3661 to i64*
  store i64 %3659, i64* %3662, align 8
  store i64 %3661, i64* %6, align 8
  store i64 %3658, i64* %3, align 8
  %call2_44c2f2 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3658, %struct.Memory* %MEMORY.44)
  %3663 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b168_type* @G__0x45b168 to i64), i64* %RSI.i147, align 8
  store i64 ptrtoint (%G__0x45afe0_type* @G__0x45afe0 to i64), i64* %R8.i916.pre-phi, align 8
  %3664 = load i64, i64* %RBP.i, align 8
  %3665 = add i64 %3664, -56
  %3666 = add i64 %3663, 24
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i64*
  %3668 = load i64, i64* %3667, align 8
  store i64 %3668, i64* %RCX.i863, align 8
  %3669 = add i64 %3664, -20
  %3670 = add i64 %3663, 28
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i32*
  %3672 = load i32, i32* %3671, align 4
  %3673 = sext i32 %3672 to i64
  store i64 %3673, i64* %RDX.i1293, align 8
  %3674 = add i64 %3668, %3673
  %3675 = add i64 %3663, 32
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3674 to i8*
  store i8 0, i8* %3676, align 1
  %3677 = load i64, i64* %RBP.i, align 8
  %3678 = add i64 %3677, -8
  %3679 = load i64, i64* %3, align 8
  %3680 = add i64 %3679, 4
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3678 to i64*
  %3682 = load i64, i64* %3681, align 8
  store i64 %3682, i64* %RDI.i44, align 8
  %3683 = add i64 %3677, -36
  %3684 = add i64 %3679, 8
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i32*
  %3686 = load i32, i32* %3685, align 4
  %3687 = zext i32 %3686 to i64
  store i64 %3687, i64* %2546, align 8
  %3688 = add i64 %3677, -40
  %3689 = add i64 %3679, 12
  store i64 %3689, i64* %3, align 8
  %3690 = inttoptr i64 %3688 to i32*
  %3691 = load i32, i32* %3690, align 4
  %3692 = add i32 %3691, %3686
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %2546, align 8
  %3694 = icmp ult i32 %3692, %3686
  %3695 = icmp ult i32 %3692, %3691
  %3696 = or i1 %3694, %3695
  %3697 = zext i1 %3696 to i8
  store i8 %3697, i8* %14, align 1
  %3698 = and i32 %3692, 255
  %3699 = tail call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  store i8 %3702, i8* %21, align 1
  %3703 = xor i32 %3691, %3686
  %3704 = xor i32 %3703, %3692
  %3705 = lshr i32 %3704, 4
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  store i8 %3707, i8* %27, align 1
  %3708 = icmp eq i32 %3692, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %30, align 1
  %3710 = lshr i32 %3692, 31
  %3711 = trunc i32 %3710 to i8
  store i8 %3711, i8* %33, align 1
  %3712 = lshr i32 %3686, 31
  %3713 = lshr i32 %3691, 31
  %3714 = xor i32 %3710, %3712
  %3715 = xor i32 %3710, %3713
  %3716 = add nuw nsw i32 %3714, %3715
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  store i8 %3718, i8* %39, align 1
  %3719 = add i64 %3679, 16
  store i64 %3719, i64* %3, align 8
  %3720 = load i32, i32* %3685, align 4
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %2548, align 8
  %3722 = add i64 %3679, 20
  store i64 %3722, i64* %3, align 8
  %3723 = load i32, i32* %3690, align 4
  %3724 = add i32 %3723, %3720
  %3725 = zext i32 %3724 to i64
  store i64 %3725, i64* %2548, align 8
  %3726 = icmp ult i32 %3724, %3720
  %3727 = icmp ult i32 %3724, %3723
  %3728 = or i1 %3726, %3727
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %14, align 1
  %3730 = and i32 %3724, 255
  %3731 = tail call i32 @llvm.ctpop.i32(i32 %3730)
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  %3734 = xor i8 %3733, 1
  store i8 %3734, i8* %21, align 1
  %3735 = xor i32 %3723, %3720
  %3736 = xor i32 %3735, %3724
  %3737 = lshr i32 %3736, 4
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  store i8 %3739, i8* %27, align 1
  %3740 = icmp eq i32 %3724, 0
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %30, align 1
  %3742 = lshr i32 %3724, 31
  %3743 = trunc i32 %3742 to i8
  store i8 %3743, i8* %33, align 1
  %3744 = lshr i32 %3720, 31
  %3745 = lshr i32 %3723, 31
  %3746 = xor i32 %3742, %3744
  %3747 = xor i32 %3742, %3745
  %3748 = add nuw nsw i32 %3746, %3747
  %3749 = icmp eq i32 %3748, 2
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %39, align 1
  %3751 = add i64 %3677, -56
  %3752 = add i64 %3679, 24
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i64*
  %3754 = load i64, i64* %3753, align 8
  store i64 %3693, i64* %RDX.i1293, align 8
  %3755 = load i64, i64* %RBP.i, align 8
  %3756 = add i64 %3755, -264
  %3757 = add i64 %3679, 34
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i64*
  store i64 %3754, i64* %3758, align 8
  %3759 = load i32, i32* %R10D.i173, align 4
  %3760 = zext i32 %3759 to i64
  %3761 = load i64, i64* %3, align 8
  store i64 %3760, i64* %RCX.i863, align 8
  %3762 = load i64, i64* %RBP.i, align 8
  %3763 = add i64 %3762, -264
  %3764 = add i64 %3761, 10
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3763 to i64*
  %3766 = load i64, i64* %3765, align 8
  store i64 %3766, i64* %2546, align 8
  %3767 = add i64 %3762, -272
  %3768 = load i64, i64* %RAX.i825, align 8
  %3769 = add i64 %3761, 17
  store i64 %3769, i64* %3, align 8
  %3770 = inttoptr i64 %3767 to i64*
  store i64 %3768, i64* %3770, align 8
  %3771 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %3772 = add i64 %3771, -306650
  %3773 = add i64 %3771, 7
  %3774 = load i64, i64* %6, align 8
  %3775 = add i64 %3774, -8
  %3776 = inttoptr i64 %3775 to i64*
  store i64 %3773, i64* %3776, align 8
  store i64 %3775, i64* %6, align 8
  store i64 %3772, i64* %3, align 8
  %3777 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44c2f2)
  %3778 = load i64, i64* %RBP.i, align 8
  %3779 = add i64 %3778, -276
  %3780 = load i32, i32* %EAX.i889, align 4
  %3781 = load i64, i64* %3, align 8
  %3782 = add i64 %3781, 6
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3779 to i32*
  store i32 %3780, i32* %3783, align 4
  %.pre137 = load i64, i64* %RBP.i, align 8
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_44c357

block_.L_44c357:                                  ; preds = %block_44c2d8, %block_.L_44c2c9
  %3784 = phi i64 [ %3610, %block_.L_44c2c9 ], [ %.pre138, %block_44c2d8 ]
  %3785 = phi i64 [ %2627, %block_.L_44c2c9 ], [ %.pre137, %block_44c2d8 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.44, %block_.L_44c2c9 ], [ %3777, %block_44c2d8 ]
  %3786 = add i64 %3785, -16
  %3787 = add i64 %3784, 4
  store i64 %3787, i64* %3, align 8
  %3788 = inttoptr i64 %3786 to i64*
  %3789 = load i64, i64* %3788, align 8
  store i64 %3789, i64* %RAX.i825, align 8
  %3790 = add i64 %3789, 80
  %3791 = add i64 %3784, 9
  store i64 %3791, i64* %3, align 8
  %3792 = inttoptr i64 %3790 to i64*
  %3793 = load i64, i64* %3792, align 8
  store i8 0, i8* %14, align 1
  %3794 = trunc i64 %3793 to i32
  %3795 = and i32 %3794, 255
  %3796 = tail call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  store i8 %3799, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3800 = icmp eq i64 %3793, 0
  %3801 = zext i1 %3800 to i8
  store i8 %3801, i8* %30, align 1
  %3802 = lshr i64 %3793, 63
  %3803 = trunc i64 %3802 to i8
  store i8 %3803, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %3800, i64 142, i64 15
  %3804 = add i64 %3784, %.v199
  store i64 %3804, i64* %3, align 8
  br i1 %3800, label %block_.L_44c3e5, label %block_44c366

block_44c366:                                     ; preds = %block_.L_44c357
  %3805 = add i64 %3785, -56
  %3806 = add i64 %3804, 4
  store i64 %3806, i64* %3, align 8
  %3807 = inttoptr i64 %3805 to i64*
  %3808 = load i64, i64* %3807, align 8
  store i64 %3808, i64* %RDI.i44, align 8
  %3809 = add i64 %3804, 8
  store i64 %3809, i64* %3, align 8
  %3810 = load i64, i64* %3788, align 8
  store i64 %3810, i64* %RAX.i825, align 8
  %3811 = add i64 %3810, 80
  %3812 = add i64 %3804, 12
  store i64 %3812, i64* %3, align 8
  %3813 = inttoptr i64 %3811 to i64*
  %3814 = load i64, i64* %3813, align 8
  store i64 %3814, i64* %RAX.i825, align 8
  %3815 = add i64 %3785, -60
  %3816 = add i64 %3804, 16
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = sext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i863, align 8
  %3820 = add i64 %3814, %3819
  store i64 %3820, i64* %RAX.i825, align 8
  %3821 = icmp ult i64 %3820, %3814
  %3822 = icmp ult i64 %3820, %3819
  %3823 = or i1 %3821, %3822
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %14, align 1
  %3825 = trunc i64 %3820 to i32
  %3826 = and i32 %3825, 255
  %3827 = tail call i32 @llvm.ctpop.i32(i32 %3826)
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  %3830 = xor i8 %3829, 1
  store i8 %3830, i8* %21, align 1
  %3831 = xor i64 %3814, %3819
  %3832 = xor i64 %3831, %3820
  %3833 = lshr i64 %3832, 4
  %3834 = trunc i64 %3833 to i8
  %3835 = and i8 %3834, 1
  store i8 %3835, i8* %27, align 1
  %3836 = icmp eq i64 %3820, 0
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %30, align 1
  %3838 = lshr i64 %3820, 63
  %3839 = trunc i64 %3838 to i8
  store i8 %3839, i8* %33, align 1
  %3840 = lshr i64 %3814, 63
  %3841 = lshr i64 %3819, 63
  %3842 = xor i64 %3838, %3840
  %3843 = xor i64 %3838, %3841
  %3844 = add nuw nsw i64 %3842, %3843
  %3845 = icmp eq i64 %3844, 2
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %39, align 1
  %3847 = add i64 %3785, -20
  %3848 = add i64 %3804, 23
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  %3850 = load i32, i32* %3849, align 4
  %3851 = sext i32 %3850 to i64
  store i64 %3851, i64* %RDX.i1293, align 8
  store i64 %3820, i64* %RSI.i147, align 8
  %3852 = add i64 %3804, -307126
  %3853 = add i64 %3804, 31
  %3854 = load i64, i64* %6, align 8
  %3855 = add i64 %3854, -8
  %3856 = inttoptr i64 %3855 to i64*
  store i64 %3853, i64* %3856, align 8
  store i64 %3855, i64* %6, align 8
  store i64 %3852, i64* %3, align 8
  %call2_44c380 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3852, %struct.Memory* %MEMORY.49)
  %3857 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b168_type* @G__0x45b168 to i64), i64* %RSI.i147, align 8
  store i64 ptrtoint (%G__0x45afe8_type* @G__0x45afe8 to i64), i64* %R8.i916.pre-phi, align 8
  %3858 = load i64, i64* %RBP.i, align 8
  %3859 = add i64 %3858, -56
  %3860 = add i64 %3857, 24
  store i64 %3860, i64* %3, align 8
  %3861 = inttoptr i64 %3859 to i64*
  %3862 = load i64, i64* %3861, align 8
  store i64 %3862, i64* %RCX.i863, align 8
  %3863 = add i64 %3858, -20
  %3864 = add i64 %3857, 28
  store i64 %3864, i64* %3, align 8
  %3865 = inttoptr i64 %3863 to i32*
  %3866 = load i32, i32* %3865, align 4
  %3867 = sext i32 %3866 to i64
  store i64 %3867, i64* %RDX.i1293, align 8
  %3868 = add i64 %3862, %3867
  %3869 = add i64 %3857, 32
  store i64 %3869, i64* %3, align 8
  %3870 = inttoptr i64 %3868 to i8*
  store i8 0, i8* %3870, align 1
  %3871 = load i64, i64* %RBP.i, align 8
  %3872 = add i64 %3871, -8
  %3873 = load i64, i64* %3, align 8
  %3874 = add i64 %3873, 4
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3872 to i64*
  %3876 = load i64, i64* %3875, align 8
  store i64 %3876, i64* %RDI.i44, align 8
  %3877 = add i64 %3871, -36
  %3878 = add i64 %3873, 8
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3877 to i32*
  %3880 = load i32, i32* %3879, align 4
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %2546, align 8
  %3882 = add i64 %3871, -40
  %3883 = add i64 %3873, 12
  store i64 %3883, i64* %3, align 8
  %3884 = inttoptr i64 %3882 to i32*
  %3885 = load i32, i32* %3884, align 4
  %3886 = add i32 %3885, %3880
  %3887 = zext i32 %3886 to i64
  store i64 %3887, i64* %2546, align 8
  %3888 = icmp ult i32 %3886, %3880
  %3889 = icmp ult i32 %3886, %3885
  %3890 = or i1 %3888, %3889
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %14, align 1
  %3892 = and i32 %3886, 255
  %3893 = tail call i32 @llvm.ctpop.i32(i32 %3892)
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = xor i8 %3895, 1
  store i8 %3896, i8* %21, align 1
  %3897 = xor i32 %3885, %3880
  %3898 = xor i32 %3897, %3886
  %3899 = lshr i32 %3898, 4
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  store i8 %3901, i8* %27, align 1
  %3902 = icmp eq i32 %3886, 0
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %30, align 1
  %3904 = lshr i32 %3886, 31
  %3905 = trunc i32 %3904 to i8
  store i8 %3905, i8* %33, align 1
  %3906 = lshr i32 %3880, 31
  %3907 = lshr i32 %3885, 31
  %3908 = xor i32 %3904, %3906
  %3909 = xor i32 %3904, %3907
  %3910 = add nuw nsw i32 %3908, %3909
  %3911 = icmp eq i32 %3910, 2
  %3912 = zext i1 %3911 to i8
  store i8 %3912, i8* %39, align 1
  %3913 = add i64 %3873, 16
  store i64 %3913, i64* %3, align 8
  %3914 = load i32, i32* %3879, align 4
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %2548, align 8
  %3916 = add i64 %3873, 20
  store i64 %3916, i64* %3, align 8
  %3917 = load i32, i32* %3884, align 4
  %3918 = add i32 %3917, %3914
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %2548, align 8
  %3920 = icmp ult i32 %3918, %3914
  %3921 = icmp ult i32 %3918, %3917
  %3922 = or i1 %3920, %3921
  %3923 = zext i1 %3922 to i8
  store i8 %3923, i8* %14, align 1
  %3924 = and i32 %3918, 255
  %3925 = tail call i32 @llvm.ctpop.i32(i32 %3924)
  %3926 = trunc i32 %3925 to i8
  %3927 = and i8 %3926, 1
  %3928 = xor i8 %3927, 1
  store i8 %3928, i8* %21, align 1
  %3929 = xor i32 %3917, %3914
  %3930 = xor i32 %3929, %3918
  %3931 = lshr i32 %3930, 4
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  store i8 %3933, i8* %27, align 1
  %3934 = icmp eq i32 %3918, 0
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %30, align 1
  %3936 = lshr i32 %3918, 31
  %3937 = trunc i32 %3936 to i8
  store i8 %3937, i8* %33, align 1
  %3938 = lshr i32 %3914, 31
  %3939 = lshr i32 %3917, 31
  %3940 = xor i32 %3936, %3938
  %3941 = xor i32 %3936, %3939
  %3942 = add nuw nsw i32 %3940, %3941
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %39, align 1
  %3945 = add i64 %3871, -56
  %3946 = add i64 %3873, 24
  store i64 %3946, i64* %3, align 8
  %3947 = inttoptr i64 %3945 to i64*
  %3948 = load i64, i64* %3947, align 8
  store i64 %3887, i64* %RDX.i1293, align 8
  %3949 = load i64, i64* %RBP.i, align 8
  %3950 = add i64 %3949, -288
  %3951 = add i64 %3873, 34
  store i64 %3951, i64* %3, align 8
  %3952 = inttoptr i64 %3950 to i64*
  store i64 %3948, i64* %3952, align 8
  %3953 = load i32, i32* %R10D.i173, align 4
  %3954 = zext i32 %3953 to i64
  %3955 = load i64, i64* %3, align 8
  store i64 %3954, i64* %RCX.i863, align 8
  %3956 = load i64, i64* %RBP.i, align 8
  %3957 = add i64 %3956, -288
  %3958 = add i64 %3955, 10
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i64*
  %3960 = load i64, i64* %3959, align 8
  store i64 %3960, i64* %2546, align 8
  %3961 = add i64 %3956, -296
  %3962 = load i64, i64* %RAX.i825, align 8
  %3963 = add i64 %3955, 17
  store i64 %3963, i64* %3, align 8
  %3964 = inttoptr i64 %3961 to i64*
  store i64 %3962, i64* %3964, align 8
  %3965 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %3966 = add i64 %3965, -306792
  %3967 = add i64 %3965, 7
  %3968 = load i64, i64* %6, align 8
  %3969 = add i64 %3968, -8
  %3970 = inttoptr i64 %3969 to i64*
  store i64 %3967, i64* %3970, align 8
  store i64 %3969, i64* %6, align 8
  store i64 %3966, i64* %3, align 8
  %3971 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44c380)
  %3972 = load i64, i64* %RBP.i, align 8
  %3973 = add i64 %3972, -300
  %3974 = load i32, i32* %EAX.i889, align 4
  %3975 = load i64, i64* %3, align 8
  %3976 = add i64 %3975, 6
  store i64 %3976, i64* %3, align 8
  %3977 = inttoptr i64 %3973 to i32*
  store i32 %3974, i32* %3977, align 4
  %.pre139 = load i64, i64* %RBP.i, align 8
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_44c3e5

block_.L_44c3e5:                                  ; preds = %block_44c366, %block_.L_44c357
  %3978 = phi i64 [ %3804, %block_.L_44c357 ], [ %.pre140, %block_44c366 ]
  %3979 = phi i64 [ %3785, %block_.L_44c357 ], [ %.pre139, %block_44c366 ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.49, %block_.L_44c357 ], [ %3971, %block_44c366 ]
  %3980 = add i64 %3979, -16
  %3981 = add i64 %3978, 4
  store i64 %3981, i64* %3, align 8
  %3982 = inttoptr i64 %3980 to i64*
  %3983 = load i64, i64* %3982, align 8
  store i64 %3983, i64* %RAX.i825, align 8
  %3984 = add i64 %3983, 88
  %3985 = add i64 %3978, 9
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i64*
  %3987 = load i64, i64* %3986, align 8
  store i8 0, i8* %14, align 1
  %3988 = trunc i64 %3987 to i32
  %3989 = and i32 %3988, 255
  %3990 = tail call i32 @llvm.ctpop.i32(i32 %3989)
  %3991 = trunc i32 %3990 to i8
  %3992 = and i8 %3991, 1
  %3993 = xor i8 %3992, 1
  store i8 %3993, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3994 = icmp eq i64 %3987, 0
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %30, align 1
  %3996 = lshr i64 %3987, 63
  %3997 = trunc i64 %3996 to i8
  store i8 %3997, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v200 = select i1 %3994, i64 142, i64 15
  %3998 = add i64 %3978, %.v200
  store i64 %3998, i64* %3, align 8
  br i1 %3994, label %block_.L_44c473, label %block_44c3f4

block_44c3f4:                                     ; preds = %block_.L_44c3e5
  %3999 = add i64 %3979, -56
  %4000 = add i64 %3998, 4
  store i64 %4000, i64* %3, align 8
  %4001 = inttoptr i64 %3999 to i64*
  %4002 = load i64, i64* %4001, align 8
  store i64 %4002, i64* %RDI.i44, align 8
  %4003 = add i64 %3998, 8
  store i64 %4003, i64* %3, align 8
  %4004 = load i64, i64* %3982, align 8
  store i64 %4004, i64* %RAX.i825, align 8
  %4005 = add i64 %4004, 88
  %4006 = add i64 %3998, 12
  store i64 %4006, i64* %3, align 8
  %4007 = inttoptr i64 %4005 to i64*
  %4008 = load i64, i64* %4007, align 8
  store i64 %4008, i64* %RAX.i825, align 8
  %4009 = add i64 %3979, -60
  %4010 = add i64 %3998, 16
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4009 to i32*
  %4012 = load i32, i32* %4011, align 4
  %4013 = sext i32 %4012 to i64
  store i64 %4013, i64* %RCX.i863, align 8
  %4014 = add i64 %4008, %4013
  store i64 %4014, i64* %RAX.i825, align 8
  %4015 = icmp ult i64 %4014, %4008
  %4016 = icmp ult i64 %4014, %4013
  %4017 = or i1 %4015, %4016
  %4018 = zext i1 %4017 to i8
  store i8 %4018, i8* %14, align 1
  %4019 = trunc i64 %4014 to i32
  %4020 = and i32 %4019, 255
  %4021 = tail call i32 @llvm.ctpop.i32(i32 %4020)
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  %4024 = xor i8 %4023, 1
  store i8 %4024, i8* %21, align 1
  %4025 = xor i64 %4008, %4013
  %4026 = xor i64 %4025, %4014
  %4027 = lshr i64 %4026, 4
  %4028 = trunc i64 %4027 to i8
  %4029 = and i8 %4028, 1
  store i8 %4029, i8* %27, align 1
  %4030 = icmp eq i64 %4014, 0
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %30, align 1
  %4032 = lshr i64 %4014, 63
  %4033 = trunc i64 %4032 to i8
  store i8 %4033, i8* %33, align 1
  %4034 = lshr i64 %4008, 63
  %4035 = lshr i64 %4013, 63
  %4036 = xor i64 %4032, %4034
  %4037 = xor i64 %4032, %4035
  %4038 = add nuw nsw i64 %4036, %4037
  %4039 = icmp eq i64 %4038, 2
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %39, align 1
  %4041 = add i64 %3979, -20
  %4042 = add i64 %3998, 23
  store i64 %4042, i64* %3, align 8
  %4043 = inttoptr i64 %4041 to i32*
  %4044 = load i32, i32* %4043, align 4
  %4045 = sext i32 %4044 to i64
  store i64 %4045, i64* %RDX.i1293, align 8
  store i64 %4014, i64* %RSI.i147, align 8
  %4046 = add i64 %3998, -307268
  %4047 = add i64 %3998, 31
  %4048 = load i64, i64* %6, align 8
  %4049 = add i64 %4048, -8
  %4050 = inttoptr i64 %4049 to i64*
  store i64 %4047, i64* %4050, align 8
  store i64 %4049, i64* %6, align 8
  store i64 %4046, i64* %3, align 8
  %call2_44c40e = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %4046, %struct.Memory* %MEMORY.50)
  %4051 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b168_type* @G__0x45b168 to i64), i64* %RSI.i147, align 8
  store i64 ptrtoint (%G__0x459933_type* @G__0x459933 to i64), i64* %R8.i916.pre-phi, align 8
  %4052 = load i64, i64* %RBP.i, align 8
  %4053 = add i64 %4052, -56
  %4054 = add i64 %4051, 24
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i64*
  %4056 = load i64, i64* %4055, align 8
  store i64 %4056, i64* %RCX.i863, align 8
  %4057 = add i64 %4052, -20
  %4058 = add i64 %4051, 28
  store i64 %4058, i64* %3, align 8
  %4059 = inttoptr i64 %4057 to i32*
  %4060 = load i32, i32* %4059, align 4
  %4061 = sext i32 %4060 to i64
  store i64 %4061, i64* %RDX.i1293, align 8
  %4062 = add i64 %4056, %4061
  %4063 = add i64 %4051, 32
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i8*
  store i8 0, i8* %4064, align 1
  %4065 = load i64, i64* %RBP.i, align 8
  %4066 = add i64 %4065, -8
  %4067 = load i64, i64* %3, align 8
  %4068 = add i64 %4067, 4
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4066 to i64*
  %4070 = load i64, i64* %4069, align 8
  store i64 %4070, i64* %RDI.i44, align 8
  %4071 = add i64 %4065, -36
  %4072 = add i64 %4067, 8
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4071 to i32*
  %4074 = load i32, i32* %4073, align 4
  %4075 = zext i32 %4074 to i64
  store i64 %4075, i64* %2546, align 8
  %4076 = add i64 %4065, -40
  %4077 = add i64 %4067, 12
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = add i32 %4079, %4074
  %4081 = zext i32 %4080 to i64
  store i64 %4081, i64* %2546, align 8
  %4082 = icmp ult i32 %4080, %4074
  %4083 = icmp ult i32 %4080, %4079
  %4084 = or i1 %4082, %4083
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %14, align 1
  %4086 = and i32 %4080, 255
  %4087 = tail call i32 @llvm.ctpop.i32(i32 %4086)
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = xor i8 %4089, 1
  store i8 %4090, i8* %21, align 1
  %4091 = xor i32 %4079, %4074
  %4092 = xor i32 %4091, %4080
  %4093 = lshr i32 %4092, 4
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  store i8 %4095, i8* %27, align 1
  %4096 = icmp eq i32 %4080, 0
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %30, align 1
  %4098 = lshr i32 %4080, 31
  %4099 = trunc i32 %4098 to i8
  store i8 %4099, i8* %33, align 1
  %4100 = lshr i32 %4074, 31
  %4101 = lshr i32 %4079, 31
  %4102 = xor i32 %4098, %4100
  %4103 = xor i32 %4098, %4101
  %4104 = add nuw nsw i32 %4102, %4103
  %4105 = icmp eq i32 %4104, 2
  %4106 = zext i1 %4105 to i8
  store i8 %4106, i8* %39, align 1
  %4107 = add i64 %4067, 16
  store i64 %4107, i64* %3, align 8
  %4108 = load i32, i32* %4073, align 4
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %2548, align 8
  %4110 = add i64 %4067, 20
  store i64 %4110, i64* %3, align 8
  %4111 = load i32, i32* %4078, align 4
  %4112 = add i32 %4111, %4108
  %4113 = zext i32 %4112 to i64
  store i64 %4113, i64* %2548, align 8
  %4114 = icmp ult i32 %4112, %4108
  %4115 = icmp ult i32 %4112, %4111
  %4116 = or i1 %4114, %4115
  %4117 = zext i1 %4116 to i8
  store i8 %4117, i8* %14, align 1
  %4118 = and i32 %4112, 255
  %4119 = tail call i32 @llvm.ctpop.i32(i32 %4118)
  %4120 = trunc i32 %4119 to i8
  %4121 = and i8 %4120, 1
  %4122 = xor i8 %4121, 1
  store i8 %4122, i8* %21, align 1
  %4123 = xor i32 %4111, %4108
  %4124 = xor i32 %4123, %4112
  %4125 = lshr i32 %4124, 4
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  store i8 %4127, i8* %27, align 1
  %4128 = icmp eq i32 %4112, 0
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %30, align 1
  %4130 = lshr i32 %4112, 31
  %4131 = trunc i32 %4130 to i8
  store i8 %4131, i8* %33, align 1
  %4132 = lshr i32 %4108, 31
  %4133 = lshr i32 %4111, 31
  %4134 = xor i32 %4130, %4132
  %4135 = xor i32 %4130, %4133
  %4136 = add nuw nsw i32 %4134, %4135
  %4137 = icmp eq i32 %4136, 2
  %4138 = zext i1 %4137 to i8
  store i8 %4138, i8* %39, align 1
  %4139 = add i64 %4065, -56
  %4140 = add i64 %4067, 24
  store i64 %4140, i64* %3, align 8
  %4141 = inttoptr i64 %4139 to i64*
  %4142 = load i64, i64* %4141, align 8
  store i64 %4081, i64* %RDX.i1293, align 8
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -312
  %4145 = add i64 %4067, 34
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i64*
  store i64 %4142, i64* %4146, align 8
  %4147 = load i32, i32* %R10D.i173, align 4
  %4148 = zext i32 %4147 to i64
  %4149 = load i64, i64* %3, align 8
  store i64 %4148, i64* %RCX.i863, align 8
  %4150 = load i64, i64* %RBP.i, align 8
  %4151 = add i64 %4150, -312
  %4152 = add i64 %4149, 10
  store i64 %4152, i64* %3, align 8
  %4153 = inttoptr i64 %4151 to i64*
  %4154 = load i64, i64* %4153, align 8
  store i64 %4154, i64* %2546, align 8
  %4155 = add i64 %4150, -320
  %4156 = load i64, i64* %RAX.i825, align 8
  %4157 = add i64 %4149, 17
  store i64 %4157, i64* %3, align 8
  %4158 = inttoptr i64 %4155 to i64*
  store i64 %4156, i64* %4158, align 8
  %4159 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %4160 = add i64 %4159, -306934
  %4161 = add i64 %4159, 7
  %4162 = load i64, i64* %6, align 8
  %4163 = add i64 %4162, -8
  %4164 = inttoptr i64 %4163 to i64*
  store i64 %4161, i64* %4164, align 8
  store i64 %4163, i64* %6, align 8
  store i64 %4160, i64* %3, align 8
  %4165 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_44c40e)
  %4166 = load i64, i64* %RBP.i, align 8
  %4167 = add i64 %4166, -324
  %4168 = load i32, i32* %EAX.i889, align 4
  %4169 = load i64, i64* %3, align 8
  %4170 = add i64 %4169, 6
  store i64 %4170, i64* %3, align 8
  %4171 = inttoptr i64 %4167 to i32*
  store i32 %4168, i32* %4171, align 4
  %.pre141 = load i64, i64* %RBP.i, align 8
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_44c473

block_.L_44c473:                                  ; preds = %block_44c3f4, %block_.L_44c3e5
  %4172 = phi i64 [ %3998, %block_.L_44c3e5 ], [ %.pre142, %block_44c3f4 ]
  %4173 = phi i64 [ %3979, %block_.L_44c3e5 ], [ %.pre141, %block_44c3f4 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.50, %block_.L_44c3e5 ], [ %4165, %block_44c3f4 ]
  %4174 = add i64 %4173, -28
  %4175 = add i64 %4172, 7
  store i64 %4175, i64* %3, align 8
  %4176 = inttoptr i64 %4174 to i32*
  store i32 0, i32* %4176, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_44c47a

block_.L_44c47a:                                  ; preds = %block_44c48d, %block_.L_44c473
  %4177 = phi i64 [ %.pre143, %block_.L_44c473 ], [ %4461, %block_44c48d ]
  %MEMORY.52 = phi %struct.Memory* [ %MEMORY.51, %block_.L_44c473 ], [ %4423, %block_44c48d ]
  %4178 = load i64, i64* %RBP.i, align 8
  %4179 = add i64 %4178, -28
  %4180 = add i64 %4177, 3
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4179 to i32*
  %4182 = load i32, i32* %4181, align 4
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i825, align 8
  %4184 = add i64 %4178, -16
  %4185 = add i64 %4177, 7
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i64*
  %4187 = load i64, i64* %4186, align 8
  store i64 %4187, i64* %RCX.i863, align 8
  %4188 = add i64 %4187, 272
  %4189 = add i64 %4177, 13
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4188 to i32*
  %4191 = load i32, i32* %4190, align 4
  %4192 = sub i32 %4182, %4191
  %4193 = icmp ult i32 %4182, %4191
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %14, align 1
  %4195 = and i32 %4192, 255
  %4196 = tail call i32 @llvm.ctpop.i32(i32 %4195)
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = xor i8 %4198, 1
  store i8 %4199, i8* %21, align 1
  %4200 = xor i32 %4191, %4182
  %4201 = xor i32 %4200, %4192
  %4202 = lshr i32 %4201, 4
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  store i8 %4204, i8* %27, align 1
  %4205 = icmp eq i32 %4192, 0
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %30, align 1
  %4207 = lshr i32 %4192, 31
  %4208 = trunc i32 %4207 to i8
  store i8 %4208, i8* %33, align 1
  %4209 = lshr i32 %4182, 31
  %4210 = lshr i32 %4191, 31
  %4211 = xor i32 %4210, %4209
  %4212 = xor i32 %4207, %4209
  %4213 = add nuw nsw i32 %4212, %4211
  %4214 = icmp eq i32 %4213, 2
  %4215 = zext i1 %4214 to i8
  store i8 %4215, i8* %39, align 1
  %4216 = icmp ne i8 %4208, 0
  %4217 = xor i1 %4216, %4214
  %.v165 = select i1 %4217, i64 19, i64 194
  %4218 = add i64 %4177, %.v165
  store i64 %4218, i64* %3, align 8
  br i1 %4217, label %block_44c48d, label %block_.L_44c53c

block_44c48d:                                     ; preds = %block_.L_44c47a
  %4219 = add i64 %4178, -56
  %4220 = add i64 %4218, 4
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i64*
  %4222 = load i64, i64* %4221, align 8
  store i64 %4222, i64* %RDI.i44, align 8
  %4223 = add i64 %4218, 8
  store i64 %4223, i64* %3, align 8
  %4224 = load i64, i64* %4186, align 8
  store i64 %4224, i64* %RAX.i825, align 8
  %4225 = add i64 %4224, 256
  %4226 = add i64 %4218, 15
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i64*
  %4228 = load i64, i64* %4227, align 8
  store i64 %4228, i64* %RAX.i825, align 8
  %4229 = add i64 %4218, 19
  store i64 %4229, i64* %3, align 8
  %4230 = load i32, i32* %4181, align 4
  %4231 = sext i32 %4230 to i64
  store i64 %4231, i64* %RCX.i863, align 8
  %4232 = shl nsw i64 %4231, 3
  %4233 = add i64 %4232, %4228
  %4234 = add i64 %4218, 23
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i64*
  %4236 = load i64, i64* %4235, align 8
  store i64 %4236, i64* %RAX.i825, align 8
  %4237 = add i64 %4178, -60
  %4238 = add i64 %4218, 27
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4237 to i32*
  %4240 = load i32, i32* %4239, align 4
  %4241 = sext i32 %4240 to i64
  store i64 %4241, i64* %RCX.i863, align 8
  %4242 = add i64 %4236, %4241
  store i64 %4242, i64* %RAX.i825, align 8
  %4243 = icmp ult i64 %4242, %4236
  %4244 = icmp ult i64 %4242, %4241
  %4245 = or i1 %4243, %4244
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %14, align 1
  %4247 = trunc i64 %4242 to i32
  %4248 = and i32 %4247, 255
  %4249 = tail call i32 @llvm.ctpop.i32(i32 %4248)
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  %4252 = xor i8 %4251, 1
  store i8 %4252, i8* %21, align 1
  %4253 = xor i64 %4236, %4241
  %4254 = xor i64 %4253, %4242
  %4255 = lshr i64 %4254, 4
  %4256 = trunc i64 %4255 to i8
  %4257 = and i8 %4256, 1
  store i8 %4257, i8* %27, align 1
  %4258 = icmp eq i64 %4242, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %30, align 1
  %4260 = lshr i64 %4242, 63
  %4261 = trunc i64 %4260 to i8
  store i8 %4261, i8* %33, align 1
  %4262 = lshr i64 %4236, 63
  %4263 = lshr i64 %4241, 63
  %4264 = xor i64 %4260, %4262
  %4265 = xor i64 %4260, %4263
  %4266 = add nuw nsw i64 %4264, %4265
  %4267 = icmp eq i64 %4266, 2
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %39, align 1
  %4269 = add i64 %4178, -20
  %4270 = add i64 %4218, 34
  store i64 %4270, i64* %3, align 8
  %4271 = inttoptr i64 %4269 to i32*
  %4272 = load i32, i32* %4271, align 4
  %4273 = sext i32 %4272 to i64
  store i64 %4273, i64* %RDX.i1293, align 8
  store i64 %4242, i64* %RSI.i147, align 8
  %4274 = add i64 %4218, -307421
  %4275 = add i64 %4218, 42
  %4276 = load i64, i64* %6, align 8
  %4277 = add i64 %4276, -8
  %4278 = inttoptr i64 %4277 to i64*
  store i64 %4275, i64* %4278, align 8
  store i64 %4277, i64* %6, align 8
  store i64 %4274, i64* %3, align 8
  %call2_44c4b2 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %4274, %struct.Memory* %MEMORY.52)
  %4279 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b168_type* @G__0x45b168 to i64), i64* %RSI.i147, align 8
  %4280 = load i64, i64* %RBP.i, align 8
  %4281 = add i64 %4280, -56
  %4282 = add i64 %4279, 14
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i64*
  %4284 = load i64, i64* %4283, align 8
  store i64 %4284, i64* %RCX.i863, align 8
  %4285 = add i64 %4280, -20
  %4286 = add i64 %4279, 18
  store i64 %4286, i64* %3, align 8
  %4287 = inttoptr i64 %4285 to i32*
  %4288 = load i32, i32* %4287, align 4
  %4289 = sext i32 %4288 to i64
  store i64 %4289, i64* %RDX.i1293, align 8
  %4290 = add i64 %4284, %4289
  %4291 = add i64 %4279, 22
  store i64 %4291, i64* %3, align 8
  %4292 = inttoptr i64 %4290 to i8*
  store i8 0, i8* %4292, align 1
  %4293 = load i64, i64* %RBP.i, align 8
  %4294 = add i64 %4293, -8
  %4295 = load i64, i64* %3, align 8
  %4296 = add i64 %4295, 4
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4294 to i64*
  %4298 = load i64, i64* %4297, align 8
  store i64 %4298, i64* %RDI.i44, align 8
  %4299 = add i64 %4293, -36
  %4300 = add i64 %4295, 8
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i32*
  %4302 = load i32, i32* %4301, align 4
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %2544, align 8
  %4304 = add i64 %4293, -40
  %4305 = add i64 %4295, 12
  store i64 %4305, i64* %3, align 8
  %4306 = inttoptr i64 %4304 to i32*
  %4307 = load i32, i32* %4306, align 4
  %4308 = add i32 %4307, %4302
  %4309 = zext i32 %4308 to i64
  store i64 %4309, i64* %2544, align 8
  %4310 = icmp ult i32 %4308, %4302
  %4311 = icmp ult i32 %4308, %4307
  %4312 = or i1 %4310, %4311
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %14, align 1
  %4314 = and i32 %4308, 255
  %4315 = tail call i32 @llvm.ctpop.i32(i32 %4314)
  %4316 = trunc i32 %4315 to i8
  %4317 = and i8 %4316, 1
  %4318 = xor i8 %4317, 1
  store i8 %4318, i8* %21, align 1
  %4319 = xor i32 %4307, %4302
  %4320 = xor i32 %4319, %4308
  %4321 = lshr i32 %4320, 4
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  store i8 %4323, i8* %27, align 1
  %4324 = icmp eq i32 %4308, 0
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %30, align 1
  %4326 = lshr i32 %4308, 31
  %4327 = trunc i32 %4326 to i8
  store i8 %4327, i8* %33, align 1
  %4328 = lshr i32 %4302, 31
  %4329 = lshr i32 %4307, 31
  %4330 = xor i32 %4326, %4328
  %4331 = xor i32 %4326, %4329
  %4332 = add nuw nsw i32 %4330, %4331
  %4333 = icmp eq i32 %4332, 2
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %39, align 1
  %4335 = add i64 %4295, 16
  store i64 %4335, i64* %3, align 8
  %4336 = load i32, i32* %4301, align 4
  %4337 = zext i32 %4336 to i64
  store i64 %4337, i64* %2546, align 8
  %4338 = add i64 %4295, 20
  store i64 %4338, i64* %3, align 8
  %4339 = load i32, i32* %4306, align 4
  %4340 = add i32 %4339, %4336
  %4341 = zext i32 %4340 to i64
  store i64 %4341, i64* %2546, align 8
  %4342 = icmp ult i32 %4340, %4336
  %4343 = icmp ult i32 %4340, %4339
  %4344 = or i1 %4342, %4343
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %14, align 1
  %4346 = and i32 %4340, 255
  %4347 = tail call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  store i8 %4350, i8* %21, align 1
  %4351 = xor i32 %4339, %4336
  %4352 = xor i32 %4351, %4340
  %4353 = lshr i32 %4352, 4
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %27, align 1
  %4356 = icmp eq i32 %4340, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %30, align 1
  %4358 = lshr i32 %4340, 31
  %4359 = trunc i32 %4358 to i8
  store i8 %4359, i8* %33, align 1
  %4360 = lshr i32 %4336, 31
  %4361 = lshr i32 %4339, 31
  %4362 = xor i32 %4358, %4360
  %4363 = xor i32 %4358, %4361
  %4364 = add nuw nsw i32 %4362, %4363
  %4365 = icmp eq i32 %4364, 2
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %39, align 1
  %4367 = add i64 %4293, -16
  %4368 = add i64 %4295, 24
  store i64 %4368, i64* %3, align 8
  %4369 = inttoptr i64 %4367 to i64*
  %4370 = load i64, i64* %4369, align 8
  store i64 %4370, i64* %RCX.i863, align 8
  %4371 = add i64 %4370, 248
  %4372 = add i64 %4295, 31
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4371 to i64*
  %4374 = load i64, i64* %4373, align 8
  store i64 %4374, i64* %RCX.i863, align 8
  %4375 = load i64, i64* %RBP.i, align 8
  %4376 = add i64 %4375, -28
  %4377 = add i64 %4295, 35
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4376 to i32*
  %4379 = load i32, i32* %4378, align 4
  %4380 = sext i32 %4379 to i64
  store i64 %4380, i64* %RDX.i1293, align 8
  %4381 = shl nsw i64 %4380, 3
  %4382 = add i64 %4381, %4374
  %4383 = add i64 %4295, 39
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i64*
  %4385 = load i64, i64* %4384, align 8
  store i64 %4385, i64* %RCX.i863, align 8
  %4386 = add i64 %4375, -56
  %4387 = add i64 %4295, 43
  store i64 %4387, i64* %3, align 8
  %4388 = inttoptr i64 %4386 to i64*
  %4389 = load i64, i64* %4388, align 8
  %4390 = add i64 %4375, -336
  %4391 = add i64 %4295, 50
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i64*
  store i64 %4389, i64* %4392, align 8
  %4393 = load i32, i32* %R8D.i766, align 4
  %4394 = zext i32 %4393 to i64
  %4395 = load i64, i64* %3, align 8
  store i64 %4394, i64* %RDX.i1293, align 8
  %4396 = load i64, i64* %RBP.i, align 8
  %4397 = add i64 %4396, -344
  %4398 = load i64, i64* %RCX.i863, align 8
  %4399 = add i64 %4395, 10
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4397 to i64*
  store i64 %4398, i64* %4400, align 8
  %4401 = load i32, i32* %R9D.i757, align 4
  %4402 = zext i32 %4401 to i64
  %4403 = load i64, i64* %3, align 8
  store i64 %4402, i64* %RCX.i863, align 8
  %4404 = load i64, i64* %RBP.i, align 8
  %4405 = add i64 %4404, -344
  %4406 = add i64 %4403, 10
  store i64 %4406, i64* %3, align 8
  %4407 = inttoptr i64 %4405 to i64*
  %4408 = load i64, i64* %4407, align 8
  store i64 %4408, i64* %2544, align 8
  %4409 = add i64 %4404, -336
  %4410 = add i64 %4403, 17
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4409 to i64*
  %4412 = load i64, i64* %4411, align 8
  store i64 %4412, i64* %2546, align 8
  %4413 = add i64 %4404, -352
  %4414 = load i64, i64* %RAX.i825, align 8
  %4415 = add i64 %4403, 24
  store i64 %4415, i64* %3, align 8
  %4416 = inttoptr i64 %4413 to i64*
  store i64 %4414, i64* %4416, align 8
  %4417 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1725, align 1
  %4418 = add i64 %4417, -307121
  %4419 = add i64 %4417, 7
  %4420 = load i64, i64* %6, align 8
  %4421 = add i64 %4420, -8
  %4422 = inttoptr i64 %4421 to i64*
  store i64 %4419, i64* %4422, align 8
  store i64 %4421, i64* %6, align 8
  store i64 %4418, i64* %3, align 8
  %4423 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.52)
  %4424 = load i64, i64* %RBP.i, align 8
  %4425 = add i64 %4424, -356
  %4426 = load i32, i32* %EAX.i889, align 4
  %4427 = load i64, i64* %3, align 8
  %4428 = add i64 %4427, 6
  store i64 %4428, i64* %3, align 8
  %4429 = inttoptr i64 %4425 to i32*
  store i32 %4426, i32* %4429, align 4
  %4430 = load i64, i64* %RBP.i, align 8
  %4431 = add i64 %4430, -28
  %4432 = load i64, i64* %3, align 8
  %4433 = add i64 %4432, 3
  store i64 %4433, i64* %3, align 8
  %4434 = inttoptr i64 %4431 to i32*
  %4435 = load i32, i32* %4434, align 4
  %4436 = add i32 %4435, 1
  %4437 = zext i32 %4436 to i64
  store i64 %4437, i64* %RAX.i825, align 8
  %4438 = icmp eq i32 %4435, -1
  %4439 = icmp eq i32 %4436, 0
  %4440 = or i1 %4438, %4439
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %14, align 1
  %4442 = and i32 %4436, 255
  %4443 = tail call i32 @llvm.ctpop.i32(i32 %4442)
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  %4446 = xor i8 %4445, 1
  store i8 %4446, i8* %21, align 1
  %4447 = xor i32 %4436, %4435
  %4448 = lshr i32 %4447, 4
  %4449 = trunc i32 %4448 to i8
  %4450 = and i8 %4449, 1
  store i8 %4450, i8* %27, align 1
  %4451 = zext i1 %4439 to i8
  store i8 %4451, i8* %30, align 1
  %4452 = lshr i32 %4436, 31
  %4453 = trunc i32 %4452 to i8
  store i8 %4453, i8* %33, align 1
  %4454 = lshr i32 %4435, 31
  %4455 = xor i32 %4452, %4454
  %4456 = add nuw nsw i32 %4455, %4452
  %4457 = icmp eq i32 %4456, 2
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %39, align 1
  %4459 = add i64 %4432, 9
  store i64 %4459, i64* %3, align 8
  store i32 %4436, i32* %4434, align 4
  %4460 = load i64, i64* %3, align 8
  %4461 = add i64 %4460, -189
  store i64 %4461, i64* %3, align 8
  br label %block_.L_44c47a

block_.L_44c53c:                                  ; preds = %block_.L_44c47a
  %4462 = add i64 %4178, -20
  %4463 = add i64 %4218, 8
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i32*
  %4465 = load i32, i32* %4464, align 4
  %4466 = zext i32 %4465 to i64
  store i64 %4466, i64* %RAX.i825, align 8
  %4467 = add i64 %4178, -60
  %4468 = add i64 %4218, 11
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i32*
  %4470 = load i32, i32* %4469, align 4
  %4471 = add i32 %4470, %4465
  %4472 = zext i32 %4471 to i64
  store i64 %4472, i64* %RAX.i825, align 8
  %4473 = icmp ult i32 %4471, %4465
  %4474 = icmp ult i32 %4471, %4470
  %4475 = or i1 %4473, %4474
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %14, align 1
  %4477 = and i32 %4471, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %21, align 1
  %4482 = xor i32 %4470, %4465
  %4483 = xor i32 %4482, %4471
  %4484 = lshr i32 %4483, 4
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  store i8 %4486, i8* %27, align 1
  %4487 = icmp eq i32 %4471, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %30, align 1
  %4489 = lshr i32 %4471, 31
  %4490 = trunc i32 %4489 to i8
  store i8 %4490, i8* %33, align 1
  %4491 = lshr i32 %4465, 31
  %4492 = lshr i32 %4470, 31
  %4493 = xor i32 %4489, %4491
  %4494 = xor i32 %4489, %4492
  %4495 = add nuw nsw i32 %4493, %4494
  %4496 = icmp eq i32 %4495, 2
  %4497 = zext i1 %4496 to i8
  store i8 %4497, i8* %39, align 1
  %4498 = add i64 %4218, 14
  store i64 %4498, i64* %3, align 8
  store i32 %4471, i32* %4469, align 4
  %4499 = load i64, i64* %3, align 8
  %4500 = add i64 %4499, -1420
  store i64 %4500, i64* %3, align 8
  br label %block_.L_44bfbe

block_.L_44c54f:                                  ; preds = %block_.L_44bfbe
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RSI.i147, align 8
  %4501 = add i64 %2550, -8
  %4502 = add i64 %2590, 14
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i64*
  %4504 = load i64, i64* %4503, align 8
  store i64 %4504, i64* %RDI.i44, align 8
  store i8 0, i8* %AL.i1725, align 1
  %4505 = add i64 %2590, -307167
  %4506 = add i64 %2590, 21
  %4507 = load i64, i64* %6, align 8
  %4508 = add i64 %4507, -8
  %4509 = inttoptr i64 %4508 to i64*
  store i64 %4506, i64* %4509, align 8
  store i64 %4508, i64* %6, align 8
  store i64 %4505, i64* %3, align 8
  %4510 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.42)
  %4511 = load i64, i64* %RBP.i, align 8
  %4512 = add i64 %4511, -56
  %4513 = load i64, i64* %3, align 8
  %4514 = add i64 %4513, 4
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4512 to i64*
  %4516 = load i64, i64* %4515, align 8
  store i64 %4516, i64* %RDI.i44, align 8
  %4517 = add i64 %4511, -360
  %4518 = load i32, i32* %EAX.i889, align 4
  %4519 = add i64 %4513, 10
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4517 to i32*
  store i32 %4518, i32* %4520, align 4
  %4521 = load i64, i64* %3, align 8
  %4522 = add i64 %4521, -307694
  %4523 = add i64 %4521, 5
  %4524 = load i64, i64* %6, align 8
  %4525 = add i64 %4524, -8
  %4526 = inttoptr i64 %4525 to i64*
  store i64 %4523, i64* %4526, align 8
  store i64 %4525, i64* %6, align 8
  store i64 %4522, i64* %3, align 8
  %4527 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %4510)
  %4528 = load i64, i64* %6, align 8
  %4529 = load i64, i64* %3, align 8
  %4530 = add i64 %4528, 368
  store i64 %4530, i64* %6, align 8
  %4531 = icmp ugt i64 %4528, -369
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %14, align 1
  %4533 = trunc i64 %4530 to i32
  %4534 = and i32 %4533, 255
  %4535 = tail call i32 @llvm.ctpop.i32(i32 %4534)
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  %4538 = xor i8 %4537, 1
  store i8 %4538, i8* %21, align 1
  %4539 = xor i64 %4528, 16
  %4540 = xor i64 %4539, %4530
  %4541 = lshr i64 %4540, 4
  %4542 = trunc i64 %4541 to i8
  %4543 = and i8 %4542, 1
  store i8 %4543, i8* %27, align 1
  %4544 = icmp eq i64 %4530, 0
  %4545 = zext i1 %4544 to i8
  store i8 %4545, i8* %30, align 1
  %4546 = lshr i64 %4530, 63
  %4547 = trunc i64 %4546 to i8
  store i8 %4547, i8* %33, align 1
  %4548 = lshr i64 %4528, 63
  %4549 = xor i64 %4546, %4548
  %4550 = add nuw nsw i64 %4549, %4546
  %4551 = icmp eq i64 %4550, 2
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %39, align 1
  %4553 = add i64 %4529, 8
  store i64 %4553, i64* %3, align 8
  %4554 = add i64 %4528, 376
  %4555 = inttoptr i64 %4530 to i64*
  %4556 = load i64, i64* %4555, align 8
  store i64 %4556, i64* %RBP.i, align 8
  store i64 %4554, i64* %6, align 8
  %4557 = add i64 %4529, 9
  store i64 %4557, i64* %3, align 8
  %4558 = inttoptr i64 %4554 to i64*
  %4559 = load i64, i64* %4558, align 8
  store i64 %4559, i64* %3, align 8
  %4560 = add i64 %4528, 384
  store i64 %4560, i64* %6, align 8
  ret %struct.Memory* %4527
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
define %struct.Memory* @routine_subq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 368
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_44b775(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jle_.L_44b762(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jmpq_.L_44b767(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b729(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_je_.L_44b792(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_je_.L_44b7af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_jge_.L_44b808(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x118__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jle_.L_44b7f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b7fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b7b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_je_.L_44b834(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44b82f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b834(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_je_.L_44b860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44b85b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 7, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_je_.L_44b88c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44b887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b88c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 272
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
define %struct.Memory* @routine_jge_.L_44b8e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xf8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_44b8d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b8d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b893(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45af2f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45af2f_type* @G__0x45af2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfb___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 251, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__0x3d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 61
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -62
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
define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x45aff3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45aff3_type* @G__0x45aff3 to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 184
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
define %struct.Memory* @routine_jge_.L_44b981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459c9f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b935(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 184
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
define %struct.Memory* @routine_jle_.L_44b9aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_je_.L_44b9d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b004___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b004_type* @G__0x45b004 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_je_.L_44ba08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b013___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b013_type* @G__0x45b013 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_44ba37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b022___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b022_type* @G__0x45b022 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_44ba66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b031___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b031_type* @G__0x45b031 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
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
define %struct.Memory* @routine_je_.L_44babd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xa4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 164
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
define %struct.Memory* @routine_movq__0x45b040___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b040_type* @G__0x45b040 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x8c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44baf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44baf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b056___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b056_type* @G__0x45b056 to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 168
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
define %struct.Memory* @routine_je_.L_44bb4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xac__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 172
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
define %struct.Memory* @routine_movq__0x45b067___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b067_type* @G__0x45b067 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x94__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bb88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44bb83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b07d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b07d_type* @G__0x45b07d to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_je_.L_44bbdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x9c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_movq__0x45b08e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b08e_type* @G__0x45b08e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bc1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44bc17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b0a4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b0a4_type* @G__0x45b0a4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xd0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 208
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
define %struct.Memory* @routine_jge_.L_44bc85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b0b5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b0b5_type* @G__0x45b0b5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bc23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x20__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44bd36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44bd1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b0c3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b0c3_type* @G__0x45b0c3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__r8_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__r9_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 6
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bcba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_je_.L_44bde2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44bdc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44bdb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b0db___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b0db_type* @G__0x45b0db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__r9_8____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bdb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bd4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_je_.L_44be8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44be73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44be60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b0f1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b0f1_type* @G__0x45b0f1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44be65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bdf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 240
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
define %struct.Memory* @routine_jge_.L_44bfb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_44bf8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 224
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_je_.L_44bf7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.sre_strtok(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44bf76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b106___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b106_type* @G__0x45b106 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bf00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bf7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bf80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44beaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_44be95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jge_.L_44c54f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jle_.L_44bff3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44c2c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b119___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b119_type* @G__0x45b119 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -40
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -44
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -40
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -44
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c141(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b125___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b125_type* @G__0x45b125 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c1d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b13c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b13c_type* @G__0x45b13c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44c2b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c2a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b153___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b153_type* @G__0x45b153 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x118__r9____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r9__r10_8____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R10, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jmpq_.L_44c2a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c1dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c2bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bffa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c357(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b168___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b168_type* @G__0x45b168 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45afe0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45afe0_type* @G__0x45afe0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -40
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c3e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45afe8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45afe8_type* @G__0x45afe8 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x120__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44c473(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459933___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459933_type* @G__0x459933 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44c53c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xf8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x150__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c47a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c541(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bfbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45756f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -369
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
